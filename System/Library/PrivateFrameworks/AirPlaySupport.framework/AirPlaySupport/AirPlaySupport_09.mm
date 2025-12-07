uint64_t APSAudioFormatDescriptionListSupports44kHz(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 61);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSupports48kHz(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 60);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (a3 && a2)
  {
    v5 = APSAudioFormatDescriptionListCreate(a1, &cf);
    if (v5)
    {
      v21 = v5;
      APSLogErrorAt(v5);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v6 = cf;
      v7 = *(cf + 2);
      v8 = *(a2 + 16);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        CFSetApplyFunction(v8, apsCFUtils_setAddSetApplier, v7);
        v6 = cf;
      }

      v10 = v6[5];
      v11 = *(a2 + 40);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        CFSetApplyFunction(v11, apsCFUtils_setAddSetApplier, v10);
        v6 = cf;
      }

      v13 = v6[6];
      v14 = *(a2 + 48);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        CFSetApplyFunction(v14, apsCFUtils_setAddSetApplier, v13);
      }

      v16 = *(a2 + 24);
      if (v16)
      {
        v17 = *(cf + 3);
        Value = CFSetGetValue(*(cf + 2), v16);
        *(cf + 3) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      v19 = *(cf + 4);
      v20 = CFSetGetValue(*(cf + 2), *(a2 + 32));
      *(cf + 4) = v20;
      if (v20)
      {
        CFRetain(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v21 = 0;
      v22 = cf;
      *(cf + 14) = *(a2 + 56);
      v22[30] = *(a2 + 60);
      *a3 = v22;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v21;
}

uint64_t APSAudioFormatDescriptionListCreateIntersectionList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v14 = 0;
  cf = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return -12780;
  }

  if (!a2 || !a3)
  {
    APSLogErrorAt(0);
    v8 = -12780;
LABEL_11:
    v14 = v8;
    goto LABEL_13;
  }

  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
  if (!cf)
  {
    APSLogErrorAt(0);
    v8 = -12786;
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v9[0] = 0;
  v10 = *(a2 + 16);
  v11 = cf;
  v12 = &v14;
  CFSetApplyFunction(v6, audioFormatList_createFilteredListApplier, v9);
  if (!v14)
  {
    *a3 = cf;
    return v14;
  }

  APSLogErrorAt(v14);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t audioFormatList_createFilteredListApplier(uint64_t value, unsigned __int8 *a2)
{
  v3 = **(a2 + 3);
  if (!v3)
  {
    v4 = value;
    value = CFSetContainsValue(*(a2 + 1), value);
    if (value == *a2)
    {
      v3 = 0;
    }

    else
    {
      value = APSAudioFormatDescriptionListAddFormat(*(a2 + 2), v4);
      v3 = value;
      if (value)
      {
        value = APSLogErrorAt(value);
      }
    }
  }

  **(a2 + 3) = v3;
  return value;
}

uint64_t APSAudioFormatDescriptionListCreateRelativeComplementList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a1 && a2 && a3)
  {
    APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
    v6 = *(a1 + 16);
    v8[0] = 1;
    v9 = *(a2 + 16);
    v10 = cf;
    v11 = &v13;
    CFSetApplyFunction(v6, audioFormatList_createFilteredListApplier, v8);
    if (v13)
    {
      APSLogErrorAt(v13);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return -12780;
  }

  return v13;
}

uint64_t APSAudioFormatDescriptionListCopyChannelLayoutTags(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray(uint64_t a1, CFMutableArrayRef *a2)
{
  v11 = 0;
  if (a1 && a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Count = CFSetGetCount(*(a1 + 48));
    Mutable = CFArrayCreateMutable(v4, Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = *(a1 + 48);
      context[0] = v7;
      context[1] = &v11;
      CFSetApplyFunction(v8, audioFormatList_copyChannelLayoutTagsDataArrayApplier, context);
      result = v11;
      if (v11)
      {
        APSLogErrorAt(v11);
        CFRelease(v7);
        return v11;
      }

      else
      {
        *a2 = v7;
      }
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

void audioFormatList_copyChannelLayoutTagsDataArrayApplier(uint64_t result, uint64_t a2)
{
  v3 = **(a2 + 8);
  if (!v3)
  {
    FigCFNumberGetUInt32();
    appended = CFArrayAppendBytes();
    v3 = appended;
    if (appended)
    {
      APSLogErrorAt(appended);
    }
  }

  **(a2 + 8) = v3;
}

uint64_t APSAudioFormatDescriptionListGetDefaultFormat(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSetDefaultFormat(uint64_t a1, CFTypeRef cf)
{
  if (a1 && cf)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = cf;
    CFRetain(cf);
    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSAudioFormatDescriptionListCopyRichestFormat(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListGetLegacyFormatMask(uint64_t a1)
{
  theArray = 0;
  v1 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a1, &theArray);
  if (v1)
  {
    APSLogErrorAt(v1);
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex[8];
      if (v7 >= 0x40)
      {
        v8 = 0;
      }

      else
      {
        v8 = 1 << v7;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v8 = 0;
    }

    v5 |= v8;
    ++v4;
  }

  while (v3 != v4);
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

CFIndex APSAudioFormatDescriptionListGetFormatCount(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);

    return CFSetGetCount(v2);
  }

  else
  {
    APSLogErrorAt(a1);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListGetMaxChannelCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSupportsFormatID(uint64_t a1, uint64_t a2)
{
  if (a1 && (UInt32 = FigCFNumberCreateUInt32()) != 0)
  {
    v4 = UInt32;
    v5 = CFSetContainsValue(*(a1 + 40), UInt32);
    CFRelease(v4);
    return v5;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault(uint64_t a1, uint64_t a2, char **a3)
{
  Count = CFSetGetCount(*(a1 + 16));
  v6 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  CFSetGetValues(*(a1 + 16), v6);
  for (i = 0; i < CFSetGetCount(*(a1 + 16)); ++i)
  {
    v8 = v6[i];
    if (v8)
    {
      v9 = v8 + 16;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionList <= 30 && (gLogCategory_APSAudioFormatDescriptionList != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionList, "OSStatus APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault(APSAudioFormatDescriptionListRef, AudioStreamBasicDescription *, APSAudioFormatDescriptionRef *)", 33554462, "index = %d; \t comparing currentFormat=%{asbd} =? inPCMASBD=%{asbd}", i, v9, a2);
    }

    if (*v9 == *a2)
    {
      v10 = *(v9 + 8);
      if ((!v10 || v10 == *(a2 + 32)) && *(v9 + 7) == *(a2 + 28))
      {
        APSAudioFormatDescriptionListSetDefaultFormat(a1, v8);
        *a3 = v8;
        break;
      }
    }
  }

  free(v6);
  if (i >= CFSetGetCount(*(a1 + 16)))
  {
    return 4294960562;
  }

  else
  {
    return 0;
  }
}

uint64_t APSTXTRecordUtilsCopyCFStringFromTXTRecord(const __CFString *a1, CFDataRef theData, CFStringRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 && theData)
  {
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, buffer, &valueLen);
    if (ValuePtr)
    {
      v9 = ValuePtr;
      valueLen = strnlen(ValuePtr, valueLen);
      v10 = CFStringCreateWithBytes(0, v9, valueLen, 0x8000100u, 0);
      if (v10)
      {
        v11 = v10;
        result = 0;
        *a3 = v11;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294960554;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSTransportMessageGetRetransmitRequest(OpaqueCMBlockBuffer *a1, _WORD *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v4 = CMBlockBufferCopyDataBytes(a1, 0, 4uLL, a2);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }

    else
    {
      *a2 = bswap32(*a2) >> 16;
      a2[1] = bswap32(a2[1]) >> 16;
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetRetransmitResponseFutile(OpaqueCMBlockBuffer *a1, unsigned int a2)
{
  sourceBytes = 0;
  if (CMBlockBufferGetDataLength(a1) <= 3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    LOWORD(sourceBytes) = __rev16(a2);
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 4uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetTimeAnnounce(OpaqueCMBlockBuffer *a1, int8x16_t *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0xF)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v7 = vrev32q_s8(*a2);
    v4 = CMBlockBufferReplaceDataBytes(&v7, a1, 0, 0x10uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetPTPTimeAnnounce(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0x17)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes = bswap32(*a2);
    v8 = bswap64(*(a2 + 4));
    v9 = bswap32(*(a2 + 12));
    v10 = bswap64(*(a2 + 16));
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 0x18uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageCreateReferencingBBufWithAudioDataLength(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CMBlockBufferRef *blockBufferOut)
{
  v4 = CMBlockBufferCreateWithBufferReference(a1, a2, 0, a3 + 10, 0, blockBufferOut);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
  }

  return v5;
}

uint64_t APSTransportMessageCreateReferencingBBufAudioDataOnly(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = CMBlockBufferCreateWithBufferReference(a1, theBuffer, 0xAuLL, DataLength - 10, 0, a3);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
  }

  return v8;
}

uint64_t APSTransportMessageGetAudioDataSequenceNumber(OpaqueCMBlockBuffer *a1, _WORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 0, 2uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination) >> 16;
  }

  return v4;
}

uint64_t APSTransportMessageSetAudioDataSequenceNumber(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  sourceBytes = __rev16(a2);
  v2 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 2uLL);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetAudioDataTimestamp(OpaqueCMBlockBuffer *a1, _DWORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 2uLL, 4uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination);
  }

  return v4;
}

uint64_t APSTransportMessageSetAudioDataHeader(OpaqueCMBlockBuffer *a1, unsigned __int16 *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 9)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes = bswap32(*a2) >> 16;
    v8 = vrev32_s8(*(a2 + 1));
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 0xAuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageBufferedCreateReferencingBBufWithAudioDataLength(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CMBlockBufferRef *blockBufferOut)
{
  v4 = CMBlockBufferCreateWithBufferReference(a1, a2, 0, a3 + 11, 0, blockBufferOut);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
  }

  return v5;
}

uint64_t APSTransportMessageBufferedCreateReferencingBBufAudioDataOnly(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = CMBlockBufferCreateWithBufferReference(a1, theBuffer, 0xAuLL, DataLength - 11, 0, a3);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
  }

  return v8;
}

uint64_t APSTransportMessageGetBufferedAudioDataPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, size_t *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 0xBuLL, a3, 0, dataPointerOut);
  v4 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  return v4;
}

uint64_t APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber(OpaqueCMBlockBuffer *a1, unsigned int *a2)
{
  *a2 = 0;
  v3 = CMBlockBufferCopyDataBytes(a1, 0, 3uLL, a2 + 1);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *a2 = bswap32(*a2);
  }

  return v4;
}

uint64_t APSTransportMessageSetBufferedAudioDataExtendedSequenceNumber(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  v5 = bswap32(a2);
  v2 = CMBlockBufferReplaceDataBytes(&v5 + 1, destinationBuffer, 0, 3uLL);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataTimestamp(OpaqueCMBlockBuffer *a1, _DWORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 3uLL, 4uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination);
  }

  return v4;
}

uint64_t APSTransportMessageGetBufferedAudioDataFormatIndex(OpaqueCMBlockBuffer *a1, void *destination)
{
  v2 = CMBlockBufferCopyDataBytes(a1, 7uLL, 1uLL, destination);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataFlags(OpaqueCMBlockBuffer *a1, void *destination)
{
  v2 = CMBlockBufferCopyDataBytes(a1, 8uLL, 1uLL, destination);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataHeader(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (a2)
  {
    *(v6 + 7) = 0;
    v6[0] = 0;
    v3 = CMBlockBufferCopyDataBytes(a1, 0, 0xBuLL, v6);
    v4 = v3;
    if (v3)
    {
      APSLogErrorAt(v3);
    }

    else
    {
      *a2 = BYTE2(v6[0]);
      *(a2 + 1) = BYTE1(v6[0]);
      *(a2 + 2) = v6[0];
      *(a2 + 3) = bswap32(*(v6 + 3));
      *(a2 + 7) = *(v6 + 7);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSTransportMessageSetBufferedAudioDataHeader(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0xA)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes[0] = *(a2 + 2);
    sourceBytes[1] = *(a2 + 1);
    sourceBytes[2] = *a2;
    v8 = bswap32(*(a2 + 3));
    v9 = *(a2 + 7);
    v4 = CMBlockBufferReplaceDataBytes(sourceBytes, a1, 0, 0xBuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageGetBufferedAudioAADPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, void *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 3uLL, 0, 0, dataPointerOut);
  v5 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  else
  {
    *a3 = 8;
  }

  return v5;
}

uint64_t APSTransportMessageSetScreenDataHeader(OpaqueCMBlockBuffer *a1, const void *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0x7A)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v4 = CMBlockBufferReplaceDataBytes(a2, a1, 0, 0x7BuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetScreenDataPayload(OpaqueCMBlockBuffer *a1, const __CFData *a2)
{
  if (a2 && CMBlockBufferGetDataLength(a1) > 0x7A)
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v6 = CMBlockBufferReplaceDataBytes(BytePtr, a1, 0x7BuLL, Length);
    v7 = v6;
    if (v6)
    {
      APSLogErrorAt(v6);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v7;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictMediaKindToBBuf(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CEFE10]);
  if (!Value)
  {
    goto LABEL_30;
  }

  v4 = Value;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v5 = 2;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 3;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 4;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 5;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 6;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 7;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 8;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 9;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 10;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v5 = 11;
      goto LABEL_31;
    }

    if (gLogCategory_APSAPAPExtensionLoudnessInfoUtils <= 50 && (gLogCategory_APSAPAPExtensionLoudnessInfoUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAPAPExtensionLoudnessInfoUtils, "APSAPAPExtensionSoundCheckMediaKind apsapapExtension_getMediaKindEnumFromMediaKindString(CFStringRef)", 33554482, "APSAPAPExtensionLoudnessInfo unknown media kind %s!", v4);
    }

LABEL_30:
    v5 = 0;
    goto LABEL_31;
  }

  v5 = 1;
LABEL_31:
  BigUIntWithUInt64 = APSCMBlockBufferCreateBigUIntWithUInt64(*MEMORY[0x277CBECE8], v5, &cf);
  v6 = BigUIntWithUInt64;
  if (BigUIntWithUInt64)
  {
    APSLogErrorAt(BigUIntWithUInt64);
  }

  else
  {
    v8 = cf;
    if (cf)
    {
      v8 = CFRetain(cf);
    }

    *a2 = v8;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictLoudnessParametersToBBuf(const __CFDictionary *a1, void *a2)
{
  blockBufferOut = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v5 = 0;
    v9 = 4294960591;
    goto LABEL_12;
  }

  v5 = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  if (!v5)
  {
    APSLogErrorAt(0);
    v9 = 4294960568;
    goto LABEL_12;
  }

  if (!CFDictionaryGetValue(a1, *MEMORY[0x277CEFE08]))
  {
    v9 = 4294960569;
    goto LABEL_12;
  }

  Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
  if (!Float32IfPresent)
  {
    APSLogErrorAt(Float32IfPresent);
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294960591, "(Fig)", 78, v2);
LABEL_19:
    v9 = v13;
    goto LABEL_12;
  }

  *v5 = bswap32(0);
  v7 = FigCFDictionaryGetFloat32IfPresent();
  if (!v7)
  {
    APSLogErrorAt(v7);
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294960591, "(Fig)", 81, v2);
    goto LABEL_19;
  }

  v5[1] = bswap32(0);
  v8 = FigCFDictionaryGetFloat32IfPresent();
  if (!v8)
  {
    APSLogErrorAt(v8);
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294960591, "(Fig)", 84, v2);
    goto LABEL_19;
  }

  v5[2] = bswap32(0);
  v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v5, 0xCuLL, *MEMORY[0x277CBECF0], 0, 0, 0xCuLL, 0, &blockBufferOut);
  if (blockBufferOut)
  {
    v10 = CFRetain(blockBufferOut);
    v11 = blockBufferOut;
    *a2 = v10;
    if (v11)
    {
      CFRelease(v11);
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

LABEL_12:
  free(v5);
  return v9;
}

uint64_t APSAPAPExtensionConvertMediaKindBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, uint64_t a2, CFTypeRef *a3)
{
  v11 = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a1, &v11);
  if (BigUIntAsUInt64)
  {
    v9 = BigUIntAsUInt64;
    APSLogErrorAt(BigUIntAsUInt64);
    return v9;
  }

  v6 = v11;
  if (v11 > 5u)
  {
    if (v11 > 8u)
    {
      if (v11 == 9 || v11 == 10 || v11 == 11)
      {
        goto LABEL_16;
      }
    }

    else if (v11 == 6 || v11 == 7 || v11 == 8)
    {
      goto LABEL_16;
    }

LABEL_23:
    if (gLogCategory_APSAPAPExtensionLoudnessInfoUtils <= 50 && (gLogCategory_APSAPAPExtensionLoudnessInfoUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAPAPExtensionLoudnessInfoUtils, "CFStringRef apsapapExtension_getMediaKindStringFromMediaKindEnum(APSAPAPExtensionSoundCheckMediaKind)", 33554482, "APSAPAPExtensionLoudnessInfo unknown media kind enum %d!", v6);
    }

    goto LABEL_16;
  }

  if (v11 > 4u && v11 != 5)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_30;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
LABEL_30:
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  v8 = MutableCopy;
  FigCFDictionarySetValue();
  *a3 = CFRetain(v8);
  CFRelease(v8);
  return 0;
}

uint64_t APSAPAPExtensionConvertLoudnessParametersBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, uint64_t a2, CFTypeRef *a3)
{
  dataPointerOut = 0;
  if (!a3 || (CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut), CMBlockBufferGetDataLength(a1) != 12))
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v8 = MutableCopy;
      if (FigCFDictionaryGetValue())
      {
        Mutable = FigCFDictionaryCreateMutableCopy();
        if (!Mutable)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
LABEL_12:
        v12 = Mutable;
        goto LABEL_13;
      }

LABEL_16:
      APSLogErrorAt(0);
      CFRelease(v8);
      return 4294960568;
    }
  }

  else
  {
    v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v10)
    {
      v8 = v10;
      v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v11)
      {
        v12 = v11;
LABEL_13:
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetValue();
        *a3 = CFRetain(v8);
        CFRelease(v8);
        CFRelease(v12);
        return 0;
      }

      goto LABEL_16;
    }
  }

  APSLogErrorAt(0);
  return 4294960568;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictSoundCheckInfoToBBuf(uint64_t a1, void *a2)
{
  *count = 0u;
  v23 = 0u;
  blockBufferOut = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v18 = 4294960591;
    goto LABEL_27;
  }

  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    v18 = 4294960569;
    goto LABEL_27;
  }

  v4 = Value;
  v5 = *MEMORY[0x277CEFE68];
  if (!CFDictionaryContainsKey(Value, *MEMORY[0x277CEFE68]) || (v6 = *MEMORY[0x277CEFE70], !CFDictionaryContainsKey(v4, *MEMORY[0x277CEFE70])) || (v7 = *MEMORY[0x277CEFE78], !CFDictionaryContainsKey(v4, *MEMORY[0x277CEFE78])) || (v8 = *MEMORY[0x277CEFE80], !CFDictionaryContainsKey(v4, *MEMORY[0x277CEFE80])) || (v9 = *MEMORY[0x277CEFE88], !CFDictionaryContainsKey(v4, *MEMORY[0x277CEFE88])))
  {
    v18 = 4294960579;
    goto LABEL_27;
  }

  v10 = CFDictionaryGetValue(v4, v5);
  v11 = APSCFStringCountUInt32s(v10, &count[1]);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  count[0] = malloc_type_calloc(count[1], 0x14uLL, 0x1000040A86A77D5uLL);
  if (!count[0])
  {
    APSLogErrorAt(0);
    v18 = 4294960568;
    goto LABEL_27;
  }

  v23 = 0uLL;
  v12 = CFDictionaryGetValue(v4, v5);
  v11 = APSCFStringParseUInt32s(v12, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  if (*(&v23 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v23 = xmmword_22234D460;
  v13 = CFDictionaryGetValue(v4, v6);
  v11 = APSCFStringParseUInt32s(v13, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  if (*(&v23 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v23 = xmmword_22234D470;
  v14 = CFDictionaryGetValue(v4, v7);
  v11 = APSCFStringParseUInt32s(v14, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  if (*(&v23 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v23 = xmmword_22234D480;
  v15 = CFDictionaryGetValue(v4, v8);
  v11 = APSCFStringParseUInt32s(v15, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  if (*(&v23 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v23 = xmmword_22234D490;
  v16 = CFDictionaryGetValue(v4, v9);
  v11 = APSCFStringParseUInt32s(v16, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v11)
  {
    v18 = v11;
    goto LABEL_48;
  }

  if (*(&v23 + 1) != count[1])
  {
LABEL_46:
    APSLogErrorAt(0);
    v18 = 4294960546;
    goto LABEL_27;
  }

  v17 = *MEMORY[0x277CBECE8];
  if (*(&v23 + 1))
  {
    v11 = CMBlockBufferCreateWithMemoryBlock(v17, count[0], 20 * *(&v23 + 1), *MEMORY[0x277CBECF0], 0, 0, 20 * *(&v23 + 1), 0, &blockBufferOut);
    if (v11)
    {
      v18 = v11;
LABEL_48:
      APSLogErrorAt(v11);
      goto LABEL_27;
    }
  }

  else
  {
    v11 = CMBlockBufferCreateEmpty(v17, 0, 0, &blockBufferOut);
    if (v11)
    {
      v18 = v11;
      goto LABEL_48;
    }
  }

  count[0] = 0;
  v19 = blockBufferOut;
  if (blockBufferOut)
  {
    v19 = CFRetain(blockBufferOut);
  }

  v18 = 0;
  *a2 = v19;
LABEL_27:
  if (count[0])
  {
    free(count[0]);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t apsapapExtensionSoundCheckInfo_parseUInt32(unsigned int a1, void *a2)
{
  v2 = a2[3];
  if (v2 >= a2[1])
  {
    APSLogErrorAt(0);
    return 4294960545;
  }

  else
  {
    result = 0;
    *(*a2 + 20 * v2 + a2[2]) = bswap32(a1);
    ++a2[3];
  }

  return result;
}

uint64_t APSAPAPExtensionConvertSoundCheckInfoBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, CFIndex a2, CFTypeRef *a3)
{
  keys[5] = *MEMORY[0x277D85DE8];
  totalLengthOut = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  if (!a3)
  {
    goto LABEL_67;
  }

  if (CMBlockBufferIsEmpty(a1))
  {
    v6 = 0;
    goto LABEL_7;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v23 = DataPointer;
    APSLogErrorAt(DataPointer);
    return v23;
  }

  if (totalLengthOut != lengthAtOffsetOut)
  {
LABEL_67:
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = totalLengthOut / 0x14;
  if (totalLengthOut % 0x14)
  {
    APSLogErrorAt(0);
    return 4294960553;
  }

LABEL_7:
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v10 = Mutable;
  v11 = CFStringCreateMutable(v8, 0);
  if (!v11)
  {
    APSLogErrorAt(0);
    CFRelease(v10);
    return 4294960568;
  }

  v12 = v11;
  v13 = CFStringCreateMutable(v8, 0);
  if (!v13)
  {
    APSLogErrorAt(0);
    v14 = 0;
LABEL_55:
    v15 = 0;
LABEL_57:
    v21 = 0;
LABEL_59:
    MutableCopy = 0;
LABEL_60:
    v23 = 4294960568;
    goto LABEL_32;
  }

  v14 = CFStringCreateMutable(v8, 0);
  if (!v14)
  {
    APSLogErrorAt(0);
    goto LABEL_55;
  }

  v15 = CFStringCreateMutable(v8, 0);
  if (!v15)
  {
    APSLogErrorAt(0);
    goto LABEL_57;
  }

  v25 = a3;
  capacity = a2;
  if (!v6)
  {
    goto LABEL_26;
  }

  v16 = CFStringAppendF(v10, "%u", bswap32(*dataPointerOut));
  if (v16)
  {
    v23 = v16;
LABEL_48:
    APSLogErrorAt(v16);
    v21 = 0;
    MutableCopy = 0;
    goto LABEL_32;
  }

  v16 = CFStringAppendF(v12, "%u", bswap32(*(dataPointerOut + 1)));
  if (v16)
  {
    v23 = v16;
    goto LABEL_48;
  }

  v16 = CFStringAppendF(v13, "%u", bswap32(*(dataPointerOut + 2)));
  if (v16)
  {
    v23 = v16;
    goto LABEL_48;
  }

  v16 = CFStringAppendF(v14, "%u", bswap32(*(dataPointerOut + 3)));
  if (v16)
  {
    v23 = v16;
    goto LABEL_48;
  }

  v16 = CFStringAppendF(v15, "%u", bswap32(*(dataPointerOut + 4)));
  if (v16)
  {
    v23 = v16;
    goto LABEL_48;
  }

  v17 = v6 - 1;
  if (v6 != 1)
  {
    v18 = 39;
    while (1)
    {
      v16 = CFStringAppendF(v10, " %u", bswap32(*&dataPointerOut[v18 - 19]));
      if (v16)
      {
        v23 = v16;
        goto LABEL_48;
      }

      v16 = CFStringAppendF(v12, " %u", bswap32(*&dataPointerOut[v18 - 15]));
      if (v16)
      {
        v23 = v16;
        goto LABEL_48;
      }

      v16 = CFStringAppendF(v13, " %u", bswap32(*&dataPointerOut[v18 - 11]));
      if (v16)
      {
        v23 = v16;
        goto LABEL_48;
      }

      v16 = CFStringAppendF(v14, " %u", bswap32(*&dataPointerOut[v18 - 7]));
      if (v16)
      {
        v23 = v16;
        goto LABEL_48;
      }

      v16 = CFStringAppendF(v15, " %u", bswap32(*&dataPointerOut[v18 - 3]));
      if (v16)
      {
        break;
      }

      v18 += 20;
      if (!--v17)
      {
        goto LABEL_26;
      }
    }

    v23 = v16;
    goto LABEL_48;
  }

LABEL_26:
  v19 = *MEMORY[0x277CEFE70];
  keys[0] = *MEMORY[0x277CEFE68];
  keys[1] = v19;
  v20 = *MEMORY[0x277CEFE80];
  keys[2] = *MEMORY[0x277CEFE78];
  keys[3] = v20;
  keys[4] = *MEMORY[0x277CEFE88];
  values[0] = v10;
  values[1] = v12;
  values[2] = v13;
  values[3] = v14;
  values[4] = v15;
  v21 = CFDictionaryCreate(v8, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v21)
  {
    APSLogErrorAt(0);
    goto LABEL_59;
  }

  if (capacity)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_69;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
LABEL_69:
      APSLogErrorAt(0);
      goto LABEL_60;
    }
  }

  FigCFDictionarySetValue();
  v23 = 0;
  *v25 = CFRetain(MutableCopy);
LABEL_32:
  CFRelease(v10);
  CFRelease(v12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v23;
}

uint64_t APSAudioTransportTimeMakeWithRTPTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 1;
  *(a2 + 4) = result;
  return result;
}

__n128 APSAudioTransportTimeMakeWithMediaTime@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1->n128_u32[3] & 0x1D) == 1 && !a1[1].n128_u64[0])
  {
    *a2 = 2;
    result = *a1;
    *(a2 + 4) = *a1;
    *(a2 + 20) = a1[1].n128_u64[0];
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL APSAudioTransportTimeIsValid(uint64_t a1)
{
  if (*a1 != 2)
  {
    return *a1 == 1;
  }

  if ((*(a1 + 16) & 0x1D) == 1)
  {
    return *(a1 + 20) == 0;
  }

  return 0;
}

CFTypeRef APSAudioTransportTimeCopyDebugDesc(uint64_t a1)
{
  if (*a1 == 1)
  {
    return CFStringCreateF(0, "RTP( %u)");
  }

  if (*a1 == 2 && ((*(a1 + 16) & 0x1D) == 1 ? (v1 = *(a1 + 20) == 0) : (v1 = 0), v1))
  {
    time = *(a1 + 4);
    CMTimeGetSeconds(&time);
    return CFStringCreateF(0, "Media( %1.6f (%lld/%ld))");
  }

  else
  {

    return CFRetain(@"Invalid");
  }
}

double APSAudioTransportTimeAdd@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 == 1 || v5 == 2 && ((a1[4] & 0x1D) == 1 ? (v6 = *(a1 + 5) == 0) : (v6 = 0), v6))
  {
    if (*a2 == 2)
    {
      if ((*(a2 + 16) & 0x1D) == 1 && v5 == 2 && *(a2 + 20) == 0)
      {
        *v14 = 2;
        *&lhs.value = *v4;
        lhs.epoch = *(a1 + 5);
        v12 = *(a2 + 4);
        CMTimeAdd(&v14[4], &lhs, &v12);
        *a3 = *v14;
        result = *&v14[12];
        *(a3 + 12) = *&v14[12];
      }
    }

    else if (*a2 == 1 && v5 == 1)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v8 = *(a2 + 4) + *v4;
      *a3 = 1;
      *(a3 + 4) = v8;
    }
  }

  return result;
}

double APSAudioTransportTimeSub@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 == 1 || v5 == 2 && ((a1[4] & 0x1D) == 1 ? (v6 = *(a1 + 5) == 0) : (v6 = 0), v6))
  {
    if (*a2 == 2)
    {
      if ((*(a2 + 16) & 0x1D) == 1 && v5 == 2 && *(a2 + 20) == 0)
      {
        *v14 = 2;
        *&lhs.value = *v4;
        lhs.epoch = *(a1 + 5);
        v12 = *(a2 + 4);
        CMTimeSubtract(&v14[4], &lhs, &v12);
        *a3 = *v14;
        result = *&v14[12];
        *(a3 + 12) = *&v14[12];
      }
    }

    else if (*a2 == 1 && v5 == 1)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v8 = *v4 - *(a2 + 4);
      *a3 = 1;
      *(a3 + 4) = v8;
    }
  }

  return result;
}

uint64_t APSAudioTransportTimeCompare(int *a1, int *a2)
{
  v4 = (a1 + 1);
  v5 = *a1;
  if (*a1 == 2)
  {
    v6 = (a1[4] & 0x1D) == 1 && *(a1 + 5) == 0;
  }

  else
  {
    v6 = v5 == 1;
  }

  v8 = a2 + 1;
  v9 = *a2;
  if (*a2 == 1)
  {
    v11 = 1;
  }

  else
  {
    if (v9 != 2)
    {
      v11 = 0;
      return (v11 - v6);
    }

    v11 = (a2[4] & 0x1D) == 1 && *(a2 + 5) == 0;
  }

  if (!v6 || !v11)
  {
    return (v11 - v6);
  }

  result = (v5 - v9);
  if (v5 == v9)
  {
    if (v5 == 1)
    {
      return (LODWORD(v4->value) - *v8);
    }

    else
    {
      v15 = v2;
      v16 = v3;
      time1 = *v4;
      *&v13.value = *v8;
      v13.epoch = *(a2 + 5);
      return CMTimeCompare(&time1, &v13);
    }
  }

  return result;
}

__n128 APSAudioTransportTimeMax@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *v9 = *a1;
  *&v9[3] = *(a1 + 12);
  *v8 = *a2;
  *&v8[3] = *(a2 + 12);
  if (APSAudioTransportTimeCompare(v9, v8) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  *a3 = *v6;
  result = *(v6 + 12);
  *(a3 + 12) = result;
  return result;
}

__n128 APSAudioTransportTimeMin@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *v9 = *a1;
  *&v9[3] = *(a1 + 12);
  *v8 = *a2;
  *&v8[3] = *(a2 + 12);
  if (APSAudioTransportTimeCompare(v9, v8) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  *a3 = *v6;
  result = *(v6 + 12);
  *(a3 + 12) = result;
  return result;
}

uint64_t APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary(CFDictionaryRef theDict, void *key, void *a3, const void *a4, uint64_t a5)
{
  v17 = 0;
  if ((a3 == 0) != (a4 == 0))
  {
LABEL_14:
    APSLogErrorAt(0);
    value = 0;
    v13 = 0;
    flags = 0;
    v14 = 0;
    v17 = -6705;
    if (!a5)
    {
      return v17;
    }

    goto LABEL_19;
  }

  if (!theDict)
  {
    goto LABEL_17;
  }

  if (a3 && (CFDictionaryContainsKey(theDict, a3) || CFDictionaryContainsKey(theDict, a4)))
  {
    Int64 = CFDictionaryGetInt64();
    v10 = CFDictionaryGetInt64();
    CMTimeMake(&v16, Int64, v10);
    flags = v16.flags;
    if ((v16.flags & 0x1D) == 1 && !v16.epoch)
    {
      value = v16.value;
      v13 = *(&v16.value + 4);
      v14 = 2;
      if (!a5)
      {
        return v17;
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (key)
  {
    value = CFDictionaryContainsKey(theDict, key);
    if (value)
    {
      value = CFDictionaryGetInt64Ranged();
      flags = v17;
      v13 = 0;
      v14 = 1;
      if (!a5)
      {
        return v17;
      }

      goto LABEL_19;
    }
  }

  else
  {
LABEL_17:
    value = 0;
  }

  v13 = 0;
  flags = 0;
  v14 = 0;
  if (a5)
  {
LABEL_19:
    *a5 = v14;
    *(a5 + 4) = value;
    *(a5 + 8) = v13;
    *(a5 + 16) = flags;
    *(a5 + 20) = 0;
  }

  return v17;
}

uint64_t APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 == 0) == (a4 == 0))
  {
    if (!a1)
    {
      return 0;
    }

    if (*a5 == 1)
    {
      if (a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (*a5 != 2)
      {
        return 0;
      }

      if ((*(a5 + 16) & 0x1D) != 1 || *(a5 + 20) != 0)
      {
        return 0;
      }

      if (a3)
      {
        CFDictionarySetInt64();
LABEL_13:
        CFDictionarySetInt64();
        return 0;
      }
    }

    APSLogErrorAt(0);
    return 4294960582;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorGetTypeID()
{
  if (gAPSAudioHoseMetricCollectorInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioHoseMetricCollectorInitOnce, 0, _APSAudioHoseMetricCollectorGetTypeID);
  }

  return gAPSAudioHoseMetricCollectorTypeID;
}

uint64_t _APSAudioHoseMetricCollectorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioHoseMetricCollectorTypeID = result;
  return result;
}

uint64_t _APSAudioHoseMetricCollectorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSAudioHoseMetricCollector <= 50)
  {
    if (gLogCategory_APSAudioHoseMetricCollector != -1)
    {
      return LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void _APSAudioHoseMetricCollectorFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void _APSAudioHoseMetricCollectorFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }
  }

  return result;
}

uint64_t APSAudioHoseMetricCollectorCreate(const void *a1, uint64_t a2, void *a3)
{
  if (!a3 || !a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSAudioHoseMetricCollectorInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioHoseMetricCollectorInitOnce, 0, _APSAudioHoseMetricCollectorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v7 = Instance;
  *(Instance + 64) = 0;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = CFRetain(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, &metricCollector_hoseDescriptorDictionaryCallbacks);
  v7[3] = Mutable;
  if (!Mutable || (v9 = FigSimpleMutexCreate(), (v7[4] = v9) == 0))
  {
    APSLogErrorAt(0);
    CFRelease(v7);
    return 4294960568;
  }

  v7[5] = a2;
  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorCreate(APSRTCReportingAgentRef, uint64_t, APSAudioHoseMetricCollectorRef *)", 33554482, "[%{ptr}] Created MetricCollector", v7);
  }

  result = 0;
  *a3 = v7;
  return result;
}

void metricCollector_hoseDescriptorDictionaryRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[19];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a2);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

void *metricCollector_hoseDescriptorDictionaryRetain(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0x250uLL, 0x106004031377342uLL);
    memcpy(v3, a2, 0x250uLL);
    v4 = *a2;
    if (*a2)
    {
      v4 = CFRetain(v4);
    }

    *v3 = v4;
    v5 = a2[19];
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    v3[19] = v5;
    v6 = a2[1];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v3[1] = v6;
    v7 = a2[2];
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v3[2] = v7;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v3;
}

uint64_t APSAudioHoseMetricCollectorRegisterHose(uint64_t a1, const void *a2, int a3, int a4)
{
  bzero(value, 0x250uLL);
  v14 = 0;
  cf = 0;
  if (a2)
  {
    if (!a1 || CFDictionaryContainsKey(*(a1 + 24), a2))
    {
      APSLogErrorAt(0);
      v12 = 4294960591;
    }

    else
    {
      FigSimpleMutexLock();
      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorRegisterHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, Boolean, APSAudioHoseMetricCollectorMetricType)", 33554482, "[%{ptr}] APSAudioHoseMetricCollectorRegisterHose hose: [%{ptr}]", a1, a2);
      }

      v8 = *MEMORY[0x277CBECE8];
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(a2, @"Model", v8, &cf);
      }

      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(a2, @"OSBuildVersion", v8, &v14);
        v10 = v14;
      }

      value[0] = a2;
      value[1] = cf;
      value[2] = v10;
      v17 = a3;
      v11 = 120.0;
      if (a3)
      {
        v11 = 15.0;
      }

      v19 = v11;
      v18 = a4;
      metricCollector_resetMetricsAndDataForHoseInternal(a1, value);
      CFDictionaryAddValue(*(a1 + 24), a2, value);
      FigSimpleMutexUnlock();
      if (cf)
      {
        CFRelease(cf);
      }

      v12 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v12;
}

