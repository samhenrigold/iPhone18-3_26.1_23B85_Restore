void IIOLoadCoreMediaSymbols(uint64_t result)
{
  if (IIOLoadCoreMediaSymbols(void)::once != -1)
  {
    IIOLoadCoreMediaSymbols();
  }

  if (!gFunc_CMBufferQueueCreate)
  {

    LogFault("IIOLoadCoreMediaSymbols", 891, "*** Failed to load 'CoreMedia' symbols ***\n");
  }
}

const char *___ZL23IIOLoadCoreMediaSymbolsv_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 261);
  IIOLoadCoreMediaSymbols(void)::lib = v0;
  if (v0)
  {
    gFunc_CMBufferQueueCreate = dlsym(v0, "CMBufferQueueCreate");
    if (!gFunc_CMBufferQueueCreate)
    {
      v1 = dlerror();
      printf("❌  failed to load 'CMBufferQueueCreate' [%s]\n", v1);
    }

    gFunc_CMBufferQueueDequeueAndRetain = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueDequeueAndRetain");
    if (!gFunc_CMBufferQueueDequeueAndRetain)
    {
      v2 = dlerror();
      printf("❌  failed to load 'CMBufferQueueDequeueAndRetain' [%s]\n", v2);
    }

    gFunc_CMBufferQueueEnqueue = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueEnqueue");
    if (!gFunc_CMBufferQueueEnqueue)
    {
      v3 = dlerror();
      printf("❌  failed to load 'CMBufferQueueEnqueue' [%s]\n", v3);
    }

    gFunc_CMBufferQueueGetBufferCount = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueGetBufferCount");
    if (!gFunc_CMBufferQueueGetBufferCount)
    {
      v4 = dlerror();
      printf("❌  failed to load 'CMBufferQueueGetBufferCount' [%s]\n", v4);
    }

    gFunc_CMBufferQueueGetHead = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueGetHead");
    if (!gFunc_CMBufferQueueGetHead)
    {
      v5 = dlerror();
      printf("❌  failed to load 'CMBufferQueueGetHead' [%s]\n", v5);
    }

    gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueInstallTriggerWithIntegerThreshold");
    if (!gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold)
    {
      v6 = dlerror();
      printf("❌  failed to load 'CMBufferQueueInstallTriggerWithIntegerThreshold' [%s]\n", v6);
    }

    gFunc_CMBufferQueueIsAtEndOfData = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueIsAtEndOfData");
    if (!gFunc_CMBufferQueueIsAtEndOfData)
    {
      v7 = dlerror();
      printf("❌  failed to load 'CMBufferQueueIsAtEndOfData' [%s]\n", v7);
    }

    gFunc_CMBufferQueueIsEmpty = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueIsEmpty");
    if (!gFunc_CMBufferQueueIsEmpty)
    {
      v8 = dlerror();
      printf("❌  failed to load 'CMBufferQueueIsEmpty' [%s]\n", v8);
    }

    gFunc_CMBufferQueueMarkEndOfData = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueMarkEndOfData");
    if (!gFunc_CMBufferQueueMarkEndOfData)
    {
      v9 = dlerror();
      printf("❌  failed to load 'CMBufferQueueMarkEndOfData' [%s]\n", v9);
    }

    gFunc_CMBufferQueueReset = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueReset");
    if (!gFunc_CMBufferQueueReset)
    {
      v10 = dlerror();
      printf("❌  failed to load 'CMBufferQueueReset' [%s]\n", v10);
    }

    gFunc_CMClockGetHostTimeClock = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMClockGetHostTimeClock");
    if (!gFunc_CMClockGetHostTimeClock)
    {
      v11 = dlerror();
      printf("❌  failed to load 'CMClockGetHostTimeClock' [%s]\n", v11);
    }

    gFunc_CMTimeAdd = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeAdd");
    if (!gFunc_CMTimeAdd)
    {
      v12 = dlerror();
      printf("❌  failed to load 'CMTimeAdd' [%s]\n", v12);
    }

    gFunc_CMTimeMake = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMake");
    if (!gFunc_CMTimeMake)
    {
      v13 = dlerror();
      printf("❌  failed to load 'CMTimeMake' [%s]\n", v13);
    }

    gFunc_CMTimeMakeWithSeconds = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMakeWithSeconds");
    if (!gFunc_CMTimeMakeWithSeconds)
    {
      v14 = dlerror();
      printf("❌  failed to load 'CMTimeMakeWithSeconds' [%s]\n", v14);
    }

    gFunc_CMTimeMakeFromDictionary = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMakeFromDictionary");
    if (!gFunc_CMTimeMakeFromDictionary)
    {
      v15 = dlerror();
      printf("❌  failed to load 'CMTimeMakeFromDictionary' [%s]\n", v15);
    }

    gFunc_CMTimeCopyAsDictionary = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeCopyAsDictionary");
    if (!gFunc_CMTimeCopyAsDictionary)
    {
      v16 = dlerror();
      printf("❌  failed to load 'CMTimeCopyAsDictionary' [%s]\n", v16);
    }

    gFunc_CMTimeGetSeconds = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeGetSeconds");
    if (!gFunc_CMTimeGetSeconds)
    {
      v17 = dlerror();
      printf("❌  failed to load 'CMTimeGetSeconds' [%s]\n", v17);
    }

    gFunc_CMTimebaseAddTimerDispatchSource = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseAddTimerDispatchSource");
    if (!gFunc_CMTimebaseAddTimerDispatchSource)
    {
      v18 = dlerror();
      printf("❌  failed to load 'CMTimebaseAddTimerDispatchSource' [%s]\n", v18);
    }

    gFunc_CMTimebaseCreateWithSourceClock = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseCreateWithSourceClock");
    if (!gFunc_CMTimebaseCreateWithSourceClock)
    {
      v19 = dlerror();
      printf("❌  failed to load 'CMTimebaseCreateWithSourceClock' [%s]\n", v19);
    }

    gFunc_CMTimebaseGetTime = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseGetTime");
    if (!gFunc_CMTimebaseGetTime)
    {
      v20 = dlerror();
      printf("❌  failed to load 'CMTimebaseGetTime' [%s]\n", v20);
    }

    gFunc_CMTimebaseSetRate = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseSetRate");
    if (!gFunc_CMTimebaseSetRate)
    {
      v21 = dlerror();
      printf("❌  failed to load 'CMTimebaseSetRate' [%s]\n", v21);
    }

    result = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseSetTimerDispatchSourceNextFireTime");
    gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime = result;
    if (!result)
    {
      v23 = dlerror();
      return printf("❌  failed to load 'CMTimebaseSetTimerDispatchSourceNextFireTime' [%s]\n", v23);
    }
  }

  else
  {
    v24 = dlerror();
    return LogError("IIOLoadCoreMediaSymbols_block_invoke", 886, "❌  Failed to load %s  [%s]\n", "/System/Library/Frameworks/CoreMedia.framework/CoreMedia", v24);
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, void *a4, uint64_t a5, uint64_t *a6)
{
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(this + 55);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v11 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v11 << 8 >> 24;
    if (v16 <= 0x7F)
    {
      v17 = *(v13 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v11 << 8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v11 >> 8;
    if (v19 <= 0x7F)
    {
      v20 = *(v13 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v19, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v20)
    {
      v21 = (v11 >> 8);
    }

    else
    {
      v21 = 46;
    }

    if (v11 <= 0x7F)
    {
      if ((*(v13 + 4 * v11 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v11, 0x40000uLL))
    {
LABEL_22:
      v22 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus AppleJPEGReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  v23 = IIOReadPlugin::debugDecodeImage(this, a2);
  if (a3 == 3)
  {
    v26 = *(a2 + 1);
    v27 = *(a2 + 2);
    v28 = *(a2 + 3);
    v29 = *(a2 + 4);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    v32 = *(a2 + 7);
    v33 = *(a2 + 8);
    XmpData = _APP1XMP::getXmpData(a2);
    v35 = (*(*this + 208))(this, v26, v27, XmpData, v28, v29, v30, v31, v32, v33);
    v25 = 4294967246;
    if (a6)
    {
      *a6 = v35;
      if (v35)
      {
        return 0;
      }

      else
      {
        return 4294967246;
      }
    }

    return v25;
  }

  if (a3 != 1)
  {
    _cg_jpeg_mem_term("decodeImageImp", 2857, "*** ERROR: imageType '%d' not handled\n");
    return 4294967246;
  }

  if (!a4)
  {
    return 4294967246;
  }

  if (*a4)
  {
    AppleJPEGReadPlugin::decodeIntoIOSurface(v23, a2, v24);
    v25 = 4294967246;
    _cg_jpeg_mem_term("decodeImageImp", 2838, "*** decodeIntoIOSurface - err = %d\n");
    return v25;
  }

  v37 = *(a2 + 2);
  v38 = _APP1XMP::getXmpData(a2);
  v39 = *(*this + 224);

  return v39(this, v37, v38, a4, 0);
}

uint64_t IIOReadPlugin::setupImageProviderCallbackV2(uint64_t a1, CFDictionaryRef *a2)
{
  v4 = IIOReadPlugin::prepareGeometry(a1, a2);
  if (!v4)
  {
    IIOImagePlus::setImageBlockProc(*(a1 + 16), a2);
  }

  return v4;
}

void IIO_LoadHEIFSymbols()
{
  if (gLoadCMPhotoSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_1();
  }

  if (gLoadCoreVideoSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_2();
  }

  if (gLoadCoreMediaSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_3();
  }

  if (gLoadVideoToolboxSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_4();
  }
}

void CGImageMetadataMerge(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CGImageMetadataGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        if (v8 == CGImageMetadataGetTypeID())
        {
          Count = CFDictionaryGetCount(*(a2 + 24));
          CFDictionaryGetCount(*(a1 + 24));
          if (Count < 1)
          {
            v12 = 0;
            v11 = 0;
LABEL_84:
            v47 = *(a2 + 32);
            if (v47 && CFDictionaryGetCount(v47))
            {
              v48 = *(a1 + 32);
              if (v48)
              {
                if ((IIODictionaryIsMutable(v48) & 1) == 0)
                {
                  _cg_jpeg_mem_term("CGImageMetadataMerge", 880, "*** ERROR: metadata->_NStoPrefix is immutable???\n");
                  v49 = *(a1 + 32);
                  *(a1 + 32) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v49);
                  CFRelease(v49);
                }
              }

              else
              {
                *(a1 + 32) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              IIODictionary::IIODictionary(&v63, *(a1 + 32));
              IIODictionary::appendDictionary(v50, *(a2 + 32));
              IIODictionary::~IIODictionary(&v63);
            }

            v51 = *(a2 + 40);
            if (v51 && CFDictionaryGetCount(v51))
            {
              Mutable = *(a1 + 40);
              if (!Mutable)
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(a1 + 40) = Mutable;
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              IIODictionary::IIODictionary(&v63, Mutable);
              IIODictionary::appendDictionary(v53, *(a2 + 40));
              IIODictionary::~IIODictionary(&v63);
            }

            if (*(a2 + 48))
            {
              v54 = *(a1 + 48);
              if (!v54)
              {
                v54 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(a1 + 48) = v54;
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              IIODictionary::IIODictionary(&v63, v54);
              IIODictionary::appendDictionary(v55, *(a2 + 48));
              IIODictionary::~IIODictionary(&v63);
            }

            if (!v11)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v10 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            if (!v10)
            {
              return;
            }

            v11 = v10;
            v12 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            if (v12)
            {
              CFDictionaryGetKeysAndValues(*(a2 + 24), v11, v12);
              v13 = *(a2 + 56);
              if (v13)
              {
                v14 = *(a1 + 56);
                if (v14)
                {
                  CFRelease(v14);
                  v13 = *(a2 + 56);
                }

                *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x1E695E480], v13);
              }

              v15 = *(a2 + 64);
              if (v15)
              {
                v16 = *(a1 + 64);
                if (v16)
                {
                  CFRelease(v16);
                  v15 = *(a2 + 64);
                }

                *(a1 + 64) = CFStringCreateCopy(*MEMORY[0x1E695E480], v15);
              }

              v60 = CGImageIIMDigestsMatchOrMissing(a1);
              v57 = a2;
              if (a3)
              {
                v17 = IIODictionary::containsKey(a3, @"kCGImageMetadataMergeOverwrite");
                BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceShouldPreferIPTCToEXIF");
                v19 = v17 ^ 1;
              }

              else
              {
                BoolForKey = 0;
                v19 = 1;
              }

              v59 = v19;
              v20 = 0;
              v58 = *MEMORY[0x1E695E738];
              v56 = !v60 || BoolForKey;
              while (1)
              {
                v21 = v12[v20];
                if (!v21)
                {
                  goto LABEL_79;
                }

                v22 = CFGetTypeID(v12[v20]);
                if (v22 != CGImageMetadataTagGetTypeID())
                {
                  goto LABEL_79;
                }

                Source = CGImageSourceGetSource(v21);
                value = 0;
                ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 24), v11[v20], &value);
                v25 = CGImageSourceGetSource(value);
                v26 = CGImageMetadataTagGetSource(v21);
                v27 = v26;
                if (!ValueIfPresent)
                {
                  v31 = v60;
                  if (v26 != 8)
                  {
                    v31 = 1;
                  }

                  if ((v31 & 1) == 0)
                  {
                    v32 = CGImageMetadataCreateMutable();
                    if (v32)
                    {
                      v33 = v32;
                      CGImageMetadataAddTag(v32, v21);
                      v34 = CGImagePropertiesCreateFromMetadata(v33);
                      if (v34)
                      {
                        v35 = v34;
                        ObjectForKey = IIODictionary::getObjectForKey(v34, @"{IPTC}");
                        if (ObjectForKey)
                        {
                          v63 = 0;
                          v64 = 0;
                          v65 = 0;
                          IIODictionary::IIODictionary(&v63, ObjectForKey);
                          v38 = SizeOfIPTCData(v37) != 0;
                          IIODictionary::~IIODictionary(&v63);
                        }

                        else
                        {
                          v38 = 0;
                        }

                        (*(*v35 + 8))(v35);
                        CFRelease(v33);
                        if (v38)
                        {
                          goto LABEL_79;
                        }
                      }

                      else
                      {
                        CFRelease(v33);
                      }
                    }
                  }

                  goto LABEL_78;
                }

                v28 = CGImageMetadataTagGetSource(value);
                v63 = @"http://ns.adobe.com/photoshop/1.0/";
                v64 = @"DateCreated";
                v65 = 0;
                v61[2] = 0;
                v62[0] = @"http://ns.adobe.com/xap/1.0/";
                v62[1] = @"CreateDate";
                v62[2] = 0;
                v61[0] = @"http://ns.adobe.com/xap/1.0/";
                v61[1] = @"ModifyDate";
                if (CGImageMetadataTagKeyEqual(v11[v20], &v63) || CGImageMetadataTagKeyEqual(v11[v20], v62) || CGImageMetadataTagKeyEqual(v11[v20], v61))
                {
                  break;
                }

LABEL_52:
                if ((v59 & 1) == 0)
                {
                  if (CGImageMetadataTagGetValue(v21) == v58)
                  {
                    CGImageMetadataRemoveTag(a1, v21);
                  }

                  else
                  {
                    CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
                    CGImageMetadataTagGetSource(v21);
                  }

                  goto LABEL_79;
                }

                v44 = CGImageMetadataTagGetSource(v21);
                v45 = CGImageMetadataTagGetSource(value);
                if ((v44 & 2) != 0)
                {
                  if (v45 == 4)
                  {
                    if (v56)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v45 != 8 && (~v45 & 0x22) != 0)
                  {
                    goto LABEL_79;
                  }
                }

                else if (v44 == 16)
                {
                  if (v45 != 4 && v45 != 8 && (v45 & 2) == 0)
                  {
                    goto LABEL_79;
                  }
                }

                else
                {
                  if (v44 == 8)
                  {
                    v46 = v45 == 4 && v60;
                  }

                  else
                  {
                    if (v44 != 4 || v45 == 4)
                    {
                      goto LABEL_79;
                    }

                    if (v45 == 8)
                    {
                      if (v60)
                      {
                        goto LABEL_79;
                      }

                      goto LABEL_78;
                    }

                    v46 = *&v56 & ((v45 & 2) >> 1);
                  }

                  if (v46 != 1)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_78:
                CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
LABEL_79:
                if (Count == ++v20)
                {
                  a2 = v57;
                  goto LABEL_84;
                }
              }

              v29 = v25;
              if ((v28 & 0xC) != 0 || (v29 = Source, (v27 & 0xC) != 0))
              {
                v30 = *(v29 + 48);
                if ((v28 & 2) != 0)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v30 = 0;
                if ((v28 & 2) != 0)
                {
                  goto LABEL_40;
                }
              }

              v25 = Source;
              if ((v27 & 2) == 0)
              {
                goto LABEL_52;
              }

LABEL_40:
              v39 = *(v25 + 48);
              if (!v39 || !v30)
              {
                goto LABEL_52;
              }

              EXIFDataTimeStringWithXMPDateTimeString = CreateEXIFDataTimeStringWithXMPDateTimeString(v30);
              v41 = CreateEXIFDataTimeStringWithXMPDateTimeString(v39);
              v42 = v41;
              if (EXIFDataTimeStringWithXMPDateTimeString && v41)
              {
                v43 = 0;
                if (CFStringCompare(EXIFDataTimeStringWithXMPDateTimeString, v41, 0) == kCFCompareEqualTo && (v27 & 0xC) != 0)
                {
                  CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
                  v43 = 1;
                }
              }

              else
              {
                v43 = 0;
                if (!EXIFDataTimeStringWithXMPDateTimeString)
                {
                  goto LABEL_49;
                }
              }

              CFRelease(EXIFDataTimeStringWithXMPDateTimeString);
LABEL_49:
              if (v42)
              {
                CFRelease(v42);
              }

              if (v43)
              {
                goto LABEL_79;
              }

              goto LABEL_52;
            }
          }

          free(v11);
LABEL_102:
          if (v12)
          {
            free(v12);
          }
        }
      }
    }
  }
}

double _CGImageMetadataFinalize(char *a1)
{
  if (a1 && *MEMORY[0x1E695E738] != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 6);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 4);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 5);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 7);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      CFRelease(v7);
    }

    pthread_mutex_destroy((a1 + 72));
    pthread_mutex_destroy((a1 + 136));
    pthread_mutex_destroy((a1 + 208));
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void IIONumber::IIONumber(IIONumber *this, float a2)
{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 12;
  *(this + 2) = 0;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

uint64_t _CGImageReadFinalize(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit(&gReadRefCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v6 = 0u;
    v2 = a1[3];
    v3 = v2 ? ~*(v2 + 16) : 0;
    snprintf(__str, 0x20uLL, "(%p)", a1);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "_CGImageReadFinalize", v3, __str, -1, 0);
    }
  }

  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

void IIOImageRead::~IIOImageRead(IIOImageRead *this)
{
  *this = &unk_1EF4DBAF8;
  v2 = (this + 248);
  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(this + 240, *(this + 31));
  *(this + 30) = v2;
  *(this + 32) = 0;
  *v2 = 0;
  if ((gIIODebugFlags & 0x200) != 0)
  {
    ImageIOLog(">>> _cache_keys - deleting %d entries\n", -1171354717 * ((*(this + 37) - *(this + 36)) >> 2));
  }

  v4 = *(this + 36);
  v3 = *(this + 37);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      *&v21[12] = 0u;
      key = 0u;
      *v21 = 0u;
      v6 = *v4;
      v7 = v4[1];
      *&v21[12] = *(v4 + 28);
      key = v6;
      *v21 = v7;
      if ((gIIODebugFlags & 0x200) != 0)
      {
        DebugStringFromKey = createDebugStringFromKey(&key);
        v9 = DebugStringFromKey;
        if (DebugStringFromKey)
        {
          ImageIOLog("--- #%d cache_remove             %p key: %s\n", v5++, gImageBlockCache, DebugStringFromKey);
          free(v9);
        }
      }

      cache_remove(gImageBlockCache, &key);
      v4 = (v4 + 44);
    }

    while (v4 != v3);
  }

  if ((gIIODebugFlags & 0x200) != 0)
  {
    cache_print();
  }

  v10 = *(this + 19);
  v11 = *(this + 20);
  while (v10 != v11)
  {
    (*(v10 + 8))(*v10);
    v10 += 24;
  }

  if (*(this + 66))
  {
    v12 = *(this + 6);
    if ((v12 & 0x80000000) == 0)
    {
      if ((gIIODebugFlags & 0x200000000000) != 0)
      {
        ImageIOLog("<<< _CGImageReadFinalize <IIOImageRead: %p>: closing file %d\n", this, v12);
      }

      kdebug_trace();
      close(*(this + 6));
      *(this + 66) = 0;
    }
  }

  *(this + 6) = -1;
  v13 = *(this + 33);
  if (v13)
  {
    free(v13);
  }

  v14 = *(this + 5);
  if (v14)
  {
    CFRelease(v14);
  }

  *(this + 5) = 0;
  v15 = *(this + 4);
  if (v15)
  {
    CFRelease(v15);
  }

  *(this + 4) = 0;
  v16 = *(this + 6);
  if (v16)
  {
    CFRelease(v16);
  }

  *(this + 6) = 0;
  v17 = *(this + 7);
  if (v17)
  {
    CFRelease(v17);
  }

  *(this + 7) = 0;
  pthread_mutex_destroy((this + 176));
  pthread_mutex_destroy((this + 88));
  pthread_mutex_destroy((this + 376));
  pthread_mutex_destroy((this + 312));
  v18 = *(this + 36);
  if (v18)
  {
    *(this + 37) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(this + 240, *(this + 31));
  v19 = *(this + 19);
  if (v19)
  {
    *(this + 20) = v19;
    operator delete(v19);
  }
}

{
  IIOImageRead::~IIOImageRead(this);

  JUMPOUT(0x186602850);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>((a2 + 4));

    operator delete(a2);
  }
}

