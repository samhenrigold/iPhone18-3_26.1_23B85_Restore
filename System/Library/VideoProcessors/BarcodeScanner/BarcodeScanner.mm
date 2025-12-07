uint64_t FigSampleBufferProcessorCreateForBarcodeScanner(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  valuePtr = 13;
  if (!a3)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< BarcodeScanner >>>>", 2499, v3);
  }

  v6 = *MEMORY[0x29EDB8ED8];
  FigSampleBufferProcessorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v39 = v7;
    FigSampleBufferProcessorCreateForBarcodeScanner_cold_1();
    goto LABEL_59;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1016) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63C0], v9);
  if (v9)
  {
    CFRelease(v9);
  }

  v63 = 5000;
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, &v63);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D0], v10);
  if (v10)
  {
    CFRelease(v10);
  }

  v62 = 196608;
  v11 = CFNumberCreate(v6, kCFNumberCFIndexType, &v62);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63B0], v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = MRCContextCreateWithOptions();
  *(DerivedStorage + 1024) = v12;
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63B8], v12);
  *(DerivedStorage + 1032) = 0u;
  *(DerivedStorage + 1048) = 0x3FF0000000000000;
  *(DerivedStorage + 1056) = 0x3FF0000000000000;
  *(DerivedStorage + 1064) = FigSimpleMutexCreate();
  *(DerivedStorage + 1200) = 0;
  *(DerivedStorage + 992) = FigSimpleMutexCreate();
  v13 = dispatch_group_create();
  *(DerivedStorage + 1008) = v13;
  if (!v13)
  {
    FigSampleBufferProcessorCreateForBarcodeScanner_cold_3();
    v39 = 4294954516;
    goto LABEL_59;
  }

  v14 = MEMORY[0x29EDB93A0];
  v15 = *MEMORY[0x29EDB93A0];
  *(DerivedStorage + 1172) = *MEMORY[0x29EDB93A0];
  v16 = *(v14 + 16);
  *(DerivedStorage + 1188) = v16;
  *(DerivedStorage + 1148) = v15;
  *(DerivedStorage + 1164) = v16;
  *(DerivedStorage + 1124) = v15;
  *(DerivedStorage + 1140) = v16;
  *(DerivedStorage + 964) = v15;
  *(DerivedStorage + 980) = v16;
  v17 = MEMORY[0x29EDB9398];
  *(DerivedStorage + 1076) = *MEMORY[0x29EDB9398];
  *(DerivedStorage + 1092) = *(v17 + 16);
  *(DerivedStorage + 1204) = 1061158912;
  *(DerivedStorage + 1208) = 0;
  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 58) = 1;
  if (!a2)
  {
LABEL_55:
    v38 = VTPixelTransferSessionCreate(v6, (DerivedStorage + 40));
    v39 = v38;
    if (v38)
    {
      FigSampleBufferProcessorCreateForBarcodeScanner_cold_2(v38);
      goto LABEL_59;
    }

    VTSessionSetProperty(*(DerivedStorage + 40), *MEMORY[0x29EDBCF90], *MEMORY[0x29EDB8F00]);
    VTSessionSetProperty(*(DerivedStorage + 40), *MEMORY[0x29EDBCF88], *MEMORY[0x29EDBCE00]);
    *a3 = cf;
    return v39;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBB328]);
  v19 = CFDictionaryGetValue(a2, @"DrawDebugInfo");
  v20 = *MEMORY[0x29EDBFEB0];
  v21 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBFEB0]);
  if (!Value || !CFStringGetCString(Value, buffer, 1024, 0))
  {
LABEL_51:
    if (v19)
    {
      *(DerivedStorage + 48) = CFBooleanGetValue(v19);
    }

    if (v21)
    {
      sbp_bcs_setProperty(cf, v20, v21);
    }

    goto LABEL_55;
  }

  v42 = v20;
  v100 = 0;
  v99 = 0u;
  v98 = 0u;
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
  __stringp = buffer;
  theArray = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
  v22 = strsep(&__stringp, " \t");
  v85 = v22;
  if (!v22)
  {
    goto LABEL_46;
  }

  v23 = 0;
  v24 = 0;
  do
  {
    if (*v22)
    {
      ++v24;
      if (v23 > 231)
      {
        break;
      }

      v23 += 8;
    }

    v22 = strsep(&__stringp, " \t");
    (&v85)[v23 / 8] = v22;
  }

  while (v22);
  if (v24 < 1)
  {
LABEL_46:
    v20 = v42;
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1 && *(DerivedStorage + 1016))
      {
        FigSimpleMutexLock();
        CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D8], theArray);
        FigSimpleMutexUnlock();
      }

      CFRelease(theArray);
    }

    goto LABEL_51;
  }

  v59 = *MEMORY[0x29EDC6458];
  v58 = *MEMORY[0x29EDC6460];
  v57 = *MEMORY[0x29EDC6490];
  v56 = *MEMORY[0x29EDC6420];
  v55 = *MEMORY[0x29EDC6430];
  v54 = *MEMORY[0x29EDC6428];
  v53 = *MEMORY[0x29EDC6438];
  v52 = *MEMORY[0x29EDC6440];
  v51 = *MEMORY[0x29EDC6418];
  v50 = *MEMORY[0x29EDC6448];
  v49 = *MEMORY[0x29EDC6468];
  v47 = *MEMORY[0x29EDC6478];
  v48 = *MEMORY[0x29EDC6470];
  v45 = *MEMORY[0x29EDC6488];
  v46 = *MEMORY[0x29EDC6450];
  v43 = *MEMORY[0x29EDC6480];
  v44 = *MEMORY[0x29EDC6410];
  v25 = v24;
  while (1)
  {
    v61 = v25;
    v26 = SDWORD1(v25);
    v27 = (&v85)[SDWORD1(v25)];
    v28 = strcmp(v27, "-pixelFormat");
    if (v61 != 1 && !v28)
    {
      v29 = (&v85)[v26 + 1];
      if (!strcmp(v29, "420v"))
      {
        v31 = 875704438;
      }

      else
      {
        v30 = strcmp(v29, "420f");
        v31 = 875704422;
        if (v30)
        {
          goto LABEL_58;
        }
      }

      *(DerivedStorage + 1200) = v31;
      goto LABEL_35;
    }

    if (!strcmp(v27, "-drawDebugInfo"))
    {
      *(DerivedStorage + 48) = 1;
LABEL_38:
      *(&v25 + 1) = *(&v61 + 1);
      *&v25 = vadd_s32(*&v61, 0x1FFFFFFFFLL);
      goto LABEL_39;
    }

    if (!strcmp(v27, "-list"))
    {
      values = v59;
      v68 = v58;
      v69 = v57;
      v70 = v56;
      v71 = v55;
      v72 = v54;
      v73 = v53;
      v74 = v52;
      v75 = v51;
      v76 = v50;
      v77 = v49;
      v78 = v48;
      v79 = v47;
      v80 = v46;
      v81 = v45;
      v82 = v44;
      v83 = v43;
      puts("Symbologies usable with -symbology:");
      for (i = 0; i != 136; i += 8)
      {
        v66 = 0;
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        printf("\t%s\n", CStringPtrAndBufferToFree);
        free(v66);
      }

      goto LABEL_38;
    }

    if (strcmp(v27, "-symbology"))
    {
      break;
    }

    v35 = CFStringCreateWithCString(v6, (&v85)[v26 + 1], 0x8000100u);
    CFArrayAppendValue(theArray, v35);
    if (v35)
    {
      CFRelease(v35);
    }

LABEL_35:
    *(&v25 + 1) = *(&v61 + 1);
    *&v25 = vadd_s32(*&v61, 0x2FFFFFFFELL);
LABEL_39:
    if (v25 <= 0)
    {
      goto LABEL_46;
    }
  }

  if (!strcmp(v27, "-allSymbologies"))
  {
    values = v59;
    v68 = v58;
    v69 = v57;
    v70 = v56;
    v71 = v55;
    v72 = v54;
    v73 = v53;
    v74 = v52;
    v75 = v51;
    v76 = v50;
    v77 = v49;
    v78 = v48;
    v79 = v47;
    v80 = v46;
    v81 = v45;
    v82 = v44;
    v83 = v43;
    v32 = CFArrayCreate(v6, &values, 17, MEMORY[0x29EDB9000]);
    v103.length = CFArrayGetCount(v32);
    v103.location = 0;
    CFArrayAppendArray(theArray, v32, v103);
    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_38;
  }

LABEL_58:
  fig_log_get_emitter();
  v39 = 4294954514;
  LODWORD(v40) = -12782;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v3, v41, v19, v21, v42, v43, v44);
LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

  return v39;
}

uint64_t sbp_bcs_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    v12 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x29EDBFEB0]))
    {
      if (!a3 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a3)))
      {
        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954516;
        v11 = 795;
        goto LABEL_38;
      }

      if (*(v12 + 1016))
      {
        if (CFArrayGetCount(a3) < 1)
        {
          v25 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *MEMORY[0x29EDC6410];
          v17 = *MEMORY[0x29EDC6488];
          v18 = *MEMORY[0x29EDC6450];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
            if (CFEqual(ValueAtIndex, v16) || CFEqual(ValueAtIndex, v17))
            {
              v15 = 1;
            }

            else if (CFEqual(ValueAtIndex, v18))
            {
              v15 = 1;
            }

            ++v14;
          }

          while (CFArrayGetCount(a3) > v14);
          v25 = v15 != 0;
        }

        FigSimpleMutexLock();
        CFDictionarySetValue(*(v12 + 1016), *MEMORY[0x29EDC63D8], a3);
        FigSimpleMutexUnlock();
        if (*(v12 + 112) != 0 || v25)
        {
          v26 = 10;
        }

        else
        {
          v26 = 0;
        }

        LODWORD(rect.origin.x) = v26;
        v27 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &rect);
        CFDictionarySetValue(*(v12 + 1016), *MEMORY[0x29EDC63C8], v27);
        if (v27)
        {
          CFRelease(v27);
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x29EDBFE88]))
    {
      if (!a3 || (v20 = CFDictionaryGetTypeID(), v20 != CFGetTypeID(a3)))
      {
        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954516;
        v11 = 817;
        goto LABEL_38;
      }

      v21 = *(MEMORY[0x29EDB90E0] + 16);
      v35 = *MEMORY[0x29EDB90E0];
      rect.origin = *MEMORY[0x29EDB90E0];
      v34 = v21;
      rect.size = v21;
      if (!CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v34.width, LODWORD(v34.height), LODWORD(v35.x));
      }

      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v38.size.width = 1.0;
      v38.size.height = 1.0;
      if (CGRectIntersectsRect(rect, v38))
      {
        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        v39.size.width = 1.0;
        v39.size.height = 1.0;
        rect = CGRectIntersection(rect, v39);
      }

      else
      {
        rect.origin = v35;
        rect.size = v34;
      }

      FigSimpleMutexLock();
      size = rect.size;
      *(v12 + 1032) = rect.origin;
      *(v12 + 1048) = size;
      FigSimpleMutexUnlock();
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x29EDBFE98]))
      {
        v22 = CFGetTypeID(a3);
        if (v22 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          result = 0;
          *(v12 + 1209) = Value;
          *(v12 + 58) = Value == 0;
          return result;
        }

        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954516;
        v11 = 831;
        goto LABEL_38;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBFEA0]))
      {
        result = *(v12 + 1024);
        if (!result)
        {
          return result;
        }

        if (*(v12 + 1016))
        {
          MRCContextPreflightForDecoderUsingOptions();
        }
      }

      else
      {
        if (!CFEqual(a2, *MEMORY[0x29EDBFEA8]))
        {
          if (!CFEqual(a2, *MEMORY[0x29EDBFE90]))
          {
            return 4294954512;
          }

          v32 = CFGetTypeID(a3);
          if (v32 == CFBooleanGetTypeID())
          {
            v33 = CFBooleanGetValue(a3);
            result = 0;
            *(v12 + 112) = v33;
            return result;
          }

          emitter = fig_log_get_emitter();
          v9 = v3;
          v10 = 4294954516;
          v11 = 859;
          goto LABEL_38;
        }

        v28 = MEMORY[0x29EDB9398];
        v29 = *MEMORY[0x29EDB9398];
        *(v12 + 1076) = *MEMORY[0x29EDB9398];
        v30 = *(v28 + 16);
        *(v12 + 1092) = v30;
        *(v12 + 1100) = v29;
        *(v12 + 1116) = v30;
        *(v12 + 160) = 0;
        clearBarcodes(a1);
      }
    }

    return 0;
  }

  emitter = fig_log_get_emitter();
  v9 = v3;
  v10 = 4294954511;
  v11 = 762;