uint64_t metricCollector_resetMetricsAndDataForHoseInternal(void *a1, uint64_t a2)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *(a2 + 152);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a2 + 224) = 0;
  v5 = MEMORY[0x277CC0898];
  v6 = *MEMORY[0x277CC0898];
  *(a2 + 200) = *MEMORY[0x277CC0898];
  v7 = *(v5 + 16);
  *(a2 + 216) = v7;
  v8 = MEMORY[0x277CC08F0];
  v9 = *MEMORY[0x277CC08F0];
  *(a2 + 228) = *MEMORY[0x277CC08F0];
  v10 = *(v8 + 16);
  *(a2 + 244) = v10;
  *(a2 + 252) = v6;
  *(a2 + 268) = v7;
  *(a2 + 276) = v9;
  *(a2 + 292) = v10;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x7FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  a1[6] = 0xBFF0000000000000;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = -1;
  *(a2 + 432) = 0u;
  *(a2 + 448) = xmmword_22234D060;
  *(a2 + 480) = 0;
  *(a2 + 488) = 0xBFF0000000000000;
  *(a2 + 464) = 0xBFF0000000000000;
  *(a2 + 472) = -1;
  *(a2 + 512) = 0;
  *(a2 + 496) = xmmword_22234D4A0;
  *(a2 + 560) = 0;
  *(a2 + 520) = 0;
  *(a2 + 536) = 0u;
  *(a2 + 528) = -1;
  *(a2 + 552) = -1;
  *(a2 + 352) = 0;
  *(a2 + 568) = 0u;
  *(a2 + 584) = -1;
  *(a2 + 112) = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 72) = 0;
  result = mach_absolute_time();
  *(a2 + 80) = result;
  return result;
}

