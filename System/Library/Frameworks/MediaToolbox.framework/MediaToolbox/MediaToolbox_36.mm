CFComparisonResult FigMetadataCompareStringKeys(uint64_t a1, uint64_t a2)
{
  Value = FigCFDictionaryGetValue();
  v3 = FigCFDictionaryGetValue();

  return CFStringCompare(Value, v3, 0);
}

uint64_t FigIcyMetadataParseSampleBuffer(void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  allocator = CFGetAllocator(a1);
  dataPointerOut = 0;
  blockBufferOut = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v8;
  if (Mutable)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a1);
    v12 = CMBlockBufferCreateContiguous(0, DataBuffer, 0, 0, 0, 0, 0, &blockBufferOut);
    if (v12)
    {
      value_low = v12;
      v13 = 0;
      goto LABEL_54;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
    v13 = CMTimeCopyAsDictionary(&time, allocator);
    if (v13)
    {
      DataLength = CMBlockBufferGetDataLength(blockBufferOut);
      DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
      if (DataPointer)
      {
        value_low = DataPointer;
        goto LABEL_54;
      }

      if (!dataPointerOut[DataLength - 1])
      {
        v37 = a2;
        theArray = Mutable;
        v16 = dataPointerOut + 1;
        v17 = MEMORY[0x1E69E9830];
        while (1)
        {
          v18 = *(v16 - 1);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v17 + 4 * v18 + 60) & 0x4000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          dataPointerOut = v16++;
        }

        if (__maskrune(v18, 0x4000uLL))
        {
          goto LABEL_14;
        }

LABEL_15:
        v40 = v13;
        v38 = a3;
        v19 = dataPointerOut;
        if (*dataPointerOut)
        {
          while (1)
          {
            v20 = strchr(v19, 61);
            if (!v20)
            {
              goto LABEL_48;
            }

            v21 = strchr(v20 + 1, 39);
            if (!v21)
            {
              goto LABEL_48;
            }

            v22 = v21;
            v23 = strchr(v21, 59);
            if (v23)
            {
              v24 = v23 + 1;
            }

            else
            {
              v24 = (v22 + strlen(v22));
            }

            v25 = v24;
            if (v24 >= v22)
            {
              v25 = v24;
              do
              {
                if (*v25 == 39)
                {
                  break;
                }

                --v25;
              }

              while (v25 >= v22);
            }

            if (v25 <= v22)
            {
              goto LABEL_48;
            }

            if (v22 + 1 < v25)
            {
              break;
            }

            do
            {
LABEL_43:
              dataPointerOut = v24;
              v33 = *v24;
              if ((v33 & 0x80000000) != 0)
              {
                v34 = __maskrune(v33, 0x4000uLL);
              }

              else
              {
                v34 = *(v17 + 4 * v33 + 60) & 0x4000;
              }

              ++v24;
            }

            while (v34);
            v19 = dataPointerOut;
            if (!*dataPointerOut)
            {
              goto LABEL_48;
            }
          }

          if (!strncasecmp(v19, "StreamUrl", 9uLL))
          {
            v27 = @"StreamUrl";
          }

          else
          {
            if (strncasecmp(v19, "StreamTitle", 0xBuLL))
            {
              time.value = 134217984;
              v26 = FigCFStringCreateWithBytesWithUnknownEncoding();
              goto LABEL_33;
            }

            v27 = @"StreamTitle";
          }

          v26 = CFRetain(v27);
LABEL_33:
          v28 = v26;
          if (v26)
          {
            if (!FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
            {
              if (v28 == @"StreamUrl")
              {
                v29 = CFStringCreateWithBytes(allocator, (v22 + 1), &v25[~v22], 0x8000100u, 1u);
              }

              else
              {
                time.value = 134217984;
                v29 = FigCFStringCreateWithBytesWithUnknownEncoding();
              }

              v30 = v29;
              if (v29)
              {
                time.value = @"key";
                *&time.timescale = @"value";
                values[0] = v28;
                values[1] = v29;
                time.epoch = @"keyspace";
                v46 = @"timestamp";
                values[2] = @"icy";
                values[3] = v40;
                v31 = CFDictionaryCreate(allocator, &time, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v31)
                {
                  v32 = v31;
                  CFArrayAppendValue(theArray, v28);
                  CFDictionarySetValue(v9, v28, v32);
                  CFRelease(v28);
                  v28 = v30;
                  v30 = v32;
                }

                CFRelease(v28);
                v28 = v30;
              }
            }

            CFRelease(v28);
          }

          goto LABEL_43;
        }

LABEL_48:
        Mutable = theArray;
        if (v37)
        {
          *v37 = CFRetain(theArray);
        }

        v13 = v40;
        if (v38)
        {
          value_low = 0;
          *v38 = CFRetain(v9);
          if (!theArray)
          {
            goto LABEL_55;
          }
        }

        else
        {
          value_low = 0;
          if (!theArray)
          {
            goto LABEL_55;
          }
        }

LABEL_54:
        CFRelease(Mutable);
        goto LABEL_55;
      }

      FigIcyMetadataParseSampleBuffer_cold_1(&time);
    }

    else
    {
      FigIcyMetadataParseSampleBuffer_cold_2(&time);
    }

    value_low = LODWORD(time.value);
    goto LABEL_54;
  }

  FigIcyMetadataParseSampleBuffer_cold_3(&time);
  v13 = 0;
  value_low = LODWORD(time.value);
  if (Mutable)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return value_low;
}

uint64_t FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems(uint64_t a1, const void *a2, void *a3)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v5 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (!BlockBufferWithCFDataNoCopy)
    {
      *a3 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems_cold_1(&v8);
    return v8;
  }

  return BlockBufferWithCFDataNoCopy;
}

uint64_t FigMetadataArrayCreateWithAudioFileMetadataItemList(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, uint64_t a5, CFMutableArrayRef *a6)
{
  v7 = a5;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a3)
    {
      FigCFDictionaryGetValueIfPresent();
    }

    if (*(a2 + 8))
    {
      v13 = 0;
      v14 = (a2 + 32);
      do
      {
        v15 = *(v14 - 2);
        if (v15 && (v16 = CFGetTypeID(*(v14 - 2)), v16 == CFStringGetTypeID()))
        {
          MutableCopy = CFStringCreateMutableCopy(a1, 0, v15);
          v18 = MutableCopy;
          if (MutableCopy)
          {
            CFStringUppercase(MutableCopy, 0);
            v15 = v18;
          }
        }

        else
        {
          v18 = 0;
        }

        AddVorbisCommentItemToArray(Mutable, v15, *(v14 - 1), *v14, v7);
        if (v18)
        {
          CFRelease(v18);
        }

        ++v13;
        v14 += 3;
      }

      while (v13 < *(a2 + 8));
    }

    if (a4)
    {
      v19 = CFGetTypeID(a4);
      if (v19 == CFDataGetTypeID() && CFDataGetLength(a4) >= 1)
      {
        AddVorbisCommentItemToArray(Mutable, @"METADATA_BLOCK_PICTURE", a4, 0, v7);
      }
    }

    result = 0;
  }

  else
  {
    FigMetadataArrayCreateWithAudioFileMetadataItemList_cold_1(&v21);
    result = v21;
  }

  *a6 = Mutable;
  return result;
}

void AddVorbisCommentItemToArray(void *a1, const void *a2, const void *a3, const void *a4, int a5)
{
  v10 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v12 = Mutable;
    CFDictionarySetValue(Mutable, @"key", a2);
    CFDictionarySetValue(v12, @"keyspace", @"vorb");
    CFDictionarySetValue(v12, @"value", a3);
    if (a4)
    {
      CFDictionarySetValue(v12, @"info", a4);
    }

    if (!a5 || CFPropertyListIsValid(v12, kCFPropertyListBinaryFormat_v1_0))
    {
      CFArrayAppendValue(a1, v12);
    }

    CFRelease(v12);
  }

  else
  {
    AddVorbisCommentItemToArray_cold_1();
  }
}

uint64_t FigMetadataReaderCreateWithVorbisCommentFields(const __CFAllocator *a1, uint64_t a2, const void *a3, void *a4)
{
  v11 = 0;
  theArray = 0;
  v6 = FigMetadataArrayCreateWithAudioFileMetadataItemList(a1, a2, 1, a3, 0, &theArray);
  v7 = theArray;
  if (v6)
  {
    v8 = v6;
    *a4 = 0;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v8 = FigMetadataReaderCreateForGenericMetadataArray(a1, v7, @"org.xiph.vorbis-comment", @"vorb", &v11);
      v9 = v11;
    }

    *a4 = v9;
LABEL_8:
    CFRelease(v7);
    return v8;
  }

  v8 = 0;
  *a4 = 0;
  return v8;
}

void FigReleaseAudioFileMetadataItems(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = (a1 + 32);
      do
      {
        v5 = *(v4 - 2);
        if (v5)
        {
          CFRelease(v5);
        }

        v6 = *(v4 - 1);
        if (v6)
        {
          CFRelease(v6);
        }

        if (*v4)
        {
          CFRelease(*v4);
        }

        ++v3;
        v4 += 3;
      }

      while (v3 < *(a1 + 8));
    }
  }
}

uint64_t FigMetadataReaderCreateWithAudioFileProperties(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t *a4)
{
  v15 = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = Mutable;
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(a2, CreateFigMetadataItemForAudioFileInfoItem, v9);
      }
    }

    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFDataGetTypeID() && CFDataGetLength(a3) >= 1)
      {
        AddFigMetadataItemToArray(v9, @"aart", a3);
      }
    }

    if (CFArrayGetCount(v9) < 1)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v12 = FigMetadataReaderCreateForGenericMetadataArray(a1, v9, @"public.unknown", @"caaf", &v15);
      v13 = v15;
    }

    *a4 = v13;
    CFRelease(v9);
  }

  else
  {
    FigMetadataReaderCreateWithAudioFileProperties_cold_1();
    return v16;
  }

  return v12;
}

void CreateFigMetadataItemForAudioFileInfoItem(uint64_t a1, const void *a2, void *cf)
{
  v6 = CFGetAllocator(cf);
  v7 = CFStringCreateWithFormat(v6, 0, @"info-%@", a1);
  if (v7)
  {
    v8 = v7;
    AddFigMetadataItemToArray(cf, v7, a2);

    CFRelease(v8);
  }

  else
  {
    CreateFigMetadataItemForAudioFileInfoItem_cold_1();
  }
}

void AddFigMetadataItemToArray(void *a1, const void *a2, const void *a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(Mutable, @"key", a2);
    CFDictionarySetValue(v8, @"value", a3);
    CFDictionarySetValue(v8, @"keyspace", @"caaf");
    CFArrayAppendValue(a1, v8);

    CFRelease(v8);
  }

  else
  {
    AddFigMetadataItemToArray_cold_1();
  }
}

CFDictionaryRef FigMetadataSetUpISO639LanguageMapping()
{
  keys[162] = *MEMORY[0x1E69E9840];
  bzero(keys, 0x510uLL);
  bzero(values, 0x510uLL);
  bzero(v5, 0x510uLL);
  v0 = 0;
  v1 = &FigMetadataSetUpISO639LanguageMapping_sLanguageMapping;
  do
  {
    v8 = vld3q_f64(v1);
    v1 += 6;
    *&keys[v0] = v8.val[0];
    *&values[v0] = v8.val[1];
    *&v5[v0] = v8.val[2];
    v0 += 2;
  }

  while (v0 != 162);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  gISO639CanonicalToISO639_2TDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 162, MEMORY[0x1E695E9D8], 0);
  gISO639CanonicalToLangCodeDict = CFDictionaryCreate(v2, keys, v5, 162, v3, 0);
  result = CFDictionaryCreate(v2, values, keys, 162, 0, MEMORY[0x1E695E9E8]);
  gISO639_2TToISO639_1Dict = result;
  return result;
}

CFDictionaryRef FigMetadataSetUpISO639NonCanonicalLanguageMapping()
{
  v0 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *keys = 0u;
  memset(v7, 0, sizeof(v7));
  v1 = &unk_1E7485688;
  do
  {
    v2 = *v1;
    keys[v0] = *(v1 - 1);
    *(v7 + v0 * 8) = v2;
    ++v0;
    v1 += 2;
  }

  while (v0 != 3);
  v3 = &unk_1E74856B8;
  do
  {
    v4 = *v3;
    keys[v0] = *(v3 - 1);
    *(v7 + v0 * 8) = v4;
    ++v0;
    v3 += 2;
  }

  while (v0 != 6);
  v5 = *MEMORY[0x1E695E480];
  gISO639NonCanonicalToISO639_2TDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v7, 6, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v5, v7, keys, 3, 0, 0);
  gISO639_2TToISO639_1NonCanonicalDict = result;
  return result;
}

CFDictionaryRef FigUserDataSetUpCommonKeyMapping()
{
  keys[18] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"subject";
  keys[2] = @"description";
  keys[3] = @"publisher";
  keys[4] = @"contributor";
  keys[5] = @"creationDate";
  keys[6] = @"type";
  keys[7] = @"format";
  keys[8] = @"source";
  keys[9] = @"location";
  keys[10] = @"copyrights";
  keys[11] = @"albumName";
  keys[12] = @"author";
  keys[13] = @"artist";
  keys[14] = @"make";
  keys[15] = @"model";
  keys[16] = @"software";
  keys[17] = @"accessibilityDescription";
  values[0] = @"title";
  values[1] = @"title";
  values[2] = @"title";
  values[3] = @"subject";
  values[4] = @"description";
  values[5] = @"description";
  values[6] = @"publisher";
  values[7] = @"contributor";
  values[8] = @"contributor";
  values[9] = @"contributor";
  values[10] = @"contributor";
  values[11] = @"creationDate";
  values[12] = @"type";
  values[13] = @"format";
  values[14] = @"source";
  values[15] = @"location";
  values[16] = @"copyrights";
  values[17] = @"albumName";
  values[18] = @"author";
  values[19] = @"artist";
  values[20] = @"make";
  values[21] = @"model";
  values[22] = @"software";
  values[23] = @"accessibilityDescription";
  v3 = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  qword_1EAF19308 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigUserDataSetUpCommonKeyMapping_toUserdataKeys, 18, MEMORY[0x1E695E9D8], 0);
  gUserDataOSTypeKeyToCommonKeyDict = CFDictionaryCreate(v0, &FigUserDataSetUpCommonKeyMapping_fromUserdataKeys, values, 24, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, &v3, &FigUserDataSetUpCommonKeyMapping_keyMappingCount, 1, v1, 0);
  gUserDataCommonKeyMappingCountDict = result;
  return result;
}

CFDictionaryRef FigISOUserDataSetUpCommonKeyMapping()
{
  keys[10] = *MEMORY[0x1E69E9840];
  keys[0] = @"copyrights";
  keys[1] = @"author";
  keys[2] = @"contributor";
  keys[3] = @"location";
  keys[4] = @"title";
  keys[5] = @"description";
  keys[6] = @"artwork";
  keys[7] = @"creationDate";
  keys[8] = @"software";
  keys[9] = @"accessibilityDescription";
  v7 = xmmword_196E76970;
  v8 = *"pcsd";
  v9 = xmmword_196E76990;
  *v5 = *"trpc";
  v6 = *"frep";
  v10 = 1633969523;
  values[0] = @"copyrights";
  values[1] = @"author";
  values[2] = @"contributor";
  values[3] = @"location";
  values[4] = @"title";
  values[5] = @"title";
  values[6] = @"description";
  values[7] = @"artwork";
  values[8] = @"creationDate";
  values[9] = @"software";
  values[10] = @"accessibilityDescription";
  v3 = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  qword_1EAF19310 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "trpc", 10, MEMORY[0x1E695E9D8], 0);
  gISOUserDataOSTypeKeyToCommonKeyDict = CFDictionaryCreate(v0, v5, values, 11, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, &v3, &FigISOUserDataSetUpCommonKeyMapping_keyMappingCount, 1, v1, 0);
  gISOUserDataCommonKeyMappingCountDict = result;
  return result;
}

void FigUserDataSetUpStringKeyMapping()
{
  keys[40] = *MEMORY[0x1E69E9840];
  keys[0] = @"@alb";
  keys[1] = @"@arg";
  keys[2] = @"@ART";
  keys[3] = @"@aut";
  keys[4] = @"@chp";
  keys[5] = @"@cmt";
  keys[6] = @"@com";
  keys[7] = @"@cpy";
  keys[8] = @"@day";
  keys[9] = @"@des";
  keys[10] = @"@dir";
  keys[11] = @"@dis";
  keys[12] = @"@enc";
  keys[13] = @"@nam";
  keys[14] = @"@gen";
  keys[15] = @"@hst";
  keys[16] = @"@inf";
  keys[17] = @"@key";
  keys[18] = @"@mak";
  keys[19] = @"@mod";
  keys[20] = @"@ope";
  keys[21] = @"@fmt";
  keys[22] = @"@src";
  keys[23] = @"@prf";
  keys[24] = @"@prd";
  keys[25] = @"@pub";
  keys[26] = @"@PRD";
  keys[27] = @"@swr";
  keys[28] = @"@req";
  keys[29] = @"@trk";
  keys[30] = @"@wrn";
  keys[31] = @"@wrt";
  keys[32] = @"@url";
  keys[33] = @"@xyz";
  keys[34] = @"@src";
  keys[35] = @"@phg";
  keys[36] = @"tnam";
  keys[37] = @"tagc";
  keys[38] = @"ludt";
  keys[39] = @"@ade";
  v0 = *MEMORY[0x1E695E480];
  gUserDataStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys, 40, MEMORY[0x1E695E9D8], 0);
  v1 = MEMORY[0x1E695E9E8];
  gUserDataOSTypeKeyToStringKeyDict = CFDictionaryCreate(v0, FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys, keys, 40, 0, MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v0, 40, 0, v1);
  for (i = 0; i != 40; ++i)
  {
    v4 = FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys[i];
    UInt32 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, v4, UInt32);
    if (UInt32)
    {
      CFRelease(UInt32);
    }
  }

  gUserDataOSTypeKeyToCFNumberDict = Mutable;
}