LABEL_38:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< BarcodeScanner >>>>", v11, v9);
}

uint64_t sbp_bcs_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  if (!*(DerivedStorage + 16))
  {
    v2 = DerivedStorage;
    *(DerivedStorage + 16) = 1;
    v3 = *(DerivedStorage + 24);
    if (v3)
    {
      CVPixelBufferPoolRelease(v3);
      v2[3] = 0;
    }

    if (v2[4])
    {
      FigFormatDescriptionRelease();
      v2[4] = 0;
    }

    v4 = v2[5];
    if (v4)
    {
      VTPixelTransferSessionInvalidate(v4);
      v5 = v2[5];
      if (v5)
      {
        CFRelease(v5);
        v2[5] = 0;
      }
    }

    v6 = v2[126];
    if (v6)
    {
      dispatch_release(v6);
      v2[126] = 0;
    }

    v7 = v2[127];
    if (v7)
    {
      CFDictionaryRemoveAllValues(v7);
      v8 = v2[127];
      if (v8)
      {
        CFRelease(v8);
      }

      v2[127] = 0;
    }

    v9 = v2[128];
    if (v9)
    {
      CFRelease(v9);
      v2[128] = 0;
    }

    v10 = (v2 + 43);
    v11 = 4;
    do
    {
      v12 = *(v10 - 2);
      if (v12)
      {
        CFRelease(v12);
        *(v10 - 2) = 0;
      }

      v13 = *(v10 - 1);
      if (v13)
      {
        CFRelease(v13);
        *(v10 - 1) = 0;
      }

      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      v10 += 24;
      --v11;
    }

    while (v11);
    v14 = v2[23];
    if (v14)
    {
      CFRelease(v14);
      v2[23] = 0;
    }
  }

  return 0;
}

uint64_t sbp_bcs_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sbp_bcs_invalidate(a1);
  if (*(DerivedStorage + 992))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 992) = 0;
  }

  result = *(DerivedStorage + 1064);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 1064) = 0;
  }

  return result;
}

__CFString *sbp_bcs_copyDebugDescription(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_BarcodeScanner %p>", a1);
  return Mutable;
}

uint64_t sbp_bcs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    if (!a4)
    {
      emitter = fig_log_get_emitter();
      v9 = v4;
      v10 = 4294954516;
      v11 = 684;
      goto LABEL_3;
    }

    v13 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x29EDBB330]))
    {
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(0);
      v16 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      valuePtr = 875704438;
      v17 = *(v13 + 1200);
      if (v17 == 875704438 || !v17)
      {
        v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v16, v18);
        CFRelease(v18);
        v17 = *(v13 + 1200);
      }

      valuePtr = 875704422;
      if (v17 == 875704422 || !v17)
      {
        v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v16, v19);
        CFRelease(v19);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E0], v16);
      CFRelease(v16);
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96D0], IOSurfacePropertiesDictionary);
      Value = CFDictionaryGetValue(IOSurfacePropertiesDictionary, *MEMORY[0x29EDBB140]);
      if (Value)
      {
        v25 = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &v25);
        PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96A0], PixelBufferCacheModeArray);
        CFRelease(PixelBufferCacheModeArray);
      }

      CFRelease(IOSurfacePropertiesDictionary);
      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBFE88]))
    {
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(v13 + 1032));
      if (DictionaryRepresentation)
      {
        v23 = DictionaryRepresentation;
        result = 0;
        *a4 = v23;
        return result;
      }

      return 4294954510;
    }

    if (!CFEqual(a2, *MEMORY[0x29EDBFEB0]))
    {
      return 4294954512;
    }

    v24 = CFDictionaryGetValue(*(v13 + 1016), *MEMORY[0x29EDC63D8]);
    if (v24)
    {
      Mutable = v24;
      CFRetain(v24);
    }

    else
    {
      Mutable = CFArrayCreate(*MEMORY[0x29EDB8ED8], 0, 0, MEMORY[0x29EDB9000]);
      if (!Mutable)
      {
        return 4294954510;
      }
    }

LABEL_17:
    result = 0;
    *a4 = Mutable;
    return result;
  }

  emitter = fig_log_get_emitter();
  v9 = v4;
  v10 = 4294954511;
  v11 = 680;
LABEL_3:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< BarcodeScanner >>>>", v11, v9);
}

__CFDictionary *createIOSurfacePropertiesDictionary(int a1)
{
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  if (a1)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 1280;
  }

  valuePtr = v3;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDBB140], v5);
  CFRelease(v5);
  return MutableCopy;
}

uint64_t sbp_bcs_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< BarcodeScanner >>>>", 970, v3);
  }

  else
  {
    *DerivedStorage = a2;
    *(DerivedStorage + 8) = a3;
    return 0;
  }
}

uint64_t sbp_bcs_processSampleBuffer(void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  if (*(DerivedStorage + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< BarcodeScanner >>>>", 2265, v2);
  }

  v8 = DerivedStorage;
  v9 = CMGetAttachment(a2, *MEMORY[0x29EDBFFA0], 0);
  if (v9)
  {
    CMTimeMakeFromDictionary(&valuePtr.duration, v9);
    *(v8 + 64) = *&valuePtr.duration.value;
    epoch = valuePtr.duration.epoch;
  }

  else
  {
    memset(&valuePtr, 0, sizeof(valuePtr));
    CMSampleBufferGetSampleTimingInfoArray(a2, 1, &valuePtr, 0);
    *(v8 + 64) = *&valuePtr.presentationTimeStamp.value;
    epoch = valuePtr.presentationTimeStamp.epoch;
  }

  *(v8 + 80) = epoch;
  v11 = *(v8 + 48);
  v12 = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v14 = MEMORY[0x29EDBFF98];
  v15 = MEMORY[0x29EDC0008];
  v230 = a1;
  sbuf = a2;
  v227 = v8;
  if (v11)
  {
    v16 = *(v12 + 24);
    v17 = MEMORY[0x29EDB8ED8];
    if (v16 || (CMSampleBufferGetFormatDescription(a2), v18 = FigFormatDescriptionRetain(), *(v12 + 32) = v18, valuePtr.duration.value = CMVideoFormatDescriptionGetDimensions(v18), (v16 = *(v12 + 24)) != 0))
    {
LABEL_11:
      v19 = CVPixelBufferPoolCreatePixelBuffer(*v17, v16, &pixelBufferOut);
      if (v19)
      {
        v25 = v19;
        sbp_bcs_processSampleBuffer_cold_2();
      }

      else
      {
        v20 = VTPixelTransferSessionTransferImage(*(v12 + 40), ImageBuffer, pixelBufferOut);
        if (!v20)
        {
          value = pixelBufferOut;
          if (!pixelBufferOut)
          {
            sbp_bcs_processSampleBuffer_cold_4(&pixelBufferOut, &valuePtr);
            value = valuePtr.duration.value;
          }

          PixelFormatType = CVPixelBufferGetPixelFormatType(value);
          Width = CVPixelBufferGetWidth(value);
          if ((Width & 0xF) != 0)
          {
            v24 = v14;
LABEL_17:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v211, sampleSizeArray);
            fig_log_get_emitter();
            v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArraya, v212, sampleSizeArraya);
            v14 = v24;
            goto LABEL_18;
          }

          if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
          {
            if (CVPixelBufferGetBytesPerRowOfPlane(value, 0) != Width)
            {
              v24 = v14;
              goto LABEL_17;
            }
          }

          else
          {
            if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
            {
              v24 = v14;
              goto LABEL_17;
            }

            if (CVPixelBufferGetBytesPerRowOfPlane(value, 0) != Width)
            {
              v24 = v14;
              goto LABEL_17;
            }
          }

          v26 = CMSampleBufferGetImageBuffer(sbuf);
          goto LABEL_19;
        }

        v25 = v20;
        sbp_bcs_processSampleBuffer_cold_3();
      }

      CMSampleBufferGetImageBuffer(sbuf);
      goto LABEL_266;
    }

    cf = (v12 + 24);
    v239 = ImageBuffer;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    LODWORD(t1.a) = CMFormatDescriptionGetMediaSubType(v18);
    *&time2.a = 3;
    LODWORD(v263.a) = 0;
    LODWORD(v258.a) = 0;
    LODWORD(rect.origin.x) = 64;
    LODWORD(v259.origin.x) = 64;
    v34 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v35 = CFNumberCreate(0, kCFNumberSInt32Type, &t1);
    CFArrayAppendValue(v34, v35);
    CFRelease(v35);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E0], v34);
    CFRelease(v34);
    v36 = *v17;
    v37 = CFNumberCreate(*v17, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9750], v37);
    CFRelease(v37);
    v38 = CFNumberCreate(v36, kCFNumberSInt32Type, &valuePtr.duration.value + 4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96C8], v38);
    CFRelease(v38);
    IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(1);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96D0], IOSurfacePropertiesDictionary);
    v40 = CFDictionaryGetValue(IOSurfacePropertiesDictionary, *MEMORY[0x29EDBB140]);
    if (v40)
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v40, kCFNumberSInt32Type, values);
      PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96A0], PixelBufferCacheModeArray);
      CFRelease(PixelBufferCacheModeArray);
    }

    CFRelease(IOSurfacePropertiesDictionary);
    LODWORD(v263.a) = ((LODWORD(valuePtr.duration.value) + 15) & 0xFFFFFFF0) - LODWORD(valuePtr.duration.value);
    v42 = (v12 + 24);
    if (LODWORD(v263.a))
    {
      v43 = CFNumberCreate(v36, kCFNumberSInt32Type, &v263);
      CFDictionarySetValue(Mutable, *MEMORY[0x29EDB96C0], v43);
      CFRelease(v43);
    }

    LODWORD(v258.a) = ((HIDWORD(valuePtr.duration.value) + 15) & 0xFFFFFFF0) - HIDWORD(valuePtr.duration.value);
    if (LODWORD(v258.a))
    {
      v44 = CFNumberCreate(v36, kCFNumberSInt32Type, &v258);
      CFDictionarySetValue(Mutable, *MEMORY[0x29EDB96B0], v44);
      CFRelease(v44);
    }

    v45 = CFNumberCreate(v36, kCFNumberSInt32Type, &rect);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E8], v45);
    CFRelease(v45);
    v46 = CFNumberCreate(v36, kCFNumberSInt32Type, &v259);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9698], v46);
    CFRelease(v46);
    v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v48 = CFNumberCreate(0, kCFNumberCFIndexType, &time2);
    CFDictionaryAddValue(v47, *MEMORY[0x29EDB96F0], v48);
    CFRelease(v48);
    v49 = CVPixelBufferPoolCreate(v36, v47, Mutable, cf);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v49)
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49, v2, sampleSizeArray, v215, v216, theDict, v220, v222);
      v8 = v227;
      v14 = MEMORY[0x29EDBFF98];
    }

    else
    {
      if (SLODWORD(time2.a) < 1)
      {
        v59 = 0;
        v8 = v227;
        v14 = MEMORY[0x29EDBFF98];
      }

      else
      {
        v50 = v17;
        v51 = *cf;
        v52 = LODWORD(time2.a) & 0x7FFFFFFF;
        v53 = 8 * v52;
        v54 = malloc_type_malloc(v53, 0x2004093837F09uLL);
        if (v54)
        {
          v55 = v54;
          bzero(v54, v53);
          v56 = v55;
          v57 = v52;
          while (1)
          {
            PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v36, v51, v56);
            v59 = PixelBuffer;
            if (PixelBuffer)
            {
              break;
            }

            ++v56;
            if (!--v57)
            {
              goto LABEL_56;
            }
          }

          sbp_bcs_processSampleBuffer_cold_1(PixelBuffer);
LABEL_56:
          v60 = 0;
          v8 = v227;
          v14 = MEMORY[0x29EDBFF98];
          do
          {
            CVPixelBufferRelease(v55[v60++]);
          }

          while (v52 != v60);
          free(v55);
          v17 = v50;
          v42 = (v12 + 24);
        }

        else
        {
          v59 = -12786;
          v8 = v227;
          v14 = MEMORY[0x29EDBFF98];
          v17 = v50;
        }
      }

      fprintf(*MEMORY[0x29EDCA610], "Configuration: BarcodeScanner Output Pool: (%d x %d)\n", LODWORD(valuePtr.duration.value), HIDWORD(valuePtr.duration.value));
      if (!v59)
      {
        v16 = *v42;
        ImageBuffer = v239;
        goto LABEL_11;
      }
    }

    fig_log_get_emitter();
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v211, sampleSizeArray);
LABEL_18:
    v26 = CMSampleBufferGetImageBuffer(sbuf);
    if (!v25)
    {
LABEL_19:
      v27 = v26;
      goto LABEL_76;
    }