uint64_t APSAudioHoseMetricCollectorDeregisterHose(uint64_t a1, const void *a2)
{
  if (a1 && (v3 = a1, a1 = CFDictionaryContainsKey(*(a1 + 24), a2), a1))
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorDeregisterHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef)", 33554482, "[%{ptr}] APSAudioHoseMetricCollectorDeregisterHose", v3);
    }

    CFDictionaryRemoveValue(*(v3 + 24), a2);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose(uint64_t a1, const void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if ((*(a4 + 12) & 1) == 0 || (*(a5 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    return 0;
  }

  FigSimpleMutexLock();
  if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    time = *a3;
    Seconds = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, CMTime, CMTime, CMTime)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose: hose: [%{ptr}] inLastDeliveredMediaTime %1.3f", a1, a2, *&Seconds);
  }

  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v12 = Value;
    if (*(a3 + 12))
    {
      v13 = *a3;
      Value[6] = *(a3 + 2);
      *(Value + 2) = v13;
    }

    v48 = *a4;
    v14 = *(a4 + 12);
    v49 = *(a4 + 8);
    v15 = *(a4 + 16);
    v46 = *a5;
    v16 = *(a5 + 12);
    v47 = *(a5 + 8);
    v17 = *(a5 + 16);
    v42 = *MEMORY[0x277CC08F0];
    *&time.value = *MEMORY[0x277CC08F0];
    v18 = *(MEMORY[0x277CC08F0] + 16);
    time.epoch = v18;
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(v12 + 18) != 1 || (v14 & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v12[19])
    {
LABEL_27:
      v23 = mach_absolute_time();
      if (UpTicksToMilliseconds() >= 0x3E8)
      {
        v12[7] = v23;
        lhs = *(v12 + 4);
        rhs.value = v48;
        rhs.timescale = v49;
        rhs.flags = v14;
        rhs.epoch = v15;
        CMTimeSubtract(&time, &lhs, &rhs);
        lhs = time;
        *&rhs.value = v42;
        rhs.epoch = v18;
        if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
        {
          rhs.value = v46;
          rhs.timescale = v47;
          rhs.flags = v16;
          rhs.epoch = v17;
          v43.value = v48;
          v43.timescale = v49;
          v43.flags = v14;
          v43.epoch = v15;
          CMTimeSubtract(&lhs, &rhs, &v43);
          v24 = CMTimeGetSeconds(&lhs);
          lhs = time;
          v25 = CMTimeGetSeconds(&lhs);
          v26 = *(v12 + 8);
          if (v26 >= v24)
          {
            v26 = v24;
          }

          v27 = v25 / v26 * 100.0;
          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
          {
            v28 = *v12;
            lhs = time;
            v29 = CMTimeGetSeconds(&lhs);
            lhs.value = v48;
            lhs.timescale = v49;
            lhs.flags = v14;
            lhs.epoch = v15;
            v30 = CMTimeGetSeconds(&lhs);
            v31 = *(v12 + 8);
            if (v31 >= v24)
            {
              v31 = v24;
            }

            LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_updateBufferLevelHistogramForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CMTime, CMTime)", 33554482, "[%{ptr}] bufferLevelPercentage %1.4f hose [%{ptr}], bufferLevelTime: %1.4f currentRemoteMediaTime: %1.4f, maxDurationAvailableSecs: %1.4f, maxBufferLevelTime: %1.4f", a1, *&v27, v28, *&v29, *&v30, *&v24, *&v31);
          }

          APSStatsHistogramAddValue(v12[19], v27);
        }
      }

LABEL_38:
      rhs.value = *a4;
      v32 = *(a4 + 12);
      rhs.timescale = *(a4 + 8);
      if (v32)
      {
        v33 = *(a4 + 16);
        FigSimpleMutexCheckIsLockedOnThisThread();
        if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
        {
          v34 = *v12;
          time = *(v12 + 4);
          v35 = CMTimeGetSeconds(&time);
          time = *(v12 + 25);
          v36 = CMTimeGetSeconds(&time);
          time.value = rhs.value;
          time.timescale = rhs.timescale;
          time.flags = v32;
          time.epoch = v33;
          v37 = CMTimeGetSeconds(&time);
          LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_updateUnderrunStateForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CMTime)", 33554462, "[%{ptr}] Hose [%{ptr}] lastDeliveredRemoteMediaTime: %1.6f, inHoseDescriptor->rtcStats.underrun.start: %1.6f, currentRemoteMediaTime: %1.6f", a1, v34, *&v35, *&v36, *&v37);
        }

        time = *(v12 + 4);
        lhs.value = rhs.value;
        lhs.timescale = rhs.timescale;
        lhs.flags = v32;
        lhs.epoch = v33;
        if (CMTimeCompare(&time, &lhs) < 0 && (*(v12 + 212) & 1) == 0 && *(v12 + 18) == 1)
        {
          v12[25] = rhs.value;
          *(v12 + 52) = rhs.timescale;
          *(v12 + 53) = v32;
          v12[27] = v33;
          ++*(v12 + 56);
          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
          {
            v38 = *v12;
            time = *(v12 + 25);
            v39 = CMTimeGetSeconds(&time);
            LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_updateUnderrunStateForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CMTime)", 33554482, "[%{ptr}] Hose [%{ptr}] started underrunning at: %1.6f", a1, v38, *&v39);
          }
        }

        else
        {
          time = *(v12 + 4);
          lhs.value = rhs.value;
          lhs.timescale = rhs.timescale;
          lhs.flags = v32;
          lhs.epoch = v33;
          if (CMTimeCompare(&time, &lhs) >= 1 && (*(v12 + 44) & 1) != 0 && (*(v12 + 212) & 1) != 0)
          {
            time.value = rhs.value;
            time.timescale = rhs.timescale;
            time.flags = v32;
            time.epoch = v33;
            metricCollector_cancelUnderrunForHoseInternal(a1, v12, &time);
          }
        }
      }

      v40 = 0;
      goto LABEL_54;
    }

    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_updateBufferLevelHistogramForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CMTime, CMTime)", 33554462, "[%{ptr}] creating BufferLevelHistogram for hose [%{ptr}]", a1, *v12);
    }

    FigSimpleMutexCheckIsLockedOnThisThread();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v20 = Mutable;
      CFDictionarySetValue(Mutable, @"Name", @"Histogram_ReceiverBufferLevel");
      CFDictionarySetValue(v20, @"UnitName", @"ms");
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      v21 = APSStatsHistogramCreate(v20);
      if (v21)
      {
        v22 = v21;
        v12[19] = CFRetain(v21);
        if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_addBufferLevelHistogramForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr)", 33554482, "[%{ptr}] Created bufferLevelHistogram for Hose: [%{ptr}]", a1, *v12);
        }

        CFRelease(v20);
        CFRelease(v22);
        goto LABEL_27;
      }

      APSLogErrorAt(0);
      CFRelease(v20);
    }

    else
    {
      APSLogErrorAt(0);
    }

    v40 = 4294960568;
    APSLogErrorAt(4294960568);
    APSLogErrorAt(4294960568);
  }

  else
  {
    APSLogErrorAt(0);
    v40 = 4294960569;
  }