CGMutableImageMetadataRef CreateMetadataFromDatablock(IIOImageReadSession *a1, unsigned __int16 *a2, off_t a3, unsigned int a4, const __CFData *a5, char a6)
{
  v139 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v136 = 0;
  MetadataLong = 0;
  v129 = IIOImageReadSession::getSize(a1);
  Mutable = CGImageMetadataCreateMutable();
  v132 = a1;
  if (IIOImageReadSession::getBytesAtOffset(a1, &v136, a3, 2) == 2)
  {
    v9 = v136;
    if (a4)
    {
      v9 = __rev16(v136);
      v136 = v9;
    }

    if ((v9 - 255) >= 0xFF02u)
    {
      v134 = malloc_type_calloc(v9, 0xCuLL, 0x10000403E1C8BA9uLL);
      if (v134)
      {
        v10 = a3 + 2;
        BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a1, v134, v10, 12 * v136);
        v12 = v136;
        if (BytesAtOffset != 12 * v136)
        {
          goto LABEL_310;
        }

        if (v136)
        {
          v13 = a6;
          if (a4)
          {
            v14 = 0;
            v15 = v134;
            do
            {
              *v15 = bswap32(*v15) >> 16;
              *(v15 + 1) = bswap32(*(v15 + 1)) >> 16;
              *(v15 + 1) = bswap32(*(v15 + 1));
              ++v14;
              v15 += 12;
              v12 = v136;
            }

            while (v14 < v136);
          }

          if ((a6 & 4) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = a6;
          if ((a6 & 4) == 0)
          {
LABEL_13:
            v16 = 0;
LABEL_24:
            v127 = v16;
            if ((v13 & 8) != 0)
            {
              operator new();
            }

            if (a2 == tagdefsGPS && v136 < 2u)
            {
              goto LABEL_310;
            }

            if (a2 == tagdefsIFD0)
            {
              if (gInitializeTagKeyCacheIFD0Mutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &IFD0TagKeys;
            }

            else if (a2 == &tagdefsIFD1)
            {
              if (gInitializeTagKeyCacheIFD1Mutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &IFD1TagKeys;
            }

            else if (a2 == tagdefsExif)
            {
              if (gInitializeTagKeyCacheExifMutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &ExifTagKeys;
            }

            else
            {
              if (a2 != tagdefsGPS)
              {
                CreateMetadataFromDatablock();
                goto LABEL_33;
              }

              if (gInitializeTagKeyCacheGPSMutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &GPSTagKeys;
            }

            if (v136)
            {
              v21 = 0;
              v123 = 0;
              size = 0;
              v22 = 0;
              v23 = 0;
              v126 = *v20;
              alloc = *MEMORY[0x1E695E480];
              v24 = v134;
              while (1)
              {
                v25 = *a2;
                if (v25 == 0xFFFF)
                {
                  goto LABEL_52;
                }

                v26 = 0;
                v27 = *v24;
                v28 = a2 + 16;
                while (v25 != v27)
                {
                  ++v26;
                  v25 = v28[12];
                  v28 += 28;
                  if (v25 == 0xFFFF)
                  {
                    goto LABEL_52;
                  }
                }

                v29 = *(v28 - 15);
                if (*(v28 - 15))
                {
                  v30 = *(v24 + 1);
                  if (v30 != v29 && (v29 != 32771 || (v30 - 3) >= 2u))
                  {
                    if (*(v28 - 15) <= 0x8005u)
                    {
                      if (*(v28 - 15) > 0x8003u)
                      {
                        if (v29 != 32772)
                        {
                          if (v30 > 7)
                          {
                            goto LABEL_173;
                          }

                          v32 = 1 << v30;
                          v33 = 134;
                          goto LABEL_92;
                        }

                        if (v30 != 3 && v30 != 5)
                        {
LABEL_173:
                          v114 = *(v28 - 15);
                          v115 = *(v24 + 1);
                          v113 = *v24;
                          _cg_jpeg_mem_term("FindTagDef", 544, "*** tag '%04X'  type mismatch:   expected: %04X  got: %04X\n");
                          goto LABEL_52;
                        }
                      }

                      else if (v29 == 32769)
                      {
                        if ((v30 - 1) >= 2u)
                        {
                          goto LABEL_173;
                        }
                      }

                      else if (v29 != 32770 || (v30 | 2) != 3)
                      {
                        goto LABEL_173;
                      }
                    }

                    else if (*(v28 - 15) <= 0x8007u)
                    {
                      if (v29 == 32774)
                      {
                        if ((v30 - 3) >= 3u)
                        {
                          goto LABEL_173;
                        }
                      }

                      else if (v30 != 5 && v30 != 10)
                      {
                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      if (v29 == 32776)
                      {
                        if (v30 > 7)
                        {
                          goto LABEL_173;
                        }

                        v32 = 1 << v30;
                        v33 = 150;
                        goto LABEL_92;
                      }

                      if (v29 == 32777)
                      {
                        if (v30 > 0x12)
                        {
                          goto LABEL_173;
                        }

                        v32 = 1 << v30;
                        v33 = 270352;
LABEL_92:
                        if ((v32 & v33) == 0)
                        {
                          goto LABEL_173;
                        }

                        goto LABEL_93;
                      }

                      if (v29 != 32778 || v30 != 1 && v30 != 7)
                      {
                        goto LABEL_173;
                      }
                    }
                  }
                }

LABEL_93:
                v34 = *(v28 - 14);
                if (*(v28 - 14))
                {
                  v35 = *(v24 + 1);
                  if (v35 == v34)
                  {
                    v36 = *(v28 - 14);
                  }

                  else
                  {
                    if (v29 != 2 || *(v24 + 1) != 2)
                    {
                      goto LABEL_52;
                    }

                    if (v34 == 2 && v35 == 1)
                    {
                      v36 = 2;
                    }

                    else
                    {
                      if (v34 != 20 || v35 != 19)
                      {
                        goto LABEL_52;
                      }

                      v36 = 20;
                    }

                    v26 = 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  v36 = 0;
                }

                v37 = *(v28 + 1);
                if (!v37)
                {
                  ++v22;
                }

                if (v36 > v129)
                {
                  ++v23;
                }

                if (v22 >= 0x2B)
                {
                  CreateMetadataFromDatablock();
                  goto LABEL_257;
                }

                if (v23 >= 0x2B)
                {
                  CreateMetadataFromDatablock();
                  goto LABEL_257;
                }

                v38 = *(v28 + 2);
                if (v38 | v37)
                {
                  if (!v38)
                  {
                    v38 = *(v28 + 1);
                  }

                  v39 = *v38;
                }

                else
                {
                  v39 = 0;
                }

                v40 = *(v28 - 2);
                if (v40)
                {
                  v41 = *v40;
                }

                else
                {
                  v41 = 0;
                }

                v42 = *(v28 - 1);
                if (v42)
                {
                  v124 = *v42;
                }

                else
                {
                  v124 = 0;
                }

                v43 = 0;
                if ((v26 & 0x80000000) == 0 && v126)
                {
                  v43 = *(v126 + 8 * v26);
                }

                if (a6)
                {
                  if (v27 == 274)
                  {
                    v47 = *(v24 + 2);
                    if (a4)
                    {
                      if (((bswap32(v47) >> 16) - 9) < 0xFFF8u)
                      {
                        v48 = 256;
                        goto LABEL_159;
                      }
                    }

                    else if ((v47 - 9) <= 0xFFF7u)
                    {
                      v48 = 1;
LABEL_159:
                      *(v24 + 2) = v48;
                    }

                    if (*(v24 + 1) != 3 || *(v24 + 1) > 0x28u)
                    {
                      goto LABEL_52;
                    }

                    ReadMetadataShort(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, 0, a4);
                    v27 = *v24;
                  }

                  if ((v27 & 0xFFFE) != 0x11A)
                  {
                    goto LABEL_166;
                  }

                  if (*(v24 + 1) == 5)
                  {
                    ReadMetadataRtnl(Mutable, v132, v41, v124, v39, v43, *(v28 - 14) != 1, v24, a4);
                    v27 = *v24;
LABEL_166:
                    if (v27 == 296 && *(v24 + 1) == 3)
                    {
                      ReadMetadataShort(Mutable, v132, v41, v124, v39, v43, *(v28 - 14) != 1, v24, 0, a4);
                    }

                    goto LABEL_52;
                  }

                  goto LABEL_52;
                }

                if ((a6 & 2) != 0)
                {
                  if (*v24 <= 0x8768u)
                  {
                    if (v27 == 700)
                    {
                      goto LABEL_52;
                    }

                    v49 = 33723;
                  }

                  else
                  {
                    if (v27 == 34665 || v27 == 34853)
                    {
                      goto LABEL_52;
                    }

                    v49 = 37500;
                  }

                  if (v27 == v49)
                  {
                    goto LABEL_52;
                  }
                }

                if (a2 == tagdefsIFD0 && v27 == 700)
                {
                  v123 = *(v24 + 2);
                  if (a4)
                  {
                    v123 = bswap32(v123);
                    *(v24 + 2) = v123;
                  }

                  size = *(v24 + 1);
                  goto LABEL_129;
                }

                if (*v24 > 0x8824u)
                {
                  if (v27 == 34853)
                  {
                    MetadataLong = ReadMetadataLong(Mutable, v132, v41, v124, v39, v43, 0, v24, a4);
                    MetadataFromDatablock = CreateMetadataFromDatablock(v132, tagdefsGPS, MetadataLong, a4, a5, 0);
                    v51 = MetadataFromDatablock;
                    if (!MetadataFromDatablock)
                    {
                      goto LABEL_52;
                    }

                    TopLevelTag = CGImageMetadataGetTopLevelTag(MetadataFromDatablock, @"http://ns.adobe.com/exif/1.0/", @"GPSLatitude");
                    value = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLatitudeRef");
                    v125 = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLongitude");
                    v118 = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLongitudeRef");
                    Source = CGImageSourceGetSource(TopLevelTag);
                    v72 = CGImageSourceGetSource(value);
                    v117 = CGImageSourceGetSource(v125);
                    v116 = CGImageSourceGetSource(v118);
                    if (TopLevelTag)
                    {
                      if (value)
                      {
                        v73 = CFStringCreateWithFormat(alloc, 0, @"%@%@", *(Source + 48), *(v72 + 48));
                        if (v73)
                        {
                          CGImageMetadataTagSetValue(TopLevelTag, v73);
                          CGImageMetadataRemoveTag(v51, value);
                          CFRelease(v73);
                        }
                      }
                    }

                    if (v125)
                    {
                      if (v118)
                      {
                        v74 = CFStringCreateWithFormat(alloc, 0, @"%@%@", *(v117 + 48), *(v116 + 48));
                        if (v74)
                        {
                          CGImageMetadataTagSetValue(v125, v74);
                          CGImageMetadataRemoveTag(v51, v118);
                          CFRelease(v74);
                        }
                      }
                    }

                    goto LABEL_156;
                  }

                  if (v27 == 37500 && *(v24 + 1) >= 5u)
                  {
                    v59 = *(v24 + 2);
                    v60 = bswap32(v59);
                    if (a4)
                    {
                      v61 = v60;
                    }

                    else
                    {
                      v61 = v59;
                    }

                    v62 = GetSizeForTiffType(*(v24 + 1)) * *(v24 + 1);
                    if (!v62)
                    {
                      goto LABEL_52;
                    }

                    if (v62 >= v129)
                    {
                      v113 = v62;
                      v114 = v129;
                      _cg_jpeg_mem_term("CreateMetadataFromDatablock", 2225, "*** ERROR: Bad makerNoteSize: %d >= fileSize: %d\n");
                      goto LABEL_52;
                    }

                    v63 = malloc_type_calloc(v62, 1uLL, 0x100004077774924uLL);
                    if (v63)
                    {
                      v64 = IIOImageReadSession::getBytesAtOffset(v132, v63, v61, v62);
                      if (v64 != v62)
                      {
                        v113 = v62;
                        v114 = v64;
                        _cg_jpeg_mem_term("CreateMetadataFromDatablock", 2230, "*** ERROR: failed to read makerNote (expected: %d, got: %d bytes)\n");
                        goto LABEL_52;
                      }

                      if (v62 < 0x20)
                      {
                        if (v62 >= 0xA)
                        {
                          goto LABEL_233;
                        }

                        goto LABEL_237;
                      }

                      if (!strncmp(v63 + 4, "iOS ", 4uLL))
                      {
                        goto LABEL_240;
                      }

LABEL_233:
                      if (*v63 == 0x4F6920656C707041 && *(v63 + 4) == 83)
                      {
                        PropertiesFromAppleMakerNote = CreatePropertiesFromAppleMakerNote(v63, v62);
                        if (PropertiesFromAppleMakerNote)
                        {
                          CreateMetadataFromDatablock(Mutable + 6, PropertiesFromAppleMakerNote);
                        }
                      }

                      else
                      {
LABEL_237:
                        v137 = 0uLL;
                        v138 = 0;
                        IIODictionary::IIODictionary(&v137);
                        v82 = IIOImageSource::cf(v132);
                        call_RAWCamera_readMakerNoteProps(v82, &v137, v61, v62, a4);
                        v83 = *(Mutable + 6);
                        if (v83)
                        {
                          CFRelease(v83);
                        }

                        *(Mutable + 6) = CFRetain(*(&v137 + 1));
                        IIODictionary::~IIODictionary(&v137);
                      }

LABEL_240:
                      v84 = v63;
LABEL_253:
                      free(v84);
                      goto LABEL_52;
                    }

                    goto LABEL_52;
                  }

LABEL_129:
                  v44 = *v28;
                  if (!*v28 && !v39 && !v41)
                  {
                    goto LABEL_52;
                  }

                  if (v27 == 274)
                  {
                    v45 = *(v24 + 2);
                    if (a4)
                    {
                      if (((bswap32(v45) >> 16) - 9) < 0xFFF8u)
                      {
                        v46 = 256;
                        goto LABEL_212;
                      }
                    }

                    else if ((v45 - 9) <= 0xFFF7u)
                    {
                      v46 = 1;
LABEL_212:
                      *(v24 + 2) = v46;
                    }
                  }

                  if (v44)
                  {
                    LOBYTE(v113) = a4;
                    v44(Mutable, v132, v41, v124, v39, v43, v24, 0, v113, v114, v115);
                  }

                  else
                  {
                    v75 = *(v24 + 1);
                    v76 = *(v24 + 1);
                    if ((v75 - 1) >> 4 > 0x270 || v76 != 2)
                    {
                      if (*(v24 + 1) <= 3u)
                      {
                        if (v76 == 1)
                        {
                          if (v75 <= 0x28)
                          {
                            ReadMetadataByte(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, 0, a4);
                          }
                        }

                        else if (v76 == 3 && v75 <= 0x28)
                        {
                          ReadMetadataShort(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, 0, a4);
                        }
                      }

                      else
                      {
                        switch(v76)
                        {
                          case 4:
                            if (v75 <= 0x28)
                            {
                              ReadMetadataLong(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, a4);
                            }

                            break;
                          case 10:
                            ReadMetadataSRtnl(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, a4);
                            break;
                          case 5:
                            ReadMetadataRtnl(Mutable, v132, v41, v124, v39, v43, v34 != 1, v24, a4);
                            break;
                        }
                      }

                      goto LABEL_52;
                    }

                    ASCIIString = ReadAndCreateASCIIString(v132, v24, 0, a4);
                    v78 = ASCIIString;
                    if (ASCIIString)
                    {
                      if (*ASCIIString && !onlyspaces(ASCIIString))
                      {
                        v79 = stringType(v78, *(v24 + 1));
                        if (v79 == 1)
                        {
                          v80 = 134217984;
LABEL_249:
                          valuea = CFStringCreateWithCString(alloc, v78, v80);
                          if (valuea)
                          {
                            v86 = CGImageMetadataTagCreate(v41, v124, v39, kCGImageMetadataTypeString, valuea);
                            CFRelease(valuea);
                            if (v86)
                            {
                              CGImageMetadataAddTagWithKey(Mutable, v43, v86);
                              CFRelease(v86);
                            }
                          }
                        }

                        else if (!v79)
                        {
                          v80 = 1536;
                          goto LABEL_249;
                        }
                      }

                      v84 = v78;
                      goto LABEL_253;
                    }
                  }

                  goto LABEL_52;
                }

                if (v27 == 33723)
                {
                  if (a2 == tagdefsIFD0 && (*(v24 + 1) - 1) <= 0xF423F)
                  {
                    v65 = *(v24 + 1);
                    if (v65 > 0xA)
                    {
                      goto LABEL_52;
                    }

                    v66 = GetSizeForTiffType(v65) * *(v24 + 1);
                    v63 = malloc_type_malloc(v66, 0x72EA2A2AuLL);
                    if (!v63)
                    {
                      goto LABEL_52;
                    }

                    v67 = *(v24 + 2);
                    if (a4)
                    {
                      v67 = bswap32(v67);
                      *(v24 + 2) = v67;
                    }

                    if (IIOImageReadSession::getBytesAtOffset(v132, v63, v67, v66) == v66)
                    {
                      MetadataFromIPTCDatabuffer = CreateMetadataFromIPTCDatabuffer(v63, v66);
                      if (MetadataFromIPTCDatabuffer)
                      {
                        metadataSetUnspecifiedSource(Mutable, 2);
                        metadataSetSource(MetadataFromIPTCDatabuffer, 4);
                        CGImageMetadataMerge(Mutable, MetadataFromIPTCDatabuffer, 0);
                        CFRelease(MetadataFromIPTCDatabuffer);
                      }
                    }

                    goto LABEL_240;
                  }

                  goto LABEL_129;
                }

                if (v27 != 34665)
                {
                  goto LABEL_129;
                }

                MetadataLong = ReadMetadataLong(Mutable, v132, v41, v124, v39, v43, 0, v24, a4);
                v50 = CreateMetadataFromDatablock(v132, tagdefsExif, MetadataLong, a4, a5, 0);
                v51 = v50;
                if (v50)
                {
                  v52 = CGImageMetadataGetTopLevelTag(v50, @"http://ns.adobe.com/exif/1.0/", @"ISOSpeedRatings");
                  if (v52)
                  {
                    v53 = CGImageMetadataTagCopyValue(v52);
                    v54 = v53;
                    if (v53)
                    {
                      v55 = CFGetTypeID(v53);
                      if (v55 == CFArrayGetTypeID() && CFArrayGetCount(v54) >= 1 && CFArrayGetCount(v54) == 1)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v54, 0);
                        DefaultString = CGImageMetadataGetDefaultString(ValueAtIndex);
                        v58 = CGImageMetadataTagCreate(@"http://cipa.jp/exif/1.0/", @"exifEX", @"PhotographicSensitivity", kCGImageMetadataTypeString, DefaultString);
                        if (v58)
                        {
                          CGImageMetadataAddTag(v51, v58);
                          CFRelease(v58);
                        }
                      }

                      CFRelease(v54);
                    }
                  }

LABEL_156:
                  CGImageMetadataMerge(Mutable, v51, 0);
                  CFRelease(v51);
                }

LABEL_52:
                ++v21;
                v24 += 12;
                if (v21 >= v136)
                {
                  goto LABEL_257;
                }
              }
            }

            size = 0;
            v123 = 0;
LABEL_257:
            if (!v127)
            {
              goto LABEL_299;
            }

            if (IIOImageReadSession::getBytesAtOffset(v132, &v136, v127, 2) != 2)
            {
              goto LABEL_33;
            }

            v87 = v136;
            if (a4)
            {
              v87 = __rev16(v136);
              v136 = v87;
            }

            v19 = v134;
            if (v87 > 0xFE)
            {
              goto LABEL_311;
            }

            if (!v87)
            {
              goto LABEL_299;
            }

            v88 = reallocf(v134, 4 * ((3 * v87) & 0x3FFF));
            if (!v88)
            {
              return Mutable;
            }

            v134 = v88;
            v89 = IIOImageReadSession::getBytesAtOffset(v132, v88, v127 + 2, 12 * v136);
            if (v89 != 12 * v136)
            {
              goto LABEL_33;
            }

            v90 = v134;
            if (v136 && a4)
            {
              CreateMetadataFromDatablock(v134, v136);
              v90 = v134;
            }

            else if (!v136)
            {
              goto LABEL_299;
            }

            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = *MEMORY[0x1E695E480];
            v95 = (v90 + 8);
            while (1)
            {
              v96 = *(v95 - 4);
              if (v96 == 514)
              {
                v93 = *v95;
                v97 = CFStringCreateWithFormat(v94, 0, @"%d", *v95);
                if (v97)
                {
                  v98 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatLength", kCGImageMetadataTypeString, v97);
                  goto LABEL_276;
                }
              }

              else if (v96 == 513)
              {
                v92 = *v95 + 12;
                v97 = CFStringCreateWithFormat(v94, 0, @"%d", v92);
                if (v97)
                {
                  v98 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormat", kCGImageMetadataTypeString, v97);
LABEL_276:
                  v99 = v98;
                  if (v98)
                  {
                    CGImageMetadataAddTag(Mutable, v98);
                    CFRelease(v99);
                  }

                  CFRelease(v97);
                }
              }

              ++v91;
              v95 += 3;
              if (v91 >= v136)
              {
                if (v93 && v92)
                {
                  WORD4(v137) = 0;
                  *&v137 = 0;
                  if (IIOImageReadSession::getBytesAtOffset(v132, &v137, v92 - 12, 2) != 2)
                  {
                    goto LABEL_33;
                  }

                  if (bswap32(v137) >> 16 == 65496)
                  {
                    v100 = v92 - 10;
                    while (IIOImageReadSession::getBytesAtOffset(v132, &v137, v100, 10) == 10)
                    {
                      v101 = __rev16(v137);
                      if (v101 == 65472)
                      {
                        v102 = *(&v137 + 5);
                        v103 = CFStringCreateWithFormat(v94, 0, @"%zu", __rev16(*(&v137 + 7)));
                        v104 = CFStringCreateWithFormat(v94, 0, @"%zu", __rev16(v102));
                        if (v103)
                        {
                          v105 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatWidth", kCGImageMetadataTypeString, v103);
                          if (v105)
                          {
                            CGImageMetadataAddTag(Mutable, v105);
                            CFRelease(v105);
                          }

                          CFRelease(v103);
                        }

                        if (v104)
                        {
                          v106 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatHeight", kCGImageMetadataTypeString, v104);
                          if (v106)
                          {
                            CGImageMetadataAddTag(Mutable, v106);
                            CFRelease(v106);
                          }

                          CFRelease(v104);
                        }

                        goto LABEL_299;
                      }

                      v100 += (bswap32(WORD1(v137)) >> 16) + 2;
                      if (v101 == 65498)
                      {
                        goto LABEL_299;
                      }
                    }

LABEL_33:
                    v19 = v134;
LABEL_311:
                    free(v19);
                    return Mutable;
                  }
                }

LABEL_299:
                metadataSetUnspecifiedSource(Mutable, 2);
                v107 = 0;
                if (v123 && size)
                {
                  v107 = malloc_type_malloc(size, 0xC2CD7ED4uLL);
                  if (!v107)
                  {
                    goto LABEL_33;
                  }

                  if (IIOImageReadSession::getBytesAtOffset(v132, v107, v123, size) == size)
                  {
                    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v107, size);
                    if (MetadataFromXMPBuffer)
                    {
                      CGImageMetadataMerge(Mutable, MetadataFromXMPBuffer, 0);
                      CFRelease(MetadataFromXMPBuffer);
                    }

                    goto LABEL_305;
                  }

LABEL_309:
                  free(v107);
                }

                else
                {
LABEL_305:
                  if (a5)
                  {
                    BytePtr = CFDataGetBytePtr(a5);
                    Length = CFDataGetLength(a5);
                    MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(BytePtr, Length);
                    if (MetadataFromXMPSidecarData)
                    {
                      CGImageMetadataMerge(Mutable, MetadataFromXMPSidecarData, 0);
                      CFRelease(MetadataFromXMPSidecarData);
                    }
                  }

                  if (v107)
                  {
                    goto LABEL_309;
                  }
                }

LABEL_310:
                v19 = v134;
                goto LABEL_311;
              }
            }
          }
        }

        v17 = IIOImageReadSession::getBytesAtOffset(a1, &MetadataLong, v10 + 12 * v12, 4);
        LODWORD(v16) = MetadataLong;
        if (v17 != 4 || MetadataLong == 0)
        {
          v16 = 0;
          v13 = a6;
        }

        else
        {
          v13 = a6;
          if (a4)
          {
            LODWORD(v16) = bswap32(MetadataLong);
            MetadataLong = v16;
          }

          v16 = v16;
        }

        goto LABEL_24;
      }
    }
  }

  return Mutable;
}

void CreateMetadataFromDatablock()
{
  dispatch_once(&gInitializeTagKeyCacheIFD0Mutex, &__block_literal_global_11);
}

{
  dispatch_once(&gInitializeTagKeyCacheExifMutex, &__block_literal_global_64);
}

{
  dispatch_once(&gInitializeTagKeyCacheGPSMutex, &__block_literal_global_67);
}

{
  dispatch_once(&gInitializeTagKeyCacheIFD1Mutex, &__block_literal_global_61);
}

{
  _cg_jpeg_mem_term("CreateMetadataFromDatablock", 2025, "*** ERROR: unexpected tagTable?\n");
}

void EnumerateExifDataUsingBlock(const char *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v37 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  LODWORD(v6) = 6;
  if (*a1 == 255)
  {
    v7 = *(a1 + 1) == 225;
    a1 += 4 * v7;
    if (v7)
    {
      LODWORD(v6) = 10;
    }

    else
    {
      LODWORD(v6) = 6;
    }
  }

  if (!strncmp(a1, "Exif", 4uLL))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v38[0] = 0;
  v8 = v5[v6];
  if (v8 != 73)
  {
    if (v8 == 77 && v5[v6 + 1] == 77)
    {
      v9 = 1;
      goto LABEL_14;
    }

LABEL_69:
    v23 = 0;
    goto LABEL_72;
  }

  if (v5[v6 + 1] != 73)
  {
    goto LABEL_69;
  }

  v9 = 0;
LABEL_14:
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  IIOScanner::IIOScanner(&v30, &v5[v6], (a2 - v6), v9 != 1);
  IIOScanner::skip(&v30, 4uLL);
  Val32 = IIOScanner::getVal32(&v30);
  IIOScanner::seek(&v30, Val32);
  v11 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = 0;
  if (v9)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;
  while (1)
  {
    v38[0] = *(&v31 + 1);
    v14 = v36[0];
    if (v36[0])
    {
      v15 = v36;
      do
      {
        if (v14[4] <= *(&v31 + 1))
        {
          v15 = v14;
        }

        v14 = v14[v14[4] > *(&v31 + 1)];
      }

      while (v14);
      if (v15 != v36 && *(&v31 + 1) <= v15[4])
      {
        break;
      }
    }

    std::__tree<unsigned long long,std::greater<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v35, v38, v38);
    Val16 = IIOScanner::getVal16(&v30);
    if (Val16)
    {
      v17 = 0;
      v18 = v12 | v24;
      do
      {
        v28 = 0u;
        v29 = 0u;
        BYTE8(v29) = v18;
        v19 = *(&v31 + 1);
        WORD4(v28) = IIOScanner::getVal16(&v30);
        WORD5(v28) = IIOScanner::getVal16(&v30);
        v20 = IIOScanner::getVal32(&v30);
        HIDWORD(v28) = v20;
        if (WORD5(v28) > 4u)
        {
          if (WORD5(v28) > 8u)
          {
            if (WORD5(v28) == 9)
            {
LABEL_39:
              LOWORD(v20) = 4 * v20;
              goto LABEL_41;
            }

            if (WORD5(v28) == 10)
            {
LABEL_38:
              LOWORD(v20) = 8 * v20;
              goto LABEL_41;
            }
          }

          else
          {
            if (WORD5(v28) == 5)
            {
              goto LABEL_38;
            }

            if (WORD5(v28) == 7)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          if (WORD5(v28) - 1 < 2)
          {
            goto LABEL_41;
          }

          if (WORD5(v28) == 3)
          {
            LOWORD(v20) = 2 * v20;
LABEL_41:
            DWORD1(v29) = v20;
            if (v20 >= 4u)
            {
              LODWORD(v29) = IIOScanner::getVal32(&v30);
              goto LABEL_53;
            }

            if (v20 == 2)
            {
              LODWORD(v29) = IIOScanner::getVal16(&v30);
              v21 = 2;
              goto LABEL_52;
            }

            if (v20 == 1)
            {
              LODWORD(v29) = IIOScanner::getVal8(&v30);
              v21 = 3;
LABEL_52:
              IIOScanner::skip(&v30, v21);
LABEL_53:
              *&v28 = v19;
              if (WORD4(v28) == 34853)
              {
                v26 = v29;
                v27 = 34853;
                if (a3)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                if (WORD4(v28) == 34665)
                {
                  v25 = v29;
                  v11 = 34665;
                }

                if (!a3)
                {
                  goto LABEL_60;
                }

LABEL_59:
                (*(a3 + 16))(a3, &v28, v6, &v37);
              }

LABEL_60:
              if (v37)
              {
                goto LABEL_71;
              }

              ++v17;
              continue;
            }

LABEL_51:
            v21 = 4;
            goto LABEL_52;
          }

          if (WORD5(v28) == 4)
          {
            goto LABEL_39;
          }
        }

        if (WORD4(v28) || v17 + 1 != Val16)
        {
          DWORD1(v29) = 0;
          goto LABEL_51;
        }

        IIOScanner::seek(&v30, v19);
        ++v17;
      }

      while (v17 != Val16);
    }

    v22 = IIOScanner::getVal32(&v30);
    if (v22)
    {
      v12 = 1;
      IIOScanner::seek(&v30, v22);
    }

    else if (v11)
    {
      v12 = 2;
      IIOScanner::seek(&v30, v25);
      v11 = 0;
    }

    else
    {
      if (!v27)
      {
        goto LABEL_71;
      }

      v12 = 3;
      IIOScanner::seek(&v30, v26);
      v11 = 0;
      v27 = 0;
    }
  }

  _cg_jpeg_mem_term("EnumerateExifDataUsingBlock", 4807, "*** ERROR: cycle in IDF offsets [offset %ld was already processed]\n");
LABEL_71:
  IIOScanner::~IIOScanner(&v30);
  v23 = v36[0];
LABEL_72:
  std::__tree<unsigned long long>::destroy(&v35, v23);
}

void sub_185E957E8(void *a1)
{
  __cxa_begin_catch(a1);
  _cg_jpeg_mem_term("EnumerateExifDataUsingBlock", 4934, "*** EnumerateExifDataUsingBlock: IIOScanner error: %d\n");
  __cxa_end_catch();
  JUMPOUT(0x185E9579CLL);
}

void sub_185E9581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x185E957D4);
}

uint64_t IIOScanner::getVal16(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 2) > *(this + 2)))
  {
    v12 = v1;
    LogError("getVal16", 192, "*** IIOScanner::getVal16 reached EOF\n", v2, v12, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = *(v5 + v6);
  v8 = bswap32(v7) >> 16;
  if (!*(this + 68))
  {
    LOWORD(v7) = v8;
  }

  *(this + 3) = v6 + 2;
  return v7;
}

void *std::__tree<unsigned long long,std::greater<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 <= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 <= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<unsigned long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long long>::destroy(a1, *a2);
    std::__tree<unsigned long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void IIOXPCLog(char *a1, ...)
{
  va_start(va, a1);
  v6 = *MEMORY[0x1E69E9840];
  if (IIOXPCLog::onceToken != -1)
  {
    IIOXPCLog_cold_1();
  }

  if (IIOXPCLog::logXPC == 1)
  {
    v3[0] = 0;
    va_copy(&v3[1], va);
    vasprintf(v3, a1, va);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = v3[0];
      _os_log_impl(&dword_185E59000, 0, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v2 = *MEMORY[0x1E69E9848];
    if (gRunningInXPCService)
    {
      fprintf(v2, "[S] %s");
    }

    else
    {
      fprintf(v2, "[C] %s");
    }

    free(v3[0]);
  }
}

void sub_185E95C1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E95C00);
}

double JPEGReadPlugin::JPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, unsigned int a9)
{
  v13 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a9);
  *v13 = &unk_1EF4D5868;
  result = 0.0;
  *(v13 + 472) = 0u;
  *(v13 + 488) = 0u;
  *(v13 + 504) = 0u;
  *(v13 + 520) = 0;
  *(v13 + 476) = a7;
  *(v13 + 496) = a6;
  *(v13 + 480) = a4;
  *(v13 + 488) = a5;
  *(v13 + 464) = 0;
  return result;
}