LABEL_266:
    sbp_bcs_processSampleBuffer_cold_5(v25);
    goto LABEL_123;
  }

  if (*(v12 + 58))
  {
    v28 = CMGetAttachment(a2, @"PreviewBuffer", 0);
    if (v28)
    {
      v29 = CMGetAttachment(a2, *v14, 0);
      CFDictionaryRemoveValue(v29, *v15);
    }
  }

  else
  {
    v28 = 0;
  }

  if (ImageBuffer)
  {
    _ZF = v28 == 0;
  }

  else
  {
    _ZF = 0;
  }

  if (_ZF)
  {
    v27 = ImageBuffer;
  }

  else
  {
    v27 = v28;
  }

  pixelBufferOut = CVPixelBufferRetain(v27);
  if (!*(v8 + 49))
  {
    *(v8 + 49) = 1;
    LODWORD(valuePtr.duration.value) = 0;
    v31 = CMGetAttachment(v27, @"RotationDegrees", 0);
    if (v31)
    {
      CFNumberGetValue(v31, kCFNumberIntType, &valuePtr);
      v32 = valuePtr.duration.value;
    }

    else
    {
      v32 = 0;
    }

    *(v8 + 52) = v32;
    v61 = CMGetAttachment(v27, @"MirroredHorizontal", 0);
    if (!v61 || (v62 = v61, v63 = CFGetTypeID(v61), v63 != CFBooleanGetTypeID()))
    {
      v64 = CMGetAttachment(v27, @"Mirrored", 0);
      if (!v64)
      {
LABEL_69:
        *(v8 + 56) = v64;
        v66 = CMGetAttachment(v27, @"MirroredVertical", 0);
        if (v66)
        {
          v67 = v66;
          v68 = CFGetTypeID(v66);
          if (v68 == CFBooleanGetTypeID())
          {
            LOBYTE(v66) = CFBooleanGetValue(v67);
          }

          else
          {
            LOBYTE(v66) = 0;
          }
        }

        *(v8 + 57) = v66;
        if (*(v8 + 52) == 180 && CMGetAttachment(v27, @"Mirrored", 0))
        {
          v69 = *(v8 + 56);
          *(v8 + 56) = *(v8 + 57);
          *(v8 + 57) = v69;
        }

        goto LABEL_76;
      }

      v62 = v64;
      v65 = CFGetTypeID(v64);
      if (v65 != CFBooleanGetTypeID())
      {
        LOBYTE(v64) = 0;
        goto LABEL_69;
      }
    }

    LOBYTE(v64) = CFBooleanGetValue(v62);
    goto LABEL_69;
  }

LABEL_76:
  if (!*(v8 + 184))
  {
    Height = CVPixelBufferGetHeight(v27);
    v71 = Height <= CVPixelBufferGetWidth(v27) ? CVPixelBufferGetWidth(v27) : CVPixelBufferGetHeight(v27);
    if (v71 > 0x4FF || *(v8 + 168))
    {
      v72 = ensurePyramidArray(v27, (v8 + 176), (v8 + 172), (v8 + 184));
      if (v72)
      {
        v25 = v72;
        sbp_bcs_processSampleBuffer_cold_6();
        goto LABEL_123;
      }
    }
  }

  v73 = *v14;
  v74 = CMGetAttachment(sbuf, *v14, 0);
  if (!v74 && !*(v8 + 48))
  {
    if (v27)
    {
      CFRelease(v27);
    }

    fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v211, sampleSizeArray);
  }

  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    v75 = *(MEMORY[0x29EDB90E0] + 16);
    *(v8 + 120) = *MEMORY[0x29EDB90E0];
    *(v8 + 136) = v75;
  }

  v221 = v73;
  v76 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFC0], 0);
  if (v76 && (v77 = v76, v78 = CFGetTypeID(v76), v78 == CFBooleanGetTypeID()) && CFBooleanGetValue(v77) && ((v79 = CMBaseObjectGetDerivedStorage(), v80 = v79, *(v79 + 112)) || !dispatch_group_wait(*(v79 + 1008), 0)))
  {
    *(v80 + 1000) = CVPixelBufferRetain(v27);
    *(v80 + 1148) = *(v80 + 64);
    *(v80 + 1164) = *(v80 + 80);
    if (*(v80 + 112))
    {
      detectBarcodesInFrame(v230);
    }

    else
    {
      v203 = *(v80 + 1008);
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_group_async_f(v203, global_queue, v230, detectBarcodesInFrame);
    }

    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = CMBaseObjectGetDerivedStorage();
  v83 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFD0], 0);
  v84 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFD8], 0);
  if (v83)
  {
    v85 = v84;
    if (v84)
    {
      CFNumberGetValue(v83, kCFNumberFloatType, (v82 + 152));
      CFNumberGetValue(v85, kCFNumberFloatType, (v82 + 156));
      *(v82 + 160) = vadd_f32(*(v82 + 152), *(v82 + 160));
      *(v82 + 1124) = *(v82 + 64);
      *(v82 + 1140) = *(v82 + 80);
    }
  }

  v86 = CMBaseObjectGetDerivedStorage();
  v87 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFE0], 0);
  if (!v87 || (v88 = v87, v89 = CFGetTypeID(v87), v89 != CFBooleanGetTypeID()) || CFBooleanGetValue(v88))
  {
    if (*(v86 + 1088))
    {
      goto LABEL_107;
    }

    *(v86 + 1076) = *(v86 + 64);
    *(v86 + 1092) = *(v86 + 80);
    v90 = v86 + 1100;
    v91 = MEMORY[0x29EDB9398];
    *(v86 + 1100) = *MEMORY[0x29EDB9398];
    v92 = *(v91 + 16);
    goto LABEL_106;
  }

  v201 = MEMORY[0x29EDB9398];
  *(v86 + 1076) = *MEMORY[0x29EDB9398];
  *(v86 + 1092) = *(v201 + 16);
  *(v86 + 160) = 0;
  if (!*(v86 + 112))
  {
    goto LABEL_239;
  }

  v90 = v86 + 1100;
  if ((*(v86 + 1112) & 1) == 0)
  {
    *v90 = *(v86 + 64);
    v92 = *(v86 + 80);
LABEL_106:
    *(v90 + 16) = v92;
    goto LABEL_107;
  }

  *&time2.a = *(v86 + 64);
  time2.c = *(v86 + 80);
  *&t1.a = *v90;
  t1.c = *(v86 + 1116);
  CMTimeSubtract(&valuePtr.duration, &time2, &t1);
  CMTimeMake(&time2, 300, 1000);
  if (CMTimeCompare(&valuePtr.duration, &time2) >= 1)
  {
LABEL_239:
    clearBarcodes(v230);
  }