LABEL_54:
  FigSimpleMutexUnlock();
  return v40;
}

void metricCollector_cancelUnderrunForHoseInternal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = **&MEMORY[0x277CC08F0];
  if (*(a3 + 12))
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(a2 + 212))
    {
      lhs = *a3;
      rhs = *(a2 + 25);
      CMTimeSubtract(&v17, &lhs, &rhs);
      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        v6 = *a2;
        lhs = *a3;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = v17;
        v8 = CMTimeGetSeconds(&lhs);
        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_cancelUnderrunForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CMTime)", 33554482, "[%{ptr}] Hose [%{ptr}] stopped underrunning at: %1.6f underrun duration: %1.6f, count: %lu", a1, *&v6, *&Seconds, *&v8, *(a2 + 56));
      }

      v16 = v17;
      FigSimpleMutexCheckIsLockedOnThisThread();
      rhs = *(a2 + 228);
      time2 = v16;
      CMTimeAdd(&lhs, &rhs, &time2);
      *(a2 + 228) = lhs;
      rhs = *(a2 + 252);
      time2 = v16;
      CMTimeMinimum(&lhs, &rhs, &time2);
      *(a2 + 252) = lhs;
      rhs = *(a2 + 276);
      time2 = v16;
      CMTimeMaximum(&lhs, &rhs, &time2);
      *(a2 + 276) = lhs;
      v9 = *(a2 + 39);
      v10 = (*(a2 + 56) - 1);
      lhs = v16;
      v11 = CMTimeGetSeconds(&lhs);
      LODWORD(v12) = *(a2 + 56);
      *(a2 + 39) = (v11 + v9 * v10) / v12;
      lhs = v16;
      v13 = CMTimeGetSeconds(&lhs);
      LODWORD(v14) = *(a2 + 56);
      *(a2 + 38) = *(a2 + 38) + (v13 - *(a2 + 38)) / v14;
      v15 = MEMORY[0x277CC0898];
      *(a2 + 25) = *MEMORY[0x277CC0898];
      a2[27] = *(v15 + 16);
    }
  }
}