double AppleJPEGReadPlugin::AppleJPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, unsigned int a9)
{
  JPEGReadPlugin::JPEGReadPlugin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  *v9 = &unk_1EF4DBDB8;
  result = 0.0;
  *(v9 + 528) = 0u;
  *(v9 + 544) = 0u;
  *(v9 + 560) = 0u;
  *(v9 + 576) = 0u;
  *(v9 + 592) = 0u;
  *(v9 + 608) = 0u;
  *(v9 + 624) = 0u;
  *(v9 + 640) = 0u;
  *(v9 + 656) = 0u;
  *(v9 + 672) = 0u;
  *(v9 + 688) = 0u;
  *(v9 + 704) = 0;
  return result;
}

uint64_t AppleJPEGReadPlugin::initialize(AppleJPEGReadPlugin *this, IIODictionary *a2)
{
  v117[2] = *MEMORY[0x1E69E9840];
  v108 = *(this + 8);
  v116 = 0;
  v115 = 1380401696;
  v114 = 0;
  v4 = IIO_HardwareDecoderDefaultValue(this, a2);
  v5 = *(this + 6);
  v109 = *(this + 7);
  *(this + 348) = 255;
  if (!a2)
  {
    AppleJPEGReadPlugin::initialize();
LABEL_330:
    image_info = 4294967246;
    goto LABEL_66;
  }

  v6 = v4;
  if (IIODictionary::containsKey(a2, @"NEW_PLUGIN_dataOffset"))
  {
    *(this + 60) = IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_dataOffset");
  }

  if (IIODictionary::containsKey(a2, @"NEW_PLUGIN_dataSize"))
  {
    *(this + 61) = IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_dataSize");
  }

  v104 = v6;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    AppleJPEGReadPlugin::initialize   jpegOffset: %d   jpegLength: %d\n", *(this + 60), *(this + 61));
  }

  v7 = IIOSkipMetadata(v5);
  v105 = IIOSkipXMP_and_IPTC(v5);
  if (IIODictionary::containsKey(v5, @"kCGImageSourceXMPSidecar"))
  {
    theData = IIODictionary::getObjectForKey(v5, @"kCGImageSourceXMPSidecar");
  }

  else
  {
    theData = 0;
  }

  v8 = IIODictionary::containsKey(v5, @"kCGImageSourceDecodeRequest");
  if (!((*(this + 232) < 2u) | v7 & 1))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v8, v9))
    {
      ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
    }

    v7 = 1;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v5, @"kCGImageSourceSubsampleFactor");
  v110 = IIODictionary::containsKey(v5, @"kCGImageSourceColorTransform");
  if (v110)
  {
    v10 = IIODictionary::getUint32ForKey(v5, @"kCGImageSourceColorTransform");
    v102 = v10;
    if ((gIIODebugFlags & 0x8000300000) != 0)
    {
      ImageIOLog("COL      pdfColorTransform: %d\n", v10);
    }
  }

  else
  {
    v102 = -1;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourceColorTransformSpace") && (ObjectForKey = IIODictionary::getObjectForKey(v5, @"kCGImageSourceColorTransformSpace")) != 0)
  {
    v12 = ObjectForKey;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(ObjectForKey);
    if ((gIIODebugFlags & 0x8000300000) != 0)
    {
      Name = CGColorSpaceGetName(v12);
      IIOString::IIOString(&v111, Name);
      v14 = IIOString::utf8String(&v111);
      ImageIOLog("COL pdfColorTransformSpace: %s\n", v14);
      IIOString::~IIOString(&v111);
    }

    v106 = 1;
  }

  else
  {
    NumberOfComponents = 0;
    v106 = 0;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "initialize", 1437);
  }

  if (IIODictionary::getBoolForKey(v5, @"IMAGEIO_USE_LIBJPEG"))
  {
    _cg_jpeg_mem_term("initialize", 1443, "*** IMAGEIO_USE_LIBJPEG --> switching to libJPEG\n");
    IIONumber::IIONumber(&v111, 1279938631);
    IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(&v111);
    IIONumber::IIONumber(&v111, *(this + 26));
    IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
    AppleJPEGReadPlugin::initialize(&v111);
LABEL_65:
    image_info = 4294967247;
    goto LABEL_66;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Got session\n", "initialize", 1455);
  }

  v15 = (this + 208);
  if (IIOImageReadSession::seek(*(this + 3), *(this + 26), 0) != *(this + 26))
  {
    goto LABEL_330;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourcePreferredThreadCount"))
  {
    v16 = IIODictionary::getUint32ForKey(v5, @"kCGImageSourcePreferredThreadCount");
    v17 = v16;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Got preferred theadCount == %d\n", "initialize", 1463, v16);
    }
  }

  else
  {
    v17 = 1;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourceEnableMosquitoNoiseFiltering"))
  {
    *(this + 696) = IIODictionary::getBoolForKey(v5, @"kCGImageSourceEnableMosquitoNoiseFiltering");
  }

  *(this + 699) = v17;
  AppleJPEGReadPlugin::appleJPEGDecodeSetup(this);
  if (!*(this + 66))
  {
    AppleJPEGReadPlugin::initialize();
    goto LABEL_330;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Got ajd_session\n", "initialize", 1477);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v18 = "not ";
      if (*(this + 369))
      {
        v18 = "";
      }

      ImageIOLog("    %s:%d: Session is %sfinal/numThreads=%d\n", "initialize", 1478, v18, v17);
    }
  }

  if (*(this + 703))
  {
    goto LABEL_52;
  }

  IIOImageReadSession::seek(*(this + 3), *(this + 60), 0);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    calling appleJPEGDecodeOpen: seeking to jpegOffset: %d\n", *(this + 60));
  }

  v19 = AppleJPEGReadPlugin::appleJPEGDecodeOpen(this);
  image_info = v19;
  if (!v19)
  {
LABEL_52:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Opened file\n", "initialize", 1514);
    }

    v21 = (this + 616);
    image_info = applejpeg_decode_get_image_info();
    if (image_info)
    {
      goto LABEL_66;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Got imageinfo {%d,%d}\n", "initialize", 1519, *(this + 156), *(this + 157));
    }

    precision = applejpeg_decode_get_precision();
    if (precision == 12)
    {
      v22 = *v15;
      if (!*v15)
      {
LABEL_64:
        _cg_jpeg_mem_term("initialize", 1537, "*** 12-bit JPEG --> switching to HEIC decoder\n");
        IIONumber::IIONumber(&v111, 1212500291);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(&v111);
        IIONumber::IIONumber(&v111, *v15);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(&v111);
        IIONumber::IIONumber(&v111, *(this + 25));
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        AppleJPEGReadPlugin::initialize(&v111);
        goto LABEL_65;
      }

      LODWORD(v111) = 0;
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v111, v22, 4) == 4)
      {
        if (v111 == 255 && BYTE1(v111) == 216 && BYTE2(v111) == 255 && (BYTE3(v111) & 0xF0) != 0xD0)
        {
          goto LABEL_64;
        }

        _cg_jpeg_mem_term("initialize", 1535, "*** ERROR: unexpected data '%02X%02X %02X%02X' at offset %ld\n");
      }

      else
      {
        AppleJPEGReadPlugin::initialize();
      }

LABEL_325:
      image_info = 0;
      goto LABEL_66;
    }

    v26 = AppleJPEGReadPlugin::containsGainMap(this);
    if (*(this + 159) == 1 && !IIODictionary::getBoolForKey(a2, @"OriginalPluginWasMPO") && (v26 & 1) != 0)
    {
      v28 = *(this + 2);
      if (!v28 || (v29 = IIOImagePlus::isr(v28), (Source = CGImageSourceGetSource(v29)) == 0) || IIOImageSource::ignoreJPEGAuxImagesRequest(Source) != 1)
      {
        IIONumber::IIONumber(&v111, 1212500291);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(&v111);
        IIONumber::IIONumber(&v111, *v15);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(&v111);
        IIONumber::IIONumber(&v111, *(this + 25));
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        AppleJPEGReadPlugin::initialize(&v111);
        goto LABEL_65;
      }

      LogError("initialize", 1572, "*** NOTE: dropping 'kCGImageSourceDecodeRequest' since 'kCGImageSourceIgnoreJPEGAuxImages' was requested\n");
    }

    if (v110)
    {
      v111 = 0;
      v112 = 0;
      if (*v21 >= 1)
      {
        v27 = 0;
        while (1)
        {
          applejpeg_decode_get_segment_info();
          if (v111 == 238)
          {
            break;
          }

          if (++v27 >= *v21)
          {
            goto LABEL_97;
          }
        }

        *(this + 697) = 1;
        if (HIDWORD(v111) == 14)
        {
          *(v117 + 6) = 0;
          v117[0] = 0;
          IIOImageReadSession::getBytesAtOffset(*(this + 3), v117, v112 + 2, 14);
          v31 = *(v117 + 2) == 1651467329 && BYTE6(v117[0]) == 101;
          if (v31)
          {
            *(this + 698) = BYTE5(v117[1]);
          }
        }
      }

LABEL_97:
      if ((gIIODebugFlags & 0x8000300000) != 0)
      {
        if (*(this + 697))
        {
          v32 = "true";
        }

        else
        {
          v32 = "false";
        }

        ImageIOLog("COL         hasApp14Marker: %s\n", v32);
      }
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: handling metadata\n", "initialize", 1602);
    }

    BoolForKey = IIODictionary::getBoolForKey(*(this + 7), @"kCGImageSourceAddMetadataFromPrimaryImage");
    if (*(this + 26) != 0 && !BoolForKey)
    {
LABEL_118:
      if (*(this + 158) == 1)
      {
        IIODictionary::setObjectForKeyGroup(v109, *MEMORY[0x1E695E4D0], @"IsProgressive", @"{JFIF}");
      }

      if (IIODictionary::getBoolForKey(v5, @"kCGImageSourceAddJPEGQualityInformation"))
      {
        AppleJPEGReadPlugin::readQualityPropertiesFromJPEG(this, *(this + 66), v109);
      }

      else
      {
        *(this + 700) = applejpeg_decode_get_chroma_subsampling();
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: handling colorspace\n", "initialize", 1676);
      }

      v37 = AppleJPEGReadPlugin::readICCData(this, 0, *(this + 26), &v116, &v115);
      if (v37 && (v38 = v116) != 0)
      {
        if (IIODictionary::getBoolForKey(v5, @"kCGImageSourceKeepOriginalProfile") || (pthread_once(&gDisplayCheck, displayCheck), (gIsWideGamutDisplay & 1) != 0) || (v39 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v37, v38, *MEMORY[0x1E695E498])) == 0 || (CanBeIgnoredOnSRGBDevice = ColorSyncDataCanBeIgnoredOnSRGBDevice(), CFRelease(v39), (CanBeIgnoredOnSRGBDevice & 1) == 0))
        {
          v41 = CGColorSpaceCreateWithCopyOfData(v37, v38);
        }

        else
        {
          v41 = 0;
        }

        free(v37);
        v42 = *(this + 58);
        if (!v42)
        {
          goto LABEL_140;
        }

        v43 = (this + 464);
        if (v41)
        {
          CGColorSpaceRelease(v41);
          v42 = *v43;
        }
      }

      else
      {
        v42 = *(this + 58);
        if (!v42)
        {
          v41 = 0;
          goto LABEL_147;
        }

        v43 = (this + 464);
      }

      v41 = CGColorSpaceCreateWithName(v42);
      if ((gIIODebugFlags & 0x8000300000) != 0)
      {
        IIOString::IIOString(&v111, *v43);
        v44 = IIOString::utf8String(&v111);
        ImageIOLog("COL using namedColorSpace '%s'\n", v44);
        IIOString::~IIOString(&v111);
      }

LABEL_140:
      if (v41)
      {
        v45 = CGColorSpaceGetName(v41);
        v46 = v45;
        if (v45 && (CFStringFind(v45, @"PQ", 1uLL).length || CFStringFind(v46, @"HLG", 1uLL).length))
        {
          IIONumber::IIONumber(&v111, 1212500291);
          IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
          IIONumber::~IIONumber(&v111);
          IIONumber::IIONumber(&v111, 0);
          IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
          AppleJPEGReadPlugin::initialize(&v111);
          image_info = 4294967247;
LABEL_180:
          CGColorSpaceRelease(v41);
          goto LABEL_66;
        }

        v47 = 0;
LABEL_148:
        v48 = *(this + 159);
        if ((v48 - 3) < 3)
        {
          *(this + 130) = 4;
          v115 = 1129142603;
          goto LABEL_155;
        }

        if ((v48 - 1) >= 2)
        {
          if (v48)
          {
            goto LABEL_155;
          }

          v115 = 1196573017;
          v49 = 1;
        }

        else
        {
          v115 = 1380401696;
          v49 = 3;
        }

        *(this + 130) = v49;
LABEL_155:
        if (!v47)
        {
          goto LABEL_172;
        }

        v50 = v115;
        if (v115 == 1380401696)
        {
          v51 = createColorSpaceFromMetadata(v108, v7, &v114);
          v41 = v51;
          if (v114 == 1)
          {
            *(this + 172) = 1;
          }

          if (v51)
          {
            goto LABEL_172;
          }
        }

        TopLevelTag = CGImageMetadataGetTopLevelTag(v108, @"http://ns.adobe.com/exif/1.0/", @"ColorSpace");
        if (TopLevelTag)
        {
          v53 = CGImageMetadataTagGetValue(TopLevelTag);
          if (v53)
          {
            if (CFStringGetIntValue(v53) == 1)
            {
              v41 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              if (v41)
              {
                goto LABEL_172;
              }
            }
          }
        }

        switch(v50)
        {
          case 0x52474220u:
            v54 = MEMORY[0x1E695F1C0];
            break;
          case 0x47524159u:
            v54 = MEMORY[0x1E695F128];
            break;
          case 0x434D594Bu:
            v54 = MEMORY[0x1E695F118];
            break;
          default:
            v41 = 0;
            goto LABEL_172;
        }

        v41 = CGColorSpaceCreateWithName(*v54);
LABEL_172:
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: handling subsampling\n", "initialize", 1821);
        }

        v55 = *(this + 156);
        LODWORD(v56) = *(this + 157);
        v57 = v56;
        if (v55 > 0x2710 || v56 >= 0x2711)
        {
          if (!is_mul_ok(v55, v56))
          {
            goto LABEL_179;
          }

          if (*(this + 25) / (v55 * v56) < 0.003)
          {
            _cg_jpeg_mem_term("initialize", 1836, "*** pixelCount: %ld   fileSize: %d    ratio: %g\n");
            goto LABEL_179;
          }
        }

        LOWORD(v58) = Uint32ForKey;
        if (v55 >= v56)
        {
          v56 = v56;
        }

        else
        {
          v56 = *(this + 156);
        }

        if (v56 < Uint32ForKey)
        {
          goto LABEL_185;
        }

        if (Uint32ForKey < 2)
        {
          if (*(this + 232) >= 2u)
          {
            v62 = *(this + 57);
            if (v62)
            {
              if (v55 <= v57)
              {
                v63 = v57;
              }

              else
              {
                v63 = *(this + 156);
              }

              if (v63 <= v62)
              {
                v62 = v63;
              }

              else
              {
                v62 = v62;
              }

              *(this + 57) = v62;
              if (v62 <= (v55 + 7) >> 3 || v62 <= (v57 + 7) >> 3)
              {
                v58 = 8;
              }

              else if (v62 <= (v55 + 3) >> 2 || v62 <= (v57 + 3) >> 2)
              {
                v58 = 4;
              }

              else if (v62 <= (v55 + 1) >> 1 || v62 <= (v57 + 1) >> 1)
              {
                v58 = 2;
              }

              else
              {
                v58 = 1;
              }

              if (v58 > v57 || v58 > v55)
              {
                v65 = 1;
              }

              else
              {
                v65 = v58;
              }

              if (v65 < 2)
              {
LABEL_185:
                LOWORD(v58) = 1;
                goto LABEL_226;
              }

              if ((gIIODebugFlags & 0x30000) != 0 && (ImageIOLog("    subsampling '%d' for thumnnail creation:\n", v65), (gIIODebugFlags & 0x30000) != 0) && (ImageIOLog("    original size: %d x %d\n", v55, v57), (gIIODebugFlags & 0x30000) != 0))
              {
                ImageIOLog("      scaled size: %g x %g\n", (v55 / v65), (v57 / v65));
                v55 /= v65;
                v57 /= v65;
                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("       subsampled: %d x %d\n", v55, v57);
                }
              }

              else
              {
                v55 /= v65;
                v57 /= v65;
              }
            }
          }
        }

        else
        {
          v59 = 2;
          if (Uint32ForKey > 3)
          {
            v59 = 4;
          }

          v60 = 1;
          if (Uint32ForKey > 3)
          {
            v60 = 2;
          }

          if (Uint32ForKey <= 7)
          {
            LOWORD(v58) = v59;
          }

          else
          {
            LOWORD(v58) = 8;
          }

          v61 = 3;
          if (Uint32ForKey <= 7)
          {
            v61 = v60;
          }

          v55 >>= v61;
          v57 >>= v61;
        }

LABEL_226:
        if (!v55 || !v57)
        {
LABEL_179:
          image_info = 0;
          if (!v41)
          {
            goto LABEL_66;
          }

          goto LABEL_180;
        }

        *(this + 166) = v58;
        *(this + 702) = 1;
        v66 = v115;
        if (v115 == 1380401696)
        {
          if (*(this + 369))
          {
            v67 = 5;
          }

          else
          {
            *(this + 702) = 0;
            v67 = 3;
          }
        }

        else
        {
          v67 = 0;
        }

        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: handling ColorTransform\n", "initialize", 1931);
        }

        v68 = v66 == 1129142603;
        *(this + 701) = -1;
        if (!v110)
        {
LABEL_264:
          *(this + 128) = precision;
          *(this + 144) = precision;
          if (v66 == 1196573017)
          {
            v72 = 1;
          }

          else
          {
            v72 = 4;
          }

          *(this + 130) = v72;
          v73 = precision << (2 * (v66 != 1196573017));
          *(this + 129) = v73;
          *(this + 20) = v41;
          *(this + 85) = v66;
          *(this + 262) = v67;
          *(this + 263) = 0;
          *(this + 265) = 0;
          if (v66 == 1129142603)
          {
            v74 = ((precision + 7) >> 1) & 0xFFFC;
          }

          else
          {
            if (v66 != 1196573017)
            {
              if (precision == 16)
              {
                v88 = 4;
              }

              else
              {
                v88 = 3;
              }

              v89 = precision + 7;
              v90 = v55 * ((v89 >> 3) * v88);
              v31 = (v90 & 0xFFFFFFFF00000000) == 0;
              v91 = (v90 + 15) & 0xFFFFFFF0;
              if (!v31)
              {
                v91 = 0;
              }

              *(this + 63) = v91;
              *(this + 372) = 0;
              *(this + 374) = v68;
              if (v66 == 1380401696)
              {
                v92 = v55 * ((v89 >> 1) & 0xFFFC);
                v31 = (v92 & 0xFFFFFFFF00000000) == 0;
                v93 = (v92 + 15) & 0xFFFFFFF0;
                if (!v31)
                {
                  v93 = 0;
                }

                *(this + 63) = v93;
                *(this + 294) = v67;
                *(this + 295) = 0;
                *(this + 297) = 0;
                *(this + 144) = precision;
                *(this + 145) = v73;
                *(this + 146) = 4;
                *(this + 71) = v93;
                *(this + 378) = 1;
              }

LABEL_275:
              if (v106)
              {
                image_info = 0;
                v77 = 3;
                if (v66 == 1196573017)
                {
                  v77 = 1;
                }

                if (v77 > NumberOfComponents || NumberOfComponents > v77 + 1)
                {
                  goto LABEL_66;
                }
              }

              if ((gIIODebugFlags & 0x80000000) == 0)
              {
                *(this + 376) = 1;
              }

              *(this + 61) = v55;
              *(this + 62) = v57;
              *(this + 49) = 1;
              v78 = *(this + 157);
              *(this + 63) = *(this + 156);
              *(this + 64) = v78;
              chroma_subsampling = applejpeg_decode_get_chroma_subsampling();
              if (chroma_subsampling <= 4 && ((0x1Bu >> chroma_subsampling) & 1) != 0)
              {
                *(this + 91) = dword_186225A3C[chroma_subsampling];
              }

              v80 = IIODictionary::containsKey(v5, @"kCGImageSourceUseHardwareAcceleration");
              if (v80)
              {
                v82 = IIODictionary::getBoolForKey(v5, @"kCGImageSourceUseHardwareAcceleration");
                v84 = v82;
                if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v82, v83))
                {
                  v85 = "❌";
                  if (v84)
                  {
                    v85 = "✅";
                  }

                  ImageIOLog("••• UseHardwareAcceleration: %s  | %s:%d\n", v85, "initialize", 2128);
                }
              }

              else
              {
                if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v80, v81))
                {
                  ImageIOLog("••• UseHardwareAcceleration: not set  | %s:%d\n", "initialize", 2131);
                }

                v84 = 1;
              }

              if (v104)
              {
                if (v104 == 1)
                {
                  v84 = 1;
                }

                v86 = 0;
                v87 = *(this + 701);
                if (v87 != 255 || *(this + 158) == 1 || !v84)
                {
                  goto LABEL_313;
                }

                v86 = IIOHardwareDecodingEnabledFlag();
              }

              else
              {
                v86 = 0;
              }

              v87 = *(this + 701);
LABEL_313:
              *(this + 520) = v86;
              v94 = *(this + 61) * ((*(this + 128) + 7) >> 3 << (2 * (*(this + 129) != 8)));
              v31 = (v94 & 0xFFFFFFFF00000000) == 0;
              v95 = (v94 + 15) & 0xFFFFFFF0;
              if (!v31)
              {
                v95 = 0;
              }

              *(this + 71) = v95;
              v96 = (v87 == 255) & (v66 != 1129142603) & *(this + 369);
              v97 = 1;
              if (v96 == 1)
              {
                if (v86)
                {
                  v98 = 3;
                }

                else
                {
                  v98 = 4;
                }

                *(this + 473) = v98;
                v97 = 12;
              }

              *(this + 472) = 1;
              *(this + 204) = v97;
              v99 = *(this + 2);
              if (v99 && IIOImagePlus::sourceImageProvider(v99))
              {
                CGImageProviderSetProperty();
              }

              if ((gIIODebugFlags & 0x30000) != 0)
              {
                ImageIOLog("    %s:%d: useVersion3: %d\n", "initialize", 2207, v96);
              }

              goto LABEL_325;
            }

            v74 = (precision + 7) >> 3;
          }

          v75 = v55 * v74;
          if ((v75 & 0xFFFFFFFF00000000) != 0)
          {
            v76 = 0;
          }

          else
          {
            v76 = (v75 + 15) & 0xFFFFFFF0;
          }

          *(this + 63) = v76;
          *(this + 372) = 0;
          *(this + 374) = v68;
          goto LABEL_275;
        }

        if (v102 == 2)
        {
          if (v66 == 1129142603)
          {
            v68 = *(this + 697) ^ 1;
            if ((gIIODebugFlags & 0x8000300000) != 0)
            {
              if (*(this + 697))
              {
                v69 = "false";
              }

              else
              {
                v69 = "true";
              }

              ImageIOLog("COL           shouldInvert: %s\n", v69);
            }

            goto LABEL_257;
          }

          goto LABEL_256;
        }

        if (v102 == 1)
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            ImageIOLog("COL           shouldInvert: true\n");
          }

          goto LABEL_244;
        }

        if (v102)
        {
LABEL_257:
          if ((gIIODebugFlags & 0x8000000000) != 0)
          {
            v70 = *(this + 701);
            v71 = v70 > 2 ? "" : off_1E6F0B6B0[v70];
            ImageIOLog("COL           _aj._force_app14: %s\n", v71);
            if ((gIIODebugFlags & 0x8000300000) != 0)
            {
              ImageIOLog("COL              dimension: %d x %d\n", v55, v57);
              if ((gIIODebugFlags & 0x8000300000) != 0)
              {
                ImageIOLog("COL\n");
              }
            }
          }

          goto LABEL_264;
        }

        if (v66 == 1129142603)
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            ImageIOLog("COL           shouldInvert: true (icSigCmykData)\n");
          }

LABEL_244:
          v68 = 1;
          goto LABEL_257;
        }

        if (*(this + 697))
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            goto LABEL_255;
          }
        }

        else
        {
          *(this + 701) = 0;
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
LABEL_255:
            ImageIOLog("COL           shouldInvert: %s\n", "false");
          }
        }

LABEL_256:
        v68 = 0;
        goto LABEL_257;
      }

LABEL_147:
      v47 = 1;
      goto LABEL_148;
    }

    if (!AppleJPEGReadPlugin::readJFIFData(this, v109))
    {
      goto LABEL_325;
    }

    ExifData = AppleJPEGReadPlugin::readExifData(this, v5);
    XMPData = ExifData;
    if ((v7 | v105))
    {
      CGImageMetadataMerge(v108, ExifData, 0);
      if (!XMPData)
      {
LABEL_116:
        if (BoolForKey)
        {
          IIODictionary::removeObjectForKey(*(this + 7), @"kCGImageSourceAddMetadataFromPrimaryImage");
        }

        goto LABEL_118;
      }
    }

    else
    {
      if (ExifData)
      {
        CGImageMetadataMerge(v108, ExifData, v5);
        CFRelease(XMPData);
      }

      APP13 = AppleJPEGReadPlugin::readAPP13(this);
      if (APP13)
      {
        CGImageMetadataMerge(v108, APP13, v5);
        CFRelease(APP13);
      }

      XMPData = AppleJPEGReadPlugin::readXMPData(this, theData);
      if (!XMPData)
      {
        goto LABEL_116;
      }

      CGImageMetadataMerge(v108, XMPData, v5);
    }

    CFRelease(XMPData);
    goto LABEL_116;
  }

  if (v19 == 3)
  {
    if (*(this + 369) == 1)
    {
      _cg_jpeg_mem_term("initialize", 1493, "*** AppleJPEG returned APPLEJPEG_ERR_UNSUPPORTED falling back to libJPEG\n");
      IIONumber::IIONumber(&v111, 1279938631);
      IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
      IIONumber::~IIONumber(&v111);
      IIONumber::IIONumber(&v111, *v15);
      IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
      AppleJPEGReadPlugin::initialize(&v111);
      goto LABEL_65;
    }

    AppleJPEGReadPlugin::initialize();
    image_info = 3;
  }

  else
  {
    AppleJPEGReadPlugin::initialize(v19);
  }

LABEL_66:
  v23 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x1000000000) != 0)
  {
    v24 = "NO";
    if (*(this + 520))
    {
      v24 = "YES";
    }

    ImageIOLog("H   %s: image size: {%d, %d} rb: %d    subsample: %d    useHW: %s\n", "initialize", *(this + 61), *(this + 62), *(this + 63), *(this + 166), v24);
    v23 = gIIODebugFlags;
  }

  if ((*&v23 & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: returning err: %d\n", "initialize", 2215, image_info);
  }

  if (image_info)
  {
    kdebug_trace();
  }

  return image_info;
}