LABEL_107:
  if (!*(v8 + 48))
  {
    v254 = 0;
    sbp_bcs_updateBarcodeLocations(v230, pixelBufferOut, &v254);
    if (v81)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v93 = pixelBufferOut;
  v94 = CMBaseObjectGetDerivedStorage();
  v95 = CVPixelBufferGetWidth(v93);
  v96 = CVPixelBufferGetHeight(v93);
  v97 = CVPixelBufferLockBaseAddress(v93, 0);
  if (v97)
  {
    v25 = v97;
    sbp_bcs_processSampleBuffer_cold_7(v97);
    v8 = v227;
    goto LABEL_123;
  }

  *&valuePtr.duration.value = *(v94 + 1124);
  valuePtr.duration.epoch = *(v94 + 1140);
  *&time2.a = *(v94 + 64);
  time2.c = *(v94 + 80);
  if (CMTimeCompare(&valuePtr.duration, &time2))
  {
    v98 = v95;
    v248 = v95;
    v99 = v95 / 10;
    v100 = 8 * v98 / 10;
    FigDrawLumaRectangle(v93, v99, v96 / 10, v100, 8 * v96 / 10, 20);
    FigDrawLumaRectangle(v93, v99 - 2, v96 / 10 - 2, v100 + 4, 8 * v96 / 10 + 4, 240);
    FigDrawLumaRectangle(v93, v248 / 2 - 10, v96 / 2 - 10, 20, 20, 255);
    FigDrawLumaRectangle(v93, (*(v94 + 152) + (v248 / 2 - 10)), (*(v94 + 156) + (v96 / 2 - 10)), 20, 20, 0);
  }

  CVPixelBufferUnlockBaseAddress(v93, 0);
  if ((v81 & 1) == 0)
  {
    v101 = pixelBufferOut;
    v102 = CMBaseObjectGetDerivedStorage();
    v103 = CVPixelBufferGetWidth(v101);
    v104 = CVPixelBufferGetHeight(v101);
    v105 = CVPixelBufferLockBaseAddress(v101, 0);
    v8 = v227;
    if (v105)
    {
      v25 = v105;
      sbp_bcs_processSampleBuffer_cold_8(v105);
      goto LABEL_123;
    }

    v273.origin.x = 0.0;
    v273.origin.y = 0.0;
    v273.size.width = 1.0;
    v273.size.height = 1.0;
    if (CGRectEqualToRect(*(v102 + 1032), v273))
    {
      FigDraw420Line(v101, 0, v104 / 2, v103 - 1, v104 / 2, 224, 38, 201);
      FigDraw420Line(v101, v103 / 2, 0, v103 / 2, v104 - 1, 224, 38, 201);
    }

    CVPixelBufferUnlockBaseAddress(v101, 0);
    v254 = 0;
    sbp_bcs_updateBarcodeLocations(v230, pixelBufferOut, &v254);
LABEL_119:
    *(v8 + 160) = 0;
    goto LABEL_120;
  }

  v254 = 0;
  sbp_bcs_updateBarcodeLocations(v230, pixelBufferOut, &v254);
  v8 = v227;
LABEL_120:
  if (*(v8 + 112) && !v254)
  {
    v25 = 0;
    *(v8 + 88) = *(v8 + 64);
    *(v8 + 104) = *(v8 + 80);
LABEL_123:
    ++*(v8 + 60);
    goto LABEL_255;
  }

  v106 = pixelBufferOut;
  v107 = CMBaseObjectGetDerivedStorage();
  v108 = CVPixelBufferGetWidth(v106);
  v109 = CVPixelBufferGetHeight(v106);
  if (!v74)
  {
    v110 = *MEMORY[0x29EDB8ED8];
    v111 = sbuf;
    goto LABEL_128;
  }

  v110 = *MEMORY[0x29EDB8ED8];
  v111 = sbuf;
  if (*(v107 + 1209))
  {
LABEL_128:
    MutableCopy = CFDictionaryCreateMutable(v110, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    goto LABEL_129;
  }

  Count = CFDictionaryGetCount(v74);
  MutableCopy = CFDictionaryCreateMutableCopy(v110, Count + 1, v74);
LABEL_129:
  theDicta = MutableCopy;
  memset(&valuePtr, 0, sizeof(valuePtr));
  allocator = v110;
  v114 = CFArrayCreateMutable(v110, 4, MEMORY[0x29EDB9000]);
  if (CMSampleBufferGetSampleTimingInfoArray(v111, 1, &valuePtr, 0))
  {
    v261 = *MEMORY[0x29EDB9398];
    v115 = *(MEMORY[0x29EDB9398] + 16);
  }

  else
  {
    v261 = *&valuePtr.presentationTimeStamp.value;
    v115 = *&valuePtr.presentationTimeStamp.epoch;
  }

  v262 = v115;
  *&time2.a = v261;
  time2.c = v115;
  v232 = CMTimeCopyAsDictionary(&time2, allocator);
  memset(&rect, 0, sizeof(rect));
  v116 = CMGetAttachment(v111, *MEMORY[0x29EDBFFA8], 0);
  __asm { FMOV            V0.2D, #1.0 }

  v236 = _Q0;
  if (v116)
  {
    CGRectMakeWithDictionaryRepresentation(v116, &rect);
    _Q0 = v236;
  }

  else
  {
    rect.origin.y = 0.0;
    rect.origin.x = 0.0;
    rect.size = _Q0;
  }

  theArray = v114;
  v259.origin.x = 0.0;
  v259.origin.y = 0.0;
  v259.size = _Q0;
  v121 = CMGetAttachment(v111, *MEMORY[0x29EDBFFB0], 0);
  if (v121)
  {
    CGRectMakeWithDictionaryRepresentation(v121, &v259);
  }

  x = v259.origin.x;
  y = v259.origin.y;
  v124 = v259.size.width;
  v125 = v259.size.height;
  *cfb = *(MEMORY[0x29EDB90A0] + 16);
  *&v258.a = *MEMORY[0x29EDB90A0];
  *v249 = *&v258.a;
  *&v258.c = *cfb;
  *&v258.tx = *(MEMORY[0x29EDB90A0] + 32);
  v240 = *&v258.tx;
  v268.origin.x = 0.0;
  v268.origin.y = 0.0;
  v268.size.width = 1.0;
  v268.size.height = 1.0;
  v126 = -CGRectGetMidX(v268);
  v269.origin.x = 0.0;
  v269.origin.y = 0.0;
  v269.size.width = 1.0;
  v269.size.height = 1.0;
  MidY = CGRectGetMidY(v269);
  CGAffineTransformMakeTranslation(&time2, v126, -MidY);
  *&t1.a = *v249;
  *&t1.c = *cfb;
  *&t1.tx = v240;
  CGAffineTransformConcat(&v258, &t1, &time2);
  CGAffineTransformMakeScale(&t1, 1.0 / v124, 1.0 / v125);
  v263 = v258;
  CGAffineTransformConcat(&time2, &v263, &t1);
  v258 = time2;
  v270.origin.x = x;
  v270.origin.y = y;
  v270.size.width = v124;
  v270.size.height = v125;
  MidX = CGRectGetMidX(v270);
  v271.origin.x = x;
  v271.origin.y = y;
  v271.size.width = v124;
  v271.size.height = v125;
  v129 = CGRectGetMidY(v271);
  CGAffineTransformMakeTranslation(&t1, MidX, v129);
  v263 = v258;
  CGAffineTransformConcat(&time2, &v263, &t1);
  v258 = time2;
  FigSimpleMutexLock();
  v130 = 0;
  v131 = v107 + 192;
  v132 = v107 + 988;
  v238 = *MEMORY[0x29EDB90B8];
  if (v108)
  {
    v133 = v109 == 0;
  }

  else
  {
    v133 = 1;
  }

  v134 = !v133;
  v234 = (2 * v109);
  v235 = (2 * v108);
  v237 = v108;
  v135 = v109;
  v226 = *MEMORY[0x29EDBFE80];
  v225 = *MEMORY[0x29EDBFE70];
  v224 = *MEMORY[0x29EDBFE60];
  v223 = *MEMORY[0x29EDBFE68];
  v136 = (v107 + 272);
  key = *MEMORY[0x29EDC63F8];
  do
  {
    v241 = v131 + 192 * v130;
    if (!*(v241 + 160) || *(v132 + v130))
    {
      goto LABEL_214;
    }

    v137 = 0;
    memset(&t1, 0, 32);
    v138 = 1;
    memset(&v263, 0, 32);
    v139 = 0.0;
    v140 = 1.0;
    v141 = v136;
    v142 = 1.0;
    v143 = 0.0;
    *values = 0u;
    v257 = 0u;
    do
    {
      if (!v134)
      {
        v147 = v238;
        goto LABEL_170;
      }

      if (*(v107 + 1208))
      {
        v144 = *(v141 - 1);
        if (*(v241 + 64))
        {
          v145 = (v144 + *(v141 - 10)) / v235;
          v146 = (*v141 + *(v141 - 9)) / v234;
        }

        else
        {
          v145 = v144 / v237;
          v146 = *v141 / v135;
        }
      }

      else
      {
        v145 = *(v141 - 1) / v237;
        v146 = *v141 / v135;
      }

      v148 = v145;
      v149 = v146;
      v150 = (v148 - rect.origin.x) / rect.size.width;
      v151 = (v149 - rect.origin.y) / rect.size.height;
      v152 = fmaxf(v150, v151);
      v154 = fminf(v150, v151) >= 0.0 && v152 <= 1.0;
      v155 = v150;
      v156 = v151;
      if (*(v107 + 56))
      {
        cfc = v151;
        v250 = v150;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v157 = time2.tx + time2.c * cfc + time2.a * v250;
        v158 = time2.ty + time2.d * cfc + time2.b * v250;
        CGAffineTransformMakeScale(&time2, -1.0, 1.0);
        v159 = time2.tx + v158 * time2.c + time2.a * v157;
        v160 = time2.ty + v158 * time2.d + time2.b * v157;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        ty = time2.ty;
        v155 = time2.tx + v160 * time2.c + time2.a * v159;
        v162 = v160 * time2.d + time2.b * v159;
LABEL_164:
        v156 = ty + v162;
        goto LABEL_165;
      }

      if (*(v107 + 57))
      {
        cfd = v151;
        v251 = v150;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v163 = time2.tx + time2.c * cfd + time2.a * v251;
        v164 = time2.ty + time2.d * cfd + time2.b * v251;
        CGAffineTransformMakeScale(&time2, 1.0, -1.0);
        v165 = time2.tx + v164 * time2.c + time2.a * v163;
        v166 = time2.ty + v164 * time2.d + time2.b * v163;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        ty = time2.ty;
        v155 = time2.tx + v166 * time2.c + time2.a * v165;
        v162 = v166 * time2.d + time2.b * v165;
        goto LABEL_164;
      }

LABEL_165:
      v167 = *(v107 + 52);
      if (v167)
      {
        v168 = -v167 * 3.14159265 / 180.0;
        cfe = v156;
        v252 = v155;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v169 = time2.tx + cfe * time2.c + time2.a * v252;
        v170 = time2.ty + cfe * time2.d + time2.b * v252;
        CGAffineTransformMakeRotation(&time2, v168);
        v171 = time2.tx + v170 * time2.c + time2.a * v169;
        v172 = time2.ty + v170 * time2.d + time2.b * v169;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        v155 = time2.tx + v172 * time2.c + time2.a * v171;
        v156 = time2.ty + v172 * time2.d + time2.b * v171;
      }

      v138 &= v154;
      v147 = vaddq_f64(*&v258.tx, vmlaq_n_f64(vmulq_n_f64(*&v258.c, v156), *&v258.a, v155));
      v173.f64[0] = *(v107 + 136);
      if (v173.f64[0] != 0.0 && *(v107 + 144) != 0.0)
      {
        v173.f64[1] = *(v107 + 144);
        v174 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v236, v173)));
        __asm { FMOV            V3.2D, #0.5 }

        v176.f64[1] = v174.f64[1];
        v176.f64[0] = 0.0;
        v147 = vaddq_f64(vmulq_f64(vsubq_f64(v236, v174), _Q3), vmlaq_n_f64(vmulq_laneq_f64(v176, v147, 1), *&v174.f64[0], v147.x));
      }

LABEL_170:
      if (v147.x < v140)
      {
        v140 = v147.x;
      }

      if (v147.x > v139)
      {
        v139 = v147.x;
      }

      v177 = v147.y;
      if (v147.y < v142)
      {
        v142 = v147.y;
      }

      if (v147.y > v143)
      {
        v143 = v147.y;
      }

      values[v137++] = CGPointCreateDictionaryRepresentation(v147);
      v141 += 2;
    }

    while (v137 != 4);
    *(v241 + 64) = 0;
    v178 = CFArrayCreate(allocator, values, 4, MEMORY[0x29EDB9000]);
    for (i = 0; i != 4; ++i)
    {
      v180 = values[i];
      if (v180)
      {
        CFRelease(v180);
      }
    }

    v272.origin.x = v140;
    v272.origin.y = v142;
    v272.size.width = (v139 - v140);
    v272.size.height = (v143 - v142);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v272);
    v182 = *(v241 + 152);
    if (v232)
    {
      v183 = DictionaryRepresentation == 0;
    }

    else
    {
      v183 = 1;
    }

    v186 = !v183 && v178 != 0 && *&v182 != 0;
    v253 = v178;
    cfa = DictionaryRepresentation;
    if ((v186 & v138) == 1)
    {
      t1.a = v226;
      t1.b = v225;
      t1.c = v224;
      t1.d = v223;
      *&v263.a = v232;
      *&v263.b = DictionaryRepresentation;
      *&v263.c = v178;
      v263.d = v182;
      v187 = CFDictionaryCreate(allocator, &t1, &v263, 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    }

    else
    {
      v187 = 0;
    }

    if (*(v107 + 48))
    {
      v188 = MRCDescriptorCreateWithAttributes();
      v189 = MRCDescriptorCopyAttributes();
      v190 = MRCDescriptorDecodePayload();
      CFDictionaryGetValue(v189, key);
      if (v188)
      {
        CFRelease(v188);
      }

      if (v189)
      {
        CFRelease(v189);
      }

      if (v190)
      {
        CFRelease(v190);
      }
    }

    if (v187)
    {
      CFArrayAppendValue(theArray, v187);
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v253)
    {
      CFRelease(v253);
    }

    if (v187)
    {
      CFRelease(v187);
    }

    v132 = v107 + 988;
    v131 = v107 + 192;
LABEL_214:
    ++v130;
    v136 += 24;
  }

  while (v130 != 4);
  FigSimpleMutexUnlock();
  v191 = theDicta;
  CFDictionaryAddValue(theDicta, *MEMORY[0x29EDBFE78], theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  v192 = v227;
  if (v232)
  {
    CFRelease(v232);
  }

  v193 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_252;
  }

  v194 = CMBaseObjectGetDerivedStorage();
  memset(&valuePtr, 0, sizeof(valuePtr));
  if (!*v194)
  {
    goto LABEL_251;
  }

  v195 = v194;
  t1.a = 0.0;
  if (!*(v194 + 48))
  {
    if (!*(v194 + 1209))
    {
      *&t1.a = sbuf;
      goto LABEL_241;
    }

    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, 1, &valuePtr, 0);
    if (!SampleTimingInfoArray)
    {
      CMSampleBufferCreate(*MEMORY[0x29EDB8ED8], 0, 1u, 0, 0, 0, 0, 1, &valuePtr, 0, 0, &t1);
      goto LABEL_241;
    }

    v25 = SampleTimingInfoArray;
    sbp_bcs_processSampleBuffer_cold_12();
    goto LABEL_274;
  }

  v196 = CMSampleBufferGetSampleTimingInfoArray(sbuf, 1, &valuePtr, 0);
  if (v196)
  {
    v25 = v196;
    sbp_bcs_processSampleBuffer_cold_9();
LABEL_274:
    a = time2.a;
    fig_log_get_emitter();
    LODWORD(sampleTimingArray) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray, *&a, sampleSizeArray, v215, v216, theDicta, v221, LODWORD(v223));
    v192 = v227;
    v191 = theDictb;
    goto LABEL_253;
  }

  time2.a = 0.0;
  v197 = *MEMORY[0x29EDB8ED8];
  if (CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x29EDB8ED8], v193, &time2))
  {
    sbp_bcs_processSampleBuffer_cold_10();
    v198 = 0;
    v200 = sbuf;
  }

  else
  {
    v198 = 1;
    v199 = CMSampleBufferCreateForImageBuffer(v197, v193, 1u, 0, 0, *&time2.a, &valuePtr, &t1);
    v200 = sbuf;
    if (v199)
    {
      sbp_bcs_processSampleBuffer_cold_11();
      v198 = 0;
    }
  }

  if (*&time2.a)
  {
    CFRelease(*&time2.a);
  }

  if (v198)
  {
    CMPropagateAttachments(v200, *&t1.a);
  }