uint64_t APSAudioHoseMetricCollectorSetPlaybackStateForHose(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4)
{
  if (a1 && a2 && (*(a4 + 12) & 1) != 0)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorSetPlaybackStateForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, APSAudioHoseMetricCollectorMetricPlaybackState, CMTime)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorSetPlaybackStateForHose state: %u", a1, a3);
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v9 = Value;
      if (!a3 && *(Value + 18) == 1)
      {
        v12 = *a4;
        v13 = *(a4 + 2);
        metricCollector_cancelUnderrunForHoseInternal(a1, Value, &v12);
      }

      v10 = 0;
      *(v9 + 18) = a3;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v10;
}

uint64_t APSAudioHoseMetricCollectorUpdateSendRateForHose(uint64_t a1, const void *a2, double a3)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateSendRateForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, Float64)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateSendRateForHose inSendRate: %1.3f", a1, *&a3);
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      if (*(Value + 7) == 2)
      {
        APSLogErrorAt(0);
        v9 = 4294960591;
      }

      else
      {
        v7 = *(Value + 24);
        *(Value + 24) = v7 + 1;
        v8 = (v7 + 1);
        Value[22] = (a3 + Value[22] * v7) / v8;
        if (Value[20] > a3)
        {
          Value[20] = a3;
        }

        if (Value[21] < a3)
        {
          Value[21] = a3;
        }

        v9 = 0;
        Value[23] = Value[23] + (a3 - Value[23]) / v8;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v9;
}

uint64_t APSAudioHoseMetricCollectorUpdateSendWindowDataForHose(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateSendWindowDataForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint16_t, uint16_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateSendWindowDataForHose hose: [%{ptr}] inSpanLen: %u inCount: %u", a1, a2, a3, a4);
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v9 = 0;
      v10 = *(Value + 14) + 1;
      *(Value + 14) = v10;
      v11 = v10;
      Value[45] = Value[45] + (a3 - Value[45]) / v10;
      v12 = *(Value + 46);
      if (v12 <= a3)
      {
        v12 = a3;
      }

      *(Value + 46) = v12;
      Value[47] = Value[47] + (a4 - Value[47]) / v11;
      v13 = *(Value + 48);
      if (v13 <= a4)
      {
        v13 = a4;
      }

      *(Value + 48) = v13;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v9;
}