void sub_185E97480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_HardwareDecoderDefaultValue(uint64_t a1, uint64_t a2)
{
  if (IIO_HardwareDecoderDefaultValue::onceToken != -1)
  {
    IIO_HardwareDecoderDefaultValue_cold_1();
  }

  return IIO_HardwareDecoderDefaultValue::hwDecoderDefaultValue;
}

uint64_t IIOImageReadSession::seek(IIOImageReadSession *this, unint64_t a2, int a3)
{
  v4 = *(this + 4);
  if (!v4)
  {
    return -1;
  }

  Size = IIOImageRead::getSize(v4);
  if (a3)
  {
    if (a3 == 1)
    {
      a2 += *(this + 5);
    }

    else
    {
      v13 = -1;
      if (a3 != 2 || Size == -1)
      {
        return v13;
      }

      a2 += Size;
    }
  }

  if (Size != -1 && a2 > Size)
  {
    return -1;
  }

  v15 = *(this + 5);
  if (a2 < v15)
  {
    v15 = 0;
    *(this + 5) = 0;
  }

  if (a2 > v15)
  {
    IIOImageReadSession::skipBytes(this, a2 - v15, v8, v9, v10, v11, v12);
    v15 = *(this + 5);
  }

  if (v15 == a2)
  {
    return a2;
  }

  else
  {
    return -1;
  }
}

void *AppleJPEGReadPlugin::appleJPEGDecodeSetup(void *this)
{
  if (!this[66])
  {
    v1 = this;
    this[84] = this[3];
    this[85] = this[26];
    this[86] = this[61];
    this[69] = 0;
    this[67] = iio_jpeg_Malloc;
    this[68] = iio_jpeg_Free;
    applejpeg_get_api_number();
    this = applejpeg_decode_create();
    v1[66] = this;
    *(v1 + 703) = 0;
  }

  return this;
}

AppleJPEGReadPlugin *AppleJPEGReadPlugin::appleJPEGDecodeOpen(AppleJPEGReadPlugin *this)
{
  v8[2] = *MEMORY[0x1E69E9840];
  Size = *(this + 61);
  if (!Size)
  {
    Size = IIOImageReadSession::getSize(*(this + 3));
  }

  *(this + 76) = Size;
  *(this + 70) = iioReadCallback;
  *(this + 73) = iioRewindCallback;
  *(this + 72) = iioSkipCallback;
  *(this + 74) = this + 672;
  v3 = applejpeg_decode_open_file();
  v4 = v3;
  if (v3)
  {
    AppleJPEGReadPlugin::appleJPEGErrorString(v3, v3);
    _cg_jpeg_mem_term("appleJPEGDecodeOpen", 1326, "*** ERROR: applejpeg_decode_open_file returned: %d '%s'    (jpegOffset: %d   jpegSize: %d) fileSize: %ld\n");
    if (v4 == 4)
    {
      v8[0] = 0;
      v8[1] = 0;
      v5 = IIOImageReadSession::getSize(*(this + 3));
      if (v5 >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = v5;
      }

      IIOImageReadSession::getBytesAtOffset(*(this + 3), v8, 0, v6);
      IIODumpMemory(v8, v6);
    }
  }

  return v4;
}

uint64_t iioReadCallback(unsigned __int8 *a1, int a2, IIOImageReadSession **a3)
{
  if (!a2)
  {
    return 0;
  }

  LODWORD(result) = IIOImageReadSession::getBytes(*a3, a1, a2);
  if (result)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AppleJPEGReadPlugin::containsGainMap(IIO_Reader **this)
{
  v2 = IIO_Reader::minimumFileSize(this[3]);
  HasGainMap = IIO_Reader_AppleJPEG::HasGainMap(this[3], v3, v4);
  IIOImageReadSession::seek(this[3], v2, 0);
  return HasGainMap;
}

uint64_t AppleJPEGReadPlugin::readJFIFData(IIOImageReadSession **this, IIODictionary *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  *v17 = 0;
  *v18 = 0;
  if (!a2)
  {
    return 1;
  }

  v19[0] = 0;
  if (IIOImageReadSession::getBytesAtOffset(this[3], v19, 2, 8) != 8)
  {
    return 0;
  }

  v4 = 2;
  while (1)
  {
    v5 = __rev16(LOWORD(v19[0]));
    if (v5 != 0xFFFF)
    {
      break;
    }

    LODWORD(v6) = 0;
    --v4;
LABEL_9:
    v4 += v6 + 2;
    if (IIOImageReadSession::getBytesAtOffset(this[3], v19, v4, 8) != 8)
    {
      return 0;
    }
  }

  if (v5 == 65498)
  {
    return 1;
  }

  v6 = __rev16(WORD1(v19[0]));
  if (v5 != 65504)
  {
    goto LABEL_9;
  }

  if (v6 <= 0xF)
  {
    AppleJPEGReadPlugin::readJFIFData(v19, v6, &v14);
    return v14;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(this[3], v17, v4 + 4, 16);
  if (BytesAtOffset == v6)
  {
LABEL_16:
    LOWORD(v17[1]) = bswap32(LOWORD(v17[1])) >> 16;
    LOWORD(v18[0]) = bswap32(LOWORD(v18[0])) >> 16;
    HIWORD(v18[0]) = bswap32(HIWORD(v18[0])) >> 16;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&v14);
    IIONumber::IIONumber(v13, LOWORD(v17[1]));
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, BYTE2(v17[1]) >> 4);
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, BYTE2(v17[1]) & 0xF);
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIODictionary::setObjectForKeyGroup(a2, v15, @"JFIFVersion", @"{JFIF}");
    IIONumber::IIONumber(v13, LOWORD(v18[0]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"XDensity", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, HIWORD(v18[0]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"YDensity", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, HIBYTE(v17[1]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"DensityUnit", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    if (HIBYTE(v17[1]) == 2)
    {
      LOWORD(v9) = v18[0];
      *&v12 = v9 * 2.54;
      v10 = *&v12;
      LOWORD(v12) = HIWORD(v18[0]);
      v11 = v12 * 2.54;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      if (HIBYTE(v17[1]) == 1)
      {
        LOWORD(v9) = v18[0];
        v10 = v9;
        LOWORD(v9) = HIWORD(v18[0]);
        v11 = v9;
      }
    }

    if (ValidDPI(v10) && ValidDPI(v11))
    {
      IIONumber::IIONumber(v13, v10);
      IIODictionary::setObjectForKey(a2, v13, @"DPIWidth");
      IIONumber::~IIONumber(v13);
      IIONumber::IIONumber(v13, v11);
      IIODictionary::setObjectForKey(a2, v13, @"DPIHeight");
      IIONumber::~IIONumber(v13);
    }

    IIOArray::~IIOArray(&v14);
  }

  else
  {
    if (BytesAtOffset + 4 == v6)
    {
      _cg_jpeg_mem_term("readJFIFData", 485, "*** APP0 marker indicating depth/disparity...\n");
      goto LABEL_16;
    }

    AppleJPEGReadPlugin::readJFIFData();
  }

  return 1;
}

void sub_185E97BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIONumber::~IIONumber(&a9);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

CGImageMetadata *AppleJPEGReadPlugin::readExifData(IIOImageReadSession **this, IIODictionary *a2)
{
  v29 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2000000000;
  v45 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v4 = 2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  while (2)
  {
    for (i = v4 + 10; ; ++i)
    {
      if (IIOImageReadSession::getBytesAtOffset(this[3], &v48, i - 10, 4) != 4)
      {
        goto LABEL_21;
      }

      v6 = bswap32(v48) >> 16;
      if (v6 != 0xFFFF)
      {
        break;
      }
    }

    if (v6 == 65498)
    {
      goto LABEL_21;
    }

    v7 = __rev16(HIWORD(v48));
    if (v6 == 65504)
    {
      v29 = 1;
      goto LABEL_14;
    }

    if (v6 != 65505 || v7 < 0xB)
    {
      goto LABEL_14;
    }

    if (IIOImageReadSession::getBytesAtOffset(this[3], &v46, i - 6, 6) != 6)
    {
LABEL_21:
      Mutable = 0;
      goto LABEL_22;
    }

    if (v46 ^ 0x66697845 | v47)
    {
LABEL_14:
      v4 = i + v7 - 8;
      continue;
    }

    break;
  }

  if (v7 < 0x15)
  {
    goto LABEL_21;
  }

  v8 = IIOMetadataFlagsFromImageSourceOptions(a2);
  v9 = malloc_type_malloc(v7 - 6, 0x100004077774924uLL);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (IIOImageReadSession::getBytesAtOffset(this[3], v9, i, v7 - 6) != v7 - 6)
  {
    free(v9);
    goto LABEL_21;
  }

  if (v8)
  {
    Mutable = CGImageMetadataCreateMutable();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN19AppleJPEGReadPlugin12readExifDataEP13IIODictionarybb_block_invoke;
    v34[3] = &unk_1E6F0B5D8;
    v34[8] = Mutable;
    v34[9] = i - 10;
    v35 = v8;
    v34[4] = v44;
    v34[5] = &v40;
    v34[6] = &v36;
    v34[7] = this;
    EnumerateExifDataUsingBlock(v9, v7 - 6, v34);
    if (v41[3] && *(v37 + 6))
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      IIOScanner::IIOScanner(v32, v9, v7 - 6, 0);
      v22 = v41[3];
      if (v22 - IIOScanner::seek(v32, v22 - i) == i && IIOScanner::getVal16(v32) == 65496 && !v33)
      {
        while (1)
        {
          Val16 = IIOScanner::getVal16(v32);
          v24 = IIOScanner::getVal16(v32);
          if (Val16 == 65472)
          {
            break;
          }

          IIOScanner::skip(v32, v24 - 2);
          if (Val16 == 65498 || v33)
          {
            goto LABEL_37;
          }
        }

        IIOScanner::skip(v32, 1uLL);
        v25 = IIOScanner::getVal16(v32);
        v26 = IIOScanner::getVal16(v32);
        IIONumber::IIONumber(v30, v26);
        v27 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormatWidth", kCGImageMetadataTypeDefault, value);
        IIONumber::~IIONumber(v30);
        if (v27)
        {
          CGImageMetadataSetTagWithPath(Mutable, 0, @"iio:JPEGInterchangeFormatWidth", v27);
          CFRelease(v27);
        }

        IIONumber::IIONumber(v30, v25);
        v28 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormatHeight", kCGImageMetadataTypeDefault, value);
        IIONumber::~IIONumber(v30);
        if (v28)
        {
          CGImageMetadataSetTagWithPath(Mutable, 0, @"iio:JPEGInterchangeFormatHeight", v28);
          CFRelease(v28);
        }
      }

LABEL_37:
      IIOScanner::~IIOScanner(v32);
    }
  }

  else
  {
    Mutable = CreateMetadataFromDatabuffer(v9, v7 - 6, v8);
  }

  free(v9);
LABEL_22:
  if (v29)
  {
    TopLevelTag = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
    v12 = TopLevelTag;
    if (TopLevelTag)
    {
      v13 = CGImageMetadataTagGetValue(TopLevelTag);
      IntValue = CFStringGetIntValue(v13);
      v41[3] = IntValue;
      LOWORD(v32[0]) = 0;
      IIOImageReadSession::getBytesAtOffset(this[3], v32, IntValue, 2);
      if (LOWORD(v32[0]) != 55551 && LOWORD(v32[0]) != 65496)
      {
        v15 = v41[3] + 18;
        v41[3] = v15;
        IIOImageReadSession::getBytesAtOffset(this[3], v32, v15, 2);
        if (LOWORD(v32[0]) == 65496 || LOWORD(v32[0]) == 55551)
        {
          v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%lld", v41[3]);
          if (v16)
          {
            CGImageMetadataTagSetValue(v12, v16);
            CFRelease(v16);
          }
        }

        else
        {
          v17 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
          CGImageMetadataRemoveTag(Mutable, v17);
          v18 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatLength");
          CGImageMetadataRemoveTag(Mutable, v18);
          v19 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatWidth");
          CGImageMetadataRemoveTag(Mutable, v19);
          v20 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatHeight");
          CGImageMetadataRemoveTag(Mutable, v20);
        }
      }
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
  return Mutable;
}

void sub_185E98224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  __cxa_begin_catch(a1);
  CGImageMetadataRemoveTagWithPath(v7, 0, @"iio:JPEGInterchangeFormatWidth");
  CGImageMetadataRemoveTagWithPath(v7, 0, @"iio:JPEGInterchangeFormatHeight");
  __cxa_end_catch();
  JUMPOUT(0x185E980D4);
}

void sub_185E98294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x185E982CCLL);
}

void sub_185E982C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

_DWORD *AppleJPEGReadPlugin::readICCData(IIOImageReadSession **this, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int *a5)
{
  v8 = a3 + 2;
  *a4 = 0;
  if (a2 && v8 > a2)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v26 = 0;
  while (IIOImageReadSession::getBytesAtOffset(this[3], &v26, v8, 4) == 4)
  {
    v11 = bswap32(v26) >> 16;
    v12 = bswap32(HIWORD(v26)) >> 16;
    if ((v11 + 64) > 2u)
    {
      if (v11 != 65506)
      {
        if (v11 == 65498)
        {
          break;
        }

        goto LABEL_32;
      }

      if (v12 < 0x10)
      {
        break;
      }

      v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
      if (IIOImageReadSession::getBytesAtOffset(this[3], v14, v8 + 4, v12) != v12)
      {
        if (!v14)
        {
          break;
        }

LABEL_36:
        free(v14);
        break;
      }

      if (*v14 == 0x464F52505F434349 && *(v14 + 3) == 0x454C49464F52505FLL)
      {
        v18 = v10;
        v25 = a5;
        v19 = v12 - 16;
        if (v9)
        {
          v20 = v19 + v18;
          v9 = reallocf(v9, v19 + v18);
        }

        else
        {
          v9 = malloc_type_malloc(v12 - 16, 0x100004077774924uLL);
          v20 = v19 + v18;
        }

        memcpy(v9 + v18, v14 + 14, v12 - 16);
        v10 = v20;
        a5 = v25;
      }

      goto LABEL_31;
    }

    if (v12 < 6)
    {
      goto LABEL_32;
    }

    v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (IIOImageReadSession::getBytesAtOffset(this[3], v13, v8 + 4, v12) != v12)
    {
      goto LABEL_36;
    }

    v15 = *(v14 + 5);
    switch(v15)
    {
      case 1:
        v16 = 1196573017;
        goto LABEL_28;
      case 4:
        v16 = 1129142603;
        goto LABEL_28;
      case 3:
        v16 = 1380401696;
LABEL_28:
        *a5 = v16;
        break;
    }

LABEL_31:
    free(v14);
LABEL_32:
    v8 += v12 + 2;
    if (a2 && v8 > a2)
    {
      break;
    }
  }

  if (v9)
  {
    *a4 = v10;
    if (v10 >= 0x80)
    {
      v21 = v9[9];
      v22 = bswap32(*v9);
      if (v10 < v22)
      {
        LogError("readICCData", 1273, "Embedded profile header length is greater than data length.\n");
      }

      if (v21 == 1886610273)
      {
        if (*a4 >= v22)
        {
          return v9;
        }
      }

      else
      {
        LogError("readICCData", 1275, "Embedded profile signature is not valid.\n");
      }
    }

    free(v9);
    v9 = 0;
    *a4 = 0;
  }

  return v9;
}

CGColorSpaceRef createColorSpaceFromMetadata(const void *a1, int a2, _BYTE *a3)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0.0;
  v20 = 0.0;
  v25 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, @"http://cipa.jp/exif/1.0/", @"Gamma");
  Source = CGImageSourceGetSource(TopLevelTag);
  v8 = 0.0;
  if (Source)
  {
    v9 = Source;
    Source = Source[1].data;
    if (Source)
    {
      if (LODWORD(v9[1].info) == 1)
      {
        LODWORD(Source) = GetDoubleFromPropertyValue(Source, &v25);
        v8 = v25;
      }

      else
      {
        LODWORD(Source) = 0;
      }
    }
  }

  if ((a2 & ~Source) != 0)
  {
    v10 = 2.2;
  }

  else
  {
    v10 = v8;
  }

  if ((Source & 1) == 0 && !a2)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"WhitePoint", 0, &v24 + 1);
  if (!v11)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"WhitePoint", 1u, &v24);
  if (!v12)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 0, &v23 + 1);
  if (!v13)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 1u, &v23);
  if (!v14)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 2u, &v22 + 1);
  if (!v15)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 3u, &v22);
  if (!v16)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 4u, &v21);
  if (!v17)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 5u, &v20);
  if (!v18)
  {
    return 0;
  }

  if (!IIOChromaticitiesMatchAdobeRGB(*(&v24 + 1), *&v24, *(&v23 + 1), *&v23, *(&v22 + 1), *&v22, v21, v20, v10))
  {
    return CGColorSpaceCreateCalRGB(*(&v24 + 1), *&v24, *(&v23 + 1), *&v23, *(&v22 + 1), *&v22, v21, v20, v10);
  }

  if (a3)
  {
    *a3 = 1;
  }

  return CGColorSpaceCreateWithName(*MEMORY[0x1E695F0A0]);
}

float CGImageMetadataGetFloatAtIndex(const CGImageMetadata *a1, const __CFString *a2, const __CFString *a3, unsigned int a4, float *a5)
{
  v12 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, a2, a3);
  Source = CGImageSourceGetSource(TopLevelTag);
  if (Source)
  {
    v10 = *(Source + 48);
    if (v10)
    {
      if (*(Source + 40) == 3 && CFArrayGetCount(*(Source + 48)) > a4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, a4);
        if (ValueAtIndex)
        {
          GetDoubleFromPropertyValue(ValueAtIndex, &v12);
        }
      }
    }
  }

  if (a5)
  {
    result = v12;
    *a5 = result;
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  switch(v2)
  {
    case 123:
      return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2, IIO_Reader::CopyImageBlockSetProc, IIO_Reader::CopyIOSurfaceProc, IIO_Reader::CopyIOSurfaceSetProc, 0);
    case 12:
      return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
    case 1:
      return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t IIO_Reader_AppleJPEG::compareOptions(IIO_Reader_AppleJPEG *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22, a2);
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v22, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v21, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Uint32ForKey;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == v8 && (BoolForKey = IIODictionary::getBoolForKey(v22, @"kCGImageSourceUseCoreImage"), BoolForKey == IIODictionary::getBoolForKey(v21, @"kCGImageSourceUseCoreImage")) && (ObjectForKey = IIODictionary::getObjectForKey(v22, @"kCGImageSourceXMPSidecar"), v11 = IIODictionary::getObjectForKey(v21, @"kCGImageSourceXMPSidecar"), (ObjectForKey != 0) == (v11 != 0)) && (!ObjectForKey || !v11 || CFEqual(ObjectForKey, v11)) && (v12 = IIOSkipMetadata(v22), IIOSkipMetadata(v21) & 1 | ((v12 & 1) == 0)) && (v13 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceAddJPEGQualityInformation"), v13 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceAddJPEGQualityInformation")) && (v14 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceAddThumbnailInformation"), v14 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceAddThumbnailInformation")) && (v15 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceUseHardwareAcceleration"), v15 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceUseHardwareAcceleration")))
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v19 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value && v19)
    {
      v20 = CFStringCompare(Value, v19, 0) == kCFCompareEqualTo;
    }

    else
    {
      v20 = (Value | v19) == 0;
    }

    v16 = v20;
  }

  else
  {
    v16 = 0;
  }

  IIODictionary::~IIODictionary(v21);
  IIODictionary::~IIODictionary(v22);
  return v16;
}

void sub_185E98B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void png_handle_gAMA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v8 & 6) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v9 = "out of place";
LABEL_9:

    png_chunk_benign_error(a1, v9);
    return;
  }

  if (a3 != 4)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v9 = "invalid";
    goto LABEL_9;
  }

  v17 = 0;
  png_crc_read(a1, &v17, 4u);
  if (!png_crc_finish(a1, 0, v11, v12, v13, v14, v15))
  {
    if (v17 << 24 < 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = _byteswap_ulong(v17);
    }

    if (a1 + 1200 > (a1 + 1276))
    {
      __break(0x5519u);
    }

    else
    {
      png_colorspace_set_gamma(a1, a1 + 1200, v16);
      png_colorspace_sync(a1, a2);
    }
  }
}

uint64_t png_colorspace_set_gamma(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 - 625000001) < 0xDABF41CF)
  {
    v4 = *(a2 + 74);
    v5 = "gamma value out of range";
LABEL_6:
    *(a2 + 74) = v4 | 0x8000;

    return png_chunk_report(result, v5, 1);
  }

  v4 = *(a2 + 74);
  if ((*(result + 77) & 0x80) != 0 && (v4 & 8) != 0)
  {
    v5 = "duplicate";
    goto LABEL_6;
  }

  if ((*(a2 + 74) & 0x8000) == 0)
  {
    result = png_colorspace_check_gamma(result, a2, a3, 1);
    if (result)
    {
      *a2 = a3;
      *(a2 + 74) = v4 | 9;
    }
  }

  return result;
}

uint64_t __IIOXPCLog_block_invoke(uint64_t a1, uint64_t a2)
{
  result = IIO_OSAppleInternalBuild(a1, a2);
  if (result)
  {
    IIOXPCLog::logXPC = (gIIODebugFlags & 0xC0000) != 0;
  }

  return result;
}

void sub_185E98E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__IOSurface *IIOImageProviderInfo::CopyIOSurface(uint64x2_t **a1, const void *a2, const __CFDictionary *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CGImageProviderGetBitmapInfo();
    v6 = *a1;
    IIOPackCopyCallbackInfo(*a1, a3);
    if (v6)
    {
      v7 = v6[8].i32[2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = v7;
  v9 = kdebug_trace();
  IIOInitDebugFlags(v9, v10);
  if (!a1)
  {
    goto LABEL_40;
  }

  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0;
    v11 = v8 >> 24;
    v12 = MEMORY[0x1E69E9830];
    v13 = (v8 >> 24) <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000 : __maskrune(v8 >> 24, 0x40000uLL);
    v14 = v13 ? v11 : 46;
    v15 = v8 << 8 >> 24;
    v16 = v15 <= 0x7F ? *(v12 + 4 * v15 + 60) & 0x40000 : __maskrune(v8 << 8 >> 24, 0x40000uLL);
    v17 = v16 ? v15 : 46;
    v18 = v8 >> 8;
    v19 = v18 <= 0x7F ? *(v12 + 4 * v18 + 60) & 0x40000 : __maskrune(v8 >> 8, 0x40000uLL);
    v20 = v19 ? v18 : 46;
    v21 = v8 <= 0x7F ? *(v12 + 4 * v8 + 60) & 0x40000 : __maskrune(v8, 0x40000uLL);
    v22 = v21 ? v8 : 46;
    snprintf(__str, 8uLL, "%c%c%c%c", v14, v17, v20, v22);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CopyIOSurface", a2, __str, -1, a3);
    }
  }

  if (v6 && (v23 = IIOImageProviderInfo::copyIOSurface(v6, a2, a3), (v24 = v23) != 0))
  {
    valuePtr = 0.0;
    v25 = IOSurfaceCopyValue(v23, @"IOSurfaceContentHeadroom");
    v26 = v25;
    if (v25)
    {
      v27 = CFGetTypeID(v25);
      if (v27 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v26, kCFNumberFloatType, &valuePtr);
      }

      CFRelease(v26);
    }

    else
    {
      CGImageProviderGetContentHeadroom();
      v29 = v28;
      valuePtr = v28;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  %s - updating <IOSurface: %p>  headroom: %g\n", "CopyIOSurface", v24, v28);
      }

      IIONumber::IIONumber(__str, v29);
      IOSurfaceSetValue(v24, @"IOSurfaceContentHeadroom", value[0]);
      IIONumber::~IIONumber(__str);
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__str = 0u;
    *value = 0u;
    if (!IOSurfaceGetBulkAttachments() && !WORD5(v39))
    {
      ContentAverageLightLevelNits = CGImageProviderGetContentAverageLightLevelNits();
      WORD5(v39) = ContentAverageLightLevelNits;
      if (ContentAverageLightLevelNits)
      {
        v31 = WORD4(v39);
        if (!WORD4(v39))
        {
          v31 = vcvtps_s32_f32(valuePtr * 203.0);
          WORD4(v39) = v31;
        }

        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  %s - updating <IOSurface: %p>  maxContentLightLevel: %d, maxFrameAverageLightLevel: %d\n", "CopyIOSurface", v24, v31, ContentAverageLightLevelNits);
        }

        if (IOSurfaceSetBulkAttachments2())
        {
          _cg_jpeg_mem_term("CopyIOSurface", 2778, "*** ERROR: IOSurfaceSetBulkAttachments2 failed [%ld]\n");
        }
      }
    }

    IOSurfaceGetWidth(v24);
    IOSurfaceGetHeight(v24);
    IOSurfaceGetPixelFormat(v24);
  }

  else
  {
LABEL_40:
    kdebug_trace();
    v24 = 0;
  }

  kdebug_trace();
  return v24;
}