CFDictionaryRef FigISOUserDataSetUpStringKeyMapping()
{
  keys[18] = *MEMORY[0x1E69E9840];
  keys[0] = @"cprt";
  keys[1] = @"date";
  keys[2] = @"ludt";
  keys[3] = @"auth";
  keys[4] = @"perf";
  keys[5] = @"gnre";
  keys[6] = @"yrrc";
  keys[7] = @"loci";
  keys[8] = @"titl";
  keys[9] = @"dscp";
  keys[10] = @"coll";
  keys[11] = @"urat";
  keys[12] = @"thmb";
  keys[13] = @"albm";
  keys[14] = @"kywd";
  keys[15] = @"clsf";
  keys[16] = @"rtng";
  keys[17] = @"tagc";
  v0 = *MEMORY[0x1E695E480];
  gISOUserDataStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "trpc", 18, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, "trpc", keys, 18, 0, MEMORY[0x1E695E9E8]);
  gISOUserDataOSTypeKeyToStringKeyDict = result;
  return result;
}

void FigQuickTimeMetadataSetUpCommonKeyMapping()
{
  v18[17] = *MEMORY[0x1E69E9840];
  v16[0] = v17;
  v15[0] = @"com.apple.quicktime.displayname";
  v15[1] = @"com.apple.quicktime.title";
  v17[0] = @"com.apple.quicktime.displayname";
  v17[1] = @"com.apple.quicktime.title";
  v16[1] = @"com.apple.quicktime.keywords";
  v15[2] = @"com.apple.quicktime.keywords";
  v16[2] = @"com.apple.quicktime.description";
  v16[3] = @"com.apple.quicktime.publisher";
  v15[3] = @"com.apple.quicktime.description";
  v15[4] = @"com.apple.quicktime.information";
  v15[5] = @"com.apple.quicktime.publisher";
  v16[4] = @"com.apple.quicktime.performer";
  v16[5] = @"com.apple.quicktime.creationdate";
  v15[6] = @"com.apple.quicktime.performer";
  v15[7] = @"com.apple.quicktime.creationdate";
  v16[6] = @"com.apple.quicktime.content.identifier";
  v16[7] = @"com.apple.quicktime.location.ISO6709";
  v15[8] = @"com.apple.quicktime.content.identifier";
  v15[9] = @"com.apple.quicktime.location.ISO6709";
  v16[8] = @"com.apple.quicktime.copyright";
  v16[9] = @"com.apple.quicktime.album";
  v15[10] = @"com.apple.quicktime.copyright";
  v15[11] = @"com.apple.quicktime.album";
  v16[10] = @"com.apple.quicktime.author";
  v16[11] = @"com.apple.quicktime.artist";
  v15[12] = @"com.apple.quicktime.author";
  v15[13] = @"com.apple.quicktime.artist";
  v15[14] = @"com.apple.quicktime.originalartist";
  v15[15] = @"com.apple.quicktime.director";
  v15[16] = @"com.apple.quicktime.producer";
  v16[12] = @"com.apple.quicktime.artwork";
  v16[13] = @"com.apple.quicktime.make";
  v15[17] = @"com.apple.quicktime.artwork";
  v15[18] = @"com.apple.quicktime.make";
  v16[14] = @"com.apple.quicktime.model";
  v16[15] = @"com.apple.quicktime.software";
  v15[19] = @"com.apple.quicktime.model";
  v15[20] = @"com.apple.quicktime.software";
  v18[1] = @"subject";
  v16[16] = @"com.apple.quicktime.accessibility.description";
  v15[21] = @"com.apple.quicktime.accessibility.description";
  v14[2] = @"subject";
  v18[2] = @"description";
  v18[3] = @"publisher";
  v14[3] = @"description";
  v14[4] = @"description";
  v18[5] = @"creationDate";
  v14[5] = @"publisher";
  v14[7] = @"creationDate";
  v18[6] = @"identifier";
  v18[7] = @"location";
  v14[8] = @"identifier";
  v14[9] = @"location";
  v18[8] = @"copyrights";
  v18[9] = @"albumName";
  v14[10] = @"copyrights";
  v14[11] = @"albumName";
  v14[12] = @"author";
  v18[10] = @"author";
  v18[4] = @"contributor";
  v14[6] = @"contributor";
  v18[11] = @"artist";
  v14[13] = @"artist";
  v14[14] = @"contributor";
  v14[15] = @"contributor";
  v14[16] = @"contributor";
  v18[12] = @"artwork";
  v18[13] = @"make";
  v14[17] = @"artwork";
  v14[18] = @"make";
  v18[14] = @"model";
  v18[15] = @"software";
  v14[19] = @"model";
  v14[20] = @"software";
  v14[21] = @"accessibilityDescription";
  v18[16] = @"accessibilityDescription";
  v18[0] = @"title";
  v14[0] = @"title";
  v14[1] = @"title";
  values = 2;
  keys = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, MEMORY[0x1E695E9E8]);
  v4 = 0;
  v5 = MEMORY[0x1E695E9C0];
  do
  {
    v6 = v18[v4];
    Value = CFDictionaryGetValue(v2, v6);
    if (Value)
    {
      v8 = Value;
      v9 = v16[v4];
      v10 = v0;
    }

    else
    {
      v9 = &v16[v4];
      v10 = v0;
      v8 = 1;
    }

    v11 = CFArrayCreate(v10, v9, v8, v5);
    CFDictionaryAddValue(Mutable, v6, v11);
    CFRelease(v11);
    ++v4;
  }

  while (v4 != 17);
  qword_1EAF19318 = Mutable;
  gQuickTimeMetadataNativeKeyToCommonKeyDict = CFDictionaryCreate(v0, v15, v14, 22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFDictionaryRef FigID3MetadataSetUpCommonKeyMapping()
{
  keys[34] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"creator";
  keys[2] = @"subject";
  keys[3] = @"description";
  keys[4] = @"publisher";
  keys[5] = @"contributor";
  keys[6] = @"creationDate";
  keys[7] = @"type";
  keys[8] = @"format";
  keys[9] = @"identifier";
  keys[10] = @"source";
  keys[11] = @"language";
  keys[12] = @"copyrights";
  keys[13] = @"albumName";
  keys[14] = @"author";
  keys[15] = @"artist";
  keys[16] = @"artwork";
  keys[17] = @"title";
  keys[18] = @"creator";
  keys[19] = @"subject";
  keys[20] = @"description";
  keys[21] = @"publisher";
  keys[22] = @"contributor";
  keys[23] = @"creationDate";
  keys[24] = @"type";
  keys[25] = @"format";
  keys[26] = @"identifier";
  keys[27] = @"source";
  keys[28] = @"language";
  keys[29] = @"copyrights";
  keys[30] = @"albumName";
  keys[31] = @"author";
  keys[32] = @"artist";
  keys[33] = @"artwork";
  v0 = *MEMORY[0x1E695E480];
  qword_1EAF192F8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "2TIT", 17, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, "2TIT", keys, 34, 0, MEMORY[0x1E695E9E8]);
  gID3MetadataOSTypeKeyToCommonKeyDict = result;
  return result;
}

void FigVorbisCommentSetUpCommonKeyMapping()
{
  v18[13] = *MEMORY[0x1E69E9840];
  v18[0] = @"title";
  v18[1] = @"description";
  v18[2] = @"publisher";
  v18[3] = @"contributor";
  v18[4] = @"creationDate";
  v18[5] = @"identifier";
  v18[6] = @"language";
  v18[7] = @"location";
  v18[8] = @"copyrights";
  v18[9] = @"albumName";
  v18[10] = @"artist";
  v18[11] = @"artwork";
  v18[12] = @"software";
  v17[0] = @"TITLE";
  v17[1] = @"CHAPTERNAME";
  v16[0] = v17;
  v16[1] = @"DESCRIPTION";
  v16[2] = @"ORGANIZATION";
  v16[3] = @"INVOLVED_PEOPLE";
  v16[4] = @"DATE";
  v16[5] = @"ISRC";
  v16[6] = @"LANGUAGE";
  v16[7] = @"LOCATION";
  v16[8] = @"COPYRIGHT";
  v16[9] = @"ALBUM";
  v16[10] = @"ARTIST";
  v16[11] = @"METADATA_BLOCK_PICTURE";
  v16[12] = @"ENCODER";
  v14[13] = @"ENCODER";
  keys = @"title";
  v14[0] = @"TITLE";
  v14[1] = @"CHAPTERNAME";
  v14[2] = @"DESCRIPTION";
  v14[3] = @"ORGANIZATION";
  v14[4] = @"INVOLVED_PEOPLE";
  v14[5] = @"DATE";
  v14[6] = @"ISRC";
  v14[7] = @"LANGUAGE";
  v14[8] = @"LOCATION";
  v14[9] = @"COPYRIGHT";
  v14[10] = @"ALBUM";
  v14[11] = @"ARTIST";
  v14[12] = @"METADATA_BLOCK_PICTURE";
  v13[0] = @"title";
  v13[1] = @"title";
  v13[2] = @"description";
  v13[3] = @"publisher";
  v13[4] = @"contributor";
  v13[5] = @"creationDate";
  v13[6] = @"identifier";
  v13[7] = @"language";
  v13[8] = @"location";
  v13[9] = @"copyrights";
  v13[10] = @"albumName";
  v13[11] = @"artist";
  v13[12] = @"artwork";
  v13[13] = @"software";
  values = 2;
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, MEMORY[0x1E695E9E8]);
  v4 = 0;
  v5 = MEMORY[0x1E695E9C0];
  do
  {
    v6 = v18[v4];
    Value = CFDictionaryGetValue(v2, v6);
    if (Value)
    {
      v8 = Value;
      v9 = v16[v4];
      v10 = v0;
    }

    else
    {
      v9 = &v16[v4];
      v10 = v0;
      v8 = 1;
    }

    v11 = CFArrayCreate(v10, v9, v8, v5);
    CFDictionaryAddValue(Mutable, v6, v11);
    CFRelease(v11);
    ++v4;
  }

  while (v4 != 13);
  qword_1EAF19300 = Mutable;
  gVorbisCommentFieldStringKeyToCommonKeyDict = CFDictionaryCreate(v0, v14, v13, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFDictionaryRef FigAudioFileInfoDictionarySetUpCommonKeyMapping()
{
  keys[11] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"description";
  keys[2] = @"publisher";
  keys[3] = @"creationDate";
  keys[4] = @"identifier";
  keys[5] = @"copyrights";
  keys[6] = @"albumName";
  keys[7] = @"author";
  keys[8] = @"artist";
  keys[9] = @"artwork";
  keys[10] = @"software";
  values[0] = @"info-title";
  values[1] = @"info-description";
  values[2] = @"info-provider";
  values[3] = @"info-recorded date";
  values[4] = @"info-ISRC";
  values[5] = @"info-copyright";
  values[6] = @"info-album";
  values[7] = @"info-author";
  values[8] = @"info-artist";
  values[9] = @"aart";
  values[10] = @"info-encoding application";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  gAudioFileCommonKeyToInfoDictionaryKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, values, keys, 11, v1, v2);
  gAudioFileInfoDictionaryKeyToCommonKeyDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping()
{
  v44 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960220];
  v18 = *MEMORY[0x1E69602B0];
  v19 = v1;
  v2 = *MEMORY[0x1E6960208];
  v20 = *MEMORY[0x1E6960230];
  v21 = v2;
  v3 = *MEMORY[0x1E69601F0];
  v22 = *MEMORY[0x1E6960210];
  v23 = v3;
  v4 = *MEMORY[0x1E69628D8];
  v24 = *MEMORY[0x1E69628E0];
  v25 = v4;
  v5 = *MEMORY[0x1E6960270];
  v26 = *MEMORY[0x1E6960288];
  v27 = v5;
  v6 = *MEMORY[0x1E6960240];
  v28 = *MEMORY[0x1E6960278];
  v29 = v6;
  v7 = *MEMORY[0x1E6960268];
  v30 = *MEMORY[0x1E69601F8];
  v31 = v7;
  v8 = *MEMORY[0x1E69602A8];
  v32 = *MEMORY[0x1E6960280];
  v33 = v8;
  v9 = *MEMORY[0x1E6960298];
  v34 = *MEMORY[0x1E6960290];
  v35 = v9;
  v10 = *MEMORY[0x1E69601E8];
  v36 = *MEMORY[0x1E69602A0];
  v37 = v10;
  v11 = *MEMORY[0x1E6960250];
  v38 = *MEMORY[0x1E6960248];
  v39 = v11;
  v12 = *MEMORY[0x1E6960238];
  v40 = *MEMORY[0x1E6960228];
  v41 = v12;
  v13 = *MEMORY[0x1E6960200];
  v42 = *MEMORY[0x1E6960258];
  v43 = v13;
  v16[0] = values[0];
  v16[1] = v0;
  v16[2] = v18;
  v16[3] = v2;
  v16[4] = v22;
  v16[5] = v26;
  v16[6] = v5;
  v16[7] = v28;
  v16[8] = v32;
  v16[9] = v8;
  v16[10] = v34;
  v16[11] = v9;
  v16[12] = v36;
  v16[13] = v6;
  v16[14] = v30;
  v16[15] = v7;
  v16[16] = v10;
  v16[17] = v38;
  v16[18] = v11;
  v16[19] = v40;
  v16[20] = v12;
  v16[21] = v1;
  v16[22] = v20;
  v16[23] = v3;
  v16[24] = v24;
  v16[25] = v4;
  v16[26] = v42;
  v16[27] = v13;
  v14 = *MEMORY[0x1E695E480];
  gQTMetadataDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], &FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping_fromQTMetadataDataTypes, values, 28, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v14, v16, &FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping_toQTMetadataDataTypes, 28, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToQTMetadataDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpiTunesMetadataMapping()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960218];
  v9 = *MEMORY[0x1E69602B0];
  v10 = v1;
  v2 = *MEMORY[0x1E6960230];
  v11 = *MEMORY[0x1E6960220];
  v12 = v2;
  v13 = *MEMORY[0x1E69601F0];
  keys[0] = values[0];
  keys[1] = v0;
  v3 = *MEMORY[0x1E6960288];
  keys[2] = v9;
  keys[3] = v3;
  v4 = *MEMORY[0x1E6960278];
  keys[4] = *MEMORY[0x1E6960270];
  keys[5] = v4;
  keys[6] = *MEMORY[0x1E6960280];
  keys[7] = v1;
  keys[8] = v11;
  keys[9] = v2;
  keys[10] = v13;
  v5 = *MEMORY[0x1E695E480];
  giTunesDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], &FigCoreMediaDataTypesSetUpiTunesMetadataMapping_fromiTunesDataTypes, values, 7, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v5, keys, &FigCoreMediaDataTypesSetUpiTunesMetadataMapping_toiTunesDataTypes, 11, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToiTunesDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpUTIMapping()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69637D8];
  keys[0] = *MEMORY[0x1E6963798];
  keys[1] = v0;
  v1 = *MEMORY[0x1E6963860];
  v19 = *MEMORY[0x1E6963808];
  v20 = v1;
  v2 = *MEMORY[0x1E69638C8];
  v21 = *MEMORY[0x1E6963760];
  v22 = v2;
  v23 = *MEMORY[0x1E69638C0];
  v3 = *MEMORY[0x1E6960218];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v3;
  v4 = *MEMORY[0x1E6960230];
  v13 = *MEMORY[0x1E6960220];
  v14 = v4;
  v5 = *MEMORY[0x1E69602B8];
  v15 = *MEMORY[0x1E69601F0];
  v16 = v5;
  v17 = *MEMORY[0x1E69602B0];
  v11[0] = values[0];
  v11[1] = v5;
  v11[2] = v17;
  v11[3] = v3;
  v11[4] = v13;
  v11[5] = v4;
  v11[6] = v15;
  v10[0] = keys[0];
  v10[1] = v2;
  v10[2] = v23;
  v10[3] = v0;
  v10[4] = v19;
  v10[5] = v1;
  v10[6] = v21;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  gUTIDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v6, v11, v10, 7, v7, v8);
  gCoreMediaDataTypeToUTIDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpUserdataMapping()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  v2[0] = *MEMORY[0x1E6960260];
  v2[1] = v0;
  v2[2] = *MEMORY[0x1E69602B0];
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], v2, &FigCoreMediaDataTypesSetUpUserdataMapping_toUserDataTypes, 3, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToUserDataTypeDict = result;
  return result;
}