LABEL_241:
  v205 = t1.a;
  if (theDicta)
  {
    CMSetAttachment(*&t1.a, v221, theDicta, 1u);
    v205 = t1.a;
  }

  if (v205 != 0.0)
  {
    if (*(v195 + 1209))
    {
      v206 = 0;
    }

    else
    {
      v206 = *(v195 + 48) == 0;
    }

    v207 = CMBaseObjectGetDerivedStorage();
    if (*v207)
    {
      (*v207)(*(v207 + 8), 0, COERCE_CGFLOAT(*&v205));
    }

    if (!v206)
    {
      CFRelease(*&v205);
    }
  }

LABEL_251:
  CFRelease(pixelBufferOut);
  pixelBufferOut = 0;
LABEL_252:
  v25 = 0;
  *(v227 + 88) = *(v227 + 64);
  *(v227 + 104) = *(v227 + 80);
LABEL_253:
  ++*(v192 + 60);
  if (v191)
  {
    CFRelease(v191);
  }

LABEL_255:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v25;
}

uint64_t sbp_bcs_finishPendingProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< BarcodeScanner >>>>", 2433, v1);
  }

  else
  {
    dispatch_group_wait(*(DerivedStorage + 1008), 0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }
}

uint64_t sbp_bcs_purgeResources(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< BarcodeScanner >>>>", 2446, v1);
  }

  else
  {
    if (*(DerivedStorage + 1024))
    {
      MRCContextPurge();
    }

    return 0;
  }
}

uint64_t ensurePyramidArray(CVPixelBufferRef pixelBuffer, int *a2, OSType *a3, CFMutableArrayRef *a4)
{
  v4 = 4294954516;
  if (a3)
  {
    if (a2)
    {
      if (pixelBuffer)
      {
        v7 = a4;
        if (a4)
        {
          v8 = a3;
          Mutable = *a4;
          v10 = *a3;
          v11 = *a2;
          v12 = a2[1];
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          v15 = PixelFormatType;
          if (Mutable)
          {
            if (v11 == Width && v12 == Height && v10 == PixelFormatType)
            {
              v15 = v10;
              v16 = v11;
              v17 = v12;
LABEL_46:
              v4 = 0;
              *v7 = Mutable;
              *v8 = v15;
              *a2 = v16;
              a2[1] = v17;
              return v4;
            }

            CFRelease(Mutable);
          }

          Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x29EDB9000]);
          v17 = Height;
          v18 = vcvts_n_f32_s32(Width, 1uLL) + 0.5;
          v16 = Width;
          v19 = ((vcvts_n_f32_s32(Height, 1uLL) + 0.5) + 15) & 0xFFFFFFF0;
          v20 = (v18 + 15) & 0xFFFFFFF0;
          if (v20 < 1 || v19 < 1 || v20 >= v16 || v19 >= Height)
          {
            goto LABEL_46;
          }

          v42 = v7;
          v43 = v8;
          v24 = 0;
          v41 = v16;
          v25 = v16;
          v26 = *MEMORY[0x29EDB96D0];
          v46 = *MEMORY[0x29EDB96D8];
          v45 = *MEMORY[0x29EDB8F00];
          v27 = *MEMORY[0x29EDB8ED8];
          v28 = 2.0;
          while (1)
          {
            if (v20 >= v19)
            {
              v29 = v19;
            }

            else
            {
              v29 = v20;
            }

            if (v29 < 0x140 || v24 > 1)
            {
LABEL_45:
              v7 = v42;
              v8 = v43;
              v16 = v41;
              v17 = Height;
              goto LABEL_46;
            }

            pixelBufferOut = 0;
            v31 = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(0);
            CFDictionaryAddValue(v31, v26, IOSurfacePropertiesDictionary);
            CFRelease(IOSurfacePropertiesDictionary);
            if (FigCapturePlatformIOSurfaceWiringAssertionEnabled())
            {
              CFDictionaryAddValue(v31, v46, v45);
            }

            v4 = CVPixelBufferCreate(v27, v20, v19, v15, v31, &pixelBufferOut);
            CFRelease(v31);
            if (v4)
            {
              break;
            }

            CFArrayInsertValueAtIndex(Mutable, v24, pixelBufferOut);
            if (pixelBufferOut)
            {
              CFRelease(pixelBufferOut);
              pixelBufferOut = 0;
            }

            v28 = v28 + v28;
            ++v24;
            v33 = (Height / v28) + 0.5;
            v34 = (v25 / v28) + 0.5;
            v35 = (v33 + 15) & 0xFFFFFFF0;
            v36 = (v34 + 15) & 0xFFFFFFF0;
            v39 = v36 >= 1 && v35 >= 1 && v36 < v20 && v35 < v19;
            v20 = (v34 + 15) & 0xFFFFFFF0;
            v19 = (v33 + 15) & 0xFFFFFFF0;
            if (!v39)
            {
              goto LABEL_45;
            }
          }

          ensurePyramidArray_cold_1(v4);
        }
      }
    }
  }

  return v4;
}