void sub_185E99304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGReadPlugin::copyIOSurfaceImp(uint64_t a1, int a2, __CFDictionary *a3, void *a4)
{
  v39[0] = 0;
  memset(v38, 0, sizeof(v38));
  IIODictionary::IIODictionary(v38, a3);
  if (*(a1 + 24))
  {
    IIO_LoadHEIFSymbols();
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = IIOImageReadSession::mapData(v6);
    }

    else
    {
      v7 = 0;
    }

    v37 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = gFunc_CMPhotoDecompressionSessionCreate(*MEMORY[0x1E695E480], 0, &v37);
    updated = v10;
    if (v10)
    {
      v11 = IIOCMErrorString(v10);
      LogError("copyIOSurfaceImp", 3782, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v11, updated);
    }

    else
    {
      cf = 0;
      v35 = 0;
      v34 = 0;
      Size = IIOImageReadSession::getSize(*(a1 + 24));
      v15 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v34, 1);
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 480);
        if (v17)
        {
          v18 = *(a1 + 488);
          if (v18)
          {
            v19 = v18 + v17 > Size;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v17 = 0;
          }

          else
          {
            Size = *(a1 + 488);
          }

          v16 = v15 + v17;
        }

        v21 = CFDataCreateWithBytesNoCopy(v9, v16, Size, *MEMORY[0x1E695E498]);
        if (v21)
        {
          v22 = gFunc_CMPhotoDecompressionSessionCreateContainer(v37, 0, v21, &v35, &cf);
          updated = v22;
          if (v22)
          {
            IIOCMErrorString(v22);
            _cg_jpeg_mem_term("copyIOSurfaceImp", 3821, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            IIODictionary::IIODictionary(&v31);
            Uint32ForKey = IIODictionary::getUint32ForKey(v38, @"kCGImageSurfaceFormatRequest");
            v24 = *(a1 + 340);
            if (v24 == 1196573017)
            {
              v25 = 1278226488;
            }

            else if (v24 == 1380401696)
            {
              v25 = 875704422;
              if (!*(a1 + 700))
              {
                if (*(a1 + 437))
                {
                  v25 = 1380401729;
                }

                else
                {
                  v25 = 1111970369;
                }
              }

              if (Uint32ForKey == 875704422 || Uint32ForKey == 1380401729 || Uint32ForKey == 1111970369)
              {
                v25 = Uint32ForKey;
              }
            }

            else
            {
              v25 = 0;
            }

            IIONumber::IIONumber(v30, v25);
            IIODictionary::setObjectForKey(&v31, v30, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
            IIONumber::~IIONumber(v30);
            IIODictionary::setObjectForKey(&v31, *MEMORY[0x1E695E4C0], *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
            if (*(a1 + 308) <= *(a1 + 312))
            {
              v26 = *(a1 + 312);
            }

            else
            {
              v26 = *(a1 + 308);
            }

            IIONumber::IIONumber(v30, v26);
            IIODictionary::setObjectForKey(&v31, v30, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
            IIONumber::~IIONumber(v30);
            IIONumber::IIONumber(v30, 1);
            IIODictionary::setObjectForKey(&v31, v30, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
            IIONumber::~IIONumber(v30);
            if (*(a1 + 232) == 2 && *(a1 + 476) != 1920231541)
            {
              ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(cf, 0, 0, v32, 1, v39);
            }

            else
            {
              ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, 0, v32, 1, v39);
            }

            updated = ThumbnailImageForIndex;
            if (ThumbnailImageForIndex)
            {
              IIOCMErrorString(ThumbnailImageForIndex);
              _cg_jpeg_mem_term("copyIOSurfaceImp", 3881, "*** CoSurfaceMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
              if ((v25 << 8 >> 24) > 0x7F)
              {
                __maskrune(v25 << 8 >> 24, 0x40000uLL);
              }

              if ((v25 >> 8) > 0x7F)
              {
                __maskrune(v25 >> 8, 0x40000uLL);
              }

              v25 = v25;
              if (v25 > 0x7F)
              {
                __maskrune(v25, 0x40000uLL);
              }

              _cg_jpeg_mem_term("copyIOSurfaceImp", 3882, "    outputPixelFormat: %c%c%c%c\n");
              _cg_jpeg_mem_term(v32, 4, "cmPhotoContainer");
            }

            else
            {
              if (gFunc_CMPhotoDecompressionSessionDetachSurface)
              {
                v28 = gFunc_CMPhotoDecompressionSessionDetachSurface(v37, v39[0]);
                if (v28)
                {
                  IIOCMErrorString(v28);
                  _cg_jpeg_mem_term("copyIOSurfaceImp", 3894, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n");
                }
              }

              updated = IIO_UpdateIOSurfaceOwnershipIdentity(v39[0]);
            }

            CFRelease(cf);
            IIODictionary::~IIODictionary(&v31);
          }
        }

        else
        {
          updated = 0;
        }

        gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v37, 0, 0);
        CFRelease(v37);
        if (v21)
        {
          CFRelease(v21);
        }

        if (v34)
        {
          v29 = *(a1 + 24);
          if (v29)
          {
            IIOImageReadSession::releaseBytePointer(v29, v34);
          }
        }
      }

      else
      {
        LogError("copyIOSurfaceImp", 3800, "retainBytePointer failed\n");
        updated = 0;
      }
    }

    if (v7)
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        IIOImageReadSession::unmapData(v12);
      }
    }

    if (a4)
    {
      *a4 = v39[0];
    }
  }

  else
  {
    updated = 4294967246;
  }

  IIODictionary::~IIODictionary(v38);
  return updated;
}

void sub_185E99900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__IOSurface *IIOImageProviderInfo::copyIOSurface(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog("\n");
    ImageIOLog("*** copyIOSurface *** %p\n", a2);
    v5 = gIIODebugFlags;
  }

  if ((v5 & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
  }

  if (!*(a1 + 232))
  {
    v15 = gIIODebugFlags;
    if ((gIIODebugFlags & 0x400000000000) == 0)
    {
      v16 = 0;
      goto LABEL_30;
    }

LABEL_29:
    ImageIOLog("    copyIOSurface - IOSurface = NULL\n");
    v16 = 0;
    v15 = gIIODebugFlags;
LABEL_30:
    if (v16 || (v15 & 0x800000000000) == 0)
    {
      return v16;
    }

    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "copyIOSurface", 2478, "returned ioSurface is NULL\n");
    return 0;
  }

  v7 = *(a1 + 120);
  if (!v7)
  {
    v8 = 0;
LABEL_16:
    LogFault("copyIOSurface", 2427, "header '%p' is not a CFDictionary...\n", v8);
    return 0;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_16;
  }

  v9 = CFGetTypeID(*v7);
  if (v9 != CFDictionaryGetTypeID())
  {
    goto LABEL_16;
  }

  pthread_mutex_lock((a1 + 152));
  v10 = *MEMORY[0x1E695E4D0];
  if (v10 == CFDictionaryGetValue(v8, @"kImageIOInfoHeader_pluginHandlesReMapping") || (Value = CFDictionaryGetValue(v8, @"kImageIOInfoHeader_session")) == 0)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    Source = CGImageSourceGetSource(Value);
    v13 = Source;
    if (Source)
    {
      v14 = IIOImageReadSession::mapData(Source);
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = (*(a1 + 232))(*(a1 + 120), *(a1 + 16), a3);
  if (v16 && (gIIODebugFlags & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
    IIOImageProviderInfo::logSurfaceDecodingTime(a1, v16);
  }

  v17 = !v14;
  if (!v13)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    IIOImageReadSession::unmapData(v13);
  }

  pthread_mutex_unlock((a1 + 152));
  v15 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x400000000000) == 0)
  {
    goto LABEL_30;
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  Width = IOSurfaceGetWidth(v16);
  Height = IOSurfaceGetHeight(v16);
  BytesPerRow = IOSurfaceGetBytesPerRow(v16);
  PixelFormat = IOSurfaceGetPixelFormat(v16);
  v22 = PixelFormat;
  v23 = PixelFormat >> 24;
  v24 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v25 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
  }

  else
  {
    v25 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = 46;
  }

  v28 = (v22 << 8) >> 24;
  if (v28 <= 0x7F)
  {
    v29 = *(v24 + 4 * v28 + 60) & 0x40000;
  }

  else
  {
    v29 = __maskrune((v22 << 8) >> 24, 0x40000uLL);
  }

  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 46;
  }

  LODWORD(v31) = v22 >> 8;
  if (v31 <= 0x7F)
  {
    v32 = *(v24 + 4 * v31 + 60) & 0x40000;
  }

  else
  {
    v32 = __maskrune(v22 >> 8, 0x40000uLL);
  }

  if (v32)
  {
    v31 = v31;
  }

  else
  {
    v31 = 46;
  }

  v22 = v22;
  if (v22 <= 0x7F)
  {
    v33 = *(v24 + 4 * v22 + 60) & 0x40000;
  }

  else
  {
    v33 = __maskrune(v22, 0x40000uLL);
  }

  if (v33)
  {
    v34 = v22;
  }

  else
  {
    v34 = 46;
  }

  ImageIOLog("    copyIOSurface - <IOSurface:%p> '%c%c%c%c'  {%ld, %ld} rb: %ld\n", v16, v27, v30, v31, v34, Width, Height, BytesPerRow);
  return v16;
}

IOSurfaceRef IIO_Reader::CopyIOSurfaceProc(uint64_t a1, uint64_t a2, const void *a3)
{
  SurfaceWithFormat = 0;
  v6 = *(a1 + 8);
  if ((*(*v6 + 80))(v6, a3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = (*(*v6 + 32))(v6);
  v8 = *(v6 + 55);
  v9 = v8 >> 24;
  if ((v8 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v9, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v10)
  {
    v11 = (v8 >> 24);
  }

  else
  {
    v11 = 46;
  }

  v12 = v8 << 8 >> 24;
  if (v12 <= 0x7F)
  {
    v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v12, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v13)
  {
    v14 = (v8 << 8 >> 24);
  }

  else
  {
    v14 = 46;
  }

  v15 = v8 >> 8;
  if (v15 <= 0x7F)
  {
    v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v16 = __maskrune(v15, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v16)
  {
    v17 = (v8 >> 8);
  }

  else
  {
    v17 = 46;
  }

  if (v8 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v18 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v8, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = *(v6 + 220);
LABEL_25:
  v45 = v18;
  _cg_jpeg_mem_term("CopyIOSurfaceProc", 1609, "*** IIO_Reader::CopyIOSurfaceProc - using new '%c%c%c%c'- callDecodeImage [kIIOImageType_IOSurface]\n");
  CGImageProviderGetSize();
  v20 = v19;
  v22 = v21;
  if (!v7 || (v23 = (*(*v6 + 16))(v6), ColorSpace = CGImageProviderGetColorSpace(), (SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v23, v20, v22, ColorSpace)) != 0))
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v25 = IIOReadPlugin::index(v6);
    IIODecodeParameter::IIODecodeParameter(v46, a1, a2, v25, a3, 0.0, 0.0, v20, v22, v20, v22);
    v26 = IIOReadPlugin::callDecodeImage(v6, v46, 1, &SurfaceWithFormat, 0, 0);
    if (v26 == -1400)
    {
      ImageIOLog("‼️ retrying 'decodeImage' (ImageIOXPCService crashed?)\n", v11, v14, v17, v45);
      v27 = IIOReadPlugin::callDecodeImage(v6, v46, 1, &SurfaceWithFormat, 0, 0);
      v26 = v27;
      v28 = "❌";
      if (!v27)
      {
        v28 = "✅";
      }

      ImageIOLog("%s retrying 'decodeImage'  err: %d\n", v28, v27);
    }

    if (!v26)
    {
      goto LABEL_68;
    }

    if (v26 != -56)
    {
LABEL_59:
      v40 = *(v6 + 55);
      if ((v40 >> 24) > 0x7F)
      {
        __maskrune(v40 >> 24, 0x40000uLL);
        v40 = *(v6 + 55);
      }

      v41 = v40 << 8 >> 24;
      if (v41 > 0x7F)
      {
        __maskrune(v41, 0x40000uLL);
        v40 = *(v6 + 55);
      }

      v42 = v40 >> 8;
      if (v42 > 0x7F)
      {
        __maskrune(v42, 0x40000uLL);
        v40 = *(v6 + 55);
      }

      if (v40 > 0x7F)
      {
        __maskrune(v40, 0x40000uLL);
      }

      _cg_jpeg_mem_term("CopyIOSurfaceProc", 1636, "*** ERROR: '%c%c%c%c' callDecodeImage failed [%d]\n");
LABEL_68:
      if ((*(*v6 + 272))(v6))
      {
        IIOReadPlugin::debugWriteIOSurface(v6, SurfaceWithFormat);
      }

      (*(*v6 + 88))(v6);
      IIODecodeParameter::~IIODecodeParameter(v46);
      result = SurfaceWithFormat;
      if ((gIIODebugFlags & 0x800000000000) != 0 && !SurfaceWithFormat)
      {
        ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CopyIOSurfaceProc", 1649, "could not create IOSurfaceRef");
        return SurfaceWithFormat;
      }

      return result;
    }

    v29 = *(v6 + 55);
    v30 = v29 >> 24;
    if ((v29 >> 24) <= 0x7F)
    {
      v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
    }

    else
    {
      v31 = __maskrune(v30, 0x40000uLL);
      v29 = *(v6 + 55);
    }

    if (v31)
    {
      v32 = (v29 >> 24);
    }

    else
    {
      v32 = 46;
    }

    v33 = v29 << 8 >> 24;
    if (v33 <= 0x7F)
    {
      v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
    }

    else
    {
      v34 = __maskrune(v33, 0x40000uLL);
      v29 = *(v6 + 55);
    }

    if (v34)
    {
      v35 = (v29 << 8 >> 24);
    }

    else
    {
      v35 = 46;
    }

    v36 = v29 >> 8;
    if (v36 <= 0x7F)
    {
      v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
    }

    else
    {
      v37 = __maskrune(v36, 0x40000uLL);
      v29 = *(v6 + 55);
    }

    if (v37)
    {
      v38 = (v29 >> 8);
    }

    else
    {
      v38 = 46;
    }

    if (v29 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000) != 0)
      {
        goto LABEL_55;
      }
    }

    else if (__maskrune(v29, 0x40000uLL))
    {
LABEL_55:
      v39 = *(v6 + 220);
LABEL_58:
      LogError("CopyIOSurfaceProc", 1633, "*** IIO_Reader::CopyIOSurfaceProc - '%c%c%c%c'- does not support 'callDecodeImage'\n", v32, v35, v38, v39);
      goto LABEL_59;
    }

    v39 = 46;
    goto LABEL_58;
  }

  if ((v23 >> 24) > 0x7F)
  {
    __maskrune(v23 >> 24, 0x40000uLL);
  }

  if ((v23 << 8 >> 24) > 0x7F)
  {
    __maskrune(v23 << 8 >> 24, 0x40000uLL);
  }

  if ((v23 >> 8) > 0x7F)
  {
    __maskrune(v23 >> 8, 0x40000uLL);
  }

  if (v23 > 0x7F)
  {
    __maskrune(v23, 0x40000uLL);
  }

  _cg_jpeg_mem_term("CopyIOSurfaceProc", 1617, "*** ERROR: IIO_CreateSurfaceWithFormat '%c%c%c%c'\n");
  return 0;
}

void sub_185E9A3E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_begin_catch(a1);
  *(v15 - 88) = 0;
  __cxa_end_catch();
  JUMPOUT(0x185E9A25CLL);
}

uint64_t IIO_UpdateIOSurfaceOwnershipIdentity(uint64_t a1)
{
  if (!IIO_XPCServer() || !IIO_GetIdentityToken())
  {
    return 0;
  }

  v1 = IOSurfaceSetOwnershipIdentity();
  if (v1)
  {
    _cg_jpeg_mem_term("IIO_UpdateIOSurfaceOwnershipIdentity", 279, "*** ERROR: IOSurfaceSetOwnershipIdentity failed: %d");
  }

  return v1;
}