uint64_t FigMetadataReaderCreateForiTunesMetadataArray(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigMetadataReaderCreateForiTunesMetadataArray_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForiTunesMetadataArray_cold_1(&v8);
    return v8;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

__CFString *FigiTunesMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigiTunesMetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigiTunesMetadataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_iTunes;
    goto LABEL_5;
  }

  return 4294954512;
}

void metadataPropertiesCallback(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
      }
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (basic type)\n", a2);
  }
}

uint64_t FigiTunesMetadataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataGetKeyCount_cold_1();
    return 0;
  }

  v4 = DerivedStorage;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  if (a2)
  {
    if (CFEqual(a2, @"itsk"))
    {
      if (*(v4 + 40))
      {
        v5 = 0;
        v6 = *(v4 + 32);
        return v6 + v5;
      }

      v7 = 2;
      goto LABEL_15;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      FigiTunesMetadataGetKeyCount_cold_2();
      return 0;
    }

    if (!*(v4 + 56))
    {
      v8 = 0;
      v7 = 1;
      goto LABEL_16;
    }

    v6 = 0;
LABEL_12:
    v5 = *(v4 + 48);
    return v6 + v5;
  }

  if (*(DerivedStorage + 40) && *(DerivedStorage + 56))
  {
    v6 = *(DerivedStorage + 32);
    goto LABEL_12;
  }

  v7 = 0;
LABEL_15:
  v8 = 1;
LABEL_16:
  if (*(v4 + 24) < 1)
  {
    v5 = 0;
    v6 = 0;
    return v6 + v5;
  }

  FigiTunesMetadataGetItemListAtomStream(v4, v13, 0, v12);
  if (!v9)
  {
    v5 = 0;
    v6 = 0;
    while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      v6 += v8;
      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom)
      {
        if (Atom != -12890)
        {
          return 0;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            *(v4 + 48) = 0;
            *(v4 + 56) = 1;
            return v6 + v5;
          }

          *(v4 + 32) = v6;
        }

        else
        {
          *(v4 + 32) = v6;
          *(v4 + 48) = 0;
          *(v4 + 56) = 1;
        }

        *(v4 + 40) = 1;
        return v6 + v5;
      }
    }
  }

  return 0;
}

void ArrayiTunesDataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayiTunesDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)iTunesMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayiTunesDataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_iTunes;
    goto LABEL_5;
  }

  return 4294954512;
}

uint64_t *ArrayiTunesDataHasKey(uint64_t a1, __CFString *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    ArrayiTunesDataHasKey_cold_7();
    return DerivedStorage;
  }

  if (!a3)
  {
    ArrayiTunesDataHasKey_cold_6();
    return 0;
  }

  if (!a2)
  {
    ArrayiTunesDataHasKey_cold_5();
    return 0;
  }

  v8 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (CFEqual(a2, @"comn"))
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CFStringGetTypeID())
    {
      valuePtr = CFDictionaryGetValue(v8, a3);
      if (valuePtr)
      {
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        a2 = @"itlk";
        goto LABEL_19;
      }
    }

    else
    {
      ArrayiTunesDataHasKey_cold_1();
    }

    return 0;
  }

  if (CFEqual(a2, @"itsk"))
  {
    v11 = CFGetTypeID(a3);
    if (v11 == CFStringGetTypeID())
    {
      if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
      {
        ArrayiTunesDataHasKey_cold_4();
        return 0;
      }
    }

    else
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFNumberGetTypeID())
      {
        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954695, "<<<< FMDR_iTunes >>>>", 1890, v3);
        return 0;
      }

      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        ArrayiTunesDataHasKey_cold_2();
        return 0;
      }
    }

    if (valuePtr == 757935405)
    {
      ArrayiTunesDataHasKey_cold_3();
      return 0;
    }

    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"itlk"))
    {
      v15 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954690, "<<<< FMDR_iTunes >>>>", 1901, v3);
      return 0;
    }

    v12 = CFRetain(a3);
  }

  v10 = v12;
LABEL_19:
  DerivedStorage = FigMetadataArrayHasKey(*DerivedStorage, v10, a2, 0, 0, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  return DerivedStorage;
}

CFIndex ArrayiTunesDataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayiTunesDataGetKeyCount_cold_1();
    return 0;
  }

  v4 = DerivedStorage;
  if (!a2)
  {
    if (!*(DerivedStorage + 16) || !*(DerivedStorage + 32))
    {
LABEL_9:
      KeyCount = FigMetadataArrayGetKeyCount(*v4, @"itsk");
      *(v4 + 8) = KeyCount;
      *(v4 + 16) = 1;
      if (a2)
      {
        v5 = 0;
        return KeyCount + v5;
      }

LABEL_18:
      v5 = FigMetadataArrayGetKeyCount(*v4, @"itlk");
      *(v4 + 24) = v5;
      *(v4 + 32) = 1;
      return KeyCount + v5;
    }

    KeyCount = *(DerivedStorage + 8);
LABEL_14:
    v5 = *(v4 + 24);
    return KeyCount + v5;
  }

  if (!CFEqual(a2, @"itsk"))
  {
    if (CFEqual(a2, @"itlk"))
    {
      if (!*(v4 + 32))
      {
        KeyCount = 0;
        goto LABEL_18;
      }

      KeyCount = 0;
      goto LABEL_14;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    return 0;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = 0;
  KeyCount = *(v4 + 8);
  return KeyCount + v5;
}

uint64_t ArrayiTunesDataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a5)
    {
      v9 = DerivedStorage;
      if (!a2 || CFEqual(a2, @"itsk") || CFEqual(a2, @"itlk"))
      {
        v10 = *v9;

        return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
      }

      else
      {
        ArrayiTunesDataCopyKeyAtIndex_cold_1(&v12);
        return v12;
      }
    }

    else
    {
      ArrayiTunesDataCopyKeyAtIndex_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    ArrayiTunesDataCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }
}

const __CFArray **ArrayiTunesDataGetItemCount(uint64_t a1, __CFString *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    ArrayiTunesDataGetItemCount_cold_8();
    return DerivedStorage;
  }

  if (a2)
  {
    v8 = CommonKeyToShortKeyMapping;
    valuePtr = 0;
    if (CFEqual(a2, @"comn"))
    {
      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFStringGetTypeID())
        {
          valuePtr = CFDictionaryGetValue(v8, a3);
          if (valuePtr)
          {
            v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
            a2 = @"itsk";
            goto LABEL_26;
          }
        }

        else
        {
          ArrayiTunesDataGetItemCount_cold_1();
        }
      }

      else
      {
        ArrayiTunesDataGetItemCount_cold_2();
      }

      return 0;
    }

    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
          {
            ArrayiTunesDataGetItemCount_cold_5();
            return 0;
          }
        }

        else
        {
          v16 = CFGetTypeID(a3);
          if (v16 != CFNumberGetTypeID())
          {
            emitter = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954695, "<<<< FMDR_iTunes >>>>", 2031, v3);
            return 0;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
            ArrayiTunesDataGetItemCount_cold_3();
            return 0;
          }
        }

        if (valuePtr == 757935405)
        {
          ArrayiTunesDataGetItemCount_cold_4();
          return 0;
        }

        v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_25:
        v10 = v15;
LABEL_26:
        DerivedStorage = FigMetadataArrayGetItemCount(*DerivedStorage, v10, a2, 0, 0, 0);
        if (v10)
        {
          CFRelease(v10);
        }

        return DerivedStorage;
      }
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
        v17 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954690, "<<<< FMDR_iTunes >>>>", 2046, v3);
        return 0;
      }

      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 != CFStringGetTypeID())
        {
          ArrayiTunesDataGetItemCount_cold_6();
          return 0;
        }

        v15 = CFRetain(a3);
        goto LABEL_25;
      }
    }
  }

  else if (a3)
  {
    ArrayiTunesDataGetItemCount_cold_7();
    return 0;
  }

  v11 = *DerivedStorage;

  return FigMetadataArrayGetItemCount(v11, 0, a2, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  return FigAtomStreamInitWithParent();
}

uint64_t OUTLINED_FUNCTION_7_34(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __CFDictionary **a9)
{

  return FigMetadataArrayCopyItemWithKeyAndIndex(a1, a2, v10, v11, 0, 0, 0, v9, a9);
}

CFStringRef OUTLINED_FUNCTION_9_29(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 0);
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

double fhqCF_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void fhqCF_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {

    dispatch_release(v7);
  }
}

CFStringRef fhqCF_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  Rate = CMTimebaseGetRate(*(a1 + 32));
  return CFStringCreateWithFormat(v2, 0, @"FigHapticQueue:%p{engine=%@, rate=%.1f}", a1, v3, *&Rate);
}

uint64_t __FigHapticQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticQueueGetTypeID_cfTypeID = result;
  return result;
}

uint64_t FigHapticQueueCreate(const __CFAllocator *a1, const void *a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHapticQueueCreate_cold_4(v23);
    return v23[0];
  }

  if (FigHapticQueueGetTypeID_nonce != -1)
  {
    FigHapticQueueCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticQueueCreate_cold_3(v23);
    return v23[0];
  }

  v7 = Instance;
  *(Instance + 24) = CFRetain(a2);
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1065353216;
  *(v7 + 88) = 0;
  if (dword_1EAF17040)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = CMBufferQueueCreateWithHandlers(a1, 0, &FigHapticQueueCreate_hapticPlayerQueueHandlers, (v7 + 64));
  if (v9)
  {
    v17 = v9;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v7 + 80) = Mutable;
  if (!Mutable)
  {
    FigHapticQueueCreate_cold_2(v23);
    v17 = v23[0];
    goto LABEL_20;
  }

  v11 = dispatch_queue_create("com.apple.coremedia.hapticsqueue", 0);
  *(v7 + 16) = v11;
  if (!v11 || (v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11), (*(v7 + 72) = v12) == 0) || (v13 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
  {
    v17 = 4294949434;
LABEL_20:
    CFRelease(v7);
    return v17;
  }

  v14 = v13;
  v15 = *(v7 + 72);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigHapticQueueCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_23_0;
  handler[4] = v14;
  dispatch_source_set_event_handler(v15, handler);
  v16 = *(v7 + 72);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __FigHapticQueueCreate_block_invoke_2;
  v19[3] = &__block_descriptor_tmp_24_0;
  v19[4] = v14;
  dispatch_source_set_cancel_handler(v16, v19);
  dispatch_source_set_timer(*(v7 + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v7 + 72));
  v17 = 0;
  *a3 = v7;
  return v17;
}

double gFigHapticQueueTrace_block_invoke@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  FigHapticPlayerGetOutputTimeRange(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double gFigHapticQueueTrace_block_invoke_2@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  FigHapticPlayerGetOutputTimeRange(a1, v4);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t gFigHapticQueueTrace_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigHapticPlayerGetOutputTimeRange(a2, &v7);
  time1 = v7;
  FigHapticPlayerGetOutputTimeRange(a3, &v5);
  time2 = v5;
  return CMTimeCompare(&time1, &time2);
}

void __FigHapticQueueCreate_block_invoke(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    fhq_scheduleWaitingHapticPlayers(v1);

    CFRelease(v2);
  }
}

uint64_t FigHapticQueueSetTimebase(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigHapticQueueSetTimebase_block_invoke;
  v4[3] = &__block_descriptor_tmp_25_1;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

void __FigHapticQueueSetTimebase_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigHapticQueueSetActiveChannelIndex(uint64_t a1, CFNumberRef number)
{
  valuePtr[22] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  if (dword_1EAF17040 >= 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberCFIndexType, valuePtr);
    v5 = valuePtr[0];
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 48) = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __FigHapticQueueSetActiveChannelIndex_block_invoke;
  v7[3] = &__block_descriptor_tmp_27_0;
  v7[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v7);
}

