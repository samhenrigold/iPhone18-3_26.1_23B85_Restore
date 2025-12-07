CFTypeRef ProduceUsesAudibleDRMTrackProperty(uint64_t a1, void *a2)
{
  v9 = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || ((v6 = v5(v4, @"UsesAudibleDRM", *MEMORY[0x1E695E480], &v9), result = v9, !v6) ? (v8 = v9 == 0) : (v8 = 1), v8))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

CFTypeRef ProduceAudibleContentIsAuthorizedTrackProperty(uint64_t a1, void *a2)
{
  v9 = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || ((v6 = v5(v4, @"AudibleContentIsAuthorized", *MEMORY[0x1E695E480], &v9), result = v9, !v6) ? (v8 = v9 == 0) : (v8 = 1), v8))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

CFDictionaryRef ProduceMinSampleDurationTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || (result = v6(v5, @"MinSampleDuration", v3, a2), result) || !*a2)
  {
    v8 = **&MEMORY[0x1E6960C70];
    result = CMTimeCopyAsDictionary(&v8, v3);
    *a2 = result;
  }

  return result;
}

CFNumberRef ProduceAlternateGroupIDTrackPropertyByKey(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || (result = v8(v7, a2, v5, a3), result) || !*a3)
  {
    valuePtr = 0;
    result = CFNumberCreate(v5, kCFNumberSInt16Type, &valuePtr);
    *a3 = result;
  }

  return result;
}

CFNumberRef ProduceAssetTrackCameraRollValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_CameraRoll", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef ProduceAssetTrack_MediaPlaybackValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_MediaPlayback", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef ProduceAssetTrack_MediaDecodingValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_MediaDecoding", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

uint64_t ProduceAssetTrack_ContainsWideColor(uint64_t a1, CFTypeRef *a2)
{
  v3 = *MEMORY[0x1E695E4C0];
  theArray = 0;
  v15 = 0;
  v4 = *(a1 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5(v4, 0, &v15);
  if (!v6)
  {
    if (v15 != 1986618469)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_13;
    }

    FigTrackReaderGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v6 = v9(v8, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
      if (!v6)
      {
        if (!theArray)
        {
          v13 = 0;
          goto LABEL_15;
        }

        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(theArray, v12);
            if (FigVideoFormatDescriptionContainsWideColor())
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }

          v13 = 0;
          v3 = *MEMORY[0x1E695E4D0];
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_12:
    v13 = 4294954514;
    goto LABEL_13;
  }

LABEL_18:
  v13 = v6;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_15:
  *a2 = CFRetain(v3);
  return v13;
}

uint64_t ProduceAssetTrackLatentBaseDecodeTimeStampOfFirstTrackFragment(uint64_t a1, void *a2)
{
  v7 = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    result = v5(v4, @"LatentBaseDecodeTimeStampOfFirstTrackFragment", *MEMORY[0x1E695E480], &v7);
    v5 = v7;
  }

  else
  {
    result = 4294954514;
  }

  *a2 = v5;
  return result;
}

void SpecificTrackReferenceApplierFunction(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  v6 = CFArrayGetCount(theArray) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >= 1)
  {
    Mutable = 0;
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (CFEqual(*a3, ValueAtIndex))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v9, 0, v10);
        }

        v12 = CFArrayGetValueAtIndex(theArray, v8 + 1);
        CFArrayAppendValue(Mutable, v12);
      }

      v8 += 2;
    }

    while (v8 < v6);
    if (Mutable)
    {
      v13 = *(a3 + 8);
      if (!v13)
      {
        v13 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a3 + 8) = v13;
      }

      CFDictionaryAddValue(v13, a1, Mutable);

      CFRelease(Mutable);
    }
  }
}

uint64_t FigCodecTypeIsProtected(int a1)
{
  result = 1;
  if (a1 <= 1902207794)
  {
    if (a1 <= 1685220712)
    {
      if (a1 <= 1667524656)
      {
        if (a1 <= 1667326823)
        {
          if (a1 == 1633771875 || a1 == 1667312947)
          {
            return result;
          }

          v4 = 24931;
        }

        else if (a1 > 1667330146)
        {
          if (a1 == 1667330147)
          {
            return result;
          }

          v4 = 30307;
        }

        else
        {
          if (a1 == 1667326824)
          {
            return result;
          }

          v4 = 25456;
        }

        v5 = v4 | 0x63610000;
        goto LABEL_81;
      }

      if (a1 <= 1667656802)
      {
        if (a1 != 1667524657 && a1 != 1667574579)
        {
          v5 = 1667575091;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1668047202)
      {
        if (a1 == 1668047203)
        {
          return result;
        }

        v5 = 1668641633;
      }

      else
      {
        if (a1 == 1667656803)
        {
          return result;
        }

        v5 = 1667790435;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885430578)
    {
      if (a1 <= 1701733237)
      {
        if (a1 != 1685220713 && a1 != 1700886115)
        {
          v5 = 1701733217;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1882599479)
      {
        if (a1 == 1882599480)
        {
          return result;
        }

        v5 = 1885430115;
      }

      else
      {
        if (a1 == 1701733238)
        {
          return result;
        }

        v5 = 1869117027;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885547314)
    {
      v8 = a1 - 1885430579;
      if (v8 > 0x3D || ((1 << v8) & 0x2020000000000001) == 0)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1886745440)
    {
      if (a1 == 1885547315)
      {
        return result;
      }

      v5 = 1885692723;
      goto LABEL_81;
    }

    if (a1 == 1886745441)
    {
      return result;
    }

    v6 = 24931;
LABEL_73:
    v5 = v6 | 0x71610000;
    goto LABEL_81;
  }

  if (a1 <= 1902667125)
  {
    if (a1 > 1902324530)
    {
      if (a1 <= 1902405732)
      {
        if (a1 == 1902324531 || a1 == 1902403958)
        {
          return result;
        }

        v7 = 26673;
      }

      else
      {
        if (a1 > 1902469938)
        {
          if (a1 == 1902469939)
          {
            return result;
          }

          v5 = 1902537827;
          goto LABEL_81;
        }

        if (a1 == 1902405733)
        {
          return result;
        }

        v7 = 28024;
      }

      v5 = v7 | 0x71640000;
      goto LABEL_81;
    }

    if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0 || (a1 - 1902212657) <= 0x34 && ((1 << (a1 - 49)) & 0x14000000000001) != 0)
    {
      return result;
    }

    v6 = 28771;
    goto LABEL_73;
  }

  if (a1 <= 2053202738)
  {
    if (a1 <= 1902998903)
    {
      if (a1 != 1902667126 && a1 != 1902671459)
      {
        v5 = 1902928227;
        goto LABEL_81;
      }

      return result;
    }

    if (a1 > 1903587384)
    {
      if (a1 == 1903587385)
      {
        return result;
      }

      v3 = 24931;
      goto LABEL_76;
    }

    if (a1 == 1902998904)
    {
      return result;
    }

    v5 = 1903522657;
LABEL_81:
    if (a1 == v5)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2053319474)
  {
    if (a1 > 2053923170)
    {
      if (a1 == 2053923171)
      {
        return result;
      }

      v5 = 2054517601;
    }

    else
    {
      if (a1 == 2053319475)
      {
        return result;
      }

      v5 = 2053464883;
    }

    goto LABEL_81;
  }

  if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 30307;
LABEL_76:
    v5 = v3 | 0x7A610000;
    goto LABEL_81;
  }

  return result;
}

void BuildPropertyDependencyDictionary()
{
  v69 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9E8];
  qword_1ED4CB8B0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = @"PreferredRate";
  v2 = MEMORY[0x1E695E9C0];
  v3 = CFArrayCreate(v0, &values, 1, MEMORY[0x1E695E9C0]);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredRate", v3);
  CFRelease(v3);
  values = @"PreferredVolume";
  v4 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredVolume", v4);
  CFRelease(v4);
  values = @"MovieMatrix";
  v5 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredTransform", v5);
  CFRelease(v5);
  values = @"TrackReferenceDictionary";
  v6 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_TrackReferences", v6);
  CFRelease(v6);
  values = @"AlternateGroupArray";
  v7 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_AlternateTrackGroups", v7);
  CFRelease(v7);
  values = @"MetadataReaders";
  v8 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_AvailableMetadataFormats", v8);
  CFRelease(v8);
  values = @"QuickTimeMetadataReader";
  v66 = @"iTunesMetadataReader";
  v67 = @"QuickTimeUserDataReader";
  v68 = @"ISOUserDataReader";
  v9 = CFArrayCreate(v0, &values, 4, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_CommonMetadata", v9);
  CFRelease(v9);
  values = @"QuickTimeUserDataReader";
  v10 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_QuickTimeUserData", v10);
  CFRelease(v10);
  values = @"iTunesMetadataReader";
  v11 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_iTunesMetadata", v11);
  CFRelease(v11);
  values = @"QuickTimeMetadataReader";
  v12 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_QuickTimeMetadata", v12);
  CFRelease(v12);
  values = @"ISOUserDataReader";
  v13 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ISOUserData", v13);
  CFRelease(v13);
  values = @"FormatSpecificMetadataReader";
  v14 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_FormatSpecificMetadata", v14);
  CFRelease(v14);
  values = @"FormatDescriptionsChanged";
  v15 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ProtectedStatus", v15);
  CFRelease(v15);
  values = @"AlternateGroupAssignmentsArray";
  v66 = @"TrackReferenceDictionary";
  v16 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"MediaSelectionArray", v16);
  CFRelease(v16);
  values = @"FormatDescriptionsChanged";
  v66 = @"EnabledTracksChanged";
  v17 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_MediaPlaybackValidation", v17);
  CFRelease(v17);
  values = @"FormatDescriptionsChanged";
  v66 = @"EnabledTracksChanged";
  v18 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_CameraRollValidation", v18);
  CFRelease(v18);
  values = @"ContainsChapters";
  v19 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ChapterGroupInfo", v19);
  CFRelease(v19);
  values = @"FragmentCount";
  v20 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_FragmentCount", v20);
  CFRelease(v20);
  sAssetTrackPropertyDependencies = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], v1);
  values = @"TrackFormatDescriptionArray";
  v21 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"FormatDescriptionArray", v21);
  CFRelease(v21);
  values = @"TrackEnabled";
  v22 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsEnabled", v22);
  CFRelease(v22);
  values = @"TrackIsSelfContained";
  v23 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsSelfContained", v23);
  CFRelease(v23);
  values = @"UneditedNumDataBytes";
  v24 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TotalSampleDataLength", v24);
  CFRelease(v24);
  values = @"UneditedTrackDuration";
  v66 = @"EditCursorService";
  v25 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TimeRange", v25);
  CFRelease(v25);
  values = @"UneditedSampleCount";
  v26 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaPresentationTimeRange", v26);
  CFRelease(v26);
  values = @"UneditedSampleCount";
  v27 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaDecodeTimeRange", v27);
  CFRelease(v27);
  values = @"EstimatedDataRate";
  v28 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"EstimatedDataRate", v28);
  CFRelease(v28);
  values = @"PeakDataRate";
  v29 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"PeakDataRate", v29);
  CFRelease(v29);
  values = @"UneditedSampleCount";
  v30 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"UneditedSampleCount", v30);
  CFRelease(v30);
  values = @"HasRollInformation";
  v31 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HasRollInformation", v31);
  CFRelease(v31);
  values = @"TrackLanguageCode";
  v32 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"LanguageCode", v32);
  CFRelease(v32);
  values = @"QuickTimeUserDataReader";
  v66 = @"ISOUserDataReader";
  v67 = @"TrackExcludeFromAutoSelection";
  v33 = CFArrayCreate(v0, &values, 3, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaCharacteristicArray", v33);
  CFRelease(v33);
  values = @"ExtendedLanguageTagString";
  v34 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ExtendedLanguageTag", v34);
  CFRelease(v34);
  values = @"CleanApertureDimensions";
  v66 = @"TrackDimensions";
  v35 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"NaturalSize", v35);
  CFRelease(v35);
  values = @"TrackDimensions";
  v36 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TrackDimensions", v36);
  CFRelease(v36);
  values = @"CleanApertureDimensions";
  v37 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"CleanApertureDimensions", v37);
  CFRelease(v37);
  values = @"ProductionApertureDimensions";
  v38 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ProductionApertureDimensions", v38);
  CFRelease(v38);
  values = @"EncodedPixelsDimensions";
  v39 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"EncodedPixelsDimensions", v39);
  CFRelease(v39);
  values = @"TrackMatrix";
  v40 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"PreferredTransform", v40);
  CFRelease(v40);
  values = @"NominalFrameRate";
  v41 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"NominalFrameRate", v41);
  CFRelease(v41);
  values = @"QuickTimeMetadataReader";
  v42 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_QuickTimeMetadata", v42);
  CFRelease(v42);
  values = @"QuickTimeUserDataReader";
  v43 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_QuickTimeUserData", v43);
  CFRelease(v43);
  values = @"ISOUserDataReader";
  v44 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_ISOUserData", v44);
  CFRelease(v44);
  values = @"QuickTimeMetadataReader";
  v66 = @"QuickTimeUserDataReader";
  v67 = @"ISOUserDataReader";
  v68 = @"FormatSpecificMetadataReader";
  v45 = CFArrayCreate(v0, &values, 4, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"CommonMetadata", v45);
  CFRelease(v45);
  values = @"FormatSpecificMetadataReader";
  v46 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_FormatSpecificMetadata", v46);
  CFRelease(v46);
  values = @"FormatSpecificMetadataReader";
  v47 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_FormatSpecificMetadataFormat", v47);
  CFRelease(v47);
  values = @"MetadataReaders";
  v48 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"AvailableMetadataFormats", v48);
  CFRelease(v48);
  values = @"TrackExcludeFromAutoSelection";
  v49 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsExcludedFromAutoselection", v49);
  CFRelease(v49);
  values = @"Volume";
  v50 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"Volume", v50);
  CFRelease(v50);
  values = @"TrackLayer";
  v51 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"Layer", v51);
  CFRelease(v51);
  values = @"TrackReferencesChanged";
  v52 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_TrackReferences", v52);
  CFRelease(v52);
  values = @"TrackFormatDescriptionArray";
  v53 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_ProtectedStatus", v53);
  CFRelease(v53);
  values = @"MinSampleDuration";
  v54 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MinSampleDuration", v54);
  CFRelease(v54);
  values = @"AlternateGroupID";
  v55 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"AlternateGroupID", v55);
  CFRelease(v55);
  values = @"DefaultAlternateGroupID";
  v56 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"DefaultAlternateGroupID", v56);
  CFRelease(v56);
  values = @"ProvisionalAlternateGroupID";
  v57 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ProvisionalAlternateGroupID", v57);
  CFRelease(v57);
  values = @"TrackQTLoadSettings";
  v58 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"LoadSettings", v58);
  CFRelease(v58);
  values = @"SampleGroupDescriptions";
  v59 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"SampleGroupDescriptions", v59);
  CFRelease(v59);
  values = @"HEVCTemporalLevelInfoCombinations";
  v60 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HEVCTemporalLevelInfoCombinations", v60);
  CFRelease(v60);
  values = @"HEVCSyncSampleNALUnitTypes";
  v61 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HEVCSyncSampleNALUnitTypes", v61);
  CFRelease(v61);
  values = @"TrackFormatDescriptionArray";
  v62 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_CameraRollValidation", v62);
  CFRelease(v62);
  values = @"TrackFormatDescriptionArray";
  v63 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_MediaPlaybackValidation", v63);
  CFRelease(v63);
  values = @"TrackFormatDescriptionArray";
  v64 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_MediaDecodingValidation", v64);
  CFRelease(v64);
}

void ReviseSegmentDataAssetTrackProperties(uint64_t *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 5);
  if (v2)
  {
    v3 = v2;
    cf = 0;
    if (!FigTrackReaderCreateSegmentData(a1[2], a1[3], 0, &cf))
    {
      ReviseProperty(v3, @"assetTrackProperty_EditSegmentData", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (!FigTrackReaderCreateSegmentData(a1[2], a1[3], 1, &cf))
    {
      ReviseProperty(v3, @"assetTrackProperty_PresentationSegmentData", cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

void __AssetTrackMutationMonitoringNotificationCallback_block_invoke(CFTypeRef *a1)
{
  context = a1[4];
  v3 = *(a1 + 5);
  CFDictionaryApplyFunction(*(v3 + 72), AssessMonitoredAssetTrackPropertyChange, &context);
  CFRelease(a1[4]);
  CFRelease(a1[5]);
  CFRelease(a1[6]);
}

void AssessMonitoredAssetTrackPropertyChange(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (CFDictionaryContainsKey(*a3, ValueAtIndex))
      {
        break;
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    v10 = *(a3 + 8);
    v11 = *(a3 + 16);
    v13 = 0;
    if (!ProduceAssetTrackProperty(v10, a1, &v13))
    {
      v12 = v13;
      ReviseProperty(v11, a1, v13);
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }
}

uint64_t EnsureChapterGroupInfoCreated(void *a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  if (*(a2 + 112))
  {
    v11 = 0;
    v4 = 4294954511;
  }

  else
  {
    if (*(a2 + 316))
    {
      return *(a2 + 320);
    }

    v5 = EnsureFormatReaderCreated(a1, a2);
    if (v5)
    {
      v4 = v5;
      v11 = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v7 = Mutable;
        if (!FCSupport_GetListOfChapterTitleTrackIDs(*(a2 + 240), &v15, &v16, 0))
        {
          if (v15 >= 1)
          {
            v8 = 0;
            do
            {
              v9 = AddChapterTrackInfoToArray(a2, *(v16 + v8), @"title", v7);
              if (v9)
              {
                goto LABEL_28;
              }
            }

            while (++v8 < v15);
          }

          free(v16);
          v15 = 0;
          v16 = 0;
        }

        if (!FCSupport_GetListOfChapterImageTrackIDs(*(a2 + 240), &v15, &v16, 0))
        {
          if (v15 >= 1)
          {
            v10 = 0;
            while (1)
            {
              v9 = AddChapterTrackInfoToArray(a2, *(v16 + v10), @"artwork", v7);
              if (v9)
              {
                break;
              }

              if (++v10 >= v15)
              {
                goto LABEL_17;
              }
            }

LABEL_28:
            v4 = v9;
            free(v16);
            CFRelease(v7);
            *(a2 + 316) = 1;
            *(a2 + 320) = v4;
            goto LABEL_22;
          }

LABEL_17:
          free(v16);
          v16 = 0;
        }

        if (!CFArrayGetCount(v7))
        {
          CFRelease(v7);
          v7 = 0;
        }

        v4 = 0;
        *(a2 + 328) = v7;
        v11 = v16;
      }

      else
      {
        EnsureChapterGroupInfoCreated_cold_1(&v17);
        v11 = 0;
        v4 = v17;
      }
    }
  }

  free(v11);
  *(a2 + 316) = 1;
  *(a2 + 320) = v4;
  if (v4)
  {
LABEL_22:
    Error = AssetCopyLoadError(a2, v4);
    v13 = *(a2 + 320);
    goto LABEL_24;
  }

  v13 = 0;
  Error = 0;
LABEL_24:
  StoreByProduct(a1, @"assetProperty_ChapterGroupInfo", v13, Error, *(a2 + 328));
  if (Error)
  {
    CFRelease(Error);
  }

  return v4;
}

void PerformCompleteChapterJob(CFTypeRef *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v11 = 0;
  keys[0] = @"assetPayload_ChapterGroupIndex";
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a1 + 3);
  keys[1] = @"assetPayload_ChapterIndex";
  cf = CFNumberCreate(v2, kCFNumberSInt32Type, a1 + 28);
  keys[2] = @"assetPayload_ChapterCount";
  v8 = CFNumberCreate(v2, kCFNumberSInt32Type, a1 + 4);
  if (*a1)
  {
    v11 = @"assetPayload_Result";
    v3 = CFNumberCreate(v2, kCFNumberSInt32Type, a1);
  }

  else
  {
    v11 = @"assetPayload_ChapterData";
    v3 = a1[5];
    if (v3)
    {
      v3 = CFRetain(v3);
    }
  }

  v9 = v3;
  v4 = CFDictionaryCreate(v2, keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v4)
  {
    CFRelease(v4);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(a1[1]);
  CFRelease(a1[2]);
  free(a1);
}

void MultiTrackBatchNotificationCallback(int a1, uint64_t a2, int a3, const void *a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"assetPayload_BatchID");
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v8 = CFDictionaryGetValue(*(a2 + 56), a4);
  if (v8)
  {
    if (*v8 == valuePtr)
    {
      dispatch_group_leave(*(a2 + 40));
    }
  }
}

uint64_t StreamingAssetCopyMaximumVideoResolution(uint64_t a1, CFDictionaryRef *a2)
{
  theDict = 0;
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(v4, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict))
  {
    StreamingAssetCopyMaximumVideoResolution_cold_2();
LABEL_16:
    v19 = v22;
    goto LABEL_17;
  }

  if (!theDict)
  {
    StreamingAssetCopyMaximumVideoResolution_cold_1(&v22);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
  if (Value && (v7 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v9 = Count;
    v11 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    v12 = 0.0;
    v13 = 1;
    do
    {
      while (1)
      {
        v14 = v9 - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9 - 1);
        Resolution = FigAlternateGetResolution(ValueAtIndex);
        if (Resolution * v17 <= v12)
        {
          break;
        }

        v13 = 0;
        v10 = v17;
        v11 = Resolution;
        v12 = Resolution * v17;
        if (v9-- <= 1)
        {
          goto LABEL_14;
        }
      }

      --v9;
    }

    while (v14 + 1 > 1);
    Resolution = v11;
    v17 = v10;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_14:
    v19 = 0;
    *a2 = CGSizeCreateDictionaryRepresentation(*&Resolution);
  }

  else
  {
LABEL_13:
    v19 = 4294954513;
  }

LABEL_17:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v19;
}

uint64_t StreamingAssetCopyAvailableVideoDynamicRanges(uint64_t a1, CFMutableArrayRef *a2)
{
  theDict = 0;
  if (!a2)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_3(&v19);
    return v19;
  }

  if (!a1)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_2(&v19);
    Mutable = 0;
LABEL_20:
    v10 = v19;
    goto LABEL_14;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_1(&v19);
    goto LABEL_20;
  }

  FigBytePumpGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, 0x1F0B1EE98, v3, &theDict);
    if (!v8)
    {
      if (!theDict)
      {
        v10 = 0;
        *a2 = Mutable;
        return v10;
      }

      Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
      v10 = Value;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v12 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v12 - 2);
            VideoQualityIndex = FigAlternateGetVideoQualityIndex(ValueAtIndex, v14);
            FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(VideoQualityIndex);
            FigCFArrayAppendInt32();
            --v12;
          }

          while (v12 > 1);
        }

        v10 = 0;
      }

      goto LABEL_14;
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_14:
  v16 = theDict;
  *a2 = Mutable;
  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