uint64_t sbp_bcs_updateBarcodeLocations(uint64_t a1, __CVBuffer *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Width = CVPixelBufferGetWidth(a2);
  CVPixelBufferGetHeight(a2);
  FigSimpleMutexLock();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *(DerivedStorage + 960) = 0;
  v10 = DerivedStorage + 192;
  v11 = DerivedStorage + 988;
  v12 = 1;
  v65 = a3;
LABEL_2:
  v13 = 192 * v8;
  do
  {
    if (*(v11 + v13 - 636))
    {
      v12 = 0;
      *(DerivedStorage + 960) = ++v7;
      v15 = *(v11 + v8);
      v9 |= v15;
      v72[v8] = v15;
      if (v8++ != 3)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v14 = *(v11 + v8);
    v9 |= v14;
    v72[v8++] = v14;
    v13 += 192;
  }

  while (v8 != 4);
  if (v12)
  {
    v63 = 1;
    v64 = 0;
    goto LABEL_53;
  }

LABEL_11:
  *(DerivedStorage + 1172) = *(DerivedStorage + 64);
  *(DerivedStorage + 1188) = *(DerivedStorage + 80);
  v17 = transformInterestRect(a1, Width, *(DerivedStorage + 1032), *(DerivedStorage + 1040), *(DerivedStorage + 1048), *(DerivedStorage + 1056));
  v18 = 0;
  v22 = v17;
  v23 = (v17 + v19);
  v24 = v20;
  v25 = (v20 + v21);
  v26 = DerivedStorage + 264;
  v27 = DerivedStorage + 272;
  do
  {
    if (*(v11 + v18))
    {
      v28 = v10 + 192 * v18;
      if (*(v28 + 160))
      {
        v29 = 0;
        v30 = vcvtq_f64_f32(*(DerivedStorage + 160));
        do
        {
          v31 = vsubq_f64(*(v26 + v29), v30);
          *(v26 + v29) = v31;
          if (v31.f64[0] < v22 || v31.f64[0] > v23 || v31.f64[1] < v24 || v31.f64[1] > v25)
          {
            *(v28 + 160) = 0;
          }

          v29 += 16;
        }

        while (v29 != 64);
        *(v28 + 164) = *(DerivedStorage + 64);
        *(v28 + 180) = *(DerivedStorage + 80);
        *(v11 + v18) = 0;
      }
    }

    else
    {
      v35 = v10 + 192 * v18;
      if (*(v35 + 160))
      {
        v36 = 0;
        v37 = *(DerivedStorage + 152);
        v38 = *(DerivedStorage + 156);
        do
        {
          v39 = *(v26 + v36) - v37;
          *(v26 + v36) = v39;
          if (v39 < v22 || v39 > v23)
          {
            *(v35 + 160) = 0;
          }

          v41 = *(v27 + v36) - v38;
          *(v27 + v36) = v41;
          if (v41 < v24 || v41 > v25)
          {
            *(v35 + 160) = 0;
          }

          v36 += 16;
        }

        while (v36 != 64);
        memset(&v71, 0, sizeof(v71));
        if (*(DerivedStorage + 112))
        {
          CMTimeMake(&v71, 650, 1000);
        }

        else
        {
          CMTimeMakeWithSeconds(&v71, 1.25, 1000);
        }

        if (*(v35 + 160))
        {
          lhs = *(DerivedStorage + 64);
          v43 = *(v35 + 164);
          rhs.epoch = *(v35 + 180);
          *&rhs.value = v43;
          CMTimeSubtract(&time1, &lhs, &rhs);
          lhs = v71;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            *(v35 + 160) = 0;
          }
        }
      }
    }

    ++v18;
    v26 += 192;
    v27 += 192;
  }

  while (v18 != 4);
  v44 = 0;
  while (1)
  {
    v45 = *(DerivedStorage + 352 + v44);
    if (v45)
    {
      break;
    }

    v44 += 192;
    if (v44 == 768)
    {
      v63 = v45 == 0;
      v64 = 0;
      goto LABEL_53;
    }
  }

  v63 = 0;
  v64 = 1;
LABEL_53:
  if (*(DerivedStorage + 48))
  {
    v46 = 0;
    v47 = 272;
    v66 = DerivedStorage + 192;
    do
    {
      if (*(v10 + 192 * v46 + 160))
      {
        v48 = v72[v46];
        v49 = CMBaseObjectGetDerivedStorage();
        if (CVPixelBufferLockBaseAddress(a2, 0))
        {
          sbp_bcs_updateBarcodeLocations_cold_1();
        }

        else
        {
          v50 = v49 + 192 * v46;
          if (*(v50 + 352))
          {
            v51 = DerivedStorage;
            v52 = (v50 + 192);
            v53 = v50 + 264;
            v54 = (v49 + v47);
            for (i = 1; i != 5; ++i)
            {
              v56 = *(v54 - 1);
              v57 = *v54;
              v58 = (v53 + 16 * (i & 3));
              v59 = *v58;
              v60 = v58[1];
              FigDraw420Line(a2, v56, *v54, *v58, v60, 0, 0, 0);
              FigDraw420Line(a2, (v56 + 1.0), (v57 + 1.0), (v59 + 1.0), (v60 + 1.0), 255, 0, 0);
              v54 += 2;
            }

            DerivedStorage = v51;
            if (v48)
            {
              FigDrawLumaRectangle(a2, (v52[9] + -5.0), (v52[10] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[11] + -5.0), (v52[12] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[13] + -5.0), (v52[14] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[15] + -5.0), (v52[16] + -5.0), 10, 10, 20);
            }
          }

          CVPixelBufferUnlockBaseAddress(a2, 0);
        }

        v10 = v66;
      }

      ++v46;
      v47 += 192;
    }

    while (v46 != 4);
  }

  if (v65)
  {
    v61 = v63;
    if (!*(DerivedStorage + 1196))
    {
      v61 = 0;
    }

    if (v9)
    {
      v61 = 1;
    }

    *v65 = v61;
  }

  *(DerivedStorage + 1196) = v64;
  return FigSimpleMutexUnlock();
}