uint64_t FigHapticQueueStart(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueueStart_block_invoke;
  block[3] = &unk_1E7485AF0;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueuePause(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueuePause_block_invoke;
  block[3] = &unk_1E7485B18;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueueStop(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueueStop_block_invoke;
  block[3] = &unk_1E7485B40;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueueEnqueueSamples(uint64_t a1, CMSampleBufferRef sbuf)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigHapticQueueEnqueueSamples_block_invoke;
  handler[3] = &__block_descriptor_tmp_37;
  handler[4] = a1;
  return CMSampleBufferCallBlockForEachSample(sbuf, handler);
}

uint64_t __FigHapticQueueEnqueueSamples_block_invoke_2(void *a1)
{
  result = fhq_scheduleHapticPlayer(a1[5], a1[6], 0);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t fhq_applyBlockToSubmittedPlayers(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  FigCFArrayApplyBlock();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __fhq_applyBlockToSubmittedPlayers_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = result;
  }

  return result;
}

void fhq_rescheduleWaitingPlayersAfterTime(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v5 = *a2;
    CMTimeConvertScale(&v6, &v5, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a2 = v6;
    v4 = dispatch_time(0, *a2);
  }

  else
  {
    v4 = -1;
  }

  dispatch_source_set_timer(*(a1 + 72), v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t __fhq_pauseSubmittedPlayers_block_invoke(uint64_t a1, const void *a2)
{
  result = FigHapticPlayerPauseNow(a2);
  if (!result)
  {
    v5 = *(*(a1 + 32) + 64);

    return CMBufferQueueEnqueue(v5, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_9_30(__int128 *a1@<X8>, __int128 a2, uint64_t a3)
{
  a2 = *a1;
  a3 = *(a1 + 2);

  fhq_rescheduleWaitingPlayersAfterTime(v3, &a2);
}

BOOL OUTLINED_FUNCTION_19_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

double FigMetadataReaderCreateForQuickTimeMetadata(uint64_t a1, const void *a2, unint64_t a3, CFTypeRef *a4)
{
  if (!a2)
  {
    v11 = qword_1EAF17058;
    v12 = v4;
    v13 = 4294954696;
    v14 = 2419;
LABEL_11:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<<< FigMetadataReader_mdta >>>>", v14, v12);
  }

  if (!a4)
  {
    v11 = qword_1EAF17058;
    v12 = v4;
    v13 = 4294954696;
    v14 = 2422;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = qword_1EAF17058;
    v12 = v4;
    v13 = 4294954695;
    v14 = 2425;
    goto LABEL_11;
  }

  FigMetadataReaderGetClassID();
  if (CMDerivedObjectCreate())
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[2] = CFRetain(a2);
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = a3;
  v21 = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v10 = CMBaseObjectGetDerivedStorage();
  if (*(v10 + 24) || *(v10 + 32) || FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return result;
  }

  v15 = 0;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      CurrentAtomGlobalOffset = CurrentAtomTypeAndDataLength;
      goto LABEL_29;
    }

    if (v21 == 1801812339 || v21 == 1768715124)
    {
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    else
    {
      if (v21 != 1751411826)
      {
        goto LABEL_25;
      }

      CurrentAtomGlobalOffset = FigMetadataValidateHandlerType(v19, v20);
      if (!CurrentAtomGlobalOffset)
      {
        v15 = 1;
      }
    }

    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_29;
    }

LABEL_25:
    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890)
  {
    CurrentAtomGlobalOffset = 0;
  }

  else
  {
    CurrentAtomGlobalOffset = Atom;
  }

LABEL_29:
  if (v15)
  {
    if (!CurrentAtomGlobalOffset)
    {
      *a4 = 0;
    }
  }

  return result;
}

uint64_t FigMetadataReaderCreateForQuickTimeMetadataArray(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigMetadataReaderCreateForQuickTimeMetadataArray_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForQuickTimeMetadataArray_cold_1(&v8);
    return v8;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void FigQuickTimeMetadataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *FigQuickTimeMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeMetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_0, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigQuickTimeMetadataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    v7 = &kFigMetadataFormat_QuickTimeMetadata;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"containerByteStream"))
  {
    v7 = (DerivedStorage + 16);
    goto LABEL_7;
  }

  return 4294954512;
}

void metadataPropertiesCallback_0(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFDataGetTypeID() && (v8 = *MEMORY[0x1E695E480], BytePtr = CFDataGetBytePtr(a2), Length = CFDataGetLength(a2), (v11 = CFStringCreateWithBytes(v8, BytePtr, Length, 0, 0)) != 0))
      {
        v12 = v11;
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", v11);

        CFRelease(v12);
      }

      else
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (well-known)\n", a2);
  }

  else if (CFEqual(a1, @"keyspace"))
  {
    CFStringAppendFormat(a3, 0, @"     Keyspace = %@\n", a2);
  }
}

uint64_t FigQuickTimeMetadataCopyValue(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (!a1)
  {
    FigQuickTimeMetadataCopyValue_cold_5(&cf);
LABEL_62:
    v33 = 0;
    v32 = cf;
    goto LABEL_41;
  }

  v8 = a3;
  if (!a3)
  {
    FigQuickTimeMetadataCopyValue_cold_4(&cf);
    goto LABEL_62;
  }

  if (!theString)
  {
    FigQuickTimeMetadataCopyValue_cold_3(&cf);
    goto LABEL_62;
  }

  if (!a6)
  {
    FigQuickTimeMetadataCopyValue_cold_2(&cf);
    goto LABEL_62;
  }

  v13 = a1;
  if (CFStringGetLength(theString) != 4)
  {
    FigQuickTimeMetadataCopyValue_cold_1(&cf);
    goto LABEL_62;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v45 = v14(v13, theString, v8), v45 < 1))
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_41;
  }

  v37 = a6;
  v38 = a7;
  v15 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *MEMORY[0x1E695E6D0];
  key = *MEMORY[0x1E695E6F0];
  v39 = a5;
  v16 = 1;
  v40 = v13;
  while (1)
  {
    v46 = 0;
    cf = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      v32 = -12782;
      goto LABEL_52;
    }

    v18 = v17(v13, theString, v8, v16 - 1, a5, &cf, &v46);
    if (v18)
    {
      break;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      v19 = v15;
      v20 = v8;
      v21 = a4;
      v22 = v46;
      v23 = CFLocaleCopyCurrent();
      Value = CFLocaleGetValue(v23, key);
      v25 = CFLocaleGetValue(v23, v43);
      if (v22 && (v26 = v25, (v27 = CFDictionaryGetValue(v22, @"locale")) != 0))
      {
        v28 = v27;
        v29 = CFLocaleGetValue(v27, key);
        v30 = 0;
        if (v29 && Value)
        {
          v30 = CFStringCompare(v29, Value, 0) == kCFCompareEqualTo;
        }

        v31 = CFLocaleGetValue(v28, v43);
        if (v31)
        {
          v8 = v20;
          v15 = v19;
          if (v26 && CFStringCompare(v31, v26, 0) == kCFCompareEqualTo)
          {
            ++v30;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v30 = 0;
      }

      v8 = v20;
      v15 = v19;
LABEL_25:
      v13 = v40;
      a4 = v21;
      if (v23)
      {
        CFRelease(v23);
      }

      a5 = v39;
      if (v30 >= v15)
      {
        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        v15 = v30 + 1;
        v41 = CFRetain(cf);
        v42 = CFRetain(v46);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v46)
    {
      CFRelease(v46);
    }

    v32 = 0;
    if (v16 < v45)
    {
      ++v16;
      if (v15 < 3)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  v32 = v18;
LABEL_52:
  v33 = v41 != 0;
  if (v41 && (*v37 = v41, v38))
  {
    *v38 = v42;
    v33 = 1;
  }

  else if (v42)
  {
    CFRelease(v42);
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a4)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t metadataCreateNativeKeySpaceAndKeys(const __CFString *a1, void *a2, void *a3, void *a4)
{
  cf = 0;
  values = a2;
  if (!a1)
  {
    v13 = *MEMORY[0x1E695E480];
    if (a2)
    {
      v14 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        metadataCreateNativeKeySpaceAndKeys_cold_5(&v25);
        return v25;
      }
    }

    else
    {
      v14 = CFArrayCreate(v13, MEMORY[0x1E695E738], 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        metadataCreateNativeKeySpaceAndKeys_cold_6(&v25);
        return v25;
      }
    }

LABEL_20:
    v12 = v14;
    v11 = 0;
    goto LABEL_21;
  }

  if (CFStringGetLength(a1) != 4)
  {
    metadataCreateNativeKeySpaceAndKeys_cold_1(&v25);
    return v25;
  }

  if (!a2)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], MEMORY[0x1E695E738], 1, MEMORY[0x1E695E9C0]);
    if (!v14)
    {
      metadataCreateNativeKeySpaceAndKeys_cold_4(&v25);
      return v25;
    }

    goto LABEL_20;
  }

  if (!CFEqual(a1, @"comn"))
  {
    v15 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (v15)
    {
      v12 = v15;
      v11 = CFRetain(a1);
      v16 = CFEqual(a1, @"mdta");
      v17 = CFGetTypeID(values);
      TypeID = CFStringGetTypeID();
      if (v16)
      {
        if (v17 == TypeID)
        {
          goto LABEL_21;
        }
      }

      else if (v17 == TypeID || v17 == CFDataGetTypeID())
      {
        goto LABEL_21;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, cf, values);
      v9 = v20;
      CFRelease(v12);
      if (!v11)
      {
        return v9;
      }

      v10 = v11;
LABEL_34:
      CFRelease(v10);
      return v9;
    }

    metadataCreateNativeKeySpaceAndKeys_cold_3(&v25);
    return v25;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID())
  {
    metadataCreateNativeKeySpaceAndKeys_cold_2(&v25);
    return v25;
  }

  v9 = FigQuickTimeMetadataCopyNativeKeysFromCommonKey(a2, &cf);
  v10 = cf;
  if (v9)
  {
    goto LABEL_33;
  }

  if (!cf)
  {
    cf = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    if (!cf)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0, values);
      v9 = v21;
      v10 = cf;
LABEL_33:
      if (!v10)
      {
        return v9;
      }

      goto LABEL_34;
    }
  }

  v11 = CFRetain(@"mdta");
  v12 = cf;
LABEL_21:
  v9 = 0;
  *a4 = v12;
  *a3 = v11;
  return v9;
}

uint64_t FigQuickTimeMetadataCopyKeyPosSet(const void *a1, const __CFString *a2, const __CFString *a3, __CFSet **a4)
{
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigQuickTimeMetadataCopyKeyPosSet_cold_3(v35);
    return LODWORD(v35[0]);
  }

  v9 = DerivedStorage;
  if (a2)
  {
    v33 = FigQuickTimeMetadataStringToOSType(a2);
  }

  else
  {
    v33 = 0;
  }

  memset(v35, 0, sizeof(v35));
  if (a3)
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a3);
      v12 = Length;
      if (Length >= 1)
      {
        BytePtr = malloc_type_malloc(Length, 0x100004077774924uLL);
        if (!BytePtr)
        {
          FigQuickTimeMetadataCopyKeyPosSet_cold_2(v36);
          v16 = 0;
          v18 = 0;
          goto LABEL_60;
        }

        v37.location = 0;
        v37.length = v12;
        if (v12 != CFStringGetBytes(a3, v37, 0x8000100u, 0, 0, BytePtr, v12, 0))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", usedBufLen, v29, v30);
          v15 = v14;
          v16 = 0;
          Mutable = 0;
          v18 = 1;
          goto LABEL_11;
        }

        v18 = 1;
LABEL_20:
        v16 = malloc_type_malloc(v12, 0x100004077774924uLL);
        if (v16)
        {
          goto LABEL_21;
        }

        FigQuickTimeMetadataCopyKeyPosSet_cold_1(v36);
LABEL_60:
        Mutable = 0;
        v15 = v36[0];
LABEL_11:
        if (!v15)
        {
          *a4 = Mutable;
          goto LABEL_13;
        }

LABEL_47:
        if (!v18)
        {
          goto LABEL_50;
        }

LABEL_48:
        if (BytePtr)
        {
          free(BytePtr);
        }

        goto LABEL_50;
      }

      BytePtr = 0;
      v16 = 0;
      v18 = 0;
    }

    else
    {
      v12 = CFDataGetLength(a3);
      BytePtr = CFDataGetBytePtr(a3);
      v18 = 0;
      if (v12 >= 1)
      {
        goto LABEL_20;
      }

      v16 = 0;
    }
  }

  else
  {
    BytePtr = 0;
    v16 = 0;
    v18 = 0;
    v12 = 0;
  }

LABEL_21:
  inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v9, v35, &v34 + 1);
  if (inited)
  {
    v15 = inited;
LABEL_13:
    Mutable = 0;
    if (!v18)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  cf = a1;
  v31 = a4;
  if (!HIDWORD(v34))
  {
    Mutable = 0;
LABEL_46:
    v15 = 4294954692;
    goto LABEL_47;
  }

  v20 = 0;
  Mutable = 0;
  if (a2)
  {
    v21 = a3 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      break;
    }

    if (a3)
    {
      if (v12)
      {
        goto LABEL_38;
      }
    }

    else if (a2 && v34 != v33)
    {
      goto LABEL_38;
    }

    if (!Mutable)
    {
      v24 = CFGetAllocator(cf);
      Mutable = CFSetCreateMutable(v24, 0, 0);
    }

    CFSetAddValue(Mutable, (v20 + 1));
    if (v22)
    {
LABEL_43:
      v15 = 0;
LABEL_44:
      if (v15)
      {
        a4 = v31;
        goto LABEL_11;
      }

      a4 = v31;
      if (Mutable)
      {
        goto LABEL_11;
      }

      goto LABEL_46;
    }

LABEL_38:
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom == -12890)
    {
      goto LABEL_43;
    }

    v15 = Atom;
    if (!Atom && v20++ < HIDWORD(v34))
    {
      continue;
    }

    goto LABEL_44;
  }

  v15 = CurrentAtomTypeAndDataLength;
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_50:
  if (v16)
  {
    free(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t FigQuickTimeMetadataStringToOSType(const __CFString *a1)
{
  *buffer = 0;
  v4.length = CFStringGetLength(a1);
  v4.location = 0;
  CFStringGetBytes(a1, v4, 0, 0, 0, buffer, 4, 0);
  return bswap32(*buffer);
}

CFStringRef FigQuickTimeMetadataCreateExtendedLanguageTag(CFAllocatorRef alloc, unsigned int a2, unsigned int a3)
{
  CStringPtrAndBufferToFree = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a3 >= 0x100)
  {
    ISO639_1Mapping = FigMetadataGetISO639_1Mapping();
    value = 0;
    if (!CFDictionaryGetValueIfPresent(ISO639_1Mapping, a3, &value))
    {
      ISO639_1NonCanonicalMapping = FigMetadataGetISO639_1NonCanonicalMapping();
      if (!CFDictionaryGetValueIfPresent(ISO639_1NonCanonicalMapping, a3, &value))
      {
        LOBYTE(v18) = (a3 >> 10) | 0x60;
        BYTE1(v18) = (a3 >> 5) & 0x1F | 0x60;
        BYTE2(v18) = a3 & 0x1F | 0x60;
      }
    }

    CStringPtrAndBufferToFree = value;
    if (value)
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        FigQuickTimeMetadataCreateExtendedLanguageTag_cold_1(&value);
LABEL_17:
        v12 = 0;
        goto LABEL_18;
      }
    }
  }

  if (a2 >= 0x100)
  {
    v16 = __rev16(a2);
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v9 = &v18;
  if (CStringPtrAndBufferToFree)
  {
    v9 = CStringPtrAndBufferToFree;
  }

  v10 = "-";
  v11 = "";
  if (a2)
  {
    v11 = &v16;
  }

  else
  {
    v10 = "";
  }

  v12 = CFStringCreateWithFormat(alloc, 0, @"%s%s%s", v9, v10, v11);
LABEL_18:
  free(v15);
  return v12;
}

void ArrayQTMetadataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayQTMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)QuickTimeMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_0, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayQTMetadataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_QuickTimeMetadata;
    goto LABEL_5;
  }

  return 4294954512;
}

const __CFString *ArrayQTMetadataHasKey(uint64_t a1, const __CFString *a2, void *a3)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    ArrayQTMetadataHasKey_cold_3(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, cf, theArray, SHIDWORD(theArray), v33);
LABEL_20:
    a2 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    ArrayQTMetadataHasKey_cold_2(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, cf, theArray, SHIDWORD(theArray), v33);
    goto LABEL_14;
  }

  v13 = DerivedStorage;
  Length = CFStringGetLength(a2);
  if (Length != 4)
  {
    ArrayQTMetadataHasKey_cold_1(Length, v15, v16, v17, v18, v19, v20, v21, cf, theArray, SHIDWORD(theArray), v33);
    goto LABEL_20;
  }

  v22 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
  v23 = theArray;
  if (!v22 && CFArrayGetCount(theArray) && (Count = CFArrayGetCount(v23)) != 0)
  {
    v25 = Count;
    v26 = 0;
    v27 = cf;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v26);
      HasKey = FigMetadataArrayHasKey(*v13, ValueAtIndex, v27, 0, 0, 0);
      if (HasKey)
      {
        break;
      }

      if (v25 == ++v26)
      {
        goto LABEL_10;
      }
    }

    a2 = HasKey;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    a2 = 0;
    if (v23)
    {
LABEL_13:
      CFRelease(v23);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

CFIndex ArrayQTMetadataGetKeyCount(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Length = CFStringGetLength(a2);
    if (Length == 4)
    {
      v12 = CFEqual(a2, @"comn");
      if (!v12)
      {
        goto LABEL_4;
      }

      ArrayQTMetadataGetKeyCount_cold_2(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, SHIDWORD(v23), vars0);
    }

    else
    {
      ArrayQTMetadataGetKeyCount_cold_1(Length, v5, v6, v7, v8, v9, v10, v11, v22, v23, SHIDWORD(v23), vars0);
    }

    return 0;
  }

LABEL_4:
  v20 = *DerivedStorage;

  return FigMetadataArrayGetKeyCount(v20, a2);
}

uint64_t ArrayQTMetadataCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (CFStringGetLength(a2) != 4)
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_1(&v12);
    return v12;
  }

  if (CFEqual(a2, @"comn"))
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_2(&v13);
    return v13;
  }

  else
  {
LABEL_5:
    v10 = *v9;

    return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
  }
}

uint64_t ArrayQTMetadataCopyItemWithKeyAndIndex(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, __CFDictionary **a7)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a6 | a7)
  {
    v13 = DerivedStorage;
    v14 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
    v15 = theArray;
    if (v14)
    {
      v23 = v14;
    }

    else if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(v15);
      if (Count)
      {
        v17 = Count;
        v18 = 0;
        v19 = *MEMORY[0x1E695E738];
        v20 = cf;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
          if (CFEqual(ValueAtIndex, v19))
          {
            v22 = 0;
          }

          else
          {
            v22 = ValueAtIndex;
          }

          v23 = FigMetadataArrayCopyItemWithKeyAndIndex(*v13, v22, a4, v20, 0, 0, 0, a6, a7);
          if (!v23)
          {
            break;
          }

          ++v18;
        }

        while (v17 != v18);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 4294954689;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    ArrayQTMetadataCopyItemWithKeyAndIndex_cold_1(&v27);
    v23 = v27;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  v2 = *(v0 - 216);

  return CMBlockBufferGetDataPointer(v2, 0, 0, 0, (v0 - 224));
}

uint64_t OUTLINED_FUNCTION_14_23(uint64_t a1, uint64_t a2, ...)
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  v3 = (bswap32(*v0) >> 16);

  return MEMORY[0x1EEDBC680](v1, v3);
}

uint64_t FigAssetDownloadCoordinatorMarkAssetForInteractivity(uint64_t a1)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v4 = 0;
  if (a1)
  {
    v3[0] = qword_1ED4CA980;
    v3[1] = a1;
    dispatch_sync_f(*(qword_1ED4CA980 + 8), v3, sadc_markAssetForInteractivityDispatch);
    return v4;
  }

  else
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_2(&v5);
    return v5;
  }
}

void sadc_markAssetForInteractivityDispatch(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  cf = 0;
  value = 0;
  sadc_copyAssetWeakReference(v2, v3, &value);
  if (v4)
  {
    goto LABEL_9;
  }

  CFBagAddValue(*(v2 + 56), value);
  v5.n128_f64[0] = sadc_copyAssetDownloaderForAsset(v2, v3, &cf);
  v7 = v6;
  v8 = cf;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = cf == 0;
  }

  if (!v9)
  {
    if (MEMORY[0x19A8CCA80](*(v2 + 56), value, v5) != 1)
    {
      v7 = 0;
      goto LABEL_12;
    }

    v10 = cf;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v11)
    {
      v7 = -12782;
      goto LABEL_12;
    }

    v4 = v11(v10);
LABEL_9:
    v7 = v4;
LABEL_12:
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (value)
  {
    CFRelease(value);
  }

  *(a1 + 4) = v7;
}

uint64_t FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(const void *a1)
{
  if (_MergedGlobals_52 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_3(&v7);
    return v7;
  }

  FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = qword_1ED4CA980;
  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x106004025F8D3E0uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = v2;
    v3[1] = CFRetain(a1);
    dispatch_async_f(*(v2 + 8), v4, sadc_unmarkAssetForInteractivityDispatch);
    return 0;
  }

  else
  {
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_2(&v6);
    return v6;
  }
}

void sadc_unmarkAssetForInteractivityDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  cf = 0;
  value = 0;
  sadc_copyAssetWeakReference(v3, v2, &value);
  if (v4)
  {
    goto LABEL_7;
  }

  CFBagRemoveValue(*(v3 + 56), value);
  sadc_copyAssetDownloaderForAsset(v3, v2, &cf);
  v6 = v5;
  v7 = cf;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (!v8)
  {
    sadc_unmarkAssetForInteractivityDispatch_cold_1((v3 + 56), &value, &cf);
LABEL_7:
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (value)
  {
    CFRelease(value);
  }

  FigDeferCFRelease();
  free(a1);
}