uint64_t StreamingAssetCopySessionKeys(uint64_t a1, CFArrayRef *a2)
{
  theArray = 0;
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(v4, 0x1F0B1F718, *MEMORY[0x1E695E480], &theArray);
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v7 = theArray;
      if (!Count)
      {
        if (theArray)
        {
          CFRelease(theArray);
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = -12782;
  }

  if (v6 >> 1 == 2147477256)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  *a2 = v7;
  return v9;
}

uint64_t ProduceProtectedStatusProperty(void *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = MEMORY[0x1E695E4D0];
  if (*(a2 + 352))
  {
    v6 = 0;
  }

  else
  {
    v30 = 0;
    v7 = EnsureFormatReaderCreated(a1, a2);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v8 = *(a2 + 240);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v6 = v9(v8, &v30);
        if (!v6)
        {
          if (!*(a2 + 353))
          {
            v15 = 0;
            v16 = *MEMORY[0x1E695E480];
            while (v15 < v30)
            {
              theArray = 0;
              cf = 0;
              v17 = *(a2 + 240);
              v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (v18)
              {
                v6 = v18(v17, v15, &cf, 0, 0);
                if (!v6)
                {
                  FigTrackReaderGetFigBaseObject();
                  v20 = v19;
                  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v21)
                  {
                    v6 = v21(v20, @"TrackFormatDescriptionArray", v16, &theArray);
                    if (v6)
                    {
                      v22 = 1;
                    }

                    else
                    {
                      v22 = theArray == 0;
                    }

                    if (!v22)
                    {
                      Count = CFArrayGetCount(theArray);
                      if (Count >= 1)
                      {
                        v24 = Count;
                        for (i = 0; i != v24; ++i)
                        {
                          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                          if (FigCPEIsSupportedFormatDescription(ValueAtIndex))
                          {
                            *(a2 + 353) = 1;
                          }

                          MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
                          if (FigCodecTypeIsProtected(MediaSubType))
                          {
                            *(a2 + 353) = 1;
                          }
                        }
                      }

                      v6 = 0;
                    }
                  }

                  else
                  {
                    v6 = 4294954514;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }
              }

              else
              {
                v6 = 4294954514;
              }

              if (theArray)
              {
                CFRelease(theArray);
              }

              if (!v6)
              {
                ++v15;
                if (!*(a2 + 353))
                {
                  continue;
                }
              }

              goto LABEL_9;
            }
          }

          v6 = 0;
        }
      }

      else
      {
        v6 = 4294954514;
      }

LABEL_9:
      if (!*(a2 + 353))
      {
        cf = 0;
        FigFormatReaderGetFigBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          if (!v14(v13, @"IndicatesContentProtection", *MEMORY[0x1E695E480], &cf) && cf == *v5)
          {
            *(a2 + 353) = 1;
          }
        }
      }

      *(a2 + 352) = 1;
    }
  }

  if (*(a2 + 353))
  {
    v10 = v5;
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  *a3 = CFRetain(*v10);
  return v6;
}

uint64_t ProduceSHA1DigestProperty(void *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 112))
  {
    v6 = 4294954511;
LABEL_17:
    *(a2 + 196) = 1;
    *(a2 + 200) = v6;
    goto LABEL_7;
  }

  if (*(a2 + 196))
  {
    v6 = *(a2 + 200);
    goto LABEL_12;
  }

  v7 = EnsureContentStreamCreated(a1, a2);
  if (v7)
  {
    v6 = v7;
    goto LABEL_17;
  }

  if (*(a2 + 160))
  {
    v6 = FigByteStreamCopySHA1Digest();
    *(a2 + 208) = 0;
    *(a2 + 196) = 1;
    *(a2 + 200) = v6;
    if (v6)
    {
LABEL_7:
      Error = AssetCopyLoadError(a2, v6);
      v9 = *(a2 + 200);
      goto LABEL_10;
    }

    v9 = 0;
    Error = 0;
  }

  else
  {
    v9 = 0;
    v6 = 0;
    Error = 0;
    *(a2 + 196) = 1;
    *(a2 + 200) = 0;
  }

LABEL_10:
  StoreByProduct(a1, @"assetProperty_SHA1Digest", v9, Error, *(a2 + 208));
  if (Error)
  {
    CFRelease(Error);
  }

LABEL_12:
  v10 = *(a2 + 208);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *a3 = v10;
  return v6;
}

CFTypeRef ProduceAssetCompatibleWithAirPlayVideoProperty(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 64) != 1431456810 || (ProduceAssetCompatibleWithAirPlayVideoProperty_cold_1() & 1) != 0)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  result = CFRetain(*v4);
  *a3 = result;
  return result;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty(void *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v21 = 0;
  if (!a3)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_4(&v20);
    return v20;
  }

  if (!a2)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_3(&v20);
    Mutable = 0;
LABEL_29:
    v17 = v20;
    goto LABEL_24;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_2(&v20);
    goto LABEL_29;
  }

  v8 = EnsureFormatReaderCreated(a1, a2);
  if (v8)
  {
LABEL_30:
    v17 = v8;
    goto LABEL_23;
  }

  v9 = *(a2 + 240);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v8 = v10(v9, &v21);
    if (!v8)
    {
      if (v21 >= 1)
      {
        v11 = 0;
        while (1)
        {
          cf = 0;
          v20 = 0;
          v12 = *(a2 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v13)
          {
            goto LABEL_16;
          }

          if (v13(v12, v11, 1986618469, &v20, 0))
          {
            goto LABEL_16;
          }

          if (!v20)
          {
            goto LABEL_16;
          }

          FigTrackReaderGetFigBaseObject();
          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v16 || v16(v15, @"TrackFormatDescriptionArray", v6, &cf))
          {
            goto LABEL_16;
          }

          if (cf)
          {
            break;
          }

LABEL_18:
          if (v20)
          {
            CFRelease(v20);
          }

          if (++v11 >= v21)
          {
            goto LABEL_21;
          }
        }

        ProduceAvailableVideoDynamicRangesProperty_cold_1();
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }

LABEL_21:
      v17 = 0;
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v17 = 4294954514;
LABEL_23:
  CFRelease(Mutable);
  Mutable = 0;
LABEL_24:
  *a3 = Mutable;
  return v17;
}

uint64_t ProduceNominalVideoFrameRateProperty(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t *))
{
  v28 = 0;
  v27 = 0.0;
  if (a3)
  {
    if (a2)
    {
      result = EnsureFormatReaderCreated(a1, a2);
      if (result)
      {
        goto LABEL_46;
      }

      v6 = *(a2 + 240);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v7)
      {
        result = 4294954514;
        goto LABEL_43;
      }

      result = v7(v6, &v28);
      if (result)
      {
LABEL_46:
        v7 = 0;
        goto LABEL_43;
      }

      v8 = *MEMORY[0x1E695E480];
      if (v28 >= 1)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E4D0];
        v11 = 0.0;
        while (1)
        {
          cf = 0;
          v26 = 0;
          v12 = *(a2 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v13)
          {
            goto LABEL_33;
          }

          if (v13(v12, v9, 1986618469, &v26, 0))
          {
            goto LABEL_33;
          }

          if (!v26)
          {
            goto LABEL_33;
          }

          FigTrackReaderGetFigBaseObject();
          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v16 || v16(v15, @"TrackEnabled", v8, &cf))
          {
            goto LABEL_33;
          }

          v17 = cf;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v10 != v17)
          {
            goto LABEL_33;
          }

          valuePtr = 0.0;
          FigTrackReaderGetFigBaseObject();
          v19 = v18;
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v20)
          {
            goto LABEL_31;
          }

          if (v20(v19, @"NominalFrameRate", v8, &cf))
          {
            goto LABEL_31;
          }

          CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
          v21 = valuePtr;
          if (valuePtr == 0.0)
          {
            goto LABEL_31;
          }

          if (v11 != 0.0)
          {
            break;
          }

          v27 = valuePtr;
          v22 = valuePtr;
LABEL_32:
          v11 = v22;
LABEL_33:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (++v9 >= v28)
          {
            goto LABEL_40;
          }
        }

        if (vabds_f32(v11, valuePtr) > 0.01)
        {
          if (v11 <= valuePtr)
          {
            v22 = valuePtr;
          }

          else
          {
            v22 = v11;
          }

          if (v11 < valuePtr)
          {
            v21 = v11;
          }

          if (fabsf(v22 + (v21 * -2.0)) >= 0.01 && fabsf(v22 + (v21 * -3.0)) >= 0.01 && fabsf(v22 + (v21 * -4.0)) >= 0.01)
          {
            v27 = 0.0;
            v22 = 0.0;
            v9 = v28;
          }

          else
          {
            v27 = v22;
          }

          goto LABEL_32;
        }

LABEL_31:
        v22 = v11;
        goto LABEL_32;
      }

LABEL_40:
      v23 = CFNumberCreate(v8, kCFNumberFloatType, &v27);
      if (v23)
      {
        v7 = v23;
        result = 0;
LABEL_43:
        *a3 = v7;
        return result;
      }

      ProduceNominalVideoFrameRateProperty_cold_1(&v26);
    }

    else
    {
      ProduceNominalVideoFrameRateProperty_cold_2(&v26);
    }

    v7 = 0;
    result = v26;
    goto LABEL_43;
  }

  ProduceNominalVideoFrameRateProperty_cold_3(&v26);
  return v26;
}

void BuildMetadataFilterDictionaries()
{
  v9 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E74941E0;
  v8 = @"key_ostype";
  v0 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  values = @"udta";
  v5 = @"meta";
  v6 = SInt32;
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  qword_1ED4CB8C0 = CFDictionaryCreate(v0, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = @"uiso";
  v5 = @"meta";
  v6 = SInt32;
  qword_1ED4CB8C8 = CFDictionaryCreate(v0, keys, &values, 3, v2, v3);
  values = @"mdta";
  v5 = @"com.apple.quicktime.aime-data";
  qword_1ED4CB8D0 = CFDictionaryCreate(v0, keys, &values, 2, v2, v3);
  if (SInt32)
  {
    CFRelease(SInt32);
  }
}

uint64_t IsNotOnFilterOutKeyList(const __CFDictionary *a1, const __CFArray *a2)
{
  CFDictionaryGetValue(a1, @"keyspace");
  Value = CFDictionaryGetValue(a1, @"key");
  if (!a2)
  {
    return 1;
  }

  v5 = Value;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    return 1;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    CFDictionaryGetValue(ValueAtIndex, @"keyspace");
    if (FigCFEqual())
    {
      if (v5 && (v10 = CFGetTypeID(v5), v10 == CFNumberGetTypeID()))
      {
        v11 = ValueAtIndex;
        v12 = @"key_ostype";
      }

      else
      {
        v11 = ValueAtIndex;
        v12 = @"key_string";
      }

      CFDictionaryGetValue(v11, v12);
      if (FigCFEqual())
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_10_61(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

void OUTLINED_FUNCTION_14_53(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, BuildPropertyDependencyDictionary);
}

uint64_t OUTLINED_FUNCTION_18_41(uint64_t a1)
{
  *(v1 - 32) = 0;
  *(v1 - 24) = 0;
  *(v1 - 48) = 0;
  *(v1 - 40) = 0;
  *(v1 - 64) = 0;
  *(v1 - 56) = 0;
  *(v1 - 96) = 0;
  *(v1 - 88) = 0;
  *(v1 - 80) = 0;

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_19_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, __int128 a35)
{
  *(v35 + 176) = a33;
  *(v35 + 192) = a34;
  *(v35 + 208) = a35;
  return *(v35 + 32);
}

CMTime *OUTLINED_FUNCTION_22_33@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, CMTime *time, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;
  v19 = v16[1];
  v16[11] = *v16;
  v16[12] = v19;
  v16[13] = v16[2];

  return CMTimeClampToRange(&a8, &timea, (v17 - 160));
}

__n128 OUTLINED_FUNCTION_27_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, uint64_t a17)
{
  result = a16;
  v17[11] = a16;
  *(v18 - 144) = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_27()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_30_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *(v8 + 88);
  v12 = *(v8 + 336);
  v13 = *v9;

  return FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v13, v11, v12, va);
}

__n128 OUTLINED_FUNCTION_37_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, uint64_t a17)
{
  result = a16;
  v17[8] = a16;
  *(v18 - 192) = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_23()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_43_19(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t audioRendererRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioRendererRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      audioRendererRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  if (a3)
  {
    v6 = 0;
    do
    {
      result = FigSampleBufferAudioRendererCreateRemoteWithOptions(a1, a2, &v10);
    }

    while ((result == -16155 || result == -16384) && v6++ < 4);
    if (!result)
    {
      *a3 = v10;
    }
  }

  else
  {
    FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry_cold_1(&v11);
    return v11;
  }

  return result;
}

void __audioRendererRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  FigCFDictionarySetInt32();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

_BYTE *audioRendererRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

uint64_t audioRendererRemote_notificationFilter(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    *(DerivedStorage + 1) = 1;
  }

  return 0;
}

void __audioRendererRemote_handleCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 48));
    if (Value)
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *Value;
      *(v4 + 40) = Value[2];
      *(v4 + 24) = v5;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (v6)
      {
        CFRetain(v6);
      }
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 24);

    CFDictionaryRemoveValue(v8, v7);
  }
}

uint64_t audioRendererRemote_cloneCompletionCallbackEntry(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0xA00402214FCE6, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

void audioRendererRemote_freeCompletionCallbackEntry(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

__CFString *audioRendererRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererRemote=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" objectID=%lld", *(DerivedStorage + 8));
  if (*DerivedStorage)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" serverDied=%s", v7);
  if (*(DerivedStorage + 1))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" dependencyLost=%s", v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 32) = v4;
  *(*(a1[4] + 8) + 24) = v3;
  v5 = *(a1[6] + 24);
  if (v5)
  {
    v6 = *(*(a1[4] + 8) + 24);

    CFDictionarySetValue(v5, v6, a1 + 7);
  }
}

void __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 24);
  if (v2)
  {
    if (CFDictionaryGetValueIfPresent(v2, *(*(a1[4] + 8) + 24), 0))
    {
      v3 = a1[7];
      if (v3)
      {
        CFRetain(v3);
      }

      *(*(a1[5] + 8) + 24) = 1;
    }

    v4 = *(a1[6] + 24);
    v5 = *(*(a1[4] + 8) + 24);

    CFDictionaryRemoveValue(v4, v5);
  }
}

uint64_t FigVideoQueueUtilityIsProcessASecureCaptureExtension(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = 0;
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", a1), &v5), "bundle"), "extensionPointIdentifier"), "isEqualToString:", @"com.apple.securecapture"}];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t FigVideoQueueCreateLocalWithOptions(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FPSupport_CheckPlayerPerformanceTrace();
  FigVideoQueueGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17790)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 8) = v7;
  if (!v7)
  {
    FigVideoQueueCreateLocalWithOptions_cold_13(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 856) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, (DerivedStorage + 856), 32, 0x600u);
  }

  v8 = FigReentrantMutexCreate();
  *(DerivedStorage + 424) = v8;
  if (!v8)
  {
    FigVideoQueueCreateLocalWithOptions_cold_12(&v33);
    return LODWORD(v33.value);
  }

  CMTimeMake(&v33, 1, 1);
  *(DerivedStorage + 432) = v33;
  CMTimeMake(&v33, 2, 1);
  *(DerivedStorage + 456) = v33;
  *(DerivedStorage + 480) = 0;
  *(DerivedStorage + 504) = 0;
  *(DerivedStorage + 512) = 0;
  *(DerivedStorage + 520) = 6000000000;
  *(DerivedStorage + 417) = 0;
  *(DerivedStorage + 536) = dispatch_queue_create("com.apple.coremedia.videoqueue.notification", 0);
  *(DerivedStorage + 544) = dispatch_queue_create("com.apple.coremedia.videoqueue.cryptor", 0);
  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v9)
  {
    FigVideoQueueCreateLocalWithOptions_cold_11(&v33);
    return LODWORD(v33.value);
  }

  v10 = v9;
  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 536));
  *(DerivedStorage + 528) = v11;
  if (!v11)
  {
    FigVideoQueueCreateLocalWithOptions_cold_10(&v33);
    return LODWORD(v33.value);
  }

  v12 = v11;
  v13 = dispatch_time(0, *(DerivedStorage + 520));
  dispatch_source_set_timer(v12, v13, *(DerivedStorage + 520), 0);
  dispatch_set_context(*(DerivedStorage + 528), v10);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 528), FigVideoQueueGMStats);
  dispatch_source_set_cancel_handler_f(*(DerivedStorage + 528), vq_handleGMStatsTimerCancellation);
  dispatch_activate(*(DerivedStorage + 528));
  *(DerivedStorage + 239) = 1;
  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 240) = v14;
  if (!v14)
  {
    FigVideoQueueCreateLocalWithOptions_cold_9(&v33);
    return LODWORD(v33.value);
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 632) = v15;
  if (!v15)
  {
    FigVideoQueueCreateLocalWithOptions_cold_8(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 649) = 1;
  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 304) = v16;
  if (!v16)
  {
    FigVideoQueueCreateLocalWithOptions_cold_7(&v33);
    return LODWORD(v33.value);
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 296) = Mutable;
  if (!Mutable)
  {
    FigVideoQueueCreateLocalWithOptions_cold_6(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 328) = 0;
  v19 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 336) = v19;
  if (!v19)
  {
    FigVideoQueueCreateLocalWithOptions_cold_5(&v33);
    return LODWORD(v33.value);
  }

  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  *(DerivedStorage + 644) = -1;
  if (AdoptedVoucherProcessIDAndUUIDString <= 0)
  {
    AdoptedVoucherProcessIDAndUUIDString = getpid();
  }

  *(DerivedStorage + 640) = AdoptedVoucherProcessIDAndUUIDString;
  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 592) = v21;
  if (!v21)
  {
    FigVideoQueueCreateLocalWithOptions_cold_4(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 600) = 1;
  *(DerivedStorage + 616) = 0;
  v22 = CFUUIDCreate(v17);
  *(DerivedStorage + 576) = CFUUIDCreateString(v17, v22);
  if (v22)
  {
    CFRelease(v22);
  }

  CMTimeMakeWithSeconds(&v33, 1.0, 1000);
  *(DerivedStorage + 772) = v33;
  CMTimeMakeWithSeconds(&v33, 1.0, 1000);
  *(DerivedStorage + 820) = v33;
  v33.value = 0;
  *v30 = 0;
  v23 = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v25 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s", v23 + 856);
  if (*(v23 + 720))
  {
    FigVideoQueueCreateLocalWithOptions_cold_1();
  }

  else if (!FigPlayerResourceArbiterGetGlobalSingleton(&v33))
  {
    v26 = CMBaseObjectGetDerivedStorage();
    if (*(v26 + 712))
    {
      goto LABEL_25;
    }

    if (!*v26)
    {
      FigVideoQueueCreateLocalWithOptions_cold_3(0, (v26 + 712));
      goto LABEL_25;
    }

    if (FigVideoQueueCreateLocalWithOptions_cold_2())
    {
LABEL_25:
      if (!FigPlayerResourceArbiterRegisterConsumer(v33.value, *(v23 + 672), *(v23 + 712), v25, 0, v30))
      {
        *(v23 + 720) = *v30;
      }
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (dword_1EAF17790)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28 = 0;
  *a3 = 0;
  return v28;
}

void FigVideoQueueGMStats(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 504) = 0;
    *(DerivedStorage + 512) = 0;
    CFRelease(v2);
  }
}

void vq_handleGMStatsTimerCancellation(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t vq_Invalidate(const void *a1)
{
  block[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 496);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 384), v4);
      *(DerivedStorage + 496) = 0;
    }

    v5 = *(DerivedStorage + 488);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 384), v5);
      *(DerivedStorage + 488) = 0;
    }

    v6 = *(DerivedStorage + 528);
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = *(DerivedStorage + 528);
      if (v7)
      {
        dispatch_release(v7);
        *(DerivedStorage + 528) = 0;
      }
    }

    v8 = *(DerivedStorage + 536);
    if (v8 && v8 != dispatch_get_current_queue())
    {
      dispatch_sync(v8, &__block_literal_global_96);
    }

    v9 = CMBaseObjectGetDerivedStorage();
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    if (v9[47])
    {
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
    }

    v11 = v9[68];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vq_removeListeners_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = v9;
    block[5] = DefaultLocalCenter;
    block[6] = a1;
    dispatch_sync(v11, block);
    FigStopForwardingMediaServicesProcessDeathNotification();
    vq_removeTimebaseListeners(a1);
    v12 = *(DerivedStorage + 544);
    if (v12 && v12 != dispatch_get_current_queue())
    {
      dispatch_sync(v12, &__block_literal_global_17_0);
    }

    if (*(DerivedStorage + 376))
    {
      FigRenderPipelineGetFigBaseObject();
      if (v13)
      {
        v14 = v13;
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v15)
        {
          v15(v14);
        }
      }
    }

    v16 = *(DerivedStorage + 384);
    if (v16)
    {
      CMBufferQueueReset(v16);
    }

    if (*(DerivedStorage + 48))
    {
      CAImageQueueFlush();
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 280);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 280), i);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v20)
      {
        v20(ValueAtIndex);
      }
    }

    FigSimpleMutexLock();
    for (j = 0; ; ++j)
    {
      v22 = *(DerivedStorage + 296);
      if (v22)
      {
        v22 = CFArrayGetCount(v22);
      }

      if (j >= v22)
      {
        break;
      }

      v23 = CFArrayGetValueAtIndex(*(DerivedStorage + 296), j);
      if (CFArrayGetCount(v23[3]) >= 1)
      {
        v24 = 0;
        do
        {
          block[0] = 0;
          VideoTargetInfoCopyCAImageQueueAtIndex(v23, v24, block);
          if (block[0])
          {
            CAImageQueueFlush();
            CFRelease(block[0]);
          }

          ++v24;
        }

        while (v24 < CFArrayGetCount(v23[3]));
      }
    }

    block[0] = 0;
    v25 = *(CMBaseObjectGetDerivedStorage() + 288);
    v26 = CFGetAllocator(a1);
    if (!FigDataChannelConfigurationCreate(v26, 0, block))
    {
      v27 = 0;
      if (!v25)
      {
        goto LABEL_47;
      }

LABEL_46:
      for (k = CFArrayGetCount(v25); v27 < k; k = 0)
      {
        v29 = CFArrayGetValueAtIndex(v25, v27);
        v30 = block[0];
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v31)
        {
          v31(v29, v30);
        }

        ++v27;
        if (v25)
        {
          goto LABEL_46;
        }

LABEL_47:
        ;
      }
    }

    if (block[0])
    {
      CFRelease(block[0]);
    }

    FigCFArrayRemoveAllValues();
    FigCFArrayRemoveAllValues();
    FigSimpleMutexUnlock();
    v32 = *(DerivedStorage + 256);
    if (v32)
    {
      FigSyncMomentSourceDestroy(v32);
      *(DerivedStorage + 256) = 0;
    }

    FigSimpleMutexLock();
    v33 = *(DerivedStorage + 248);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 248) = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v34 = *(DerivedStorage + 624);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 624) = 0;
    }

    FigSimpleMutexUnlock();
    v35 = *(DerivedStorage + 664);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 664) = 0;
    }

    v36 = *(DerivedStorage + 672);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 672) = 0;
    }

    v37 = *(DerivedStorage + 576);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 576) = 0;
    }

    block[0] = 0;
    v38 = CMBaseObjectGetDerivedStorage();
    if (*(v38 + 720))
    {
      v39 = v38;
      if (!FigPlayerResourceArbiterGetGlobalSingleton(block))
      {
        FigPlayerResourceArbiterUnregisterConsumer(block[0], *(v39 + 720));
        *(v39 + 720) = 0;
        v40 = CMBaseObjectGetDerivedStorage();
        *(v40 + 848) = 0;
        *(v40 + 744) = 0;
        v41 = MEMORY[0x1E6960C70];
        v42 = *MEMORY[0x1E6960C70];
        *(v40 + 748) = *MEMORY[0x1E6960C70];
        v43 = *(v41 + 16);
        *(v40 + 764) = v43;
        *(v40 + 796) = v42;
        *(v40 + 812) = v43;
        *(v40 + 844) = 0;
        *(v40 + 728) = *MEMORY[0x1E695F060];
      }
    }

    v44 = *(DerivedStorage + 712);
    if (v44)
    {
      CFRelease(v44);
      *(DerivedStorage + 712) = 0;
    }
  }

  return 0;
}