void detectBarcodesInFrame(uint64_t a1)
{
  v153 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Width = CVPixelBufferGetWidth(*(DerivedStorage + 1000));
  Height = CVPixelBufferGetHeight(*(DerivedStorage + 1000));
  v5 = *(DerivedStorage + 1204);
  v6 = *(DerivedStorage + 1000);
  *(DerivedStorage + 1000) = 0;
  FigSimpleMutexLock();
  IsEmpty = CGRectIsEmpty(*(DerivedStorage + 1032));
  if (IsEmpty)
  {
    goto LABEL_21;
  }

  v8 = Width;
  v9 = Height;
  v10 = Width;
  v11 = Height;
  v12 = transformInterestRect(a1, v10, *(DerivedStorage + 1032), *(DerivedStorage + 1040), *(DerivedStorage + 1048), *(DerivedStorage + 1056));
  v14 = v13;
  v16 = v15;
  v18 = v17;
  FigSimpleMutexUnlock();
  v19 = v16 <= v18 ? v18 : v16;
  v20 = v19;
  if (v20 >= 1280.0 || *(DerivedStorage + 168))
  {
    if (ensurePyramidArray(v6, (DerivedStorage + 176), (DerivedStorage + 172), (DerivedStorage + 184)))
    {
      v21 = 1;
    }

    else
    {
      v22 = *(DerivedStorage + 40);
      v21 = 1;
      if (v22)
      {
        if (v6)
        {
          v23 = *(DerivedStorage + 184);
          if (v23)
          {
            if (CFArrayGetCount(*(DerivedStorage + 184)) >= 1)
            {
              v131 = Height;
              v24 = 0;
              v25 = v6;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
                if (VTPixelTransferSessionTransferImage(v22, v25, ValueAtIndex))
                {
                  break;
                }

                ++v24;
                v25 = ValueAtIndex;
                if (CFArrayGetCount(v23) <= v24)
                {
                  goto LABEL_16;
                }
              }

              detectBarcodesInFrame_cold_1();
LABEL_16:
              v21 = 1;
              v11 = v131;
            }
          }
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if (!CFDictionaryGetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D8]))
  {
LABEL_21:
    v31 = 0;
    v32 = 0;
    v33 = 1;
    goto LABEL_45;
  }

  cf = MRCDecoderCreateWithOptions();
  v27 = *MEMORY[0x29EDC6408];
  keys[0] = *MEMORY[0x29EDC6400];
  keys[1] = v27;
  if (v21)
  {
    v28 = 0;
    v29 = *(DerivedStorage + 184);
    v30 = *MEMORY[0x29EDB8ED8];
  }

  else
  {
    v30 = *MEMORY[0x29EDB8ED8];
    v28 = CFArrayCreate(*MEMORY[0x29EDB8ED8], 0, 0, MEMORY[0x29EDB9000]);
    v29 = v28;
  }

  v155.origin.x = v12;
  v155.origin.y = v14;
  v155.size.width = v16;
  v155.size.height = v18;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v155);
  values[0] = v29;
  values[1] = DictionaryRepresentation;
  v35 = CFDictionaryCreate(v30, keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  v36 = MRCSampleCreateWithCVPixelBufferAndAttributes();
  v37 = 0;
  v33 = v36 == 0;
  v38 = cf;
  v142 = v36;
  if (!cf || !v36)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_32;
  }

  v33 = 1;
  v144 = MRCDecoderDecodeSample();
  if (!v144 || v153)
  {
    v31 = 0;
    v32 = 0;
    goto LABEL_36;
  }

  CVPixelBufferRelease(v6);
  FigSimpleMutexLock();
  *(DerivedStorage + 988) = 0;
  *time1 = *(DerivedStorage + 964);
  *&time1[16] = *(DerivedStorage + 980);
  time2 = *(DerivedStorage + 1148);
  if (CMTimeCompare(time1, &time2) > 0)
  {
    v31 = 0;
    v6 = 0;
    v32 = 0;
    v33 = 0;
LABEL_36:
    v38 = cf;
    goto LABEL_37;
  }

  v130 = v10;
  v129 = a1;
  v126 = IsEmpty;
  DescriptorCount = MRCDecoderResultGetDescriptorCount();
  Mutable = CFArrayCreateMutable(v30, 4, MEMORY[0x29EDB9000]);
  v37 = v144;
  v32 = Mutable;
  v41 = MEMORY[0x29EDC63F8];
  v134 = v35;
  theArray = Mutable;
  v132 = v11;
  v125 = v28;
  if (DescriptorCount < 1)
  {
    goto LABEL_70;
  }

  v42 = 0;
  v43 = *MEMORY[0x29EDC63F8];
  v44 = *MEMORY[0x29EDC6410];
  v45 = *MEMORY[0x29EDC6488];
  v46 = *MEMORY[0x29EDC6450];
  key = *MEMORY[0x29EDC63E0];
  v47 = DescriptorCount & 0x7FFFFFFF;
  v48 = -1;
  do
  {
    MRCDecoderResultGetDescriptorAtIndex();
    v49 = MRCDescriptorCopyAttributes();
    Value = CFDictionaryGetValue(v49, v43);
    if (CFEqual(Value, v44) || CFEqual(Value, v45) || CFEqual(Value, v46))
    {
      CFArrayAppendValue(theArray, v49);
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      CFRelease(v49);
      goto LABEL_61;
    }

    v51 = CFDictionaryGetValue(v49, key);
    *time1 = 0;
    CFNumberGetValue(v51, kCFNumberFloat32Type, time1);
    if (*time1 > v5)
    {
      v48 = v42;
      v5 = *time1;
    }

    if (v49)
    {
      goto LABEL_60;
    }

LABEL_61:
    ++v42;
    v37 = v144;
  }

  while (v47 != v42);
  v28 = v125;
  v35 = v134;
  v32 = theArray;
  v41 = MEMORY[0x29EDC63F8];
  if (v48 != -1)
  {
    MRCDecoderResultGetDescriptorAtIndex();
    v52 = MRCDescriptorCopyAttributes();
    CFArrayAppendValue(theArray, v52);
    v37 = v144;
    if (v52)
    {
      CFRelease(v52);
      v37 = v144;
    }
  }

LABEL_70:
  if (v32)
  {
    Count = CFArrayGetCount(v32);
    v54 = Count;
    if (Count < 1)
    {
      v6 = 0;
      v31 = 0;
      IsEmpty = v126;
      v38 = cf;
      v36 = v142;
      v37 = v144;
    }

    else
    {
      keya = (DerivedStorage + 988);
      v135 = malloc_type_malloc(4 * (Count & 0x7FFFFFFF), 0x100004052888210uLL);
      bzero(v135, 4 * (v54 & 0x7FFFFFFF));
      v55 = 0;
      v138 = *MEMORY[0x29EDC63E8];
      v136 = *MEMORY[0x29EDC63F0];
      v137 = *v41;
      v56 = *MEMORY[0x29EDB90B8];
      v57 = *(MEMORY[0x29EDB90B8] + 8);
      v58 = DerivedStorage + 192;
      v59 = ((v8 + v9) * 0.5);
      v60 = v59 / 40.0;
      v61 = v54 & 0x7FFFFFFF;
      v127 = v54;
      __asm { FMOV            V2.2D, #0.25 }

      v66 = v59 / 10.0;
      v133 = v61;
      v128 = _Q2;
      do
      {
        v67 = CFArrayGetValueAtIndex(v32, v55);
        v68 = CFDictionaryGetValue(v67, v138);
        v69 = CFDictionaryGetValue(v67, v136);
        v70 = CFDictionaryGetValue(v67, v137);
        if (v69 && v70 && v68)
        {
          cf1 = v70;
          v71 = 0;
          *time1 = *MEMORY[0x29EDB90B8];
          *&time1[16] = *time1;
          v148 = *time1;
          v149 = *time1;
          v72 = time1;
          do
          {
            v73 = CFArrayGetValueAtIndex(v68, v71);
            CGPointMakeWithDictionaryRepresentation(v73, v72);
            ++v71;
            ++v72;
          }

          while (v71 != 4);
          v74 = 0;
          v75 = v57;
          v76 = v56;
          do
          {
            v77 = &time1[v74];
            v154 = vld2q_f64(v77);
            v78 = vmulq_f64(v154.val[0], v128);
            v154.val[0] = vmulq_f64(v154.val[1], v128);
            v75 = v75 + v154.val[0].f64[0] + v154.val[0].f64[1];
            v76 = v76 + v78.f64[0] + v78.f64[1];
            v74 += 32;
          }

          while (v74 != 64);
          v79 = 0;
          v80 = v76 - *(DerivedStorage + 160);
          v81 = v75 - *(DerivedStorage + 164);
          v82 = (DerivedStorage + 272);
          v83 = DerivedStorage + 988;
          do
          {
            v84 = v58 + 192 * v79;
            if (*(v84 + 160) && !*(v83 + v79))
            {
              v85 = 4;
              v86 = v82;
              v87 = v57;
              v88 = v56;
              do
              {
                v88 = v88 + *(v86 - 1);
                v87 = v87 + *v86;
                v86 += 2;
                --v85;
              }

              while (v85);
              v89 = (v81 - v87 * 0.25) * (v81 - v87 * 0.25) + (v80 - v88 * 0.25) * (v80 - v88 * 0.25);
              v90 = sqrtf(v89);
              if (v60 > v90 || (v91 = *(v84 + 136)) != 0 && (v92 = CFEqual(v69, v91), v83 = DerivedStorage + 988, v92) && (v93 = *(v84 + 144)) != 0 && (v94 = CFEqual(cf1, v93), v83 = DerivedStorage + 988, v94) && (*(DerivedStorage + 960) < 2 ? (_ZF = v127 == 1) : (_ZF = 0), _ZF || v66 > v90))
              {
                v61 = v133;
                goto LABEL_98;
              }
            }

            ++v79;
            v82 += 24;
          }

          while (v79 != 4);
          v79 = 0;
          v96 = (DerivedStorage + 352);
          v61 = v133;
          v35 = v134;
          while (1)
          {
            v97 = *v96;
            v96 += 48;
            if (!v97)
            {
              break;
            }

            if (++v79 == 4)
            {
              goto LABEL_102;
            }
          }

LABEL_98:
          *(v135 + v55) = -1082130432;
          copyBarcodeToStorage(v129, v79, 1, time1, cf1, v69, v67);
          *(v58 + 192 * v79 + 188) = computeBarcodePriority(cf1, time1, v130, v132);
          keya[v79] = 1;
          v35 = v134;
        }

        else
        {
          *(v135 + v55) = -1082130432;
        }

LABEL_102:
        ++v55;
        v32 = theArray;
      }

      while (v55 != v61);
      v98 = 0;
      v99 = 0;
      v100 = v61 - 1;
      IsEmpty = v126;
      v37 = v144;
      v31 = v135;
      do
      {
        while (v31[v98] != -1.0)
        {
          v101 = CFArrayGetValueAtIndex(theArray, v98);
          v102 = CFDictionaryGetValue(v101, v138);
          v103 = CFDictionaryGetValue(v101, v137);
          v104 = 0;
          v105 = time1;
          do
          {
            v106 = CFArrayGetValueAtIndex(v102, v104);
            CGPointMakeWithDictionaryRepresentation(v106, v105);
            ++v104;
            ++v105;
          }

          while (v104 != 4);
          v35 = v134;
          v31 = v135;
          *(v135 + v98) = computeBarcodePriority(v103, time1, v130, v132);
          v99 = 1;
          _ZF = v100 == v98++;
          v37 = v144;
          v61 = v133;
          if (_ZF)
          {
            goto LABEL_113;
          }
        }

        ++v98;
      }

      while (v61 != v98);
      if ((v99 & 1) == 0)
      {
        v6 = 0;
        v28 = v125;
        v38 = cf;
        v36 = v142;
        goto LABEL_131;
      }

LABEL_113:
      v107 = 0;
      v108 = 5.0;
      v109 = -1;
      for (i = -1; ; i = -1)
      {
        do
        {
          if (v31[v107] >= 0.0 && v31[v107] < v108)
          {
            v109 = v107;
            i = v107;
            v108 = v31[v107];
          }

          ++v107;
        }

        while (v107 != v61);
        if (i == -1)
        {
          break;
        }

        v111 = 0;
        v112 = v109;
        v113 = v31[v109];
        v114 = 5.0;
        v115 = -1;
        v116 = (DerivedStorage + 380);
        do
        {
          v117 = *v116;
          v116 += 48;
          v118 = v117;
          if (v117 < v114 && v117 < v113)
          {
            v114 = v118;
            v115 = v111;
          }

          ++v111;
        }

        while (v111 != 4);
        if (v115 != -1)
        {
          v119 = CFArrayGetValueAtIndex(theArray, v112);
          v120 = CFDictionaryGetValue(v119, v138);
          cf1a = CFDictionaryGetValue(v119, v136);
          v121 = CFDictionaryGetValue(v119, v137);
          v122 = 0;
          v123 = time1;
          do
          {
            v124 = CFArrayGetValueAtIndex(v120, v122);
            CGPointMakeWithDictionaryRepresentation(v124, v123);
            ++v122;
            ++v123;
          }

          while (v122 != 4);
          copyBarcodeToStorage(v129, v115, 0, time1, v121, cf1a, v119);
          *(v58 + 192 * v115 + 188) = computeBarcodePriority(v121, time1, v130, v132);
          keya[v115] = 1;
          v35 = v134;
          v31 = v135;
        }

        v107 = 0;
        v31[v112] = -1.0;
        v108 = 5.0;
        v109 = -1;
        v61 = v133;
      }

      v6 = 0;
      IsEmpty = v126;
      v28 = v125;
      v38 = cf;
      v36 = v142;
      v37 = v144;
LABEL_131:
      v32 = theArray;
    }
  }

  else
  {
    v6 = 0;
    v31 = 0;
    IsEmpty = v126;
    v38 = cf;
    v36 = v142;
  }

  v33 = 0;
LABEL_32:
  v144 = v37;
  if (v38)
  {
LABEL_37:
    CFRelease(v38);
    v36 = v142;
    if (!v28)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v33 = 1;
  if (v28)
  {
LABEL_38:
    CFRelease(v28);
    v36 = v142;
  }

LABEL_39:
  if (v35)
  {
    CFRelease(v35);
    v36 = v142;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v144)
  {
    CFRelease(v144);
  }

LABEL_45:
  if (v153)
  {
    CFRelease(v153);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (!v33)
  {
    FigSimpleMutexUnlock();
  }

  if (IsEmpty)
  {
    FigSimpleMutexUnlock();
  }

  CVPixelBufferRelease(v6);
  free(v31);
}

CGFloat transformInterestRect(uint64_t a1, int a2, CGFloat a3, float64_t a4, float64_t a5, CGFloat a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 52);
  if (v12)
  {
    v13 = v12 * 3.14159265 / 180.0;
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v44.origin.x = a3;
    v44.origin.y = a4;
    v44.size.width = a5;
    v44.size.height = a6;
    v45 = CGRectApplyAffineTransform(v44, &v43);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    CGAffineTransformMakeRotation(&v43, v13);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v47 = CGRectApplyAffineTransform(v46, &v43);
    v18 = v47.origin.x;
    v19 = v47.origin.y;
    v20 = v47.size.width;
    v21 = v47.size.height;
    CGAffineTransformMakeTranslation(&v43, 0.5, 0.5);
    v48.origin.x = v18;
    v48.origin.y = v19;
    v48.size.width = v20;
    v48.size.height = v21;
    v49 = CGRectApplyAffineTransform(v48, &v43);
    a3 = v49.origin.x;
    a4 = v49.origin.y;
    a5 = v49.size.width;
    a6 = v49.size.height;
  }

  if (*(DerivedStorage + 56))
  {
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    v51 = CGRectApplyAffineTransform(v50, &v43);
    v22 = v51.origin.x;
    v23 = v51.origin.y;
    v24 = v51.size.width;
    v25 = v51.size.height;
    v26 = -1.0;
    v27 = 1.0;
LABEL_7:
    CGAffineTransformMakeScale(&v43, v26, v27);
    v54.origin.x = v22;
    v54.origin.y = v23;
    v54.size.width = v24;
    v54.size.height = v25;
    v55 = CGRectApplyAffineTransform(v54, &v43);
    v28 = v55.origin.x;
    v29 = v55.origin.y;
    v30 = v55.size.width;
    v31 = v55.size.height;
    CGAffineTransformMakeTranslation(&v43, 0.5, 0.5);
    v56.origin.x = v28;
    v56.origin.y = v29;
    v56.size.width = v30;
    v56.size.height = v31;
    v57 = CGRectApplyAffineTransform(v56, &v43);
    a3 = v57.origin.x;
    a4 = v57.origin.y;
    a5 = v57.size.width;
    a6 = v57.size.height;
    goto LABEL_8;
  }

  if (*(DerivedStorage + 57))
  {
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    v53 = CGRectApplyAffineTransform(v52, &v43);
    v22 = v53.origin.x;
    v23 = v53.origin.y;
    v24 = v53.size.width;
    v25 = v53.size.height;
    v26 = 1.0;
    v27 = -1.0;
    goto LABEL_7;
  }

LABEL_8:
  v32.f64[0] = *(DerivedStorage + 136);
  if (v32.f64[0] != 0.0 && *(DerivedStorage + 144) != 0.0)
  {
    v32.f64[1] = *(DerivedStorage + 144);
    v43.b = 0.0;
    v43.c = 0.0;
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V2.2D, #0.5
    }

    v39 = vcvtq_f64_f32(vcvt_f32_f64(v32));
    v43.d = v39.f64[1];
    v43.a = v39.f64[0];
    *&v43.tx = vmulq_f64(vsubq_f64(_Q1, v39), _Q2);
    v40 = a3;
    _Q1.f64[0] = a4;
    _Q2.f64[0] = a5;
    v41 = a6;
    *&a3 = CGRectApplyAffineTransform(*(&_Q1 - 8), &v43);
  }

  return a3 * a2;
}

CFTypeRef copyBarcodeToStorage(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  if (!a3)
  {
    v16 = a2;
    goto LABEL_5;
  }

  v15 = DerivedStorage + 192 * a2;
  v16 = a2;
  if (!*(v15 + 352))
  {
LABEL_5:
    *(DerivedStorage + 192 * v16 + 256) = 0;
    goto LABEL_6;
  }

  v17 = v15 + 192;
  v18 = *(v17 + 88);
  *v17 = *(v17 + 72);
  *(v17 + 16) = v18;
  v19 = *(v17 + 120);
  *(v17 + 32) = *(v17 + 104);
  *(v17 + 48) = v19;
  *(v17 + 64) = 1;
LABEL_6:
  for (i = 0; i != 64; i += 16)
  {
    *(DerivedStorage + 192 * v16 + 264 + i) = *(a4 + i);
  }

  v21 = DerivedStorage + 192 + 192 * v16;
  v22 = *(v21 + 136);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(v21 + 144);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(v21 + 152);
  if (v24)
  {
    CFRelease(v24);
  }

  if (a6)
  {
    v25 = CFRetain(a6);
  }

  else
  {
    v25 = 0;
  }

  *(v21 + 136) = v25;
  if (a5)
  {
    v26 = CFRetain(a5);
  }

  else
  {
    v26 = 0;
  }

  *(v21 + 144) = v26;
  if (a7)
  {
    result = CFRetain(a7);
  }

  else
  {
    result = 0;
  }

  *(v21 + 152) = result;
  v28 = *(v14 + 1072) + 1;
  *(v14 + 1072) = v28;
  *(v21 + 160) = v28;
  return result;
}

float computeBarcodePriority(const void *a1, uint64_t a2, int a3, int a4)
{
  if (!CFEqual(a1, *MEMORY[0x29EDC6410]) && !CFEqual(a1, *MEMORY[0x29EDC6488]) && !CFEqual(a1, *MEMORY[0x29EDC6450]))
  {
    return 3.0;
  }

  v8 = 0;
  if (a3)
  {
    _ZF = a4 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v10 = !_ZF;
  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v12 = vcvtq_f64_s64(v11);
  __asm { FMOV            V1.2S, #1.0 }

  v17 = 0;
  __asm { FMOV            V4.2D, #0.25 }

  v19 = *MEMORY[0x29EDB90B8];
  do
  {
    v20 = *MEMORY[0x29EDB90B8];
    if (v10)
    {
      v20 = vdivq_f64(*(a2 + v8), v12);
    }

    v21 = vcvt_f32_f64(v20);
    _D1 = vbsl_s8(vmovn_s64(vcgtq_f64(vcvtq_f64_f32(_D1), v20)), v21, _D1);
    v17 = vbsl_s8(vmovn_s64(vcgtq_f64(v20, vcvtq_f64_f32(v17))), v21, v17);
    v19 = vaddq_f64(v19, vmulq_f64(v20, _Q4));
    v8 += 16;
  }

  while (v8 != 64);
  __asm { FMOV            V0.2D, #-0.5 }

  *&_Q0.f64[0] = vcvt_f32_f64(vaddq_f64(v19, _Q0));
  v23 = vsub_f32(v17, _D1);
  return 1.0 - sqrtf(vaddv_f32(vmul_f32(*&_Q0.f64[0], *&_Q0.f64[0]))) + vmul_lane_f32(v23, v23, 1).f32[0];
}

uint64_t clearBarcodes(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 352) = 0;
  *(DerivedStorage + 544) = 0;
  *(DerivedStorage + 736) = 0;
  *(DerivedStorage + 928) = 0;
  if (*(DerivedStorage + 76))
  {
    *(DerivedStorage + 964) = *(DerivedStorage + 64);
    *(DerivedStorage + 980) = *(DerivedStorage + 80);
  }

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return fig_log_get_emitter();
}

size_t FigDraw420Color(__CVBuffer *a1, int a2, int a3, char a4, char a5, char a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = CVPixelBufferGetPlaneCount(a1);
  v13 = result;
  if (result)
  {
    v14 = 0;
    do
    {
      *(&v24 + v14) = CVPixelBufferGetBaseAddressOfPlane(a1, v14);
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, v14);
      *(&v22 + v14++) = result;
    }

    while (v13 != v14);
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    if (v13 != 2)
    {
      return result;
    }

    v19 = HIDWORD(v22);
    v17 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    v20 = v19 * (a3 >> 1);
    *(v17 + (a2 & 0xFFFFFFFFFFFFFFFELL) + v20) = a5;
    v18 = v20 + (a2 | 1);
    goto LABEL_11;
  }

  if (PixelFormatType == 2033463856 && v13 == 3)
  {
    v15 = HIDWORD(v22);
    v16 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    *(v16 + v15 * (a3 >> 1) + (a2 >> 1)) = a5;
    v17 = v26;
    v18 = v23 * (a3 >> 1) + (a2 >> 1);
LABEL_11:
    *(v17 + v18) = a6;
  }

  return result;
}

uint64_t FigDraw420Line(__CVBuffer *a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || WidthOfPlane <= a2 || (v18 = a5, (a5 | a4) < 0) || HeightOfPlane <= a3 || WidthOfPlane <= a4 || HeightOfPlane <= a5)
  {
    FigDraw420Line_cold_1(&v30);
    return v30;
  }

  else
  {
    if (a2 >= a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = a2;
    }

    v20 = v19 & ~(v19 >> 31);
    if (a2 <= a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = a2;
    }

    if (a3 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = a3;
    }

    if (a3 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = a3;
    }

    if (v18 == a3)
    {
      if ((v21 & 0x80000000) == 0)
      {
        do
        {
          FigDraw420Color(a1, v20, a3, a6, a7, a8);
          v24 = v20++ < v21;
        }

        while (v24);
      }
    }

    else
    {
      v25 = a4;
      v26 = v22 & ~(v22 >> 31);
      if (v25 == a2)
      {
        if ((v23 & 0x80000000) == 0)
        {
          do
          {
            FigDraw420Color(a1, a2, v26, a6, a7, a8);
            v24 = v26++ < v23;
          }

          while (v24);
        }
      }

      else
      {
        v27 = (v18 - a3) / (v25 - a2);
        v28 = ((v18 + a3) - (v27 * (v25 + a2))) * 0.5;
        if (v23 - v26 <= v21 - v20)
        {
          if ((v21 & 0x80000000) == 0)
          {
            do
            {
              FigDraw420Color(a1, v20, ((v28 + (v27 * v20)) + 0.5), a6, a7, a8);
              v24 = v20++ < v21;
            }

            while (v24);
          }
        }

        else if ((v23 & 0x80000000) == 0)
        {
          do
          {
            FigDraw420Color(a1, (((v26 - v28) / v27) + 0.5), v26, a6, a7, a8);
            v24 = v26++ < v23;
          }

          while (v24);
        }
      }
    }

    return 0;
  }
}

uint64_t FigDrawLumaRectangle(__CVBuffer *a1, int a2, int a3, int a4, int a5, int a6)
{
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || (v16 = WidthOfPlane - a2, WidthOfPlane <= a2) || a5 < 1 || a4 < 1 || (v17 = HeightOfPlane, HeightOfPlane <= a3))
  {
    FigDrawLumaRectangle_cold_1(&v28);
    return v28;
  }

  else
  {
    if (v16 >= a4)
    {
      v16 = a4;
    }

    v18 = v16;
    memset(&BaseAddressOfPlane[BytesPerRowOfPlane * a3 + a2], a6, v16);
    v19 = a5 + a3;
    if (v19 <= v17)
    {
      memset(&BaseAddressOfPlane[BytesPerRowOfPlane * (v19 - 1) + a2], a6, v18);
    }

    v20 = a3 + 1;
    if (v19 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v19;
    }

    if (v20 < v21)
    {
      v22 = a2 + BytesPerRowOfPlane * v20;
      v23 = &BaseAddressOfPlane[v22];
      v24 = ~a3 + v21;
      do
      {
        *v23 = a6;
        v23 += BytesPerRowOfPlane;
        --v24;
      }

      while (v24);
      if (a4 + a2 <= WidthOfPlane)
      {
        v25 = &BaseAddressOfPlane[v22 - 1 + a4];
        v26 = ~a3 + v21;
        do
        {
          *v25 = a6;
          v25 += BytesPerRowOfPlane;
          --v26;
        }

        while (v26);
      }
    }

    return 0;
  }
}

uint64_t sbp_bcs_processSampleBuffer_cold_4(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v5 = 0;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  *a2 = *a1;
  return result;
}

uint64_t sbp_bcs_processSampleBuffer_cold_7(int a1)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_2();
  FigDebugAssert3(v3);
  OUTLINED_FUNCTION_5();
  v6 = a1;
  v4 = OUTLINED_FUNCTION_2();
  return FigDebugAssert3(v4, v6, v1);
}

uint64_t sbp_bcs_processSampleBuffer_cold_8(int a1)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_2();
  FigDebugAssert3(v3);
  OUTLINED_FUNCTION_5();
  v6 = a1;
  v4 = OUTLINED_FUNCTION_2();
  return FigDebugAssert3(v4, v6, v1);
}

uint64_t sbp_bcs_processSampleBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t sbp_bcs_processSampleBuffer_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t FigDraw420Line_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3(v2);
  OUTLINED_FUNCTION_4_0();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}

uint64_t FigDrawLumaRectangle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3(v2);
  OUTLINED_FUNCTION_4_0();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x2A1C59AE0](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}