uint64_t FigAssetDownloadCoordinatorRegisterAssetForDownloader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v14 = 0;
  if (!a1)
  {
    FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_3(&v15);
    return v15;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_2(&v15);
    return v15;
  }

  v13[0] = qword_1ED4CA980;
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  dispatch_sync_f(*(qword_1ED4CA980 + 8), v13, sadc_registerAssetForDownloaderDispatch);
  result = HIDWORD(v14);
  if (a6)
  {
    if (!HIDWORD(v14))
    {
      *a6 = v14;
    }
  }

  return result;
}

uint64_t sadc_getWeakAssetKey(uint64_t a1, void *a2)
{
  valuePtr = 0;
  number = 0;
  if (a2)
  {
    FigAssetGetCMBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || v5(v4, @"assetProperty_DownloadToken", *MEMORY[0x1E695E480], &number))
    {
      sadc_getWeakAssetKey_cold_2(&v10);
    }

    else
    {
      CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
      if (valuePtr)
      {
        v6 = 0;
        *a2 = valuePtr;
        goto LABEL_6;
      }

      sadc_getWeakAssetKey_cold_1(&v10);
    }
  }

  else
  {
    sadc_getWeakAssetKey_cold_3(&v10);
  }

  v6 = v10;
LABEL_6:
  if (number)
  {
    CFRelease(number);
  }

  return v6;
}

uint64_t sadc_copyDestinationURLForAssetKey(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a3 = Value;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    sadc_copyDestinationURLForAssetKey_cold_1(&v8);
    return v8;
  }
}

uint64_t FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken(const void *a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = qword_1ED4CA980;

  return sadc_copyDestinationURLForAssetKey(v4, a1, a2);
}

uint64_t FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders(uint64_t a1)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v2 = qword_1ED4CA980;
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (v3)
  {
    *v3 = v2;
    v3[1] = a1;
    dispatch_async_f(*(v2 + 8), v3, sadc_unregisterAssetWithDownloadTokenForAllDownloadersDispatch);
    return 0;
  }

  else
  {
    FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders_cold_2(&v5);
    return v5;
  }
}

void sadc_unregisterAssetWithDownloadTokenForAllDownloadersDispatch(CFDictionaryRef **a1)
{
  v3 = *a1;
  v2 = a1[1];
  FigSimpleMutexLock();
  v4 = CFDictionaryContainsKey(v3[3], v2);
  FigSimpleMutexUnlock();
  if (v4)
  {
    if (CFDictionaryGetValue(v3[5], v2))
    {
      FigSimpleMutexLock();
      CFDictionaryGetValue(v3[3], v2);
      FigSimpleMutexUnlock();
      FigFileDeleteDirectory();
    }

    FigSimpleMutexLock();
    CFDictionaryRemoveValue(v3[3], v2);
    FigSimpleMutexUnlock();
    CFDictionaryRemoveValue(v3[4], v2);
    CFDictionaryRemoveValue(v3[5], v2);
  }

  free(a1);
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL(const void *a1, const void *a2, NSObject *a3, char a4, uint64_t a5)
{
  if (qword_1ED4CA988 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_6(&v14);
    return v14;
  }

  FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!a2)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_4(&v14);
    return v14;
  }

  if (!a5)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_3(&v14);
    return v14;
  }

  v10 = qword_1ED4CA990;
  v11 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040F23578B3uLL);
  if (!v11)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_2(&v14);
    return v14;
  }

  v12 = v11;
  *v11 = CFRetain(a1);
  v12[1] = CFRetain(a2);
  v12[2] = a5;
  *(v12 + 24) = a4;
  dispatch_retain(a3);
  v12[4] = a3;
  dispatch_async_f(*v10, v12, sads_scheduleAccessToURLDispatch);
  return 0;
}

void sads_scheduleAccessToURLDispatch(CFTypeRef *a1)
{
  sads_scheduleAccessToURLDispatchGuts(*a1, a1[1], *(a1 + 24), a1[2], a1[4], 0, 0);
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigAssetDownloadCoordinatorRequestImmediateAccessToURL(uint64_t a1, _BYTE *a2, void *a3)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  }

  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_3(&v10);
    return v10;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_2(&v10);
    return v10;
  }

  v7 = a1;
  dispatch_sync_f(*qword_1ED4CA990, &v7, sads_requestImmediateAccessToURLAndCopyScheduledAccessToken);
  if (a2)
  {
    *a2 = v8;
  }

  result = 0;
  *a3 = v9;
  return result;
}

void sads_requestImmediateAccessToURLAndCopyScheduledAccessToken(void **a1)
{
  v2 = (a1 + 1);
  v3 = FigCFHTTPCreateURLString(*a1);
  sads_scheduleAccessToURLDispatchGuts(*MEMORY[0x1E695E738], *a1, 1, 0, 0, v2, a1 + 2);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigAssetDownloadCoordinatorRelinquishAccessToURL(void *context)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
    if (context)
    {
      goto LABEL_3;
    }

LABEL_6:
    FigAssetDownloadCoordinatorRelinquishAccessToURL_cold_2(&v3);
    return v3;
  }

  if (!context)
  {
    goto LABEL_6;
  }

LABEL_3:
  dispatch_async_f(*qword_1ED4CA990, context, sads_relinquishAccessToURLDispatch);
  return 0;
}

void sadc_globalDownloadCoordinatorInitOnce()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x20040D91ED9E0uLL);
  if (!v0)
  {
    goto LABEL_13;
  }

  v1 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.registration-state", 0);
  v0[1] = v1;
  if (!v1)
  {
    goto LABEL_13;
  }

  FigWatchdogMonitorDispatchQueue();
  v2 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.notification", 0);
  *v0 = v2;
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *MEMORY[0x1E695E480];
  if (!FigCFWeakReferenceTableCreate())
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x1E695E9E8]);
    v0[3] = Mutable;
    if (!Mutable)
    {
      goto LABEL_13;
    }

    v5 = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x1E695E9E8]);
    v0[4] = v5;
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = CFDictionaryCreateMutable(v3, 0, 0, 0);
    v0[5] = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if (!FigCFWeakReferenceTableCreate())
    {
      v7 = CFBagCreateMutable(v3, 0, MEMORY[0x1E695E9D0]);
      v0[7] = v7;
      if (v7)
      {
        v8 = FigSimpleMutexCreate();
        v0[8] = v8;
        if (v8)
        {
          qword_1ED4CA980 = v0;
          return;
        }
      }

LABEL_13:
      if (sadc_globalDownloadCoordinatorInitOnce_cold_1())
      {
        return;
      }
    }
  }

  free(v0);
}

void sads_downloadSchedulerCreateInitOnce()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x20040A759441BuLL);
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.scheduled-access-state", 0);
  *v0 = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x1E695E480];
  if (!FigCFWeakReferenceTableCreate())
  {
    Mutable = CFDictionaryCreateMutable(v2, 0, 0, MEMORY[0x1E695E9E8]);
    v0[2] = Mutable;
    if (Mutable)
    {
      v4 = CFDictionaryCreateMutable(v2, 0, 0, MEMORY[0x1E6961610]);
      v0[3] = v4;
      if (v4)
      {
        v5 = CFDictionaryCreateMutable(v2, 0, 0, 0);
        v0[4] = v5;
        if (v5)
        {
          v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v0[5] = v6;
          if (v6)
          {
            qword_1ED4CA990 = v0;
            return;
          }
        }
      }
    }

LABEL_10:
    if (sadc_globalDownloadCoordinatorInitOnce_cold_1())
    {
      return;
    }
  }

  free(v0);
}

void sads_scheduleAccessToURLDispatchGuts(const void *a1, const __CFURL *a2, int a3, const void *a4, NSObject *a5, char *a6, void **a7)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  }

  v14 = qword_1ED4CA990;
  v15 = FigCFHTTPCreateURLString(a2);
  Value = CFDictionaryGetValue(v14[5], v15);
  if (Value)
  {
    v17 = CFRetain(Value);
  }

  else
  {
    v17 = 0;
  }

  v18 = a3 != 0;
  v19 = v17 == 0;
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v18 = 0;
    v20 = 1;
  }

  if (!a1)
  {
    sads_scheduleAccessToURLDispatchGuts_cold_3();
LABEL_31:
    if (v17)
    {
LABEL_26:
      CFRelease(v17);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (v18)
  {
LABEL_18:
    v22 = v20 ^ 1;
    if (!a4)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      sads_dispatchScheduledCallbackFn(a1, v19, 0, a5, a4);
    }

    if (a6)
    {
      *a6 = v19;
    }

    if (a7)
    {
      *a7 = 0;
    }

    goto LABEL_26;
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    goto LABEL_31;
  }

  if (v17)
  {
LABEL_15:
    CFArrayAppendValue(v17, 0);
    CFDictionarySetValue(v14[2], 0, v15);
    if (a4 && a5)
    {
      CFDictionarySetValue(v14[3], 0, a5);
      CFDictionarySetValue(v14[4], 0, a4);
    }

    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v17 = Mutable;
    CFDictionarySetValue(v14[5], v15, Mutable);
    goto LABEL_15;
  }

  sads_scheduleAccessToURLDispatchGuts_cold_2();
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }
}

void sads_dispatchScheduledCallbackFn(const void *a1, char a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10C0040ABF999C2uLL);
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *v11 = v12;
    v11[8] = a2;
    *(v11 + 2) = a3;
    *(v11 + 3) = a5;

    dispatch_async_f(a4, v11, sads_performDispatchScheduledCallbackFn);
  }

  else
  {
    sads_dispatchScheduledCallbackFn_cold_1();
  }
}

void sads_performDispatchScheduledCallbackFn(void *a1)
{
  v2 = *a1;
  v3 = a1[3];
  if (v3)
  {
    v3(*a1, *(a1 + 8), a1[2]);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sads_performDispatchScheduledCallbackFn_cold_1();
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:

  free(a1);
}

void FigCaptionRendererStackLayoutRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigCaptionRendererStackLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 40);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v4, a2);
  if (!result)
  {
    theArray = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v9 = CMBaseObjectGetProtocolVTable();
    if (v9)
    {
      v10 = *(v9 + 2);
      if (v10 && (v11 = *(v10 + 24)) != 0)
      {
        v11(a1, &theArray);
        v9 = theArray;
      }

      else
      {
        v9 = 0;
      }
    }

    v13.length = CFArrayGetCount(v9);
    v13.location = 0;
    CFArraySortValues(theArray, v13, fcrStackLayout_TimeComparator, 0);
    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = *(MEMORY[0x1E695F050] + 16);
  v42 = *MEMORY[0x1E695F050];
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v41;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &rect);
      }
    }
  }

  v8 = *(a2 + 296);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    if (*(a2 + 336))
    {
      y = rect.origin.y;
      height = rect.size.height;
    }

    else
    {
      v12 = *(MEMORY[0x1E695F058] + 16);
      v43.origin = *MEMORY[0x1E695F058];
      v43.size = v12;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v13 = CMBaseObjectGetProtocolVTable();
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = *(v14 + 72);
          if (v15)
          {
            v15(a1, &v43);
          }
        }
      }

      MidY = CGRectGetMidY(rect);
      v17 = CGRectGetMidY(v43);
      height = rect.size.height;
      y = v17 + v17 - MidY + rect.size.height * -0.5;
      rect.origin.y = y;
    }

    x = rect.origin.x;
    width = rect.size.width;
    MidX = CGRectGetMidX(*(&y - 1));
    v21 = CGRectGetMidY(rect);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v22 = CMBaseObjectGetProtocolVTable();
    if (v22)
    {
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = *(v23 + 72);
        if (v24)
        {
          v24(Value, MidX, v21);
        }
      }
    }

    v25 = rect.size.width;
    v26 = rect.size.height;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v27 = CMBaseObjectGetProtocolVTable();
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v28 + 88);
        if (v29)
        {
          v29(Value, v25, v26);
        }
      }
    }
  }

  v30 = *(a2 + 320);
  if (v30 && *(a2 + 754))
  {
    v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    rect = *ymmword_196E771B0;
    v32 = CGColorCreate(v31, &rect.origin.x);
    if (v32)
    {
      CGContextSaveGState(v30);
      v43.origin = v42;
      v43.size = v41;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 104);
          if (v35)
          {
            v35(a1, &v43);
          }
        }
      }

      CGContextSetRGBStrokeColor(v30, 0.4, 0.8, 1.0, 1.0);
      CGContextSetLineWidth(v30, 3.0);
      CGContextStrokeRect(v30, v43);
      CGContextRestoreGState(v30);
    }

    CGColorRelease(v32);
    CFRelease(v31);
  }

  v36 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v37 = CMBaseObjectGetProtocolVTable();
  if (!v37)
  {
    return 4294954508;
  }

  v38 = *(v37 + 16);
  if (!v38)
  {
    return 4294954508;
  }

  v39 = *(v38 + 280);
  if (v39)
  {
    return v39(v36, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 32);
  v5 = *(v3 + 24) * *(v3 + 36);
  v6 = *(v3 + 56);
  v7 = *(v3 + 40);
  if (*(v3 + 64) / 100.0 + *(v3 + 48) / -100.0 * v5 >= 0.0)
  {
    v8 = *(v3 + 64) / 100.0 + *(v3 + 48) / -100.0 * v5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(v3 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 80);
      if (v12)
      {
        v112[0] = 1;
        *&v112[1] = 0;
        *&v112[4] = 0;
        *&v112[8] = v6 / 100.0 + v7 / -100.0 * (v4 / 100.0);
        v112[16] = 1;
        *&v112[17] = 0;
        *&v112[20] = 0;
        *&v112[24] = v8;
        v112[32] = 1;
        *&v112[33] = 0;
        *&v112[36] = 0;
        *&v112[40] = v4 / 100.0;
        LOBYTE(v113) = 1;
        *(&v113 + 1) = 0;
        DWORD1(v113) = 0;
        *(&v113 + 1) = v5;
        v12(v9, v112);
      }
    }
  }

  v13 = CMBaseObjectGetDerivedStorage();
  *v112 = FCRRectNull;
  *&v112[16] = *&byte_196E76830;
  *&v112[32] = xmmword_196E76840;
  v113 = *&byte_196E76850;
  v100 = *(MEMORY[0x1E695F050] + 16);
  v101 = *MEMORY[0x1E695F050];
  v110 = *MEMORY[0x1E695F050];
  v111 = v100;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v15 + 88);
      if (v16)
      {
        v16(a1, v112);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 72);
      if (v19)
      {
        v19(a1, &v110);
      }
    }
  }

  v20 = *&v112[40];
  if (*&v112[40] != -1.0)
  {
    v72 = *&v110 + *&v112[8];
    if (v112[0])
    {
      v72 = *&v110 + *&v112[8] * *&v111;
    }

    v73 = *(&v110 + 1) + *&v112[24];
    if (v112[16])
    {
      v73 = *(&v110 + 1) + *&v112[24] * *(&v111 + 1);
    }

    if (v112[32])
    {
      v20 = *&v112[40] * *&v111;
    }

    v74 = *(&v113 + 1);
    if (v113)
    {
      v74 = *(&v111 + 1) * *(&v113 + 1);
    }

    v114 = CGRectIntegral(*(&v20 - 2));
    x = v114.origin.x;
    y = v114.origin.y;
    width = v114.size.width;
    height = v114.size.height;
    v79 = *(v13 + 8);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v80 = CMBaseObjectGetProtocolVTable();
    if (v80)
    {
      v81 = *(v80 + 16);
      if (v81)
      {
        v82 = *(v81 + 96);
        if (v82)
        {
          v82(v79, x, y, width, height);
        }
      }
    }
  }

  theArray = 0;
  v21 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v22 = CMBaseObjectGetProtocolVTable();
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v23 + 24);
      if (v24)
      {
        v24(v21, &theArray);
      }
    }
  }

  Count = CFArrayGetCount(theArray);
  v110 = v101;
  v111 = v100;
  v26 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v27 = CMBaseObjectGetProtocolVTable();
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v28 + 104);
      if (v29)
      {
        v29(v26, &v110);
      }
    }
  }

  v31 = *(&v110 + 1);
  v30 = *&v110;
  if (*DerivedStorage)
  {
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1);
      v99 = *MEMORY[0x1E695F060];
      *v112 = *MEMORY[0x1E695F060];
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 120);
          if (v35)
          {
            v35(ValueAtIndex, v112);
          }
        }
      }

      v36 = 0;
      v37 = *&v112[8];
      v38 = Count + 1;
      v98 = *MEMORY[0x1E695EFF8];
      do
      {
        v39 = CFArrayGetValueAtIndex(theArray, v38 - 2);
        *v112 = v101;
        *&v112[16] = v100;
        v107 = v98;
        v108 = v99;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v40 = CMBaseObjectGetProtocolVTable();
        if (v40)
        {
          v41 = *(v40 + 16);
          if (v41)
          {
            v42 = *(v41 + 104);
            if (v42)
            {
              v42(v39, v112);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v43 = CMBaseObjectGetProtocolVTable();
        if (v43)
        {
          v44 = *(v43 + 16);
          if (v44)
          {
            v45 = *(v44 + 120);
            if (v45)
            {
              v45(v39, &v108);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v46 = CMBaseObjectGetProtocolVTable();
        if (v46)
        {
          v47 = *(v46 + 16);
          if (v47)
          {
            v48 = *(v47 + 136);
            if (v48)
            {
              v48(v39, &v107);
            }
          }
        }

        if (*&v112[8] != v31)
        {
          v106 = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v49 = CMBaseObjectGetProtocolVTable();
          if (v49)
          {
            v50 = *(v49 + 16);
            if (v50)
            {
              v51 = *(v50 + 248);
              if (v51)
              {
                v51(v39, &v106);
              }
            }
          }

          if (!v106)
          {
            if (*&v107 == -1.0 && *(&v107 + 1) == -1.0)
            {
              *&v107 = v30;
              *(&v107 + 1) = v31 - v37;
              FigCaptionRendererNodeProtocolGetProtocolID();
              v52 = CMBaseObjectGetProtocolVTable();
              if (v52)
              {
                v53 = *(v52 + 16);
                if (v53)
                {
                  v54 = *(v53 + 128);
                  if (v54)
                  {
                    v54(v39, v30, v31 - v37);
                  }
                }
              }
            }

            v105 = 0;
            FigCaptionRendererMoveToActionCreate(&v105);
            v55 = v105;
            FigCaptionRendererActionProtocolGetProtocolID();
            v56 = CMBaseObjectGetProtocolVTable();
            if (v56)
            {
              v57 = *(v56 + 16);
              if (v57)
              {
                v58 = *(v57 + 16);
                if (v58)
                {
                  v58(v55, 450);
                }
              }
            }

            v59 = v105;
            FigCaptionRendererMoveToActionProtocolGetProtocolID();
            v60 = CMBaseObjectGetProtocolVTable();
            if (v60)
            {
              v61 = *(v60 + 16);
              if (v61)
              {
                v62 = *(v61 + 16);
                if (v62)
                {
                  v62(v59, v30, v31);
                }
              }
            }

            v63 = v105;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v64 = CMBaseObjectGetProtocolVTable();
            if (v64)
            {
              v65 = *(v64 + 16);
              if (v65)
              {
                v66 = *(v65 + 320);
                if (v66)
                {
                  v66(v39, v63);
                }
              }
            }

            v36 = 1;
          }
        }

        v31 = v31 + *(&v108 + 1);
        --v38;
      }

      while (v38 > 1);
      if (v36)
      {
        *&v108 = 0;
        v103 = v110;
        v104 = v111;
        v67 = *(DerivedStorage + 8);
        FigCaptionRendererNodeProtocolGetProtocolID();
        v68 = CMBaseObjectGetProtocolVTable();
        if (v68 && (v69 = *(v68 + 16)) != 0 && (v70 = *(v69 + 16)) != 0)
        {
          v70(v67, &v108);
          v71 = v108;
        }

        else
        {
          v71 = 0;
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v94 = CMBaseObjectGetProtocolVTable();
        if (v94)
        {
          v95 = *(v94 + 16);
          if (v95)
          {
            v96 = *(v95 + 312);
            if (v96)
            {
              *v112 = 0x1C200000000;
              *&v112[8] = v103;
              *&v112[24] = v104;
              v96(v71, v112);
            }
          }
        }
      }
    }
  }

  else if (Count >= 1)
  {
    v83 = Count + 1;
    v102 = *MEMORY[0x1E695F060];
    do
    {
      *v112 = v102;
      v84 = CFArrayGetValueAtIndex(theArray, v83 - 2);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v85 = CMBaseObjectGetProtocolVTable();
      if (v85)
      {
        v86 = *(v85 + 16);
        if (v86)
        {
          v87 = *(v86 + 128);
          if (v87)
          {
            v87(v84, v30, v31);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v88 = CMBaseObjectGetProtocolVTable();
      if (v88)
      {
        v89 = *(v88 + 16);
        if (v89)
        {
          v90 = *(v89 + 232);
          if (v90)
          {
            v90(v84, 1);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v91 = CMBaseObjectGetProtocolVTable();
      if (v91)
      {
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = *(v92 + 120);
          if (v93)
          {
            v93(v84, v112);
          }
        }
      }

      v31 = v31 + *&v112[8];
      --v83;
    }

    while (v83 > 1);
  }

  return 0;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v8 = CMBaseObjectGetProtocolVTable();
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v9 + 240);
      if (v10)
      {
        v10(a1, &v25);
      }
    }
  }

  if (HIBYTE(v25))
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v11 = CMBaseObjectGetProtocolVTable();
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v12 + 296);
        if (v13)
        {
          v13(a1, a2);
        }
      }
    }
  }

  if (v25)
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v15 + 288);
        if (v16)
        {
          v16(a1, a2);
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t fcrStackLayout_TimeComparator(uint64_t a1, uint64_t a2)
{
  FigBytePumpGetFigBaseObject();
  v17[0] = v4;
  v17[1] = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v8(a1, v17);
      }
    }
  }

  FigBytePumpGetFigBaseObject();
  v10 = v9;
  *v16 = v9;
  v16[1] = v11;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  v12 = CMBaseObjectGetProtocolVTable();
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v13 + 8);
      if (v14)
      {
        v14(a2, v16);
        v10 = *v16;
      }
    }
  }

  if (v17[0] < v10)
  {
    return -1;
  }

  else
  {
    return v17[0] > v10;
  }
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 56) = a2;
  *(DerivedStorage + 64) = a3;
  return 0;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererStackLayoutRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t RegisterFigCaptionRendererStackLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferProcessorCreateForCaptionConverter(uint64_t a1, int a2, int a3, uint64_t a4, CFTypeRef *a5)
{
  if (a5)
  {
    FigSampleBufferProcessorGetClassID();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 20) = a2 == 0;
      *(DerivedStorage + 4) = 0;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a2;
      *(DerivedStorage + 16) = a3;
      *(DerivedStorage + 21) = a3 == 0;
      *(DerivedStorage + 22) = 0;
      *a5 = 0;
    }
  }

  else
  {
    FigSampleBufferProcessorCreateForCaptionConverter_cold_1(&v11);
    return v11;
  }

  return v8;
}