__CFString *vq_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoQueue %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @"videoRenderPipeline %@\n", *(DerivedStorage + 376));
  CFStringAppendFormat(Mutable, 0, @"Layer Image Queue %@, CAImageQueue %@\n", *(DerivedStorage + 56), *(DerivedStorage + 48));
  CFStringAppendFormat(Mutable, 0, @"VisualContextArray %@, ImageQueueArray %@\n", *(DerivedStorage + 264), *(DerivedStorage + 280));
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 288);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 288), i);
    v11 = CFArrayGetValueAtIndex(*(DerivedStorage + 296), i);
    CFStringAppendFormat(Mutable, 0, @"VideoTarget %@, ImageQueues %@\n", ValueAtIndex, v11[3]);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t vq_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    if (CFEqual(a2, @"VideoQueue_CAContextID"))
    {
      if (*(DerivedStorage + 64))
      {
        v11 = objc_autoreleasePoolPush();
        valuePtr = [*(DerivedStorage + 64) contextId];
        objc_autoreleasePoolPop(v11);
        *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (dword_1EAF17790)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_24;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, @"VisualContextArray"))
    {
      SInt32 = *(DerivedStorage + 264);
      if (SInt32)
      {
        goto LABEL_22;
      }
    }

    else if (CFEqual(a2, @"VisualContextArrayOptions"))
    {
      SInt32 = *(DerivedStorage + 272);
      if (SInt32)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!CFEqual(a2, @"VideoTargetArray"))
      {
        if (CFEqual(a2, @"ShouldWaitForVideoTarget"))
        {
          v15 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 328))
          {
            v15 = MEMORY[0x1E695E4C0];
          }

          SInt32 = *v15;
          if (!*v15)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (CFEqual(a2, @"CurrentDisplayedVideoFrameRate"))
        {
          if (*(DerivedStorage + 376))
          {
            FigRenderPipelineGetFigBaseObject();
            v14 = CMBaseObjectCopyProperty(v17, @"CurrentVideoFrameRate", a3, a4);
            goto LABEL_11;
          }
        }

        else
        {
          if (!CFEqual(a2, @"PerformanceDictionary"))
          {
            if (CFEqual(a2, @"VideoQueue_ControlTimebase"))
            {
              SInt32 = *(DerivedStorage + 568);
              if (!SInt32)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"VideoQueue_SupportsRotation"))
            {
              SInt32 = CFRetain(*MEMORY[0x1E695E4D0]);
              goto LABEL_23;
            }

            if (CFEqual(a2, @"ExternalProtectionStatus"))
            {
              v21 = *(DerivedStorage + 544);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __vq_CopyProperty_block_invoke;
              block[3] = &unk_1E748B8C8;
              block[4] = &v40;
              block[5] = DerivedStorage;
              block[6] = a4;
              block[7] = a3;
              dispatch_sync(v21, block);
              goto LABEL_24;
            }

            if (CFEqual(a2, @"ForceFullPowerDecode"))
            {
              v22 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 416))
              {
                v22 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v22;
              if (!*v22)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"PreventsCapture"))
            {
              v23 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 353))
              {
                v23 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v23;
              if (!*v23)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"ToneMapToStandardDynamicRange"))
            {
              v24 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 236))
              {
                v24 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v24;
              if (!*v24)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"CurrentlyDisplayedCVPixelBuffer"))
            {
              v25 = *(DerivedStorage + 48);
              if (v25)
              {
                v14 = FigVideoQueue_CopyCurrentlyDisplayedPixelBufferFromCAImageQueue(v25, a3, a4);
                goto LABEL_11;
              }

              *a4 = 0;
              v27 = v41;
              v28 = -12080;
            }

            else
            {
              if (CFEqual(a2, @"DisallowVideoLayerDisplayCompositing"))
              {
                v26 = MEMORY[0x1E695E4D0];
                if (!*(DerivedStorage + 238))
                {
                  v26 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v26;
                if (!*v26)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"IsImageQueueBeingServiced"))
              {
                isImageQueueBeingServiced = vq_isImageQueueBeingServiced(a1);
                v30 = MEMORY[0x1E695E4D0];
                if (!isImageQueueBeingServiced)
                {
                  v30 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v30;
                if (!*v30)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"IsImageQueueAsync"))
              {
                if (!*(DerivedStorage + 48))
                {
                  goto LABEL_24;
                }

                Flags = CAImageQueueGetFlags();
                v32 = MEMORY[0x1E695E4D0];
                if ((Flags & 1) == 0)
                {
                  v32 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v32;
                if (!*v32)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"CompensateForDisplayLatency"))
              {
                v33 = MEMORY[0x1E695E4C0];
                if (*(DerivedStorage + 239))
                {
                  v33 = MEMORY[0x1E695E4D0];
                }

                SInt32 = CFRetain(*v33);
                goto LABEL_23;
              }

              if (CFEqual(a2, @"ResponsibleProcessID"))
              {
                SInt32 = FigCFNumberCreateSInt32();
                goto LABEL_23;
              }

              v27 = v41;
              v28 = -12082;
            }

            *(v27 + 6) = v28;
            goto LABEL_24;
          }

          if (*(DerivedStorage + 376))
          {
            cf[0] = 0;
            v18 = vq_copyPerformanceDictionary(a1, a3, cf);
            *(v41 + 6) = v18;
            v19 = cf[0];
            if (!v18)
            {
              if (cf[0])
              {
                v20 = CFRetain(cf[0]);
              }

              else
              {
                v20 = 0;
              }

              *a4 = v20;
            }

            if (v19)
            {
              CFRelease(v19);
            }

            goto LABEL_24;
          }
        }

LABEL_10:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, LODWORD(block[0]));
LABEL_11:
        *(v41 + 6) = v14;
LABEL_24:
        v10 = *(v41 + 6);
        goto LABEL_25;
      }

      SInt32 = *(DerivedStorage + 288);
      if (SInt32)
      {
LABEL_22:
        SInt32 = CFRetain(SInt32);
      }
    }

LABEL_23:
    *a4 = SInt32;
    goto LABEL_24;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, LODWORD(block[0]));
  v10 = v9;
LABEL_25:
  _Block_object_dispose(&v40, 8);
  return v10;
}

void sub_1967858C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t vq_removeTimebaseListeners(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMNotificationCenterGetDefaultLocalCenter();
  if (*(DerivedStorage + 568))
  {

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t VideoTargetInfoCopyCAImageQueueAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFArrayGetValueAtIndex();
  if (result)
  {
    FigImageQueueGetFigBaseObject();
    v6 = v5;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *MEMORY[0x1E695E480];

      return v9(v6, @"CAImageQueue", v10, a3);
    }
  }

  return result;
}

_DWORD *vq_ImageReleased(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_DecodeError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_sBufConsumed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    return FigCFDictionaryGetBooleanIfPresent();
  }

  return result;
}

_DWORD *vq_completedDecodeForPreroll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_lostDecoderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_firstVideoFrameEnqueued(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void *__vq_removeListeners_block_invoke(void *result)
{
  if (*(result[4] + 392))
  {
    v1 = result;
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(v1[4] + 392);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = (VTable + 8);
    v4 = v5;
    if (*v5 >= 2uLL)
    {
      v6 = v4[8];
      if (v6)
      {

        return v6(v2);
      }
    }
  }

  return result;
}

_DWORD *vq_ExternalProtectionStatusChanged(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vq_ReadyToDecryptChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 392);
    if (v4)
    {
      cf = 0;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v5 || v5(v4, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &cf))
      {
        goto LABEL_16;
      }

      v9 = cf;
      v10 = *MEMORY[0x1E695E4D0];
      if (cf)
      {
        CFRelease(cf);
      }

      if (v9 == v10)
      {
LABEL_16:
        if (*(v3 + 561))
        {
          FigRenderPipelineGetFigBaseObject();
          v7 = v6;
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v8)
          {
            v8(v7, @"Suspended", *MEMORY[0x1E695E4C0]);
          }

          *(v3 + 561) = 0;
        }
      }
    }
  }
}

void vq_updateForCurrentTimebaseRate(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    Rate = CMTimebaseGetRate(*(DerivedStorage + 568));
    v6 = Rate != 0.0 || *(v3 + 568) == 0;
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Rate == 0.0)
    {
      if (FPSupport_IsPlayerPerformanceTraceEnabled() && *(v3 + 376))
      {
        cf[0] = 0;
        v8 = CFGetAllocator(a1);
        v9 = vq_copyPerformanceDictionary(a1, v8, cf);
        v10 = cf[0];
        if (!v9)
        {
          FPSupport_TracePlayerPerformanceDictionary("VideoQueue", cf[0]);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      v11 = CMBaseObjectGetDerivedStorage();
      if (*(v11 + 584) >= 1)
      {
        if (*(v11 + 576))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v13 = Mutable;
            mach_absolute_time();
            FigHostTimeToNanoseconds();
            FigCFDictionarySetValue();
            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            FigLogPowerEvent();
            CFRelease(v13);
          }
        }
      }
    }

    v14 = *(v3 + 56);
    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v15)
      {
        v15(v14, v6);
      }

      v16 = *(v3 + 56);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, Rate);
      }
    }

    else if (*(v3 + 48))
    {
      CAImageQueueSetFlags();
    }

    for (i = 0; ; ++i)
    {
      Count = *(v3 + 280);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 280), i);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v21(ValueAtIndex, v6);
      }

      v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v22)
      {
        v22(ValueAtIndex, Rate);
      }
    }

    FigSimpleMutexLock();
    for (j = 0; ; ++j)
    {
      v24 = *(v3 + 296);
      if (v24)
      {
        v24 = CFArrayGetCount(v24);
      }

      if (j >= v24)
      {
        break;
      }

      v25 = CFArrayGetValueAtIndex(*(v3 + 296), j);
      if (CFArrayGetCount(v25[3]) >= 1)
      {
        v26 = 0;
        do
        {
          cf[0] = 0;
          VideoTargetInfoCopyFigImageQueueAtIndex(v25, v26, cf);
          v27 = cf[0];
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v28)
          {
            v28(v27, v6);
          }

          v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v29)
          {
            v29(v27, Rate);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          ++v26;
        }

        while (v26 < CFArrayGetCount(v25[3]));
      }
    }

    FigSimpleMutexUnlock();
    vq_updateVideoPlaybackAssertion(a1);
    if (*(v3 + 848) != Rate)
    {
      *(v3 + 848) = Rate;
      vq_reportResourceUsageStatsToGlobalResourceArbiter(a1);
    }
  }
}

uint64_t vq_copyPerformanceDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  FigRenderPipelineGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(v6, @"PerformanceDictionary", a2, &cf);
  v9 = cf;
  if (v8)
  {
    MutableCopy = 0;
    if (!cf)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v9 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v9);
  }

LABEL_5:
  if (!MutableCopy)
  {
    if (v8)
    {
      return v8;
    }

LABEL_13:
    v8 = 0;
    *a3 = MutableCopy;
    return v8;
  }

  v11 = FigCFDictionarySetInt64();
  if (!v11)
  {
    goto LABEL_13;
  }

  v8 = v11;
  CFRelease(MutableCopy);
  return v8;
}

CFTypeRef VideoTargetInfoCopyFigImageQueueAtIndex(uint64_t a1, uint64_t a2, void *a3)
{
  result = FigCFArrayGetValueAtIndex();
  if (result)
  {
    result = CFRetain(result);
  }

  *a3 = result;
  return result;
}

void vq_updateVideoPlaybackAssertion(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    vq_updateVideoPlaybackAssertion_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14);
  }

  else
  {
    v10 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v11 = *(v10 + 74);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __vq_updateVideoPlaybackAssertion_block_invoke;
    v15 = &__block_descriptor_48_e5_v8__0l;
    v16 = v10;
    v17 = a1;
    dispatch_async(v11, &v12);
  }
}

void __vq_updateVideoPlaybackAssertion_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!*(v3 + 600) || *v3 || (Rate = CMTimebaseGetRate(*(v3 + 568)), v3 = *(a1 + 32), Rate == 0.0))
  {
    v5 = *(v3 + 608);
    if (v5)
    {
      CFRelease(v5);
      *(*(a1 + 32) + 608) = 0;
    }
  }

  else if (!*(v3 + 608))
  {
    SInt32 = FigCFNumberGetSInt32();
    if (!SInt32)
    {
      SInt32 = getpid();
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = *(a1 + 32);
    if ((UpTimeNanoseconds - v9[77]) >= 0x3B9ACA01)
    {
      v10 = UpTimeNanoseconds;
      FigSFBSKeepForegroundAssertionCreate(*MEMORY[0x1E695E480], v9[84], SInt32, v9 + 76);
      if (!*(*(a1 + 32) + 608))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(*(a1 + 32) + 616) = v10;
      }
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v2);
}

BOOL vq_isImageQueueBeingServiced(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    return 1;
  }

  CAImageQueueGetLastUpdateHostTime();
  mach_absolute_time();
  return FigHostTimeToNanoseconds() < 0x2540BE401;
}

void vq_setupVideoLayer(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  *(DerivedStorage + 48) = CAImageQueueCreate();
  CAImageQueueSetFlags();
  CAImageQueueSetFlags();
  CAImageQueueSetFlags();
  v3 = objc_alloc_init(FigBaseCALayer);
  *(DerivedStorage + 16) = v3;
  [(FigBaseCALayer *)v3 enableDRMFallback];
  [*(DerivedStorage + 16) setName:@"internal-videolayer"];
  [*(DerivedStorage + 16) setContents:*(DerivedStorage + 48)];
  [*(DerivedStorage + 16) setContentsGravity:*MEMORY[0x1E6979DE8]];
  [*(DerivedStorage + 16) setEdgeAntialiasingMask:0];
  [*(DerivedStorage + 16) setAllowsDisplayCompositing:*(DerivedStorage + 238) == 0];
  v4 = objc_alloc_init(MEMORY[0x1E6979398]);
  *(DerivedStorage + 24) = v4;
  [v4 setName:@"internal-maskinglayer"];
  [*(DerivedStorage + 24) setFillMode:*MEMORY[0x1E69797E0]];
  [*(DerivedStorage + 24) addSublayer:*(DerivedStorage + 16)];
  [*(DerivedStorage + 16) setAnchorPoint:{0.0, 0.0}];
  [*(DerivedStorage + 16) setPosition:{0.0, 0.0}];
  [MEMORY[0x1E6979518] commit];
  if (dword_1EAF17790)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v2);
}

void vq_updateImageQueueProtection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *MEMORY[0x1E695E4C0];
  v15 = *MEMORY[0x1E695E4C0];
  v4 = *(DerivedStorage + 392);
  if (v4 && !*(DerivedStorage + 352))
  {
    *(DerivedStorage + 352) = 1;
    *(DerivedStorage + 354) = 0;
  }

  if (!*(DerivedStorage + 354))
  {
    v5 = MEMORY[0x1E695E4D0];
    if (v4)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v7 = v6(v4, *MEMORY[0x1E69610B8], *MEMORY[0x1E695E480], &v15) == 0;
      }

      else
      {
        v7 = 0;
      }

      if (!*(v2 + 48) || (CAImageQueueSetFlags(), !v7))
      {
LABEL_17:
        FigSimpleMutexLock();
        v8 = 0;
        v9 = *v5;
        while (1)
        {
          Count = *(v2 + 296);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v8 >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 296), v8);
          if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
          {
            v12 = 0;
            do
            {
              cf = 0;
              VideoTargetInfoCopyCAImageQueueAtIndex(ValueAtIndex, v12, &cf);
              if (cf)
              {
                CAImageQueueSetFlags();
                if (v15 == v9 && v7)
                {
                  CAImageQueueSetFlags();
                }

                CFRelease(cf);
              }

              ++v12;
            }

            while (v12 < CFArrayGetCount(ValueAtIndex[3]));
          }

          ++v8;
        }

        FigSimpleMutexUnlock();
        if (v15)
        {
          CFRelease(v15);
        }

        return;
      }

      v3 = v15;
    }

    else
    {
      if (!*(DerivedStorage + 48))
      {
LABEL_16:
        v7 = 1;
        goto LABEL_17;
      }

      CAImageQueueSetFlags();
    }

    if (v3 == *v5)
    {
      CAImageQueueSetFlags();
    }

    goto LABEL_16;
  }
}

uint64_t vq_addTimebaseListeners(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 568))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void VideoTargetInfoCreate(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (videoTargetInfo_getTypeID_sRegisterVideoTargetInfoTypeOnce != -1)
    {
      VideoTargetInfoCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v17 = Instance;
      *(Instance + 16) = 0;
      v18 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v17[3] = Mutable;
      if (Mutable)
      {
        v20 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
        v17[4] = v20;
        if (v20)
        {
          *a2 = v17;
          return;
        }

        v21 = 997;
      }

      else
      {
        v21 = 995;
      }

      VideoTargetInfoCreate_cold_2(v21, v17);
    }

    else
    {
      VideoTargetInfoCreate_cold_3(0, v10, v11, v12, v13, v14, v15, v16, v22, v23, SHIDWORD(v23), v24);
    }
  }

  else
  {
    VideoTargetInfoCreate_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v22, v23, SHIDWORD(v23), v24);
  }
}

uint64_t vq_handleWaitForVideoTargetConditionChange(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (a2 == 1)
  {
    *(DerivedStorage + 328) = a3;
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a3 = *(v8 + 328);
    }

    FigSimpleMutexLock();
    if (!a3)
    {
LABEL_9:
      v12 = *(v8 + 336);
      if (v12 && CFArrayGetCount(v12) >= 1)
      {
        if (dword_1EAF17790)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigCFArrayApplyBlock();
        CFArrayRemoveAllValues(*(v8 + 336));
      }
    }
  }

  else
  {
    v10 = *(DerivedStorage + 344);
    if (dword_1EAF17790)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v8 + 344) = a4;
    FigSimpleMutexLock();
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vq_setSynchronizedLayers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 248))
  {
    v2 = CFArrayCreate(*MEMORY[0x1E695E480], (DerivedStorage + 24), 1, MEMORY[0x1E695E9C0]);
    v3 = FigLayerSynchronizerSetLayerArray(*(DerivedStorage + 248), v2);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t __videoTargetInfo_getTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  videoTargetInfo_getTypeID_sVideoTargetInfoTypeID = result;
  return result;
}

void *videoTargetInfo_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void videoTargetInfo_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

CFStringRef videoTargetInfo_copyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v6 = "YES";
  if (!v4)
  {
    v6 = " NO";
  }

  return CFStringCreateWithFormat(v2, 0, @"<VideoTargetInfo %p retainCount: %ld> Stereo: %s %d FIQs", a1, v3, v6, Count);
}

uint64_t __vq_handleWaitForVideoTargetConditionChange_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 16);
  if (v15)
  {
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    v7.n128_u64[0] = 0;
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
    v12.n128_u64[0] = 0;

    return v15(v3, a2, 0, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return result;
}

uint64_t vq_setImageQueueResponsibleProcessID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = CFRetain(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(v4 + 644) < 1)
  {
    v12 = 0;
  }

  else
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v8 = SInt32;
      FigImageQueueGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v11(v10, @"ResponsibleProcessID", v8);
      }

      else
      {
        v12 = 4294954514;
      }

      CFRelease(v8);
    }

    else
    {
      vq_setImageQueueResponsibleProcessID_cold_1(&v14);
      v12 = v14;
    }
  }

  CFRelease(v6);
  return v12;
}

uint64_t vq_EnqueueFrame(void *a1, opaqueCMSampleBuffer *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  *&v279[16] = a10;
  *&v279[24] = a11;
  *v279 = a8;
  *&v279[8] = a9;
  v324 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v289, 0, sizeof(v289));
  sBufOut = 0;
  sbuf = a2;
  CMSampleBufferGetOutputPresentationTimeStamp(&v289, a2);
  videoDesc = CMSampleBufferGetFormatDescription(a2);
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v231, v232, v233);
    return v16;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    if (a6 == 0.0)
    {
      vq_EnqueueFrame_cold_4(&block);
    }

    else
    {
      if (a7 != 0.0)
      {
        goto LABEL_6;
      }

      vq_EnqueueFrame_cold_3(&block);
    }

    value_low = LODWORD(block.value);
    if (LODWORD(block.value))
    {
      goto LABEL_440;
    }

    goto LABEL_446;
  }