uint64_t PNGReadPlugin::Read_user_chunkCgBI(uint64_t a1, void (**a2)(void), uint64_t a3)
{
  if (*(a1 + 36) == 1)
  {
    *(a1 + 35) = 0;
    *(a1 + 40) = 0;
    return 1;
  }

  else if (*(a3 + 16) == 4)
  {
    v6 = *(a3 + 8);
    v7 = *v6 >> 4;
    v8 = v6[3] & 0x1F;
    if (*(a1 + 72) == 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 == 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 & 0xFFFFFFF | (v7 << 28);
    v12 = v11 | 0x2000;
    if (v11 == 268435458)
    {
      v13 = 805314562;
    }

    else
    {
      v13 = v11 | 0x2000;
    }

    *(a1 + 40) = v13;
    if ((v12 & 0x10000000) != 0)
    {
      if (*(_cg_png_get_zstream(a2) + 56))
      {
        _cg_png_error(a2, "Too late to change zlib mode.");
      }

      appleflags = _cg_png_get_appleflags(a2);
      _cg_png_set_appleflags(a2, appleflags | 1);
    }

    if ((v12 & 0x20000000) != 0)
    {
      v15 = _cg_png_get_appleflags(a2);
      _cg_png_set_appleflags(a2, v15 | 2);
    }

    result = 1;
    *(a1 + 35) = 1;
  }

  else
  {
    _cg_jpeg_mem_term("Read_user_chunkCgBI", 719, "*** ERROR: PNG ERROR: CgBI chunk encountered with incorrect length (%d)\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void png_handle_cHRM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v8 & 6) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v9 = "out of place";
  }

  else
  {
    if (a3 == 32)
    {
      v27 = 0u;
      v28 = 0u;
      png_crc_read(a1, &v27, 0x20u);
      if (png_crc_finish(a1, 0, v11, v12, v13, v14, v15))
      {
        return;
      }

      if (v27 << 24 < 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = _byteswap_ulong(v27);
      }

      v26[6] = v16;
      if (BYTE4(v27) << 24 < 0)
      {
        v17 = -1;
      }

      else
      {
        v17 = _byteswap_ulong(DWORD1(v27));
      }

      v26[7] = v17;
      if (BYTE8(v27) << 24 < 0)
      {
        v18 = -1;
      }

      else
      {
        v18 = _byteswap_ulong(DWORD2(v27));
      }

      v26[0] = v18;
      if (BYTE12(v27) << 24 < 0)
      {
        v19 = -1;
      }

      else
      {
        v19 = _byteswap_ulong(HIDWORD(v27));
      }

      v26[1] = v19;
      if (v28 << 24 < 0)
      {
        v20 = -1;
      }

      else
      {
        v20 = _byteswap_ulong(v28);
      }

      v26[2] = v20;
      if (BYTE4(v28) << 24 < 0)
      {
        v21 = -1;
      }

      else
      {
        v21 = _byteswap_ulong(DWORD1(v28));
      }

      v26[3] = v21;
      if (BYTE8(v28) << 24 < 0)
      {
        v22 = -1;
      }

      else
      {
        v22 = _byteswap_ulong(DWORD2(v28));
      }

      v26[4] = v22;
      if (BYTE12(v28) << 24 < 0)
      {
        v23 = -1;
      }

      else
      {
        v23 = _byteswap_ulong(HIDWORD(v28));
      }

      v26[5] = v23;
      if (v16 == -1 || v17 == -1 || v18 == -1 || v19 == -1 || v20 == -1 || v21 == -1 || v22 == -1 || v23 == -1)
      {
        v25 = "invalid values";
      }

      else
      {
        v24 = *(a1 + 1274);
        if (v24 < 0)
        {
          return;
        }

        if ((v24 & 0x10) == 0)
        {
          *(a1 + 1274) = v24 | 0x10;
          if (a1 + 1200 > (a1 + 1276))
          {
            __break(0x5519u);
          }

          else
          {
            png_colorspace_set_chromaticities(a1, a1 + 1200, v26, 1);
            png_colorspace_sync(a1, a2);
          }

          return;
        }

        *(a1 + 1274) = v24 | 0x8000;
        png_colorspace_sync(a1, a2);
        v25 = "duplicate";
      }

      png_chunk_benign_error(a1, v25);
      return;
    }

    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v9 = "invalid";
  }

  png_chunk_benign_error(a1, v9);
}

uint64_t png_colorspace_set_chromaticities(void (**a1)(void), uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = a4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8 = png_colorspace_check_xy(v10, a3);
  if (v8 == 1)
  {
    *(a2 + 74) |= 0x8000u;
    png_benign_error(a1, "invalid chromaticities");
    return 0;
  }

  else
  {
    if (v8)
    {
      *(a2 + 74) |= 0x8000u;
      _cg_png_error(a1, "internal error checking chromaticities");
    }

    return png_colorspace_set_xy_and_XYZ(a1, a2, a3, v10, v4);
  }
}

uint64_t png_xy_from_XYZ(int *a1, int *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v45 = v5;
  result = png_safe_add(&v45, v4, a2[2]);
  if (result)
  {
    return 1;
  }

  v7 = a1 + 1;
  if (a1 + 1 < a1)
  {
LABEL_75:
    __break(0x5519u);
    return result;
  }

  v8 = v45;
  if (v45)
  {
    if (v5)
    {
      v9 = floor(v5 * 100000.0 / v45 + 0.5);
      if (v9 > 2147483650.0 || v9 < -2147483650.0)
      {
        return 1;
      }

      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    *a1 = v11;
    if (v7 > a1 + 2)
    {
      goto LABEL_75;
    }

    v12 = a2[1];
    if (v12)
    {
      v13 = floor(v12 * 100000.0 / v8 + 0.5);
      if (v13 > 2147483650.0 || v13 < -2147483650.0)
      {
        return 1;
      }

      v12 = v13;
    }

    *v7 = v12;
    v16 = a2[3];
    v15 = a2[4];
    v45 = v16;
    result = png_safe_add(&v45, v15, a2[5]);
    if (!result)
    {
      v17 = a1 + 3;
      if (a1 + 2 > a1 + 3)
      {
        goto LABEL_75;
      }

      v18 = v45;
      if (v45)
      {
        if (v16)
        {
          v19 = floor(v16 * 100000.0 / v45 + 0.5);
          if (v19 > 2147483650.0 || v19 < -2147483650.0)
          {
            return 1;
          }

          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        a1[2] = v21;
        if (v17 > a1 + 4)
        {
          goto LABEL_75;
        }

        v22 = a2[4];
        if (v22)
        {
          v23 = floor(v22 * 100000.0 / v18 + 0.5);
          if (v23 > 2147483650.0 || v23 < -2147483650.0)
          {
            return 1;
          }

          v22 = v23;
        }

        *v17 = v22;
        v26 = a2[6];
        v25 = a2[7];
        v45 = v26;
        result = png_safe_add(&v45, v25, a2[8]);
        if (!result)
        {
          v27 = a1 + 5;
          if (a1 + 4 > a1 + 5)
          {
            goto LABEL_75;
          }

          v28 = v45;
          if (v45)
          {
            if (v26)
            {
              v29 = floor(v26 * 100000.0 / v45 + 0.5);
              if (v29 > 2147483650.0 || v29 < -2147483650.0)
              {
                return 1;
              }

              v31 = v29;
            }

            else
            {
              v31 = 0;
            }

            a1[4] = v31;
            if (v27 > a1 + 6)
            {
              goto LABEL_75;
            }

            v32 = a2[7];
            if (v32)
            {
              v33 = floor(v32 * 100000.0 / v28 + 0.5);
              if (v33 > 2147483650.0 || v33 < -2147483650.0)
              {
                return 1;
              }

              v35 = v33;
            }

            else
            {
              v35 = 0;
            }

            *v27 = v35;
            if (!png_safe_add(&v45, v8, v18))
            {
              v36 = v45;
              v45 = *a2;
              if (!png_safe_add(&v45, a2[3], a2[6]))
              {
                v37 = v45;
                v45 = a2[1];
                result = png_safe_add(&v45, a2[4], a2[7]);
                if (!result)
                {
                  v38 = a1 + 7;
                  if (a1 + 6 > a1 + 7)
                  {
                    goto LABEL_75;
                  }

                  if (v36)
                  {
                    v39 = v45;
                    if (v37)
                    {
                      v40 = floor(v37 * 100000.0 / v36 + 0.5);
                      if (v40 > 2147483650.0 || v40 < -2147483650.0)
                      {
                        return 1;
                      }

                      v42 = v40;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    a1[6] = v42;
                    if (v38 <= a1 + 8)
                    {
                      if (v39)
                      {
                        v43 = floor(v39 * 100000.0 / v36 + 0.5);
                        if (v43 > 2147483650.0 || v43 < -2147483650.0)
                        {
                          return 1;
                        }

                        v39 = v43;
                      }

                      result = 0;
                      *v38 = v39;
                      return result;
                    }

                    goto LABEL_75;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t png_colorspace_check_xy(int *a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 > 0x186A0)
  {
    return 1;
  }

  v5 = a2[1];
  result = 1;
  if ((v5 & 0x80000000) == 0 && v5 <= (100000 - v2))
  {
    v6 = a2[2];
    if (v6 <= 0x186A0)
    {
      v7 = a2[3];
      if ((v7 & 0x80000000) == 0 && v7 <= (100000 - v6))
      {
        v8 = a2[4];
        if (v8 <= 0x186A0)
        {
          v9 = a2[5];
          if ((v9 & 0x80000000) == 0 && v9 <= (100000 - v8))
          {
            v10 = a2[6];
            if (v10 <= 0x186A0)
            {
              v11 = a2[7];
              if (v11 >= 5 && v11 <= (100000 - v10))
              {
                v12 = 0;
                result = (v5 - v9);
                v13 = v6 - v8;
                if (v6 != v8 && v5 != v9)
                {
                  v14 = floor(v13 * result / 7.0 + 0.5);
                  if (v14 > 2147483650.0 || v14 < -2147483650.0)
                  {
                    return 2;
                  }

                  v12 = v14;
                }

                v16 = 0;
                v17 = v7 - v9;
                v18 = v2 - v8;
                if (v2 != v8 && v7 != v9)
                {
                  v19 = floor(v18 * v17 / 7.0 + 0.5);
                  if (v19 > 2147483650.0 || v19 < -2147483650.0)
                  {
                    return 2;
                  }

                  v16 = v19;
                }

                v21 = 0;
                v22 = v11 - v9;
                if (v6 != v8 && v11 != v9)
                {
                  v23 = floor(v13 * v22 / 7.0 + 0.5);
                  if (v23 > 2147483650.0 || v23 < -2147483650.0)
                  {
                    return 2;
                  }

                  v21 = v23;
                }

                v25 = 0;
                v26 = v10 - v8;
                if (v7 != v9 && v10 != v8)
                {
                  v27 = floor(v17 * v26 / 7.0 + 0.5);
                  if (v27 > 2147483650.0 || v27 < -2147483650.0)
                  {
                    return 2;
                  }

                  v25 = v27;
                }

                v29 = v21 - v25;
                if (v21 == v25)
                {
                  return 1;
                }

                v30 = v12 - v16;
                if (v12 == v16)
                {
                  v31 = 0;
                }

                else
                {
                  v32 = floor(v11 * v30 / v29 + 0.5);
                  if (v32 > 2147483650.0 || v32 < -2147483650.0)
                  {
                    return 1;
                  }

                  v31 = v32;
                }

                if (v31 <= v11)
                {
                  return 1;
                }

                v34 = 0;
                if (v5 != v9 && v10 != v8)
                {
                  v35 = floor(result * v26 / 7.0 + 0.5);
                  if (v35 > 2147483650.0 || v35 < -2147483650.0)
                  {
                    return 2;
                  }

                  v34 = v35;
                }

                v37 = 0;
                if (v2 == v8 || v11 == v9)
                {
LABEL_67:
                  if (v34 != v37)
                  {
                    if (v12 == v16)
                    {
                      v40 = 0;
                    }

                    else
                    {
                      v41 = floor(v11 * v30 / (v34 - v37) + 0.5);
                      if (v41 > 2147483650.0 || v41 < -2147483650.0)
                      {
                        return 1;
                      }

                      v40 = v41;
                    }

                    if (v40 <= v11)
                    {
                      return 1;
                    }

                    v43 = 1.0e10 / v11 + 0.5;
                    v44 = floor(v43);
                    v45 = v44 < -2147483650.0 || v44 > 2147483650.0;
                    v46 = vcvtmd_s64_f64(v43);
                    if (v45)
                    {
                      v46 = 0;
                    }

                    v47 = v31;
                    v48 = 1.0e10 / v31 + 0.5;
                    v49 = floor(v48);
                    v50 = v49 < -2147483650.0 || v49 > 2147483650.0;
                    v51 = vcvtmd_s64_f64(v48);
                    v52 = v40;
                    if (v50)
                    {
                      v53 = 0;
                    }

                    else
                    {
                      v53 = v51;
                    }

                    v54 = 1.0e10 / v52 + 0.5;
                    v55 = floor(v54);
                    v56 = v55 < -2147483650.0 || v55 > 2147483650.0;
                    v57 = vcvtmd_s64_f64(v54);
                    if (v56)
                    {
                      v57 = 0;
                    }

                    v58 = v46 - (v53 + v57);
                    if (v58 < 1)
                    {
                      return 1;
                    }

                    if (a1 + 1 < a1)
                    {
                      goto LABEL_160;
                    }

                    if (v2)
                    {
                      v59 = floor(v2 * 100000.0 / v47 + 0.5);
                      if (v59 > 2147483650.0 || v59 < -2147483650.0)
                      {
                        return 1;
                      }

                      v2 = v59;
                    }

                    *a1 = v2;
                    if (a1 + 1 > a1 + 2)
                    {
                      goto LABEL_160;
                    }

                    v61 = a2[1];
                    if (v61)
                    {
                      v62 = floor(v61 * 100000.0 / v47 + 0.5);
                      if (v62 > 2147483650.0 || v62 < -2147483650.0)
                      {
                        return 1;
                      }

                      v61 = v62;
                    }

                    a1[1] = v61;
                    if (a1 + 2 > a1 + 3)
                    {
                      goto LABEL_160;
                    }

                    v64 = 100000 - (a2[1] + *a2);
                    if (v64)
                    {
                      v65 = floor(v64 * 100000.0 / v47 + 0.5);
                      if (v65 > 2147483650.0 || v65 < -2147483650.0)
                      {
                        return 1;
                      }

                      v64 = v65;
                    }

                    a1[2] = v64;
                    if (a1 + 3 > a1 + 4)
                    {
                      goto LABEL_160;
                    }

                    v67 = a2[2];
                    if (v67)
                    {
                      v68 = floor(v67 * 100000.0 / v52 + 0.5);
                      if (v68 > 2147483650.0 || v68 < -2147483650.0)
                      {
                        return 1;
                      }

                      v67 = v68;
                    }

                    a1[3] = v67;
                    if (a1 + 4 > a1 + 5)
                    {
                      goto LABEL_160;
                    }

                    v70 = a2[3];
                    if (v70)
                    {
                      v71 = floor(v70 * 100000.0 / v52 + 0.5);
                      if (v71 > 2147483650.0 || v71 < -2147483650.0)
                      {
                        return 1;
                      }

                      v70 = v71;
                    }

                    a1[4] = v70;
                    if (a1 + 5 > a1 + 6)
                    {
                      goto LABEL_160;
                    }

                    v73 = 100000 - (a2[3] + a2[2]);
                    if (v73)
                    {
                      v74 = floor(v73 * 100000.0 / v52 + 0.5);
                      if (v74 > 2147483650.0 || v74 < -2147483650.0)
                      {
                        return 1;
                      }

                      v73 = v74;
                    }

                    a1[5] = v73;
                    if (a1 + 6 > a1 + 7)
                    {
                      goto LABEL_160;
                    }

                    v76 = a2[4];
                    if (v76)
                    {
                      v77 = floor(v58 * v76 / 100000.0 + 0.5);
                      if (v77 > 2147483650.0 || v77 < -2147483650.0)
                      {
                        return 1;
                      }

                      v76 = v77;
                    }

                    a1[6] = v76;
                    if (a1 + 7 > a1 + 8)
                    {
                      goto LABEL_160;
                    }

                    v79 = a2[5];
                    if (v79)
                    {
                      v80 = floor(v58 * v79 / 100000.0 + 0.5);
                      if (v80 > 2147483650.0 || v80 < -2147483650.0)
                      {
                        return 1;
                      }

                      v79 = v80;
                    }

                    a1[7] = v79;
                    if (a1 + 8 > a1 + 9)
                    {
LABEL_160:
                      __break(0x5519u);
                      return result;
                    }

                    v82 = 100000 - (a2[5] + a2[4]);
                    if (v82)
                    {
                      v83 = floor(v58 * v82 / 100000.0 + 0.5);
                      if (v83 > 2147483650.0 || v83 < -2147483650.0)
                      {
                        return 1;
                      }

                      v82 = v83;
                    }

                    memset(v86, 0, sizeof(v86));
                    a1[8] = v82;
                    if (!png_xy_from_XYZ(v86, a1))
                    {
                      return !png_colorspace_endpoints_match(a2, v86, 5);
                    }
                  }

                  return 1;
                }

                v38 = floor(v18 * v22 / 7.0 + 0.5);
                if (v38 <= 2147483650.0 && v38 >= -2147483650.0)
                {
                  v37 = v38;
                  goto LABEL_67;
                }

                return 2;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t png_colorspace_set_xy_and_XYZ(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 74);
  if (v5 < 0)
  {
    return 0;
  }

  if (a5 > 1 || (v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  if (!png_colorspace_endpoints_match(a3, (a2 + 4), 100))
  {
    *(a2 + 74) = v5 | 0x8000;
    png_benign_error(a1, "inconsistent chromaticities");
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

LABEL_6:
  v11 = *(a3 + 1);
  *(a2 + 4) = *a3;
  *(a2 + 20) = v11;
  v12 = *(a4 + 16);
  *(a2 + 36) = *a4;
  *(a2 + 52) = v12;
  *(a2 + 68) = *(a4 + 32);
  v13 = png_colorspace_endpoints_match(a3, &sRGB_xy, 1000);
  v14 = v5 & 0x7FBD | 2;
  if (v13)
  {
    v14 = v5 | 0x42;
  }

  *(a2 + 74) = v14;
  return 2;
}

uint64_t png_safe_add(int *a1, int a2, int a3)
{
  v3 = *a1;
  v4 = -2147483647 - a2 > a3;
  if (-2147483647 - a2 <= a3)
  {
    v5 = a3 + a2;
  }

  else
  {
    v5 = 50000;
  }

  if (a2 >= 0)
  {
    v4 = 0;
    v5 = a3;
  }

  if ((a2 ^ 0x7FFFFFFF) >= a3)
  {
    v6 = a3 + a2;
  }

  else
  {
    v6 = 50000;
  }

  if (a2 >= 1)
  {
    v7 = (a2 ^ 0x7FFFFFFF) < a3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 >= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v3 >= 1)
  {
    if ((v3 ^ 0x7FFFFFFF) < v8)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v3 < 0)
  {
    if (-2147483647 - v3 > v8)
    {
      return 1;
    }

LABEL_17:
    v8 += v3;
  }

  if (!v7)
  {
    v9 = 0;
    *a1 = v8;
    return v9;
  }

  return 1;
}

BOOL png_colorspace_endpoints_match(int *a1, _DWORD *a2, int a3)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v4 - a3;
  v6 = v4 + a3;
  if (v3 >= v5)
  {
    v9 = __OFSUB__(v3, v6);
    v7 = v3 == v6;
    v8 = v3 - v6 < 0;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (!(v8 ^ v9 | v7))
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  v12 = v11 - a3;
  v13 = v11 + a3;
  if (v10 >= v12)
  {
    v16 = __OFSUB__(v10, v13);
    v14 = v10 == v13;
    v15 = v10 - v13 < 0;
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (!(v15 ^ v16 | v14))
  {
    return 0;
  }

  v17 = *a1;
  v18 = *a2 + a3;
  if (*a1 >= *a2 - a3)
  {
    v21 = __OFSUB__(v17, v18);
    v19 = v17 == v18;
    v20 = v17 - v18 < 0;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (!(v20 ^ v21 | v19))
  {
    return 0;
  }

  v22 = 0;
  v24 = a1[1];
  v25 = a2[1];
  if (v24 >= v25 - a3 && v24 <= v25 + a3)
  {
    v22 = 0;
    v26 = a1[2];
    v27 = a2[2];
    if (v26 >= v27 - a3 && v26 <= v27 + a3)
    {
      v22 = 0;
      v28 = a1[3];
      v29 = a2[3];
      if (v28 >= v29 - a3 && v28 <= v29 + a3)
      {
        v22 = 0;
        v30 = a1[4];
        v31 = a2[4];
        if (v30 >= v31 - a3 && v30 <= v31 + a3)
        {
          v32 = a1[5];
          v33 = a2[5];
          v34 = v33 - a3;
          v35 = v33 + a3;
          if (v32 >= v34)
          {
            v38 = __OFSUB__(v32, v35);
            v36 = v32 == v35;
            v37 = v32 - v35 < 0;
          }

          else
          {
            v38 = 0;
            v36 = 0;
            v37 = 0;
          }

          return (v37 ^ v38 | v36) != 0;
        }
      }
    }
  }

  return v22;
}

unint64_t _cg_png_get_zstream(uint64_t a1)
{
  result = a1 + 96;
  if (result > a1 + 208)
  {
    __break(0x5519u);
  }

  return result;
}

CGImageSourceRef CGImageSourceCreateWithDataProvider(CGDataProviderRef provider, CFDictionaryRef options)
{
  v4 = kdebug_trace();
  IIOInitDebugFlags(v4, v5);
  if (provider)
  {
    v6 = CFGetTypeID(provider);
    if (v6 == CGDataProviderGetTypeID())
    {
      if (options)
      {
        v7 = CFGetTypeID(options);
        if (v7 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateWithDataProvider", 4552, "*** ERROR: CGImageSourceCreateWithDataProvider: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v11, 0, sizeof(v11));
      IIODictionary::IIODictionary(v11, options);
      operator new();
    }

    CGImageSourceCreateWithDataProvider_cold_1();
  }

  else
  {
    CGImageSourceCreateWithDataProvider_cold_2();
  }

  v8 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateWithDataProvider", 4578, "could not create CGImageSourceRef");
    v8 = gIIODebugFlags;
  }

  v9 = (v8 >> 12) & 3;
  if (v9)
  {
    ImageIODebugOptions(v9, "A", "CGImageSourceCreateWithDataProvider", 0, 0, -1, options);
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_185E9B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x186602850](v7, 0x10E1C4080364B91, a3, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, CGDataProvider *a2, IIODictionary *a3)
{
  *this = &unk_1EF4D46B0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  IIOImageSource::setup(this, 2);
  if (a3)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a3);
  }

  *(this + 2) = CGImageReadCreateWithProvider(*(this + 1), a2, 1);
  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    v6 = CGDataProviderCopyData(a2);
    if (v6)
    {
      ImageIO_saveImageData("CGImageSourceCreateWithDataProvider", v6);
      CFRelease(v6);
    }
  }
}

void sub_185E9BAD4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGImageReadCreateWithProvider(unint64_t a1, IIOImageRead *this, CGDataProvider *a3)
{
  if (this)
  {
    IIOImageRead::CreateWithDataProvider(this, a3);
  }

  return 0;
}

void IIOImageRead::CreateWithDataProvider(IIOImageRead *this, CGDataProvider *a2)
{
  if (copyInputDataCheck != -1)
  {
    IIOImageRead::CreateWithDataProvider();
  }

  if (this)
  {
    SizeOfData = CGDataProviderGetSizeOfData();
    if (SizeOfData != -1)
    {
      v4 = SizeOfData;
      if (!SizeOfData)
      {
        goto LABEL_14;
      }

      if ((gCopyInputData & 1) == 0)
      {
        v5 = CGDataProviderRetainBytePtr();
        if (v5)
        {
          v6 = v5;
          context.version = 0;
          context.info = this;
          context.retain = _providerRetain;
          context.release = _providerRelease;
          memset(&context.copyDescription, 0, 40);
          v7 = *MEMORY[0x1E695E480];
          v8 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
          if (v8)
          {
            v9 = v8;
            v10 = CFDataCreateWithBytesNoCopy(v7, v6, v4, v8);
            CFRelease(v9);
            if (v10)
            {
              goto LABEL_13;
            }
          }

          else
          {
            CGDataProviderReleaseBytePtr();
          }
        }
      }
    }

    if (CGDataProviderCopyData(this))
    {
LABEL_13:
      operator new();
    }
  }

LABEL_14:
  operator new();
}

uint64_t ___ZL25_CFDataCreateWithProviderP14CGDataProvider_block_invoke()
{
  result = IOPreferencesGetBoolean("ImageIO_CopyInputData", 0, 0);
  gCopyInputData = result;
  return result;
}

CFStringRef CGImageSourceGetType(CGImageSourceRef isrc)
{
  v2 = kdebug_trace();
  IIOInitDebugFlags(v2, v3);
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageSourceGetType", isrc, 0, -1, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetType_cold_4();
    goto LABEL_21;
  }

  v5 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v5 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetType_cold_2();
    goto LABEL_21;
  }

  v6 = *(isrc + 3);
  if (!v6)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if (*(v6 + 89) == 1)
  {
    CGImageSourceGetType_cold_3();
    goto LABEL_21;
  }

  pthread_mutex_lock((v6 + 224));
  if (IIOImageSource::isProxy(v6))
  {
    Type = IIOImageSource::proxyGetType(v6);
  }

  else
  {
    if (!IIOImageSource::bindToReader(v6))
    {
      v8 = 0;
      goto LABEL_15;
    }

    Type = IIO_Reader::utType(*(v6 + 104));
  }

  v8 = Type;
LABEL_15:
  v9 = *(v6 + 104);
  if (v9)
  {
    IIO_Reader::osType(v9);
  }

  pthread_mutex_unlock((v6 + 224));
LABEL_22:
  kdebug_trace();
  return v8;
}

CFArrayRef CGImageDestinationCopyTypeIdentifiers(void)
{
  v0 = kdebug_trace();
  IIOInitDebugFlags(v0, v1);
  v2 = ((gIIODebugFlags >> 12) & 3);
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageDestinationCopyTypeIdentifiers", 0, 0, -1, 0);
  }

  WriterHandler = IIO_WriterHandler::GetWriterHandler(v2);
  v4 = IIO_WriterHandler::copyTypeIdentifiers(WriterHandler);
  kdebug_trace();
  return v4;
}

__CFArray *IIO_WriterHandler::copyTypeIdentifiers(IIO_WriterHandler *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = *(this + 1); i != *(this + 2); ++i)
  {
    if (IIO_Writer::addToTypeIdentifiers(*i))
    {
      v4 = IIO_Writer::utType(*i);
      CFArrayAppendValue(Mutable, v4);
    }
  }

  return Mutable;
}

uint64_t IIO_WriterHandler::GetWriterHandler(IIO_WriterHandler *this)
{
  if (IIO_WriterHandler::GetWriterHandler(void)::writerHandlerCreate != -1)
  {
    IIO_WriterHandler::GetWriterHandler();
  }

  return IIO_WriterHandler::GetWriterHandler(void)::gIIO_WriterHandler;
}

uint64_t IIO_Writer::utType(IIO_Writer *this)
{
  result = *(this + 2);
  if (!result)
  {
    return **(this + 1);
  }

  return result;
}

IIO_Writer *CreateWriter_HEIC(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

IIO_Writer *CreateWriter_HEICS(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

IIO_Writer *CreateWriter_AVIF(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AV1_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

void IIO_WriterHandler::IIO_WriterHandler(IIO_WriterHandler *this)
{
  *this = &unk_1EF4D8B40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CFAbsoluteTimeGetCurrent();
  IIO_WriterHandler::buildWriterList(this, v2);
}

void sub_185E9C950(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void IIO_Writer::IIO_Writer(IIO_Writer *this, const __CFString *const *a2, int a3, uint64_t a4, int a5)
{
  *this = &unk_1EF4DDCB8;
  *(this + 1) = a2;
  *(this + 6) = a3;
  *(this + 4) = a4;
  *(this + 10) = a5;
  *(this + 44) = 1;
  *(this + 2) = 0;
}

uint64_t IIOGeneric_Writer::IIOGeneric_Writer(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = *(a2 + 6);
  *(a1 + 24) = a3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 44) = 1;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *a1 = &unk_1EF4DDD10;
  v7 = a2[4];
  *(a1 + 48) = v7;
  if (!v7)
  {
    LogError("IIOGeneric_Writer", 190, "*** ERROR: IIOGeneric_Writer::IIOGeneric_Writer called with invalid pluginInfo (writeProc is nil)");
  }

  return a1;
}

IIO_Writer *CreateWriter_AVCI(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AVCI_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

BOOL IIO_Reader_BC::testHeader(IIO_Reader_ETC *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierBMP)
  {
    if (a2[1] > 1u)
    {
      return 0;
    }

    v12 = a2[2];
    v13 = v12 > 0xB;
    v14 = (1 << v12) & 0xE0E;
    v15 = v13 || v14 == 0;
    return !v15 && a2[7] <= 0x20u && (a2[12] || a2[13]) && (a2[14] || a2[15]) && (((a2[16] - 8) >> 3) | (32 * (a2[16] - 8))) <= 3u && a2[17] < 0x40u;
  }

  if (v6 == kCGImageTypeIdentifierBC)
  {
    if (a3 < 0x80 || !IIO_Reader_ETC::isInDDSContainer(a1, a2))
    {
      return 0;
    }

    v16 = bswap32(*(a2 + 21));
    v17 = v16 - 1146639409 < 5 || v16 == 1146630448;
    return v17 || !v16 && (a2[80] & 0x40) != 0;
  }

  if (v6 != kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x50)
    {
      return 0;
    }

    if (v6 != kCGImageTypeIdentifierKTX2)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818802);
    v28 = *(a5 + 2);
    v27 = *a5;
    return (*(*v11 + 16))(v11, a2, a3, a4, &v27) && IsBCn(*(a2 + 3));
  }

  if (a3 < 0x40)
  {
    return 0;
  }

  v19 = IIO_ReaderHandler::GetReaderHandler(a1);
  v20 = IIO_ReaderHandler::readerForType(v19, 1263818784);
  if (!v20)
  {
    return 0;
  }

  v28 = *(a5 + 2);
  v27 = *a5;
  if (!(*(*v20 + 16))(v20, a2, a3, a4, &v27))
  {
    return 0;
  }

  v21 = *(a2 + 3);
  v22 = *(a2 + 4);
  v23 = bswap32(v22);
  if (v21 != 67305985)
  {
    v22 = v23;
  }

  if (v22)
  {
    return 0;
  }

  v24 = bswap32(*(a2 + 7));
  if (v21 == 67305985)
  {
    v25 = *(a2 + 7);
  }

  else
  {
    v25 = v24;
  }

  if (v25 - 36283 < 4)
  {
    return 1;
  }

  v26 = v25 & 0xFFFFFFFC;
  result = 1;
  if (v26 != 33776 && v26 != 35916 && v26 != 36492)
  {
    return 0;
  }

  return result;
}

uint64_t HEIFReadPlugin::initialize(HEIFReadPlugin *this, IIODictionary *a2)
{
  v3 = *(this + 6);
  v4 = *(this + 8);
  v211 = 0;
  v212[0] = 0;
  IIO_LoadHEIFSymbols();
  if (*(this + 369) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(v3, @"kCGImageSourceXMPSidecar");
    if (ObjectForKey)
    {
      v6 = ObjectForKey;
      v7 = CFGetTypeID(ObjectForKey);
      if (v7 == CFDataGetTypeID())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = *(this + 383);
    if (IIODictionary::containsKey(v3, @"kCGImageSourceTiledDownsamplingMode"))
    {
      *(this + 127) = IIODictionary::getUint32ForKey(v3, @"kCGImageSourceTiledDownsamplingMode");
    }

    if (IIODictionary::containsKey(v3, @"kCGImageSourceSubsampleFactor"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(v3, @"kCGImageSourceSubsampleFactor");
    }

    else
    {
      Uint32ForKey = 0;
    }

    v12 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
    if (!v12)
    {
      kdebug_trace();
      LogError("initialize", 566, "*** ERROR: globalHEIFInfo was not set in IIO_Reader_HEIF::updateSourceProperties or IIO_Reader_HEIF::getImageCount\n");
      v194 = 0;
      v9 = 4294967246;
      goto LABEL_15;
    }

    v16 = v12;
    if (!GlobalHEIFInfo::getNumberOfMainImages(v12))
    {
      HEIFReadPlugin::initialize();
      v194 = 0;
      v9 = 4294967246;
      goto LABEL_15;
    }

    v193 = v3;
    v17 = GlobalHEIFInfo::resolvedIndexForIndex(v16, *(this + 56));
    v190 = (this + 532);
    *(this + 133) = v17;
    v192 = v16;
    HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v16, v17);
    if (!HEIFMainImageAtIndex)
    {
      HEIFReadPlugin::initialize();
      v194 = 0;
      v9 = 4294967246;
      goto LABEL_15;
    }

    v19 = HEIFMainImageAtIndex;
    *(this + 166) = 0;
    v189 = v4;
    if (*(this + 232) < 2u)
    {
      if (!*(this + 57) || HEIFMainImage::width(HEIFMainImageAtIndex) <= *(this + 57) && HEIFMainImage::height(v19) <= *(this + 57))
      {
        *(this + 61) = HEIFMainImage::width(v19);
        *(this + 62) = HEIFMainImage::height(v19);
        if (Uint32ForKey < 2)
        {
LABEL_54:
          v194 = 0;
          goto LABEL_55;
        }

        if (Uint32ForKey <= 3)
        {
          v24 = 2;
        }

        else
        {
          v24 = 4;
        }

        if (Uint32ForKey > 7)
        {
          v24 = 8;
        }

        *(this + 166) = v24;
        Size = IIOImageReadSession::getSize(*(this + 3));
        v26 = IIOImageReadSession::retainBytePointer(*(this + 3), &v211, 1);
        if (!v26)
        {
          HEIFReadPlugin::initialize();
          v194 = 0;
          v9 = 4294967246;
          goto LABEL_15;
        }

        v27 = v26;
        v28 = *(this + 61);
        if (v28)
        {
          v29 = *(this + 62);
          if (!v29)
          {
            v28 = 0;
          }

          v27 = v26 + v28;
          if (v29)
          {
            Size = *(this + 62);
          }
        }

        v30 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v27, Size, *MEMORY[0x1E695E498]);
        v208[0] = 0;
        LODWORD(cf) = 0;
        v194 = v30;
        ExpectedWidthAndHeightForSubsampling = HEIFReadPlugin::getExpectedWidthAndHeightForSubsampling(this, v30, *(this + 133), *(this + 166), v208, &cf);
        if (ExpectedWidthAndHeightForSubsampling)
        {
          v9 = ExpectedWidthAndHeightForSubsampling;
          LogError("initialize", 638, "*** ERROR: _getExpectedWidthAndHeightForSubsampling failed\n");
          goto LABEL_15;
        }

        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    getExpectedWidthAndHeightForSubsampling:    subSampleFactor: %d  size: %d x %d\n", *(this + 166), v208[0], cf);
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("                                           :    original size: %d x %d\n", *(this + 61), *(this + 62));
          }
        }

        v32 = cf;
        *(this + 61) = v208[0];
        *(this + 62) = v32;
LABEL_55:
        v33 = *(this + 57);
        if (v33 && *(this + 526) == 1)
        {
          v34 = v33 / HEIFMainImage::width(v19);
          v35 = *(this + 57);
          v36 = v35 / HEIFMainImage::height(v19);
          if (v34 < v36)
          {
            v36 = v34;
          }

          if (v36 <= 1.0)
          {
            v37 = v36;
          }

          else
          {
            v37 = 1.0;
          }

          *(this + 61) = (v37 * HEIFMainImage::width(v19));
          *(this + 62) = (v37 * HEIFMainImage::height(v19)) & 0xFFFFFFFE;
        }

        ColorSpaceName = HEIFMainImage::getColorSpaceName(v19);
        if (ColorSpaceName)
        {
          v39 = CGColorSpaceCreateWithName(ColorSpaceName);
        }

        else
        {
          ColorSpace = HEIFMainImage::getColorSpace(v19);
          v39 = CGColorSpaceRetain(ColorSpace);
        }

        *(this + 20) = v39;
        if (!v39)
        {
          v39 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          *(this + 20) = v39;
        }

        if ((*(&gIIODebugFlags + 1) & 0x80003000) == 0)
        {
LABEL_93:
          theData = v8;
          if (CGColorSpaceGetModel(v39) == kCGColorSpaceModelRGB)
          {
            v55 = 1380401696;
          }

          else
          {
            v55 = 1196573017;
          }

          *(this + 85) = v55;
          *(this + 264) = 0;
          StereoAggressorCount = HEIFGroupItem::getStereoAggressorCount(v19);
          if (StereoAggressorCount)
          {
            v57 = StereoAggressorCount;
            for (i = 0; i != v57; ++i)
            {
              if (HEIFMainImage::getHEIFAlternateImageAtIndex(v19, i))
              {
                *(this + 523) = 1;
              }
            }
          }

          NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v19);
          if (NumberOfAuxImages)
          {
            v60 = NumberOfAuxImages;
            for (j = 0; j != v60; ++j)
            {
              HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v19, j);
              v63 = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
              if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) == 3)
              {
                v64 = HEIFAuxImage::auxiliaryAlpha(HEIFAuxImageAtIndex);
                if (!v64)
                {
                  _cg_jpeg_mem_term("initialize", 705, "*** ERROR: image has alpha plane, but auxImage alpha is 'kCGImageAlphaNone'?\n");
                  LOBYTE(v64) = 3;
                }

                *(this + 262) = v64 & 0x1F;
                *(this + 529) = HEIFAuxImage::auxiliaryAlpha(HEIFAuxImageAtIndex) == 1;
                *(this + 128) = HEIFAuxImage::auxiliaryPixelFormat(HEIFAuxImageAtIndex);
                *(this + 528) = 1;
              }

              else if (v63 && CFStringCompare(v63, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, 0) == kCFCompareEqualTo)
              {
                *(this + 522) = 1;
              }
            }

            if ((*(this + 528) & 1) == 0)
            {
              *(this + 262) = 5;
              if (!v10)
              {
LABEL_113:
                v65 = 1;
                goto LABEL_121;
              }

LABEL_118:
              if (*(this + 522))
              {
                v65 = 0;
              }

              else
              {
                v65 = *(this + 523) ^ 1;
              }

LABEL_121:
              *(this + 128) = HEIFMainImage::bitDepth(v19);
              EnableRestrictedDecodingFlag = HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, v193);
              if (*(this + 85) == 1196573017)
              {
                v68 = *(this + 528);
                if (v68)
                {
                  v69 = 2;
                }

                else
                {
                  v69 = 1;
                }

                *(this + 130) = v69;
                if (*(this + 128) <= 8u)
                {
                  v70 = 8;
                }

                else
                {
                  v70 = 16;
                }

                *(this + 128) = v70;
                v71 = v70 << v68;
                *(this + 129) = v71;
                v72 = v71 >> 3;
LABEL_135:
                v74 = (*(this + 61) * v72 + 15) & 0xFFFFFFF0;
                *(this + 63) = v74;
                *(this + 71) = v74;
                *(this + 79) = v74;
                v75 = IIOSkipMetadata(v193);
                v76 = IIOSkipXMP_and_IPTC(v193);
                v78 = v76;
                if (v75)
                {
                  if (*(this + 383) != 1)
                  {
                    goto LABEL_152;
                  }

                  if ((gIIODebugFlags & 0x4000000000000) != 0)
                  {
                    v76 = IIO_OSAppleInternalBuild(v76, v77);
                    if (v76)
                    {
                      v76 = ImageIOLog("••• Ⓜ️  skipMetadata and decodeToHDR - contradicting requests\n");
                    }
                  }

                  if ((v78 & 1) == 0)
                  {
                    _cg_jpeg_mem_term("initialize", 836, "*** ERROR: skipMetadata and decodeToHDR - contradicting requests - will only skip XMP metadata\n");
                  }

                  v78 = 1;
                }

                if (*(this + 232) < 2u || (*(this + 383) & 1) != 0 || (*(this + 382) & 1) != 0)
                {
                  v79 = 0;
                  goto LABEL_153;
                }

                if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v76, v77))
                {
                  ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
                }

LABEL_152:
                v79 = 1;
LABEL_153:
                v80 = IIOCreateCMPhotoDecompressionSession(v212);
                if (v80)
                {
                  v81 = v80;
                  v82 = IIOCMErrorString(v80);
                  LogError("initialize", 852, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v82, v81);
LABEL_262:
                  *(this + 381) = 0;
                  v163 = CGColorSpaceContainsFlexGTCInfo();
                  *(this + 380) = v163;
                  if ((v163 & 1) == 0 && ((*(this + 523) & 1) != 0 || *(this + 522) == 1))
                  {
                    v168 = IIODictionary::getObjectForKey(v193, @"kCGImageSourceDecodeRequest");
                    if (!v168 || CFStringCompare(v168, @"kCGImageSourceDecodeToHDR", 0))
                    {
                      goto LABEL_288;
                    }

                    v169 = IIODictionary::getObjectForKey(v193, @"kCGImageSourceDecodeRequestOptions");
                    *v208 = 0;
                    v209 = 0;
                    v210 = 0;
                    IIODictionary::IIODictionary(v208, v169);
                    if (*(this + 524) == 1)
                    {
                      if (CGColorSpaceIsPQBased(*(this + 20)))
                      {
                        if (*(this + 379) == 1 && (gIIODebugFlags & 0x300000) != 0)
                        {
                          ImageIOLog("☀️  CHECKME: we called 'didCalculateFlexGTC' and are setting colorSpaceIsFlexGTCProxy - this will call CalculateFlexGTC again\n");
                        }

                        *(this + 381) = 1;
                        IIOReadPlugin::updateColorSpace(this, 0);
                      }

                      else
                      {
                        *(this + 524) = 0;
                      }
                    }
                  }

                  else
                  {
                    if (*(this + 88) != 0.0)
                    {
                      goto LABEL_288;
                    }

                    v164 = IIODictionary::getObjectForKey(v193, @"kCGImageSourceDecodeRequest");
                    if (!v164 || CFStringCompare(v164, @"kCGImageSourceDecodeToHDR", 0))
                    {
                      goto LABEL_288;
                    }

                    *v208 = 0;
                    v209 = 0;
                    v210 = 0;
                    IIODictionary::IIODictionary(v208);
                    IIODictionary::setObjectForKey(v165, *(this + 20), @"kCGFlexRangeAlternateColorSpace");
                    if (IIODictionary::containsKeyGroup(*(this + 6), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions"))
                    {
                      FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(*(this + 6), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions");
                      IIONumber::IIONumber(&cf, FloatForKeyGroup);
                      IIODictionary::setObjectForKey(v208, v202, @"kCGTargetHeadroom");
                      IIONumber::~IIONumber(&cf);
                    }

                    if (IIODictionary::containsKeyGroup(*(this + 6), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions"))
                    {
                      BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(*(this + 6), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions");
                      IIONumber::IIONumber(&cf, BoolForKeyGroup);
                      IIODictionary::setObjectForKey(v208, v202, @"kCGDisableMetal");
                      IIONumber::~IIONumber(&cf);
                    }

                    v195[0] = 0;
                    (*(*this + 176))(this, v208, 0, v195);
                    cf = 0;
                    v201 = 0;
                    v202 = 0;
                    IIODictionary::IIODictionary(&cf, v195[0]);
                    *(this + 88) = IIODictionary::getFloatForKey(&cf, @"kCGContentBrightness");
                    *(this + 89) = IIODictionary::getFloatForKey(&cf, @"kCGContentHeadroom");
                    if (v195[0])
                    {
                      CFRelease(v195[0]);
                    }

                    IIODictionary::~IIODictionary(&cf);
                  }

                  IIODictionary::~IIODictionary(v208);
LABEL_288:
                  *(this + 204) = 12;
                  v171 = HEIFMainImage::bitDepth(v19);
                  if (v171 != *(this + 128))
                  {
                    v172 = *(this + 7);
                    IIONumber::IIONumber(v208, v171);
                    IIODictionary::setObjectForKey(v172, v208, @"Depth");
                    IIONumber::~IIONumber(v208);
                  }

                  if (GlobalHEIFInfo::shouldExposeMultiFrameContents(v192))
                  {
                    v173 = *(this + 56);
                    if (v173 == GlobalHEIFInfo::getPrimaryImageIndex(v192))
                    {
                      IIODictionary::setObjectForKey(*(this + 7), *MEMORY[0x1E695E4D0], @"PrimaryImage");
                    }
                  }

LABEL_293:
                  if ((gIIODebugFlags & 0x30000) == 0)
                  {
LABEL_318:
                    v9 = 0;
                    goto LABEL_319;
                  }

                  v174 = *(this + 55);
                  v175 = v174 >> 24;
                  if ((v174 >> 24) <= 0x7F)
                  {
                    v176 = *(MEMORY[0x1E69E9830] + 4 * v175 + 60) & 0x40000;
                  }

                  else
                  {
                    v176 = __maskrune(v175, 0x40000uLL);
                    v174 = *(this + 55);
                  }

                  if (v176)
                  {
                    v177 = (v174 >> 24);
                  }

                  else
                  {
                    v177 = 46;
                  }

                  v178 = v174 << 8 >> 24;
                  if (v178 <= 0x7F)
                  {
                    v179 = *(MEMORY[0x1E69E9830] + 4 * v178 + 60) & 0x40000;
                  }

                  else
                  {
                    v179 = __maskrune(v178, 0x40000uLL);
                    v174 = *(this + 55);
                  }

                  if (v179)
                  {
                    v180 = (v174 << 8 >> 24);
                  }

                  else
                  {
                    v180 = 46;
                  }

                  v181 = v174 >> 8;
                  if (v181 <= 0x7F)
                  {
                    v182 = *(MEMORY[0x1E69E9830] + 4 * v181 + 60) & 0x40000;
                  }

                  else
                  {
                    v182 = __maskrune(v181, 0x40000uLL);
                    v174 = *(this + 55);
                  }

                  if (v182)
                  {
                    v183 = (v174 >> 8);
                  }

                  else
                  {
                    v183 = 46;
                  }

                  if (v174 <= 0x7F)
                  {
                    if ((*(MEMORY[0x1E69E9830] + 4 * v174 + 60) & 0x40000) != 0)
                    {
                      goto LABEL_314;
                    }
                  }

                  else if (__maskrune(v174, 0x40000uLL))
                  {
LABEL_314:
                    v184 = *(this + 220);
LABEL_317:
                    ImageIOLog("♦️  '%c%c%c%c'-initialize  w: %d  h: %d  rb: %d  bpp: %d  bpc: %d\n", v177, v180, v183, v184, *(this + 61), *(this + 62), *(this + 63), *(this + 129), *(this + 128));
                    goto LABEL_318;
                  }

                  v184 = 46;
                  goto LABEL_317;
                }

                v206 = 0;
                v207 = 0;
                v205 = 1;
                v83 = v194;
                if (!v194)
                {
                  v84 = IIOImageReadSession::getSize(*(this + 3));
                  v85 = IIOImageReadSession::retainBytePointer(*(this + 3), &v211, 1);
                  if (!v85)
                  {
                    LogError("initialize", 867, "*** ERROR: retainBytePointer failed\n");
                    v194 = 0;
                    goto LABEL_293;
                  }

                  v86 = v85;
                  v87 = *(this + 61);
                  if (v87)
                  {
                    v88 = *(this + 62);
                    if (!v88)
                    {
                      v87 = 0;
                    }

                    v86 = v85 + v87;
                    if (v88)
                    {
                      v84 = *(this + 62);
                    }
                  }

                  v83 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v86, v84, *MEMORY[0x1E695E498]);
                  if (!v83)
                  {
                    v194 = 0;
                    goto LABEL_261;
                  }
                }

                v194 = v83;
                v89 = gFunc_CMPhotoDecompressionSessionCreateContainer(v212[0], 0, v83, &v205 + 4, &v207);
                if (v89)
                {
                  v90 = v89;
                  v91 = IIOCMErrorString(v89);
                  LogError("initialize", 885, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v91, v90);
LABEL_261:
                  CFRelease(v212[0]);
                  goto LABEL_262;
                }

                if (GlobalHEIFInfo::hasHEIFSequence(v192))
                {
                  v92 = GlobalHEIFInfo::useHEIFSequence(v192);
                }

                else
                {
                  v92 = 0;
                }

                v93 = (this + 532);
                v204 = 0;
                v203 = 0;
                if (v79)
                {
                  ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v207, *v190, 0, 0, 0, &v205);
                  if (ImageGeometryForIndexWithOptions)
                  {
                    v95 = ImageGeometryForIndexWithOptions;
                    v96 = IIOCMErrorString(ImageGeometryForIndexWithOptions);
                    LogError("initialize", 909, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n", v96, v95);
                    goto LABEL_230;
                  }

                  *v208 = 0;
                  v209 = 0;
                  v210 = 0;
                  IIODictionary::IIODictionary(v208);
                  IIONumber::IIONumber(&cf, v205);
                  IIODictionary::setObjectForKeyGroup(v208, v202, @"Orientation", @"{TIFF}");
                  IIONumber::~IIONumber(&cf);
                  v97 = CGImageMetadataCreateFromLegacyProps(v208);
                  CGImageMetadataMerge(v189, v97, 0);
                  if (v97)
                  {
                    CFRelease(v97);
                    IIODictionary::~IIODictionary(v208);
                    goto LABEL_230;
                  }

                  IIODictionary::~IIODictionary(v208);
                }

                HEIFExifPayloadAtIndex = HEIFMainImage::getHEIFExifPayloadAtIndex(v19, 0);
                if (HEIFExifPayloadAtIndex)
                {
                  v99 = HEIFExifPayloadAtIndex;
                  v100 = gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions;
                  v101 = v207;
                  v102 = IIOImageSource::cf(HEIFExifPayloadAtIndex);
                  Ref = IIOImageSource::imageReadRef(v99);
                  v104 = v100(v101, v102, Ref, 0, &v204, &v203);
                  if (v104)
                  {
                    v105 = v104;
                    v106 = IIOCMErrorString(v104);
                    LogError("initialize", 936, "*** CMPhotoDecompressionContainerCopyExifForIndexWithOptions  err = %s [%d]\n", v106, v105);
                    v93 = (this + 532);
                    v107 = theData;
                  }

                  else
                  {
                    BytePtr = CFDataGetBytePtr(v203);
                    Length = CFDataGetLength(v203);
                    v93 = (this + 532);
                    v107 = theData;
                    if (Length > v204)
                    {
                      MetadataFromDatabuffer = CreateMetadataFromDatabuffer(&BytePtr[v204], Length - v204, 0);
                      v116 = MetadataFromDatabuffer;
                      if (MetadataFromDatabuffer)
                      {
                        v117 = *(MetadataFromDatabuffer + 6);
                        if (v117)
                        {
                          *v208 = 0;
                          v209 = 0;
                          v210 = 0;
                          IIODictionary::IIODictionary(v208, v117);
                          *(this + 134) = IIODictionary::getFloatForKeyGroup(v118, @"33", @"{MakerApple}");
                          v119 = IIODictionary::getFloatForKeyGroup(v208, @"48", @"{MakerApple}");
                          *(this + 135) = v119;
                          v120 = *(this + 134);
                          v121 = 0.0;
                          if (v120 < 0.0 || v120 > 0.0 && (v121 = 1.0, v120 < 1.0))
                          {
                            *(this + 134) = v121;
                            v120 = v121;
                          }

                          v122 = 0.0;
                          if (v119 < 0.0 || v119 > 0.0 && (v122 = 1.0, v119 < 1.0))
                          {
                            *(this + 135) = v122;
                            v119 = v122;
                          }

                          if ((gIIODebugFlags & 0x300000) != 0)
                          {
                            ImageIOLog("☀️  %s - headroom from makerNote: _meteorHeadroom: %g   _meteorPlusHeadroom:%g\n", "initialize", v120, v119);
                          }

                          IIODictionary::~IIODictionary(v208);
                        }
                      }

                      if (HEIFMainImage::isTiled(v19))
                      {
                        metadata = v116;
                        TileWidth = HEIFMainImage::getTileWidth(v19);
                        TileLength = HEIFMainImage::getTileLength(v19);
                        IIONumber::IIONumber(v208, TileWidth);
                        v124 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileWidth", kCGImageMetadataTypeDefault, v210);
                        IIONumber::~IIONumber(v208);
                        if (v124)
                        {
                          CGImageMetadataSetTagWithPath(metadata, 0, @"tiff:TileWidth", v124);
                          CFRelease(v124);
                        }

                        IIONumber::IIONumber(v208, TileLength);
                        v125 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileLength", kCGImageMetadataTypeDefault, v210);
                        IIONumber::~IIONumber(v208);
                        v107 = theData;
                        v116 = metadata;
                        if (v125)
                        {
                          CGImageMetadataSetTagWithPath(metadata, 0, @"tiff:TileLength", v125);
                          CFRelease(v125);
                        }
                      }

                      CGImageMetadataMerge(v189, v116, 0);
                      if (v116)
                      {
                        CFRelease(v116);
                      }
                    }

                    if (v203)
                    {
                      CFRelease(v203);
                    }
                  }
                }

                else
                {
                  cf = 0;
                  v108 = gFunc_CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions(v207, *v190, 0, 0, 0, &cf);
                  if (v108)
                  {
                    v109 = v108;
                    v110 = IIOCMErrorString(v108);
                    LogError("initialize", 1007, "*** CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions  err = %s [%d]\n", v110, v109);
                  }

                  v107 = theData;
                  if (cf)
                  {
                    *v208 = 0;
                    v209 = 0;
                    v210 = 0;
                    IIODictionary::IIODictionary(v208, cf);
                    v112 = CGImageMetadataCreateFromLegacyProps(v111);
                    if (v112)
                    {
                      CGImageMetadataMerge(v189, v112, 0);
                      CFRelease(v112);
                    }

                    CFRelease(cf);
                    IIODictionary::~IIODictionary(v208);
                  }
                }

                if (v78)
                {
                  if ((v79 & 1) == 0)
                  {
                    CGImageMetadataRemoveTagWithPath(v189, 0, @"dc:creator");
                  }

                  goto LABEL_221;
                }

                if (v107)
                {
                  v126 = CFDataGetBytePtr(v107);
                  v127 = CFDataGetLength(v107);
                  MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(v126, v127);
                  CGImageMetadataMerge(v189, MetadataFromXMPSidecarData, 0);
                  if (!MetadataFromXMPSidecarData)
                  {
LABEL_221:
                    if (v92)
                    {
                      if (*(this + 55) == 1096173907)
                      {
                        v142 = &kCGImagePropertyAVISDictionary;
                      }

                      else
                      {
                        v142 = &kCGImagePropertyHEICSDictionary;
                      }

                      v143 = *v142;
                      FrameDuration = HEIFMainImage::getFrameDuration(v19);
                      v145 = *(this + 7);
                      IIONumber::IIONumber(v208, FrameDuration);
                      IIODictionary::setObjectForKeyGroup(v145, v208, @"UnclampedDelayTime", v143);
                      IIONumber::~IIONumber(v208);
                      v147 = 0.1;
                      if (FrameDuration >= 0.1)
                      {
                        v147 = FrameDuration;
                      }

                      v148 = *(this + 7);
                      IIONumber::IIONumber(v146, v147);
                      IIODictionary::setObjectForKeyGroup(v148, v208, @"DelayTime", v143);
                      IIONumber::~IIONumber(v208);
                    }

                    HEIFItemPayloadAtIndex = HEIFMainImage::getHEIFItemPayloadAtIndex(v19, 0);
                    if (HEIFItemPayloadAtIndex)
                    {
                      HEIFItem::updateProperties(HEIFItemPayloadAtIndex, *(this + 7));
                    }

LABEL_230:
                    v198 = 0;
                    v199 = 0;
                    if (v92)
                    {
                      v150 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v207, 0, 0, &v206);
                      if (v150)
                      {
                        v151 = v150;
                        v152 = IIOCMErrorString(v150);
                        LogError("initialize", 1100, "*** CMPhotoDecompressionContainerCreateSequenceContainer  err = %s [%d]\n", v152, v151);
                      }

                      v153 = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v206, *v93, 0, &v199, &v198, &v205);
                      if (v153)
                      {
                        IIOCMErrorString(v153);
                        LogError("initialize", 1103, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n");
LABEL_237:
                        LODWORD(v205) = 0;
LABEL_238:
                        if (IIODictionary::getBoolForKey(v193, @"kCGImageSourceCreateThumbnailWithTransform") && (v205 - 5) <= 3)
                        {
                          *(this + 276) = vrev64_s32(*(this + 244));
                        }

                        if (IIODictionary::containsKey(v193, @"kCGImageSourceDecodeRequest"))
                        {
                          *v208 = 0;
                          v209 = 0;
                          v210 = 0;
                          IIODictionary::IIODictionary(v208);
                          v197 = 0;
                          if ((*(this + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v207, *v93, 0, &v197), (DecodePixelFormatForBitDepth = v197) == 0))
                          {
                            v156 = HEIFMainImage::bitDepth(v19);
                            DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(this, v156);
                          }

                          IIONumber::IIONumber(&cf, DecodePixelFormatForBitDepth);
                          IIODictionary::setObjectForKey(v208, &cf, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
                          IIONumber::~IIONumber(&cf);
                          HEIFReadPlugin::updateCreateImageOptions(this, v208, v193);
                          v196 = 0;
                          v157 = gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(v207, *v93, v209, &v196);
                          v158 = v157;
                          if (v157)
                          {
                            v159 = IIOCMErrorString(v157);
                            LogError("initialize", 1161, "*** CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex  err = %s [%d]\n", v159, v158);
                          }

                          if (v196)
                          {
                            cf = 0;
                            v201 = 0;
                            v202 = 0;
                            IIODictionary::IIODictionary(&cf, v196, 1);
                            if ((IIODictionary::containsKey(&cf, *gIIO_kCVPixelBufferPixelFormatTypeKey) & 1) == 0)
                            {
                              IIONumber::IIONumber(v195, DecodePixelFormatForBitDepth);
                              IIODictionary::setObjectForKey(&cf, v195, *gIIO_kCVPixelBufferPixelFormatTypeKey);
                              IIONumber::~IIONumber(v195);
                              if ((gIIODebugFlags & 0x2000000) != 0)
                              {
                                v160 = IIODictionary::getUint32ForKey(&cf, *gIIO_kCVPixelBufferPixelFormatTypeKey);
                                LogPixelFormat(v160, "initialize", 1168);
                              }
                            }

                            HEIFMainImage::getHeadroom(v19);
                            if (v161 > 0.0)
                            {
                              IIONumber::IIONumber(v195, v161);
                              IIODictionary::setObjectForKey(&cf, v195[2], @"IOSurfaceContentHeadroom");
                              IIONumber::~IIONumber(v195);
                            }

                            MaxPicAverageLightLevel = HEIFMainImage::getMaxPicAverageLightLevel(v19);
                            if (MaxPicAverageLightLevel != 0.0)
                            {
                              *(this + 88) = MaxPicAverageLightLevel / 203.0;
                            }

                            HEIFReadPlugin::handleDecodeRequest(this, v193, &cf);
                            CFRelease(v196);
                            IIODictionary::~IIODictionary(&cf);
                          }

                          IIODictionary::~IIODictionary(v208);
                        }

                        if (v206)
                        {
                          CFRelease(v206);
                        }

                        if (v207)
                        {
                          CFRelease(v207);
                        }

                        goto LABEL_261;
                      }
                    }

                    else
                    {
                      v154 = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v207, *v93, 0, &v199, &v198, &v205);
                      if (v154)
                      {
                        IIOCMErrorString(v154);
                        LogError("initialize", 1108, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n");
                        goto LABEL_237;
                      }
                    }

                    if (v205)
                    {
                      IIONumber::IIONumber(v208, v205);
                      v170 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileLength", kCGImageMetadataTypeDefault, v210);
                      IIONumber::~IIONumber(v208);
                      if (v170)
                      {
                        CGImageMetadataSetTagWithPath(v189, 0, @"tiff:Orientation", v170);
                        CFRelease(v170);
                      }
                    }

                    goto LABEL_238;
                  }

                  v129 = MetadataFromXMPSidecarData;
                }

                else
                {
                  *v208 = 0;
                  HEIFXMPPayloadAtIndex = HEIFMainImage::getHEIFXMPPayloadAtIndex(v19, 0);
                  if (!HEIFXMPPayloadAtIndex)
                  {
                    goto LABEL_221;
                  }

                  v131 = HEIFXMPPayloadAtIndex;
                  v132 = gFunc_CMPhotoDecompressionContainerCopyXMPForIndexWithOptions;
                  v133 = v207;
                  v134 = IIOImageSource::cf(HEIFXMPPayloadAtIndex);
                  v135 = IIOImageSource::imageReadRef(v131);
                  v136 = (v132)(v133, v134, v135, 0, 0, v208);
                  if (v136)
                  {
                    v137 = v136;
                    v138 = IIOCMErrorString(v136);
                    LogError("initialize", 1053, "*** CMPhotoDecompressionContainerCopyXMPForIndexWithOptions  err = %s [%d]\n", v138, v137);
                  }

                  else
                  {
                    v139 = CFDataGetBytePtr(*v208);
                    v140 = CFDataGetLength(*v208);
                    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v139, v140);
                    CGImageMetadataMerge(v189, MetadataFromXMPBuffer, 0);
                    if (MetadataFromXMPBuffer)
                    {
                      CFRelease(MetadataFromXMPBuffer);
                    }
                  }

                  v129 = *v208;
                  v93 = (this + 532);
                  if (!*v208)
                  {
                    goto LABEL_221;
                  }
                }

                CFRelease(v129);
                goto LABEL_221;
              }

              *(this + 130) = 4;
              v73 = *(this + 128);
              if (v65 & (v73 < 9 || EnableRestrictedDecodingFlag))
              {
                *(this + 64) = 2097160;
                *(this + 264) = 0;
                *(this + 144) = 8;
                *(this + 160) = 8;
              }

              else
              {
                if (v73 != 10 || *(this + 528) == 1)
                {
                  *(this + 64) = 4194320;
                  v72 = 8;
                  goto LABEL_135;
                }

                *(this + 64) = 2097162;
                *(this + 264) = 3;
                *(this + 296) = 3;
                *(this + 328) = 3;
              }

              v72 = 4;
              goto LABEL_135;
            }
          }

          else
          {
            if (*(this + 85) != 1380401696)
            {
              *(this + 262) = 0;
              if (!v10)
              {
                goto LABEL_113;
              }

              goto LABEL_118;
            }

            v66 = HEIFMainImage::bitDepth(v19);
            *(this + 262) = 5;
            if (v66 == 10)
            {
              *(this + 147) = 5;
              *(this + 163) = 5;
              *(this + 263) = 0;
            }
          }

          if (!v10)
          {
            goto LABEL_113;
          }

          goto LABEL_118;
        }

        v41 = *(this + 55);
        v42 = v41 >> 24;
        if ((v41 >> 24) <= 0x7F)
        {
          v43 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
        }

        else
        {
          v43 = __maskrune(v42, 0x40000uLL);
          v41 = *(this + 55);
        }

        if (v43)
        {
          v44 = (v41 >> 24);
        }

        else
        {
          v44 = 46;
        }

        v45 = v41 << 8 >> 24;
        if (v45 <= 0x7F)
        {
          v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
        }

        else
        {
          v46 = __maskrune(v45, 0x40000uLL);
          v41 = *(this + 55);
        }

        if (v46)
        {
          v47 = (v41 << 8 >> 24);
        }

        else
        {
          v47 = 46;
        }

        v48 = v41 >> 8;
        if (v48 <= 0x7F)
        {
          v49 = *(MEMORY[0x1E69E9830] + 4 * v48 + 60) & 0x40000;
        }

        else
        {
          v49 = __maskrune(v48, 0x40000uLL);
          v41 = *(this + 55);
        }

        if (v49)
        {
          v50 = (v41 >> 8);
        }

        else
        {
          v50 = 46;
        }

        if (v41 <= 0x7F)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000) != 0)
          {
            goto LABEL_89;
          }
        }

        else if (__maskrune(v41, 0x40000uLL))
        {
LABEL_89:
          v51 = *(this + 220);
LABEL_92:
          Name = CGColorSpaceGetName(*(this + 20));
          IIOString::IIOString(v208, Name);
          v54 = IIOString::utf8String(v53);
          ImageIOLog("COL '%c%c%c%c' %s:%d using colorSpace: '%s'\n", v44, v47, v50, v51, "initialize", 674, v54);
          IIOString::~IIOString(v208);
          v39 = *(this + 20);
          goto LABEL_93;
        }

        v51 = 46;
        goto LABEL_92;
      }
    }

    else
    {
      HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(HEIFMainImageAtIndex, 0);
      if (HEIFThumbnailImageAtIndex)
      {
        v21 = HEIFThumbnailImageAtIndex;
        *(this + 61) = HEIFGroupItem::getGroupType(HEIFThumbnailImageAtIndex);
        *(this + 62) = TIFFFieldIsAnonymous(v21);
        IIO_Reader::osType(v21);
        HEIFThumbnailImage::dataLength(v21);
        v22 = *(this + 57);
        if (!v22)
        {
          goto LABEL_54;
        }

        v23 = *(this + 61);
        if (v23 <= *(this + 62))
        {
          v23 = *(this + 62);
        }

        if (v23 == v22)
        {
          goto LABEL_54;
        }
      }
    }

    v194 = 0;
    *(this + 526) = 1;
    goto LABEL_55;
  }

  v194 = 0;
  v9 = 4294967257;
LABEL_15:
  v13 = *(this + 55);
  if ((v13 >> 24) > 0x7F)
  {
    __maskrune(v13 >> 24, 0x40000uLL);
    v13 = *(this + 55);
  }

  v14 = v13 << 8 >> 24;
  if (v14 > 0x7F)
  {
    __maskrune(v14, 0x40000uLL);
    v13 = *(this + 55);
  }

  v15 = v13 >> 8;
  if (v15 > 0x7F)
  {
    __maskrune(v15, 0x40000uLL);
    v13 = *(this + 55);
  }

  if (v13 > 0x7F)
  {
    __maskrune(v13, 0x40000uLL);
  }

  _cg_jpeg_mem_term("initialize", 1288, "*** ERROR: '%c%c%c%c'-initialize failed [%d]\n");
  kdebug_trace();
LABEL_319:
  if (v194)
  {
    CFRelease(v194);
  }

  if (v211)
  {
    v185 = *(this + 3);
    if (v185)
    {
      IIOImageReadSession::releaseBytePointer(v185, v211);
    }
  }

  return v9;
}

BOOL IIO_Reader_PVR::testHeader(IIO_ReaderHandler *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierPVR)
  {
    if (a2[44] == 80 && a2[45] == 86 && a2[46] == 82 && a2[47] == 33)
    {
      v12 = *a2;
      if (v12 == 52)
      {
        return 1;
      }
    }

    else
    {
      v12 = *a2;
    }

    return v12 == 80 && a2[1] == 86 && a2[2] == 82 && a2[3] == 3;
  }

  if (v6 == kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x40)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v14 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784);
    if (!v14)
    {
      return 0;
    }

    v23 = *(a5 + 2);
    v22 = *a5;
    if (!(*(*v14 + 16))(v14, a2, a3, a4, &v22))
    {
      return 0;
    }

    v15 = *(a2 + 3);
    v16 = *(a2 + 4);
    v17 = bswap32(v16);
    v18 = bswap32(*(a2 + 7));
    v19 = v15 == 67305985;
    v20 = v15 == 67305985 ? *(a2 + 7) : v18;
    if (!v19)
    {
      v16 = v17;
    }

    return !v16 && (v20 & 0xFFFFFFFC) == 0x8C00;
  }

  if (a3 >= 0x50 && v6 == kCGImageTypeIdentifierKTX2)
  {
    v10 = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(v10, 1263818802);
    v23 = *(a5 + 2);
    v22 = *a5;
    if ((*(*v11 + 16))(v11, a2, a3, a4, &v22))
    {
      if (IsPVRTC1(*(a2 + 3)))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t IIO_Reader_HEIF::testHeader(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5 == kCGImageTypeIdentifierJPEG)
  {
    v15 = (*(a5 + 16) >> 4) & 3;
    if (v15)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (v15 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      if (v17 == 255 && *a2 == 255 && a2[1] == 216 && a2[2] == 255 && a2[3] == 224 && !a2[4] && a2[5] == 20 && a2[20] == 65 && a2[21] == 77 && a2[22] == 80 && a2[23] == 70)
      {
        return 1;
      }
    }

    else if (*a2 == 255 && a2[1] == 216 && a2[2] == 255)
    {
      return 1;
    }
  }

  else if (v5 == kCGImageTypeIdentifierJPEGXL)
  {
    if (a3 >= 0xC)
    {
      if (*a2 == 2815)
      {
        return 1;
      }

      if (*a2 == 0x204C584A0C000000 && *(a2 + 2) == 176622093)
      {
        return 1;
      }
    }
  }

  else
  {
    if (v5 != kCGImageTypeIdentifierDICOM)
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      IIOScanner::IIOScanner(v24, a2, a3, 0);
      Val32 = IIOScanner::getVal32(v24);
      v9 = IIOScanner::getVal32(v24);
      if (Val32 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = Val32;
      }

      if (v9 != 1718909296)
      {
LABEL_82:
        IIOScanner::~IIOScanner(v24);
        return 0;
      }

      v11 = IIOScanner::getVal32(v24);
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13 == kCGImageTypeIdentifierAVCI)
      {
        v14 = 1635148649;
        goto LABEL_57;
      }

      if (v13 == kCGImageTypeIdentifierHEIC)
      {
        if (v11 != 1751476579)
        {
          v14 = 1751476600;
          goto LABEL_57;
        }
      }

      else if (v13 == kCGImageTypeIdentifierHEICS)
      {
        if (v11 != 1751476600)
        {
          v14 = 1836279345;
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 != kCGImageTypeIdentifierHEIF)
        {
          if (v13 == kCGImageTypeIdentifierAVIF)
          {
            v14 = 1635150182;
          }

          else
          {
            if (v13 != kCGImageTypeIdentifierAVIS)
            {
LABEL_60:
              IIOScanner::getVal32(v24);
              if (v10 >= 0x11 && v10 - 16 >= 4)
              {
                v20 = (v10 - 16) >> 2;
                while (1)
                {
                  v21 = IIOScanner::getVal32(v24);
                  v22 = *(a1 + 8);
                  if (v22 == kCGImageTypeIdentifierAVCI)
                  {
                    if (v21 == 1635148649)
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v22 != kCGImageTypeIdentifierHEIC || v12 == 1836279345)
                  {
                    if (v22 == kCGImageTypeIdentifierHEICS)
                    {
                      if (v21 == 1751476600 || v21 == 1836279345)
                      {
                        goto LABEL_58;
                      }
                    }

                    else if (v22 == kCGImageTypeIdentifierHEIF && (v21 == 1785750887 || v21 == 1835623985))
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v21 == 1751476579 || v21 == 1751476600)
                  {
                    goto LABEL_58;
                  }

                  if (!--v20)
                  {
                    goto LABEL_82;
                  }
                }
              }

              goto LABEL_82;
            }

            v14 = 1635150195;
          }

LABEL_57:
          if (v11 == v14)
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }

        if (v11 != 1785750887)
        {
          v14 = 1835623985;
          goto LABEL_57;
        }
      }

LABEL_58:
      IIOScanner::~IIOScanner(v24);
      return 1;
    }

    if (a3 >= 0x84 && *(a2 + 32) == 1296255300)
    {
      return 1;
    }
  }

  return 0;
}

void sub_185E9F89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  IIOScanner::~IIOScanner(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E9F878);
}

uint64_t IIOImageRead::setGlobalInfoPtr(IIOImageRead *this, int a2, void *a3, void (*a4)(void *))
{
  pthread_mutex_lock((this + 88));
  v8 = *(this + 19);
  v9 = *(this + 20);
  if (v8 == v9)
  {
LABEL_5:
    v11 = *(this + 21);
    if (v9 >= v11)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<IIO_GlobalInfo>>(this + 152, v16);
      }

      v17 = 24 * v13;
      *v17 = a3;
      *(v17 + 8) = a4;
      *(v17 + 16) = a2;
      *(v17 + 20) = 0;
      v12 = 24 * v13 + 24;
      v18 = *(this + 19);
      v19 = *(this + 20) - v18;
      v20 = (24 * v13 - v19);
      memcpy(v20, v18, v19);
      v21 = *(this + 19);
      *(this + 19) = v20;
      *(this + 20) = v12;
      *(this + 21) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v9 = a3;
      *(v9 + 8) = a4;
      v12 = v9 + 24;
      *(v9 + 16) = a2;
      *(v9 + 20) = 0;
    }

    *(this + 20) = v12;
  }

  else
  {
    v10 = *(this + 19);
    while (*(v10 + 16) != a2)
    {
      v10 += 24;
      if (v10 == v9)
      {
        goto LABEL_5;
      }
    }

    (*(v10 + 8))(*v10);
    *v10 = a3;
    *(v10 + 8) = a4;
    *(v10 + 16) = a2;
    *(v10 + 20) = 0;
  }

  return pthread_mutex_unlock((this + 88));
}

void IIOString::IIOString(IIOString *this, const char *a2)
{
  *this = &unk_1EF4D41F0;
  *(this + 1) = 0;
  if (a2)
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  }

  else
  {
    LogWarning("IIOString", 525, "IIOString -- 'str' is nil\n");
    v3 = 0;
  }

  *(this + 2) = v3;
}

void ATXReadPlugin::~ATXReadPlugin(ATXReadPlugin *this)
{
  *this = &unk_1EF4D6428;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D6428;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);
}

void CommonASTCReadPlugin::~CommonASTCReadPlugin(CommonASTCReadPlugin *this)
{
  *this = &unk_1EF4DE518;
  v2 = *(this + 61);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

void IIOTextureHandler::~IIOTextureHandler(IIOTextureHandler *this)
{
  *this = &unk_1EF4DE4F8;
  if (*(this + 5))
  {
    IIOImageReadSession::unmapData(*(this + 6));
    CFRelease(*(this + 5));
  }

  *(this + 5) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

{
  IIOTextureHandler::~IIOTextureHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOTextureHandler::ReleaseTextureInfo(uint64_t this, void *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void ASTCTextureImp::~ASTCTextureImp(ASTCTextureImp *this)
{
  *this = &unk_1EF4D8FD0;
  v2 = *(this + 7);
  if (v2 && (*(this + 43) & 1) == 0)
  {
    free(v2);
  }

  *(this + 7) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    free(v3);
  }

  *(this + 9) = 0;
  if (*(this + 16))
  {
    v4 = *(this + 17);
    if (v4)
    {
      Source = CGImageSourceGetSource(v4);
      if (Source)
      {
        IIOImageReadSession::releaseBytePointer(Source, *(this + 16));
      }
    }

    *(this + 16) = 0;
  }

  v6 = *(this + 30);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 30) = 0;
  v7 = *(this + 17);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 17) = 0;
  pthread_mutex_destroy((this + 168));

  _cg_jpeg_mem_term(this, v8, v9);
}

{
  ASTCTextureImp::~ASTCTextureImp(this);

  JUMPOUT(0x186602850);
}

BOOL IIO_Reader_ASTC::testHeader(IIO_ReaderHandler *a1, _DWORD *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierASTC)
  {
    return *a2 == 1554098963;
  }

  if (v6 != kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x51)
    {
      return 0;
    }

    if (v6 != kCGImageTypeIdentifierKTX2)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818802);
    v21 = *(a5 + 2);
    v20 = *a5;
    return (*(*v11 + 16))(v11, a2, a3, a4, &v20) && IsASTC(a2[3]);
  }

  if (a3 < 0x41)
  {
    return 0;
  }

  v13 = IIO_ReaderHandler::GetReaderHandler(a1);
  v14 = IIO_ReaderHandler::readerForType(v13, 1263818784);
  if (!v14)
  {
    return 0;
  }

  v21 = *(a5 + 2);
  v20 = *a5;
  if (!(*(*v14 + 16))(v14, a2, a3, a4, &v20))
  {
    return 0;
  }

  v15 = a2[3];
  v16 = a2[4];
  v17 = bswap32(v16);
  if (v15 != 67305985)
  {
    v16 = v17;
  }

  if (v16)
  {
    return 0;
  }

  v18 = bswap32(a2[7]);
  v19 = v15 == 67305985 ? a2[7] : v18;
  result = 1;
  if (v19 >> 2 != 8855 && v19 - 37886 >= 0x10 && v19 - 37808 >= 0xE && v19 - 37840 >= 0xE)
  {
    return 0;
  }

  return result;
}

uint64_t IIO_Reader_ETC::testHeader(IIO_Reader_ETC *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = *(a1 + 1);
  if (v7 == kCGImageTypeIdentifierBC)
  {
    if (a3 < 0x80 || !IIO_Reader_ETC::isInDDSContainer(a1, a2))
    {
      return 0;
    }

    v12 = bswap32(*(a2 + 21));
    v13 = v12 - 1146639409 < 5 || v12 == 1146630448;
    return v13 || !v12 && (a2[80] & 0x40) != 0;
  }

  if (v7 == kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x40)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v15 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784);
    if (!v15)
    {
      return 0;
    }

    v22 = *(a5 + 2);
    v21 = *a5;
    if (!(*(*v15 + 16))(v15, a2, a3, a4, &v21))
    {
      return 0;
    }

    v16 = *(a2 + 4);
    v17 = bswap32(v16);
    v18 = bswap32(*(a2 + 7));
    if (*(a2 + 3) == 67305985)
    {
      v19 = *(a2 + 7);
    }

    else
    {
      v16 = v17;
      v19 = v18;
    }

    return !v16 && v19 - 37498 >= 0xFFFFFFF6;
  }

  if (a3 >= 0x50 && v7 == kCGImageTypeIdentifierKTX2)
  {
    v10 = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(v10, 1263818802);
    v22 = *(a5 + 2);
    v21 = *a5;
    if ((*(*v11 + 16))(v11, a2, a3, a4, &v21))
    {
      if (IsETC(*(a2 + 3)))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t IIO_Reader_HEIF::getImageCount(IIO_Reader_HEIF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  IIO_LoadHEIFSymbols();
  v9 = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (!v9)
  {
    operator new();
  }

  v10 = (*(*this + 272))(this, v9, a2, a3);
  if (v10 << 16)
  {
    v12 = v10;
    LogError("getImageCount", 1154, "*** ERROR: extractImageInfo failed: %d\n", v10);
    NumberOfMainImages = 0;
    if (!a5)
    {
      return v12;
    }

    goto LABEL_4;
  }

  NumberOfMainImages = GlobalHEIFInfo::getNumberOfMainImages(v9);
  v12 = 0;
  if (a5)
  {
LABEL_4:
    *a5 = NumberOfMainImages;
  }

  return v12;
}

void GlobalHEIFInfo::GlobalHEIFInfo(GlobalHEIFInfo *this)
{
  *this = &unk_1EF4DDA80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::vector<_APPx *>::resize(this + 1, 0);
  std::vector<_APPx *>::resize(this + 4, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
}

void sub_185EA0334(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_APPx *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<_APPx *>::__append(result, a2 - v2);
  }
}

BOOL IIODictionary::containsKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v6, a2);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = CFDictionaryContainsKey(v3, key) != 0;
  }

  else
  {
    v4 = 0;
  }

  IIOString::~IIOString(v6);
  return v4;
}

void sub_185EA03F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_HEIF::extractImageInfo(IIO_Reader_HEIF *this, GlobalHEIFInfo *a2, IIOImageReadSession *a3, IIODictionary *a4)
{
  v47[0] = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  IIOScanner::IIOScanner(&v42, a3);
  if (GlobalHEIFInfo::getNumberOfMainImages(a2))
  {
    v6 = 0;
  }

  else
  {
    v7 = IIOCreateCMPhotoDecompressionSession(v47);
    v6 = v7;
    if (v7)
    {
      IIOCMErrorString(v7);
      _cg_jpeg_mem_term("extractImageInfo", 470, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
    }

    else
    {
      cf = 0;
      v41 = 0;
      v39 = 0;
      v8 = *(&v42 + 1);
      Uint32ForKey = v43;
      if (a4 && IIODictionary::containsKey(a4, @"JPEGOffset"))
      {
        Uint32ForKey = IIODictionary::getUint32ForKey(a4, @"JPEGLength");
        v8 += IIODictionary::getUint32ForKey(a4, @"JPEGOffset");
      }

      v6 = 0;
      v10 = 0;
      if (Uint32ForKey && v8)
      {
        v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v8, Uint32ForKey, *MEMORY[0x1E695E498]);
        if (v10)
        {
          v6 = gFunc_CMPhotoDecompressionSessionCreateContainer(v47[0], 0, v10, &v39, &v41);
          if (v6 || !v41)
          {
            IIOCMErrorString(v6);
            _cg_jpeg_mem_term("extractImageInfo", 509, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
          }

          else
          {
            theDict = 0;
            v11 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(v41, &theDict);
            v6 = v11;
            if (v11)
            {
              IIOCMErrorString(v11);
              _cg_jpeg_mem_term("extractImageInfo", 522, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n");
            }

            else
            {
              memset(v37, 0, sizeof(v37));
              IIODictionary::IIODictionary(v37, theDict);
              if (IIODictionary::containsKey(v37, *gIIO_kCMPhotoDecompressionContainerDescription_GroupsList))
              {
                value[0] = 0;
                CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_GroupsList, value);
                theArray[0] = 0;
                if (gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray)
                {
                  v6 = gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray(v41, theArray);
                }

                else
                {
                  _cg_jpeg_mem_term("extractImageInfo", 543, "*** ERROR: Symbol 'CMPhotoDecompressionContainerCopyGroupsDescriptionArray' not loaded\n");
                  v6 = 0;
                }

                Count = CFArrayGetCount(value[0]);
                if (theArray[0])
                {
                  v13 = CFArrayGetCount(theArray[0]);
                }

                else
                {
                  v13 = 0;
                }

                if (Count >= 1)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    if (CFArrayGetValueAtIndex(value[0], i))
                    {
                      if (i < v13)
                      {
                        CFArrayGetValueAtIndex(theArray[0], i);
                      }

                      operator new();
                    }
                  }
                }

                if (theArray[0])
                {
                  CFRelease(theArray[0]);
                }
              }

              else
              {
                v6 = 0;
              }

              if (IIODictionary::containsKey(v37, *gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount))
              {
                v15 = IIODictionary::getUint32ForKey(v37, *gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount) != 0;
              }

              else
              {
                v15 = 0;
              }

              if ((GlobalHEIFInfo::useHEIFSequence(a2) & v15) == 1)
              {
                v36 = 0;
                GlobalHEIFInfo::setHasHEIFSequence(a2, 1);
                SequenceCount = gFunc_CMPhotoDecompressionContainerGetSequenceCount(v41, &v36);
                if (SequenceCount)
                {
                  IIOCMErrorString(SequenceCount);
                  _cg_jpeg_mem_term("extractImageInfo", 582, "*** CMPhotoDecompressionContainerGetSequenceCount  err = %s [%d]\n");
                }

                v17 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v41, 0, v36 - 1, &cf);
                if (v17)
                {
                  IIOCMErrorString(v17);
                  _cg_jpeg_mem_term("extractImageInfo", 588, "*** CMPhotoDecompressionContainerCreateSequenceContainer  err = %s [%d]\n");
                }

                v35 = 0;
                v18 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(cf, &v35);
                v6 = v18;
                if (v18)
                {
                  IIOCMErrorString(v18);
                  _cg_jpeg_mem_term("extractImageInfo", 599, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n");
                }

                if (v35)
                {
                  v34 = 0;
                  CFDictionaryGetValueIfPresent(v35, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, &v34);
                  v19 = CFDictionaryGetValue(v35, *gIIO_kCMPhotoDecompressionContainerDescription_LoopCount);
                  if (v19)
                  {
                    IIONumber::IIONumber(value, v19);
                    if (IIONumber::uint64Num(value) > 0xFFFFFFFE)
                    {
                      LODWORD(v19) = -1;
                    }

                    else
                    {
                      IIONumber::IIONumber(theArray, v19);
                      LODWORD(v19) = IIONumber::uint64Num(theArray);
                      IIONumber::~IIONumber(theArray);
                    }

                    IIONumber::~IIONumber(value);
                  }

                  GlobalHEIFInfo::setLoopCount(a2, v19);
                  v26 = CFArrayGetCount(v34);
                  value[0] = 0;
                  CFDictionaryGetValueIfPresent(v35, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceTracksDescription, value);
                  if (v26 >= 1)
                  {
                    for (j = 0; j != v26; ++j)
                    {
                      if (CFArrayGetValueAtIndex(v34, j))
                      {
                        theArray[0] = 0;
                        v28 = gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(cf, j, 0, theArray);
                        if ((v28 + 16994) >= 2 && v28 != 0)
                        {
                          IIOCMErrorString(v28);
                          _cg_jpeg_mem_term("extractImageInfo", 628, "*** CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions  err = %s [%d]\n");
                        }

                        operator new();
                      }
                    }
                  }

                  CFRelease(v35);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }
              }

              else
              {
                value[0] = 0;
                CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, value);
                if (value[0])
                {
                  v20 = CFArrayGetCount(value[0]);
                  if (v20 >= 1)
                  {
                    for (k = 0; k != v20; ++k)
                    {
                      if (CFArrayGetValueAtIndex(value[0], k))
                      {
                        LODWORD(v36) = 0;
                        theArray[0] = 0;
                        v22 = gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(v41, k, 0, theArray);
                        if ((v22 + 16994) >= 2 && v22 != 0)
                        {
                          IIOCMErrorString(v22);
                          _cg_jpeg_mem_term("extractImageInfo", 671, "*** CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions  err = %s [%d]\n");
                        }

                        ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v41, k, 0, 0, 0, &v36);
                        if (ImageGeometryForIndexWithOptions != -16993 && ImageGeometryForIndexWithOptions != 0)
                        {
                          IIOCMErrorString(ImageGeometryForIndexWithOptions);
                          _cg_jpeg_mem_term("extractImageInfo", 677, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n");
                        }

                        operator new();
                      }
                    }
                  }
                }
              }

              theArray[0] = 0;
              CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_PrimaryImageIndex, theArray);
              if (theArray[0])
              {
                IIONumber::IIONumber(value, theArray[0]);
                v30 = IIONumber::uint32Num(value);
                GlobalHEIFInfo::setPrimaryImageIndex(a2, v30);
                IIONumber::~IIONumber(value);
              }

              IIODictionary::~IIODictionary(v37);
            }

            if (theDict)
            {
              CFRelease(theDict);
            }

            CFRelease(v41);
          }
        }

        else
        {
          v6 = 0;
        }
      }

      gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v47[0], 0, 0);
      CFRelease(v47[0]);
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  IIOScanner::~IIOScanner(&v42);
  return v6;
}