uint64_t captionConverter_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  return 0;
}

void captionConverter_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *captionConverter_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(DerivedStorage);
  if (*DerivedStorage)
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_CaptionConverter %p> retainCount: %d%s allocator: %p ", DerivedStorage, v4, v5, v6);
  v7 = DerivedStorage[3];
  CFStringAppendFormat(Mutable, 0, @"media type %c%c%c%c sub type %c%c%c%c", HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7, HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7);
  return Mutable;
}

uint64_t captionConverter_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    captionConverter_setOutputCallback_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = DerivedStorage;
    result = 0;
    *(v6 + 3) = a3;
    *(v6 + 4) = a2;
  }

  return result;
}

uint64_t captionConverter_finishPendingProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    captionConverter_finishPendingProcessing_cold_1(&v7);
    return v7;
  }

  else if (*(DerivedStorage + 32))
  {
    if (*(DerivedStorage + 22))
    {
      return 0;
    }

    v3 = *(DerivedStorage + 48);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v4)
      {
        v5 = v3;

        return v4(v5);
      }
    }

    else
    {
      v6 = *(DerivedStorage + 40);
      if (!v6)
      {
        return 0;
      }

      v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v4)
      {
        v5 = v6;

        return v4(v5);
      }
    }

    return 4294954514;
  }

  else
  {
    captionConverter_finishPendingProcessing_cold_2(&v8);
    return v8;
  }
}

uint64_t captionConverter_ToSbufOutputCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 32))(*(DerivedStorage + 24), 0, a1);
  return 0;
}

uint64_t captionConverter_FromSbufOutputCallback(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v6 = DerivedStorage;
    v9 = *a2;
    v10 = *(a2 + 2);
    v7 = FigSampleBufferCreateForCaptionGroup();
    if (!v7)
    {
      (*(v6 + 32))(*(v6 + 24), 0, v11);
    }
  }

  else
  {
    captionConverter_FromSbufOutputCallback_cold_1(&v9);
    return v9;
  }

  return v7;
}

BOOL FigFormatReaderIsRemote(_BOOL8 result)
{
  if (result)
  {
    FigFormatReaderGetFigBaseObject();
    if (remoteFormatReader_GetClassID_sRegisterRemoteFormatReaderClassOnce != -1)
    {
      FigFormatReaderIsRemote_cold_1();
    }

    return CMBaseObjectIsMemberOfClass() != 0;
  }

  return result;
}

BOOL FigTrackReaderIsRemote(_BOOL8 result)
{
  if (result)
  {
    FigTrackReaderGetFigBaseObject();
    if (remoteTrackReader_GetClassID_sRegisterRemoteTrackReaderClassOnce != -1)
    {
      FigTrackReaderIsRemote_cold_1();
    }

    return CMBaseObjectIsMemberOfClass() != 0;
  }

  return result;
}

uint64_t remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(unsigned int a1, void *a2)
{
  v3 = &gFormatReaderRemoteClients + 40 * a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient_block_invoke;
  block[3] = &__block_descriptor_tmp_17_0;
  v7 = a1;
  if (*v3 != -1)
  {
    dispatch_once(&gFormatReaderRemoteClients + 5 * a1, block);
  }

  v4 = *(v3 + 2);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  return *(v3 + 2);
}

uint64_t remoteFormatReaderClient_CopyConnection(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (a2 == 1)
  {
    result = FigXPCRemoteClientCreateSecondaryConnection();
  }

  else
  {
    result = FigXPCRemoteClientCopyPrimaryConnection();
  }

  if (!result)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t FigFormatReaderXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteFormatReader_GetObjectID(a1, a2);
    }

    else
    {
      FigFormatReaderXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigFormatReaderXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t CreateRemoteFormatReader(uint64_t a1, CFTypeRef *a2)
{
  if (remoteFormatReader_GetClassID_sRegisterRemoteFormatReaderClassOnce != -1)
  {
    FigFormatReaderIsRemote_cold_1();
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  inited = InitCommonFormatReaderPropertyCacheMutex(DerivedStorage + 24);
  if (!inited)
  {
    *a2 = 0;
  }

  return inited;
}

uint64_t CommonFormatReaderObjectCompleteObjectSetup(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = CFRetain(a3);

  return FigXPCConnectionAssociateObject();
}

uint64_t SetupCommonFormatReaderPropertyCache(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = Mutable;
  if (Mutable)
  {
    return 0;
  }

  SetupCommonFormatReaderPropertyCache_cold_1(&v4);
  return v4;
}

uint64_t remoteFormatReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteFormatReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteTrackReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteTrackReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_3(&v21);
    return v21;
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (qword_1EAF19468 != -1)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_1();
  }

  if (!remoteSampleCursor_useEventLink_prefersEventLink)
  {
    v11 = 0;
LABEL_20:
    v17 = 0;
    *a2 = v11;
    return v17;
  }

  if (remoteFigSampleCursor_prepareForEventLinkCallsFromConsistentThread_onceToken != -1)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_2();
  }

  v3 = MEMORY[0x19A8D3620](_MergedGlobals_157);
  if (v3)
  {
    v11 = v3;
    v12 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote(0, v4, v5, v6, v7, v8, v9, v10);
  v15 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v19);
  v12 = v19;
  if (v15)
  {
    v17 = v15;
    v11 = 0;
  }

  else
  {
    AssociatedEventLink = remoteFormatReaderClient_CopyConnection(v19, 0, &v21);
    v13 = v21;
    if (!AssociatedEventLink)
    {
      AssociatedEventLink = FigXPCConnectionCreateAssociatedEventLink();
      if (!AssociatedEventLink)
      {
        AssociatedEventLink = MEMORY[0x19A8D3680](_MergedGlobals_157, v20);
        if (!AssociatedEventLink)
        {
          v11 = v20;
LABEL_15:
          v17 = 0;
          v20 = 0;
          if (!v13)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    v17 = AssociatedEventLink;
    v11 = 0;
    if (v13)
    {
LABEL_16:
      CFRelease(v13);
      v12 = v19;
    }
  }

LABEL_17:
  if (v12)
  {
    CFRelease(v12);
  }

  if (!v17)
  {
    goto LABEL_20;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v17;
}

uint64_t remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    return 1;
  }

  result = FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t FigTrackReaderXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteTrackReader_GetObjectID(a1, a2);
    }

    else
    {
      FigTrackReaderXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigTrackReaderXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteSampleCursor_GetObjectID(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    if (*(v3 + 24))
    {
      remoteSampleCursor_GetObjectID_cold_1(&v5);
      return v5;
    }

    else
    {
      result = 0;
      *a2 = *(v3 + 16);
    }
  }

  else
  {
    remoteSampleCursor_GetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

void CommonFormatReaderObjectDeadConnectionCallback(char *cf)
{
  if (!cf)
  {
    goto LABEL_6;
  }

  v2 = CFGetTypeID(cf);
  if (FigServerSampleCursorSubscriptionGetTypeID_sRegisterFigServerSampleCursorSubscriptionTypeOnce != -1)
  {
    CommonFormatReaderObjectDeadConnectionCallback_cold_1();
  }

  if (v2 == sFigServerSampleCursorSubscriptionID)
  {
    v3 = cf + 24;
  }

  else
  {
LABEL_6:
    v3 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  *v3 = 1;
}

uint64_t CommonFormatReaderObjectNotificationFilter(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == FigFormatReaderGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (FigCFEqual())
      {
        v10 = FigCFDictionaryCopyArrayOfKeys();
        if (v10)
        {
          v11 = v10;
          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v13 = Count;
            for (i = 0; i != v13; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
              CommonFormatReaderObjectRemovePropertyFromCache((DerivedStorage + 24), ValueAtIndex);
            }
          }

          CFRelease(v11);
        }
      }

      else if (FigCFEqual())
      {
        CommonFormatReaderObjectRemovePropertyFromCache((DerivedStorage + 24), @"Cache_Tracks");
      }

      return 0;
    }

    v16 = CFGetTypeID(a1);
    if (v16 == FigTrackReaderGetTypeID())
    {
      v17 = CMBaseObjectGetDerivedStorage();
      if (FigCFEqual())
      {
        v18 = FigCFDictionaryCopyArrayOfKeys();
        if (v18)
        {
          v19 = v18;
          v20 = CFArrayGetCount(v18);
          if (v20 < 1)
          {
            v22 = 0;
          }

          else
          {
            v21 = v20;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            theDict = 0;
            value = *MEMORY[0x1E695E4D0];
            do
            {
              v25 = CFArrayGetValueAtIndex(v19, v23);
              CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), v25);
              v26 = CFEqual(v25, @"ISOUserDataReader");
              v27 = kFigTrackProperty_ISOUserDataArray;
              if (v26 || (v28 = CFEqual(v25, @"QuickTimeMetadataReader"), v27 = kFigTrackProperty_QuickTimeMetadataArray, v28) || (v29 = CFEqual(v25, @"QuickTimeUserDataReader"), v27 = kFigTrackProperty_QuickTimeUserDataArray, v29))
              {
                v30 = *v27;
                if (*v27 && !CFDictionaryContainsKey(a4, *v27))
                {
                  CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), v30);
                  MutableCopy = theDict;
                  if (!theDict)
                  {
                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                    v22 = 4;
                  }

                  theDict = MutableCopy;
                  CFDictionarySetValue(MutableCopy, v30, value);
                }

                v24 = 1;
              }

              ++v23;
            }

            while (v21 != v23);
            if (v24 && !CFDictionaryContainsKey(a4, @"CommonMetadataArray"))
            {
              CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), @"CommonMetadataArray");
              v33 = theDict;
              if (!theDict)
              {
                v33 = FigCFDictionaryCreateMutableCopy();
                v22 = 4;
              }

              CFDictionarySetValue(v33, @"CommonMetadataArray", value);
            }

            else
            {
              v33 = theDict;
            }

            if (v22 != 4)
            {
              CFRelease(v19);
              if (!v33)
              {
                return v22;
              }

              v34 = v33;
LABEL_38:
              CFRelease(v34);
              return v22;
            }

            *a5 = v33;
          }

          v34 = v19;
          goto LABEL_38;
        }
      }
    }
  }

  return 0;
}

uint64_t remoteFormatReaderClient_PlaybackServerDeadServerConnectionCallback()
{
  FigSimpleMutexLock();
  byte_1ED4CA9C8 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t remoteFormatReaderClient_MediaParserDeadServerConnectionCallback()
{
  FigSimpleMutexLock();
  byte_1ED4CA9F0 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t registerFigServerSampleCursorSubscriptionType()
{
  result = _CFRuntimeRegisterClass();
  sFigServerSampleCursorSubscriptionID = result;
  return result;
}

double FigServerSampleCursorSubscription_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigServerSampleCursorSubscription_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }
}

__CFString *FigServerSampleCursorSubscription_CopyFormattingDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "-DEAD";
  if (!*(a1 + 24))
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"[%016llx]@%d%s", *(a1 + 16), *(a1 + 40), v5);
  return v4;
}

__CFString *FigServerSampleCursorSubscription_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServerSampleCursorSubscription %p - %@>", a1, a1);
  return Mutable;
}