LABEL_6:
  v18 = CMSampleBufferGetTaggedBufferGroup(a2);
  if (v18)
  {
    CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(v18, *MEMORY[0x1E6960690], 0);
    v20 = CVPixelBufferForTag;
    if (CVPixelBufferForTag)
    {
      DisplaySize = CVImageBufferGetDisplaySize(CVPixelBufferForTag);
      height = DisplaySize.height;
      width = DisplaySize.width;
      CMBaseObjectGetDerivedStorage();
      EncodedSize = CVImageBufferGetEncodedSize(v20);
      Dimensions.width = EncodedSize.width;
      v23 = EncodedSize.height;
    }

    else
    {
      height = *(MEMORY[0x1E695F060] + 8);
      width = *MEMORY[0x1E695F060];
      v23 = *(MEMORY[0x1E6960CF8] + 4);
      Dimensions.width = *MEMORY[0x1E6960CF8];
    }

    LODWORD(v265) = v23;
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, 1u, 1u);
    height = PresentationDimensions.height;
    width = PresentationDimensions.width;
    v265 = HIDWORD(*&Dimensions);
    CMBaseObjectGetDerivedStorage();
  }

  FigSimpleMutexLock();
  v25 = CMBaseObjectGetDerivedStorage();
  if (*(v25 + 328) && !*(v25 + 344) && !*(v25 + 376))
  {
    CFArrayAppendValue(*(DerivedStorage + 336), sbuf);
LABEL_112:
    value_low = 0;
    goto LABEL_439;
  }

  *(DerivedStorage + 560) = 1;
  v26 = CMGetAttachment(sbuf, *MEMORY[0x1E69604B0], 0);
  value = *MEMORY[0x1E695E4D0];
  if (v26 == *MEMORY[0x1E695E4D0])
  {
    v39 = *(DerivedStorage + 384);
    if (v39)
    {
      CMBufferQueueEnqueue(v39, sbuf);
    }

    goto LABEL_112;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  v28 = SampleAttachmentsArray;
  if (!SampleAttachmentsArray || (v29 = CFGetTypeID(SampleAttachmentsArray), v29 != CFArrayGetTypeID()) || CFArrayGetCount(v28) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v28, 0), (v31 = ValueAtIndex) == 0) || (v32 = CFGetTypeID(ValueAtIndex), v32 != CFDictionaryGetTypeID()) || CFDictionaryGetValue(v31, *MEMORY[0x1E6960410]) != value)
  {
    ++*(DerivedStorage + 552);
  }

  v33 = DerivedStorage;
  if (*(DerivedStorage + 376))
  {
LABEL_24:
    vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(a1, *(v33 + 376), videoDesc);
    v34 = CMBaseObjectGetDerivedStorage();
    time2.value = 0;
    *&time2.timescale = &time2;
    time2.epoch = 0x2020000000;
    v308 = 0;
    Decryptor = FigSampleBufferGetDecryptor();
    sbufPTS.value = 0;
    *&sbufPTS.timescale = &sbufPTS;
    sbufPTS.epoch = 0x2020000000;
    v302 = 1;
    v36 = *(v34 + 544);
    block.value = MEMORY[0x1E69E9820];
    *&block.timescale = 3221225472;
    block.epoch = __vq_UpdateCryptorFromSampleBuffer_block_invoke;
    v318 = &unk_1E74942A8;
    v321 = v34;
    v322 = Decryptor;
    v323 = a1;
    p_time2 = &time2;
    p_sbufPTS = &sbufPTS;
    dispatch_sync(v36, &block);
    v37 = *(*&time2.timescale + 24);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = *(*&sbufPTS.timescale + 24);
    _Block_object_dispose(&sbufPTS, 8);
    _Block_object_dispose(&time2, 8);
    if (v38)
    {
      if (!*(DerivedStorage + 561))
      {
        goto LABEL_46;
      }
    }

    else if (!*(DerivedStorage + 561))
    {
      FigRenderPipelineGetFigBaseObject();
      CMBaseObjectSetProperty(v46, @"Suspended", value);
      *(DerivedStorage + 561) = 1;
    }

    ++*(DerivedStorage + 512);
    CMBufferQueueGetDuration(&block, *(DerivedStorage + 384));
    CMTimeMake(&time2, 11, 1);
    if (CMTimeCompare(&block, &time2) >= 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v231, v232, v233);
      value_low = v47;
      if (v47)
      {
        goto LABEL_439;
      }
    }

LABEL_46:
    v48 = sbuf;
    if (!*(DerivedStorage + 704))
    {
      goto LABEL_80;
    }

    v299 = -1;
    v300 = -1;
    vq_tagCollectionGetLayerIDsIfPresent(sbuf, &v300, &v299);
    if (v300 == *(DerivedStorage + 688))
    {
      v48 = sbuf;
      if (v299 == *(DerivedStorage + 696))
      {
        goto LABEL_80;
      }
    }

    taggedBufferGroup = 0;
    *type = 0;
    v49 = FigTagMakeWithSInt64Value();
    v274 = v50;
    allocatora = v49;
    v51 = FigTagMakeWithSInt64Value();
    valuea = v52;
    idx = v51;
    memset(&block, 0, sizeof(block));
    CMSampleBufferGetPresentationTimeStamp(&block, sbuf);
    memset(&time2, 0, sizeof(time2));
    CMSampleBufferGetDuration(&time2, sbuf);
    formatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v53 = CMSampleBufferGetTaggedBufferGroup(sbuf);
    v54 = v53;
    if (v53)
    {
      Count = CMTaggedBufferGroupGetCount(v53);
      if (Count > 1)
      {
        videoDesca = *MEMORY[0x1E695E480];
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        Mutable = CFArrayCreateMutable(videoDesca, 0, MEMORY[0x1E695E9C0]);
        if (theArray && Mutable)
        {
          v56 = 0;
          v57 = *MEMORY[0x1E6960690];
          v58 = *(MEMORY[0x1E6960690] + 8);
          v60 = *MEMORY[0x1E69606A0];
          v59 = *(MEMORY[0x1E69606A0] + 8);
          do
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v54, v56);
            if (!TagCollectionAtIndex)
            {
              vq_EnqueueFrame_cold_13(&sbufPTS);
              goto LABEL_261;
            }

            CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CVPixelBufferAtIndex)
            {
              vq_EnqueueFrame_cold_12(&sbufPTS);
              goto LABEL_261;
            }

            *&v325.category = v57;
            v325.value = v58;
            v63 = CMTagCollectionContainsTag(TagCollectionAtIndex, v325);
            *&v326.category = v60;
            v326.value = v59;
            if (v63 | CMTagCollectionContainsTag(TagCollectionAtIndex, v326))
            {
              MutableCopy = CMTagCollectionCreateMutableCopy(TagCollectionAtIndex, videoDesca, type);
              if (MutableCopy)
              {
                goto LABEL_70;
              }

              CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_VideoLayerID);
              if (v63)
              {
                *&v65.category = allocatora;
              }

              else
              {
                *&v65.category = idx;
              }

              if (v63)
              {
                v65.value = v274;
              }

              else
              {
                v65.value = valuea;
              }

              CMTagCollectionAddTag(*type, v65);
              CFArrayAppendValue(theArray, *type);
              if (*type)
              {
                CFRelease(*type);
                *type = 0;
              }
            }

            else
            {
              CFArrayAppendValue(theArray, TagCollectionAtIndex);
            }

            CFArrayAppendValue(Mutable, CVPixelBufferAtIndex);
            ++v56;
          }

          while (Count != v56);
          MutableCopy = MEMORY[0x19A8D33F0](videoDesca, theArray, Mutable, &taggedBufferGroup);
          if (!MutableCopy)
          {
            sbufPTS = block;
            sbufDuration = time2;
            MutableCopy = CMSampleBufferCreateForTaggedBufferGroup(videoDesca, taggedBufferGroup, &sbufPTS, &sbufDuration, formatDescription, &sBufOut);
          }
        }

        else
        {
          vq_EnqueueFrame_cold_14(&sbufPTS);
LABEL_261:
          MutableCopy = LODWORD(sbufPTS.value);
        }

LABEL_70:
        value_low = MutableCopy;
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_74;
      }

      vq_EnqueueFrame_cold_15(&sbufPTS);
    }

    else
    {
      vq_EnqueueFrame_cold_16(&sbufPTS);
    }

    value_low = LODWORD(sbufPTS.value);
LABEL_74:
    if (taggedBufferGroup)
    {
      CFRelease(taggedBufferGroup);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (value_low)
    {
      goto LABEL_439;
    }

    v48 = sBufOut;
LABEL_80:
    value_low = CMBufferQueueEnqueue(*(DerivedStorage + 384), v48);
    if (value_low)
    {
      goto LABEL_439;
    }

    ++*(DerivedStorage + 504);
    if (CMSampleBufferGetImageBuffer(sbuf) || vq_containsStereoVideoTaggedBufferGroup(sbuf, 0, 0))
    {
      if (!*(DerivedStorage + 480))
      {
        *(DerivedStorage + 480) = 1;
      }
    }

    else if (*(DerivedStorage + 480) == 1)
    {
      *(DerivedStorage + 480) = 0;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 624))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v66 = CMNotificationCenterPostNotification();
      v67 = *(DerivedStorage + 624);
      if (v67)
      {
        CFRelease(v67);
        *(DerivedStorage + 624) = 0;
      }
    }

    else
    {
      v66 = 0;
    }

    FigSimpleMutexUnlock();
    v68 = Dimensions.width;
    v69 = v265;
    if (*(CMBaseObjectGetDerivedStorage() + 64))
    {
      block = v289;
      Seconds = CMTimeGetSeconds(&block);
      sbufPTS.value = 0;
      v71 = CMBaseObjectGetDerivedStorage();
      v72 = v71;
      if (*(v71 + 232) != a3 || (v330.origin.x = a4, v330.origin.y = a5, v330.size.width = a6, v330.size.height = a7, !CGRectEqualToRect(v330, *(v71 + 136))) || !CGRectEqualToRect(*v279, *(v72 + 168)) || (v331.origin.x = 0.0, v331.origin.y = 0.0, v331.size.width = Dimensions.width, v331.size.height = v265, !CGRectEqualToRect(v331, *(v72 + 72))) || (v332.origin.x = 0.0, v332.origin.y = 0.0, v332.size.height = height, v332.size.width = width, !CGRectEqualToRect(v332, *(v72 + 104))) || *(v72 + 32))
      {
        if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &sbufPTS.value))
        {
          v73 = *(v72 + 32);
          if (*(v72 + 232) == a3 && (v333.origin.x = a4, v333.origin.y = a5, v333.size.width = a6, v333.size.height = a7, CGRectEqualToRect(v333, *(v72 + 136))) && CGRectEqualToRect(*v279, *(v72 + 168)) && (v334.origin.x = 0.0, v334.origin.y = 0.0, v334.size.width = Dimensions.width, v334.size.height = v265, CGRectEqualToRect(v334, *(v72 + 72))))
          {
            v335.origin.x = 0.0;
            v335.origin.y = 0.0;
            v335.size.height = height;
            v335.size.width = width;
            v74 = !CGRectEqualToRect(v335, *(v72 + 104));
          }

          else
          {
            v74 = 1;
          }

          if (!FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform(sbufPTS.value, *(v72 + 24), *(v72 + 16), a3, v73, v74, *(v72 + 237), "vq_updateLayerTransform", a4, a5, a6, a7, *v279, *&v279[8], *&v279[16], *&v279[24], 0, 0, *&v68, *&v69, 0, 0, *&width, *&height, Seconds))
          {
            FigDeferredTransactionCommit(sbufPTS.value, 0);
            if (*(v72 + 32) && dword_1EAF17790)
            {
              LODWORD(sbufDuration.value) = 0;
              LOBYTE(taggedBufferGroup) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v76 = sbufDuration.value;
              v77 = taggedBufferGroup;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, taggedBufferGroup))
              {
                v78 = v76;
              }

              else
              {
                v78 = v76 & 0xFFFFFFFE;
              }

              if (v78)
              {
                v79 = *(v72 + 24);
                LODWORD(time2.value) = 136315650;
                *(&time2.value + 4) = "vq_updateLayerTransform";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = a1;
                HIWORD(time2.epoch) = 2048;
                v308 = v79;
                LODWORD(v232) = 32;
                _os_log_send_and_compose_impl(v78, 0, &block, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v77, "<<<< FigVideoQueue >>>> %s: [%p] unhide masking layer %p", &time2, v232, v233);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v72 + 136) = a4;
            *(v72 + 144) = a5;
            *(v72 + 152) = a6;
            *(v72 + 160) = a7;
            *(v72 + 168) = *v279;
            *(v72 + 176) = *&v279[8];
            *(v72 + 184) = *&v279[16];
            *(v72 + 192) = *&v279[24];
            *(v72 + 232) = a3;
            *(v72 + 72) = 0;
            *(v72 + 80) = 0;
            *(v72 + 88) = v68;
            *(v72 + 96) = v69;
            *(v72 + 104) = 0;
            *(v72 + 112) = 0;
            *(v72 + 120) = width;
            *(v72 + 128) = height;
            *(v72 + 32) = 0;
          }
        }
      }

      if (sbufPTS.value)
      {
        CFRelease(sbufPTS.value);
      }
    }

    vq_updateImageQueueProtection(a1);
    v88 = CMBaseObjectGetDerivedStorage();
    v89 = v88;
    taggedBufferGroup = 0;
    block = **&MEMORY[0x1E6960C70];
    time2 = block;
    if (*v88)
    {
      vq_EnqueueFrame_cold_17();
    }

    else if (*(v88 + 720))
    {
      if (*(v88 + 728) == v68 && *(v88 + 736) == v69)
      {
        v90 = 0;
      }

      else
      {
        *(v88 + 728) = v68;
        *(v88 + 736) = v69;
        v90 = 1;
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&block, HostTimeClock);
      sbufPTS = block;
      sbufDuration = *(v89 + 748);
      CMTimeSubtract(&time2, &sbufPTS, &sbufDuration);
      if ((*(v89 + 760) & 1) == 0 || (sbufPTS = time2, sbufDuration = *(v89 + 772), CMTimeCompare(&sbufPTS, &sbufDuration) >= 1))
      {
        v92 = CFGetAllocator(a1);
        FigRenderPipelineGetFigBaseObject();
        v94 = v93;
        v95 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v95 || v95(v94, @"CurrentVideoFrameRate", v92, &taggedBufferGroup))
        {
          goto LABEL_153;
        }

        FigCFNumberGetFloat32();
        if (vabds_f32(v96, *(v89 + 744)) > 0.1)
        {
          *(v89 + 744) = v96;
          v90 = 1;
        }

        *(v89 + 748) = block;
      }

      if (*(v89 + 844))
      {
        if (!v90)
        {
          goto LABEL_153;
        }
      }

      else
      {
        *(v89 + 844) = 1;
      }

      vq_reportResourceUsageStatsToGlobalResourceArbiter(a1);
    }

    else
    {
      vq_EnqueueFrame_cold_18();
    }

LABEL_153:
    if (taggedBufferGroup)
    {
      CFRelease(taggedBufferGroup);
    }

    value_low = v66;
    goto LABEL_439;
  }

  v247 = *(DerivedStorage + 664);
  v283 = CMBaseObjectGetDerivedStorage();
  values = 0;
  memset(&sbufPTS, 0, sizeof(sbufPTS));
  CMTimeMake(&sbufPTS, 3, 30);
  memset(&sbufDuration, 0, sizeof(sbufDuration));
  CMTimeMake(&sbufDuration, 5, 30);
  v296 = 0;
  theDict = 0;
  v294 = 0;
  v295 = 0;
  v293 = 0;
  v291 = -1;
  v292 = -1;
  FigSimpleMutexLock();
  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    v80 = *(v283 + 33);
    if (!v80 || CFArrayGetCount(v80) <= 0)
    {
      v81 = *(v283 + 36);
      if (!v81 || CFArrayGetCount(v81) <= 0)
      {
        vq_EnqueueFrame_cold_11(&block);
        v253 = 0;
        v254 = 0;
        v258 = 0;
        v40 = 0;
LABEL_118:
        v256 = 0;
        idxa = 0;
        v275 = 0;
        v250 = 0;
        v251 = 0;
LABEL_119:
        updated = LODWORD(block.value);
        goto LABEL_379;
      }
    }
  }

  allocator = *MEMORY[0x1E695E480];
  v40 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!CMSampleBufferGetTaggedBufferGroup(sbuf))
  {
    v83 = CMSampleBufferGetFormatDescription(sbuf);
    v84 = v83;
    values = v83;
    v85 = -1;
    if (!v83)
    {
      formatDescriptiona = 0;
      v249 = -1;
      v250 = 0;
      v252 = -1;
      goto LABEL_213;
    }

    taggedBufferGroup = 0;
    *type = 0;
    v299 = -1;
    v300 = -1;
    FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(v83, &taggedBufferGroup);
    if (CMTagCollectionCreateMutableCopy(taggedBufferGroup, allocator, type))
    {
      v249 = -1;
      v252 = -1;
LABEL_182:
      if (taggedBufferGroup)
      {
        CFRelease(taggedBufferGroup);
      }

      if (*type)
      {
        CFRelease(*type);
      }

      if (dword_1EAF17790)
      {
        LODWORD(taggedBufferGroup) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v101 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v102 = taggedBufferGroup;
        v103 = type[0];
        if (os_log_type_enabled(v101, type[0]))
        {
          v104 = v102;
        }

        else
        {
          v104 = v102 & 0xFFFFFFFE;
        }

        if (v104)
        {
          v105 = "YES";
          *(&time2.value + 4) = "vq_createVideoRenderPipeline";
          LODWORD(time2.value) = 136316162;
          LOWORD(time2.flags) = 2048;
          if (!v293)
          {
            v105 = "NO";
          }

          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v308 = sbuf;
          v309 = 2082;
          v310 = v105;
          v311 = 2112;
          v312 = v40;
          _os_log_send_and_compose_impl(v104, 0, &block, 128, &dword_1962D5000, v101, v103, "<<<< FigVideoQueue >>>> %s: %p SampleBuffer %p isStereo: %{public}s with Tags: %@", &time2, 52);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        formatDescriptiona = 0;
        v106 = v293 == 4 || v293 == 1;
        if (!v106 || !dword_1EAF17790)
        {
          goto LABEL_209;
        }

        LODWORD(taggedBufferGroup) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v108 = taggedBufferGroup;
        v109 = type[0];
        if (os_log_type_enabled(v107, type[0]))
        {
          v110 = v108;
        }

        else
        {
          v110 = v108 & 0xFFFFFFFE;
        }

        if (v110)
        {
          *(&time2.value + 4) = "vq_createVideoRenderPipeline";
          v111 = "TestIPB";
          LODWORD(time2.value) = 136316674;
          LOWORD(time2.flags) = 2048;
          if (v293 == 1)
          {
            v111 = "MV-HEVC";
          }

          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v308 = sbuf;
          v309 = 2082;
          v310 = v111;
          v311 = 2048;
          v312 = v249;
          v313 = 2048;
          v314 = v85;
          v315 = 2048;
          v316 = v252;
          LODWORD(v232) = 72;
          _os_log_send_and_compose_impl(v110, 0, &block, 128, &dword_1962D5000, v107, v109, "<<<< FigVideoQueue >>>> %s: %p SampleBuffer %p is stereo %{public}s with Left ID: %lld Right ID: %lld Base/Hero ID: %lld", &time2, v232);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      formatDescriptiona = 0;
      goto LABEL_209;
    }

    CMTagCollectionAddTag(*type, *MEMORY[0x1E6960640]);
    MVHEVCVideoLayerIDs = FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs();
    if (MVHEVCVideoLayerIDs)
    {
      if (CMTagCollectionContainsTag(*type, *MEMORY[0x1E6960698]))
      {
        CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_StereoView);
        CMTagCollectionAddTag(*type, *MEMORY[0x1E6960688]);
      }

      v252 = -1;
      if (v300 == -1 || v299 == -1)
      {
LABEL_168:
        if (CMTagCollectionContainsTag(*type, *MEMORY[0x1E6960688]))
        {
          if (MVHEVCVideoLayerIDs)
          {
            if (VTIsStereoMVHEVCDecodeSupported())
            {
              v99 = 1;
LABEL_181:
              CFArrayAppendValue(v40, *type);
              v293 = v99;
              v249 = v300;
              v291 = v299;
              v292 = v300;
              v85 = v299;
              goto LABEL_182;
            }
          }

          else
          {
            MediaSubType = CMFormatDescriptionGetMediaSubType(v84);
            *&block.value = *MEMORY[0x1E6960648];
            time2.value = 0;
            CMTagCollectionGetTagsWithCategory(*type, kCMTagCategory_PackingType, &block, 1, &time2.value);
            if (time2.value == 1 && (CMTagEqualToTag(*&block.value, *MEMORY[0x1E6960658]) || CMTagEqualToTag(*&block.value, *MEMORY[0x1E6960650])))
            {
              v299 = -1;
              v300 = -1;
              v252 = -1;
              v99 = 2;
              goto LABEL_181;
            }

            if (MediaSubType == 1768972832)
            {
              v252 = 0;
              v299 = 1;
              v300 = 0;
              v99 = 4;
              goto LABEL_181;
            }
          }

          CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_StereoView);
          CMTagCollectionAddTag(*type, *MEMORY[0x1E6960698]);
          v99 = 0;
          v299 = -1;
          v300 = -1;
          v252 = -1;
          goto LABEL_181;
        }

        v99 = 0;
        goto LABEL_181;
      }

      CMFormatDescriptionGetExtension(v84, *MEMORY[0x1E6960058]);
      if (FigCFEqual())
      {
        v87 = v300;
      }

      else
      {
        v98 = FigCFEqual();
        v87 = v299;
        if (!v98)
        {
          v87 = 0;
        }
      }
    }

    else
    {
      v87 = -1;
    }

    v252 = v87;
    goto LABEL_168;
  }

  if (!vq_containsStereoVideoTaggedBufferGroup(sbuf, v40, &v293))
  {
    goto LABEL_164;
  }

  if (dword_1EAF17790)
  {
    LODWORD(taggedBufferGroup) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v42 = taggedBufferGroup;
    v43 = type[0];
    if (os_log_type_enabled(v41, type[0]))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 0xFFFFFFFE;
    }

    if (v44)
    {
      v45 = "monoscopic";
      *(&time2.value + 4) = "vq_createVideoRenderPipeline";
      LODWORD(time2.value) = 136316162;
      LOWORD(time2.flags) = 2048;
      if (v293 == 3)
      {
        v45 = "separate stereo";
      }

      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2048;
      v308 = sbuf;
      v309 = 2082;
      v310 = v45;
      v311 = 2112;
      v312 = v40;
      _os_log_send_and_compose_impl(v44, 0, &block, 128, &dword_1962D5000, v41, v43, "<<<< FigVideoQueue >>>> %s: %p SampleBuffer %p contains %{public}s video tagged buffer group with Tags: %@", &time2, 52);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v293 == 3)
  {
    v291 = 1;
    v292 = 0;
    if (vq_tagCollectionGetLayerIDsIfPresent(sbuf, &v292, &v291))
    {
      v249 = v292;
      values = CMSampleBufferGetFormatDescription(sbuf);
      formatDescriptiona = 1;
      *(v283 + 704) = 1;
      *(v283 + 86) = v249;
      v85 = v291;
      *(v283 + 87) = v291;
      v252 = v249;
      goto LABEL_209;
    }

LABEL_164:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v231, v232, v233);
    updated = v97;
    v253 = 0;
    v254 = 0;
    v256 = 0;
    v258 = 0;
    idxa = 0;
    v275 = 0;
    v250 = 0;
    v251 = 0;
    goto LABEL_379;
  }

  formatDescriptiona = 0;
  v85 = -1;
  v249 = -1;
  v252 = -1;