uint64_t APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    APSLogErrorAt(0);
    v11 = 4294960569;
    goto LABEL_16;
  }

  v7 = Value;
  if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint16_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose hose: [%{ptr}] inSlotsAvailableCount: %u", a1, a2, a3);
  }

  v8 = *(v7 + 15) + 1;
  *(v7 + 15) = v8;
  v7[49] = v7[49] + (a3 - v7[49]) / v8;
  v9 = *(v7 + 18);
  if (a3)
  {
    if (v9)
    {
      mach_absolute_time();
      v10 = UpTicksToMilliseconds();
      v11 = 0;
      v12 = *(v7 + 52);
      if (v12 <= v10)
      {
        v12 = v10;
      }

      v7[18] = 0.0;
      v7[51] = v7[51] + (v10 - v7[51]) / *(v7 + 50);
      *(v7 + 52) = v12;
      goto LABEL_16;
    }
  }

  else if (!v9)
  {
    v11 = 0;
    *(v7 + 18) = mach_absolute_time();
    ++*(v7 + 50);
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t APSAudioHoseMetricCollectorUpdatePacketSize(uint64_t a1, unint64_t a2, CMTime *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdatePacketSize(APSAudioHoseMetricCollectorRef, uint64_t, CMTime)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdatePacketSize inPacketSize: %llu", a1, a2);
    }

    time = *a3;
    v6 = CMTimeGetSeconds(&time) + *(a1 + 56);
    *(a1 + 56) = v6;
    if (v6 > 5.0)
    {
      v7 = *(a1 + 64) + 1;
      *(a1 + 56) = 0;
      *(a1 + 64) = v7;
      v8 = *(a1 + 48);
      v9 = a2;
      if (v8 != -1.0)
      {
        v9 = v8 + (v9 - v8) / v7;
      }

      *(a1 + 48) = v9;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(uint64_t a1, const void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v15 = Value;
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint64_t, uint64_t, uint64_t, uint32_t, uint32_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateRateControllerDataForHose hose: [%{ptr}] inTargetBitrate: %llu, inMinBitrate: %llu, inMaxBitrate: %llu, inBandwidthEstimation: %zu, inOWRD: %zu", a1, a2, a3, a4, a5, a6, a7);
    }

    v16 = *(v15 + 16) + 1;
    *(v15 + 16) = v16;
    v17 = v16;
    *(v15 + 55) = *(v15 + 55) + (a3 - *(v15 + 55)) / v16;
    v19 = *(v15 + 53);
    v18 = *(v15 + 54);
    if (v18 <= a3)
    {
      v18 = a3;
    }

    if (v19 >= a3)
    {
      v19 = a3;
    }

    *(v15 + 53) = v19;
    *(v15 + 54) = v18;
    v20 = *(v15 + 58);
    if (a6 && v20 == -1.0)
    {
      *(v15 + 58) = a6;
      v21 = a6;
      *(v15 + 57) = a6;
    }

    else
    {
      if (v20 <= -1.0)
      {
LABEL_21:
        v24 = *(v15 + 61);
        if (a7 && v24 == -1.0)
        {
          *(v15 + 61) = a7;
          v25 = a7;
          *(v15 + 60) = a7;
        }

        else
        {
          if (v24 <= -1.0)
          {
            goto LABEL_30;
          }

          *(v15 + 61) = v24 + (a7 - v24) / v17;
          v25 = a7;
          v27 = *(v15 + 59);
          v26 = *(v15 + 60);
          if (v26 <= a7)
          {
            v26 = a7;
          }

          *(v15 + 60) = v26;
          if (v27 < a7)
          {
            v25 = v27;
          }
        }

        *(v15 + 59) = v25;
LABEL_30:
        v28 = a5 - a3;
        v29 = *(v15 + 64) + (v28 - *(v15 + 64)) / v17;
        *(v15 + 64) = v29;
        v30 = *(v15 + 62);
        v31 = *(v15 + 63);
        if (v30 <= v28)
        {
          v30 = v28;
        }

        if (v31 >= v28)
        {
          v31 = v28;
        }

        *(v15 + 62) = v30;
        *(v15 + 63) = v31;
        if (gLogCategory_APSAudioHoseMetricCollector > 30)
        {
          goto LABEL_38;
        }

        if (gLogCategory_APSAudioHoseMetricCollector == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          v29 = *(v15 + 64);
          v30 = *(v15 + 62);
          v31 = *(v15 + 63);
        }

        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint64_t, uint64_t, uint64_t, uint32_t, uint32_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateRateControllerDataForHose hose: [%{ptr}] avgMaxBitrateDiff: %f, maxMaxBitrateDiff: %llu, minMaxBitrateDiff: %llu, currentMaxBitrateDiff: %llu", a1, a2, *&v29, v30, v31, v28);
LABEL_38:
        v32 = 0;
        v33 = *(v15 + 65);
        if (v33 <= a4)
        {
          v33 = a4;
        }

        *(v15 + 65) = v33;
        v34 = *(v15 + 66);
        if (v34 >= a4)
        {
          v34 = a4;
        }

        *(v15 + 66) = v34;
        v35 = *(v15 + 16);
        *(v15 + 67) = *(v15 + 67) + (a4 - *(v15 + 67)) / v35;
        v36 = a3 - a4;
        *(v15 + 70) = *(v15 + 70) + ((a3 - a4) - *(v15 + 70)) / v35;
        v37 = *(v15 + 68);
        if (v37 <= a3 - a4)
        {
          v37 = a3 - a4;
        }

        *(v15 + 68) = v37;
        if (*(v15 + 69) < v36)
        {
          v36 = *(v15 + 69);
        }

        *(v15 + 69) = v36;
        goto LABEL_47;
      }

      *(v15 + 58) = v20 + (a6 - v20) / v17;
      v21 = a6;
      v23 = *(v15 + 56);
      v22 = *(v15 + 57);
      if (v22 <= a6)
      {
        v22 = a6;
      }

      *(v15 + 57) = v22;
      if (v23 < a6)
      {
        v21 = v23;
      }
    }

    *(v15 + 56) = v21;
    goto LABEL_21;
  }

  APSLogErrorAt(0);
  v32 = 4294960569;
LABEL_47:
  FigSimpleMutexUnlock();
  return v32;
}

uint64_t APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v13 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint64_t, uint64_t, uint64_t, uint64_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose hose: [%{ptr}] inTxCount: %llu, inReTxCount: %llu, inRTPTxByteCount: %llu, inRTCPTxByteCount: %llu", a1, a2, a3, a4, a5, a6);
      }

      v14 = *(v13 + 11) + a3;
      *(v13 + 11) = v14;
      v15 = *(v13 + 40) + a4;
      *(v13 + 40) = v15;
      v13[41] = v15 / v14;
      mach_absolute_time();
      v16 = UpTicksToSeconds();
      v17 = 0;
      v18 = *(v13 + 12) + a5;
      v19 = *(v13 + 13) + a6;
      *(v13 + 12) = v18;
      *(v13 + 13) = v19;
      v13[42] = (v19 + v18) / v16;
      v13[43] = v18 / v16;
    }

    else
    {
      APSLogErrorAt(0);
      v17 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v17;
}

uint64_t APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose(uint64_t a1, const void *a2, unint64_t a3)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v7 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef, uint64_t)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose hose: [%{ptr}] inRoundTripTime: %llu", a1, a2, a3);
      }

      v8 = 0;
      v9 = *(v7 + 17) + 1;
      *(v7 + 17) = v9;
      v10 = v9;
      v11 = *(v7 + 72);
      if (v11 <= a3)
      {
        v11 = a3;
      }

      *(v7 + 72) = v11;
      v12 = *(v7 + 73);
      if (v12 >= a3)
      {
        v12 = a3;
      }

      v7[71] = v7[71] + (a3 - v7[71]) / v10;
      *(v7 + 73) = v12;
    }

    else
    {
      APSLogErrorAt(0);
      v8 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v8;
}