void sub_185EA0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  IIODictionary::~IIODictionary(&a20);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

CFDataRef IIOImageRead::copyData(IIOImageRead *this)
{
  v13 = 0;
  pthread_mutex_lock((this + 376));
  v2 = *(this + 4);
  if (*(this + 67) != 1)
  {
    if (!v2)
    {
      if (*(this + 6) == -1)
      {
        v11 = *(this + 5);
        if (v11)
        {
          v3 = CGDataProviderCopyData(v11);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(this + 10);
        if (v6)
        {
          v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
          BytesAtOffset = IIOImageRead::getBytesAtOffset(this, v7, 0, *(this + 10), 1);
          v12 = *byte_1EF4DBB08;
          v9 = *MEMORY[0x1E695E480];
          v10 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v12);
          v4 = CFDataCreateWithBytesNoCopy(v9, v7, BytesAtOffset, v10);
          CFRelease(v10);
          goto LABEL_7;
        }
      }

      v4 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    v3 = CFRetain(v2);
    goto LABEL_6;
  }

  v3 = IIOImageRead::createDataWithMappedFile(this, 0, &v13);
LABEL_6:
  v4 = v3;
LABEL_7:
  pthread_mutex_unlock((this + 376));
  return v4;
}

uint64_t GlobalHEIFInfo::getNumberOfMainImages(GlobalHEIFInfo *this)
{
  v1 = (*(this + 2) - *(this + 1)) >> 3;
  if (*(this + 72))
  {
    return v1;
  }

  else
  {
    return v1 != 0;
  }
}

uint64_t HEIFMainImage::HEIFMainImage(uint64_t a1, uint64_t a2, int a3, __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, int a7)
{
  *a1 = &unk_1EF4DDA60;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  memset(v50, 0, sizeof(v50));
  IIODictionary::IIODictionary(v50, a4);
  *(a1 + 160) = 0u;
  v12 = (a1 + 160);
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = a3;
  *(a1 + 172) = 8;
  if (a6)
  {
    value[0] = 0;
    CFDictionaryGetValueIfPresent(a6, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, value);
    if (value[0] && CFArrayGetCount(value[0]))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value[0], 0);
      v48 = 0uLL;
      v49 = 0;
      IIODictionary::IIODictionary(&v48, ValueAtIndex);
      *(a1 + 164) = IIODictionary::getUint32ForKeyGroup(&v48, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
      *(a1 + 168) = IIODictionary::getUint32ForKeyGroup(&v48, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
      IIODictionary::~IIODictionary(&v48);
    }
  }

  else
  {
    *(a1 + 164) = IIODictionary::getUint32ForKeyGroup(v11, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(a1 + 168) = IIODictionary::getUint32ForKeyGroup(v50, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
    {
      ObjectForKey = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
      v48 = 0uLL;
      v49 = 0;
      IIOArray::IIOArray(&v48, ObjectForKey);
      if (IIOArray::getCount(&v48))
      {
        *(a1 + 172) = IIOArray::getUint32AtIndex(&v48, 0);
      }

      IIOArray::~IIOArray(&v48);
    }
  }

  *(a1 + 200) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ItemID);
  *(a1 + 180) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(a1 + 184) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  *(a1 + 196) = a7;
  if ((a7 & 0x80000000) == 0)
  {
    *(a1 + 280) = IIODictionary::getBoolForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers);
    v15 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDuration);
    v48 = 0uLL;
    v49 = 0;
    gFunc_CMTimeMakeFromDictionary(&v48, v15);
    *value = v48;
    v47 = v49;
    *(a1 + 272) = gFunc_CMTimeGetSeconds(value);
  }

  *(a1 + 296) = 0;
  v16 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_NamedColorSpace);
  *(a1 + 288) = v16;
  if (v16)
  {
    v17 = CFRetain(v16);
LABEL_13:
    *(a1 + 288) = v17;
    goto LABEL_14;
  }

  v41 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ColorSpace);
  v42 = v41;
  if (!v41)
  {
    v17 = CFRetain(*MEMORY[0x1E695F1C0]);
    goto LABEL_13;
  }

  v43 = CGColorSpaceCopyName(v41);
  *(a1 + 288) = v43;
  if (!v43)
  {
    *(a1 + 296) = CGColorSpaceRetain(v42);
  }