uint64_t InitCommonFormatReaderPropertyCacheMutex(uint64_t a1)
{
  v2 = FigSimpleMutexCreate();
  *(a1 + 8) = v2;
  if (v2)
  {
    return 0;
  }

  InitCommonFormatReaderPropertyCacheMutex_cold_1(&v4);
  return v4;
}

__CFString *remoteFormatReader_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v5 = " SERVER DIED";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigFormatReaderRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v4, *DerivedStorage, v5);
  return Mutable;
}

uint64_t TeardownCommonFormatReaderPropertyCache(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 8) = 0;
  return result;
}

uint64_t CreateRemoteMetadataReader(uint64_t a1, CFTypeRef *a2)
{
  FigMetadataReaderGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

__CFString *remoteMetadataReader_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  if (*(DerivedStorage + 16))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigMetadataReaderRemote(XPC) %p retainCount: %ld allocator: %p ObjectID:%016llx%s>", a1, v5, v6, *DerivedStorage, v7);
  return Mutable;
}

uint64_t remoteMetadataReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteMetadataReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v15 = 0;
  v14 = 0;
  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote(a1, a2, a3, a4, a5, a6, a7, a8);
  ServerPID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v14);
  if (ServerPID)
  {
    goto LABEL_8;
  }

  ServerPID = FigXPCRemoteClientGetServerPID();
  if (ServerPID)
  {
    goto LABEL_8;
  }

  if (FigServer_IsServerProcess())
  {
    ServerPID = FigByteStreamServerCopyByteStreamForID(a2, v15, &cf);
    if (!ServerPID)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = ServerPID;
    goto LABEL_9;
  }

  ServerPID = FigByteStreamRemoteCreateWithPlaybackProcessObjectID(a2, v15, &cf);
  if (ServerPID)
  {
    goto LABEL_8;
  }

LABEL_5:
  v12 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t remoteFormatReader_CopyTrackByID(const void *a1, uint64_t a2, CFTypeRef *a3, _DWORD *a4)
{
  v6 = a2;
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    v24 = 0;
    xdict = 0;
    cf = 0;
    v23 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    ObjectID = remoteFormatReader_GetObjectID(a1, &v23);
    if (ObjectID)
    {
      v13 = ObjectID;
LABEL_12:
      FigXPCRelease();
      FigXPCRelease();
      FigXPCConnectionKillServerOnTimeout();
      return v13;
    }

    v10 = FigXPCCreateBasicMessage();
    if (!v10)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", v6);
      if (!a3 || (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v11 = CFGetAllocator(a1), v10 = CreateRemoteTrackReader(v11, *(DerivedStorage + 40), &cf), !v10))
      {
        v10 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!v10)
        {
          uint64 = xpc_dictionary_get_uint64(v24, "MediaType");
          xpc_dictionary_get_BOOL(v24, "AllowsPropertyCaching");
          if (!a3)
          {
            goto LABEL_8;
          }

          xpc_dictionary_get_uint64(v24, *MEMORY[0x1E69615A0]);
          CompleteTrackReaderCopy();
          if (!v10)
          {
            *a3 = cf;
            cf = 0;
LABEL_8:
            v13 = 0;
            if (a4)
            {
              *a4 = uint64;
            }

            goto LABEL_10;
          }
        }
      }
    }

    v13 = v10;
LABEL_10:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  xdict = 0;
  v15 = remoteFormatReader_ensureAndCopyCachedTrackArray(a1, &xdict);
  if (v15)
  {
    v13 = v15;
  }

  else
  {
    Count = CFArrayGetCount(xdict);
    if (Count < 1)
    {
LABEL_19:
      v13 = 4294954453;
    }

    else
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(xdict, v18);
        v19 = CMBaseObjectGetDerivedStorage();
        if (*(v19 + 24) == v6)
        {
          break;
        }

        if (v17 == ++v18)
        {
          goto LABEL_19;
        }
      }

      v20 = v19;
      ValueAtIndex = CFArrayGetValueAtIndex(xdict, v18);
      if (a3)
      {
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *a3 = ValueAtIndex;
      }

      v13 = 0;
      if (a4)
      {
        *a4 = *(v20 + 28);
      }
    }
  }

  if (xdict)
  {
    CFRelease(xdict);
  }

  return v13;
}

uint64_t remoteFormatReader_CopyTrackByType(const void *a1, int64_t a2, uint64_t a3, CFTypeRef *a4, _DWORD *a5)
{
  v7 = a3;
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    v28 = 0;
    xdict = 0;
    cf = 0;
    v27 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    ObjectID = remoteFormatReader_GetObjectID(a1, &v27);
    if (ObjectID)
    {
      v15 = ObjectID;
LABEL_12:
      FigXPCRelease();
      FigXPCRelease();
      FigXPCConnectionKillServerOnTimeout();
      return v15;
    }

    v12 = FigXPCCreateBasicMessage();
    if (!v12)
    {
      xpc_dictionary_set_int64(xdict, "TrackIndex", a2);
      xpc_dictionary_set_uint64(xdict, "MediaType", v7);
      if (!a4 || (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v13 = CFGetAllocator(a1), v12 = CreateRemoteTrackReader(v13, *(DerivedStorage + 40), &cf), !v12))
      {
        v12 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!v12)
        {
          int64 = xpc_dictionary_get_int64(v28, "TrackID");
          xpc_dictionary_get_BOOL(v28, "AllowsPropertyCaching");
          if (!a4)
          {
            goto LABEL_8;
          }

          xpc_dictionary_get_uint64(v28, *MEMORY[0x1E69615A0]);
          CompleteTrackReaderCopy();
          if (!v12)
          {
            *a4 = cf;
            cf = 0;
LABEL_8:
            v15 = 0;
            if (a5)
            {
              *a5 = int64;
            }

            goto LABEL_10;
          }
        }
      }
    }

    v15 = v12;
LABEL_10:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  xdict = 0;
  v17 = remoteFormatReader_ensureAndCopyCachedTrackArray(a1, &xdict);
  if (v17)
  {
    v15 = v17;
    goto LABEL_22;
  }

  Count = CFArrayGetCount(xdict);
  if (Count < 1)
  {
LABEL_21:
    v15 = 4294954453;
    goto LABEL_22;
  }

  v19 = Count;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(xdict, v20);
    v23 = CMBaseObjectGetDerivedStorage();
    if (*(v23 + 28) == v7)
    {
      break;
    }

LABEL_20:
    if (v19 == ++v20)
    {
      goto LABEL_21;
    }
  }

  if (v21 != a2)
  {
    ++v21;
    goto LABEL_20;
  }

  v24 = v23;
  if (a4)
  {
    if (ValueAtIndex)
    {
      v25 = CFRetain(ValueAtIndex);
    }

    else
    {
      v25 = 0;
    }

    *a4 = v25;
  }

  v15 = 0;
  if (a5)
  {
    *a5 = *(v24 + 24);
  }

LABEL_22:
  if (xdict)
  {
    CFRelease(xdict);
  }

  return v15;
}

uint64_t remoteFormatReader_CopyFormatReaderWithSecondaryConnection(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  cf = 0;
  if (*(DerivedStorage + 16))
  {
    remoteFormatReader_CopyFormatReaderWithSecondaryConnection_cold_1(&v29);
    v22 = v29;
  }

  else
  {
    v12 = DerivedStorage;
    DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote(DerivedStorage, v5, v6, v7, v8, v9, v10, v11);
    v14 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v25);
    v15 = v25;
    if (v14 || (v14 = remoteFormatReaderClient_CopyConnection(v25, 1, &cf), v14) || (v14 = FigXPCCreateBasicMessage(), v14) || (v16 = cf, v14 = FigXPCConnectionSendSyncMessageCreatingReply(), v14) || (uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]), v18 = CFGetAllocator(a1), v14 = CreateRemoteFormatReader(v18, &v26), v14) || (v19 = v26, v14 = CommonFormatReaderObjectCompleteObjectSetup(v26, uint64, v16), v14))
    {
      v22 = v14;
      if (v15)
      {
LABEL_11:
        CFRelease(v15);
      }
    }

    else
    {
      v20 = CMBaseObjectGetDerivedStorage();
      v21 = *(v12 + 40);
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      v22 = 0;
      *(v20 + 40) = v21;
      *a2 = v19;
      v26 = 0;
      if (v15)
      {
        goto LABEL_11;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v26)
  {
    CFRelease(v26);
  }

  return v22;
}

uint64_t CreateRemoteTrackReader(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (remoteTrackReader_GetClassID_sRegisterRemoteTrackReaderClassOnce != -1)
  {
    FigTrackReaderIsRemote_cold_1();
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 32) = v8;
  v6 = FigPartialSampleTableOutOfBandObjectRegistryCreate(a1, (DerivedStorage + 56));
  if (v6)
  {
    return v6;
  }

  inited = InitCommonFormatReaderPropertyCacheMutex(DerivedStorage + 40);
  if (!inited)
  {
    *a3 = 0;
  }

  return inited;
}

__CFString *remoteTrackReader_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v5 = " SERVER DIED";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigTrackReaderRemote(XPC) %p retainCount: %ld trackID %d mediaType %c%c%c%c ObjectID: %016llx%s>", a1, v4, *(DerivedStorage + 24), HIBYTE(*(DerivedStorage + 28)), BYTE2(*(DerivedStorage + 28)), BYTE1(*(DerivedStorage + 28)), *(DerivedStorage + 28), *DerivedStorage, v5);
  return Mutable;
}

__CFString *remoteEditCursorService_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigEditCursorServiceRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteEditCursorService_CreateCursorAtTrackTime(const void *a1, __int128 *a2, void *a3)
{
  v16 = 0;
  v17 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteEditCursorService_CreateCursorAtTrackTime_cold_2(&v13);
LABEL_13:
    v11 = v13;
    goto LABEL_14;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 16) && !remoteEditCursorService_CreateCursorAtTrackTime_cold_1(&v13))
  {
    goto LABEL_13;
  }

  RemoteEditCursor = FigXPCCreateBasicMessage();
  if (RemoteEditCursor || (v13 = *a2, v14 = *(a2 + 2), RemoteEditCursor = FigXPCMessageSetCMTime(), RemoteEditCursor) || (v8 = CFGetAllocator(a1), RemoteEditCursor = CreateRemoteEditCursor(v8, &v17), RemoteEditCursor) || (RemoteEditCursor = FigXPCConnectionSendSyncMessageCreatingReply(), RemoteEditCursor))
  {
    v11 = RemoteEditCursor;
LABEL_14:
    v10 = v17;
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v10 = v17;
  v11 = CommonFormatReaderObjectCompleteObjectSetup(v17, uint64, *(DerivedStorage + 8));
  if (!v11)
  {
    *a3 = v10;
    goto LABEL_9;
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v11;
}

uint64_t CreateRemoteEditCursor(uint64_t a1, CFTypeRef *a2)
{
  FigEditCursorGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

__CFString *remoteEditCursor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigEditCursorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteEditCursor_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteEditCursor_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteEditCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  v11 = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    remoteEditCursor_Copy_cold_1(&v15);
    v9 = v15;
    goto LABEL_11;
  }

  ObjectID = remoteEditCursor_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (v6 = CFGetAllocator(a1), ObjectID = CreateRemoteEditCursor(v6, &v11), ObjectID) || (ObjectID = FigXPCConnectionSendSyncMessageCreatingReply(), ObjectID))
  {
    v9 = ObjectID;
LABEL_11:
    v8 = v11;
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = v11;
  v9 = CommonFormatReaderObjectCompleteObjectSetup(v11, uint64, *(DerivedStorage + 8));
  if (!v9)
  {
    *a2 = v8;
    goto LABEL_8;
  }

LABEL_12:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v9;
}

__CFString *remoteSampleCursorService_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleCursorServiceRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteSampleCursorService_CreateCursorAtPresentationTimeStamp(const void *a1, __int128 *a2, void *a3, BOOL *a4, BOOL *a5)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  return CreateCursorWithPresentationTimeStamp(a1, &v6, 1396732020, 0, a3, a4, a5);
}

uint64_t remoteSampleCursorService_CreateCursorNearPresentationTimeStamp(const void *a1, __int128 *a2, uint64_t a3, void *a4, BOOL *a5, BOOL *a6)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  return CreateCursorWithPresentationTimeStamp(a1, &v7, 1400795252, a3, a4, a5, a6);
}