LABEL_209:
  if (values)
  {
    v250 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v250)
    {
      vq_EnqueueFrame_cold_9(&block);
      v253 = 0;
      v254 = 0;
      v258 = 0;
      goto LABEL_118;
    }
  }

  else
  {
    v250 = 0;
  }

LABEL_213:
  v248 = v85;
  if (v293)
  {
    v112 = *(v283 + 36);
    if (v112)
    {
      if (CFArrayGetCount(v112) >= 1)
      {
        v260 = CMBaseObjectGetDerivedStorage();
        v113 = *(v260 + 288);
        if (v113)
        {
          v257 = CFArrayGetCount(v113);
          if (v257 >= 1)
          {
            v114 = 0;
            v115 = 1;
LABEL_219:
            v255 = v115;
            do
            {
              idxb = v114;
              v116 = CFArrayGetValueAtIndex(*(v260 + 288), v114);
              v259 = CFArrayGetValueAtIndex(*(v260 + 296), idxb);
              block.value = 0;
              v117 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (v117)
              {
                v117(v116, allocator, &block);
              }

              if (block.value)
              {
                v276 = CFArrayGetCount(block.value);
                if (v276 >= 1)
                {
                  for (i = 0; i != v276; ++i)
                  {
                    v119 = CFArrayGetValueAtIndex(block.value, i);
                    CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v119, v120);
                    if (CountOfDataChannels >= 1)
                    {
                      v122 = 0;
                      while (1)
                      {
                        DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v119, v122);
                        if (!v40)
                        {
                          break;
                        }

                        v124 = DataChannelByIndex;
                        v125 = CFArrayGetCount(v40);
                        if (v125 < 1)
                        {
                          break;
                        }

                        v126 = 0;
                        v127 = 1;
                        do
                        {
                          while (1)
                          {
                            v128 = CFArrayGetValueAtIndex(v40, v126);
                            if (!CMTagCollectionContainsTagsOfCollection(v128, v124))
                            {
                              break;
                            }

                            if ((v127 & 1) == 0)
                            {
                              goto LABEL_240;
                            }

                            v127 = 0;
                            v106 = v125 - 1 == v126++;
                            if (v106)
                            {
                              goto LABEL_238;
                            }
                          }

                          ++v126;
                        }

                        while (v125 != v126);
                        if (v127)
                        {
                          break;
                        }

LABEL_238:
                        if (++v122 == CountOfDataChannels)
                        {
                          v115 = 0;
                          v259[16] = 1;
                          v114 = idxb + 1;
                          if (idxb + 1 != v257)
                          {
                            goto LABEL_219;
                          }

                          goto LABEL_246;
                        }
                      }
                    }

LABEL_240:
                    ;
                  }
                }
              }

              v259[16] = 0;
              v114 = idxb + 1;
            }

            while (idxb + 1 != v257);
            if ((v255 & 1) == 0)
            {
LABEL_246:
              if (v293 <= 4 && ((1 << v293) & 0x1A) != 0)
              {
                if (dword_1EAF17790)
                {
                  LODWORD(taggedBufferGroup) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v130 = taggedBufferGroup;
                  v131 = type[0];
                  if (os_log_type_enabled(v129, type[0]))
                  {
                    v132 = v130;
                  }

                  else
                  {
                    v132 = v130 & 0xFFFFFFFE;
                  }

                  if (v132)
                  {
                    v133 = "Separate Stereo Video";
                    if (v293 == 4)
                    {
                      v133 = "Stereo TestIPB";
                    }

                    *(&time2.value + 4) = "vq_createVideoRenderPipeline";
                    LODWORD(time2.value) = 136315650;
                    if (v293 == 1)
                    {
                      v134 = "Stereo MV-HEVC";
                    }

                    else
                    {
                      v134 = v133;
                    }

                    LOWORD(time2.flags) = 2048;
                    *(&time2.flags + 2) = a1;
                    HIWORD(time2.epoch) = 2082;
                    v308 = v134;
                    LODWORD(v232) = 32;
                    _os_log_send_and_compose_impl(v132, 0, &block, 128, &dword_1962D5000, v129, v131, "<<<< FigVideoQueue >>>> %s: %p enabling multi-image decode mode since source is %{public}s and at least one video target can receive stereo", &time2, v232);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                formatDescriptiona = 1;
              }
            }
          }
        }
      }
    }
  }

  *&block.value = *"ARGB";
  LODWORD(time2.value) = 0;
  LODWORD(taggedBufferGroup) = 0;
  FigGetAlignmentForIOSurfaceOutput();
  updated = FPSupport_CreateDestinationPixelBufferAttributes(0, 0, &block, 0, 2, 1, time2.value, taggedBufferGroup, 0, &theDict);
  if (updated)
  {
    goto LABEL_459;
  }

  if (!theDict || (v135 = CFDictionaryCreateMutableCopy(allocator, 0, theDict), (v136 = v135) == 0))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v231, v232, v233);
    updated = v137;
    if (!v137)
    {
      goto LABEL_271;
    }

LABEL_459:
    v253 = 0;
    v254 = 0;
    v256 = 0;
    v258 = 0;
    idxa = 0;
    v275 = 0;
    v251 = 0;
    goto LABEL_379;
  }

  CFDictionarySetValue(v135, *MEMORY[0x1E69660D0], value);
  if (theDict)
  {
    CFRelease(theDict);
  }

  theDict = v136;
LABEL_271:
  v258 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v258)
  {
    vq_EnqueueFrame_cold_10(&block);
    v253 = 0;
    v254 = 0;
    v256 = 0;
    v258 = 0;
    idxa = 0;
    v275 = 0;
    v251 = 0;
    goto LABEL_119;
  }

  if (*(v283 + 856))
  {
    v254 = CFStringCreateWithCString(allocator, v283 + 856, 0x600u);
    FigCFDictionarySetValue();
  }

  else
  {
    v254 = 0;
  }

  time2.value = sbufPTS.value;
  flags = sbufPTS.flags;
  time2.timescale = sbufPTS.timescale;
  epoch = sbufPTS.epoch;
  taggedBufferGroup = sbufDuration.value;
  v140 = sbufDuration.flags;
  timescale = sbufDuration.timescale;
  v141 = sbufDuration.epoch;
  v253 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ((flags & 0x1D) == 1)
  {
    block.value = time2.value;
    block.timescale = time2.timescale;
    block.flags = flags;
    block.epoch = epoch;
    FigCFDictionarySetCMTime();
  }

  if ((v140 & 0x1D) == 1)
  {
    block.value = taggedBufferGroup;
    block.timescale = timescale;
    block.flags = v140;
    block.epoch = v141;
    FigCFDictionarySetCMTime();
  }

  if (v254)
  {
    CFDictionarySetValue(v253, @"LoggingID", v254);
  }

  v251 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(v283 + 648))
  {
    CFDictionarySetValue(v251, *MEMORY[0x1E69841E0], value);
  }

  idxa = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  v275 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    FigImageQueueCreateForCoreAnimationWithOptions(0, *(v283 + 6), v258, &v296);
    updated = v142;
    if (v142)
    {
      goto LABEL_462;
    }

    v143 = *(v283 + 71);
    if (v143)
    {
      FigImageQueueGetFigBaseObject();
      v145 = v144;
      v146 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v146)
      {
        v256 = 0;
        goto LABEL_378;
      }

      updated = v146(v145, @"FigImageQueueProperty_Timebase", v143);
      if (updated)
      {
LABEL_462:
        v256 = 0;
        goto LABEL_379;
      }
    }

    CFArrayAppendValue(idxa, v296);
    if (formatDescriptiona)
    {
      v147 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      CFArrayAppendValue(v275, v147);
      if (v147)
      {
        CFRelease(v147);
      }
    }

    else
    {
      CFArrayAppendValue(v275, *MEMORY[0x1E695E738]);
    }
  }

  if (*(v283 + 33))
  {
    v256 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    v148 = *(v283 + 33);
    if (v148)
    {
      v149 = CFArrayGetCount(v148);
    }

    else
    {
      v149 = 0;
    }

    v150 = *(v283 + 34);
    if (v150)
    {
      v151 = CFArrayGetCount(v150);
    }

    else
    {
      v151 = 0;
    }

    if (v149 >= 1)
    {
      v152 = 0;
      v153 = *MEMORY[0x1E695E738];
      while (1)
      {
        v154 = CFArrayGetValueAtIndex(*(v283 + 33), v152);
        FigImageQueueCreateForCoreVideoWithOptions(allocator, v258, &v295);
        updated = v155;
        if (v155)
        {
          goto LABEL_379;
        }

        v156 = v295;
        v157 = *(v283 + 71);
        v158 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v158)
        {
          break;
        }

        updated = v158(v156, v154, v157);
        if (updated)
        {
          goto LABEL_379;
        }

        CFArrayAppendValue(v256, v295);
        CFArrayAppendValue(idxa, v295);
        if (v295)
        {
          CFRelease(v295);
          v295 = 0;
        }

        v159 = v153;
        if (v152 < v151)
        {
          v159 = CFArrayGetValueAtIndex(*(v283 + 34), v152);
        }

        if (formatDescriptiona)
        {
          if (v153 == v159)
          {
            v160 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          else
          {
            v160 = FigCFDictionaryCreateMutableCopy();
          }

          v161 = v160;
          FigCFDictionarySetInt32();
          CFArrayAppendValue(v275, v161);
          if (v161)
          {
            CFRelease(v161);
          }
        }

        else
        {
          CFArrayAppendValue(v275, v159);
        }

        if (v149 == ++v152)
        {
          goto LABEL_318;
        }
      }

LABEL_378:
      updated = 4294954514;
      goto LABEL_379;
    }
  }

  else
  {
    v256 = 0;
  }

LABEL_318:
  if (!*(v283 + 36))
  {
LABEL_360:
    if (formatDescriptiona)
    {
      *(v283 + 705) = 1;
    }

    FigCFArrayApplyFunction();
    FigVideoRenderPipelineCreateWithFigImageQueueArray(allocator, v251, theDict, 0, 1, idxa, v275, v253, &v294);
    updated = v183;
    if (v183)
    {
      goto LABEL_379;
    }

    if (v247)
    {
      FigRenderPipelineGetFigBaseObject();
      v185 = v184;
      v186 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v186)
      {
        goto LABEL_378;
      }

      updated = v186(v185, @"ClientPID", v247);
      if (updated)
      {
        goto LABEL_379;
      }
    }

    FigRenderPipelineGetFigBaseObject();
    v188 = v187;
    v189 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v189)
    {
      v189(v188, @"VideoEnqueueResetsSystemSleepTimer", value);
    }

    updated = vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(a1, v294, values);
    if (!updated)
    {
      v190 = *(v283 + 7);
      v191 = v296;
      *(v283 + 7) = v296;
      if (v191)
      {
        CFRetain(v191);
      }

      if (v190)
      {
        CFRelease(v190);
      }

      v192 = *(v283 + 35);
      *(v283 + 35) = v256;
      if (v256)
      {
        CFRetain(v256);
      }

      if (v192)
      {
        CFRelease(v192);
      }

      updated = 0;
      *(DerivedStorage + 376) = v294;
      v294 = 0;
    }

    goto LABEL_379;
  }

  v163 = *MEMORY[0x1E6960680];
  v162 = *(MEMORY[0x1E6960680] + 8);
  v164 = *MEMORY[0x1E6960648];
  v165 = *(MEMORY[0x1E6960648] + 8);
  v166 = MEMORY[0x1E6960630];
  time2.value = 0;
  v261 = *MEMORY[0x1E6960630];
  *&block.value = *MEMORY[0x1E6960630];
  v243 = v165;
  v244 = v164;
  if (!v40)
  {
    v176 = v164;
LABEL_345:
    v177 = *(v283 + 36);
    if (v177)
    {
      v178 = CFArrayGetCount(v177);
      if (v178 >= 1)
      {
        v179 = 0;
        v240 = *(MEMORY[0x1E6960690] + 8);
        v242 = *MEMORY[0x1E6960690];
        v237 = *(MEMORY[0x1E69606A0] + 8);
        v239 = *MEMORY[0x1E69606A0];
        v262 = *MEMORY[0x1E6960698];
        tag2a = *(MEMORY[0x1E6960698] + 8);
        v235 = *(MEMORY[0x1E6960688] + 8);
        v236 = *MEMORY[0x1E6960688];
        while (1)
        {
          v180 = CFArrayGetValueAtIndex(*(v283 + 36), v179);
          v181 = CFArrayGetValueAtIndex(*(v283 + 37), v179);
          CFArrayRemoveAllValues(v181[3]);
          CFArrayRemoveAllValues(v181[4]);
          if (formatDescriptiona)
          {
            if (*(v181 + 16))
            {
              updated = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v242, v240, v249, idxa, v275, v181, v163, v162, v176, v165);
              if (updated)
              {
                goto LABEL_379;
              }

              FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v239, v237, v248, idxa, v275, v181, v163, v162, v176, v165);
            }

            else
            {
              FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v262, tag2a, v252, idxa, v275, v181, v163, v162, v244, v243);
            }
          }

          else if (v293 == 2)
          {
            FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = *(v181 + 16) ? vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v236, v235, -1, idxa, v275, v181, v163, v162, v176, v165) : vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v262, tag2a, -1, idxa, v275, v181, v163, v162, v244, v243);
          }

          else
          {
            FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v180, v262, tag2a, -1, idxa, v275, v181, v163, v162, v176, v165);
          }

          updated = FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo;
          if (FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo)
          {
            goto LABEL_379;
          }

          if (v178 == ++v179)
          {
            goto LABEL_360;
          }
        }
      }
    }

    goto LABEL_360;
  }

  v167 = CFArrayGetCount(v40);
  if (v167 < 1)
  {
    v176 = v244;
    goto LABEL_345;
  }

  v168 = 0;
  v169 = 0;
  v170 = 0;
  v171 = *v166;
  v172 = v166[1];
  v238.value = v172;
  v241 = *v166;
  *&v238.category = *v166;
  tag2 = v172;
  while (1)
  {
    v173 = CFArrayGetValueAtIndex(v40, v168);
    time2.value = 0;
    *&block.value = v261;
    CMTagCollectionGetTagsWithCategory(v173, kCMTagCategory_ProjectionType, &block, 1, &time2.value);
    if (time2.value == 1)
    {
      *&v327.category = v171;
      v327.value = v172;
      if (!CMTagEqualToTag(*&block.value, v327))
      {
        *&v174.category = block.value;
        if (v170)
        {
          v174.value = *&block.timescale;
          *&v328.category = v241;
          v328.value = tag2;
          if (!CMTagEqualToTag(v174, v328))
          {
            goto LABEL_463;
          }

          v170 = 1;
        }

        else
        {
          v170 = 1;
          tag2 = *&block.timescale;
          v241 = block.value;
        }
      }
    }

    time2.value = 0;
    *&block.value = v261;
    CMTagCollectionGetTagsWithCategory(v173, kCMTagCategory_PackingType, &block, 1, &time2.value);
    if (time2.value == 1)
    {
      *&v329.category = v171;
      v329.value = v172;
      if (!CMTagEqualToTag(*&block.value, v329))
      {
        break;
      }
    }

LABEL_334:
    if (v167 == ++v168)
    {
      if (v170)
      {
        v163 = v241;
        v162 = tag2;
      }

      if (v169)
      {
        v176 = *&v238.category;
      }

      else
      {
        v176 = v244;
      }

      if (v169)
      {
        v165 = v238.value;
      }

      else
      {
        v165 = v243;
      }

      goto LABEL_345;
    }
  }

  *&v175.category = block.value;
  if (!v169)
  {
    v169 = 1;
    v238 = *&block.value;
    goto LABEL_334;
  }

  v175.value = *&block.timescale;
  if (CMTagEqualToTag(v175, v238))
  {
    v169 = 1;
    goto LABEL_334;
  }

LABEL_463:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v231, v232, v233);
  updated = v230;
  v165 = v243;
  v176 = v244;
  if (!v230)
  {
    goto LABEL_345;
  }

LABEL_379:
  if (v296)
  {
    CFRelease(v296);
  }

  if (v295)
  {
    CFRelease(v295);
  }

  if (v256)
  {
    CFRelease(v256);
  }

  FigSimpleMutexUnlock();
  if (idxa)
  {
    CFRelease(idxa);
  }

  if (v275)
  {
    CFRelease(v275);
  }

  if (v294)
  {
    CFRelease(v294);
  }

  if (v253)
  {
    CFRelease(v253);
  }

  if (v251)
  {
    CFRelease(v251);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v250)
  {
    CFRelease(v250);
  }

  if (v254)
  {
    CFRelease(v254);
  }

  if (v258)
  {
    CFRelease(v258);
  }

  value_low = updated;
  if (updated)
  {
    goto LABEL_439;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  value_low = FigStartForwardingMediaServicesProcessDeathNotification();
  if (value_low)
  {
    goto LABEL_439;
  }

  vq_updateForCurrentTimebaseRate(a1);
  FigRenderPipelineGetFigBaseObject();
  v194 = v193;
  v195 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v195)
  {
    goto LABEL_438;
  }

  value_low = v195(v194, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], DerivedStorage + 384);
  if (value_low)
  {
    goto LABEL_439;
  }

  FigRenderPipelineGetFigBaseObject();
  v197 = v196;
  v198 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v198)
  {
    v198(v197, @"ObeyEmptyMediaMarkers", value);
  }

  FigRenderPipelineGetFigBaseObject();
  v200 = v199;
  VTable = CMBaseObjectGetVTable();
  v202 = *MEMORY[0x1E695E4C0];
  v203 = *(*(VTable + 8) + 56);
  if (v203)
  {
    v203(v200, @"RenderEmptyMedia", v202);
  }

  v204 = *(DerivedStorage + 408);
  if (v204)
  {
    FigRenderPipelineGetFigBaseObject();
    v206 = v205;
    v207 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v207)
    {
      v207(v206, @"VideoDecoderUsage", v204);
    }
  }

  if (*(DerivedStorage + 416))
  {
    v208 = value;
  }

  else
  {
    v208 = v202;
  }

  FigRenderPipelineGetFigBaseObject();
  v210 = v209;
  v211 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v211)
  {
    v211(v210, @"ForceFullPowerDecode", v208);
  }

  if (*(DerivedStorage + 417))
  {
    if (*(DerivedStorage + 418))
    {
      v202 = value;
    }

    FigRenderPipelineGetFigBaseObject();
    v213 = v212;
    v214 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v214)
    {
      v214(v213, @"PreventDisplaySleepDuringVideoPlayback", v202);
    }
  }

  v215 = *(DerivedStorage + 384);
  block = *(DerivedStorage + 432);
  value_low = CMBufferQueueInstallTrigger(v215, vq_sourceSampleBufferQueue_reachedLowWater, a1, 2, &block, (DerivedStorage + 496));
  if (value_low)
  {
    goto LABEL_439;
  }

  value_low = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 384), vq_sourceSampleBufferQueue_becameEmpty, a1, 10, 1, (DerivedStorage + 488));
  if (value_low)
  {
    goto LABEL_439;
  }

  if (!*(DerivedStorage + 568))
  {
LABEL_436:
    v220 = *(DerivedStorage + 576);
    FigRenderPipelineGetFigBaseObject();
    v222 = v221;
    v223 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v33 = DerivedStorage;
    if (v223)
    {
      v223(v222, @"PlaybackSessionID", v220);
      v33 = DerivedStorage;
    }

    goto LABEL_24;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    FigSimpleMutexLock();
    value_low = FigLayerSynchronizerCreate((DerivedStorage + 248));
    if (value_low)
    {
      FigSimpleMutexUnlock();
      goto LABEL_439;
    }

    FigLayerSynchronizerSetCompensateForDisplayLatency(*(DerivedStorage + 248), *(DerivedStorage + 239));
    FigSimpleMutexUnlock();
    value_low = vq_setSynchronizedLayers(a1);
    if (value_low)
    {
      goto LABEL_439;
    }

    CFRetain(*(DerivedStorage + 8));
    value_low = FigSyncMomentSourceCreateWithDispatchQueueAndDestructor(vq_synchronizeLayerToMoment, *(DerivedStorage + 8), vq_ReleaseWeakReferenceToSelf, *(DerivedStorage + 568), *(DerivedStorage + 536), (DerivedStorage + 256));
    if (value_low)
    {
      goto LABEL_439;
    }
  }

  v216 = *(DerivedStorage + 568);
  FigRenderPipelineGetFigBaseObject();
  v218 = v217;
  v219 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v219)
  {
LABEL_438:
    value_low = 4294954514;
    goto LABEL_439;
  }

  value_low = v219(v218, @"Timebase", v216);
  if (!value_low)
  {
    goto LABEL_436;
  }

LABEL_439:
  FigSimpleMutexUnlock();
  if (value_low)
  {
LABEL_440:
    v224 = value_low;
    LODWORD(sbufPTS.value) = 0;
    LOBYTE(sbufDuration.value) = 0;
    v225 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v226 = sbufPTS.value;
    v227 = LOBYTE(sbufDuration.value);
    if (os_log_type_enabled(v225, sbufDuration.value))
    {
      v228 = v226;
    }

    else
    {
      v228 = v226 & 0xFFFFFFFE;
    }

    if (v228)
    {
      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "vq_EnqueueFrame";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2048;
      v308 = sbuf;
      v309 = 1024;
      LODWORD(v310) = v224;
      LODWORD(v232) = 38;
      _os_log_send_and_compose_impl(v228, 0, &block, 128, &dword_1962D5000, v225, v227, "<<<< FigVideoQueue >>>> %s: %p Enqueue failed for sbuf %p with err=%d", &time2, v232, v233, v234);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    value_low = v224;
  }

LABEL_446:
  if (sBufOut)
  {
    CFRelease(sBufOut);
  }

  return value_low;
}

void sub_19678AAA4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