LABEL_14:
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions))
  {
    *(a1 + 188) = IIODictionary::getUint32ForKeyGroup(v50, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions);
    *(a1 + 192) = IIODictionary::getUint32ForKeyGroup(v50, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions);
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages))
  {
    v18 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages);
    v19 = v18;
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          if (CFArrayGetValueAtIndex(v19, i))
          {
            operator new();
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages))
  {
    v22 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages);
    v23 = v22;
    if (v22)
    {
      v24 = CFArrayGetCount(v22);
      if (v24 >= 1)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = CFArrayGetValueAtIndex(v23, j);
          if (v26)
          {
            v27 = CFDictionaryGetValue(v26, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
            if (!v27 || CFStringCompare(v27, @"http://ns.adobe.com/hdr-gain-map/1.0/", 0))
            {
              operator new();
            }

            _cg_jpeg_mem_term("HEIFMainImage", 1739, "❌ skipping 'http://ns.adobe.com/hdr-gain-map/1.0/'");
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads))
  {
    v28 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads);
    v29 = v28;
    if (v28)
    {
      v30 = CFArrayGetCount(v28);
      if (v30 >= 1)
      {
        for (k = 0; k != v30; ++k)
        {
          if (CFArrayGetValueAtIndex(v29, k))
          {
            operator new();
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages))
  {
    v32 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages);
    v33 = v32;
    if (v32)
    {
      v34 = CFArrayGetCount(v32);
      if (v34 >= 1)
      {
        for (m = 0; m != v34; ++m)
        {
          v36 = CFArrayGetValueAtIndex(v33, m);
          v48 = 0uLL;
          v49 = 0;
          IIODictionary::IIODictionary(&v48, v36);
          Uint32ForKey = IIODictionary::getUint32ForKey(&v48, *gIIO_kCMPhotoDecompressionContainerDescription_ItemType);
          if (!Uint32ForKey)
          {
            Uint32ForKey = IIODictionary::getUint32ForKey(&v48, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
          }

          if (Uint32ForKey == 1953325424)
          {
            operator new();
          }

          IIODictionary::~IIODictionary(&v48);
        }
      }
    }
  }

  *(a1 + 204) = 0;
  gFunc_CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions(a2, *(a1 + 160), 0);
  *&v48 = 0;
  if (gFunc_CMPhotoDecompressionContainerGetExifCountForIndexWithOptions(a2, *v12, 0, &v48))
  {
    v38 = 1;
  }

  else
  {
    v38 = v48 < 1;
  }

  if (!v38)
  {
    operator new();
  }

  if (a5)
  {
    operator new();
  }

  value[0] = 0;
  if (gFunc_CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions(a2, *v12, 0, value))
  {
    v39 = 1;
  }

  else
  {
    v39 = value[0] < 1;
  }

  if (!v39)
  {
    operator new();
  }

  HEIFMainImage::extractISO5Metadata(a1, v50);
  IIODictionary::~IIODictionary(v50);
  return a1;
}