uint64_t remoteSampleCursorService_CreateCursorAtFirstSampleInDecodeOrder(const void *a1, void *a2)
{
  if (a2)
  {

    return CreateCursorAtSampleInDecodeOrder(a1, 1399222900, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    remoteSampleCursorService_CreateCursorAtFirstSampleInDecodeOrder_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteSampleCursorService_CreateCursorAtLastSampleInDecodeOrder(const void *a1, void *a2)
{
  if (a2)
  {

    return CreateCursorAtSampleInDecodeOrder(a1, 1399616372, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    remoteSampleCursorService_CreateCursorAtLastSampleInDecodeOrder_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteSampleCursorService_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteSampleCursorService_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t FigServerSampleCursorSubscriptionCreate(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t *a5)
{
  if (a5)
  {
    if (FigServerSampleCursorSubscriptionGetTypeID_sRegisterFigServerSampleCursorSubscriptionTypeOnce != -1)
    {
      CommonFormatReaderObjectDeadConnectionCallback_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      v11 = FigXPCConnectionAssociateObject();
      if (v11)
      {
        v14 = v11;
        CFRelease(v10);
      }

      else
      {
        *(v10 + 16) = a3;
        *(v10 + 40) = 0;
        if (a2)
        {
          v12 = CFRetain(a2);
        }

        else
        {
          v12 = 0;
        }

        *(v10 + 32) = v12;
        if (a4)
        {
          v13 = CFRetain(a4);
        }

        else
        {
          v13 = 0;
        }

        v14 = 0;
        *(v10 + 48) = v13;
        *a5 = v10;
      }
    }

    else
    {
      FigServerSampleCursorSubscriptionCreate_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    FigServerSampleCursorSubscriptionCreate_cold_3(&v17);
    return v17;
  }

  return v14;
}

uint64_t CreateRemoteSampleCursor(uint64_t a1, const void *a2, int a3, uint64_t a4, const void *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  if (remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableSetupOnce != -1)
  {
    CreateRemoteSampleCursor_cold_1();
  }

  v12 = 0;
  while (1)
  {
    if (v12)
    {
      pthread_rwlock_wrlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    }

    else
    {
      pthread_rwlock_rdlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    }

    Value = CFDictionaryGetValue(remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary, a3);
    v14 = Value;
    if (v12)
    {
      if (!Value)
      {
        break;
      }
    }

    if (!Value)
    {
      v12 = 1;
    }

    pthread_rwlock_unlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    if (v14)
    {
      goto LABEL_28;
    }
  }

  v15 = malloc_type_malloc(0xF0uLL, 0x10C004098B2CDEBuLL);
  v16 = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(v15, &kFigSampleCursorRemote_FigSampleCursorClass);
  *v16 = 0;
  v16[1] = &kFigSampleCursorRemote_BaseClass;
  if ((a3 & 2) != 0)
  {
    if ((a3 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15[8] = 0;
    if ((a3 & 4) != 0)
    {
LABEL_15:
      if ((a3 & 8) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  v15[10] = 0;
  if ((a3 & 8) != 0)
  {
LABEL_16:
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15[18] = 0;
  if ((a3 & 0x10) != 0)
  {
LABEL_17:
    if ((a3 & 0x20) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v15[14] = 0;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_23:
  v15[19] = 0;
  if ((a3 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((a3 & 0x40) == 0)
  {
LABEL_19:
    v15[9] = 0;
    goto LABEL_26;
  }

LABEL_25:
  if (!v15)
  {
    v17 = 0;
    goto LABEL_27;
  }

LABEL_26:
  v17 = v15;
LABEL_27:
  v16[2] = v17;
  CFDictionarySetValue(remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary, a3, v16);
  pthread_rwlock_unlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
LABEL_28:
  if (remoteSampleCursor_GetClassID_sRegisterRemoteSampleCursorClassOnce != -1)
  {
    CreateRemoteSampleCursor_cold_2();
  }

  v18 = CMDerivedObjectCreate();
  if (v18)
  {
    return v18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 72) = FigSimpleMutexCreate();
  v20 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 64) = v20;
  v21 = a5 ? CFRetain(a5) : 0;
  *DerivedStorage = v21;
  v18 = FigServerSampleCursorSubscriptionSubscribe(a5);
  if (v18)
  {
    return v18;
  }

  if (!a4)
  {
    v31 = 5912;
LABEL_59:
    CreateRemoteSampleCursor_cold_3(v31, &v35);
    return v35;
  }

  v22 = *(a4 + 24);
  if (!v22)
  {
    v31 = 5915;
    goto LABEL_59;
  }

  *(DerivedStorage + 40) = CFRetain(v22);
  v23 = *a4;
  if (*a4)
  {
    v23 = CFRetain(v23);
  }

  *(DerivedStorage + 16) = v23;
  v24 = *(a4 + 40);
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  *(DerivedStorage + 56) = v24;
  v25 = *(a4 + 8);
  if (v25)
  {
    v18 = FigPartialSampleTableAccessorCopy(v25, (DerivedStorage + 24));
    if (v18)
    {
      return v18;
    }
  }

  v26 = *(a4 + 32);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  *(DerivedStorage + 48) = v26;
  *(DerivedStorage + 32) = *(a4 + 16);
  *(DerivedStorage + 360) = FigCopyCommonMemoryPool();
  v27 = a6;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  *(DerivedStorage + 376) = v27;
  if (a7)
  {
    v28 = CFRetain(a7);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
  *(DerivedStorage + 368) = v28;
  *a8 = 0;
  return v29;
}

uint64_t __remoteSampleCursor_useEventLink_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  remoteSampleCursor_useEventLink_prefersEventLink = result;
  return result;
}

uint64_t FigServerSampleCursorSubscriptionSubscribe(uint64_t a1)
{
  if (*(a1 + 16))
  {
    FigAtomicIncrement32();
    if (remoteSampleCursor_alwaysEnsureIndependentSubscription_alwaysEnsureIndependentSubscriptionOnce == -1)
    {
      return 0;
    }

    else
    {
      FigServerSampleCursorSubscriptionSubscribe_cold_1();
      return 0;
    }
  }

  else
  {
    FigServerSampleCursorSubscriptionSubscribe_cold_2(&v2);
    return v2;
  }
}

CFMutableDictionaryRef __remoteFigSampleCursor_getVTableWithOptionalMethods_block_invoke()
{
  pthread_rwlock_init(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock, 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary = result;
  return result;
}

uint64_t __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  v2 = *(a2 + 88);
  *(result + 104) = *(a2 + 104);
  *(result + 88) = v2;
  *(result + 112) = *(a2 + 112);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = *(a2 + 128);
  *(result + 136) = *(a2 + 136);
  *(result + 144) = *(a2 + 144);
  *(result + 152) = *(a2 + 152);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = *(a2 + 176);
  *(result + 184) = *(a2 + 184);
  *(result + 192) = *(a2 + 192);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = *(a2 + 208);
  *(result + 216) = *(a2 + 216);
  *(result + 224) = *(a2 + 224);
  *(result + 232) = *(a2 + 232);
  return result;
}

uint64_t __remoteSampleCursor_alwaysEnsureIndependentSubscription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceBooleanWithDefault();
  remoteSampleCursor_alwaysEnsureIndependentSubscription_alwaysEnsureIndependentSubscription = result;
  return result;
}

double __FigServerSampleCursorSubscriptionUnsubscribeViaEventLink_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935893113;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_usePartialSampleTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_4 = result;
  return result;
}

uint64_t remoteSampleCursor_maybeCreateCopiedCursorViaEventLink(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 328);
  if (!v5)
  {
    return 0;
  }

  v7 = *(*DerivedStorage + 32);

  return remoteSampleCursor_finishCopy(a1, v5, v7);
}

double __remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1936944227;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

double __remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935894635;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

double __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935962979;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  if (a3 >= 1)
  {
    v9 = 1;
  }

  v42 = v9;
  v43 = DerivedStorage;
  while (1)
  {
    v10 = v6[3];
    if (!v10)
    {
      break;
    }

    v48 = 0;
    v11 = v10[18];
    v46 = *MEMORY[0x1E6960C70];
    *&v47.value = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    v47.epoch = v12;
    if (a2)
    {
      FigPartialSampleTableAccessorStepInDecodeOrder(v10, a3, &v48);
      if (DecodeTimeRange)
      {
        return DecodeTimeRange;
      }

      if (a3 != v48)
      {
        v14 = *(MEMORY[0x1E6960C98] + 32);
        *&v50[16] = *(MEMORY[0x1E6960C98] + 16);
        *&v50[32] = v14;
        *v50 = *MEMORY[0x1E6960C98];
        DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v6[2], v50, 0);
        if (DecodeTimeRange)
        {
          return DecodeTimeRange;
        }

        if (a3 < 1)
        {
          *&v47.value = *v50;
          epoch = *&v50[16];
        }

        else
        {
          range = *v50;
          CMTimeRangeGetEnd(&v54.start, &range);
          *&v47.value = *&v54.start.value;
          epoch = v54.start.epoch;
        }

        v47.epoch = epoch;
      }
    }

    else
    {
      FigPartialSampleTableAccessorStepInPresentationOrder(v10, a3, &v48, &v47);
      if (DecodeTimeRange)
      {
        return DecodeTimeRange;
      }
    }

    v16 = v48;
    v17 = &v7[*(v6[3] + 144) - v11];
    if (a3 == v48)
    {
      v8 += a3;
      v6[4] += v17;
      break;
    }

    value = v47.value;
    flags = v47.flags;
    timescale = v47.timescale;
    v19 = v47.epoch;
    v20 = CMBaseObjectGetDerivedStorage();
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v21 = *(MEMORY[0x1E6960C98] + 16);
    *&range.start.value = *MEMORY[0x1E6960C98];
    *&range.start.epoch = v21;
    *&range.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    *&v54.start.value = *&range.start.value;
    *&v54.start.epoch = v21;
    *&v54.duration.timescale = *&range.duration.timescale;
    *&start.value = v46;
    start.epoch = v12;
    v45 = v17;
    if (!*(v20 + 48))
    {
LABEL_55:
      v39 = 0;
      v38 = 0;
      value_low = 0;
      goto LABEL_47;
    }

    v22 = v20;
    v23 = *(v20 + 16);
    if (v23)
    {
      if (*(v22 + 24))
      {
        if ((flags & 1) == 0)
        {
          goto LABEL_55;
        }

        SampleCount = FigPartialSampleTableGetDecodeTimeRange(v23, &range, 0);
        if (SampleCount)
        {
          goto LABEL_56;
        }

        v51 = range;
        CMTimeRangeGetEnd(&time2, &v51);
        v51.start.value = value;
        v51.start.timescale = timescale;
        v51.start.flags = flags;
        v51.start.epoch = v19;
        if ((CMTimeCompare(&v51.start, &time2) & 0x80000000) == 0)
        {
          SampleCount = FigPartialSampleTableGetSampleCount(*(v22 + 16), &v56);
          if (!SampleCount)
          {
            v51 = range;
            CMTimeRangeGetEnd(&time2, &v51);
            v51.start.value = value;
            v51.start.timescale = timescale;
            v51.start.flags = flags;
            v51.start.epoch = v19;
            CMTimeRangeFromTimeToTime(&v54, &time2, &v51.start);
            v51 = range;
            CMTimeRangeGetEnd(&start, &v51);
LABEL_26:
            v25 = v56;
            v26 = *(*(v22 + 24) + 144);
            v27 = *(v22 + 48);
            v51 = v54;
            SampleTiming = FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime(v27, &v51, &v59);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            if (!v59)
            {
              v39 = 0;
              v38 = 0;
              value_low = 0;
              v6 = v43;
              goto LABEL_49;
            }

            memset(v50, 0, sizeof(v50));
            SampleTiming = FigPartialSampleTableCreateAccessorAtIndex(v59, 0, &v57);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            v29 = v57;
            time2 = start;
            rhs = *&v50[48];
            CMTimeSubtract(&v51.start, &time2, &rhs);
            FigPartialSampleTableAccessorStepByDecodeTime(v29, &v51.start.value, 0);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            v51.start = *&v50[48];
            time2 = start;
            if (CMTimeCompare(&v51.start, &time2))
            {
              remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_2(&v51);
            }

            else
            {
              v30 = v57;
              v31 = v57[18];
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              time2.epoch = v19;
              rhs = *&v50[48];
              CMTimeSubtract(&v51.start, &time2, &rhs);
              FigPartialSampleTableAccessorStepByDecodeTime(v30, &v51.start.value, 0);
              if (SampleTiming)
              {
                goto LABEL_54;
              }

              SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
              if (SampleTiming)
              {
                goto LABEL_54;
              }

              v51.start = *&v50[48];
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              time2.epoch = v19;
              if (!CMTimeCompare(&v51.start, &time2))
              {
                v32 = v57[18];
                SampleTiming = FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(*(v22 + 48), v59, &v58);
                if (!SampleTiming)
                {
                  v33 = *(v22 + 56);
                  v34 = v58;
                  *(v22 + 56) = v58;
                  if (v34)
                  {
                    CFRetain(v34);
                  }

                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  v35 = *(v22 + 16);
                  v36 = v59;
                  *(v22 + 16) = v59;
                  if (v36)
                  {
                    CFRetain(v36);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  FigPartialSampleTableAccessorDestroy(*(v22 + 24));
                  value_low = 0;
                  *(v22 + 24) = v57;
                  v57 = 0;
                  v38 = &v32[v25 - v31 - v26];
                  v39 = 1;
                  goto LABEL_46;
                }

LABEL_54:
                value_low = SampleTiming;
                v39 = 0;
                v38 = 0;
LABEL_46:
                v6 = v43;
                goto LABEL_47;
              }

              remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_3(&v51);
            }

            v39 = 0;
            v38 = 0;
            value_low = LODWORD(v51.start.value);
            goto LABEL_46;
          }

LABEL_56:
          value_low = SampleCount;
          v39 = 0;
          v38 = 0;
          goto LABEL_47;
        }

        v51.start.value = value;
        v51.start.timescale = timescale;
        v51.start.flags = flags;
        v51.start.epoch = v19;
        time2 = range.start;
        if (CMTimeCompare(&v51.start, &time2) < 0)
        {
          v56 = 0;
          v51.start.value = value;
          v51.start.timescale = timescale;
          v51.start.flags = flags;
          v51.start.epoch = v19;
          time2 = range.start;
          CMTimeRangeFromTimeToTime(&v54, &v51.start, &time2);
          start = range.start;
          goto LABEL_26;
        }

        remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_1(&v51);
      }

      else
      {
        remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_4(&v51);
      }
    }

    else
    {
      remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_5(&v51);
    }

    v39 = 0;
    v38 = 0;
    value_low = LODWORD(v51.start.value);
LABEL_47:
    if (v59)
    {
      CFRelease(v59);
    }

LABEL_49:
    if (v58)
    {
      CFRelease(v58);
    }

    FigPartialSampleTableAccessorDestroy(v57);
    if (value_low)
    {
      return value_low;
    }

    v8 += v16;
    if (!v39)
    {
      break;
    }

    v7 = &v45[v38];
    a3 = a3 - v42 - v16;
    v8 += v42;
  }

  value_low = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return value_low;
}

uint64_t __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke(void *a1, CMBlockBufferRef theBuffer)
{
  v7 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v7, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v7 > 0x197)
    {
      result = 0;
      *(dataPointerOut + 50) = 0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = a1[4];
      v6 = a1[6];
      *(v5 + 1) = a1[5];
      *(v5 + 4) = 1936941671;
      *(v5 + 42) = v6;
      v5[345] = a1[7] != 0;
      v5[344] = a1[8] != 0;
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_3(int64_t *a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "SampleCursorBatchMaxSamplesToInclude", a1[4]);
  xpc_dictionary_set_BOOL(xdict, "SampleCursorBatchRequiresSampleSizeEntries", a1[5] != 0);
  xpc_dictionary_set_BOOL(xdict, "SampleCursorBatchRequiresSampleTimingEntries", a1[6] != 0);
  return 0;
}

__CFString *remoteSampleCursor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = FigCFCopyCompactDescription();
  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigSampleCursorRemote %p ~> %@/+%lld\n\tcache=%@>", a1, v5, *(DerivedStorage + 32), v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t __remoteSampleCursor_copyPropertyViaEventLink_block_invoke(void *a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = a1[4];
      *(v5 + 1) = 0;
      *(v5 + 4) = 1935896697;
      return FigInMemorySerializerAppendCFString();
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2(void *a1, CMBlockBufferRef theBuffer)
{
  dataPointerOut.start.value = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (result)
  {
    return result;
  }

  value = dataPointerOut.start.value;
  result = 4294949526;
  if ((dataPointerOut.start.value & 7) != 0 || lengthAtOffsetOut <= 0x197)
  {
    return result;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2_cold_1(a1, value);
      return LODWORD(dataPointerOut.start.value);
    }

    if (*(value + 344))
    {
      return FigInMemoryDeserializerCopyCFType();
    }

    return 0;
  }

  v5 = *(value + 188);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v6 = *(value + 212);
  if ((v6 & 1) != 0 && !*(value + 216))
  {
    v7 = *(value + 200);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = *(value + 192);
      v9 = *(value + 208);
      v10 = *MEMORY[0x1E695E480];
      dataPointerOut.start.value = *(value + 176);
      dataPointerOut.start.timescale = *(value + 184);
      dataPointerOut.start.flags = v5;
      dataPointerOut.start.epoch = v8;
      dataPointerOut.duration.value = v7;
      dataPointerOut.duration.timescale = v9;
      dataPointerOut.duration.flags = v6;
      dataPointerOut.duration.epoch = 0;
      v11 = CMTimeRangeCopyAsDictionary(&dataPointerOut, v10);
      result = 0;
      *(*(a1[4] + 8) + 24) = v11;
    }
  }

  return result;
}

uint64_t remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(a1 + 16), @"DataSourceURL", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CFURLGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(a1 + 16), @"FormatDescription", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CMFormatDescriptionGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t remoteSampleCursor_copySampleDependencyAttributesFromOutOfBandID(uint64_t a1, uint64_t a2, void *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), a2 - 1);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  *a3 = ValueAtIndex;
  return 0;
}

BOOL __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "SampleCursorDataSourceOutOfBandID");
  if (uint64)
  {
    v6 = uint64;
    if (xpc_dictionary_get_value(xdict, "SampleCursorDataSourceURL"))
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
      if (v7)
      {
        v8 = v7;
        *(*(*(a1 + 32) + 8) + 24) = FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(*(*(a1 + 40) + 40), @"DataSourceURL", v6, v7);
        CFRelease(v8);
      }

      else
      {
        __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_1();
      }
    }

    else
    {
      __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_2();
    }
  }

  else
  {
    __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_3();
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t registerRemoteSampleCursorOutOfBandStorageType()
{
  result = _CFRuntimeRegisterClass();
  qword_1EAF19480 = result;
  return result;
}

uint64_t RemoteSampleCursorOutOfBandStorage_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void RemoteSampleCursorOutOfBandStorage_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *RemoteSampleCursorOutOfBandStorage_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<RemoteSampleCursorOutOfBandStorage %p>", a1);
  return Mutable;
}

uint64_t __remoteSampleCursor_useSampleTableBroker_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CA101 = result;
  return result;
}

uint64_t remoteTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 24);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 28);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_57(int a1, CMBlockBufferRef theBuffer, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *dataPointerOut)
{
  a9 = 0;
  dataPointerOut = 0;

  return CMBlockBufferGetDataPointer(theBuffer, 0, &a9, 0, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_12_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_28_15(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{

  return FigXPCMessageSetCMTimeRange();
}

uint64_t OUTLINED_FUNCTION_52_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return FigXPCConnectionSendAsyncMessage();
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&a9);
}

void *OUTLINED_FUNCTION_54_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return memcpy(va, (v13 + 80), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_55_7(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCConnectionKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_61_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{

  return FigXPCConnectionSendSyncMessageCreatingReply();
}

__n128 OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  result = a18;
  *v18 = a18;
  return result;
}

__n128 OUTLINED_FUNCTION_75_4@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return FigXPCCreateBasicMessage();
}

uint64_t FigTTMLCaptionWriterCreateForDocument(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_2(&v11);
    return v11;
  }

  FigTTMLCaptionWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_1(&v11);
    return v11;
  }

  v7 = Mutable;
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[2] = v7;
  *a3 = 0;
  return v9;
}

void figTTMLCaptionWriterForDocument_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t FigMetadataReaderCreateForUserDataBlockBuffer(uint64_t a1, char a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a3)
  {
    FigMetadataReaderCreateForUserDataBlockBuffer_cold_2(&v9);
    return v9;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForUserDataBlockBuffer_cold_1(&v9);
    return v9;
  }

  FigMetadataReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFGetAllocator(0);
    v6 = CMByteStreamCreateForBlockBuffer();
    if (!v6)
    {
      *DerivedStorage = CFRetain(0);
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 16) = a2;
      *a4 = 0;
    }
  }

  return v6;
}

uint64_t FigMetadataReaderCreateForUserDataArray(uint64_t a1, char a2, const void *a3, CFTypeRef *a4)
{
  if (!a3)
  {
    FigMetadataReaderCreateForUserDataArray_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForUserDataArray_cold_1(&v10);
    return v10;
  }

  FigMetadataReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a3);
    *(DerivedStorage + 8) = a2;
    *a4 = 0;
  }

  return v7;
}

void FigUserDataFinalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *FigUserDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigUserDataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, userdataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigUserDataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    if (*(DerivedStorage + 16))
    {
      v7 = &kFigMetadataFormat_QuickTimeUserData;
    }

    else
    {
      v7 = &kFigMetadataFormat_ISOUserData;
    }

    goto LABEL_7;
  }

  return 4294954512;
}