uint64_t APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v5 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose(APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverHoseRef)", 33554462, "[%{ptr}] APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose hose: [%{ptr}]", a1, a2);
      }

      v6 = 0;
      ++v5[44];
    }

    else
    {
      APSLogErrorAt(0);
      v6 = 4294960569;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t APSAudioHoseMetricCollectorReportMetrics(uint64_t a1, __int128 *a2)
{
  if (a1 && (*(a2 + 12) & 1) != 0)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus APSAudioHoseMetricCollectorReportMetrics(APSAudioHoseMetricCollectorRef, CMTime)", 33554482, "[%{ptr}] APSAudioHoseMetricCollectorReportMetrics", a1);
    }

    CFDictionaryApplyBlock();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t __APSAudioHoseMetricCollectorReportMetrics_block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (a3[19])
  {
    v4 = result;
    v5 = *(result + 32);
    time = *(v4 + 40);
    metricCollector_cancelUnderrunForHoseInternal(v5, a3, &time);
    v6 = *(v4 + 32);
    mach_absolute_time();
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (UpTicksToSeconds() <= *(v6 + 40))
    {
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt(0);
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    v8 = Mutable;
    v9 = *(a3 + 7);
    v10 = @"RTP";
    if (v9 == 2)
    {
      v10 = @"APAT";
    }

    if (v9 == 1)
    {
      v11 = @"APAP";
    }

    else
    {
      v11 = v10;
    }

    v12 = a3[19];
    if (!v12 || (v13 = APSStatsHistogramCopyValuesAsRTCString(v12)) == 0)
    {
      APSLogErrorAt(0);
      v32 = v8;
LABEL_138:
      CFRelease(v32);
LABEL_139:
      CFRelease(v11);
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    v14 = v13;
    UpTicksToMilliseconds();
    UInt64 = FigCFNumberCreateUInt64();
    cf = v14;
    v36 = v11;
    if (!UInt64)
    {
      goto LABEL_146;
    }

    FigCFDictionaryGetCount();
    FigCFDictionarySetUInt32();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      *v40 = *a3;
      v16 = a3[2];
      Count = FigCFDictionaryGetCount();
      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void metricCollector_reportMetricsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr)", 33554482, "[%{ptr}] Hose: [%{ptr}] BufferLevel RTC Metrics Summary: Model: %@, Build: %@, HoseCount: %lu, hist: %@, Topology Duration (ms): %@, Protocol Type: %@", v6, *v40, v16, Count, v14, UInt64, v11);
    }

    time = *(a3 + 228);
    CMTimeGetSeconds(&time);
    Float64 = FigCFNumberCreateFloat64();
    if (!Float64)
    {
LABEL_146:
      APSLogErrorAt(0);
      v31 = 0;
      v41 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v27 = 0;
      v37 = 0;
      v38 = 0;
      v26 = 0;
      goto LABEL_119;
    }

    if (a3[33])
    {
      v18 = a3 + 252;
      v19 = *(a3 + 252);
    }

    else
    {
      v18 = MEMORY[0x277CC08F0];
      v19 = *MEMORY[0x277CC08F0];
    }

    *&time.value = v19;
    time.epoch = *(v18 + 2);
    CMTimeGetSeconds(&time);
    v20 = FigCFNumberCreateFloat64();
    if (v20)
    {
      v41 = v20;
      time = *(a3 + 276);
      CMTimeGetSeconds(&time);
      v21 = FigCFNumberCreateFloat64();
      if (v21)
      {
        v22 = FigCFNumberCreateFloat64();
        if (v22)
        {
          v23 = FigCFNumberCreateFloat64();
          if (v23)
          {
            time = *(a3 + 228);
            Seconds = CMTimeGetSeconds(&time);
            v25 = UpTicksToSeconds();
            FigCFDictionarySetUInt32();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void metricCollector_reportMetricsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr)", 33554482, "[%{ptr}] Hose: [%{ptr}] BufferLevel RTC Metrics Underruns: Underrun Count: %lu, Total Underrun Duration: %@, Min Underrun Duration: %@, Max Underrun Duration: %@, Mean Underrun Duration: %@, Median Underrun Duration: %@,(Total Underrun Duration / Topology Duration): %1.4f", v6, *a3, *(a3 + 56), Float64, v41, v21, v23, v22, Seconds / v25);
            }

            if (*(a3 + 7) == 2)
            {
              v37 = 0;
              v38 = 0;
              v26 = 0;
              v27 = 0;
              goto LABEL_39;
            }

            v27 = FigCFNumberCreateFloat64();
            if (v27)
            {
              v28 = FigCFNumberCreateFloat64();
              if (v28)
              {
                v38 = v28;
                v29 = FigCFNumberCreateFloat64();
                if (v29)
                {
                  v37 = v29;
                  v26 = FigCFNumberCreateFloat64();
                  if (!v26)
                  {
                    APSLogErrorAt(0);
                    goto LABEL_118;
                  }

                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void metricCollector_reportMetricsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr)", 33554482, "[%{ptr}] Hose: [%{ptr}] BufferLevel RTC Metrics Send Rate Statistics: Min: %@, Max: %@, Mean: %@, Median: %@", v6, *a3, v27, v38, v26, v37);
                  }

                  if (*(a3 + 7) != 2)
                  {
                    goto LABEL_40;
                  }

LABEL_39:
                  if (*(a3 + 24))
                  {
                    goto LABEL_40;
                  }

                  v34 = v27;
                  v30 = FigCFDictionarySetUInt64();
                  if (v30)
                  {
                    v33 = v30;
                  }

                  else
                  {
                    v30 = FigCFDictionarySetDouble();
                    if (v30)
                    {
                      v33 = v30;
                    }

                    else
                    {
                      v30 = FigCFDictionarySetUInt64();
                      if (v30)
                      {
                        v33 = v30;
                      }

                      else
                      {
                        v30 = FigCFDictionarySetUInt64();
                        if (v30)
                        {
                          v33 = v30;
                        }

                        else
                        {
                          v30 = FigCFDictionarySetUInt64();
                          if (v30)
                          {
                            v33 = v30;
                          }

                          else
                          {
                            if (*(v6 + 48) == -1.0)
                            {
                              goto LABEL_57;
                            }

                            v30 = FigCFDictionarySetUInt64();
                            if (!v30)
                            {
                              if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportTransmissionStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Network Performance Stats: RTP Retransmit Count: %llu, Packet Loss Rate: %f, Throughput: %llu, Goodput: %llu, RTCP Signature Failure Count: %llu, RTP Avg PacketSize: %llu", v6, *a3, a3[40], a3[41], *(a3 + 42), *(a3 + 43), a3[44], *(v6 + 48));
                              }

LABEL_57:
                              FigSimpleMutexCheckIsLockedOnThisThread();
                              v30 = FigCFDictionarySetUInt64();
                              if (v30)
                              {
                                v33 = v30;
                              }

                              else
                              {
                                v30 = FigCFDictionarySetUInt64();
                                if (v30)
                                {
                                  v33 = v30;
                                }

                                else
                                {
                                  v30 = FigCFDictionarySetUInt64();
                                  if (v30)
                                  {
                                    v33 = v30;
                                  }

                                  else
                                  {
                                    v30 = FigCFDictionarySetUInt64();
                                    if (v30)
                                    {
                                      v33 = v30;
                                    }

                                    else
                                    {
                                      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportSendWindowStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: SendWindow Stats: sendWindowAvgCount: %llu, sendWindowMaxCount: %llu, sendWindowSpanAvgLen: %llu, sendWindowSpanMaxLen: %llu ", v6, *a3, *(a3 + 47), a3[48], *(a3 + 45), a3[46]);
                                      }

                                      FigSimpleMutexCheckIsLockedOnThisThread();
                                      v30 = FigCFDictionarySetUInt64();
                                      if (v30)
                                      {
                                        v33 = v30;
                                      }

                                      else
                                      {
                                        v30 = FigCFDictionarySetUInt64();
                                        if (v30)
                                        {
                                          v33 = v30;
                                        }

                                        else
                                        {
                                          v30 = FigCFDictionarySetUInt64();
                                          if (v30)
                                          {
                                            v33 = v30;
                                          }

                                          else
                                          {
                                            v30 = FigCFDictionarySetUInt64();
                                            if (v30)
                                            {
                                              v33 = v30;
                                            }

                                            else
                                            {
                                              if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                              {
                                                LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportPacketSlotCountStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Packet Slot Count Stats: avgPacketSlotCount: %llu, zeroAvailablePacketSlotEventCount: %llu, avgZeroAvailablePacketSlotDurationMS: %llu, maxZeroAvailablePacketSlotDurationMS: %llu ", v6, *a3, *(a3 + 49), a3[50], *(a3 + 51), a3[52]);
                                              }

                                              FigSimpleMutexCheckIsLockedOnThisThread();
                                              v30 = FigCFDictionarySetUInt64();
                                              if (v30)
                                              {
                                                v33 = v30;
                                              }

                                              else
                                              {
                                                v30 = FigCFDictionarySetInt64();
                                                if (v30)
                                                {
                                                  v33 = v30;
                                                }

                                                else
                                                {
                                                  v30 = FigCFDictionarySetInt64();
                                                  if (v30)
                                                  {
                                                    v33 = v30;
                                                  }

                                                  else
                                                  {
                                                    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                    {
                                                      LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportTargetBitrateStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Target Bitrate Stats: avgTargetBitRate: %llu, maxTargetBitRate: %llu, minTargetBitRate: %llu", v6, *a3, *(a3 + 55), a3[54], a3[53]);
                                                    }

                                                    FigSimpleMutexCheckIsLockedOnThisThread();
                                                    v30 = FigCFDictionarySetUInt64();
                                                    if (v30)
                                                    {
                                                      v33 = v30;
                                                    }

                                                    else
                                                    {
                                                      v30 = FigCFDictionarySetInt64();
                                                      if (v30)
                                                      {
                                                        v33 = v30;
                                                      }

                                                      else
                                                      {
                                                        v30 = FigCFDictionarySetInt64();
                                                        if (v30)
                                                        {
                                                          v33 = v30;
                                                        }

                                                        else
                                                        {
                                                          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                          {
                                                            LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportbandwidthEstimationStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: bandwidthEstimation Stats: avgBandwidthEstimation: %llu, maxBandwidthEstimation: %llu, minBandwidthEstimation: %llu", v6, *a3, *(a3 + 58), a3[57], a3[56]);
                                                          }

                                                          FigSimpleMutexCheckIsLockedOnThisThread();
                                                          v30 = FigCFDictionarySetUInt64();
                                                          if (v30)
                                                          {
                                                            v33 = v30;
                                                          }

                                                          else
                                                          {
                                                            v30 = FigCFDictionarySetInt64();
                                                            if (v30)
                                                            {
                                                              v33 = v30;
                                                            }

                                                            else
                                                            {
                                                              v30 = FigCFDictionarySetInt64();
                                                              if (v30)
                                                              {
                                                                v33 = v30;
                                                              }

                                                              else
                                                              {
                                                                if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                {
                                                                  LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportOWRDStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: One Way Relative Delay Stats: avgOWRD: %llu, maxOWRD: %llu, minOWRD: %llu", v6, *a3, *(a3 + 61), a3[60], a3[59]);
                                                                }

                                                                FigSimpleMutexCheckIsLockedOnThisThread();
                                                                v30 = FigCFDictionarySetUInt64();
                                                                if (v30)
                                                                {
                                                                  v33 = v30;
                                                                }

                                                                else
                                                                {
                                                                  v30 = FigCFDictionarySetInt64();
                                                                  if (v30)
                                                                  {
                                                                    v33 = v30;
                                                                  }

                                                                  else
                                                                  {
                                                                    v30 = FigCFDictionarySetInt64();
                                                                    if (v30)
                                                                    {
                                                                      v33 = v30;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportMaxBitrateDiffStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Max BitrateDiff Stats: avgMaxBitrateDiff: %llu, maxMaxBitrateDiff: %llu, minMaxBitrateDiff: %llu", v6, *a3, *(a3 + 64), a3[62], a3[63]);
                                                                      }

                                                                      FigSimpleMutexCheckIsLockedOnThisThread();
                                                                      v30 = FigCFDictionarySetUInt64();
                                                                      if (v30)
                                                                      {
                                                                        v33 = v30;
                                                                      }

                                                                      else
                                                                      {
                                                                        v30 = FigCFDictionarySetInt64();
                                                                        if (v30)
                                                                        {
                                                                          v33 = v30;
                                                                        }

                                                                        else
                                                                        {
                                                                          v30 = FigCFDictionarySetInt64();
                                                                          if (v30)
                                                                          {
                                                                            v33 = v30;
                                                                          }

                                                                          else
                                                                          {
                                                                            v30 = FigCFDictionarySetUInt64();
                                                                            if (v30)
                                                                            {
                                                                              v33 = v30;
                                                                            }

                                                                            else
                                                                            {
                                                                              v30 = FigCFDictionarySetInt64();
                                                                              if (v30)
                                                                              {
                                                                                v33 = v30;
                                                                              }

                                                                              else
                                                                              {
                                                                                v30 = FigCFDictionarySetInt64();
                                                                                if (v30)
                                                                                {
                                                                                  v33 = v30;
                                                                                }

                                                                                else
                                                                                {
                                                                                  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                                  {
                                                                                    LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportMinBitrateStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Min Bitrate Stats: avgMinBitrate: %llu, maxMinBitrate: %llu, minMinBitrate: %llu, avgMinBitrateDiff: %llu, maxMinBitrateDiff: %llu, minMinBitrateDiff: %llu ", v6, *a3, *(a3 + 67), a3[65], a3[66], *(a3 + 70), a3[68], a3[69]);
                                                                                  }

                                                                                  FigSimpleMutexCheckIsLockedOnThisThread();
                                                                                  v30 = FigCFDictionarySetUInt64();
                                                                                  if (v30)
                                                                                  {
                                                                                    v33 = v30;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v30 = FigCFDictionarySetInt64();
                                                                                    if (v30)
                                                                                    {
                                                                                      v33 = v30;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v30 = FigCFDictionarySetInt64();
                                                                                      if (!v30)
                                                                                      {
                                                                                        if (gLogCategory_APSAudioHoseMetricCollector > 50)
                                                                                        {
LABEL_117:
                                                                                          APSRTCReportingAgentSendEventWithCompletionHandler(*(v6 + 16), 10, v8, 0);
LABEL_118:
                                                                                          v31 = Float64;
                                                                                          goto LABEL_119;
                                                                                        }

                                                                                        if (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize())
                                                                                        {
                                                                                          LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "OSStatus metricCollector_reportRTTStatsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Hose: [%{ptr}] APAT RTC Metrics: Round Trip Time Stats: avgRTT: %llu, maxRTT: %llu, minRTT: %llu", v6, *a3, *(a3 + 71), a3[72], a3[73]);
                                                                                        }

LABEL_40:
                                                                                        if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                                        {
                                                                                          LogPrintF(&gLogCategory_APSAudioHoseMetricCollector, "void metricCollector_reportMetricsForHoseInternal(APSAudioHoseMetricCollectorRef, APSAudioHoseMetricCollectorHoseDescriptorPtr)", 33554462, "[%{ptr}] Hose: [%{ptr}] RTC Metrics Payload Dict: %@", v6, *a3, v8);
                                                                                        }

                                                                                        goto LABEL_117;
                                                                                      }

                                                                                      v33 = v30;
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
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              goto LABEL_195;
                            }

                            v33 = v30;
                          }
                        }
                      }
                    }
                  }

LABEL_195:
                  APSLogErrorAt(v30);
                  v31 = Float64;
                  APSLogErrorAt(v33);
                  v27 = v34;
LABEL_119:
                  CFRelease(v8);
                  CFRelease(cf);
                  if (UInt64)
                  {
                    CFRelease(UInt64);
                  }

                  if (v31)
                  {
                    CFRelease(v31);
                  }

                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  if (v21)
                  {
                    CFRelease(v21);
                  }

                  if (v22)
                  {
                    CFRelease(v22);
                  }

                  v11 = v36;
                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  if (v38)
                  {
                    CFRelease(v38);
                  }

                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  v32 = v37;
                  if (!v37)
                  {
                    goto LABEL_139;
                  }

                  goto LABEL_138;
                }

                APSLogErrorAt(0);
LABEL_156:
                v26 = 0;
                v37 = 0;
                goto LABEL_118;
              }
            }

            APSLogErrorAt(0);
LABEL_155:
            v38 = 0;
            goto LABEL_156;
          }

          APSLogErrorAt(0);
LABEL_154:
          v27 = 0;
          goto LABEL_155;
        }

        APSLogErrorAt(0);
LABEL_152:
        v23 = 0;
        goto LABEL_154;
      }

      APSLogErrorAt(0);
    }

    else
    {
      APSLogErrorAt(0);
      v41 = 0;
      v21 = 0;
    }

    v22 = 0;
    goto LABEL_152;
  }

  return result;
}

__CFString *APSNANServiceTypeGetTXTString(int a1)
{
  v1 = @"ll";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"ap";
  }

  else
  {
    return v1;
  }
}

const __CFString *APSNANServiceTypeMakeWithTXTString(const __CFString *result)
{
  v3 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  if (result)
  {
    result = CFStringGetCString(result, v2, 256, 0x600u);
    if (result)
    {
      v1 = strlen(v2);
      return APSNANServiceTypeMakeWithString(v2, v1);
    }
  }

  return result;
}

uint64_t APSNANServiceTypeMakeWithString(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (strncmpx())
    {
      return 2 * (strncmpx() == 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL APSNANServiceTypeIsKindOfType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return (a2 - 1) < 2;
  }

  else
  {
    return v2;
  }
}

uint64_t APSCaulkMemoryResourceAllocatorCreate(uint64_t a1, char a2, CFAllocatorRef *a3)
{
  if (a1 && a3)
  {
    operator new();
  }

  APSLogErrorAt(0);
  return 4294960591;
}

void sub_222349198(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  APSLogErrorAt(0);
  JUMPOUT(0x222349190);
}

uint64_t cmrAllocator_release(uint64_t result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    if (*(result + 16))
    {
      v2 = *(result + 8);
      if (v2)
      {
        (*(*v2 + 8))(v2);
      }
    }

    JUMPOUT(0x223DB5660);
  }

  return result;
}

void cmrAllocator_deallocate(char *a1, void **a2)
{
  v2 = *(a1 - 2);
  if ((*(a1 - 1) & v2) != 0)
  {
    v3 = FatalErrorF();
    v5 = v4;
    v6 = __cxa_begin_catch(v3);
    if (v5 == 2)
    {
      v7 = (*(*v6 + 16))(v6);
      v8 = 4294960534;
    }

    else
    {
      v7 = "unknown error";
      v8 = 4294960596;
    }

    APSSignalErrorAt(v8, v7, "cmrAllocator_deallocate");

    __cxa_end_catch();
  }

  else
  {
    (*(*a2[1] + 24))(a2[1], a1 - 16, v2 + 16, 8);
  }
}

void *cmrAllocator_allocate(uint64_t a1, unint64_t a2, void **a3)
{
  v4 = (*(*a3[1] + 16))(a3[1], a1 + 16, 8);
  *v4 = a1;
  v4[1] = ~a1;
  return v4 + 2;
}

void sub_22234939C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_alloc a10)
{
  if (a2 == 3)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82918] + 16);
    __cxa_begin_catch(a1);
    APSSignalErrorAt(0xFFFFE5B8, "allocation failed", "cmrAllocator_allocate");
    std::bad_alloc::~bad_alloc(&a10);
  }

  else
  {
    v12 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v13 = (*(*v12 + 16))(v12);
      v14 = 4294960534;
    }

    else
    {
      v13 = "unknown error";
      v14 = 4294960596;
    }

    APSSignalErrorAt(v14, v13, "cmrAllocator_allocate");
  }

  __cxa_end_catch();
  JUMPOUT(0x22234938CLL);
}

uint64_t APSPriorityDispatchQueuePoolGetTypeID()
{
  if (gAPSPriorityDispatchQueuePoolInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchQueuePoolInitOnce, 0, _APSPriorityDispatchQueuePoolGetTypeID);
  }

  return gAPSPriorityDispatchQueuePoolTypeID;
}

uint64_t _APSPriorityDispatchQueuePoolGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchQueuePoolTypeID = result;
  return result;
}

void _APSPriorityDispatchQueuePoolFinalize(uint64_t a1)
{
  free(*(a1 + 16));
  FigSimpleMutexDestroy();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t APSPriorityDispatchQueuePoolCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSPriorityDispatchQueuePoolInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchQueuePoolInitOnce, 0, _APSPriorityDispatchQueuePoolGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  if (!a1 || (v8 = CFStringCopyUTF8CString(), !v8))
  {
    *(v7 + 24) = a2;
    v9 = FigSimpleMutexCreate();
    *(v7 + 32) = v9;
    if (v9 && (v10 = *MEMORY[0x277CBECE8], valueCallBacks.version = 0, valueCallBacks.retain = queuePool_dictionaryDispatchQueueRetain, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = queuePool_dictionaryDispatchQueueRelease, v11 = CFDictionaryCreateMutable(v10, 0, 0, &valueCallBacks), (*(v7 + 40) = v11) != 0))
    {
      v8 = 0;
      *a3 = CFRetain(v7);
    }

    else
    {
      v8 = 4294960568;
    }
  }

  CFRelease(v7);
  return v8;
}

NSObject *APSPriorityDispatchQueuePoolGetQueue(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (a2 == 5)
  {
    a2 = *(a1 + 24);
  }

  Value = CFDictionaryGetValue(*(a1 + 40), a2);
  if (!Value)
  {
    if (a2 == 5)
    {
      v6 = dispatch_queue_create(*(a1 + 16), 0);
    }

    else
    {
      v6 = FigDispatchQueueCreateWithPriority();
    }

    Value = v6;
    if (v6)
    {
      CFDictionarySetValue(*(a1 + 40), a2, v6);
      dispatch_release(Value);
    }
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t APSPriorityDispatchQueuePoolSyncFlush(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  FigSimpleMutexLock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 40));
  FigSimpleMutexUnlock();
  if (!Copy)
  {
    return 4294960568;
  }

  CFDictionaryApplyFunction(Copy, queuePool_dictionarySyncFlushApplier, 0);
  CFRelease(Copy);
  return 0;
}

uint64_t APSCryptorChaCha20Poly1305Create(uint64_t a1, CFDataRef theData, char a3, CFTypeRef *a4)
{
  if (!theData)
  {
    v9 = 4294895585;
LABEL_14:
    APSLogErrorAt(0);
    return v9;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    v9 = 4294895585;
    goto LABEL_14;
  }

  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v9 = v7;
    APSLogErrorAt(v7);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 264) = CFRetain(theData);
    *DerivedStorage = a3;
    if (gLogCategory_APSCryptorChaCha20Poly1305 <= 30 && (gLogCategory_APSCryptorChaCha20Poly1305 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSCryptorChaCha20Poly1305, "OSStatus APSCryptorChaCha20Poly1305Create(CFAllocatorRef, CFDataRef, Boolean, APSCryptorRef *)", 33554462, "APSCryptorChaCha20Poly1305 %p created.\n", 0);
    }

    v9 = 0;
    *a4 = 0;
  }

  return v9;
}

__CFString *chachaCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorChaCha20Poly1305 %p>", a1);
  return Mutable;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}