void vq_EnqueueH264FrameWithTimingInfoBaggage(uint64_t a1, int a2, int a3, const __CFData *a4, OpaqueCMBlockBuffer *a5, uint64_t a6, uint64_t a7, const void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  target = 0;
  sampleSizeArray = 0;
  if (*DerivedStorage)
  {
    v34 = qword_1EAF17788;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954511, "<<<< FigVideoQueue >>>>", 4815, v16);
    return;
  }

  *(DerivedStorage + 560) = 1;
  v35 = (DerivedStorage + 360);
  v36 = *(DerivedStorage + 360);
  if (!v36)
  {
LABEL_19:
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (CMVideoFormatDescriptionGetDimensions(v36).width != a2 || CMVideoFormatDescriptionGetDimensions(*v35).height != a3)
  {
    goto LABEL_33;
  }

  if (!a4)
  {
LABEL_9:
    vq_EnqueueH264FrameWithTimingInfoBaggage_cold_1(v47);
    goto LABEL_29;
  }

  if (*v35)
  {
    Extension = CMFormatDescriptionGetExtension(*v35, *MEMORY[0x1E69600A0]);
    if (Extension)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(Extension))
      {
        Value = CFDictionaryGetValue(Extension, @"avcC");
        if (Value)
        {
          v43 = CFArrayGetTypeID();
          if (v43 == CFGetTypeID(Value))
          {
            CFArrayGetValueAtIndex(Value, 0);
          }
        }
      }
    }
  }

  if (!FigCFEqual())
  {
LABEL_33:
    if (*v35)
    {
      CFRelease(*v35);
      *v35 = 0;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (*v35)
  {
    v39 = *MEMORY[0x1E695E480];
    goto LABEL_22;
  }

  CFDataGetLength(a4);
  CFDataGetBytePtr(a4);
  v39 = *MEMORY[0x1E695E480];
  if (!FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom())
  {
LABEL_22:
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
    CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a6);
    sampleSizeArray = CMBlockBufferGetDataLength(a5);
    if (!CMSampleBufferCreate(v39, a5, 1u, 0, 0, *v35, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &target))
    {
      if (a8)
      {
        CMSetAttachment(target, *MEMORY[0x1E6960478], a8, 1u);
      }

      v40 = target;
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v41)
      {
        v41(a1, v40, a7, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }

LABEL_29:
  if (target)
  {
    CFRelease(target);
  }
}

void vq_Flush(uint64_t a1, char a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  values = 0;
  if (*DerivedStorage)
  {
    v6 = qword_1EAF17788;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< FigVideoQueue >>>>", 4998, v2);
    return;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  v8 = *(v7 + 42);
  if (v8 && CFArrayGetCount(v8) >= 1)
  {
    CFArrayRemoveAllValues(*(v7 + 42));
  }

  if (*(v7 + 48))
  {
    ++v7[100];
    v9 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v7 + 100);
    v10 = CFDictionaryCreate(v9, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (CMSampleBufferCreate(v9, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target))
    {
      goto LABEL_40;
    }

    CMSetAttachment(target, *MEMORY[0x1E6960518], values, 1u);
    if ((a2 & 2) != 0)
    {
      Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"videoQueueFlushSBuf", *MEMORY[0x1E695E4D0]);
      CMSetAttachment(target, *MEMORY[0x1E6960500], Mutable, 1u);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMBufferQueueEnqueue(*(v7 + 48), target);
    if (a2)
    {
      if (*(v7 + 3) && !*(v7 + 32))
      {
        if (dword_1EAF17790)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cf[0] = 0;
        v13 = CMBaseObjectGetDerivedStorage();
        if (!FigDeferredTransactionCreate(v9, cf))
        {
          FPSupport_AppendDeferredTransactionChangeForHidingLayer(cf[0], *(v13 + 24), "vq_hideMaskingLayer");
          FigDeferredTransactionCommit(cf[0], 0);
          *(v13 + 32) = 1;
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      if (*(v7 + 6) && *(v7 + 649))
      {
        CAImageQueueFlush();
      }

      FigSimpleMutexLock();
      for (i = 0; ; ++i)
      {
        Count = *(v7 + 37);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 37), i);
        if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
        {
          v17 = 0;
          do
          {
            cf[0] = 0;
            VideoTargetInfoCopyCAImageQueueAtIndex(ValueAtIndex, v17, cf);
            if (cf[0])
            {
              CAImageQueueFlush();
              CFRelease(cf[0]);
            }

            ++v17;
          }

          while (v17 < CFArrayGetCount(ValueAtIndex[3]));
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if ((a2 & 2) != 0)
    {
      vq_safelyPostNotification(a1, @"FlushComplete", 0);
    }

    v10 = 0;
  }

  vq_Flush_cold_1(a1);
LABEL_40:
  FigSimpleMutexUnlock();
  if (values)
  {
    CFRelease(values);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (target)
  {
    CFRelease(target);
  }
}

BOOL vq_IsAboveHighWaterLevel(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 384);
  if (v2)
  {
    v3 = *(DerivedStorage + 480);
    if (v3 == 1)
    {
      if (CMBufferQueueGetBufferCount(v2) > 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      CMBufferQueueGetDuration(&time1, v2);
      value = time1.value;
      timescale = time1.timescale;
      if (time1.flags)
      {
        time1.value = value;
        time1.timescale = timescale;
        v6 = *(DerivedStorage + 456);
        if (CMTimeCompare(&time1, &v6) > 0)
        {
          return 1;
        }
      }
    }
  }

  v4 = CMBaseObjectGetDerivedStorage();
  return *(v4 + 328) && !*(v4 + 344) && !*(v4 + 376);
}

void vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, uint64_t a4, uint64_t a5, const void *a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  target = 0;
  sampleSizeArray = 0;
  if (*DerivedStorage)
  {
    v30 = qword_1EAF17788;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954511, "<<<< FigVideoQueue >>>>", 4895, v14);
    return;
  }

  if (a3)
  {
    v31 = DerivedStorage;
    *(DerivedStorage + 560) = 1;
    v32 = MEMORY[0x1E695E480];
    if (a2)
    {
      v36 = 0;
      if (FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer())
      {
        goto LABEL_16;
      }

      v33 = *(v31 + 368);
      if (v33)
      {
        CFRelease(v33);
      }

      *(v31 + 368) = v36;
    }

    else if (*(DerivedStorage + 368))
    {
      *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
      sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
      CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a4);
      sampleSizeArray = CMBlockBufferGetDataLength(a3);
      if (!CMSampleBufferCreate(*v32, a3, 1u, 0, 0, *(v31 + 368), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &target))
      {
        if (a6)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960478], a6, 1u);
        }

        v34 = target;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v35)
        {
          v35(a1, v34, a5, a7, a8, a9, a10, a11, a12, a13, a14);
        }
      }

      goto LABEL_16;
    }

    vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_1(&v36);
  }

  else
  {
    vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_2(&v36);
  }

LABEL_16:
  if (target)
  {
    CFRelease(target);
  }
}

uint64_t vq_RequestDecodeForPreroll(uint64_t a1, void *a2)
{
  values = a2;
  v4 = *(CMBaseObjectGetDerivedStorage() + 376);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {

      return v5(v4, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (a2)
    {
      v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVideoQueueNotificationParameter_RequestID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      vq_safelyPostNotification(a1, @"CompletedDecodeForPreroll", v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      vq_safelyPostNotification(a1, @"CompletedDecodeForPreroll", 0);
    }

    return 0;
  }
}

void vq_sourceSampleBufferQueue_reachedLowWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && !DerivedStorage[120])
  {

    vq_safelyPostNotification(a1, @"VideoQueueNowBelowLowWaterLevel", 0);
  }
}

double vq_sourceSampleBufferQueue_becameEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v8, 0, sizeof(v8));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v8, HostTimeClock);
  memset(&v7, 0, sizeof(v7));
  lhs = v8;
  v5 = *(DerivedStorage + 796);
  CMTimeSubtract(&v7, &lhs, &v5);
  vq_safelyPostNotification(a1, @"VideoQueueNowBelowLowWaterLevel", 0);
  if ((*(DerivedStorage + 808) & 1) == 0 || (lhs = v7, v5 = *(DerivedStorage + 820), (CMTimeCompare(&lhs, &v5) & 0x80000000) == 0))
  {
    *&result = vq_sourceSampleBufferQueue_becameEmpty_cold_1(a1, (DerivedStorage + 796), &v8).n128_u64[0];
  }

  return result;
}

void vq_synchronizeLayerToMoment(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = *(v6 + 31);
      if (v7)
      {
        FigLayerSynchronizerSynchronizeToMoment(v7, a2, 0);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

uint64_t vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 312) == a3)
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (FigCFEqual())
  {
    return 0;
  }

  v6 = *(v5 + 312);
  *(v5 + 312) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *(v5 + 320) = MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID();
  v7 = CMBaseObjectGetDerivedStorage();
  newMutableCollectionCopyOut = 0;
  v35 = 0;
  values = 0;
  cf = 0;
  v8 = *(v7 + 288);
  v9 = MEMORY[0x1E695E480];
  if (!v8 || (Count = CFArrayGetCount(v8), Count < 1))
  {
    v12 = 0;
    Mutable = 0;
    goto LABEL_36;
  }

  v10 = *v9;
  v11 = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v10, *(v7 + 312), &values);
  if (v11)
  {
    Mutable = v11;
    v12 = 0;
LABEL_35:
    v9 = MEMORY[0x1E695E480];
    goto LABEL_36;
  }

  MTSidebandVideoPropertiesSetLookupID(values, *(v7 + 320));
  v12 = CFArrayCreate(v10, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    vq_updateSidebandVideoPropertiesLookupIDForFormatDescription_cold_1(&v36);
    Mutable = v36;
    goto LABEL_35;
  }

  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 288), v13);
    v15 = CFArrayGetValueAtIndex(*(v7 + 296), v13);
    v16 = FigDataChannelConfigurationCreate(v10, 0, &cf);
    if (v16)
    {
LABEL_57:
      Mutable = v16;
      goto LABEL_35;
    }

    if (CFArrayGetCount(v15[3]) >= 1)
    {
      break;
    }

LABEL_27:
    v24 = cf;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v25)
    {
      Mutable = 4294954514;
      goto LABEL_35;
    }

    v16 = v25(ValueAtIndex, v24);
    if (v16)
    {
      goto LABEL_57;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (++v13 == Count)
    {
      Mutable = 0;
      goto LABEL_35;
    }
  }

  v17 = 0;
  while (1)
  {
    VideoTargetInfoCopyFigImageQueueAtIndex(v15, v17, &v35);
    v18 = FigCFArrayGetValueAtIndex();
    if (v18)
    {
      v19 = CFRetain(v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = CMTagCollectionCreateMutableCopy(v19, v10, &newMutableCollectionCopyOut);
    if (v20)
    {
      Mutable = v20;
      v22 = v35;
      goto LABEL_53;
    }

    v21 = newMutableCollectionCopyOut;
    v37 = CMTagMakeWithSInt64Value(kCMTagCategory_ChannelID, ++v17);
    CMTagCollectionAddTag(v21, v37);
    v22 = v35;
    v23 = FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(cf, v35, newMutableCollectionCopyOut, 0, v12);
    if (v23)
    {
      break;
    }

    if (newMutableCollectionCopyOut)
    {
      CFRelease(newMutableCollectionCopyOut);
      newMutableCollectionCopyOut = 0;
    }

    if (v22)
    {
      CFRelease(v22);
      v35 = 0;
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v17 >= CFArrayGetCount(v15[3]))
    {
      goto LABEL_27;
    }
  }

  Mutable = v23;
LABEL_53:
  v9 = MEMORY[0x1E695E480];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_36:
  if (newMutableCollectionCopyOut)
  {
    CFRelease(newMutableCollectionCopyOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*v9, 1, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt16();
    FigRenderPipelineGetFigBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v29)
    {
      v29(v28, @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", Mutable);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

OpaqueCMTaggedBufferGroup *vq_tagCollectionGetLayerIDsIfPresent(opaqueCMSampleBuffer *a1, int64_t *a2, int64_t *a3)
{
  result = CMSampleBufferGetTaggedBufferGroup(a1);
  if (result)
  {
    v6 = result;
    Count = CMTaggedBufferGroupGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v18 = a2;
      v19 = a3;
      v20 = 0;
      SInt64Value = 0;
      v9 = 0;
      v10 = 0;
      v22 = 0;
      v11 = 0;
      v12 = *MEMORY[0x1E6960690];
      v13 = *(MEMORY[0x1E6960690] + 8);
      v23 = *MEMORY[0x1E6960630];
      v15 = *MEMORY[0x1E69606A0];
      v14 = *(MEMORY[0x1E69606A0] + 8);
      do
      {
        TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v6, v9);
        tagBuffer = v23;
        numberOfTagsCopied = 0;
        *&v26.category = v12;
        v26.value = v13;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v26))
        {
          v10 = 1;
          if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
          {
            SInt64Value = CMTagGetSInt64Value(tagBuffer);
            HIDWORD(v22) = 1;
            v10 = 1;
          }
        }

        *&v27.category = v15;
        v27.value = v14;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v27))
        {
          v11 = 1;
          if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
          {
            v20 = CMTagGetSInt64Value(tagBuffer);
            v11 = 1;
            LODWORD(v22) = 1;
          }
        }

        ++v9;
      }

      while (v8 != v9);
      if (v10)
      {
        v17 = v11 == 0;
      }

      else
      {
        v17 = 1;
      }

      result = !v17;
      if (HIDWORD(v22))
      {
        if (v22)
        {
          *v18 = SInt64Value;
          *v19 = v20;
        }
      }
    }
  }

  return result;
}

OpaqueCMTaggedBufferGroup *vq_containsStereoVideoTaggedBufferGroup(opaqueCMSampleBuffer *a1, __CFArray *a2, int *a3)
{
  result = CMSampleBufferGetTaggedBufferGroup(a1);
  if (result)
  {
    v6 = result;
    Count = CMTaggedBufferGroupGetCount(result);
    if (Count < 1)
    {
      v21 = 0;
      result = 0;
    }

    else
    {
      v8 = Count;
      v23 = a3;
      v9 = 0;
      v26 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E6960640];
      v12 = *(MEMORY[0x1E6960640] + 8);
      v13 = *MEMORY[0x1E6960690];
      v14 = *(MEMORY[0x1E6960690] + 8);
      v24 = *(MEMORY[0x1E69606A0] + 8);
      v25 = *MEMORY[0x1E69606A0];
      do
      {
        TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v6, v9);
        *&v27.category = v11;
        v27.value = v12;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v27))
        {
          if (a2)
          {
            CFArrayAppendValue(a2, TagCollectionAtIndex);
          }

          *&v28.category = v13;
          v28.value = v14;
          if (CMTagCollectionContainsTag(TagCollectionAtIndex, v28))
          {
            ++v10;
            LODWORD(v26) = 1;
          }

          else
          {
            v29.value = v24;
            *&v29.category = v25;
            v16 = CMTagCollectionContainsTag(TagCollectionAtIndex, v29);
            if (v16)
            {
              ++v10;
            }

            v17 = HIDWORD(v26);
            if (v16)
            {
              v17 = 1;
            }

            HIDWORD(v26) = v17;
          }
        }

        ++v9;
      }

      while (v8 != v9);
      if (v26)
      {
        v18 = HIDWORD(v26) == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v18 = v10 == 2;
      v20 = v10 == 2;
      result = (v19 ^ 1u);
      if (v18)
      {
        v21 = v19 ^ 1;
      }

      else
      {
        v21 = 0;
      }

      a3 = v23;
      if ((v19 & 1) == 0 && a2)
      {
        vq_containsStereoVideoTaggedBufferGroup_cold_1(a2);
        result = 1;
        v21 = v20;
      }
    }

    if (a3)
    {
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      *a3 = v22;
    }
  }

  return result;
}

void vq_safelyPostNotification(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v9 = *(v6 + 67);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __vq_safelyPostNotification_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = v6;
      v10[5] = a2;
      v10[6] = v8;
      v10[7] = a3;
      dispatch_async(v9, v10);
    }
  }
}

void __vq_safelyPostNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

__n128 OUTLINED_FUNCTION_5_113(uint64_t a1)
{
  result = *v2;
  *v1 = *v2;
  v4 = v2[1].n128_u64[0];
  v1[1].n128_u64[0] = v4;
  *(a1 + 796) = result;
  *(a1 + 812) = v4;
  *(a1 + 844) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_62(uint64_t result)
{
  *(result + 848) = 0;
  *(result + 744) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_12_59(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

uint64_t figVTTDocumentWriter_RegisterFigVTTDocumentWriterBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTDocumentWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTDocumentWriterGetClassID_sRegisterFigVTTDocumentWriterBaseTypeOnce, figVTTDocumentWriter_RegisterFigVTTDocumentWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTDocumentWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTDocumentWriterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTDocumentWriterInvalidate(uint64_t a1)
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

uint64_t FigVTTDocumentWriterCreateAndAddNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTDocumentWriterFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigVideoQueueType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoQueueGetClassID_sRegisterFigVideoQueueTypeOnce, RegisterFigVideoQueueType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStreamingRestrictionsGetLatestRestrictions(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (sr_SetupOnce_sFigStreamingRestrictionsSetupOnce != -1)
  {
    FigStreamingRestrictionsGetLatestRestrictions_cold_1();
  }

  FigSimpleMutexLock();
  if (a1)
  {
    *a1 = qword_1EAF1A270;
  }

  if (a2)
  {
    *a2 = HIDWORD(qword_1EAF1A270);
  }

  if (a3)
  {
    *a3 = dword_1EAF1A278;
  }

  return FigSimpleMutexUnlock();
}

void sr_findPolicyForLevel(const __CFString *a1, uint64_t a2, CFStringRef *a3)
{
  IntValue = CFStringGetIntValue(a1);
  if (*a3)
  {
    v6 = CFStringGetIntValue(*a3);
  }

  else
  {
    v6 = -1;
  }

  if (qword_1ED4CA2B0 >= IntValue && v6 < IntValue)
  {
    v8 = *a3;
    *a3 = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v8)
    {

      CFRelease(v8);
    }
  }
}

uint64_t CreateServedAIGState(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10200409C399896uLL);
  if (!v2)
  {
    v5 = 326;
LABEL_6:
    CreateServedAIGState_cold_1(v5, &v6);
    result = v6;
    goto LABEL_3;
  }

  v3 = FigDispatchQueueCreateWithPriority();
  result = 0;
  v2[5] = v3;
  if (!v3)
  {
    v5 = 329;
    goto LABEL_6;
  }

LABEL_3:
  *a1 = v2;
  return result;
}

void DisposeServedAIGState(CFTypeRef *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      FigAssetImageGeneratorGetFigBaseObject();
      if (v2)
      {
        v3 = v2;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    if (a1[2])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigStopForwardingMediaServicesProcessDeathNotification();
      v5 = a1[2];
      if (v5)
      {
        CFRelease(v5);
        a1[2] = 0;
      }
    }

    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
      a1[1] = 0;
    }

    v7 = a1[5];
    if (v7)
    {
      dispatch_release(v7);
      a1[5] = 0;
      v8 = a1[1];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v9 = a1[6];
    if (v9)
    {
      os_release(v9);
    }

    free(a1);
  }
}

uint64_t serverXPCAIG_NotificationFilter(int a1, int a2, CFTypeRef cf1, const __CFDictionary *a4, uint64_t a5, void *a6)
{
  result = CFEqual(cf1, @"AIGDidGenerateCGImage");
  if (result)
  {
    Value = CFDictionaryGetValue(a4, @"CGImage");
    if (!Value || serverXPCAIG_AddCGImageToMessage(Value, a6))
    {
      return 1;
    }

    else
    {
      if (FigCFDictionaryGetCMTimeIfPresent())
      {
        FigXPCMessageSetCMTime();
      }

      if (FigCFDictionaryGetInt64IfPresent())
      {
        xpc_dictionary_set_int64(a6, "RequestID", 0);
      }

      return 2;
    }
  }

  return result;
}

void FigAssetImageGeneratorServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleAssetImageGeneratorMessage, HandleAssetImageGeneratorNoReplyMessage);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

void aigXPCServer_interruptionNotificationCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    FigAssetImageGeneratorGetFigBaseObject();
    if (v2)
    {
      v3 = v2;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {

        v4(v3);
      }
    }
  }
}

void __HandleAssetImageGeneratorMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != 1919250737)
  {
    if (v2 != 1668311405)
    {
      v8 = -16158;
      goto LABEL_19;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    cf = 0;
    v14 = 0;
    v17 = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v15 = v17;
    v16 = v18;
    FigXPCMessageGetCMTime();
    v5 = FigXPCMessageCopyCFDictionary();
    if (!v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v6)
      {
        v8 = -12782;
LABEL_15:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_19;
      }

      v7 = *MEMORY[0x1E695E480];
      v19 = v15;
      v20 = v16;
      v5 = v6(v3, &v19, v14, v7, &cf, &v17);
      if (!v5)
      {
        if (cf)
        {
          v8 = serverXPCAIG_AddCGImageToMessage(cf, v4);
          if (!v8)
          {
            v19 = v17;
            v20 = v18;
            FigXPCMessageSetCMTime();
          }
        }

        else
        {
          __HandleAssetImageGeneratorMessage_block_invoke_cold_1(&v19);
          v8 = v19;
        }

        goto LABEL_15;
      }
    }

    v8 = v5;
    goto LABEL_15;
  }

  v9 = *(a1 + 40);
  v17 = *MEMORY[0x1E6960CC0];
  v18 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTime();
  v10 = FigXPCMessageCopyCFDictionary();
  if (!v10)
  {
    v15 = v17;
    v16 = v18;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v11)
    {
      v8 = -12782;
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695E480];
    v19 = v15;
    v20 = v16;
    v10 = v11(v9, &v19, 0, v12);
  }

  v8 = v10;
LABEL_19:
  *(*(*(a1 + 32) + 8) + 24) = v8;
}

uint64_t weakReferenceTable_CopyPointerFromKey()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
  if (qword_1EAF1A290)
  {

    return FigCFWeakReferenceTableCopyValue();
  }

  else
  {
    weakReferenceTable_CopyPointerFromKey_cold_1(0, v0, v1, v2, v3, v4, v5, v6, v8, v9, SHIDWORD(v9), vars0);
    return 0;
  }
}

uint64_t __FigVideoQueueCreateRemoteWithOptions_block_invoke(uint64_t a1, mach_port_t a2, int a3, int *a4, void *a5, void *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(buffer, 0, sizeof(buffer));
  v12 = getpid();
  proc_name(v12, buffer, 0x20u);
  v13 = *(*(a1 + 32) + 208);
  v14 = dyld_program_sdk_at_least();
  v15 = *(a1 + 40);
  if (v15)
  {
    BytePtr = CFDataGetBytePtr(v15);
    v17 = *(a1 + 40);
    if (v17)
    {
      Length = CFDataGetLength(v17);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  LODWORD(result) = FigVideoQueueRemoteClient_Create(a2, a3, v13, v14, buffer, BytePtr, Length, a4, a5, a6, &v20);
  if (result)
  {
    return result;
  }

  else
  {
    return v20;
  }
}

uint64_t videoQueueRemote_HandleDeadServerConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = 1;
  *(DerivedStorage + 20) = 0;

  return CMNotificationCenterPostNotification();
}

uint64_t videoQueueRemote_handleDisplayMirroringChanged(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    FigVideoQueueGetCMBaseObject();
    v4 = v3;
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = VTable + 8;
    v7 = *(v6 + 56);
    if (v7)
    {

      return v7(v4, @"DisplayList", v2);
    }
  }

  return result;
}

uint64_t videoQueueRemote_oneTimeInitializationWork(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v1 = "com.apple.coremedia.mediaplaybackd.videoqueue";
  }

  else
  {
    v1 = "com.apple.coremedia.videoqueue";
  }

  return MEMORY[0x1EEDBDA00](v1, 40, figvideoqueuecallback_server, &_MergedGlobals_24);
}

uint64_t videoQueueRemote_Invalidate(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (dword_1EAF177B0)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *v5 = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  FigVideoQueueRemoteClient_Destroy(*(v5 + 5), v7, v8);
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  v3 = FigRPCDisposeServerConnection();
  if (v3)
  {
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
  }

  v10 = *(v5 + 22);
  if (v10)
  {
    FigSyncMomentSourceSetTimebase(v10, 0);
    FigSyncMomentSourceDestroy(*(v5 + 22));
    *(v5 + 22) = 0;
  }

  if (*(v5 + 20))
  {
    FigSimpleMutexLock();
    v11 = *(v5 + 21);
    if (v11)
    {
      CFRelease(v11);
      *(v5 + 21) = 0;
    }

    FigSimpleMutexUnlock();
  }

  v12 = *(v5 + 24);
  if (v12)
  {
    FigSyncMomentSourceDestroy(v12);
    *(v5 + 24) = 0;
  }

  v13 = *(v5 + 25);
  if (v13)
  {
    dispatch_release(v13);
    *(v5 + 25) = 0;
  }

  v14 = *(v5 + 27);
  if (v14)
  {
    [v14 removeObserversOnCADisplays];

    *(v5 + 27) = 0;
  }

  v15 = objc_autoreleasePoolPush();
  videoQueueRemote_removeHostLayer(a1, 0);
  if (*(v5 + 4))
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v16 = *(v5 + 4);
    if (v16)
    {
      CFRelease(v16);
      *(v5 + 4) = 0;
    }

    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v15);
  v17 = *(v5 + 14);
  if (v17)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __videoQueueRemote_Invalidate_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v5;
    dispatch_sync(v17, block);
  }

  v18 = *(v5 + 16);
  if (v18)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __videoQueueRemote_Invalidate_block_invoke_2;
    v24[3] = &__block_descriptor_40_e5_v8__0l;
    v24[4] = v5;
    dispatch_sync(v18, v24);
  }

  v19 = *(v5 + 10);
  if (v19)
  {
    CFRelease(v19);
    *(v5 + 10) = 0;
  }

  v20 = *(v5 + 11);
  if (v20)
  {
    CFRelease(v20);
    *(v5 + 11) = 0;
  }

  return v3;
}

double videoQueueRemote_Finalize(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  videoQueueRemote_Invalidate(a1);
  if (DerivedStorage[20])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[20] = 0;
  }

  v4 = DerivedStorage[19];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[19] = 0;
  }

  v5 = DerivedStorage[14];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[14] = 0;
  }

  v6 = DerivedStorage[16];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[16] = 0;
  }

  if (DerivedStorage[26])
  {
    MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
    if (qword_1EAF1A290)
    {
      FigCFWeakReferenceTableRemoveValue();
      DerivedStorage[26] = 0;
    }

    else
    {
      result = videoQueueRemote_Finalize_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), v17);
    }
  }

  if (dword_1EAF177B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

__CFString *videoQueueRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoQueueRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

void videoQueueRemote_CopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (DerivedStorage[16])
  {
    v9 = qword_1EAF177A8;
    v10 = v4;
    v11 = 4294955213;
    v12 = 1352;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< FigVideoQueueRemote >>>>", v12, v10);
    return;
  }

  v13 = DerivedStorage;
  if (*DerivedStorage)
  {
    v9 = qword_1EAF177A8;
    v10 = v4;
    v11 = 4294954511;
    v12 = 1355;
    goto LABEL_5;
  }

  if (!a2)
  {
    v9 = qword_1EAF177A8;
    v10 = v4;
    v11 = 4294955216;
    v12 = 1358;
    goto LABEL_5;
  }

  if (!a4)
  {
    v9 = qword_1EAF177A8;
    v10 = v4;
    v11 = 4294955216;
    v12 = 1361;
    goto LABEL_5;
  }

  if (CFEqual(a2, @"VideoQueue_ControlTimebase"))
  {
    v14 = *(v13 + 19);
LABEL_12:
    *a4 = CFRetain(v14);
    goto LABEL_20;
  }

  if (CFEqual(a2, @"VisualContextArray"))
  {
    v15 = *(v13 + 14);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __videoQueueRemote_CopyProperty_block_invoke;
    v25[3] = &__block_descriptor_48_e5_v8__0l;
    v25[4] = a4;
    v25[5] = v13;
    v16 = v25;
  }

  else
  {
    if (!CFEqual(a2, @"VideoTargetArray"))
    {
      if (CFEqual(a2, @"CurrentlyDisplayedCVPixelBuffer"))
      {
        v23 = 0;
        *buffer = 0;
        v22 = 0;
        cf = 0;
        v17 = FigVideoQueueRemoteClient_CopyCurrentlyDisplayedCVPixelBuffer(*(v13 + 5), &v23 + 1, buffer, &v23, &v22);
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v22;
        }

        if (!v18 && v23 && !FigRemote_CreatePixelBufferFromSerializedAtomData())
        {
          LODWORD(v23) = 0;
          *a4 = cf;
          cf = 0;
        }

        if (HIDWORD(v23))
        {
          FigMachPortReleaseSendRight_();
        }

        if (v23)
        {
          MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], *buffer);
        }

        goto LABEL_20;
      }

      if (!CFEqual(a2, @"CompensateForDisplayLatency"))
      {
        CStringPtr = CFStringGetCStringPtr(a2, 0);
        if (!CStringPtr)
        {
          CStringPtr = buffer;
          CFStringGetCString(a2, buffer, 512, 0);
        }

        cf = 0;
        if (!FigVideoQueueRemoteClient_GetProperty(*(v13 + 5), CStringPtr, &cf, &v26))
        {
          MEMORY[0x19A8D2B00](cf, v26, a3, a4);
          MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], cf, v26);
        }

        goto LABEL_20;
      }

      v19 = MEMORY[0x1E695E4C0];
      if (v13[104])
      {
        v19 = MEMORY[0x1E695E4D0];
      }

      v14 = *v19;
      goto LABEL_12;
    }

    v15 = *(v13 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __videoQueueRemote_CopyProperty_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a4;
    block[5] = v13;
    v16 = block;
  }

  dispatch_sync(v15, v16);
LABEL_20:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_SetProperty(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v58 = 0;
  theData = 0;
  v57 = 0;
  if (DerivedStorage[16])
  {
    v8 = qword_1EAF177A8;
    v9 = v3;
    v10 = 4294955213;
    v11 = 1229;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< FigVideoQueueRemote >>>>", v11, v9);
    return;
  }

  v12 = DerivedStorage;
  if (*DerivedStorage)
  {
    v8 = qword_1EAF177A8;
    v9 = v3;
    v10 = 4294954511;
    v11 = 1232;
    goto LABEL_5;
  }

  if (!a2)
  {
    v8 = qword_1EAF177A8;
    v9 = v3;
    v10 = 4294955216;
    v11 = 1235;
    goto LABEL_5;
  }

  if (CFEqual(@"VideoQueue_DisplayLayer", a2))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (*(v14 + 32) != a3)
    {
      v15 = v14;
      if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
      {
LABEL_46:
        v42 = cf;
LABEL_47:
        if (v42)
        {
          CFRelease(v42);
        }

        goto LABEL_58;
      }

      v16 = v15[4];
      if (v16)
      {
        FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf, v16);
        FPSupport_AppendDeferredTransactionChangeToRelease(cf, v15[4]);
        v15[4] = 0;
      }

      if (a3)
      {
        CFRetain(a3);
        v15[4] = a3;
        v17 = v15[27];
        if (v17)
        {
          FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(cf, v17, a3, "videoQueueRemote_setClientVideoLayer");
        }
      }

      else
      {
        v15[4] = 0;
        FigSimpleMutexLock();
        v21 = v15[21];
        if (v21)
        {
          CFRelease(v21);
          v15[21] = 0;
        }

        FigSimpleMutexUnlock();
      }

      v22 = cf;
      v23 = objc_autoreleasePoolPush();
      number = 0;
      valuePtr = 0;
      v24 = CMBaseObjectGetDerivedStorage();
      if (*(v24 + 32))
      {
        v25 = v24;
        FigVideoQueueGetCMBaseObject();
        v27 = v26;
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v28)
        {
          if (!v28(v27, @"VideoQueue_MakeCAContextForRemoteHost", *MEMORY[0x1E695E4D0]))
          {
            FigVideoQueueGetCMBaseObject();
            v30 = v29;
            v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v31)
            {
              v32 = v31(v30, @"VideoQueue_CAContextID", 0, &number);
              v33 = number;
              if (v32 || !number)
              {
                goto LABEL_43;
              }

              if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
              {
                v34 = *(v25 + 40);
                if (v34)
                {
                  goto LABEL_36;
                }

                [MEMORY[0x1E6979518] begin];
                [MEMORY[0x1E6979518] setDisableActions:1];
                v35 = [MEMORY[0x1E69793A8] layer];
                *(v25 + 40) = v35;
                [v35 setInheritsSecurity:1];
                [MEMORY[0x1E6979518] commit];
                v36 = *(v25 + 40);
                if (v36)
                {
                  CFRetain(v36);
                  v34 = *(v25 + 40);
LABEL_36:
                  FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification(v22, v34, *(v25 + 32), valuePtr, a1, @"VideoQueue_CAContextIDDidChange", "videoQueueRemote_updateHostLayer");
                  FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer(v22, *(v25 + 40), *(v25 + 32), "videoQueueRemote_updateHostLayer", *(v25 + 48), *(v25 + 56), *(v25 + 64), *(v25 + 72));
                  if (dword_1EAF177B0)
                  {
                    v62 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v38 = v62;
                    v39 = type;
                    v56 = os_log_and_send_and_compose_flags_and_os_log_type;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v40 = v38;
                    }

                    else
                    {
                      v40 = v38 & 0xFFFFFFFE;
                    }

                    if (v40)
                    {
                      v55 = *(v25 + 32);
                      v41 = [*(v25 + 40) description];
                      v66 = 136316418;
                      v67 = "videoQueueRemote_updateHostLayer";
                      v68 = 2048;
                      v69 = a1;
                      v70 = 2082;
                      v71 = v25 + 224;
                      v72 = 2112;
                      v73 = v55;
                      v74 = 2112;
                      v75 = v41;
                      v76 = 1024;
                      v77 = valuePtr;
                      _os_log_send_and_compose_impl(v40, 0, buffer, 128, &dword_1962D5000, v56, v39, "<<<< FigVideoQueueRemote >>>> %s: (%p) %{public}s clientVideoLayer %@, hostLayer %@ associated with CAContextID %d", &v66, 58);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        videoQueueRemote_removeHostLayer(a1, v22);
      }

      v33 = number;
LABEL_43:
      if (v33)
      {
        CFRelease(v33);
      }

      objc_autoreleasePoolPop(v23);
      FigDeferredTransactionCommit(cf, 0);
      goto LABEL_46;
    }

LABEL_58:
    objc_autoreleasePoolPop(v13);
    goto LABEL_59;
  }

  if (CFEqual(@"DisplayLayerVisibility", a2))
  {
    v13 = objc_autoreleasePoolPush();
    v18 = CMBaseObjectGetDerivedStorage();
    *buffer = 0;
    if (*(v18 + 32))
    {
      v19 = v18;
      v20 = *(v18 + 216);
      if (*MEMORY[0x1E695E4D0] != a3)
      {
        if (v20)
        {
          [v20 setBaseDisplayList:MEMORY[0x1E695E0F0]];
        }

        goto LABEL_58;
      }

      if (v20)
      {
        v47 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], buffer);
        v42 = *buffer;
        if (!v47)
        {
          FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(*buffer, *(v19 + 216), *(v19 + 32), "videoQueueRemote_setClientVideoLayerVisibility");
          FigDeferredTransactionCommit(*buffer, 0);
          v42 = *buffer;
        }

        goto LABEL_47;
      }
    }

    goto LABEL_58;
  }

  if (CFEqual(a2, @"VideoQueue_DisplayBounds"))
  {
    CGRectMakeWithDictionaryRepresentation(a3, (v12 + 48));
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    vq_updateHostLayerAffineTransform(a1);
    [MEMORY[0x1E6979518] commit];
    goto LABEL_51;
  }

  if (!CFEqual(a2, @"VideoQueue_ControlTimebase"))
  {
    if (CFEqual(a2, @"VisualContextArray"))
    {
      videoQueueRemote_updateVisualContextArrayAndCopyIDArray(a1, a3, &v58);
      if (v48)
      {
        goto LABEL_59;
      }

      a2 = @"VisualContextIDArray";
      a3 = v58;
    }

    else if (CFEqual(a2, @"VideoTargetArray"))
    {
      videoQueueRemote_updateVideoTargetArrayAndCopyIDArray(a1, a3, &v57);
      if (v51)
      {
        goto LABEL_59;
      }

      a2 = @"VideoTargetIDArray";
      a3 = v57;
    }

    else if (CFEqual(a2, @"CompensateForDisplayLatency"))
    {
      v53 = *MEMORY[0x1E695E4C0] != a3;
      v12[104] = v53;
      FigSimpleMutexLock();
      v54 = *(v12 + 21);
      if (v54)
      {
        FigLayerSynchronizerSetCompensateForDisplayLatency(v54, v53);
      }

      FigSimpleMutexUnlock();
    }

LABEL_51:
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    if (!CStringPtr)
    {
      CStringPtr = buffer;
      CFStringGetCString(a2, buffer, 512, 0);
    }

    if (!MEMORY[0x19A8D2A70](a3, *MEMORY[0x1E695E480], &theData))
    {
      v44 = *(v12 + 5);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      FigVideoQueueRemoteClient_SetProperty(v44, CStringPtr, BytePtr, Length);
    }

    goto LABEL_59;
  }

  if (!v12[144])
  {
    if (a3)
    {
      TypeID = CMTimebaseGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177A8, 4294955216, "<<<< FigVideoQueueRemote >>>>", 1263, v3);
        goto LABEL_59;
      }

      v50 = *(v12 + 19);
      *(v12 + 19) = a3;
      CFRetain(a3);
    }

    else
    {
      v50 = *(v12 + 19);
      *(v12 + 19) = 0;
    }

    if (v50)
    {
      CFRelease(v50);
    }

    videoQueueRemote_rebuildTimebaseSync(a1, a3);
    if (dword_1EAF177B0)
    {
      LODWORD(number) = 0;
      LOBYTE(cf) = 0;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_59;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177A8, 4294955216, "<<<< FigVideoQueueRemote >>>>", 1256, v3);
LABEL_59:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }
}

id *vq_updateHostLayerAffineTransform(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8) > 0.0)
  {
    v2 = result;
    if (*(result + 9) > 0.0)
    {
      [result[4] bounds];
      v4 = v3;
      v6 = v5;
      memset(&v12, 0, sizeof(v12));
      v7 = *(v2 + 8);
      v8 = *(v2 + 9);
      CGAffineTransformMakeScale(&v12, v3 / v7, v5 / v8);
      v10 = v12;
      CGAffineTransformTranslate(&v11, &v10, (v4 - v7) * 0.5, (v6 - v8) * 0.5);
      *&v12.c = *&v11.c;
      *&v12.tx = *&v11.tx;
      v9 = v2[5];
      *&v12.a = *&v11.a;
      return [v9 setAffineTransform:&v11];
    }
  }

  return result;
}

void videoQueueRemote_rebuildTimebaseSync(uint64_t a1, const void *a2)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __videoQueueRemote_rebuildTimebaseSync_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v4, block);
  if (!a2)
  {
    v9 = 0;
    v7 = 0;
LABEL_7:
    v10 = *(DerivedStorage + 200);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __videoQueueRemote_rebuildTimebaseSync_block_invoke_2;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = DerivedStorage;
    v11[5] = v9;
    v11[6] = v7;
    dispatch_sync(v10, v11);
    v9 = v13;
    goto LABEL_8;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10000409B4BCFF8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = *(v5 + 208);
    v6[8] = 1;
  }

  else if ((videoQueueRemote_rebuildTimebaseSync_cold_1() & 1) == 0)
  {
    return;
  }

  v8 = FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(videoQueueRemote_syncServerTimebaseToMoment, v7, videoQueueRemote_destroyTimebaseSyncState, a2, *(DerivedStorage + 200), &v13);
  v9 = v13;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v9)
  {
    CFRelease(v9);
  }
}

double videoQueueRemote_updateVisualContextArrayAndCopyIDArray(const void *a1, const __CFArray *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v8 = DerivedStorage, v9 = CFGetTypeID(a2), v9 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
LABEL_8:
      v15 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v15, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v17 = Mutable;
        if (Count < 1)
        {
LABEL_14:
          v21 = *(v8 + 112);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __videoQueueRemote_updateVisualContextArrayAndCopyIDArray_block_invoke;
          block[3] = &__block_descriptor_48_e5_v8__0l;
          block[4] = v8;
          block[5] = a2;
          dispatch_sync(v21, block);
          *a3 = v17;
        }

        else
        {
          v18 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v18);
            v25 = 0;
            FigVisualContextXPCRemoteGetObjectID(ValueAtIndex, &v25);
            if (v20 || FigCFArrayAppendInt64())
            {
              break;
            }

            if (Count == ++v18)
            {
              goto LABEL_14;
            }
          }

          CFRelease(v17);
        }
      }

      else
      {
        videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_1(&v25);
      }
    }

    else
    {
      v11 = 0;
      while (1)
      {
        v12 = CFArrayGetValueAtIndex(a2, v11);
        if (!v12)
        {
          break;
        }

        v13 = CFGetTypeID(v12);
        if (v13 != FigVisualContextGetTypeID(v13, v14))
        {
          break;
        }

        if (Count == ++v11)
        {
          goto LABEL_8;
        }
      }

      v23 = qword_1EAF177A8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294955216, "<<<< FigVideoQueueRemote >>>>", 812, v3);
    }
  }

  else
  {
    videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_2(&v25);
  }

  return result;
}

void videoQueueRemote_updateVideoTargetArrayAndCopyIDArray(const void *a1, const __CFArray *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v8 = DerivedStorage, v9 = CFGetTypeID(a2), v9 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
LABEL_8:
      v14 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v14, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v16 = Mutable;
        if (Count < 1)
        {
LABEL_14:
          v19 = *(v8 + 128);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_block_invoke;
          block[3] = &__block_descriptor_48_e5_v8__0l;
          block[4] = v8;
          block[5] = a2;
          dispatch_sync(v19, block);
          *a3 = v16;
        }

        else
        {
          v17 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v17);
            v22 = 0;
            if (FigVideoTargetXPCRemoteGetObjectID(ValueAtIndex, &v22) || FigCFArrayAppendInt64())
            {
              break;
            }

            if (Count == ++v17)
            {
              goto LABEL_14;
            }
          }

          CFRelease(v16);
        }
      }

      else
      {
        videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_1(&v22);
      }
    }

    else
    {
      v11 = 0;
      while (1)
      {
        v12 = CFArrayGetValueAtIndex(a2, v11);
        if (!v12)
        {
          break;
        }

        v13 = CFGetTypeID(v12);
        if (v13 != FigVideoTargetGetTypeID())
        {
          break;
        }

        if (Count == ++v11)
        {
          goto LABEL_8;
        }
      }

      v20 = qword_1EAF177A8;

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294955216, "<<<< FigVideoQueueRemote >>>>", 860, v3);
    }
  }

  else
  {
    videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_2(&v22);
  }
}

void __videoQueueRemote_rebuildTimebaseSync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 184);
  *(v2 + 184) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __videoQueueRemote_rebuildTimebaseSync_block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    if (!*(a1[4] + 184))
    {
      v14 = 0;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      v9 = 0u;
      v8 = 0u;
      v7 = 0u;
      v6 = 120;
      videoQueueRemote_syncServerTimebaseToMoment(v5, &v6);
    }
  }
}

void __videoQueueRemote_updateVisualContextArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void videoQueueRemote_Start(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v6 = qword_1EAF177A8;
    v7 = v2;
    v8 = 4294955213;
    v9 = 1459;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< FigVideoQueueRemote >>>>", v9, v7);
    return;
  }

  if (*DerivedStorage)
  {
    v6 = qword_1EAF177A8;
    v7 = v2;
    v8 = 4294954511;
    v9 = 1462;
    goto LABEL_5;
  }

  FigVideoQueueRemoteClient_Start(*(DerivedStorage + 20), a2, v5);
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_EnqueueFrame(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = a3;
  v41[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v24 = qword_1EAF177A8;
    v25 = v11;
    v26 = 4294955213;
    v27 = 1642;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v26, "<<<< FigVideoQueueRemote >>>>", v27, v25);
    return;
  }

  v28 = DerivedStorage;
  if (*DerivedStorage)
  {
    v24 = qword_1EAF177A8;
    v25 = v11;
    v26 = 4294954511;
    v27 = 1645;
    goto LABEL_5;
  }

  if (*(DerivedStorage + 144))
  {
    goto LABEL_9;
  }

  *(DerivedStorage + 144) = 1;
  if (!*(DerivedStorage + 152) || !*(DerivedStorage + 32) || !*(DerivedStorage + 40))
  {
    goto LABEL_9;
  }

  FigSimpleMutexLock();
  if (FigLayerSynchronizerCreate((v28 + 168)))
  {
    FigSimpleMutexUnlock();
    goto LABEL_35;
  }

  FigLayerSynchronizerSetCompensateForDisplayLatency(*(v28 + 168), *(v28 + 104));
  FigSimpleMutexUnlock();
  if (!videoQueueRemote_SetSynchronizedLayers(a1) && !FigSyncMomentSourceCreateWithDispatchQueue(videoQueueRemote_SynchronizeLayerToMoment, *(v28 + 208), *(v28 + 152), MEMORY[0x1E69E96A0], (v28 + 176)))
  {
LABEL_9:
    v41[0] = 0;
    if (a2)
    {
      Decryptor = FigSampleBufferGetDecryptor();
      if (Decryptor)
      {
        v30 = Decryptor;
        v31 = *(CMBaseObjectGetVTable() + 16);
        if (*v31 >= 4uLL)
        {
          v32 = v31[13];
          if (v32)
          {
            v32(v30, v41);
          }
        }
      }
    }

    if (CMSampleBufferGetTaggedBufferGroup(a2))
    {
      v39 = 0;
      v33 = CMBaseObjectGetDerivedStorage();
      v40 = 0;
      v38 = 0;
      v41[0] = 0;
      v41[1] = 0;
      if (!FigRemote_CreateSerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions())
      {
        *(v33 + 96) = (v38 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        FigVideoQueueRemoteClient_EnqueueTaggedBufferGroupBackedSampleBuffer(*(v33 + 20), 0, 0, 0, 0, v40, v38, v12, a4, a5, a6, a7, a8, a9, a10, a11, &v39);
      }

      for (i = 0; i != 16; i += 4)
      {
        if (*(v41 + i))
        {
          FigMachPortReleaseSendRight_();
        }
      }

      if (v38)
      {
        MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v40, v34);
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v35 = CMBaseObjectGetDerivedStorage();
      v41[0] = 0;
      v40 = 0;
      if (FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions())
      {
        *(v35 + 96) = 0;
      }

      else
      {
        v37 = v40;
        *(v35 + 96) = (v40 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        FigVideoQueueRemoteClient_EnqueueVideoSampleBuffer(*(v35 + 20), 0, v41[0], v37, v12, &v38, a4, a5, a6, a7, a8, a9, a10, a11);
      }

      FigMachPortReleaseSendRight_();
      if (v40)
      {
        MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v41[0]);
      }
    }
  }

LABEL_35:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_EnqueueH264Frame(uint64_t a1, uint64_t a2, uint64_t a3, const UInt8 *BytePtr, OpaqueCMBlockBuffer *a5, uint64_t a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v40 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  if (DerivedStorage[16])
  {
    v31 = qword_1EAF177A8;
    v32 = v15;
    v33 = 4294955213;
    v34 = 1716;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, "<<<< FigVideoQueueRemote >>>>", v34, v32);
    return;
  }

  v35 = DerivedStorage;
  if (*DerivedStorage)
  {
    v31 = qword_1EAF177A8;
    v32 = v15;
    v33 = 4294954511;
    v34 = 1719;
    goto LABEL_5;
  }

  if (BytePtr)
  {
    Length = CFDataGetLength(BytePtr);
    BytePtr = CFDataGetBytePtr(BytePtr);
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_15:
    v38 = 0;
    goto LABEL_18;
  }

  Length = 0;
  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_10:
  DataLength = CMBlockBufferGetDataLength(a5);
  if (DataLength)
  {
    v38 = DataLength;
    if (CMBlockBufferIsRangeContiguous(a5, 0, DataLength))
    {
      if (!CMBlockBufferGetDataPointer(a5, 0, 0, 0, &dataPointerOut))
      {
        LODWORD(a5) = 0;
LABEL_18:
        FigVideoQueueRemoteClient_EnqueueH264Frame(*(v35 + 5), a2, a3, BytePtr, Length, dataPointerOut, v38, a6, a8, a9, a10, a11, a12, a13, a14, a15, a7, &v40);
        if (a5 && v38)
        {
          MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], dataPointerOut, v38);
        }
      }
    }

    else if (!vm_allocate(*MEMORY[0x1E69E9A60], &dataPointerOut, v38, 1560281089))
    {
      CMBlockBufferCopyDataBytes(a5, 0, v38, dataPointerOut);
      LODWORD(a5) = 1;
      goto LABEL_18;
    }
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_EnqueueH264FrameWithTimingInfoBaggage(uint64_t a1, uint64_t a2, uint64_t a3, const __CFData *a4, OpaqueCMBlockBuffer *a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v48 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  dataPointerOut = 0;
  if (DerivedStorage[16])
  {
    v33 = qword_1EAF177A8;
    v34 = v16;
    v35 = 4294955213;
    v36 = 1800;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v35, "<<<< FigVideoQueueRemote >>>>", v36, v34);
    return;
  }

  v37 = DerivedStorage;
  if (*DerivedStorage)
  {
    v33 = qword_1EAF177A8;
    v34 = v16;
    v35 = 4294954511;
    v36 = 1803;
    goto LABEL_5;
  }

  if (a4)
  {
    Length = CFDataGetLength(a4);
    BytePtr = CFDataGetBytePtr(a4);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v45 = BytePtr;
  if (!a5)
  {
    v41 = 0;
    if (a8)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  DataLength = CMBlockBufferGetDataLength(a5);
  if (!DataLength)
  {
    goto LABEL_28;
  }

  v41 = DataLength;
  if (!CMBlockBufferIsRangeContiguous(a5, 0, DataLength))
  {
    if (vm_allocate(*MEMORY[0x1E69E9A60], &dataPointerOut, v41, 1560281089))
    {
      goto LABEL_28;
    }

    CMBlockBufferCopyDataBytes(a5, 0, v41, dataPointerOut);
    LOBYTE(a5) = 1;
    if (a8)
    {
      goto LABEL_18;
    }

LABEL_22:
    v42 = 0;
    v43 = 0;
    goto LABEL_23;
  }

  if (!CMBlockBufferGetDataPointer(a5, 0, 0, 0, &dataPointerOut))
  {
    LOBYTE(a5) = 0;
    if (!a8)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (MEMORY[0x19A8D2A70](a8, *MEMORY[0x1E695E480], &theData))
    {
      goto LABEL_24;
    }

    v42 = CFDataGetBytePtr(theData);
    v43 = CFDataGetLength(theData);
LABEL_23:
    FigVideoQueueRemoteClient_EnqueueH264FrameWithTimingInfoBaggage(*(v37 + 5), a2, a3, v45, Length, dataPointerOut, v41, a6, a9, a10, a11, a12, a13, a14, a15, a16, a7, v42, v43, &v48);
LABEL_24:
    v44 = a5 ^ 1;
    if (!v41)
    {
      v44 = 1;
    }

    if ((v44 & 1) == 0)
    {
      MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], dataPointerOut, v41);
    }
  }

LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_Flush(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v6 = qword_1EAF177A8;
    v7 = v2;
    v8 = 4294955213;
    v9 = 1982;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< FigVideoQueueRemote >>>>", v9, v7);
    return;
  }

  if (*DerivedStorage)
  {
    v6 = qword_1EAF177A8;
    v7 = v2;
    v8 = 4294954511;
    v9 = 1985;
    goto LABEL_5;
  }

  FigVideoQueueRemoteClient_Flush(*(DerivedStorage + 20), a2, v5);
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

uint64_t videoQueueRemote_IsAboveHighWaterLevel(uint64_t a1)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177A8, 4294955213, "<<<< FigVideoQueueRemote >>>>", 2004, v1);
  }

  else if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177A8, 4294954511, "<<<< FigVideoQueueRemote >>>>", 2007, v1);
  }

  else
  {
    IsAboveHighWaterLevel = FigVideoQueueRemoteClient_IsAboveHighWaterLevel(*(DerivedStorage + 20), &v7, v3);
    if (!FigRemote_ShouldConnectToMediaplaybackd())
    {
      FigRPCKillServerOnTimeout();
    }

    if (IsAboveHighWaterLevel)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7 == 0;
    }

    LOBYTE(result) = !v6;
  }

  return result;
}

void videoQueueRemote_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3, uint64_t a4, uint64_t a5, const UInt8 *BytePtr, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v16 = a5;
  v45 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  address = 0;
  dataPointerOut = 0;
  theData = 0;
  if (DerivedStorage[16])
  {
    v29 = qword_1EAF177A8;
    v30 = v14;
    v31 = 4294955213;
    v32 = 1894;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v31, "<<<< FigVideoQueueRemote >>>>", v32, v30);
    return;
  }

  v33 = DerivedStorage;
  if (*DerivedStorage)
  {
    v29 = qword_1EAF177A8;
    v30 = v14;
    v31 = 4294954511;
    v32 = 1897;
    goto LABEL_5;
  }

  if (!a2)
  {
    v35 = 0;
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  if (!DataLength)
  {
    goto LABEL_32;
  }

  v35 = DataLength;
  if (!CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, theData);
    goto LABEL_32;
  }

  if (!CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut))
  {
    if (a3)
    {
LABEL_13:
      v36 = CMBlockBufferGetDataLength(a3);
      if (!v36)
      {
        goto LABEL_32;
      }

      v37 = v36;
      if (CMBlockBufferIsRangeContiguous(a3, 0, v36))
      {
        if (!CMBlockBufferGetDataPointer(a3, 0, 0, 0, &address))
        {
          LOBYTE(a3) = 0;
          if (!BytePtr)
          {
            goto LABEL_26;
          }

LABEL_20:
          if (MEMORY[0x19A8D2A70](BytePtr, *MEMORY[0x1E695E480], &theData))
          {
            goto LABEL_28;
          }

          BytePtr = CFDataGetBytePtr(theData);
          Length = CFDataGetLength(theData);
LABEL_27:
          FigVideoQueueRemoteClient_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(*(v33 + 5), dataPointerOut, v35, address, v37, a4, v16, BytePtr, a7, a8, a9, a10, a11, a12, a13, a14, Length, &v45);
LABEL_28:
          v39 = a3 ^ 1;
          if (!v37)
          {
            v39 = 1;
          }

          if ((v39 & 1) == 0)
          {
            MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], address, v37);
          }

          goto LABEL_32;
        }

        goto LABEL_32;
      }

      if (vm_allocate(*MEMORY[0x1E69E9A60], &address, v37, 1560281089))
      {
        goto LABEL_32;
      }

      CMBlockBufferCopyDataBytes(a3, 0, v37, address);
      LOBYTE(a3) = 1;
      if (BytePtr)
      {
        goto LABEL_20;
      }

LABEL_26:
      Length = 0;
      goto LABEL_27;
    }

LABEL_19:
    v37 = 0;
    if (BytePtr)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

LABEL_32:
  if (theData)
  {
    CFRelease(theData);
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }
}

void videoQueueRemote_RequestDecodeForPreroll(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  if (DerivedStorage[16])
  {
    v5 = qword_1EAF177A8;
    v6 = v2;
    v7 = 4294955213;
    v8 = 2026;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< FigVideoQueueRemote >>>>", v8, v6);
    return;
  }

  v9 = DerivedStorage;
  if (*DerivedStorage)
  {
    v5 = qword_1EAF177A8;
    v6 = v2;
    v7 = 4294954511;
    v8 = 2029;
    goto LABEL_5;
  }

  if (!MEMORY[0x19A8D2A70](a2, *MEMORY[0x1E695E480], &theData))
  {
    v10 = *(v9 + 5);
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    FigVideoQueueRemoteClient_RequestDecodeForPreroll(v10, BytePtr, Length, &v14);
  }

  if (theData)
  {
    CFRelease(theData);
  }
}

uint64_t videoQueueRemote_SetSynchronizedLayers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 168))
  {
    v2 = CFArrayCreate(*MEMORY[0x1E695E480], (DerivedStorage + 40), 1, MEMORY[0x1E695E9C0]);
    v3 = FigLayerSynchronizerSetLayerArray(*(DerivedStorage + 168), v2);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void remoteXPCAsset_SetCachedAssetPropertyValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_SetCachedAssetPropertyValue_block_invoke;
  block[3] = &__block_descriptor_tmp_30_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
}

uint64_t FigAssetRemoteCreateWithURLAndRetry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = 0;
  if (!a5)
  {
    FigAssetRemoteCreateWithURLAndRetry_cold_1(&v13);
    return v13;
  }

  v10 = 5;
  while (1)
  {
    result = FigAssetRemoteCreateWithURL(a1, a2, a3, a4, &v12);
    if (result > -12179)
    {
      break;
    }

    if (result != -16155 && result != -16153)
    {
      return result;
    }

LABEL_9:
    if (!--v10)
    {
      return result;
    }
  }

  if (result)
  {
    if (result != -12178)
    {
      return result;
    }

    goto LABEL_9;
  }

  *a5 = v12;
  return result;
}

uint64_t FigAssetRemoteCreateWithFormatReader(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v14 = 0;
  if (!a2)
  {
    v13 = 2926;
LABEL_12:
    FigAssetRemoteCreateWithFormatReader_cold_2(v13, &v15);
    v10 = v15;
    goto LABEL_8;
  }

  if (!a5)
  {
    v13 = 2927;
    goto LABEL_12;
  }

  if (qword_1ED4CB900 != -1)
  {
    FigAssetRemoteCreateWithFormatReader_cold_1();
  }

  v10 = _MergedGlobals_120;
  if (_MergedGlobals_120)
  {
    goto LABEL_8;
  }

  v10 = remoteXPCAsset_CreateInternal(a1, 0, a2, 0, 0, -1, 0, a3, a4, &v14);
  v11 = v14;
  if (!v10)
  {
    remoteXPCAsset_SetCachedAssetPropertyValue(v14, @"assetProperty_FormatReader", a2);
    *a5 = v11;
LABEL_8:
    FigXPCRemoteClientKillServerOnTimeout();
    return v10;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t FigAssetRemoteCopyAssetWithDownloadToken(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v12 = 0;
  xdict = 0;
  v11 = 0;
  if (!a3)
  {
    FigAssetRemoteCopyAssetWithDownloadToken_cold_2(&v14);
    v6 = v14;
    goto LABEL_13;
  }

  if (qword_1ED4CB900 != -1)
  {
    FigAssetRemoteCreateWithFormatReader_cold_1();
  }

  v6 = _MergedGlobals_120;
  if (_MergedGlobals_120)
  {
    goto LABEL_13;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (xpc_dictionary_set_uint64(xdict, "DownloadToken", a2), v7 = remoteXPCAsset_CreateAssetObject(a1, &v11), v7) || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
  {
    v6 = v7;
LABEL_13:
    v9 = v11;
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(v12, *MEMORY[0x1E69615A0]);
  v9 = v11;
  v6 = remoteXPCAsset_CompleteAssetObjectSetup(v11, uint64);
  if (!v6)
  {
    *a3 = v9;
    goto LABEL_10;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t FigAssetXPCRemoteGetObjectID(const void *a1, void *a2)
{
  if (!a1)
  {
    FigAssetXPCRemoteGetObjectID_cold_4(&v6);
    return v6;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != FigAssetGetTypeID())
  {
    FigAssetXPCRemoteGetObjectID_cold_1(&v6);
    return v6;
  }

  if (CMBaseObjectGetVTable() != &kRemoteXPCAsset_VTable)
  {
    FigAssetXPCRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    FigAssetXPCRemoteGetObjectID_cold_3(&v6);
    return v6;
  }

  return remoteXPCAsset_GetObjectID(a1, a2);
}

uint64_t remoteXPCAsset_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    remoteXPCAsset_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 66))
    {
      remoteXPCAsset_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t remoteXPCAssetClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigAssetGetTypeID())
  {
    v3 = 40;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    result = FigAssetTrackGetTypeID();
    if (v4 != result)
    {
      return result;
    }

    v3 = 48;
  }

  result = CMBaseObjectGetDerivedStorage();
  *(result + v3) = 1;
  return result;
}

uint64_t remoteXPCAssetClient_NotificationFilter(const void *a1, const void *a2, void *a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  v5 = 0;
  if (!a2 || !theDict)
  {
    return v5;
  }

  if (CFDictionaryGetValue(theDict, @"CFErrorAsDictionary"))
  {
    v11 = FigCFErrorCreateFromPropertyList();
    if (!v11)
    {
      remoteXPCAssetClient_NotificationFilter_cold_2();
      return 0;
    }

    v12 = v11;
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    if (!MutableCopy)
    {
      remoteXPCAssetClient_NotificationFilter_cold_1();
      v5 = 0;
      goto LABEL_19;
    }

    v14 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"CFErrorAsDictionary");
    CFDictionarySetValue(v14, @"assetPayload_CFError", v12);
    v5 = 4;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v5 = 0;
  }

  if (CFEqual(a2, @"assetNotice_PropertyLoaded") || CFEqual(a2, @"assetNotice_PropertyRevised"))
  {
    Value = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (!Value)
    {
      goto LABEL_18;
    }

    v16 = Value;
    cf = 0;
    if (a1)
    {
      v17 = CFGetTypeID(a1);
      if (v17 != FigAssetGetTypeID())
      {
        goto LABEL_16;
      }
    }

    v18 = xpc_dictionary_get_value(a3, "LoadedValue");
    if (v18)
    {
      v19 = remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(a1, v18, v16, &cf);
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
      if (!a1)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v21 = *(DerivedStorage + 8);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = __remoteXPCAssetClient_HandleCachedPropertyLoaded_block_invoke;
    v26[3] = &__block_descriptor_tmp_14_6;
    v26[4] = DerivedStorage;
    v26[5] = v16;
    v27 = v19;
    v26[6] = v18;
    v26[7] = cf;
    dispatch_sync(v21, v26);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"assetNotice_PropertyFailedToLoad"))
  {
    if (CFDictionaryGetValue(theDict, @"assetPayload_Property"))
    {
      LODWORD(cf) = 0;
      FigCFDictionaryGetInt32IfPresent();
      if (a1)
      {
        CFGetTypeID(a1);
        FigAssetGetTypeID();
      }
    }
  }

  else if (CFEqual(a2, @"assetTrackNotice_PropertyLoaded") || CFEqual(a2, @"assetTrackNotice_PropertyRevised"))
  {
    v23 = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (v23)
    {
      remoteXPCAssetTrackClient_HandleCachedPropertyLoaded(a1, v23, a3);
    }
  }

  else if (CFEqual(a2, @"assetTrackNotice_PropertyFailedToLoad"))
  {
    v24 = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (v24)
    {
      v25 = v24;
      LODWORD(v26[0]) = 0;
      FigCFDictionaryGetInt32IfPresent();
      remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad(a1, v25, 0, v12);
    }
  }

  else if (a1 && CFEqual(a2, *MEMORY[0x1E69628A8]))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_18:
  *a5 = v14;
  if (v12)
  {
LABEL_19:
    CFRelease(v12);
  }

  return v5;
}

void remoteXPCAssetClient_ObjectPurgedCallback(const void *a1, uint64_t a2)
{
  v3 = CFGetTypeID(a1);
  if (v3 == FigAssetGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 66) = 1;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 != FigAssetTrackGetTypeID())
    {
      return;
    }

    *(CMBaseObjectGetDerivedStorage() + 49) = 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void remoteXPCAssetTrackClient_HandleCachedPropertyLoaded(const void *a1, const void *a2, void *a3)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == FigAssetTrackGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v13 = 0;
      value = xpc_dictionary_get_value(a3, "LoadedValue");
      v8 = value;
      if (value)
      {
        LODWORD(value) = remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(value, a2, &v13);
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(DerivedStorage + 16);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __remoteXPCAssetTrackClient_HandleCachedPropertyLoaded_block_invoke;
      v11[3] = &__block_descriptor_tmp_23_2;
      v11[4] = DerivedStorage;
      v11[5] = a2;
      v12 = value;
      v11[6] = v8;
      v11[7] = v9;
      dispatch_sync(v10, v11);
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }
}

void remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    TypeID = FigAssetTrackGetTypeID();
    if (a3)
    {
      if (v7 == TypeID)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = *(DerivedStorage + 16);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad_block_invoke;
        v11[3] = &__block_descriptor_tmp_24_2;
        v11[4] = DerivedStorage;
        v11[5] = a2;
        v12 = a3;
        v11[6] = a4;
        dispatch_sync(v10, v11);
      }
    }
  }
}

uint64_t remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(uint64_t a1, void *a2, CFTypeRef cf1, CFTypeRef *a4)
{
  if (CFEqual(cf1, @"assetProperty_FormatReader"))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (uint64)
    {
      v10 = FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64, &cf);
      if (!v10)
      {
LABEL_4:
        v11 = 0;
        *a4 = cf;
        return v11;
      }
    }

    else
    {
      v14 = xpc_dictionary_get_uint64(a2, "MediaParserFormatReaderObjectID");
      if (!v14)
      {
        goto LABEL_4;
      }

      v15 = a1 ? *(DerivedStorage + 41) : 1;
      v10 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(v14, v15, &cf);
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v11 = v10;
    v12 = cf;
LABEL_26:
    if (v12)
    {
      CFRelease(v12);
    }

    return v11;
  }

  if (CFEqual(cf1, @"assetProperty_CPEProtector"))
  {
    cf = 0;
    v12 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (!v12)
    {
      goto LABEL_9;
    }

    FigCPEProtectorXPCRemoteRetainCopiedCPEProtector(v12, &cf);
LABEL_8:
    v11 = v13;
    v12 = cf;
    if (v11)
    {
      goto LABEL_26;
    }

LABEL_9:
    v11 = 0;
    *a4 = v12;
    return v11;
  }

  if (CFEqual(cf1, @"assetProperty_CustomURLLoader"))
  {
    cf = 0;
    v16 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    FigXPCMessageCopyCFObject();
    if (v16)
    {
      v11 = FigCustomURLLoaderRemoteCreateWithObjectID();
      v17 = cf;
      if (v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    v11 = 0;
    *a4 = v17;
    cf = 0;
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  if (CFEqual(cf1, @"assetProperty_ContentKeyBoss"))
  {
    cf = 0;
    v12 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (!v12)
    {
      goto LABEL_9;
    }

    FigContentKeyBossCreateRemoteWithObjectID(*MEMORY[0x1E695E480], v12, &cf);
    goto LABEL_8;
  }

  if (CFEqual(cf1, @"assetProperty_DefaultContentKeySession"))
  {

    return remoteXPCAsset_DeserializeAndCreateDefaultContentKeySessionFromXPCDictionary(a2, a4);
  }

  if (CFEqual(cf1, @"assetProperty_HLSSessionKeys"))
  {

    return remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary(a2, a4);
  }

  if (CFEqual(cf1, @"assetProperty_Tracks"))
  {

    return remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary(a2, a4);
  }

  if (CFEqual(cf1, @"assetProperty_HLSAlternates"))
  {

    return remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary(a2, a4);
  }

  if (CFEqual(cf1, @"assetProperty_CommonMetadata") || CFEqual(cf1, @"assetProperty_QuickTimeMetadata") || CFEqual(cf1, @"assetProperty_QuickTimeUserData") || CFEqual(cf1, @"assetProperty_ISOUserData") || CFEqual(cf1, @"assetProperty_ID3Metadata") || CFEqual(cf1, @"assetProperty_iTunesMetadata") || CFEqual(cf1, @"assetProperty_VorbisCommentMetadata") || CFEqual(cf1, @"assetProperty_HLSMetadata"))
  {
    v20 = *MEMORY[0x1E69615C8];
    v21 = a2;
  }

  else
  {
    v19 = CFEqual(cf1, @"assetProperty_ID3MetadataBC");
    v20 = *MEMORY[0x1E69615C8];
    if (!v19)
    {

      return FigXPCMessageCopyCFObject();
    }

    v21 = a2;
  }

  return remoteXPCAsset_ConvertMetadataBinaryPListDataToArray(v21, v20);
}