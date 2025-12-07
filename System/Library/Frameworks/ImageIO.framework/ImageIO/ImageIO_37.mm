void sub_186089FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v19 - 120));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyIOSurfaceImp(uint64_t a1, uint64_t a2, __CFDictionary *a3, __IOSurface **a4, uint64_t *a5)
{
  v56 = 0;
  v57[0] = 0;
  v54 = 0;
  v55 = 0;
  IIODictionary::IIODictionary(&v54, a3);
  IIO_LoadHEIFSymbols();
  v9 = *(a1 + 24);
  if (!v9)
  {
    updated = 4294967246;
    goto LABEL_12;
  }

  v10 = IIOImageReadSession::mapData(v9);
  v53 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3806, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v11 = IIOCreateCMPhotoDecompressionSession(&v53);
  updated = v11;
  if (v11)
  {
    IIOCMErrorString(v11);
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3813, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
    goto LABEL_6;
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v16 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v49, 1);
  v17 = v16;
  if (!v16)
  {
    LogError("copyIOSurfaceImp", 3828, "*** ERROR: retainBytePointer failed\n");
    updated = 4294967277;
    goto LABEL_6;
  }

  v18 = *(a1 + 488);
  if (v18)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v18 = 0;
    }

    v17 = v16 + v18;
  }

  v42 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
  if (!v42)
  {
    updated = 0;
LABEL_111:
    CFRelease(v53);
    if (v42)
    {
      CFRelease(v42);
    }

    if (v49)
    {
      v41 = *(a1 + 24);
      if (v41)
      {
        IIOImageReadSession::releaseBytePointer(v41, v49);
      }
    }

    goto LABEL_6;
  }

  v19 = gFunc_CMPhotoDecompressionSessionCreateContainer(v53, 0, v42, &v50, &v52);
  v20 = v19;
  if (v19 || !v52)
  {
    IIOCMErrorString(v19);
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3844, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
    if (v20)
    {
      updated = v20;
    }

    else
    {
      updated = 4294967246;
    }

    goto LABEL_111;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  IIODictionary::IIODictionary(&v46);
  v21 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v21))
  {
    v22 = GlobalHEIFInfo::useHEIFSequence(v21);
  }

  else
  {
    v22 = 0;
  }

  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v21, *(a1 + 532));
  if (HEIFMainImageAtIndex)
  {
    v45 = 0;
    if ((*(a1 + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v52, *(a1 + 532), 0, &v45), (DecodePixelFormatForBitDepth = v45) == 0))
    {
      v25 = HEIFMainImage::bitDepth(HEIFMainImageAtIndex);
      DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v25);
    }

    HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v46, *(a1 + 48));
    IIONumber::IIONumber(v44, DecodePixelFormatForBitDepth);
    IIODictionary::setObjectForKey(&v46, v44, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
    IIONumber::~IIONumber(v44);
    HEIFReadPlugin::updateCreateImageOptions(a1, &v46, *(a1 + 48));
    if (IIODictionary::containsKey(&v54, @"kCGImageSurfaceFormatRequest") && (*(a1 + 520) & 1) == 0 && (*(a1 + 521) & 1) == 0)
    {
      DecodePixelFormatForBitDepth = IIODictionary::getUint32ForKey(&v54, @"kCGImageSurfaceFormatRequest");
      IIONumber::IIONumber(v44, DecodePixelFormatForBitDepth);
      IIODictionary::setObjectForKey(&v46, v44, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
      IIONumber::~IIONumber(v44);
    }

    if (v22)
    {
      v26 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v52, 0, 0, &v51);
      updated = v26;
      if (v26)
      {
        IIOCMErrorString(v26);
        _cg_jpeg_mem_term("copyIOSurfaceImp", 3887, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n");
      }

      else
      {
        if (*(a1 + 232) < 2u || (*(a1 + 526) & 1) != 0)
        {
          ImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v51, *(a1 + 532), v47, 1, v57);
        }

        else
        {
          ImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v51, *(a1 + 532), 0, v47, 1, v57);
        }

        updated = ImageForIndex;
        v27 = IIO_IOSurfaceLogAlphaInfo(v57[0], "HEIFSequence");
      }
    }

    else
    {
      if (*(a1 + 232) != 2 || (*(a1 + 526) & 1) != 0 || *(a1 + 488))
      {
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v52, *(a1 + 532), v47, 1, v57);
      }

      else
      {
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v52, *(a1 + 532), 0, v47, 1, v57);
      }

      updated = ThumbnailImageForIndex;
      v27 = IIO_IOSurfaceLogAlphaInfo(v57[0], "HEIF decode");
    }

    if (updated)
    {
      if (updated == -15470 && a2)
      {
        CGImageProviderSetProperty();
      }

      IIOCMErrorString(updated);
      _cg_jpeg_mem_term("copyIOSurfaceImp", 3934, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n");
      if ((DecodePixelFormatForBitDepth >> 24) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth >> 24, 0x40000uLL);
      }

      if ((DecodePixelFormatForBitDepth << 8 >> 24) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth << 8 >> 24, 0x40000uLL);
      }

      if ((DecodePixelFormatForBitDepth >> 8) > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth >> 8, 0x40000uLL);
      }

      if (DecodePixelFormatForBitDepth > 0x7F)
      {
        __maskrune(DecodePixelFormatForBitDepth, 0x40000uLL);
      }

      _cg_jpeg_mem_term("copyIOSurfaceImp", 3935, "    outputPixelFormat: %c%c%c%c\n");
      ImageIODebugOptionsDictionary(v47);
      goto LABEL_108;
    }

    if (gFunc_CMPhotoDecompressionSessionDetachSurface)
    {
      v27 = gFunc_CMPhotoDecompressionSessionDetachSurface(v53, v57[0]);
      updated = v27;
    }

    else
    {
      updated = 0;
    }

    if (*(a1 + 520) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n");
      }

      SurfaceWithGainMapApplied = HEIFReadPlugin::createSurfaceWithGainMapApplied(a1, v52, v29, v21, v57[0]);
      v34 = SurfaceWithGainMapApplied;
      if ((gIIODebugFlags & 0x2000000) != 0)
      {
        LogSurfaceFormat(SurfaceWithGainMapApplied, "outputSurface", "copyIOSurfaceImp", 3949);
      }

      if (v34)
      {
LABEL_80:
        CFRelease(v57[0]);
        v57[0] = v34;
      }
    }

    else if (*(a1 + 521) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v27 = ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n");
      }

      SurfaceWithToneMapApplied = HEIFReadPlugin::createSurfaceWithToneMapApplied(v27, v28, v29, v30, v57[0], *(a1 + 464), *(a1 + 544), *(a1 + 525));
      v34 = SurfaceWithToneMapApplied;
      if ((gIIODebugFlags & 0x2000000) != 0)
      {
        LogSurfaceFormat(SurfaceWithToneMapApplied, "outputSurface", "copyIOSurfaceImp", 3960);
      }

      if (v34)
      {
        goto LABEL_80;
      }
    }

    else if ((*(a1 + 192) & 1) == 0 && (gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  no apply / no tone mapping / no compute stats [%p]\n", a1);
    }

    if (*(a1 + 192) != 1)
    {
      goto LABEL_98;
    }

    v36 = *(a1 + 352);
    v37 = gIIODebugFlags & 0x300000;
    if (v36 == 0.0)
    {
      if (v37)
      {
        ImageIOLog("☀️  _computeHDRStats --> IIOCallComputeHDRStats\n");
      }

      cf = 0;
      IIONumber::IIONumber(v44, *(a1 + 525));
      IIODictionary::setObjectForKey(&v54, v44, @"kCGDisableMetal");
      IIONumber::~IIONumber(v44);
      updated = IIOCallComputeHDRStats(v57[0], 0, 0, &cf, v55);
      if (!updated)
      {
        *(a1 + 360) = 1;
      }

      memset(v44, 0, sizeof(v44));
      IIODictionary::IIODictionary(v44, cf);
      *(a1 + 352) = IIODictionary::getFloatForKey(v44, @"kCGContentBrightness");
      FloatForKey = IIODictionary::getFloatForKey(v44, @"kCGContentHeadroom");
      *(a1 + 356) = FloatForKey;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  HDR Stats: headroom=%g brightness=%g  (%g)", FloatForKey, *(a1 + 352), *(a1 + 352) * 203.0);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      IIODictionary::~IIODictionary(v44);
    }

    else if (v37)
    {
      ImageIOLog("☀️  HDR Stats(cached): headroom=%g brightness=%g  (%g)", *(a1 + 356), v36, v36 * 203.0);
    }

    if (!CGImageProviderGetContentAverageLightLevelNits())
    {
      CGImageProviderSetContentAverageLightLevelNits();
      v39 = v21;
    }

    else
    {
LABEL_98:
      v39 = v21;
    }

    if (!a5)
    {
      goto LABEL_105;
    }

    if (*(a1 + 523) == 1)
    {
      v40 = HEIFReadPlugin::copyISOGainMapDictionary(a1, v52, v39, &v54);
    }

    else
    {
      if (*(a1 + 522) != 1)
      {
        goto LABEL_105;
      }

      v40 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, v52, v39, &v54);
    }

    *a5 = v40;
LABEL_105:
    if (updated)
    {
      IIOCMErrorString(updated);
      _cg_jpeg_mem_term("copyIOSurfaceImp", 4018, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n");
    }

    else
    {
      updated = IIO_UpdateIOSurfaceOwnershipIdentity(v57[0]);
    }

LABEL_108:
    if (v51)
    {
      CFRelease(v51);
    }

    CFRelease(v52);
    IIODictionary::~IIODictionary(&v46);
    goto LABEL_111;
  }

  LogError("copyIOSurfaceImp", 3858, "*** ERROR: failed to get mainImage [#%d]\n", *(a1 + 532));
  IIODictionary::~IIODictionary(&v46);
  updated = 4294967246;
LABEL_6:
  if (v10)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      IIOImageReadSession::unmapData(v13);
    }
  }

  if (a4)
  {
    *a4 = v57[0];
  }

LABEL_12:
  IIODictionary::~IIODictionary(&v54);
  return updated;
}

void sub_18608AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v19 - 120));
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGReadPlugin::loadDataFromXPCObject(AppleJPEGReadPlugin *this, void *a2)
{
  DataFromXPCObject = JPEGReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_applejpeg", &length);
    if (length == 184)
    {
      DataFromXPCObject = 0;
      v6 = *data;
      v7 = data[1];
      v8 = data[3];
      *(this + 35) = data[2];
      *(this + 36) = v8;
      *(this + 33) = v6;
      *(this + 34) = v7;
      v9 = data[4];
      v10 = data[5];
      v11 = data[7];
      *(this + 39) = data[6];
      *(this + 40) = v11;
      *(this + 37) = v9;
      *(this + 38) = v10;
      v12 = data[8];
      v13 = data[9];
      v14 = data[10];
      *(this + 88) = *(data + 22);
      *(this + 42) = v13;
      *(this + 43) = v14;
      *(this + 41) = v12;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    *(this + 86) = 0;
    *(this + 42) = 0u;
    *(this + 33) = 0u;
    *(this + 34) = 0u;
    *(this + 35) = 0u;
    *(this + 36) = 0u;
    *(this + 37) = 0u;
    *(this + 38) = 0u;
    *(this + 39) = 0u;
    *(this + 40) = 0u;
    *(this + 82) = 0;
    IIOImageReadSession::seek(*(this + 3), *(this + 60), 0);
  }

  return DataFromXPCObject;
}

uint64_t AppleJPEGReadPlugin::saveDataToXPCObject(AppleJPEGReadPlugin *this, void *a2)
{
  v4 = JPEGReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_applejpeg", this + 528, 0xB8uLL);
  }

  return v4;
}

const char *AppleJPEGReadPlugin::appleJPEGErrorString(AppleJPEGReadPlugin *this, int a2)
{
  if ((a2 + 2) > 0xE)
  {
    return "";
  }

  else
  {
    return off_1E6F0B638[a2 + 2];
  }
}

void AppleJPEGReadPlugin::create_or_restoreIndexTable(void *a1, uint64_t a2)
{
  if (a1[82] && a1[83])
  {
    v2 = applejpeg_decode_set_ra_table();
    if (!v2)
    {
      return;
    }

    AppleJPEGReadPlugin::appleJPEGErrorString(v2, v2);
    v3 = "    applejpeg_decode_set_ra_table err = %d '%s'\n";
    v4 = 251;
  }

  else
  {
    v5 = applejpeg_decode_set_option_buildindex();
    if (!v5)
    {
      return;
    }

    AppleJPEGReadPlugin::appleJPEGErrorString(v5, v5);
    v3 = "    applejpeg_decode_set_option_buildindex err = %d '%s'\n";
    v4 = 258;
  }

  _cg_jpeg_mem_term("create_or_restoreIndexTable", v4, v3);
}

void AppleJPEGReadPlugin::save_index_table(AppleJPEGReadPlugin *this)
{
  if (!*(this + 82))
  {
    ra_table_sz = applejpeg_decode_get_ra_table_sz();
    *(this + 83) = ra_table_sz;
    if (ra_table_sz)
    {
      *(this + 82) = malloc_type_malloc(ra_table_sz, 0x100004077774924uLL);
      v3 = applejpeg_decode_dump_ra_table();
      if (v3)
      {
        AppleJPEGReadPlugin::appleJPEGErrorString(v3, v3);
        _cg_jpeg_mem_term("save_index_table", 276, "err = %d '%s'\n");
      }
    }
  }
}

void AppleJPEGReadPlugin::readQualityPropertiesFromJPEG(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = 0;
      v6 = *MEMORY[0x1E695E738];
      do
      {
        CFArraySetValueAtIndex(v4, v5++, v6);
      }

      while (v5 != 4);
      memset(v17, 0, 64);
      memset(v16, 0, sizeof(v16));
      memset(v15, 0, sizeof(v15));
      memset(v14, 0, sizeof(v14));
      v13[0] = v14;
      v13[1] = v15;
      v13[2] = v16;
      v13[3] = v17;
      v11 = 0;
      v12 = 0;
      if (!applejpeg_decode_get_qtables())
      {
        IIODictionary::setObjectForKeyGroup(a3, v4, @"Quantization", @"{JPEG}");
      }

      CFRelease(v4);
    }

    chroma_subsampling = applejpeg_decode_get_chroma_subsampling();
    *(a1 + 700) = chroma_subsampling;
    if (chroma_subsampling <= 3)
    {
      v8 = dword_186225A70[chroma_subsampling];
      IIONumber::IIONumber(v14, dword_186225A60[chroma_subsampling]);
      IIODictionary::setObjectForKeyGroup(a3, v14, @"ChromaSubsamplingX", @"{JPEG}");
      IIONumber::~IIONumber(v14);
      IIONumber::IIONumber(v14, v8);
      IIODictionary::setObjectForKeyGroup(a3, v14, @"ChromaSubsamplingY", @"{JPEG}");
      IIONumber::~IIONumber(v14);
    }
  }
}

void sub_18608B0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGReadPlugin::copyImageBlockSetSingleTile(uint64_t a1, const void *a2, const void *a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, _DWORD *a11)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0;
  *a11 = 0;
  if (a3)
  {
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    PixelSize = *(a1 + 324);
    if (PixelSize == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "copyImageBlockSetSingleTile", 2286);
  }

  *(a1 + 308) = a6;
  *(a1 + 312) = a7;
  *(a1 + 316) = (a6 * PixelSize);
  *(a1 + 104) = 1;
  IIOReadPlugin::debugCopyBlockSet(a1, a3, a4, a5, a6, a7, a8, a9);
  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  applejpeg_decode_clear_options();
  if (applejpeg_decode_set_option_outformat())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2329, "err = %d\n");
  }

  if (applejpeg_decode_set_option_outsize())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2342, "err = %d\n");
  }

  v36 = *(a1 + 316);
  v37 = v36;
  v38 = v36;
  v39 = v36;
  if (applejpeg_decode_set_option_stride())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2350, "err = %d\n");
  }

  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::create_or_restoreIndexTable(a1, *(a1 + 528));
  }

  if (applejpeg_decode_set_option_mosquito_spray())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2382, "applejpeg_decode_set_option_mosquito_spray err = %d\n");
  }

  if (applejpeg_decode_set_option_multithread())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2389, "applejpeg_decode_set_option_multithread err = %d\n");
  }

  if (applejpeg_decode_set_option_crop())
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2421, "err = %d\n");
  }

  applejpeg_decode_set_option_error_fill();
  output_dimensions = applejpeg_decode_get_output_dimensions();
  if (output_dimensions)
  {
    v23 = output_dimensions;
    AppleJPEGReadPlugin::appleJPEGErrorString(output_dimensions, output_dimensions);
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2434, "*** ERROR: applejpeg_decode_get_output_dimensions - error %d (%s)\n");
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Options error %d\n", "copyImageBlockSetSingleTile", 2435, v23);
    }

    v24 = 0;
  }

  else
  {
    applejpeg_decode_get_output_buffer_size();
    if (*(a1 + 316))
    {
      _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2444, "*** ERROR: get_output_buffer_size rb=%d  blockGeo.rb=%d\n");
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: applejpeg_decode_get_output_buffer_size:%ld rowB:%ld size:%ldx%ld\n", "copyImageBlockSetSingleTile", 2446, 0, 0, 0, 0);
    }

    v24 = _ImageIO_Malloc(0, *(a1 + 416), &v35, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
    if (v24)
    {
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Got outbuf\n", "copyImageBlockSetSingleTile", 2455);
      }

      v26 = applejpeg_decode_image_all();
      if (!v26)
      {
        goto LABEL_60;
      }

      v27 = v26;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Decode error %d\n", "copyImageBlockSetSingleTile", 2462, v26);
      }

      if (v27 == 9 || v27 == -1)
      {
LABEL_60:
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: Decoded image\n", "copyImageBlockSetSingleTile", 2469);
        }

        v41.origin.x = a4;
        v41.origin.y = a5;
        v41.size.width = a6;
        v41.size.height = a7;
        **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v24, v35, v41, *(a1 + 316), 0);
        v28 = CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]);
        v29 = a6;
        v30 = a7;
        if (!v28)
        {
          v42.origin.x = a4;
          v42.origin.y = a5;
          v42.size.width = a6;
          v42.size.height = a7;
          *(&v29 - 2) = CGRectUnion(*(a1 + 120), v42);
          a4 = v31;
          a5 = v32;
        }

        *(a1 + 120) = a4;
        *(a1 + 128) = a5;
        *(a1 + 136) = v29;
        *(a1 + 144) = v30;
        if (*(a1 + 369) == 1)
        {
          AppleJPEGReadPlugin::save_index_table(a1);
        }

        v24 = 0;
        if (a3)
        {
          v33 = *(a1 + 104);
          if (v33)
          {
            v25 = IIOReadPlugin::imageBlockSetCreate(a1, a3, v33, *(a1 + 96), a2, a6, a7, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
            v24 = 0;
LABEL_29:
            IIOReadPlugin::freeBlockArray(a1);
            if (!v24)
            {
              return v25;
            }

            goto LABEL_54;
          }
        }
      }
    }
  }

  if (a3)
  {
    v25 = 0;
    goto LABEL_29;
  }

  if (!*(a1 + 104))
  {
    v25 = 0;
    if (!v24)
    {
      return v25;
    }

    goto LABEL_54;
  }

  v25 = 0;
  *a11 = 1;
  if (v24)
  {
LABEL_54:
    _ImageIO_Free(v24, v35);
  }

  return v25;
}

uint64_t AppleJPEGReadPlugin::copyImageBlockSetTiles(uint64_t a1, const void *a2, const void *a3, unint64_t a4, _DWORD *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = a3;
  v17 = a6;
  v76 = *MEMORY[0x1E69E9840];
  v71 = 0;
  *a5 = 0;
  if (a3)
  {
    CGImageProviderGetSize();
    v21 = v20;
    v23 = v22;
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    LODWORD(a6) = *(a1 + 308);
    v21 = *&a6;
    LODWORD(a6) = *(a1 + 312);
    v23 = *&a6;
    PixelSize = *(a1 + 324);
    if (PixelSize == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "copyImageBlockSetTiles", 2549);
  }

  IIOReadPlugin::debugCopyBlockSet(a1, v11, v17, a7, a8, a9, a10, a11);
  v25 = (v17 / a4);
  v26 = (a4 - 1);
  v27 = ((v17 + a8 + v26) / a4);
  v28 = (a7 / a4);
  v68 = ((a7 + a9 + v26) / a4);
  *(a1 + 252) = 16 * ((a8 * PixelSize + 15.0) * 0.0625);
  v29 = *(a1 + 244);
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vbsl_s8(vmovn_s64(vcgtq_u64(v30, vdupq_n_s64(a4))), vdup_n_s32(a4), v29);
  *(a1 + 308) = v31;
  *(a1 + 316) = v31.i32[0] * PixelSize;
  v65 = v27 - v25;
  v32 = ((v27 - v25) * (v68 - v28));
  *(a1 + 104) = v32;
  IIOReadPlugin::allocateBlockArray(a1, v32);
  applejpeg_decode_clear_options();
  if (applejpeg_decode_set_option_outformat())
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2599, "err = %d\n");
  }

  if (*(a1 + 332) <= 1u)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 332);
  }

  if (applejpeg_decode_set_option_outsize())
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2612, "err = %d\n");
  }

  v72 = *(a1 + 316);
  v73 = v72;
  v74 = v72;
  v75 = v72;
  if (applejpeg_decode_set_option_stride())
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2620, "err = %d\n");
  }

  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::create_or_restoreIndexTable(a1, *(a1 + 528));
  }

  if (*(a1 + 701) != -1)
  {
    applejpeg_decode_set_option_force_app14();
  }

  applejpeg_decode_set_option_error_fill();
  if (applejpeg_decode_set_option_mosquito_spray())
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2668, "applejpeg_decode_set_option_mosquito_spray err = %d\n");
  }

  v34 = applejpeg_decode_set_option_multithread();
  if (v34)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2675, "err = %d\n");
  }

  if (v68 > v28)
  {
    v35 = (a7 / a4);
    v69 = 0;
    v66 = 0;
    if (v25 <= v27)
    {
      v36 = v27;
    }

    else
    {
      v36 = (v17 / a4);
    }

    v37 = v33;
    v38 = 8 * v36 - 8 * v25;
    v63 = v25 * a4;
    v39 = MEMORY[0x1E695F050];
    v64 = v11;
    v60 = (v17 / a4);
    v61 = a2;
    v58 = v38;
    v59 = v27;
    while (1)
    {
      v40 = *(a1 + 312);
      v67 = v35;
      v41 = v35 * v40;
      v42 = v41;
      v43 = v40 + v41 <= v23 ? v40 : v23 - v41;
      if (v27 > v25)
      {
        break;
      }

LABEL_63:
      v35 = v67 + 1;
      v69 += v38;
      if (v67 + 1 == v68)
      {
        goto LABEL_64;
      }
    }

    v44 = v43 * v37;
    v45 = v65;
    v66 += v65;
    v46 = v63;
    v47 = v69;
    while (1)
    {
      v48 = v46;
      LODWORD(v44) = *(a1 + 308);
      v49 = *&v44;
      if (v46 + v49 <= v21)
      {
        v50 = v49;
      }

      else
      {
        v50 = v21 - v46;
      }

      if (!*(a1 + 332) && v34)
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2719, "err = %d\n");
      }

      if (applejpeg_decode_set_option_crop())
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2723, "err = %d\n");
      }

      applejpeg_decode_get_output_buffer_size();
      if (*(a1 + 316))
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2730, "*** ERROR: get_output_buffer_size rb=%d  blockGeo.rb=%d\n");
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: applejpeg_decode_get_output_buffer_size:%ld rowB:%ld size:%ldx%ld\n", "copyImageBlockSetTiles", 2732, 0, 0, *(a1 + 308), *(a1 + 312));
      }

      v51 = _ImageIO_Malloc(0, *(a1 + 416), &v71, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
      if (!v51)
      {
        break;
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Got outbuf\n", "copyImageBlockSetTiles", 2742);
      }

      v52 = applejpeg_decode_image_all();
      v34 = v52;
      if (v52)
      {
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: Decode error %d\n", "copyImageBlockSetTiles", 2749, v52);
        }

        if (v34 != 9 && v34 != -1)
        {
          break;
        }
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Decoded image\n", "copyImageBlockSetTiles", 2756);
      }

      v77.origin.x = v46;
      v77.origin.y = v42;
      v77.size.width = v50;
      v77.size.height = v43;
      *(*(a1 + 96) + v47) = IIOReadPlugin::createImageBlock(a1, v51, v71, v77, *(a1 + 316), 0);
      if (CGRectEqualToRect(*(a1 + 120), *v39))
      {
        v53 = v42;
        v54 = v43;
      }

      else
      {
        v78.origin.x = v46;
        v78.origin.y = v42;
        v78.size.width = v50;
        v78.size.height = v43;
        *&v44 = CGRectUnion(*(a1 + 120), v78);
        v48 = v44;
        v50 = v55;
      }

      *(a1 + 120) = v48;
      *(a1 + 128) = v53;
      v47 += 8;
      v46 += a4;
      *(a1 + 136) = v50;
      *(a1 + 144) = v54;
      if (!--v45)
      {
        v11 = v64;
        v25 = v60;
        a2 = v61;
        v38 = v58;
        v27 = v59;
        goto LABEL_63;
      }
    }

    v56 = 0;
    if (!v64)
    {
      goto LABEL_69;
    }

LABEL_67:
    IIOReadPlugin::freeBlockArray(a1);
    goto LABEL_71;
  }

LABEL_64:
  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::save_index_table(a1);
  }

  v56 = IIOReadPlugin::imageBlockSetCreate(a1, v11, *(a1 + 104), *(a1 + 96), a2, v21, v23, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
  v51 = 0;
  if (v11)
  {
    goto LABEL_67;
  }

LABEL_69:
  if (*(a1 + 104))
  {
    *a5 = 1;
  }

LABEL_71:
  if (v51)
  {
    _ImageIO_Free(v51, v71);
  }

  return v56;
}

uint64_t AppleJPEGReadPlugin::decodeIntoIOSurface(AppleJPEGReadPlugin *this, IIODecodeParameter *a2, __IOSurface *a3)
{
  memset(v5, 0, sizeof(v5));
  XmpData = _APP1XMP::getXmpData(a2);
  IIODictionary::IIODictionary(v5, XmpData);
  IIODictionary::~IIODictionary(v5);
  return 4294967246;
}

uint64_t AppleJPEGReadPlugin::copyIOSurfaceSet(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a1 + 240))(a1, a2);
  if (v4)
  {
    v5 = v4;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, v5);
    v7 = CGImageIOSurfaceSetCreate();
    IIO_IOSurfaceRelease(v5);
  }

  else
  {
    v7 = 0;
    a1[704] = 1;
    a1[520] = 0;
  }

  return v7;
}

void ___ZN19AppleJPEGReadPlugin29createImageBlockFromIOSurfaceEP11__IOSurfaceP7InfoRecP15CGImageProvider_block_invoke()
{
  pixelRange = *ymmword_1862259F0;
  *&matrix.Yp = xmmword_186225A10;
  matrix.Cb_B = 1.772;
  v0 = vImageConvert_YpCbCrToARGB_GenerateConversion(&matrix, &pixelRange, &AppleJPEGReadPlugin::createImageBlockFromIOSurface(__IOSurface *,InfoRec *,CGImageProvider *)::conversion, kvImage422YpCbYpCr8, kvImageARGB8888, 0);
  if (v0)
  {
    IIO_vImageErrorString(v0);
    _cg_jpeg_mem_term("createImageBlockFromIOSurface_block_invoke", 4028, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion returned %ld (%s)\n");
  }
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2)
{

  return kdebug_trace();
}

void ICNSWritePlugin::~ICNSWritePlugin(ICNSWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t ICNSWritePlugin::writeOneICNS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(*a2);
  v11 = *(a2 + 50);
  v12 = *(a2 + 56);
  v13 = *(a2 + 75);
  v65 = AlphaInfo;
  v14 = 3;
  if (AlphaInfo)
  {
    v14 = 4;
  }

  size = *(a2 + 48);
  v15 = v14 * size;
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(*a2);
  if (BytesPerRow < v15)
  {
    return 4294967246;
  }

  v17 = BytesPerRow;
  IIOImagePixelDataProvider::rewind(*a2);
  if (v13 >= 2)
  {
    if (CFDataCreateMutable(*MEMORY[0x1E695E480], 0))
    {
      operator new();
    }

    return 0;
  }

  v18 = size;
  v69 = malloc_type_calloc(v17, size, 0x100004077774924uLL);
  if (!v69)
  {
    return 4294967246;
  }

  v66 = a6;
  if (v17 == v15)
  {
    if (IIOImagePixelDataProvider::getBytes(*a2, v69) != v15 * v11)
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v20 = v69;
    while (IIOImagePixelDataProvider::getBytes(*a2, v20) == v17)
    {
      v20 += v15;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

LABEL_10:
    v19 = 4294967246;
    goto LABEL_61;
  }

LABEL_15:
  v21 = v15 * size;
  v22 = bswap32(v12);
  *(a3 + *a5) = v22;
  *a5 += 4;
  v64 = v66 + 1;
  v66[2 * *v66 + 1] = v22;
  appleflags = _cg_png_get_appleflags(*a2);
  Error = _cg_GifLastError(*a2);
  v72 = malloc_type_calloc(v21 + (v21 >> 2), 1uLL, 0x100004077774924uLL);
  if (!v72)
  {
    goto LABEL_52;
  }

  v62 = a3;
  v63 = a5;
  v25 = malloc_type_calloc(0x8CuLL, 1uLL, 0x100004077774924uLL);
  if (!v25)
  {
    goto LABEL_51;
  }

  v26 = v25;
  v27 = 0;
  v28 = appleflags / Error;
  v29 = v21 / (appleflags / Error);
  v30 = 4 * (size == 128);
  v68 = v29 & 0xFFFFFFFE;
  v31 = v25 + 2;
  v32 = v29;
  v71 = (v25 + 2);
  do
  {
    v33 = &v69[v27];
    *v26 = v69[v27];
    if (!v68)
    {
      v36 = 1;
      goto LABEL_48;
    }

    v70 = v27;
    v34 = 0;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v33[(v28 * v35)];
      v38 = v36;
      v39 = v36 - 1;
      if (v36 <= 1u)
      {
        ++v36;
        v40 = &v26[v38];
        goto LABEL_43;
      }

      v41 = v36 - 2;
      if (v38 == 2)
      {
        if (v37 == v26[1] && v37 == *v26)
        {
LABEL_31:
          v36 = 3;
          v34 = 1;
        }

        else
        {
          v34 = 0;
          v36 = 3;
        }

        v40 = v31;
        goto LABEL_43;
      }

      if ((v38 & 0x80) != 0 || v34)
      {
        if (v38 <= 0x81 && v34 == 1)
        {
          v40 = &v26[v38];
          if (v37 == *(v40 - 1) && v37 == *(v40 - 2))
          {
            v36 = v38 + 1;
            v34 = 1;
            goto LABEL_43;
          }

LABEL_41:
          v34 = 0;
          v72[v30] = v38 + 125;
          v72[v30 + 1] = *v26;
          v30 += 2;
        }

        else
        {
          if (v34)
          {
            goto LABEL_41;
          }

          v72[v30] = v39;
          v43 = v30 + 1;
          memcpy(&v72[v43], v26, v38);
          v31 = v71;
          v34 = 0;
          v30 = v43 + v38;
        }

        v36 = 1;
        v40 = v26;
        goto LABEL_43;
      }

      v40 = &v26[v38];
      if (v37 == *(v40 - 1) && v37 == v26[v41])
      {
        v72[v30] = v38 - 3;
        v42 = v30 + 1;
        memcpy(&v72[v42], v26, (v38 - 2));
        v31 = v71;
        v30 = v42 + v41;
        *v26 = v26[v41];
        v26[1] = *(v40 - 1);
        goto LABEL_31;
      }

      v34 = 0;
      v36 = v38 + 1;
LABEL_43:
      *v40 = v37;
      ++v35;
    }

    while (v35 < v32);
    if (v34)
    {
      v72[v30] = v36 + 125;
      v72[v30 + 1] = *v26;
      v30 += 2;
      v27 = v70;
      goto LABEL_49;
    }

    v27 = v70;
LABEL_48:
    v72[v30] = v36 - 1;
    v44 = v30 + 1;
    memcpy(&v72[v44], v26, v36);
    v30 = v44 + v36;
    v31 = v71;
LABEL_49:
    ++v27;
  }

  while (v27 != 3);
  v45 = bswap32(v30 + 8);
  v46 = *v63;
  *(v62 + v46) = v45;
  v46 += 4;
  *v63 = v46;
  v47 = *v66;
  v64[2 * v47 + 1] = v45;
  *v66 = v47 + 1;
  memcpy((v62 + v46), v72, v30);
  *v63 += v30;
  free(v26);
  v18 = size;
LABEL_51:
  free(v72);
  a3 = v62;
  a5 = v63;
LABEL_52:
  HIDWORD(v49) = v18 - 16;
  LODWORD(v49) = v18 - 16;
  v48 = v49 >> 4;
  if (v48 > 2)
  {
    v51 = 1949855083;
    LODWORD(v50) = 0x4000;
  }

  else
  {
    LODWORD(v50) = dword_186225A94[v48];
    v51 = dword_186225AA0[v48];
  }

  v52 = bswap32(v51);
  *(a3 + *a5) = v52;
  v53 = *a5 + 4;
  *a5 = v53;
  v64[2 * *v66] = v52;
  v54 = bswap32(v50 | 8);
  *(a3 + v53) = v54;
  v55 = *a5 + 4;
  *a5 = v55;
  v56 = *v66;
  v64[2 * v56 + 1] = v54;
  *v66 = v56 + 1;
  if ((v65 - 1) > 3)
  {
    v59 = v50;
    memset((a3 + v55), 255, v50);
  }

  else
  {
    v57 = v69 + 3;
    v58 = (a3 + v55);
    v59 = v50;
    v50 = v50;
    do
    {
      v60 = *v57;
      v57 += 4;
      *v58++ = v60;
      --v50;
    }

    while (v50);
  }

  v19 = 0;
  *a5 += v59;
LABEL_61:
  free(v69);
  return v19;
}

uint64_t ICNSWritePlugin::writeAll(IIOImageDestination **this)
{
  *&v43[1461] = *MEMORY[0x1E69E9840];
  bzero(v42, 0x600uLL);
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (ImageCount >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = ImageCount;
  }

  v39 = v3;
  if (!ImageCount)
  {
    goto LABEL_35;
  }

  v4 = 0;
  v38 = 0;
  v5 = 0;
  v6 = 72;
  Uint32ForKey = 72;
  do
  {
    PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, v4);
    PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v4);
    v10 = &v42[96 * v5];
    *v10 = PixelDataProviderAtIndex;
    *(v10 + 2) = PropertiesAtIndex;
    v11 = IIOImageSource::count(PixelDataProviderAtIndex);
    v12 = IIO_Reader::testHeaderSize(PixelDataProviderAtIndex);
    if (IIODictionary::containsKey(PropertiesAtIndex, @"DPIWidth"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(PropertiesAtIndex, @"DPIWidth");
    }

    v13 = IIODictionary::containsKey(PropertiesAtIndex, @"DPIHeight");
    if (v13)
    {
      v13 = IIODictionary::getUint32ForKey(PropertiesAtIndex, @"DPIHeight");
      v6 = v13;
    }

    if (Uint32ForKey != v6)
    {
      Uint32ForKey = 72;
      v6 = 72;
    }

    if (Uint32ForKey == 144)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    ICNSInfoTable = GetICNSInfoTable(v13, v14);
    v17 = *ICNSInfoTable;
    if (v17 == 0xFFFF)
    {
LABEL_23:
      LogError("writeAll", 576, "unsupported ICNS image size (%d x %d) - scaling factor: %d  dpi: %d x %d\n", v11, v12, v15, Uint32ForKey, v6);
    }

    else
    {
      v18 = ICNSInfoTable + 28;
      while ((v17 & 0x8000) != 0 || *(v18 - 16) != v11 || *(v18 - 15) != v12 || v15 != *(v18 - 7) || *(v18 - 4) != 1)
      {
        v19 = *v18;
        v18 += 28;
        LOWORD(v17) = v19;
        if (v19 == 0xFFFF)
        {
          goto LABEL_23;
        }
      }

      *(v10 + 24) = *(v18 - 28);
      *(v10 + 40) = *(v18 - 20);
      *(v10 + 56) = *(v18 - 12);
      *(v10 + 9) = *(v18 - 1);
      ++v5;
      v38 += (4 * v11 * v12);
    }

    ++v4;
  }

  while (v4 != v39);
  if (v5)
  {
    v20 = v43;
    v21 = v5;
    v22 = v5;
    do
    {
      v23 = *v20;
      v20 += 96;
      if (v23 < 2)
      {
        ++v22;
      }

      --v21;
    }

    while (v21);
    v24 = (8 * v22 + 8);
    v25 = malloc_type_calloc((v38 >> 2) + v38 + v24, 1uLL, 0x100004077774924uLL);
    *v25 = 1936614249;
    v25[2] = 541282132;
    v25[3] = bswap32(v24);
    __nitems = v24 + 8;
    v27 = malloc_type_calloc((8 * v22) | 4, 1uLL, 0x100004052888210uLL);
    v28 = v42;
    do
    {
      v29 = v28[3];
      v40[2] = v28[2];
      v40[3] = v29;
      v30 = v28[5];
      v40[4] = v28[4];
      v40[5] = v30;
      v31 = *v28;
      v32 = v28[1];
      v28 += 6;
      v40[0] = v31;
      v40[1] = v32;
      ICNSWritePlugin::writeOneICNS(this, v40, v25, v26, &__nitems, v27);
      --v5;
    }

    while (v5);
    memcpy(v25 + 4, v27 + 1, (8 * *v27));
    free(v27);
    v33 = __nitems;
    v25[1] = bswap32(__nitems);
    IIOImageWriteSession::putBytes(this[2], v25, v33);
    v34 = 0;
  }

  else
  {
LABEL_35:
    v25 = 0;
    v34 = 4294967246;
  }

  for (i = 88; i != 1624; i += 96)
  {
    v36 = *&v42[i];
    if (v36)
    {
      free(v36);
    }
  }

  if (v25)
  {
    free(v25);
  }

  return v34;
}

uint64_t ICNSWritePlugin::WriteProc(ICNSWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "ICNSWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1229147731);
  *&v11[0] = &unk_1EF4DBF68;
  v7 = ICNSWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_18608CCD8(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18608CCC0);
}

uint64_t TIFFInitThunderScan(void *a1)
{
  a1[120] = ThunderSetupDecode;
  a1[126] = ThunderDecodeRow;
  a1[128] = ThunderDecodeRow;
  return 1;
}

uint64_t ThunderSetupDecode(uint64_t a1)
{
  v1 = *(a1 + 116);
  if (v1 == 4)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "ThunderSetupDecode", "Wrong bitspersample value (%d), Thunder decoder only supports 4bits per sample.", v1);
  return 0;
}

uint64_t ThunderDecodeRow(uint64_t a1, char *__b, uint64_t a3)
{
  if (a3 % *(a1 + 1104))
  {
    TIFFErrorExtR(a1, "ThunderDecodeRow", "Fractional scanlines cannot be read");
    return 0;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v5 = *(a1 + 1152);
  v6 = *(a1 + 1160);
  while (1)
  {
    v7 = *(a1 + 88);
    v8 = 0;
    if (v7)
    {
      v9 = v6 < 1;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v11 = 0;
      v12 = __b;
      v13 = v6;
      v37 = a3;
      v38 = __b;
      while (1)
      {
        v15 = *v5++;
        v14 = v15;
        v16 = v15 >> 6;
        if (v15 >> 6 > 1)
        {
          if (v16 != 2)
          {
            v11 = v14 & 0xF;
            v18 = v8 + 1;
            if (v8)
            {
              *v12++ |= v11;
            }

            else
            {
              *v12 = 16 * v14;
            }

            goto LABEL_59;
          }

          v17 = (v14 >> 3) & 7;
          if (v17 == 4)
          {
            v18 = v8;
          }

          else
          {
            v23 = threebitdeltas[v17] + v11;
            v11 = v23 & 0xF;
            if (v8)
            {
              v25 = v12 + 1;
              v24 = *v12 | v11;
            }

            else
            {
              v24 = 16 * v23;
              v25 = v12;
            }

            v18 = v8 + 1;
            *v12 = v24;
            v12 = v25;
          }

          if ((v14 & 7) == 4)
          {
            goto LABEL_59;
          }

          v35 = threebitdeltas[v14 & 7];
        }

        else
        {
          if (!v16)
          {
            if (v14)
            {
              if (v8)
              {
                v26 = *v12 | v11;
                v11 = v26;
                *v12++ = v26;
                ++v8;
                LODWORD(v14) = v14 - 1;
              }

              else
              {
                v11 |= 16 * v11;
              }

              v8 += v14;
              if (v8 <= v7)
              {
                if (v14 >= 1)
                {
                  v27 = v14 - 2;
                  if (v14 < 2)
                  {
                    v27 = 0;
                  }

                  v28 = v27 + 1;
                  v29 = ((v27 + 1) >> 1) + 1;
                  memset(v12, v11, v29);
                  v12 += v29;
                  if (v14 - (v28 & 0x7FFFFFFE) == 1)
                  {
                    v30 = *--v12;
                    *v12 = v30 & 0xF0;
                  }

                  a3 = v37;
                  __b = v38;
                }

                v11 &= 0xFu;
              }
            }

            goto LABEL_60;
          }

          v19 = (v14 >> 4) & 3;
          if (v19 != 2)
          {
            v20 = twobitdeltas[v19] + v11;
            v11 = v20 & 0xF;
            if (v8)
            {
              v22 = v12 + 1;
              v21 = *v12 | v11;
            }

            else
            {
              v21 = 16 * v20;
              v22 = v12;
            }

            ++v8;
            *v12 = v21;
            v12 = v22;
          }

          v31 = (v14 >> 2) & 3;
          if (v31 == 2 || (v32 = twobitdeltas[v31] + v11, v11 = v32 & 0xF, v8 >= v7))
          {
            v18 = v8;
          }

          else
          {
            if (v8)
            {
              v34 = v12 + 1;
              v33 = *v12 | v11;
            }

            else
            {
              v33 = 16 * v32;
              v34 = v12;
            }

            v18 = v8 + 1;
            *v12 = v33;
            v12 = v34;
          }

          if ((v14 & 3) == 2)
          {
            goto LABEL_59;
          }

          v35 = twobitdeltas[v14 & 3];
        }

        v36 = v35 + v11;
        v11 = v36 & 0xF;
        if (v18 < v7)
        {
          v8 = v18 + 1;
          if (v18)
          {
            *v12++ |= v11;
          }

          else
          {
            *v12 = 16 * v36;
          }

          goto LABEL_60;
        }

LABEL_59:
        v8 = v18;
LABEL_60:
        v6 = v13 - 1;
        if (v13 >= 2)
        {
          --v13;
          if (v8 < v7)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    v12 = __b;
LABEL_12:
    *(a1 + 1152) = v5;
    *(a1 + 1160) = v6;
    if (v8 != v7)
    {
      break;
    }

    v10 = *(a1 + 1104);
    __b += v10;
    v9 = a3 <= v10;
    a3 -= v10;
    if (v9)
    {
      return 1;
    }
  }

  bzero(v12, &__b[(v7 + 1) >> 1] - v12);
  TIFFErrorExtR(a1, "ThunderDecode", "%s data at scanline %lu (%llu != %llu)");
  return 0;
}

__CFString *IIOSurfaceInfo(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 1024);
  v3 = CFCopyDescription(a1);
  CFStringAppendFormat(Mutable, 0, @"%@\n", v3);
  CFRelease(v3);
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  CFStringAppendFormat(Mutable, 0, @"    surface:  %ldx%ld  rb:%ld\n", Width, Height, BytesPerRow);
  if (IOSurfaceGetPlaneCount(a1) >= 2 && IOSurfaceGetPlaneCount(a1))
  {
    v7 = 0;
    do
    {
      WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, v7);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, v7);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v7);
      CFStringAppendFormat(Mutable, 0, @"    plane[%ld]: %ldx%ld  rb:%ld\n", v7++, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
    }

    while (v7 < IOSurfaceGetPlaneCount(a1));
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v12 = PixelFormat;
  v13 = PixelFormat >> 24;
  v14 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v15 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 46;
  }

  v17 = (v12 << 8) >> 24;
  if (v17 <= 0x7F)
  {
    v18 = *(v14 + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune((v12 << 8) >> 24, 0x40000uLL);
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 46;
  }

  LODWORD(v20) = v12 >> 8;
  if (v20 <= 0x7F)
  {
    v21 = *(v14 + 4 * v20 + 60) & 0x40000;
  }

  else
  {
    v21 = __maskrune(v12 >> 8, 0x40000uLL);
  }

  if (v21)
  {
    v20 = v20;
  }

  else
  {
    v20 = 46;
  }

  v12 = v12;
  if (v12 <= 0x7F)
  {
    v22 = *(v14 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v22 = __maskrune(v12, 0x40000uLL);
  }

  if (v22)
  {
    v23 = v12;
  }

  else
  {
    v23 = 46;
  }

  CFStringAppendFormat(Mutable, 0, @"    PixelFormat: %c%c%c%c\n", v16, v19, v20, v23);
  CFStringAppend(Mutable, @"    ColorSpace:\n");
  v24 = CGColorSpaceCopyFromIOSurface();
  ColorSpaceFromAttachments = v24;
  if (v24)
  {
    CFStringAppendFormat(Mutable, 0, @"      CGColorSpaceCopyFromIOSurface:%@\n", v24);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
  }

  else
  {
    CFStringAppend(Mutable, @"      CGColorSpaceCopyFromIOSurface: (null)\n");
  }

  v26 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEE0]);
  if (v26)
  {
    v27 = v26;
    ColorSpaceFromAttachments = CGColorSpaceCreateWithPropertyList(v26);
    CFStringAppendFormat(Mutable, 0, @"      kIOSurfaceColorSpace:%@\n", ColorSpaceFromAttachments);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
    CFRelease(v27);
  }

  else
  {
    CFStringAppend(Mutable, @"      kIOSurfaceColorSpace: (null)\n");
  }

  v28 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF60]);
  if (v28)
  {
    v29 = v28;
    ColorSpaceFromAttachments = CGColorSpaceCreateWithICCData(v28);
    CFStringAppendFormat(Mutable, 0, @"      kIOSurfaceICCProfile:%@\n", ColorSpaceFromAttachments);
    CFRelease(v29);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
  }

  else
  {
    CFStringAppend(Mutable, @"      kIOSurfaceICCProfile: (null)\n");
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  v47 = 132;
  BulkAttachments = IOSurfaceGetBulkAttachments();
  v31 = 0;
  v32 = 132;
  v33 = 0;
  v34 = 0;
  if (!BulkAttachments)
  {
    IIO_LoadHEIFSymbols();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44);
    IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(&v44, v48);
    if (IIODictionary::getCount(&v44))
    {
      ColorSpaceFromAttachments = gFunc_CVImageBufferCreateColorSpaceFromAttachments(v45);
    }

    CGColorSpaceRelease(ColorSpaceFromAttachments);
    v33 = WORD5(v51);
    v34 = BYTE12(v49);
    v31 = BYTE11(v49);
    IIODictionary::~IIODictionary(&v44);
    v32 = v47;
  }

  if (v32 == 132)
  {
    v35 = IOSurfaceCopyAllValues(a1);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44, v35);
    v36 = BYTE4(v52);
    if (IIODictionary::containsKey(&v44, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
    {
      if (IIODictionary::getBoolForKey(&v44, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
      {
        v37 = 5;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    if (IIODictionary::containsKey(&v44, *gIIO_kCVImageBufferAlphaChannelModeKey))
    {
      ObjectForKey = IIODictionary::getObjectForKey(&v44, *gIIO_kCVImageBufferAlphaChannelModeKey);
      if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0))
      {
        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0) == kCFCompareEqualTo)
        {
          if (v36 != 1)
          {
            LogError("IIOSurfaceInfo", 455, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_StraightAlpha, but keys.premultipliedAlpha = %d\n", BYTE4(v52));
          }

          v37 = 3;
        }
      }

      else
      {
        if (v36 != 2)
        {
          LogError("IIOSurfaceInfo", 449, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_PremultipliedAlpha, but keys.premultipliedAlpha = %d\n", BYTE4(v52));
        }

        v37 = 1;
      }
    }

    CFStringAppendFormat(Mutable, 0, @"    Alpha: %s\n", off_1E6F0B6C8[v37]);
    IIODictionary::~IIODictionary(&v44);
  }

  else
  {
    v35 = 0;
  }

  v39 = "???";
  if (v31 > 8)
  {
    if (v31 > 11)
    {
      if (v31 == 12)
      {
        v39 = "P3_D65";
      }

      else if (v31 == 22)
      {
        v39 = "JEDEC_P22";
      }
    }

    else if (v31 == 9)
    {
      v39 = "ITU_R_2020";
    }

    else if (v31 == 11)
    {
      v39 = "DCI_P3";
    }
  }

  else if (v31 > 4)
  {
    if (v31 == 5)
    {
      v39 = "EBU_3213";
    }

    else if (v31 == 6)
    {
      v39 = "SMPTE_C";
    }
  }

  else if (v31 == 1)
  {
    v39 = "ITU_R_709_2";
  }

  else if (v31 == 2)
  {
    v39 = "Unknown";
  }

  CFStringAppendFormat(Mutable, 0, @"    ColorPrimaries: %s [%d]\n", v39, v31);
  if ((v34 + 1) > 0x13u)
  {
    v40 = "???";
  }

  else
  {
    v40 = off_1E6F0B788[(v34 + 1)];
  }

  CFStringAppendFormat(Mutable, 0, @"    TransferFunction: %s [%d]\n", v40, v34);
  v41 = IOSurfaceCopyValue(a1, @"IOSurfaceContentHeadroom");
  if (v41)
  {
    v42 = v41;
    CFStringAppendFormat(Mutable, 0, @"    Headroom: %@\n", v41);
    CFRelease(v42);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"    Headroom: n/a\n");
  }

  CFStringAppendFormat(Mutable, 0, @"    ContentAverageLightLevel: %d\n", v33);
  if (v35)
  {
    CFRelease(v35);
  }

  if (Mutable)
  {
    CFAutorelease(Mutable);
  }

  return Mutable;
}

void sub_18608D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const char *IIO_AlphaInfoString(char a1)
{
  if ((a1 & 0x1Fu) > 7)
  {
    return "";
  }

  else
  {
    return off_1E6F0B6C8[a1 & 0x1F];
  }
}

char *IIO_BitmapInfoString(unsigned int a1)
{
  if ((a1 & 0x1F) > 7)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E6F0B6C8[a1 & 0x1F];
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v4 = v3;
  memset(&__dst, 0, sizeof(__dst));
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  v5 = (a1 >> 12) & 7;
  if (v5 >= 5)
  {
    v6 = "| unknown-ByteOrder";
  }

  else
  {
    v6 = off_1E6F0B828[v5];
  }

  std::string::append(&__dst, v6);
  v7 = HIWORD(a1) & 0xF;
  if (v7 > 4)
  {
    v8 = "| unknown-PixelFormat";
  }

  else
  {
    v8 = off_1E6F0B850[v7];
  }

  std::string::append(&__dst, v8);
  if ((a1 & 0xF00) == 0x100)
  {
    std::string::append(&__dst, "| FloatComponents");
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = __dst.__r_.__value_.__r.__words[0];
    strncpy(IIO_BitmapInfoString::str, __dst.__r_.__value_.__l.__data_, 0x80uLL);
    operator delete(v9);
  }

  else
  {
    strncpy(IIO_BitmapInfoString::str, &__dst, 0x80uLL);
  }

  return IIO_BitmapInfoString::str;
}

void sub_18608D9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *IIO_BitmapInfoStringSmall(unsigned int a1)
{
  memset(&v9, 0, sizeof(v9));
  if ((a1 & 0x1F) > 7)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E6F0B708[a1 & 0x1F];
  }

  MEMORY[0x186602520](&v9, v2);
  v3 = (a1 >> 12) & 7;
  if (v3 >= 5)
  {
    v4 = "| unknown ";
  }

  else
  {
    v4 = off_1E6F0B878[v3];
  }

  std::string::append(&v9, v4);
  v5 = HIWORD(a1) & 0xF;
  if (v5 > 4)
  {
    v6 = "| unknown  ";
  }

  else
  {
    v6 = off_1E6F0B8A0[v5];
  }

  std::string::append(&v9, v6);
  if ((a1 & 0xF00) == 0x100)
  {
    std::string::append(&v9, "| Float");
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v9.__r_.__value_.__r.__words[0];
    strncpy(IIO_BitmapInfoStringSmall::str, v9.__r_.__value_.__l.__data_, 0x80uLL);
    operator delete(v7);
  }

  else
  {
    strncpy(IIO_BitmapInfoStringSmall::str, &v9, 0x80uLL);
  }

  return IIO_BitmapInfoStringSmall::str;
}

void sub_18608DB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *IIO_ColorModelString(int a1)
{
  if (a1 > 6)
  {
    return "";
  }

  else
  {
    return off_1E6F0B748[a1 + 1];
  }
}

void IIODumpMemory(uint64_t a1, unint64_t a2)
{
  v2 = IIOCreateMemoryString(a1, a2);
  if (v2)
  {
    v3 = v2;
    ImageIOLog("%s\n", v2);

    free(v3);
  }
}

char *IIOCreateMemoryString(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  if (!a1)
  {
    v27 = "(NULL)";
LABEL_55:
    MEMORY[0x186602520](&__p, v27);
    goto LABEL_56;
  }

  if (!a2)
  {
    v27 = "(zero size)";
    goto LABEL_55;
  }

  v44 = 0;
  *v38 = 0;
  v39 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  __s = v3;
  *v42 = v3;
  *&v42[15] = v3;
  v43 = 0;
  v40 = 0;
  if (((a2 + 15) & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v5 = 0;
    v6 = 0;
    v31 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v7 = 0;
      v8 = &__s + 1;
      do
      {
        if (v6 < a2)
        {
          v9 = *(a1 + v6);
          *(v8 - 1) = byte_186225B10[*(a1 + v6) >> 4];
          *v8 = byte_186225B10[v9 & 0xF];
          if ((v9 & 0x80000000) != 0)
          {
            v10 = __maskrune(v9, 0x40000uLL);
          }

          else
          {
            v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
          }

          ++v6;
          if (v10)
          {
            v11 = v9;
          }

          else
          {
            v11 = 46;
          }

          v38[v7] = v11;
        }

        ++v7;
        v8 += 3;
      }

      while (v7 != 16);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      memset(&v32, 0, sizeof(v32));
      std::string::basic_string[abi:fe200100](&v32, size + 5);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v32;
      }

      else
      {
        v13 = v32.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v13, p_p, size);
      }

      strcpy(v13 + size, "    |");
      v15 = std::string::append(&v32, &__s);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v33, "|  |");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v34, v38);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v35, "|");
      v22 = v21->__r_.__value_.__r.__words[0];
      v37[0] = v21->__r_.__value_.__l.__size_;
      *(v37 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v22;
      __p.__r_.__value_.__l.__size_ = v37[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
      *(&__p.__r_.__value_.__s + 23) = v23;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v5 + 17 < v31)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__l.__size_;
        }

        memset(&v35, 0, sizeof(v35));
        std::string::basic_string[abi:fe200100](&v35, v24 + 1);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v35;
        }

        else
        {
          v25 = v35.__r_.__value_.__r.__words[0];
        }

        if (v24)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &__p;
          }

          else
          {
            v26 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v25, v26, v24);
        }

        *(&v25->__r_.__value_.__l.__data_ + v24) = 10;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v35;
      }

      v5 += 16;
    }

    while (v5 < v31);
  }

LABEL_56:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return strdup(&__p);
  }

  v29 = __p.__r_.__value_.__r.__words[0];
  v28 = strdup(__p.__r_.__value_.__l.__data_);
  operator delete(v29);
  return v28;
}

void sub_18608DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *IIO_dump@char *a1, const __CFString *cf
{
  v25 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *buffer = 0u;
    v10 = 0u;
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CFStringGetCString(cf, buffer, 255, 0x8000100u);
    }

    else
    {
      v6 = CFCopyDescription(cf);
      if (v6)
      {
        v7 = v6;
        CFStringGetCString(v6, buffer, 255, 0x8000100u);
        CFRelease(v7);
      }
    }

    v5 = buffer;
  }

  else
  {
    v5 = "(null)";
  }

  return ImageIOLog(a1, v5);
}

void IIO_CFShow(const __CFDictionary *a1, uint64_t a2, const char *a3)
{
  while (1)
  {
    v75 = *MEMORY[0x1E69E9840];
    if (!a1)
    {
      break;
    }

    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = CFGetTypeID(a1);
    memset(v74, 0, sizeof(v74));
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    buffer = 63;
    if (v4 >= 1)
    {
      v7 = v4;
      do
      {
        ImageIOLog("    ");
        --v7;
      }

      while (v7);
    }

    if (v3)
    {
      ImageIOLog("%s = ", v3);
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(v5);
      v9 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (Count)
      {
        v11 = Count;
        fwrite("dict(\n", 6uLL, 1uLL, v10);
        v12 = malloc_type_malloc(8 * v11, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v5, v12, 0);
        qsort(v12, v11, 8uLL, keySort);
        if (v11 >= 1)
        {
          v13 = v12;
          do
          {
            CFStringGetCString(*v13, &buffer, 255, 0x8000100u);
            v14 = *v13++;
            Value = CFDictionaryGetValue(v5, v14);
            IIO_CFShow(Value, v4 + 1, &buffer);
            --v11;
          }

          while (v11);
        }

        free(v12);
        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        v16 = *v9;
LABEL_26:
        fwrite(")\n", 2uLL, 1uLL, v16);
        return;
      }

      v29 = "dict()\n";
      v30 = 7;
      goto LABEL_60;
    }

    if (v6 == CFArrayGetTypeID())
    {
      v17 = CFArrayGetCount(v5);
      v18 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (v17)
      {
        v19 = v17;
        fwrite("array(\n", 7uLL, 1uLL, v10);
        if (v19 >= 1)
        {
          for (i = 0; i != v19; ++i)
          {
            v21 = strlen(&buffer);
            snprintf(&buffer, 256 - v21, "#%2ld", i);
            ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
            IIO_CFShow(ValueAtIndex, v4 + 1, &buffer);
          }
        }

        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        v16 = *v18;
        goto LABEL_26;
      }

      v29 = "array()\n";
      v30 = 8;
      goto LABEL_60;
    }

    if (v6 == CFBagGetTypeID())
    {
      v23 = MEMORY[0x186600600](v5);
      v24 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (v23)
      {
        v25 = v23;
        fwrite("bag(\n", 5uLL, 1uLL, v10);
        v26 = malloc_type_malloc(8 * v25, 0xC0040B8AA526DuLL);
        CFBagGetValues(v5, v26);
        if (v25 >= 1)
        {
          v27 = v26;
          do
          {
            v28 = *v27++;
            IIO_CFShow(v28, v4 + 1, 0);
            --v25;
          }

          while (v25);
        }

        free(v26);
        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        goto LABEL_44;
      }

      v29 = "bag()\n";
LABEL_59:
      v30 = 6;
      goto LABEL_60;
    }

    if (v6 == CFSetGetTypeID())
    {
      v31 = CFSetGetCount(v5);
      v24 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (!v31)
      {
        v29 = "set()\n";
        goto LABEL_59;
      }

      v32 = v31;
      fwrite("set(\n", 5uLL, 1uLL, v10);
      v33 = malloc_type_malloc(8 * v32, 0xC0040B8AA526DuLL);
      CFSetGetValues(v5, v33);
      if (v32 >= 1)
      {
        v34 = v33;
        do
        {
          v35 = *v34++;
          IIO_CFShow(v35, v4 + 1, 0);
          --v32;
        }

        while (v32);
      }

      free(v33);
      if (v4 >= 1)
      {
        do
        {
          ImageIOLog("    ");
          --v4;
        }

        while (v4);
      }

LABEL_44:
      v10 = *v24;
      v29 = ")\n";
      v30 = 2;
LABEL_60:

      fwrite(v29, v30, 1uLL, v10);
      return;
    }

    if (v6 == CFStringGetTypeID())
    {

      IIO_dump@"%s\n", v5;
      return;
    }

    if (v6 == CFBooleanGetTypeID())
    {
      v36 = *MEMORY[0x1E69E9848];
      if (*MEMORY[0x1E695E4D0] == v5)
      {
        v37 = "true\n";
      }

      else
      {
        v37 = "false\n";
      }

      fprintf(v36, v37);
      return;
    }

    TypeID = CFNumberGetTypeID();
    if (v6 == TypeID)
    {
      valuePtr = 0.0;
      CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
      v40 = *MEMORY[0x1E69E9848];
      if (valuePtr == valuePtr)
      {
        fprintf(v40, "%d\n", valuePtr);
      }

      else
      {
        fprintf(v40, "%f\n", valuePtr);
      }

      return;
    }

    v41 = CGImageMetadataPropertyGetTypeID(TypeID, v39);
    if (v6 == v41)
    {
      if (v4 < 1)
      {
        Schema = CGImageMetadataPropertyGetSchema(v5);
        IIO_dump@"   schema: %s\n", Schema;
      }

      else
      {
        v43 = v4;
        do
        {
          ImageIOLog("    ");
          --v43;
        }

        while (v43);
        v44 = CGImageMetadataPropertyGetSchema(v5);
        IIO_dump@"   schema: %s\n", v44;
        v45 = v4;
        do
        {
          ImageIOLog("    ");
          --v45;
        }

        while (v45);
      }

      SuggestedPrefix = CGImageMetadataPropertyGetSuggestedPrefix(v5);
      IIO_dump@"            prefix: %s\n", SuggestedPrefix;
      if (v4 < 1)
      {
        PropertyName = CGImageMetadataPropertyGetPropertyName(v5, v51);
        IIO_dump@"          property: %s\n", PropertyName;
      }

      else
      {
        v52 = v4;
        do
        {
          ImageIOLog("    ");
          --v52;
        }

        while (v52);
        v55 = CGImageMetadataPropertyGetPropertyName(v5, v53);
        IIO_dump@"          property: %s\n", v55;
        v56 = v4;
        do
        {
          ImageIOLog("    ");
          --v56;
        }

        while (v56);
      }

      fwrite("             value: \n", 0x15uLL, 1uLL, *MEMORY[0x1E69E9848]);
      a1 = CGImageMetadataPropertyGetValue(v5, v57);
      a2 = v4 + 1;
    }

    else
    {
      if (v6 != CGImageMetadataValueGetTypeID(v41, v42))
      {
        if (v6)
        {
          v47 = CFCopyDescription(v5);
          if (v47)
          {
            v48 = v47;
            IIO_dump@"%s\n", v47;

            CFRelease(v48);
          }
        }

        else
        {
          ImageIOLog("*** valueType is 0\n");
          ImageIOLog("    value: %p\n", v5);
        }

        return;
      }

      a1 = CGImageMetadataValueGetValue(v5, v46);
      a2 = v4 - 2;
    }

    a3 = 0;
  }

  ImageIOLog("(null)\n", a2, a3);
}

CFComparisonResult keySort(CFTypeRef *a1, CFStringRef *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 == CFStringGetTypeID() && (v5 = CFGetTypeID(*a2), v5 == CFStringGetTypeID()))
  {
    return CFStringCompare(*a1, *a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t std::string::basic_string[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void IIOMetadata_Tag::setName(IIOMetadata_Tag *this, const __CFString *a2)
{
  v2 = *(this + 4);
  *(this + 4) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef IIOMetadata_Tag::createPathWithChildPath(IIOMetadata_Tag *this, const __CFString *a2)
{
  v4 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", *(this + 3), *(this + 4));
  if (result)
  {
    v6 = result;
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
    v8 = @"%@.%@";
    if (CharacterAtIndex == 46 || CharacterAtIndex == 63)
    {
      v8 = @"%@%@";
    }

    if (*(this + 10) == 6)
    {
      v10 = CFStringCreateWithFormat(v4, 0, v8, v6, a2);
    }

    else
    {
      v10 = CFStringCreateWithFormat(v4, 0, @"%@%@", v6, a2);
    }

    v11 = v10;
    CFRelease(v6);
    return v11;
  }

  return result;
}

void CGImageMetadataTagSetName(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      IIOMetadata_Tag::setName(v2, a2);
    }
  }
}

uint64_t CGImageMetadataTagSetValueType(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 40) = a2;
    }
  }

  return result;
}

uint64_t CGImageMetadataTagGetNamespace(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGImageMetadataType CGImageMetadataTagGetType(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags(tag, v1);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagGetType", 0, 0, -1, 0);
  }

  if (tag && (v3 = *(tag + 3)) != 0)
  {
    return *(v3 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t CGImageMetadataTagGetPrefix(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFArrayRef CGImageMetadataTagCopyQualifiers(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags(tag, v1);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyQualifiers", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v3 = *(tag + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];

  return CFArrayCreateCopy(v5, v4);
}

uint64_t CGImageMetadataTagCreateFromImageProperty(const void *a1, const void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        v9 = CFStringGetTypeID();
        if (a3)
        {
          if (v8 == v9)
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 0x40000000;
            v12[2] = __CGImageMetadataTagCreateFromImageProperty_block_invoke;
            v12[3] = &unk_1E6F0B8D0;
            v12[4] = &v13;
            v12[5] = a1;
            v12[6] = a2;
            v12[7] = a3;
            XMPMappingIterateUsingBlock(v12);
          }
        }
      }
    }
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_18608EEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataTagCreateFromImageProperty_block_invoke(uint64_t a1, CFStringRef **a2, _BYTE *a3)
{
  result = CFStringCompare(*(a1 + 40), **a2, 0);
  if (!result)
  {
    result = CFStringCompare(*(a1 + 48), *a2[1], 0);
    if (!result)
    {
      result = CGImageMetadataTagCreate(*a2[3], 0, *a2[4], kCGImageMetadataTypeDefault, *(a1 + 56));
      *(*(*(a1 + 32) + 8) + 24) = result;
      *a3 = 1;
    }
  }

  return result;
}

CGImageMetadataTagRef CGImageMetadataTagCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  v2 = *(v1 + 40);
  if ((v2 - 2) >= 4)
  {
    if (v2 == 6)
    {
      v3 = *MEMORY[0x1E695E480];
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
    }

    else
    {
      if (v2 != 1)
      {
        return 0;
      }

      v3 = *MEMORY[0x1E695E480];
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
  }

  v5 = Copy;
  if (!Copy)
  {
    return 0;
  }

  v6 = CGImageMetadataTagCreate(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), Copy);
  CFRelease(v5);
  if (v6)
  {
    v7 = *(v1 + 56);
    if (v7)
    {
      v8 = *(v6 + 3);
      *(v8 + 56) = CFArrayCreateMutableCopy(v3, 0, v7);
    }
  }

  return v6;
}

CFStringRef _CGImageMetadataTagCopyFormattingDescription(CFTypeRef cf, const __CFDictionary *a2)
{
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (CGImageMetadataTagGetTypeID::once != -1)
  {
    IIOMetadata_Tag::copyTagValue();
  }

  if (v3 != CGImageMetadataTagGetTypeID::id)
  {
    return 0;
  }

  v4 = *(cf + 3);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[6];
  v8 = !v5 || v6 == 0;
  if (v8 || v7 == 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *MEMORY[0x1E695E480];
  if (v11)
  {
    return CFStringCreateWithFormat(v12, 0, @"%@:%@ = %@, Qualifiers = %@", v5, v6, v7, v11);
  }

  else
  {
    return CFStringCreateWithFormat(v12, 0, @"%@:%@ = %@", v5, v6, v7);
  }
}

CFStringRef _CGImageMetadataTagCopyDescription(CFTypeRef cf)
{
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return 0;
  }

  v2 = CFGetTypeID(cf);
  if (CGImageMetadataTagGetTypeID::once != -1)
  {
    IIOMetadata_Tag::copyTagValue();
  }

  if (v2 != CGImageMetadataTagGetTypeID::id)
  {
    return 0;
  }

  v3 = *(cf + 3);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[6];
  v7 = !v4 || v5 == 0;
  if (v7 || v6 == 0)
  {
    return 0;
  }

  v10 = v3[7];
  v11 = *MEMORY[0x1E695E480];
  if (v10)
  {
    return CFStringCreateWithFormat(v11, 0, @"<CGImageMetadataTag %p> %@:%@ = %@, Qualifiers = %@", cf, v4, v5, v6, v10);
  }

  else
  {
    return CFStringCreateWithFormat(v11, 0, @"<CGImageMetadataTag %p> %@:%@ = %@", cf, v4, v5, v6);
  }
}

void __CGInitializeImageIO_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*&gFirstCallTime == 0.0)
  {
    ImageIOLogInternal("⏹️   ImageIO: not launching XPCService (no ImageIO call within first 8 sec)...\n", a2, *&gFirstCallTime);
    IIONumber::IIONumber(v2, -2.0);
    CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    IIONumber::~IIONumber(v2);
  }
}

void sub_18608F2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void __CGInitializeImageIO_block_invoke_4(uint64_t a1, uint64_t a2)
{
  ImageIOLogInternal("✳️   ImageIO: launching XPCService: %g\n", a2, gSavedFirstCallTime);
  if (IIOXPCClient::GetIIOXPCClient(void)::xpcClientCreate != -1)
  {
    __CGInitializeImageIO_block_invoke_2_cold_1();
  }

  v2 = IIOXPCClient::GetIIOXPCClient(void)::gIIOXPCClient;
  if (IIOIsOOPEnabled(0))
  {

    IIOXPCClient::wakeup_xpc_service(v2);
  }
}

void IIOXPCClient::wakeup_xpc_service(IIOXPCClient *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke;
  block[3] = &__block_descriptor_tmp_84;
  block[4] = this;
  if (IIOXPCClient::wakeup_xpc_service(void)::onceToken != -1)
  {
    dispatch_once(&IIOXPCClient::wakeup_xpc_service(void)::onceToken, block);
  }
}

void IIOXPCClient::~IIOXPCClient(IIOXPCClient *this)
{
  *this = &unk_1EF4DC120;
  pthread_mutex_destroy((this + 32));
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  IIOXPCClient::~IIOXPCClient(this);

  JUMPOUT(0x186602850);
}

void IIOXPCClient::connection_set_event_handler(IIOXPCClient *this, _xpc_connection_s *a2, dispatch_queue_s *a3)
{
  if (!a2)
  {
    IIOXPCClient::connection_set_event_handler();
  }

  IIOXPCLog("connection_set_event_handler %p\n", a2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN12IIOXPCClient28connection_set_event_handlerEP17_xpc_connection_sP16dispatch_queue_s_block_invoke;
  handler[3] = &__block_descriptor_tmp_40_0;
  handler[4] = this;
  handler[5] = a2;
  xpc_connection_set_event_handler(a2, handler);
  xpc_connection_resume(a2);
}

void ___ZN12IIOXPCClient28connection_set_event_handlerEP17_xpc_connection_sP16dispatch_queue_s_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  name = xpc_connection_get_name(*(a1 + 40));
  IIOXPCLog("xpc connection  event handler called for %s\n", name);
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E98])
  {
    v6 = *MEMORY[0x1E69E9E28];
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v10 = string;
      v11 = xpc_connection_get_name(*(a1 + 40));
      ImageIOLog("❌ ImageIOXPC: connection interrupted: %s (%s)\n", v11, v10);
      kdebug_trace();
      *(v4 + 103) = 0;
    }

    else
    {
      v8 = MEMORY[0x1E69E9E20];
      v9 = xpc_connection_get_name(*(a1 + 40));
      if (a2 == v8)
      {
        ImageIOLog("❌ XPC_ERROR_CONNECTION_INVALID: %s\n", v9);

        kdebug_trace();
      }

      else
      {
        xpc_dictionary_get_string(a2, v6);
        IIOXPCLog("❌ ImageIOXPC: connection %s received unexpected error event: %s\n");
      }
    }
  }

  else
  {
    xpc_connection_get_name(*(a1 + 40));
    IIOXPCLog("❌ ImageIOXPC: received unexpected event in connection handler for service %s\n");
  }
}

double iio_xpc_get_CGRect_from_xpcObj(void *a1)
{
  if (xpc_dictionary_get_count(a1) != 4)
  {
    return 0.0;
  }

  v2 = xpc_dictionary_get_double(a1, "origin_x");
  xpc_dictionary_get_double(a1, "origin_y");
  xpc_dictionary_get_double(a1, "size_width");
  xpc_dictionary_get_double(a1, "size_height");
  return v2;
}

void iio_xpc_get_CGSize_from_xpcObj(void *a1)
{
  if (xpc_dictionary_get_count(a1) == 2)
  {
    xpc_dictionary_get_double(a1, "size_width");
    xpc_dictionary_get_double(a1, "size_height");
  }
}

void IIOXPCClient::addProcInfo(IIOXPCClient *this, void *a2)
{
  v3 = getpid();
  xpc_dictionary_set_uint64(a2, "iio_xpc_msg_pid", v3);
  v4 = getprogname();

  xpc_dictionary_set_string(a2, "iio_xpc_msg_name", v4);
}

uint64_t ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  kdebug_trace();
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    if ((*(v1 + 101) & 1) == 0)
    {
      xpc_dictionary_set_uint64(v2, "iio_xpc_message_id", 8uLL);
      xpc_dictionary_set_uint64(v3, "iio_xpc_msg_debugflags", gIIODebugFlags);
      IIOXPCClient::addProcInfo(v4, v3);
      v5 = dispatch_queue_create("com.apple.iio.queue", MEMORY[0x1E69E96A8]);
      if (!v5)
      {
        ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke_cold_1();
      }

      v6 = v5;
      v7 = IIOXPCClient::xpc_service_connection(v1);
      xpc_connection_send_message_with_reply(v7, v3, v6, &__block_literal_global_83);
      dispatch_release(v6);
    }

    xpc_release(v3);
  }

  return kdebug_trace();
}

xpc_object_t IIOXPCClient::send_message_with_reply(IIOXPCClient *this, _xpc_connection_s *a2, dispatch_queue_s *a3, xpc_object_t xdict)
{
  atomic_fetch_add(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID, 1uLL);
  v7 = atomic_load(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID);
  xpc_dictionary_set_uint64(xdict, "iio_xpc_transacion_id", v7);
  v9 = atomic_load(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID);
  if (v9 == 1)
  {
    gFirstCallTime = CFAbsoluteTimeGetCurrent();
    ImageIOLogInternal("⏹️   ImageIO: first ImageIO call after %g seconds [previously: %g]...\n", v10, *&gFirstCallTime - *&gWakeupTime, gSavedFirstCallTime);
    v12 = *&gFirstCallTime - *&gWakeupTime;
    if (*&gSavedFirstCallTime >= 0.0)
    {
      if (*&gSavedFirstCallTime - v12 <= 0.01)
      {
LABEL_9:
        v8 = kdebug_trace();
        goto LABEL_10;
      }

      *&gSavedFirstCallTime = *&gFirstCallTime - *&gWakeupTime;
      ImageIOLogInternal("⏹️   ImageIO: updating first IIO ImageIO to %g\n", v11, *&v12);
      IIONumber::IIONumber(v24, *&gSavedFirstCallTime);
      CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    }

    else
    {
      if (v12 > 8.0)
      {
        v12 = 8.0;
      }

      gSavedFirstCallTime = *&v12;
      ImageIOLogInternal("⏹️   ImageIO: updating first ImageIO call to %g\n", v11, *&v12);
      IIONumber::IIONumber(v24, *&gSavedFirstCallTime);
      CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    }

    IIONumber::~IIONumber(v24);
    goto LABEL_9;
  }

LABEL_10:
  IIOXPCClient::addProcInfo(v8, xdict);
  if (IIO_CreateIdentityToken())
  {
    xpc_dictionary_set_mach_send();
  }

  IIOSavePermissionsToXPCObject(xdict, v13);
  IIOSaveAllowedTypesToXPCObject(xdict, v14);
  *(this + 101) = 1;
  v15 = xpc_connection_send_message_with_reply_sync(a2, xdict);
  empty = v15;
  if (v15)
  {
    v17 = MEMORY[0x186604600](v15);
    if (v17 == MEMORY[0x1E69E9E98])
    {
      kdebug_trace();
      string = xpc_dictionary_get_string(empty, *MEMORY[0x1E69E9E28]);
      LogFault("send_message_with_reply", 669, "❌ Error: ImageIOXPCService send message error: %s\n", string);
      xpc_release(empty);
      empty = xpc_dictionary_create_empty();
      v18 = iio_xpc_add_message_dict(empty);
      if (!v18)
      {
LABEL_20:
        uint64 = xpc_dictionary_get_uint64(xdict, "iio_xpc_message_id");
        xpc_dictionary_set_uint64(empty, "iio_xpc_message_id", uint64);
        v22 = xpc_dictionary_get_uint64(xdict, "iio_xpc_transacion_id");
        xpc_dictionary_set_uint64(empty, "iio_xpc_transacion_id", v22);
        return empty;
      }

      v19 = 0x70000000FFFFFA88;
    }

    else
    {
      if (IIOXPCClient::replyIsValid(v17, empty))
      {
        goto LABEL_20;
      }

      xpc_release(empty);
      empty = xpc_dictionary_create_empty();
      v18 = iio_xpc_add_message_dict(empty);
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = 0x70000000FFFFFA87;
    }

    xpc_dictionary_set_int64(v18, "iio_xpc_msg_error", v19);
    goto LABEL_20;
  }

  return empty;
}

void sub_18608FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

xpc_object_t iio_xpc_add_message_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_msg");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_msg", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

void iio_xpc_dictionary_set_error_code(void *a1, unsigned int a2)
{
  if (a1)
  {
    xpc_dictionary_set_int64(a1, "iio_xpc_msg_error", a2 | 0x7000000000000000);
  }
}

uint64_t IIOXPCClient::replyIsValid(IIOXPCClient *this, void *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E80])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN12IIOXPCClient12replyIsValidEPv_block_invoke;
    v6[3] = &unk_1E6F0BA38;
    v6[4] = &v7;
    v6[5] = &v11;
    xpc_dictionary_apply(a2, v6);
    v3 = v12;
    if (*(v8 + 6) <= 1u)
    {
      v4 = *(v12 + 24);
      goto LABEL_6;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v3 = v12;
  }

  *(v3 + 24) = 0;
LABEL_6:
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

void sub_18608FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IIOXPCClient12replyIsValidEPv_block_invoke(uint64_t a1, char *__s)
{
  v4 = strspn(__s, "abcdefghijklmnopqrstuvwxyz0123456789_");
  v5 = strlen(__s);
  v6 = v4 == v5 && v5 >= 9;
  if (v6 && !strncmp("iio_xpc_", __s, 8uLL))
  {
    if (!strncmp(__s, "iio_xpc_plugin_data", 0x13uLL))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    if (strncmp("iio_xpc_message_id", __s, 0x12uLL) && strncmp("iio_xpc_transacion_id", __s, 0x15uLL))
    {
      return 1;
    }
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

dispatch_queue_t IIOXPCClient::xpc_service_queue(IIOXPCClient *this)
{
  if (*(this + 102) == 1)
  {
    return *(this + 2);
  }

  *(this + 102) = 1;
  IIOXPCLog("create xpc service queue\n");
  result = dispatch_queue_create("com.apple.ImageIOXPCService.queue", 0);
  *(this + 2) = result;
  return result;
}

uint64_t IIOXPCClient::xpc_service_connection(IIOXPCClient *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 103) & 1) == 0)
  {
    *(this + 103) = 1;
    IIOXPCLog("create xpc service connection (_connection: %p)\n", *(this + 3));
    v2 = xpc_connection_create("com.apple.ImageIOXPCService", 0);
    *(this + 3) = v2;
    IIOXPCClient::connection_set_event_handler(this, v2, v3);
  }

  pthread_mutex_unlock((this + 32));
  return *(this + 3);
}

BOOL iio_xpc_dictionary_add_databuffer(void *a1, const char *a2, void *buffer, size_t size)
{
  v6 = dispatch_data_create(buffer, size, 0, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = xpc_data_create_with_dispatch_data(v6);
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    xpc_dictionary_set_value(a1, a2, v8);
    xpc_release(v10);
  }

  dispatch_release(v7);
  return v9;
}

BOOL iio_xpc_dictionary_add_CFData(void *a1, const char *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return iio_xpc_dictionary_add_databuffer(a1, a2, BytePtr, Length);
}

uint64_t iio_xpc_get_IIOHeaderOptions_from_xpcObj(void *a1, const char *a2, uint64_t a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data && length == 24)
  {
    v5 = *data;
    *(a3 + 16) = data[2];
    *a3 = v5;
  }

  return 1;
}

void *iio_xpc_add_xpcObj_from_CGRect(double a1, double a2, double a3, double a4)
{
  empty = xpc_dictionary_create_empty();
  v9 = empty;
  if (empty)
  {
    xpc_dictionary_set_double(empty, "origin_x", a1);
    xpc_dictionary_set_double(v9, "origin_y", a2);
    xpc_dictionary_set_double(v9, "size_width", a3);
    xpc_dictionary_set_double(v9, "size_height", a4);
  }

  return v9;
}

void *iio_xpc_add_xpcObj_from_CGSize(double a1, double a2)
{
  empty = xpc_dictionary_create_empty();
  v5 = empty;
  if (empty)
  {
    xpc_dictionary_set_double(empty, "size_width", a1);
    xpc_dictionary_set_double(v5, "size_height", a2);
  }

  return v5;
}

void iio_xpc_dictionary_addCGRect(void *a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v8 = iio_xpc_add_xpcObj_from_CGRect(a3, a4, a5, a6);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_value(a1, a2, v8);

    xpc_release(v9);
  }
}

double iio_xpc_dictionary_get_CGRect(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);

  return iio_xpc_get_CGRect_from_xpcObj(value);
}

void iio_xpc_dictionary_addCGSize(void *a1, const char *a2, double a3, double a4)
{
  v6 = iio_xpc_add_xpcObj_from_CGSize(a3, a4);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_value(a1, a2, v6);

    xpc_release(v7);
  }
}

void iio_xpc_dictionary_get_CGSize(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);

  iio_xpc_get_CGSize_from_xpcObj(value);
}

void iio_xpc_dictionary_add_GlobalInfo(void *a1, const __CFData *a2, unsigned int a3)
{
  if (a2)
  {
    empty = xpc_dictionary_create_empty();
    iio_xpc_dictionary_add_CFData(empty, "iio_xpc_plugin_global_info_data", a2);
    Length = CFDataGetLength(a2);
    xpc_dictionary_set_uint64(empty, "iio_xpc_plugin_global_info_data_size", Length);
    xpc_dictionary_set_uint64(empty, "iio_xpc_plugin_global_info_ostype", a3);
    xpc_dictionary_set_value(a1, "iio_xpc_plugin_global_info", empty);

    xpc_release(empty);
  }
}

xpc_object_t iio_xpc_dictionary_get_GlobalInfo(void *a1, uint64_t *a2)
{
  length = 0;
  result = xpc_dictionary_get_dictionary(a1, "iio_xpc_plugin_global_info");
  if (!result)
  {
    v7 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v4 = result;
  data = xpc_dictionary_get_data(result, "iio_xpc_plugin_global_info_data", &length);
  uint64 = xpc_dictionary_get_uint64(v4, "iio_xpc_plugin_global_info_data_size");
  if (uint64 == length)
  {
    v7 = uint64;
  }

  else
  {
    v7 = 0;
  }

  if (uint64 == length)
  {
    result = data;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v7;
  }

  return result;
}

xpc_object_t iio_xpc_dictionary_copy_CFDictionary(void *a1, const char *a2)
{
  result = xpc_dictionary_get_dictionary(a1, a2);
  if (result)
  {

    return _CFXPCCreateCFObjectFromXPCObject();
  }

  return result;
}

uint64_t iio_xpc_dictionary_add_CFDictionary(void *a1, const char *a2, uint64_t a3)
{
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v5)
  {
    return 4294967246;
  }

  v6 = v5;
  xpc_dictionary_set_value(a1, a2, v5);
  xpc_release(v6);
  return 0;
}

uint64_t iio_xpc_dictionary_get_error_code(void *a1)
{
  v1 = 4294965895;
  if (a1)
  {
    int64 = xpc_dictionary_get_int64(a1, "iio_xpc_msg_error");
    if ((~int64 & 0x7000000000000000) != 0)
    {
      return 4294965895;
    }

    else
    {
      return int64;
    }
  }

  return v1;
}

xpc_object_t iio_xpc_add_source_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_src");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_src", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_plugin_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_plugin");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_plugin", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_callback_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_cb");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_cb", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_permission_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_permission");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_permission", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

uint64_t _cg_png_set_palette_to_rgb(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if ((v1 & 0x40) != 0)
    {
      return png_app_error(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 80) = v1 | 0x4000;
      *(result + 88) |= 0x2001000u;
    }
  }

  return result;
}

unsigned int *png_do_gray_to_rgb(unsigned int *result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 17);
  if (v3 >= 8)
  {
    v4 = *(result + 16);
    if ((v4 & 2) == 0)
    {
      v5 = *result;
      v6 = *result;
      if (v4 == 4)
      {
        if (v3 == 8)
        {
          if (v6)
          {
            v15 = (a2 + 2 * v5 - 1);
            v16 = &v15[2 * v5];
            while (v15 < a3)
            {
              if (v15 < a2)
              {
                break;
              }

              if (v16 >= a3)
              {
                break;
              }

              if (v16 < a2)
              {
                break;
              }

              v18 = *v15;
              v17 = v15 - 1;
              *v16 = v18;
              if (v17 >= a3)
              {
                break;
              }

              if (v17 < a2)
              {
                break;
              }

              v19 = v16 - 1;
              if (v19 >= a3)
              {
                break;
              }

              if (v19 < a2)
              {
                break;
              }

              v20 = *v17;
              *v19 = *v17;
              v21 = v19 - 1;
              if (v21 >= a3)
              {
                break;
              }

              if (v21 < a2)
              {
                break;
              }

              *v21 = v20;
              v22 = v21 - 1;
              if (v22 >= a3 || v22 < a2)
              {
                break;
              }

              v23 = *v17;
              v15 = v17 - 1;
              *v22 = v23;
              v16 = v22 - 1;
              if (!--v6)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_92;
          }
        }

        else if (v6)
        {
          v34 = (a2 + 4 * v5 - 1);
          v35 = &v34[4 * v5];
          while (v34 < a3)
          {
            if (v34 < a2)
            {
              break;
            }

            if (v35 >= a3)
            {
              break;
            }

            if (v35 < a2)
            {
              break;
            }

            v37 = *v34;
            v36 = v34 - 1;
            *v35 = v37;
            if (v36 >= a3)
            {
              break;
            }

            if (v36 < a2)
            {
              break;
            }

            v38 = v35 - 1;
            if (v38 >= a3)
            {
              break;
            }

            if (v38 < a2)
            {
              break;
            }

            v40 = *v36;
            v39 = v36 - 1;
            *v38 = v40;
            if (v39 >= a3)
            {
              break;
            }

            if (v39 < a2)
            {
              break;
            }

            v41 = v38 - 1;
            if (v41 >= a3)
            {
              break;
            }

            if (v41 < a2)
            {
              break;
            }

            v43 = *v39;
            v42 = v39 - 1;
            *v41 = v43;
            if (v42 >= a3)
            {
              break;
            }

            if (v42 < a2)
            {
              break;
            }

            v44 = v41 - 1;
            if (v44 >= a3)
            {
              break;
            }

            if (v44 < a2)
            {
              break;
            }

            *v44 = *v42;
            v45 = v44 - 1;
            if (v45 >= a3)
            {
              break;
            }

            if (v45 < a2)
            {
              break;
            }

            *v45 = v42[1];
            v46 = v45 - 1;
            if (v46 >= a3)
            {
              break;
            }

            if (v46 < a2)
            {
              break;
            }

            *v46 = *v42;
            v47 = v46 - 1;
            if (v47 >= a3)
            {
              break;
            }

            if (v47 < a2)
            {
              break;
            }

            *v47 = v42[1];
            v48 = v47 - 1;
            if (v48 >= a3 || v48 < a2)
            {
              break;
            }

            v49 = *v42;
            v34 = v42 - 1;
            *v48 = v49;
            v35 = v48 - 1;
            if (!--v6)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_92;
        }
      }

      else if (!*(result + 16))
      {
        if (v3 == 8)
        {
          if (v6)
          {
            v7 = (a2 + v5 - 1);
            v8 = &v7[2 * v5];
            while (v7 < a3 && v7 >= a2 && v8 < a3 && v8 >= a2)
            {
              v9 = *v7;
              *v8 = *v7;
              v10 = v8 - 1;
              if (v10 >= a3 || v10 < a2)
              {
                break;
              }

              *v10 = v9;
              v12 = v10 - 1;
              if (v12 >= a3 || v12 < a2)
              {
                break;
              }

              v14 = *v7--;
              *v12 = v14;
              v8 = v12 - 1;
              if (!--v6)
              {
                goto LABEL_88;
              }
            }

LABEL_92:
            __break(0x5519u);
            return result;
          }
        }

        else if (v6)
        {
          v24 = (a2 + 2 * v5 - 1);
          v25 = &v24[4 * v5];
          while (v24 < a3)
          {
            if (v24 < a2)
            {
              break;
            }

            if (v25 >= a3)
            {
              break;
            }

            if (v25 < a2)
            {
              break;
            }

            v27 = *v24;
            v26 = v24 - 1;
            *v25 = v27;
            if (v26 >= a3)
            {
              break;
            }

            if (v26 < a2)
            {
              break;
            }

            v28 = v25 - 1;
            if (v28 >= a3)
            {
              break;
            }

            if (v28 < a2)
            {
              break;
            }

            *v28 = *v26;
            v29 = v28 - 1;
            if (v29 >= a3)
            {
              break;
            }

            if (v29 < a2)
            {
              break;
            }

            *v29 = v26[1];
            v30 = v29 - 1;
            if (v30 >= a3)
            {
              break;
            }

            if (v30 < a2)
            {
              break;
            }

            *v30 = *v26;
            v31 = v30 - 1;
            if (v31 >= a3)
            {
              break;
            }

            if (v31 < a2)
            {
              break;
            }

            *v31 = v26[1];
            v32 = v31 - 1;
            if (v32 >= a3 || v32 < a2)
            {
              break;
            }

            v33 = *v26;
            v24 = v26 - 1;
            *v32 = v33;
            v25 = v32 - 1;
            if (!--v6)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_88:
      v50 = *(result + 18) + 2;
      *(result + 18) = v50;
      *(result + 16) |= 2u;
      v51 = *(result + 17) * v50;
      *(result + 19) = v51;
      v52 = (v51 * v5 + 7) >> 3;
      v53 = v5 * (v51 >> 3);
      if (v51 < 8u)
      {
        v53 = v52;
      }

      *(result + 1) = v53;
    }
  }

  return result;
}

void yyerror(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  vasprintf(__s1, a2, va);
  v9 = __s1[0];
  if (__s1[0])
  {
    if (a1 && (v10 = *(a1 + 16)) != 0)
    {
      if (!*(v10 + 16))
      {
        *(v10 + 16) = strdup(__s1[0]);
      }
    }

    else
    {
      fputs(__s1[0], *MEMORY[0x1E69E9848]);
      v9 = __s1[0];
    }

    free(v9);
  }
}

BOOL IIO_Reader_OpenEXR::testHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = AppleEXREnabled(a1, a2);
  if (result)
  {
    return gFunc_axr_introspect_data(a2, a3, 0) == 0;
  }

  return result;
}

uint64_t IIO_Reader_OpenEXR::getImageCount(IIO_Reader_OpenEXR *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (!AppleEXREnabled(this, a2))
  {
    part_count = 1;
    if (!a5)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v14 = 0;
  v7 = IIOImageReadSession::retainBytePointer(a2, &v14, 1);
  Size = IIOImageReadSession::getSize(a2);
  v13 = 0;
  v9 = gFunc_axr_data_create(v7, Size, &v13, 0, 0);
  if (v13)
  {
    name = gFunc_axr_error_get_name();
    LogError("getImageCount", 85, "*** axr_data_create failed: %s (%d)\n", name, v13);
  }

  if (v9)
  {
    part_count = gFunc_axr_data_get_part_count(v9);
    os_release(v9);
  }

  else
  {
    part_count = 0;
  }

  IIOImageReadSession::releaseBytePointer(a2, v14);
  if (a5)
  {
LABEL_10:
    *a5 = part_count;
  }

  return 0;
}

uint64_t IIO_Reader_OpenEXR::UpdateImageInfo(uint64_t a1, unint64_t *a2)
{
  view_count = gFunc_axr_logical_image_list_get_view_count();
  v17 = view_count;
  if (!view_count)
  {
    IIO_Reader_OpenEXR::UpdateImageInfo();
    return 4294967246;
  }

  v5 = 0;
  while (2)
  {
    memset(v27, 0, 72);
    v25 = 0u;
    *__p = 0u;
    *v23 = 0u;
    *v24 = 0u;
    memset(v22, 0, sizeof(v22));
    DWORD1(v22[0]) = v5;
    view_name = gFunc_axr_logical_image_list_get_view_name(a1, v5);
    MEMORY[0x186602520](v23, view_name);
    image_count = gFunc_axr_logical_image_list_get_image_count(a1, v5);
    v8 = image_count;
    if (!image_count)
    {
LABEL_23:
      v10 = 0;
      v15 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      DWORD2(v22[0]) = v9;
      image_name = gFunc_axr_logical_image_list_get_image_name(a1, v5, v9);
      MEMORY[0x186602520](&v24[1], image_name);
      gFunc_axr_logical_image_list_get_image_info(&v18, a1, v5, v9, 1);
      *(&v27[3] + 8) = v21;
      *(&v27[2] + 8) = v20;
      *(&v27[1] + 8) = v19;
      *(v27 + 8) = v18;
      if (!v19)
      {
        goto LABEL_8;
      }

      if (v19 != 1)
      {
        break;
      }

      LOWORD(v22[0]) = 16;
LABEL_10:
      MEMORY[0x186602520](__p, "");
      for (i = 32; i != -1; --i)
      {
        if ((*(&v27[0] + 1) >> i))
        {
          v13 = "";
          if (i <= 0x11)
          {
            v13 = off_1E6F0BA58[i];
          }

          std::string::append(__p, v13);
        }
      }

      if (LODWORD(v27[3]) <= 3)
      {
        memset(&v27[3] + 4 * LODWORD(v27[3]) + 4, 255, (16 - 4 * LODWORD(v27[3])));
      }

      v14 = BYTE7(v27[0]);
      if (SBYTE7(v27[0]) < 0)
      {
        v14 = __p[1];
      }

      if (v14)
      {
        std::string::append(__p, " ");
      }

      std::vector<EXRPluginData>::push_back[abi:fe200100](a2, v22);
      v10 = ++v9 < v8;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }

    if (v19 == 2)
    {
LABEL_8:
      LOWORD(v22[0]) = 32;
      goto LABEL_10;
    }

    LogError("UpdateImageInfo", 156, "*** ERROR: unexpected imageInfo.type: %d\n", DWORD2(v27[1]));
    v15 = 4294967246;
LABEL_24:
    if (SBYTE7(v27[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (SHIBYTE(v24[0]) < 0)
    {
      operator delete(v23[0]);
    }

    if (!v10)
    {
      if (++v5 == v17)
      {
        if (a2[1] == *a2)
        {
          return 4294967246;
        }

        else
        {
          return v15;
        }
      }

      continue;
    }

    return v15;
  }
}

void sub_186091094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  EXRPluginData::~EXRPluginData(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EXRPluginData>::push_back[abi:fe200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EXRPluginData>::__emplace_back_slow_path<EXRPluginData const&>(a1, a2);
  }

  else
  {
    std::vector<EXRPluginData>::__construct_one_at_end[abi:fe200100]<EXRPluginData const&>(a1, a2);
    result = v3 + 168;
  }

  a1[1] = result;
  return result;
}

void EXRPluginData::~EXRPluginData(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t IIO_Reader_OpenEXR::updatePartInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  gFunc_axr_data_get_part_info(&v29, a3, *(a4 + 31), 1);
  v5 = v29;
  v6 = HIDWORD(v29);
  v7 = v30;
  v8 = HIDWORD(v30);
  v10 = v31;
  v9 = HIDWORD(v31);
  v11 = v32;
  v20 = v34;
  v21 = v33;
  v13 = v35;
  v12 = v36;
  v14 = v37;
  v15 = v38;
  v17 = v39;
  v16 = v40;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  IIOArray::IIOArray(&v29);
  IIONumber::IIONumber(&v26, v5);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v7);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v6);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v8);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIODictionary::setObjectForKey(a2, v30, "dataWindow");
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIOArray::IIOArray(&v26);
  IIONumber::IIONumber(&v23, v10);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v11);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v9);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v21);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIODictionary::setObjectForKey(a2, v27, "displayWindow");
  name = gFunc_axr_compression_get_name(v20);
  IIOString::IIOString(&v23, name);
  IIODictionary::setObjectForKey(a2, v25, "compression");
  IIOString::~IIOString(&v23);
  if (v17 && *v17)
  {
    IIOString::IIOString(&v23, v17);
    IIODictionary::setObjectForKey(a2, v25, "name");
    IIOString::~IIOString(&v23);
  }

  if (v16 && *v16)
  {
    IIOString::IIOString(&v23, v16);
    IIODictionary::setObjectForKey(a2, v25, "view");
    IIOString::~IIOString(&v23);
  }

  IIONumber::IIONumber(&v23, v13);
  IIODictionary::setObjectForKey(a2, &v23, "AspectRatio");
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v15);
  IIODictionary::setObjectForKey(a2, &v23, "screenWindowWidth");
  IIONumber::~IIONumber(&v23);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  IIOArray::IIOArray(&v23);
  IIONumber::IIONumber(v22, v12);
  IIOArray::addObject(&v23, v22);
  IIONumber::~IIONumber(v22);
  IIONumber::IIONumber(v22, v14);
  IIOArray::addObject(&v23, v22);
  IIONumber::~IIONumber(v22);
  IIODictionary::setObjectForKey(a2, v24, "screenWindowCenter");
  IIOArray::~IIOArray(&v23);
  IIOArray::~IIOArray(&v26);
  IIOArray::~IIOArray(&v29);
  return 0;
}

void sub_1860914A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  IIOString::~IIOString(va);
  IIOArray::~IIOArray(va1);
  IIOArray::~IIOArray(va2);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_OpenEXR::updatePropertyInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  v5 = *(a4 + 31);
  property_count = gFunc_axr_data_get_property_count(a3, v5);
  v7 = property_count;
  if (property_count)
  {
    v8 = 0;
    do
    {
      gFunc_axr_data_get_property(v10, a3, v5, v8++, 1);
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t IIO_Reader_OpenEXR::updateChannelInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 31);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  IIOArray::IIOArray(&v8);
  if (gFunc_axr_data_get_channel_count(a3, v6))
  {
    gFunc_axr_data_get_channel_info(&__p, a3, v6, 0, 1);
    memcpy(__dst, v12 + 4, sizeof(__dst));
    __p = 0;
    v12[0] = 0;
    v12[1] = 0;
    operator new();
  }

  IIODictionary::setObjectForKey(a2, v9, "channels");
  IIOArray::~IIOArray(&v8);
  return 0;
}

uint64_t IIO_Reader_OpenEXR::updateSourceProperties(IIO_Reader_OpenEXR *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (!AppleEXREnabled(this, a2))
  {
    return 0;
  }

  v48 = 0;
  v9 = IIOImageReadSession::retainBytePointer(a2, &v48, 1);
  Size = IIOImageReadSession::getSize(a2);
  v47 = 0;
  v11 = gFunc_axr_data_create(v9, Size, &v47, 0, 0);
  if (v47)
  {
    name = gFunc_axr_error_get_name();
    LogError("updateSourceProperties", 315, "*** axr_data_create failed: %s (%d)\n", name, v47);
  }

  if (v11)
  {
    logical_image_list = gFunc_axr_data_create_logical_image_list(v11);
    if (logical_image_list)
    {
      v14 = logical_image_list;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      updated = IIO_Reader_OpenEXR::UpdateImageInfo(logical_image_list, &v44);
      if (!updated)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        IIODictionary::IIODictionary(&v41);
        IIONumber::IIONumber(v33, 1022611261 * ((v45 - v44) >> 3));
        IIODictionary::setObjectForKey(&v41, v33, "ImageCount");
        v29 = v14;
        IIONumber::~IIONumber(v33);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        IIOArray::IIOArray(&v38);
        v16 = v44;
        if (v45 != v44)
        {
          v17 = 0;
          v18 = 1;
          do
          {
            *__p = 0u;
            memset(v37, 0, sizeof(v37));
            memset(v35, 0, sizeof(v35));
            *&v33[16] = 0u;
            *v34 = 0u;
            *v33 = 0u;
            v19 = v16 + 168 * v17;
            v20 = *v19;
            *&v33[10] = *(v19 + 10);
            *v33 = v20;
            if (*(v19 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(v34, *(v19 + 32), *(v19 + 40));
            }

            else
            {
              v21 = *(v19 + 32);
              v35[0] = *(v19 + 48);
              *v34 = v21;
            }

            if (*(v19 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v35[1], *(v19 + 56), *(v19 + 64));
            }

            else
            {
              v22 = *(v19 + 56);
              v35[3] = *(v19 + 72);
              *&v35[1] = v22;
            }

            if (*(v19 + 103) < 0)
            {
              std::string::__init_copy_ctor_external(__p, *(v19 + 80), *(v19 + 88));
            }

            else
            {
              v23 = *(v19 + 80);
              *v37 = *(v19 + 96);
              *__p = v23;
            }

            v24 = *(v19 + 104);
            v25 = *(v19 + 120);
            v26 = *(v19 + 136);
            *&v37[56] = *(v19 + 152);
            *&v37[40] = v26;
            *&v37[24] = v25;
            *&v37[8] = v24;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            IIODictionary::IIODictionary(&v30);
            (*(*this + 272))(this, &v30, v11, v33);
            (*(*this + 280))(this, &v30, v11, v33);
            (*(*this + 288))(this, &v30, v11, v33);
            IIOArray::addObject(&v38, v31);
            IIODictionary::~IIODictionary(&v30);
            if ((v37[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v35[3]) < 0)
            {
              operator delete(v35[1]);
            }

            if (SHIBYTE(v35[0]) < 0)
            {
              operator delete(v34[0]);
            }

            v17 = v18;
            v16 = v44;
          }

          while (0xCF3CF3CF3CF3CF3DLL * ((v45 - v44) >> 3) > v18++);
        }

        IIODictionary::setObjectForKey(&v41, v39, "Images");
        IIODictionary::setObjectForKey(a3, v42, "{FileContents}");
        IIOArray::~IIOArray(&v38);
        IIODictionary::~IIODictionary(&v41);
        v14 = v29;
      }

      os_release(v14);
      *v33 = &v44;
      std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](v33);
    }

    else
    {
      updated = 0;
    }

    os_release(v11);
  }

  else
  {
    updated = 0;
  }

  IIOImageReadSession::releaseBytePointer(a2, v48);
  return updated;
}

void sub_186091D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  IIODictionary::~IIODictionary((v32 - 160));
  a17 = v32 - 136;
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_OpenEXR::compareOptions(IIO_Reader_OpenEXR *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  BoolForKey = IIODictionary::getBoolForKey(v7, @"kCGImageSourceShouldAllowFloat");
  LODWORD(a3) = BoolForKey ^ IIODictionary::getBoolForKey(v6, @"kCGImageSourceShouldAllowFloat");
  IIODictionary::~IIODictionary(v6);
  IIODictionary::~IIODictionary(v7);
  return a3 ^ 1;
}

void sub_186091EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<EXRPluginData>::__construct_one_at_end[abi:fe200100]<EXRPluginData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 10) = *(a2 + 10);
  *v4 = v5;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 32) = v6;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v7 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 9);
    *(v4 + 56) = v7;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v8 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 80) = v8;
  }

  result = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(v4 + 152) = *(a2 + 152);
  *(v4 + 136) = v11;
  *(v4 + 120) = v10;
  *(v4 + 104) = result;
  *(a1 + 8) = v4 + 168;
  return result;
}

void sub_186091FC0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EXRPluginData>::__emplace_back_slow_path<EXRPluginData const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<EXRPluginData>>(a1, v6);
  }

  v7 = 168 * v2;
  v21 = 0;
  v22 = v7;
  v23 = v7;
  v8 = *a2;
  *(v7 + 10) = *(a2 + 10);
  *v7 = v8;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v9 = a2[2];
    *(v7 + 48) = *(a2 + 6);
    *(v7 + 32) = v9;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v10 = *(a2 + 56);
    *(v7 + 72) = *(a2 + 9);
    *(v7 + 56) = v10;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v11 = a2[5];
    *(v7 + 96) = *(a2 + 12);
    *(v7 + 80) = v11;
  }

  v12 = *(a2 + 136);
  v13 = *(a2 + 152);
  v14 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 104) = v14;
  *(v7 + 152) = v13;
  *(v7 + 136) = v12;
  *&v23 = v23 + 168;
  v15 = a1[1];
  v16 = v22 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<EXRPluginData>,EXRPluginData*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<EXRPluginData>::~__split_buffer(&v21);
  return v20;
}

void sub_1860921D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 79) < 0)
  {
    operator delete(*(v7 + 56));
  }

  if (*(v7 + 55) < 0)
  {
    operator delete(*(v7 + 32));
  }

  std::__split_buffer<EXRPluginData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<EXRPluginData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<EXRPluginData>,EXRPluginData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 10) = *(v7 + 10);
      *a4 = v8;
      v9 = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(a4 + 32) = v9;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 4) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 9);
      *(a4 + 56) = v10;
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v7 + 7) = 0;
      v11 = v7[5];
      *(a4 + 96) = *(v7 + 12);
      *(a4 + 80) = v11;
      *(v7 + 10) = 0;
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      v12 = *(v7 + 104);
      v13 = *(v7 + 120);
      v14 = *(v7 + 136);
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 136) = v14;
      *(a4 + 120) = v13;
      *(a4 + 104) = v12;
      v7 = (v7 + 168);
      a4 += 168;
    }

    while (v7 != a3);
    v19 = a4;
    LOBYTE(v17) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(a1, v5);
      v5 = (v5 + 168);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>>::~__exception_guard_exceptions[abi:fe200100](v16);
}

void std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    v3 = *(a2 + 32);

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>::operator()[abi:fe200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 168;
      std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<EXRPluginData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<EXRPluginData>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EXRPluginData>::__destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(v5, v4 - 168);
  }
}

void std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EXRPluginData>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EXRPluginData>::__base_destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

void IIO_Writer_PDF::~IIO_Writer_PDF(IIO_Writer_PDF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_PDF::write(IIO_Writer_PDF *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_PDF::write", 0, 0, -1, 0);
  }

  memset(v9, 0, sizeof(v9));
  PDFWritePlugin::PDFWritePlugin(v9, a2, a3);
  PDFWritePlugin::setup(v9);
  v5 = IIOWritePlugin::writeAll(v9);
  PDFWritePlugin::done(v9);
  PDFWritePlugin::~PDFWritePlugin(v9, v6, v7);
  return v5;
}

void sub_1860926A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186092690);
}

uint64_t _cg_png_set_swap(uint64_t result)
{
  if (result)
  {
    if (*(result + 432) == 16)
    {
      *(result + 88) |= 0x10u;
    }
  }

  return result;
}

uint64_t png_do_invert(uint64_t result, _BYTE *a2, unint64_t a3)
{
  if (*(result + 16) == 4)
  {
    v5 = *(result + 17);
    if (v5 == 16)
    {
      v8 = *(result + 8);
      if (v8)
      {
        v9 = 0;
        v10 = a2;
        while (v10 < a3)
        {
          *v10 = ~*v10;
          v11 = v10 + 1;
          if (v11 >= a3 || v11 < a2)
          {
            break;
          }

          *v11 = ~*v11;
          v10 = v11 + 3;
          v9 += 4;
          if (v9 >= v8)
          {
            return result;
          }
        }

        goto LABEL_26;
      }
    }

    else if (v5 == 8)
    {
      v6 = *(result + 8);
      if (v6)
      {
        v7 = 0;
        while (a2 < a3)
        {
          *a2 = ~*a2;
          a2 += 2;
          v7 += 2;
          if (v7 >= v6)
          {
            return result;
          }
        }

        goto LABEL_26;
      }
    }
  }

  else if (!*(result + 16))
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = a3 - a2;
      if (a3 < a2)
      {
        v4 = 0;
      }

      while (v4)
      {
        *a2 = ~*a2;
        ++a2;
        --v4;
        if (!--v3)
        {
          return result;
        }
      }

LABEL_26:
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t png_do_swap(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (*(result + 17) == 16)
  {
    v3 = *result * *(result + 18);
    if (v3)
    {
      v4 = a2;
      while (v4 < a3)
      {
        if (v4 < a2)
        {
          break;
        }

        v5 = (v4 + 1);
        if (v5 >= a3 || v5 < a2)
        {
          break;
        }

        v6 = *(v5 - 1);
        *(v5 - 1) = *v5;
        *v5 = v6;
        v4 = (v5 + 1);
        if (!--v3)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

int *png_do_bgr(int *result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 16);
  if ((v3 & 2) != 0)
  {
    v4 = *result;
    v5 = *(result + 17);
    if (v5 == 16)
    {
      if (v3 == 2)
      {
        if (v4)
        {
          v19 = a2;
          while (v19 < a3)
          {
            if (v19 < a2)
            {
              break;
            }

            v20 = (v19 + 4);
            if (v20 >= a3)
            {
              break;
            }

            if (v20 < a2)
            {
              break;
            }

            v21 = *(v20 - 4);
            *(v20 - 4) = *v20;
            *v20 = v21;
            v22 = (v20 - 3);
            if (v22 >= a3)
            {
              break;
            }

            if (v22 < a2)
            {
              break;
            }

            v23 = (v22 + 4);
            if (v23 >= a3 || v23 < a2)
            {
              break;
            }

            v24 = *(v23 - 4);
            *(v23 - 4) = *v23;
            *v23 = v24;
            v19 = (v23 + 1);
            if (!--v4)
            {
              return result;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v3 == 6 && v4 != 0)
      {
        v10 = a2;
        while (v10 < a3)
        {
          if (v10 < a2)
          {
            break;
          }

          v11 = (v10 + 4);
          if (v11 >= a3)
          {
            break;
          }

          if (v11 < a2)
          {
            break;
          }

          v12 = *(v11 - 4);
          *(v11 - 4) = *v11;
          *v11 = v12;
          v13 = (v11 - 3);
          if (v13 >= a3)
          {
            break;
          }

          if (v13 < a2)
          {
            break;
          }

          v14 = (v13 + 4);
          if (v14 >= a3 || v14 < a2)
          {
            break;
          }

          v15 = *(v14 - 4);
          *(v14 - 4) = *v14;
          *v14 = v15;
          v10 = (v14 + 3);
          if (!--v4)
          {
            return result;
          }
        }

        goto LABEL_50;
      }
    }

    else if (v5 == 8)
    {
      if (v3 == 2)
      {
        if (v4)
        {
          v16 = a2;
          while (v16 < a3)
          {
            if (v16 < a2)
            {
              break;
            }

            v17 = (v16 + 2);
            if (v17 >= a3 || v17 < a2)
            {
              break;
            }

            v18 = *(v17 - 2);
            *(v17 - 2) = *v17;
            *v17 = v18;
            v16 = (v17 + 1);
            if (!--v4)
            {
              return result;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v3 == 6 && v4)
      {
        v6 = a2;
        while (v6 < a3)
        {
          if (v6 < a2)
          {
            break;
          }

          v7 = (v6 + 2);
          if (v7 >= a3 || v7 < a2)
          {
            break;
          }

          v8 = *(v7 - 2);
          *(v7 - 2) = *v7;
          *v7 = v8;
          v6 = (v7 + 2);
          if (!--v4)
          {
            return result;
          }
        }

LABEL_50:
        __break(0x5519u);
      }
    }
  }

  return result;
}

uint64_t png_do_check_palette_indexes(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (*(result + 416))
  {
    v3 = 1 << v2 <= *(result + 416);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = -(*a2 * *(a2 + 19)) & 7;
    v5 = *(result + 336);
    v6 = *(result + 344);
    v7 = (v5 + *(a2 + 8));
    if (*(a2 + 17) > 3u)
    {
      if (v2 == 4)
      {
        while (v7 > v5)
        {
          if (v7 >= v6)
          {
            goto LABEL_63;
          }

          v21 = *v7 >> v4;
          v22 = v21 & 0xF;
          v23 = *(result + 420);
          v24 = v22 <= v23;
          if (v22 <= v23)
          {
            v22 = *(result + 420);
          }

          v25 = v21 >> 4;
          if (!v24 || v25 > v22)
          {
            if (v25 > v22)
            {
              v22 = v25;
            }

            *(result + 420) = v22;
          }

          LOBYTE(v4) = 0;
          --v7;
        }
      }

      else if (v2 == 8)
      {
        while (v7 > v5)
        {
          if (v7 >= v6)
          {
            goto LABEL_63;
          }

          v20 = *v7;
          if (*(result + 420) < v20)
          {
            *(result + 420) = v20;
          }

          --v7;
        }
      }
    }

    else if (v2 == 1)
    {
      if (v7 > v5)
      {
        while (v7 < v6)
        {
          if (*v7 >> v4)
          {
            *(result + 420) = 1;
          }

          LOBYTE(v4) = 0;
          if (--v7 <= v5)
          {
            return result;
          }
        }

LABEL_63:
        __break(0x5519u);
      }
    }

    else if (v2 == 2)
    {
      while (v7 > v5)
      {
        if (v7 >= v6)
        {
          goto LABEL_63;
        }

        v8 = *v7 >> v4;
        v9 = v8 & 3;
        v10 = *(result + 420);
        if (v9 <= v10)
        {
          v11 = *(result + 420);
        }

        else
        {
          v11 = v8 & 3;
        }

        v12 = (v8 >> 2) & 3;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = (v8 >> 2) & 3;
        }

        v14 = (v8 >> 4) & 3;
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = (v8 >> 4) & 3;
        }

        v16 = v8 >> 6;
        if (v9 > v10 || v12 > v11 || v14 > v13 || v16 > v15)
        {
          if (v16 > v15)
          {
            v15 = v16;
          }

          *(result + 420) = v15;
        }

        LOBYTE(v4) = 0;
        --v7;
      }
    }
  }

  return result;
}

uint64_t _cg_png_get_current_row_number(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 308);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mj2_video_source::get_stream_idx(mj2_video_source *this, int a2)
{
  v2 = *(this + 1);
  v3 = v2[170];
  if (v3 < 0)
  {
    v8 = *(*v2 + 8);
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(v8 + 104);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = 0;
    do
    {
      v11 = *(v9 + 40);
      if (v11 && (*(v11 + 680) & 0x80000000) != 0)
      {
        *(v11 + 680) = v10;
        v10 += *(v11 + 676);
      }

      v9 = *(v9 + 24);
    }

    while (v9);
    v3 = v2[170];
    if (v3 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = v2[22];
    if (v5 < v2[16])
    {
      v6 = v2[17];
      if (v6 > a2)
      {
        v7 = a2 + v6 * v5;
        if (v7 >= v2[169])
        {
          mj2_video_source::get_stream_idx();
        }

        return (v7 + v3);
      }
    }
  }

  return result;
}

uint64_t mj2_source::count_codestreams(mj2_source *this, int *a2)
{
  *a2 = 0;
  if (*this)
  {
    v2 = *(*this + 104);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(v2 + 40);
        if (v4 && (*(v4 + 680) & 0x80000000) != 0)
        {
          *(v4 + 680) = v3;
          v3 = *a2 + *(v4 + 676);
          *a2 = v3;
        }

        v2 = *(v2 + 24);
      }

      while (v2);
    }
  }

  return 1;
}

BOOL mj2_video_source::can_open_stream(mj2_video_source *this, int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 1);
    if (v4[22] < v4[16])
    {
      return v4[17] > a2;
    }
  }

  return result;
}

uint64_t mj2_source::get_track_type(mj2_source *this, int a2)
{
  if (!*this)
  {
    mj2_source::get_track_type();
  }

  v2 = *(*this + 104);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 16) != a2)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  if (*(v2 + 40))
  {
    return 1;
  }

  else
  {
    return 1000;
  }
}

uint64_t mj2_source::access_video_track(mj2_source *this, int a2)
{
  if (!*this)
  {
    mj2_source::access_video_track();
  }

  v2 = *(*this + 104);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 16) != a2)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    return *(v3 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t mj2_source::find_stream(mj2_source *this, int a2, unsigned int *a3, int *a4, int *a5)
{
  if (!*this)
  {
    return 1;
  }

  v19 = 0;
  mj2_source::count_codestreams(this, &v19);
  v10 = *(*this + 104);
  if (v10)
  {
    while (1)
    {
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = v11[170];
        if (v12 < 0)
        {
          return 0;
        }

        v13 = a2 - v12;
        if (v13 >= 0 && v13 < v11[169])
        {
          break;
        }
      }

      v10 = *(v10 + 24);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    *a3 = *(v10 + 16);
    v15 = v11[168];
    v16 = v15 == 0;
    v17 = v13 & 1;
    v18 = v13 >> (v15 != 0);
    if (v16)
    {
      v17 = 0;
    }

    *a4 = v18;
    *a5 = v17;
    return 1;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *a5 = 0;
    result = 1;
    *a4 = 0;
  }

  return result;
}

void IIO_Reader_ATX::~IIO_Reader_ATX(IIO_Reader_ATX *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

CGMutableImageMetadataRef CGImageMetadataCreateFromXPCObj(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = iio_xpc_dictionary_copy_CFDictionary(a1, IIO_METADATA_OBJ);
  if (v3)
  {
    v4 = v3;
    memset(v18, 0, sizeof(v18));
    IIODictionary::IIODictionary(v18, v3);
    Mutable = CGImageMetadataCreateMutable();
    memset(v17, 0, sizeof(v17));
    ObjectForKey = IIODictionary::getObjectForKey(v18, @"tags");
    IIOArray::IIOArray(v17, ObjectForKey);
    v19 = MEMORY[0x1E69E9820];
    cf = 0x40000000;
    v21 = ___ZL24IIOXPCDecodeMetadataTagsP8IIOArrayP15CGImageMetadata_block_invoke;
    v22 = &__block_descriptor_tmp_43;
    v23 = Mutable;
    IIOArray::enumerate(v17, &v19);
    if (IIODictionary::containsKey(v18, @"makerNoteProps"))
    {
      v6 = IIODictionary::getObjectForKey(v18, @"makerNoteProps");
      *(Mutable + 6) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
    }

    if (IIODictionary::containsKey(v18, @"NStoPrefix"))
    {
      v7 = IIODictionary::getObjectForKey(v18, @"NStoPrefix");
      *(Mutable + 4) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
    }

    if (IIODictionary::containsKey(v18, @"prefixToNS"))
    {
      v8 = IIODictionary::getObjectForKey(v18, @"prefixToNS");
      *(Mutable + 5) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    }

    if (IIODictionary::containsKey(v18, @"iptcComputedDigest"))
    {
      v9 = IIODictionary::getObjectForKey(v18, @"iptcComputedDigest");
      *(Mutable + 7) = CFRetain(v9);
    }

    if (IIODictionary::containsKey(v18, @"iptcPSIRDigest"))
    {
      v10 = IIODictionary::getObjectForKey(v18, @"iptcPSIRDigest");
      *(Mutable + 8) = CFRetain(v10);
    }

    *(Mutable + 16) = IIODictionary::getBoolForKey(v18, @"mutable");
    CFRelease(v4);
    IIOArray::~IIOArray(v17);
    IIODictionary::~IIODictionary(v18);
  }

  else
  {
    _cg_jpeg_mem_term("CGImageMetadataCreateFromXPCObj", 286, "*** NOTE: failed to get metadata-dictionary from xpc_object_t - decoding XMPData...\n");
    v12 = xpc_dictionary_get_BOOL(a1, IIO_METADATA_MUTABLE);
    if (!xpc_dictionary_get_value(a1, IIO_METADATA_OBJ_ORIG))
    {
      return 0;
    }

    v13 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    Mutable = CGImageMetadataCreateFromXMPData(v13);
    if (Mutable)
    {
      v15 = iio_xpc_dictionary_copy_CFDictionary(a1, IIO_METADATA_MAKER_ORIG);
      if (v15)
      {
        v16 = v15;
        v19 = 0;
        cf = 0;
        v21 = 0;
        IIODictionary::IIODictionary(&v19, v15, 1);
        *(Mutable + 6) = CFRetain(cf);
        CFRelease(v16);
        IIODictionary::~IIODictionary(&v19);
      }

      *(Mutable + 16) = v12;
    }

    CFRelease(v14);
  }

  return Mutable;
}

void sub_186093234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

xpc_object_t CGImageMetadataCreateXPCObj(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    IIODictionary::IIODictionary(&v16);
    v4 = MEMORY[0x1E695E4D0];
    if (!*(a1 + 16))
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKey(&v16, *v4, @"mutable");
    v13 = 0;
    value = 0;
    v15 = 0;
    IIOArray::IIOArray(&v13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZL24IIOXPCEncodeMetadataTagsPK15CGImageMetadataP8IIOArray_block_invoke;
    block[3] = &__block_descriptor_tmp_316;
    block[4] = &v13;
    CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
    IIODictionary::setObjectForKey(&v16, value, @"tags");
    v5 = *(a1 + 32);
    if (v5)
    {
      IIODictionary::setObjectForKey(&v16, v5, @"NStoPrefix");
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      IIODictionary::setObjectForKey(&v16, v6, @"prefixToNS");
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      IIODictionary::setObjectForKey(&v16, v7, @"makerNoteProps");
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      IIODictionary::setObjectForKey(&v16, v8, @"iptcComputedDigest");
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      IIODictionary::setObjectForKey(&v16, v9, @"iptcPSIRDigest");
    }

    if (iio_xpc_dictionary_add_CFDictionary(empty, IIO_METADATA_OBJ, v17))
    {
      _cg_jpeg_mem_term("CGImageMetadataCreateXPCObj", 353, "*** NOTE: failed to add metadata-dictionary to xpc_object_t - sending XMPData...\n");
      xpc_dictionary_set_BOOL(empty, IIO_METADATA_MUTABLE, *(a1 + 16));
      XMPData = CGImageMetadataCreateXMPData(a1, 0);
      if (XMPData)
      {
        iio_xpc_dictionary_add_CFData(empty, IIO_METADATA_OBJ_ORIG, XMPData);
        CFRelease(XMPData);
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        iio_xpc_dictionary_add_CFDictionary(empty, IIO_METADATA_MAKER_ORIG, v11);
      }
    }

    IIOArray::~IIOArray(&v13);
    IIODictionary::~IIODictionary(&v16);
  }

  return empty;
}

void sub_1860934A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t CGImageMetadataTagAppendQualifier(CGImageMetadata *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  Source = CGImageSourceGetSource(a2);
  v7 = CGImageSourceGetSource(a3);
  if (!v4)
  {
    return v4;
  }

  v9 = v7;
  v10 = CFGetTypeID(v4);
  TypeID = CGImageMetadataTagGetTypeID();
  v4 = 0;
  if (!a3)
  {
    return v4;
  }

  if (v10 != TypeID)
  {
    return v4;
  }

  v12 = CFGetTypeID(a3);
  v4 = 0;
  if (v12 != CGImageMetadataTagGetTypeID() || !Source || !v9)
  {
    return v4;
  }

  if (*(Source + 40) != 1)
  {
    v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Failed to add qualifier '%@:%@' to tag '%@:%@'. Qualifiers may only be added to string tags - not arrays or structures.", *(v9 + 24), *(v9 + 32), *(Source + 24), *(Source + 32));
    if (v16)
    {
      v22 = v16;
      IIOString::IIOString(err, v16);
      UTF8String = IIOString::createUTF8String(err);
      CGImageMetadataTagAppendQualifier_cold_1(err, UTF8String, v22);
    }

    return 0;
  }

  v13 = *(Source + 56);
  if (!v13 || (v14 = CFGetTypeID(*(Source + 56)), v14 != CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v13 = Mutable;
      *(Source + 56) = Mutable;
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  err[0] = 0;
  v4 = CGImageMetadataRegisterNamespaceForPrefix(a1, *(v9 + 16), *(v9 + 24), err);
  if (v4)
  {
    CFArrayAppendValue(v13, a3);
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(*(v9 + 24), 0);
    v18 = CFStringGetCStringPtr(*(v9 + 16), 0);
    LogMetadata("CGImageMetadataTagAppendQualifier", 417, "An error occurred while registering prefix '%s' for namespace '%s'\n", CStringPtr, v18);
    if (err[0])
    {
      v19 = CFErrorCopyFailureReason(err[0]);
      if (v19)
      {
        v20 = v19;
        v21 = CFStringGetCStringPtr(v19, 0);
        LogMetadata("CGImageMetadataTagAppendQualifier", 423, "Failure Reason: %s\n", v21);
        CFRelease(v20);
      }
    }
  }

  return v4;
}

void sub_1860936DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CFStringRef CreateEXIFDataTimeStringWithXMPDateTimeString(const __CFString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v5 = 0;
  v6 = 0;
  memset(&v3, 0, sizeof(v3));
  DateTimeStructFromXMPDateTimeString = GetDateTimeStructFromXMPDateTimeString(a1, &v3, 0, 0);
  result = 0;
  if (DateTimeStructFromXMPDateTimeString)
  {
    snprintf(__str, 0x14uLL, "%04d:%02d:%02d %02d:%02d:%02d", v3.tm_year + 1900, v3.tm_mon + 1, v3.tm_mday, v3.tm_hour, v3.tm_min, v3.tm_sec);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  }

  return result;
}

const __CFData *CGImageMetadataCreateXMPWithEXIFFiltered(const CGImageMetadata *a1)
{
  kdebug_trace();
  v2 = CGImageMetadataCreateWithEXIFFiltered(a1, 0);
  if (v2)
  {
    v3 = v2;
    XMPData = CGImageMetadataCreateXMPData(v2, 0);
    CFRelease(v3);
    if (XMPData)
    {
      CFDataGetLength(XMPData);
    }
  }

  else
  {
    XMPData = 0;
  }

  kdebug_trace();
  return XMPData;
}

CFDictionaryRef *CGImageMetadataCreateWithEXIFFiltered(const CGImageMetadata *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  MutableCopy = CGImageMetadataCreateMutableCopy(a1);
  v6 = MutableCopy;
  if (MutableCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZL37CGImageMetadataCreateWithEXIFFilteredPK15CGImageMetadatab_block_invoke;
    block[3] = &__block_descriptor_tmp_322;
    block[4] = MutableCopy;
    CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
    v7 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:description");
    v8 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:rights");
    v9 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:creator");
    v10 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:CreatorTool");
    v11 = CGImageMetadataCopyTagWithPath(v6, 0, @"photoshop:DateCreated");
    v12 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:CreateDate");
    v13 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:ModifyDate");
    Source = CGImageSourceGetSource(v7);
    v30 = CGImageSourceGetSource(v8);
    if (v7)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:description");
    }

    if (v8)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:rights");
    }

    if (v9)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:creator");
    }

    if (v10)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:CreatorTool");
    }

    if (v11)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"photoshop:DateCreated");
    }

    if (v12)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:CreateDate");
    }

    if (v13)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:ModifyDate");
    }

    if (v7 && (v15 = *(Source + 48)) != 0)
    {
      v28 = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;
      v19 = CFGetTypeID(v15);
      v20 = v19 != CFArrayGetTypeID() || CFArrayGetCount(*(Source + 48)) < 2;
      v9 = v18;
      v10 = v17;
      v11 = v16;
      v12 = v28;
      if (v8)
      {
LABEL_28:
        v22 = *(v30 + 48);
        if (v22)
        {
          v29 = v12;
          v23 = v11;
          v24 = v10;
          v25 = v9;
          v26 = CFGetTypeID(v22);
          if (v26 == CFArrayGetTypeID())
          {
            v20 &= CFArrayGetCount(*(v30 + 48)) < 2;
          }

          v9 = v25;
          v10 = v24;
          v11 = v23;
          v12 = v29;
        }
      }
    }

    else
    {
      v20 = 1;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    v27 = (CFDictionaryGetCount(v6[3]) < 1) & v20;
    if (a2)
    {
      v27 &= (v7 | v8 | v9 | v10 | v11 | v12 | v13) == 0;
    }

    if (v27)
    {
      CFRelease(v6);
      v6 = 0;
    }

    else
    {
      if (v7)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:description", v7);
      }

      if (v8)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:rights", v8);
      }

      if (v9)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:creator", v9);
      }

      if (v10)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:CreatorTool", v10);
      }

      if (v11)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"photoshop:DateCreated", v11);
      }

      if (v12)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:CreateDate", v12);
      }

      if (v13)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:ModifyDate", v13);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  return v6;
}

CFDictionaryRef *CGImageMetadataCreateExtendedXMPWithEXIFFiltered(const CGImageMetadata *a1, CFDataRef *a2, CFDataRef *a3, CFDataRef *a4, uint64_t a5, int a6)
{
  v6 = a5;
  result = CGImageMetadataCreateWithEXIFFiltered(a1, a6);
  if (result)
  {
    v11 = result;
    SerializedDataAndExtendedData = CGImageMetadataCreateSerializedDataAndExtendedData(result, a2, a3, a4, v6);
    CFRelease(v11);
    return SerializedDataAndExtendedData;
  }

  return result;
}

void CGImageMetadataRemoveGPS(uint64_t a1)
{
  v2 = 0;
  v3[31] = *MEMORY[0x1E69E9840];
  v3[0] = @"GPSAltitude";
  v3[1] = @"GPSAltitudeRef";
  v3[2] = @"GPSAreaInformation";
  v3[3] = @"GPSDestBearing";
  v3[4] = @"GPSDestBearingRef";
  v3[5] = @"GPSDestDistance";
  v3[6] = @"GPSDestDistanceRef";
  v3[7] = @"GPSDestLatitude";
  v3[8] = @"GPSDestLatitudeRef";
  v3[9] = @"GPSDestLongitude";
  v3[10] = @"GPSDestLongitudeRef";
  v3[11] = @"GPSDifferential";
  v3[12] = @"GPSHPositioningError";
  v3[13] = @"GPSDOP";
  v3[14] = @"GPSImgDirection";
  v3[15] = @"GPSImgDirectionRef";
  v3[16] = @"GPSLatitude";
  v3[17] = @"GPSLatitudeRef";
  v3[18] = @"GPSLongitude";
  v3[19] = @"GPSLongitudeRef";
  v3[20] = @"GPSMapDatum";
  v3[21] = @"GPSMeasureMode";
  v3[22] = @"GPSProcessingMethod";
  v3[23] = @"GPSSatellites";
  v3[24] = @"GPSSpeed";
  v3[25] = @"GPSSpeedRef";
  v3[26] = @"GPSStatus";
  v3[27] = @"GPSTimeStamp";
  v3[28] = @"GPSTrack";
  v3[29] = @"GPSTrackRef";
  v3[30] = @"GPSVersionID";
  do
  {
    CGImageMetadataRemoveTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", v3[v2++]);
  }

  while (v2 != 31);
}

void CGImageMetadataRemoveTopLevelTag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      key[1] = a3;
      key[2] = 0;
      key[0] = a2;
      CFDictionaryRemoveValue(*(a1 + 24), key);
    }
  }
}

CFArrayRef CreateGPSVersionArrayFromString(const __CFString *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  *values = 0u;
  v22 = 0u;
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != CFStringGetTypeID()) || (v3 = *MEMORY[0x1E695E480], (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @".")) == 0))
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v5 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v7 = Count;
  if (Count >= 2)
  {
    v8 = 0;
    while (1)
    {
      if (v7 <= v8)
      {
        valuePtr[0] = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        valuePtr[0] = CFStringGetIntValue(ValueAtIndex);
      }

      v10 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
      values[v8] = v10;
      if (!v10)
      {
        goto LABEL_24;
      }

      if (++v8 == 4)
      {
        v11 = CFArrayCreate(v3, values, 4, MEMORY[0x1E695E9C0]);
        goto LABEL_31;
      }
    }
  }

  if (Count == 1)
  {
    IIOString::IIOString(valuePtr, a1);
    UTF8String = IIOString::createUTF8String(valuePtr);
    IIOString::~IIOString(valuePtr);
    Length = CFStringGetLength(a1);
    if (UTF8String)
    {
      v14 = Length;
      v15 = 0;
      while (1)
      {
        if (v14 <= v15)
        {
          valuePtr[0] = 0;
          v16 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
        }

        else
        {
          if (UTF8String[v15] - 48 >= 0xA)
          {
            v16 = values[v15];
            goto LABEL_21;
          }

          valuePtr[0] = UTF8String[v15] - 48;
          v16 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
        }

        values[v15] = v16;
LABEL_21:
        if (!v16)
        {
          goto LABEL_24;
        }

        if (++v15 == 4)
        {
          v11 = CFArrayCreate(v3, values, 4, MEMORY[0x1E695E9C0]);
          free(UTF8String);
          goto LABEL_31;
        }
      }
    }
  }

  v11 = 0;
LABEL_31:
  CFRelease(v5);
LABEL_25:
  for (i = 0; i != 4; ++i)
  {
    v18 = values[i];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  return v11;
}

void sub_186094204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t CreateIntFromXMPFlashStruct(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Fired");
  DefaultString = CGImageMetadataGetDefaultString(Value);
  if (DefaultString)
  {
    v5 = CFStringCompare(DefaultString, @"True", 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  v6 = CFDictionaryGetValue(a1, @"Return");
  v7 = CGImageMetadataGetDefaultString(v6);
  if (v7)
  {
    v5 = v5 & 0xFFFFFFF9 | (2 * (CFStringGetIntValue(v7) & 3u));
  }

  v8 = CFDictionaryGetValue(a1, @"Mode");
  v9 = CGImageMetadataGetDefaultString(v8);
  if (v9)
  {
    v5 = v5 & 0xFFFFFFE7 | (8 * (CFStringGetIntValue(v9) & 3u));
  }

  v10 = CFDictionaryGetValue(a1, @"Function");
  v11 = CGImageMetadataGetDefaultString(v10);
  if (v11)
  {
    if (CFStringCompare(v11, @"True", 1uLL))
    {
      v5 = v5;
    }

    else
    {
      v5 = v5 | 0x20;
    }
  }

  v12 = CFDictionaryGetValue(a1, @"RedEyeMode");
  v13 = CGImageMetadataGetDefaultString(v12);
  if (v13)
  {
    if (CFStringCompare(v13, @"True", 1uLL))
    {
      return v5;
    }

    else
    {
      return v5 | 0x40;
    }
  }

  return v5;
}

CFStringRef CreateXMPGPSCoordinateFromCFValue(CFStringRef result, const __CFString *a2, int a3)
{
  valuePtr = 0.0;
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr))
      {
        if (a2)
        {
LABEL_5:
          if (a3)
          {
            v7 = CFStringCompare(a2, @"N", 0) == kCFCompareEqualTo;
            LODWORD(v8) = 83;
            v9 = 78;
          }

          else
          {
            v7 = CFStringCompare(a2, @"E", 0) == kCFCompareEqualTo;
            LODWORD(v8) = 87;
            v9 = 69;
          }

          if (v7)
          {
            v8 = v9;
          }

          else
          {
            v8 = v8;
          }

LABEL_23:
          valuePtr = fabs(valuePtr);
          return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d,%lg%c", valuePtr, (valuePtr - valuePtr) * 60.0, v8, *&valuePtr);
        }

LABEL_9:
        if (valuePtr < 0.0)
        {
          LODWORD(v8) = 87;
        }

        else
        {
          LODWORD(v8) = 69;
        }

        if (valuePtr < 0.0)
        {
          v11 = 83;
        }

        else
        {
          v11 = 78;
        }

        if (a3)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetDoubleValue(v5);
        if (a2)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t GetLegacyGPSFromXMPGPSCoordinate(void *a1, double *a2, _BYTE *a3)
{
  IIOString::IIOString(v17, a1);
  UTF8String = IIOString::createUTF8String(v17);
  IIOString::~IIOString(v17);
  v16 = 0;
  v17[0] = 0;
  v15 = 0.0;
  v14 = 0;
  v13 = 0;
  if (UTF8String)
  {
    v6 = sscanf(UTF8String, "%d,%2d,%2d%1[NSEW]", &v16 + 4, &v16, &v14, &v13);
    if (v6 <= 2)
    {
      v10 = sscanf(UTF8String, "%d,%lf%1[NSEW]", &v16 + 4, &v15, &v13);
      if (v10 < 2)
      {
        v11 = sscanf(UTF8String, "%lf", v17);
        v9 = 0;
        if (!a2 || v11 != 1)
        {
          goto LABEL_16;
        }

        v7 = 0;
        *a2 = *v17;
        goto LABEL_15;
      }

      if (a2)
      {
        *a2 = v15 / 60.0 + SHIDWORD(v16);
        v7 = v13;
        v8 = v10 == 3;
LABEL_9:
        if (!v8)
        {
          v7 = 0;
        }

LABEL_15:
        *a3 = v7;
        v9 = 1;
        goto LABEL_16;
      }
    }

    else if (a2)
    {
      *a2 = v16 / 60.0 + SHIDWORD(v16) + v14 / 3600.0;
      v7 = v13;
      v8 = v6 == 4;
      goto LABEL_9;
    }

    v9 = 0;
LABEL_16:
    free(UTF8String);
    return v9;
  }

  return 0;
}

void sub_18609463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void CGImageMetadataCreateAndLogUTF8Error(const char *a1, int a2, int a3, char *a4, CFErrorRef *a5)
{
  userInfoKeys[1] = *MEMORY[0x1E69E9840];
  LogError(a1, a2, a4);
  if (a5)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x1E695E620];
      userInfoValues = v9;
      userInfoKeys[0] = v11;
      *a5 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"kCFErrorDomainCGImageMetadata", a3, userInfoKeys, &userInfoValues, 1);
      CFRelease(v10);
    }
  }
}

void CGImageMetadataCreateAndLogError(const char *a1, int a2, void *a3, CFErrorRef *a4)
{
  userInfoValues[1] = *MEMORY[0x1E69E9840];
  IIOString::IIOString(userInfoKeys, a3);
  UTF8String = IIOString::createUTF8String(userInfoKeys);
  IIOString::~IIOString(userInfoKeys);
  if (UTF8String)
  {
    LogError(a1, 0, UTF8String);
    free(UTF8String);
  }

  if (a4)
  {
    userInfoKeys[0] = *MEMORY[0x1E695E620];
    userInfoValues[0] = a3;
    *a4 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"kCFErrorDomainCGImageMetadata", a2, userInfoKeys, userInfoValues, 1);
  }
}

void sub_18609481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CFStringRef CreateIPTCDateFromExifDateTime(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v5, 0, sizeof(v5));
  IIOString::IIOString(v5, a1);
  v2 = IIOString::utf8String(v1);
  if (strlen(v2) == 19)
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c%c%c%c%c", *v2, v2[1], v2[2], v2[3], v2[5], v2[6], v2[8], v2[9]);
  }

  else
  {
    v3 = 0;
  }

  IIOString::~IIOString(v5);
  return v3;
}

CFStringRef CreateIPTCTimeFromExifDateTime(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v5, 0, sizeof(v5));
  IIOString::IIOString(v5, a1);
  v2 = IIOString::utf8String(v1);
  if (strlen(v2) == 19)
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c%c%c", SBYTE3(v2->info), SBYTE4(v2->info), SBYTE6(v2->info), SHIBYTE(v2->info), SBYTE1(v2->data), SBYTE2(v2->data));
  }

  else
  {
    v3 = 0;
  }

  IIOString::~IIOString(v5);
  return v3;
}

CFStringRef CreateXMPDateFromXMPDateTimeAndSubsecTime(const __CFString *a1, uint64_t a2)
{
  v3 = 0;
  *v7 = 0;
  if (a1 && a2)
  {
    memset(&v8, 0, sizeof(v8));
    if (GetDateTimeStructFromXMPDateTimeString(a1, &v8, &v7[1], v7) && v7[1])
    {
      if (!v7[0])
      {
        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d.%@", (v8.tm_year + 1900), (v8.tm_mon + 1), v8.tm_mday, v8.tm_hour, v8.tm_min, v8.tm_sec, a2);
      }

      LODWORD(v5) = v8.tm_gmtoff % 3600 / 60;
      if (v5 >= 0)
      {
        v5 = v5;
      }

      else
      {
        v5 = (v8.tm_gmtoff % 3600 / -60);
      }

      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d.%@%+03d:%02d", (v8.tm_year + 1900), (v8.tm_mon + 1), v8.tm_mday, v8.tm_hour, v8.tm_min, v8.tm_sec, a2, v8.tm_gmtoff / 3600, v5);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void AddMWGRegionsFromExifAuxRegions(CGImageMetadata *a1, IIODictionary *this)
{
  v57 = *MEMORY[0x1E69E9840];
  if (this)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this, @"HeightAppliedTo");
    v5 = IIODictionary::getObjectForKey(this, @"WidthAppliedTo");
    v6 = IIODictionary::getObjectForKey(this, @"RegionList");
    if (ObjectForKey)
    {
      if (v5)
      {
        v7 = v6;
        if (v6)
        {
          if (CFArrayGetCount(v6) >= 1)
          {
            memset(v50, 0, sizeof(v50));
            IIOArray::IIOArray(v50, v7);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", 0);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", 0);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://ns.adobe.com/xap/1.0/sType/Dimensions#", @"stDim", 0);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:h", ObjectForKey);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:w", v5);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:unit", @"pixel");
            Count = IIOArray::getCount(v50);
            if (Count)
            {
              v9 = 0;
              alloc = *MEMORY[0x1E695E480];
              v48 = Count;
              metadata = a1;
              while (1)
              {
                ObjectAtIndex = IIOArray::getObjectAtIndex(v50, v9);
                v11 = ObjectAtIndex;
                if (!ObjectAtIndex)
                {
                  goto LABEL_70;
                }

                v12 = CFGetTypeID(ObjectAtIndex);
                if (v12 != CFDictionaryGetTypeID())
                {
                  goto LABEL_70;
                }

                memset(v49, 0, sizeof(v49));
                IIODictionary::IIODictionary(v49, v11);
                v13 = IIODictionary::getObjectForKey(v49, @"X");
                v14 = IIODictionary::getObjectForKey(v49, @"Y");
                v15 = IIODictionary::getObjectForKey(v49, @"Width");
                v16 = IIODictionary::getObjectForKey(v49, @"Height");
                if (v13)
                {
                  if (v14)
                  {
                    if (v15)
                    {
                      v17 = v16;
                      if (v16)
                      {
                        v18 = CFStringCreateWithFormat(alloc, 0, @"[%ld]", v9);
                        if (v18)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

LABEL_69:
                IIODictionary::~IIODictionary(v49);
LABEL_70:
                if (v48 == ++v9)
                {
                  goto LABEL_71;
                }
              }

              v19 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"x", kCGImageMetadataTypeString, v13);
              v20 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"y", kCGImageMetadataTypeString, v14);
              v21 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"w", kCGImageMetadataTypeString, v15);
              v22 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"h", kCGImageMetadataTypeString, v17);
              v23 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"unit", kCGImageMetadataTypeString, @"normalized");
              v24 = v23;
              if (v19 && v20 && v21 && v22 && v23)
              {
                *keys = xmmword_1E6F0BC28;
                v55 = *off_1E6F0BC38;
                v56 = @"unit";
                values[0] = v19;
                values[1] = v20;
                values[2] = v21;
                values[3] = v22;
                values[4] = v23;
                v25 = CFDictionaryCreate(alloc, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v25)
                {
                  v26 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", @"Area", kCGImageMetadataTypeStructure, v25);
                  cf = v26;
                  if (v26)
                  {
                    v51 = v26;
                    v52 = @"Area";
                    v27 = CFDictionaryCreate(alloc, &v52, &v51, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (v27)
                    {
                      v28 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", v18, kCGImageMetadataTypeStructure, v27);
                      CFRelease(v27);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    CFRelease(cf);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  CFRelease(v25);
                }

                else
                {
                  v28 = 0;
                }
              }

              else
              {
                v28 = 0;
                v29 = 0;
                if (!v19)
                {
                  goto LABEL_32;
                }
              }

              CFRelease(v19);
              v29 = v28;
LABEL_32:
              if (v20)
              {
                CFRelease(v20);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              CFRelease(v18);
              if (v29)
              {
                v30 = IIODictionary::getObjectForKey(v49, @"Type");
                v31 = v30;
                if (v30 && (CFStringCompare(v30, @"Face", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"Pet", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"Focus", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"BarCode", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"CleanAperture", 0) == kCFCompareEqualTo))
                {
                  CGImageMetadataSetValueWithPath(metadata, v29, @"mwg-rs:Type", v31);
                }

                v32 = IIODictionary::getObjectForKey(v49, @"Timestamp");
                v33 = IIODictionary::getObjectForKey(v49, @"AngleInfoYaw");
                v34 = IIODictionary::getObjectForKey(v49, @"AngleInfoRoll");
                v35 = IIODictionary::getObjectForKey(v49, @"ConfidenceLevel");
                v36 = IIODictionary::getObjectForKey(v49, @"FaceID");
                Mutable = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (Mutable)
                {
                  if (v32)
                  {
                    v38 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"Timestamp", kCGImageMetadataTypeString, v32);
                    if (v38)
                    {
                      CFDictionarySetValue(Mutable, @"Timestamp", v38);
                      CFRelease(v38);
                    }
                  }

                  if (v33)
                  {
                    v39 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"AngleInfoYaw", kCGImageMetadataTypeString, v33);
                    if (v39)
                    {
                      CFDictionarySetValue(Mutable, @"AngleInfoYaw", v39);
                      CFRelease(v39);
                    }
                  }

                  if (v34)
                  {
                    v40 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"AngleInfoRoll", kCGImageMetadataTypeString, v34);
                    if (v40)
                    {
                      CFDictionarySetValue(Mutable, @"AngleInfoRoll", v40);
                      CFRelease(v40);
                    }
                  }

                  if (v35)
                  {
                    v41 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"ConfidenceLevel", kCGImageMetadataTypeString, v35);
                    if (v41)
                    {
                      CFDictionarySetValue(Mutable, @"ConfidenceLevel", v41);
                      CFRelease(v41);
                    }
                  }

                  if (v36)
                  {
                    v42 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"FaceID", kCGImageMetadataTypeString, v36);
                    if (v42)
                    {
                      CFDictionarySetValue(Mutable, @"FaceID", v42);
                      CFRelease(v42);
                    }
                  }

                  v43 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", @"Extensions", kCGImageMetadataTypeStructure, Mutable);
                  CFRelease(Mutable);
                  if (v43)
                  {
                    CGImageMetadataSetTagWithPath(metadata, v29, @"mwg-rs:Extensions", v43);
                    CFRelease(v43);
                  }
                }

                v44 = CFStringCreateWithFormat(alloc, 0, @"mwg-rs:Regions.RegionList[%ld]", v9);
                if (v44)
                {
                  CGImageMetadataSetTagWithPath(metadata, 0, v44, v29);
                  CFRelease(v44);
                }

                CFRelease(v29);
              }

              goto LABEL_69;
            }

LABEL_71:
            IIOArray::~IIOArray(v50);
          }
        }
      }
    }
  }
}

void sub_1860952F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void ___ZL24IIOXPCDecodeMetadataTagsP8IIOArrayP15CGImageMetadata_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a2);
  v3 = IIOXPCDecodeCGImageMetadataTag(v4);
  if (v3)
  {
    CGImageMetadataAddTag(*(a1 + 32), v3);
    CFRelease(v3);
  }

  IIODictionary::~IIODictionary(v4);
}

void sub_1860953BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageMetadataTagRef IIOXPCDecodeCGImageMetadataTag(IIODictionary *a1)
{
  ObjectForKey = IIODictionary::getObjectForKey(a1, @"nameSpace");
  v3 = IIODictionary::getObjectForKey(a1, @"prefix");
  v4 = IIODictionary::getObjectForKey(a1, @"name");
  Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"metadataType");
  v6 = IIODictionary::getObjectForKey(a1, @"value");
  v7 = v6;
  if (Uint32ForKey > kCGImageMetadataTypeString)
  {
    if (v6)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v7))
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2000000000;
        operator new();
      }

      v10 = CFDictionaryGetTypeID();
      if (v10 == CFGetTypeID(v7))
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2000000000;
        operator new();
      }
    }

    return 0;
  }

  else
  {
    v8 = CGImageMetadataTagCreate(ObjectForKey, v3, v4, Uint32ForKey, v6);
    if (v8)
    {
      v11 = IIODictionary::getUint32ForKey(a1, @"sourceType");
      CGImageMetadataTagSetSource(v8, v11);
      v12 = IIODictionary::getObjectForKey(a1, @"qualifiers");
      if (v12)
      {
        v13 = v12;
        Source = CGImageSourceGetSource(v8);
        if (Source)
        {
          *(Source + 56) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v13);
        }
      }
    }
  }

  return v8;
}

void ___ZL30IIOXPCDecodeCGImageMetadataTagP13IIODictionary_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a2);
  v3 = IIOXPCDecodeCGImageMetadataTag(v4);
  if (v3)
  {
    IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v3);
    CFRelease(v3);
  }

  IIODictionary::~IIODictionary(v4);
}

void sub_186095818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void ___ZL30IIOXPCDecodeCGImageMetadataTagP13IIODictionary_block_invoke_2(uint64_t a1, const __CFString *a2, __CFDictionary *a3)
{
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  v5 = IIOXPCDecodeCGImageMetadataTag(v6);
  if (v5)
  {
    IIODictionary::setObjectForKey(*(*(*(a1 + 32) + 8) + 24), v5, a2);
    CFRelease(v5);
  }

  IIODictionary::~IIODictionary(v6);
}

void sub_1860958AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOXPCEncodeMetadataTag(CGImageMetadataTag *a1, IIOArray *a2)
{
  Source = CGImageSourceGetSource(a1);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIODictionary::IIODictionary(&v17);
  IIODictionary::setObjectForKey(v4, *(Source + 16), @"nameSpace");
  IIODictionary::setObjectForKey(&v17, *(Source + 24), @"prefix");
  IIODictionary::setObjectForKey(&v17, *(Source + 32), @"name");
  IIODictionary::setObjectForKey(&v17, *(Source + 56), @"qualifiers");
  v5 = *(Source + 40);
  IIONumber::IIONumber(&v14, v5);
  IIODictionary::setObjectForKey(&v17, v16, @"metadataType");
  IIONumber::~IIONumber(&v14);
  IIONumber::IIONumber(v6, *(Source + 68));
  IIODictionary::setObjectForKey(&v17, v16, @"sourceType");
  IIONumber::~IIONumber(&v14);
  v7 = *(Source + 48);
  if (v5 > 1)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      operator new();
    }

    v9 = CFDictionaryGetTypeID();
    if (v9 == CFGetTypeID(v7))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      operator new();
    }

    CFShow(v7);
    v10 = CFGetTypeID(v7);
    v11 = CFCopyTypeIDDescription(v10);
    IIOString::IIOString(&v14, v11);
    v13 = IIOString::utf8String(v12);
    LogError("IIOXPCEncodeMetadataTag", 127, "*** failed to serialize metadata = %s\n", v13);
    IIOString::~IIOString(&v14);
  }

  else
  {
    IIODictionary::setObjectForKey(&v17, v7, @"value");
  }

  IIOArray::addObject(a2, v18);
  IIODictionary::~IIODictionary(&v17);
}

void sub_186095C80(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 88), 8);
  IIODictionary::~IIODictionary((v1 - 56));
  _Unwind_Resume(a1);
}

void ___ZL23IIOXPCEncodeMetadataTagP18CGImageMetadataTagP8IIOArray_block_invoke(uint64_t a1, CGImageMetadataTag *a2)
{
  TypeID = CGImageMetadataTagGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);

    IIOXPCEncodeMetadataTag(a2, v5);
  }

  else
  {
    v6 = CFGetTypeID(a2);
    v7 = CFCopyTypeIDDescription(v6);
    IIOString::IIOString(v9, v7);
    v8 = IIOString::utf8String(v9);
    LogError("IIOXPCEncodeMetadataTag_block_invoke", 97, "*** unexpected type in array: %s\n", v8);
    IIOString::~IIOString(v9);
  }
}

void sub_186095DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZL23IIOXPCEncodeMetadataTagP18CGImageMetadataTagP8IIOArray_block_invoke_2(uint64_t a1, const __CFString *a2, CGImageMetadataTag *a3)
{
  memset(v13, 0, sizeof(v13));
  IIOArray::IIOArray(v13);
  TypeID = CGImageMetadataTagGetTypeID();
  if (TypeID == CFGetTypeID(a3))
  {
    IIOXPCEncodeMetadataTag(a3, v13);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    ObjectAtIndex = IIOArray::getObjectAtIndex(v13, 0);
    IIODictionary::setObjectForKey(v7, ObjectAtIndex, a2);
  }

  else
  {
    v9 = CFGetTypeID(a3);
    v10 = CFCopyTypeIDDescription(v9);
    IIOString::IIOString(v12, v10);
    v11 = IIOString::utf8String(v12);
    LogError("IIOXPCEncodeMetadataTag_block_invoke_2", 117, "*** unexpected type in dictionary: %s\n", v11);
    IIOString::~IIOString(v12);
  }

  IIOArray::~IIOArray(v13);
}

void sub_186095EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIOString::~IIOString(va);
  IIOArray::~IIOArray(va1);
  _Unwind_Resume(a1);
}

uint64_t ___ZL37CGImageMetadataCreateWithEXIFFilteredPK15CGImageMetadatab_block_invoke(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Source = CGImageSourceGetSource(a3);
  if (CFStringCompare(*(Source + 24), @"exif", 0) == kCFCompareEqualTo || CFStringCompare(*(Source + 24), @"tiff", 0) == kCFCompareEqualTo || CFStringCompare(*(Source + 24), @"exifEX", 0) == kCFCompareEqualTo)
  {
    CGImageMetadataRemoveTagWithPath(*(a1 + 32), 0, a2);
  }

  return 1;
}

double OUTLINED_FUNCTION_4_6(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24)
{
  result = a24;
  *(v24 - 144) = a24;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return CFStringGetCString(v1, v0, v2 + 1, 0x600u);
}

int32x2_t OUTLINED_FUNCTION_8_0(int32x2_t a1, int32x2_t a2)
{
  result = vadd_s32(a1, a2);
  *(v2 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return CFStringGetCString(v1, v0, v2 + 1, 0x600u);
}

size_t myTIFFReadProc(IIOImageReadSession **a1, unsigned __int8 *a2, size_t a3)
{
  if (a1)
  {
    if (a1[2])
    {
      Bytes = IIOImageReadSession::getBytes(a1[2], a2, a3);
LABEL_6:
      v6 = Bytes;
      goto LABEL_8;
    }

    v5 = a1[3];
    if (v5)
    {
      Bytes = IIOImageWriteSession::getBytes(v5, a2, a3);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:
  if (v6 != a3)
  {
    _cg_jpeg_mem_term("myTIFFReadProc", 34, "*** expected: %lld   got: %lld\n");
  }

  return v6;
}

size_t myTIFFWriteProc(void *a1, void *a2, size_t a3)
{
  if (a1 && (v3 = a1[3]) != 0)
  {
    return IIOImageWriteSession::putBytes(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

IIOImageRead *myTIFFSizeProc(IIOImageReadSession **a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    return IIOImageReadSession::getSize(a1[2]);
  }

  v2 = a1[3];
  if (v2)
  {
    return IIOImageWriteSession::getSize(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t myTIFFSeekProc(IIOImageReadSession **a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    return IIOImageReadSession::seek(a1[2], a2, a3);
  }

  v4 = a1[3];
  if (v4)
  {
    return IIOImageWriteSession::seek(v4, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t myTIFFCloseProc(void *a1)
{
  if (a1)
  {
    (*(*a1 + 8))(a1);
  }

  return 0;
}

void SetupTIFFErrorHandler(void)
{
  if ((IIO_XPCServer() & 1) == 0 && SetupTIFFErrorHandler(void)::setupOnce != -1)
  {
    SetupTIFFErrorHandler();
  }
}

size_t (*___Z21SetupTIFFErrorHandlerv_block_invoke())(const char *a1, const char *a2, va_list a3)
{
  _cg_TIFFSetErrorHandler(0);
  _cg_TIFFSetErrorHandlerExt(IIOErrorHandler);

  return _cg_TIFFSetWarningHandler(IIOWarningHandler);
}

uint64_t IIOErrorHandler(_BYTE *a1, const char *a2, char *a3, char *a4)
{
  result = LogModuleWithArguments(a2, a3, a4);
  if (a2)
  {
    result = strcmp(a2, "ZIPDecode");
    if (result)
    {
      result = strcmp(a2, "PackBitsDecode");
      if (a1 && !result)
      {
        goto LABEL_5;
      }
    }

    else if (a1)
    {
LABEL_5:
      a1[32] = 1;
    }
  }

  if (!a3)
  {
    return result;
  }

  result = strstr(a3, "Bad code word");
  if (result || (result = strstr(a3, "Premature EOL at line")) != 0)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = strstr(a3, "Invalid tile byte count");
  if (a1 && result)
  {
LABEL_10:
    a1[32] = 1;
  }

  return result;
}

void IOTiffClientData::IOTiffClientData(IOTiffClientData *this, char a2)
{
  *(this + 34) = a2;
  *this = &unk_1EF4DC4C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
}

void GlobalTIFFInfo::GlobalTIFFInfo(GlobalTIFFInfo *this, char a2)
{
  *this = &unk_1EF4DC4E8;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = a2;
}

void GlobalTIFFInfo::GlobalTIFFInfo(GlobalTIFFInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DC4E8;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  v4 = (this + 16);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  buffer = 0;
  *v10 = 0;
  v9 = 0;
  v5 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v6 = v5;
  if (v5)
  {
    if (CFReadStreamOpen(v5))
    {
      if (CFReadStreamRead(v6, &buffer, 1) == 1)
      {
        *(this + 8) = buffer;
        if (CFReadStreamRead(v6, v10, 4) == 4)
        {
          if (!*v10 || (std::vector<unsigned long long>::resize(v4, *v10), v7 = CFReadStreamRead(v6, *v4, 8 * *v10), v7 == 8 * *v10))
          {
            if (CFReadStreamRead(v6, v10, 4) == 4)
            {
              if (!*v10 || (std::vector<unsigned long long>::resize(this + 5, *v10), v8 = CFReadStreamRead(v6, *(this + 5), 8 * *v10), v8 == 8 * *v10))
              {
                if (CFReadStreamRead(v6, &v9, 8) == 8)
                {
                  *(this + 8) = v9;
                  if (CFReadStreamRead(v6, &v9, 8) == 8)
                  {
                    *(this + 9) = v9;
                    if (CFReadStreamRead(v6, &buffer, 1) == 1)
                    {
                      *(this + 80) = buffer;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v6);
  }
}

void sub_1860965B4(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::resize(void *result, unint64_t a2)
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
    std::vector<unsigned long long>::__append(result, a2 - v2);
  }
}

void GlobalTIFFInfo::~GlobalTIFFInfo(GlobalTIFFInfo *this)
{
  *this = &unk_1EF4DC4E8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  GlobalTIFFInfo::~GlobalTIFFInfo(this);

  JUMPOUT(0x186602850);
}

uint64_t ReleaseTIFFGlobalInfo(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

CFIndex OUTLINED_FUNCTION_2_13@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return CFWriteStreamWrite(v2, &a2, 8);
}

BOOL IIO_Reader_AI::testHeader(int a1, _BYTE *a2, int a3, CFStringRef theString1)
{
  if (!theString1)
  {
    return 0;
  }

  return CFStringCompare(theString1, @"com.adobe.illustrator.ai-image", 0) == kCFCompareEqualTo && *a2 == 37 && a2[1] == 80 && a2[2] == 68 && a2[3] == 70 && a2[4] == 45;
}

uint64_t IIO_Reader_AI::updateSourceProperties(IIO_Reader_AI *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v7 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680) + 56);

  return v7();
}

uint64_t IIO_Reader_AI::compareOptions(IIO_Reader_AI *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v4 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680) + 80);

  return v4();
}

uint64_t IIO_Reader_AI::getImageCount(IIO_Reader_AI *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v10 = IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680);
  return (*(*v10 + 32))(v10, a2, a3, a4, a5);
}

uint64_t LogL16fromY(int a1, long double a2)
{
  if (a2 >= 1.8371976e19)
  {
    return 0x7FFFLL;
  }

  if (a2 <= -1.8371976e19)
  {
    return 0xFFFFLL;
  }

  if (a2 <= 5.4136769e-20)
  {
    if (a2 >= -5.4136769e-20)
    {
      return 0;
    }

    else
    {
      v5 = (log(-a2) * 1.44269504 + 64.0) * 256.0;
      if (a1)
      {
        v5 = v5 + rand() * 4.65661288e-10 + -0.5;
      }

      return v5 | 0xFFFF8000;
    }
  }

  else
  {
    v3 = (log(a2) * 1.44269504 + 64.0) * 256.0;
    if (a1)
    {
      v3 = v3 + rand() * 4.65661288e-10 + -0.5;
    }

    return v3;
  }
}

float *XYZtoRGB24(float *result, char *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = v3 * -1.276 + v2 * 2.69 + v4 * -0.414;
  v6 = v3 * 1.978 + v2 * -1.022 + v4 * 0.044;
  v7 = v3 * -0.224 + v2 * 0.061;
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = vcvtd_n_s64_f64(sqrt(v5), 8uLL);
    if (v5 >= 1.0)
    {
      v8 = -1;
    }
  }

  v9 = v7 + v4 * 1.163;
  *a2 = v8;
  if (v6 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = vcvtd_n_s64_f64(sqrt(v6), 8uLL);
    if (v6 >= 1.0)
    {
      v10 = -1;
    }
  }

  a2[1] = v10;
  if (v9 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = vcvtd_n_s64_f64(sqrt(v9), 8uLL);
    if (v9 >= 1.0)
    {
      v11 = -1;
    }
  }

  a2[2] = v11;
  return result;
}

uint64_t LogL10fromY(int a1, long double a2)
{
  if (a2 >= 15.742)
  {
    return 1023;
  }

  if (a2 <= 0.00024283)
  {
    return 0;
  }

  v3 = (log(a2) * 1.44269504 + 12.0) * 64.0;
  if (a1)
  {
    v3 = v3 + rand() * 4.65661288e-10 + -0.5;
  }

  return v3;
}

uint64_t uv_encode(int a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_f64[0];
  v4 = a3.n128_f64[0];
  if (a3.n128_f64[0] >= 0.0169399995)
  {
    v6 = (a3.n128_f64[0] + -0.0169399995) * 285.714277;
    if (a1)
    {
      v6 = v6 + rand() * 4.65661288e-10 + -0.5;
    }

    if (v6 < 0xA3)
    {
      v7 = (&uv_row + 8 * v6);
      v8 = *v7;
      if (v3 >= v8)
      {
        v9 = (v3 - v8) * 285.714277;
        if (a1)
        {
          v9 = v9 + rand() * 4.65661288e-10 + -0.5;
        }

        if (v9 < *(v7 + 2))
        {
          return (*(v7 + 3) + v9);
        }
      }
    }
  }

  return oog_encode(v3, v4);
}

uint64_t oog_encode(double a1, double a2)
{
  v2 = a1;
  v36 = *MEMORY[0x1E69E9840];
  if ((oog_encode_initialized & 1) == 0)
  {
    v33 = a2;
    memset_pattern16(__b, &unk_186226B20, 0x320uLL);
    v3 = 162;
    do
    {
      v4 = v3;
      v5 = (&uv_row + 8 * v3);
      v6 = *(v5 + 2);
      if (v6 < 2 || v4 == 0 || v4 == 162)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 - 1;
      }

      v10 = v6 - 1;
      if (v6 >= 1)
      {
        v11 = *v5;
        do
        {
          v12 = atan2((v4 + 0.5) * 0.00350000011 + 0.0169399995 + -0.473684211, v11 + (v10 + 0.5) * 0.00350000011 + -0.210526316) * 15.9154943 + 50.0;
          v13 = v12;
          v14 = vabdd_f64(v12, v12 + 0.5);
          if (v14 < __b[v13])
          {
            oog_encode_oog_table[v13] = v10 + *(v5 + 3);
            __b[v13] = v14;
          }

          v10 -= v9;
        }

        while (v10 >= 0);
      }

      v3 = v4 - 1;
    }

    while (v4);
    v15 = &v36;
    v16 = &STACK[0x640];
    v17 = 99;
    v18 = 198;
    v19 = 100;
    v2 = a1;
    do
    {
      v20 = v17;
      v21 = v19 - 1;
      if (__b[v17] > 1.5)
      {
        v22 = 1;
        v23 = v19;
        v24 = v15;
        do
        {
          if (*&v24[-100 * (v23 / 0x64)] < 1.5)
          {
            break;
          }

          ++v22;
          ++v24;
          ++v23;
        }

        while (v22 != 50);
        v25 = v19 + 99;
        v26 = 1;
        v27 = -1;
        v28 = v18;
        v29 = v16;
        while (*&v29[-100 * (v28 / 0x64)] >= 1.5)
        {
          ++v26;
          --v29;
          --v28;
          if (--v27 == -50)
          {
            v26 = 50;
            break;
          }
        }

        v30 = v25 + v27;
        if (v22 >= v26)
        {
          v31 = v30;
        }

        else
        {
          v31 = v22 + v21;
        }

        oog_encode_oog_table[v20] = oog_encode_oog_table[v31 % 100];
      }

      v17 = v20 - 1;
      --v15;
      --v16;
      --v18;
      v19 = v21;
    }

    while (v20);
    oog_encode_initialized = 1;
    a2 = v33;
  }

  return oog_encode_oog_table[(atan2(a2 + -0.473684211, v2 + -0.210526316) * 15.9154943 + 50.0)];
}

uint64_t uv_decode(double *a1, double *a2, unsigned int a3)
{
  if (a3 > 0x3FA0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 163;
  while (1)
  {
    v6 = (v4 + v5) >> 1;
    v7 = *(&uv_row + 4 * v6 + 3);
    v8 = __OFSUB__(a3, v7);
    v9 = a3 - v7;
    if ((v9 < 0) ^ v8 | (v9 == 0))
    {
      break;
    }

    v4 = (v4 + v5) >> 1;
LABEL_8:
    if (v5 - v4 <= 1)
    {
      v10 = v4;
      v6 = v4;
      goto LABEL_11;
    }
  }

  if (v9 < 0)
  {
    v5 = (v4 + v5) >> 1;
    goto LABEL_8;
  }

  v10 = (v4 + v5) >> 1;
LABEL_11:
  v3 = 0;
  *a1 = *(&uv_row + 2 * v10) + ((a3 - *(&uv_row + 4 * v10 + 3)) + 0.5) * 0.00350000011;
  *a2 = (v6 + 0.5) * 0.00350000011 + 0.0169399995;
  return v3;
}

void LogLuv24toXYZ(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 14) & 0x3FF;
  if (v3 && (v4 = a1, v5 = exp((v3 + 0.5) * 0.0108304247 + -8.31776617), v5 > 0.0))
  {
    v6 = v5;
    v14 = 0.0;
    v15 = 0.0;
    v7 = uv_decode(&v15, &v14, v4 & 0x3FFF);
    v9 = v14;
    v8 = v15;
    if (v7 < 0)
    {
      v9 = 0.473684211;
      v8 = 0.210526316;
    }

    v10 = 1.0 / (v9 * -16.0 + v8 * 6.0 + 12.0);
    v11 = v8 * 9.0 * v10;
    v12 = v9 * 4.0 * v10;
    *&v10 = v6 * (v11 / v12);
    v13 = v6;
    *a2 = LODWORD(v10);
    *(a2 + 4) = v13;
    *&v11 = v6 * ((1.0 - v11 - v12) / v12);
    *(a2 + 8) = LODWORD(v11);
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

uint64_t LogLuv24fromXYZ(float *a1, int a2)
{
  v4 = LogL10fromY(a2, a1[1]);
  v5.n128_u64[0] = 0x3FDE50D794B8199ELL;
  v6.n128_u64[0] = 0x3FCAF286BD156C1ALL;
  if (v4)
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = v7 + v8 * 15.0 + a1[2] * 3.0;
    if (v9 > 0.0)
    {
      v6.n128_f64[0] = v7 * 4.0 / v9;
      v5.n128_f64[0] = v8 * 9.0 / v9;
    }
  }

  v10 = uv_encode(a2, v6, v5);
  if (v10 < 0)
  {
    v11.n128_u64[0] = 0x3FCAF286BD156C1ALL;
    v12.n128_u64[0] = 0x3FDE50D794B8199ELL;
    v10 = uv_encode(0, v11, v12);
  }

  return v10 | (v4 << 14);
}

void LogLuv32toXYZ(int a1, uint64_t a2)
{
  v3 = a1 >> 16;
  if (((a1 >> 16) & 0x7FFF) == 0)
  {
    goto LABEL_6;
  }

  v4 = a1;
  v5 = exp((((a1 >> 16) & 0x7FFF) + 0.5) * 0.00270760617 + -44.3614196);
  if ((v3 & 0x8000) != 0)
  {
    v5 = -v5;
  }

  if (v5 > 0.0)
  {
    v6 = (HIBYTE(v4) + 0.5) * 0.00243902439;
    v7 = (v4 + 0.5) * 0.00243902439;
    v8 = 1.0 / (v7 * -16.0 + v6 * 6.0 + 12.0);
    v9 = v6 * 9.0 * v8;
    v10 = v7 * 4.0 * v8;
    *&v8 = v5 * (v9 / v10);
    v11 = v5;
    *a2 = LODWORD(v8);
    *(a2 + 4) = v11;
    v12 = v5 * ((1.0 - v9 - v10) / v10);
    *(a2 + 8) = v12;
  }

  else
  {
LABEL_6:
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

uint64_t LogLuv32fromXYZ(float *a1, int a2)
{
  v4 = LogL16fromY(a2, a1[1]);
  v5 = 0.210526316;
  v6 = 0.473684211;
  if (v4 && (v7 = *a1, v8 = a1[1], v9 = v7 + v8 * 15.0 + a1[2] * 3.0, v9 > 0.0) && (v5 = v7 * 4.0 / v9, v6 = v8 * 9.0 / v9, v5 <= 0.0))
  {
    v11 = 0;
  }

  else
  {
    v10 = v5 * 410.0;
    if (a2)
    {
      v10 = v10 + rand() * 4.65661288e-10 + -0.5;
    }

    v11 = v10;
  }

  if (v6 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v12 = v6 * 410.0;
    if (a2)
    {
      v12 = v12 + rand() * 4.65661288e-10 + -0.5;
    }

    v13 = v12;
  }

  if (v11 >= 0xFF)
  {
    v14 = 255;
  }

  else
  {
    v14 = v11;
  }

  if (v13 >= 0xFF)
  {
    v13 = 255;
  }

  return v13 | (v14 << 8) | (v4 << 16);
}

uint64_t TIFFInitSGILog(int8x16_t *a1, unsigned int a2)
{
  if (a2 >> 1 != 17338)
  {
    TIFFInitSGILog_cold_1();
  }

  if (_TIFFMergeFields(a1->i64, LogLuvFields, 2))
  {
    v4 = malloc_type_malloc(0x38uLL, 0x1090040405F76DDuLL);
    a1[68].i64[1] = v4;
    if (v4)
    {
      v5 = v4;
      _TIFFmemset(v4, 0, 0x38uLL);
      *(v5 + 1) = -1;
      *(v5 + 2) = a2 == 34677;
      *(v5 + 4) = _logLuvNop;
      a1[59].i64[1] = LogLuvFixupTags;
      a1[60].i64[0] = LogLuvSetupDecode;
      a1[64].i64[0] = LogLuvDecodeStrip;
      a1[65].i64[0] = LogLuvDecodeTile;
      a1[61].i64[0] = LogLuvSetupEncode;
      a1[64].i64[1] = LogLuvEncodeStrip;
      a1[65].i64[1] = LogLuvEncodeTile;
      a1[66].i64[0] = LogLuvClose;
      a1[67].i64[0] = LogLuvCleanup;
      v6 = a1[80];
      a1[80].i64[1] = LogLuvVGetField;
      *(v5 + 40) = vextq_s8(v6, v6, 8uLL);
      a1[80].i64[0] = LogLuvVSetField;
      return 1;
    }

    TIFFErrorExtR(a1, "TIFFInitSGILog", "%s: No space for LogLuv state block");
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFInitSGILog", "Merging SGILog codec-specific tags failed");
  }

  return 0;
}

uint64_t LogLuvSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  *(a1 + 1248) = _TIFFNoPostDecode;
  v3 = *(a1 + 122);
  if (v3 == 32844)
  {
    result = LogL16InitState(a1);
    if (!result)
    {
      return result;
    }

    *(a1 + 1008) = LogL16Decode;
    v7 = *(v2 + 4);
    if (v7 == 3)
    {
      v6 = L16toGry;
      goto LABEL_23;
    }

    if (!v7)
    {
      v6 = L16toY;
      goto LABEL_23;
    }
  }

  else
  {
    if (v3 != 32845)
    {
      TIFFErrorExtR(a1, "LogLuvSetupDecode", "Inappropriate photometric interpretation %hu for SGILog compression; %s", *(a1 + 122), "must be either LogLUV or LogL");
      return 0;
    }

    result = LogLuvInitState(a1);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 120) == 34677)
    {
      *(a1 + 1008) = LogLuvDecode24;
      v5 = *(v2 + 4);
      switch(v5)
      {
        case 3:
          v6 = Luv24toRGB;
          goto LABEL_23;
        case 1:
          v6 = Luv24toLuv48;
          goto LABEL_23;
        case 0:
          v6 = Luv24toXYZ;
LABEL_23:
          *(v2 + 32) = v6;
          break;
      }
    }

    else
    {
      *(a1 + 1008) = LogLuvDecode32;
      v8 = *(v2 + 4);
      switch(v8)
      {
        case 3:
          v6 = Luv32toRGB;
          goto LABEL_23;
        case 1:
          v6 = Luv32toLuv48;
          goto LABEL_23;
        case 0:
          v6 = Luv32toXYZ;
          goto LABEL_23;
      }
    }
  }

  return 1;
}

uint64_t LogLuvDecodeStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvDecodeStrip_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1008))(a1, v10, v13, a4);
        v10 += v13;
        if (v15)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        v14 += v13;
      }

      while (!v16);
      return v15 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvDecodeTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _cg_TIFFTileRowSize(a1);
  if (result)
  {
    v9 = result;
    if (a3 % result)
    {
      LogLuvDecodeTile_cold_1();
    }

    if (a3)
    {
      v10 = result - a3;
      do
      {
        v11 = (*(a1 + 1008))(a1, a2, v9, a4);
        a2 += v9;
        if (v11)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        v10 += v9;
      }

      while (!v12);
      return v11 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvSetupEncode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  v3 = *(a1 + 122);
  if (v3 == 32844)
  {
    result = LogL16InitState(a1);
    if (!result)
    {
      return result;
    }

    *(a1 + 1016) = LogL16Encode;
    v7 = *(v2 + 4);
    v6 = L16fromY;
    if (!v7)
    {
      goto LABEL_18;
    }

    if (v7 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v3 == 32845)
  {
    result = LogLuvInitState(a1);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 120) == 34677)
    {
      *(a1 + 1016) = LogLuvEncode24;
      v5 = *(v2 + 4);
      v6 = Luv24fromXYZ;
      if (!v5)
      {
LABEL_18:
        *(v2 + 32) = v6;
        goto LABEL_19;
      }

      if (v5 != 2)
      {
        if (v5 == 1)
        {
          v6 = Luv24fromLuv48;
          goto LABEL_18;
        }

        goto LABEL_20;
      }

LABEL_19:
      result = 1;
      *v2 = 1;
      return result;
    }

    *(a1 + 1016) = LogLuvEncode32;
    v8 = *(v2 + 4);
    v6 = Luv32fromXYZ;
    switch(v8)
    {
      case 0:
        goto LABEL_18;
      case 2:
        goto LABEL_19;
      case 1:
        v6 = Luv32fromLuv48;
        goto LABEL_18;
    }

LABEL_20:
    TIFFErrorExtR(a1, "LogLuvSetupEncode", "SGILog compression supported only for %s, or raw data");
    return 0;
  }

  TIFFErrorExtR(a1, "LogLuvSetupEncode", "Inappropriate photometric interpretation %hu for SGILog compression; %s");
  return 0;
}

uint64_t LogLuvEncodeStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvEncodeStrip_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1016))(a1, v10, v13, a4);
        v10 += v13;
        v16 = v15 != 1 || v14 == 0;
        v14 += v13;
      }

      while (!v16);
      return v15 == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvEncodeTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _cg_TIFFTileRowSize(a1);
  if (result)
  {
    v9 = result;
    if (a3 % result)
    {
      LogLuvEncodeTile_cold_1();
    }

    if (a3)
    {
      v10 = result - a3;
      do
      {
        v11 = (*(a1 + 1016))(a1, a2, v9, a4);
        a2 += v9;
        v12 = v11 != 1 || v10 == 0;
        v10 += v9;
      }

      while (!v12);
      return v11 == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvClose(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1096);
  if (!v2)
  {
    LogLuvClose_cold_1();
  }

  if (*v2)
  {
    if (*(result + 122) == 32844)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }

    *(result + 130) = v3;
    *(result + 116) = 131088;
  }

  return result;
}

uint64_t LogLuvCleanup(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    LogLuvCleanup_cold_1();
  }

  v3 = v1[6];
  a1[161] = v1[5];
  a1[160] = v3;
  v4 = v1[2];
  if (v4)
  {
    free(v4);
  }

  free(v1);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t LogLuvVGetField(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1096);
  if (a2 != 65560)
  {
    return (*(v3 + 40))();
  }

  **a3 = *(v3 + 4);
  return 1;
}

uint64_t LogLuvVSetField(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  if (a2 == 65561)
  {
    v13 = *a3;
    *(v9 + 8) = *a3;
    if (v13 < 2)
    {
      return 1;
    }

    TIFFErrorExtR(a1, "LogLuvVSetField", "Unknown encoding %d for LogLuv compression", a4, a5, a6, a7, a8);
    return 0;
  }

  if (a2 == 65560)
  {
    v10 = *a3;
    *(v9 + 4) = *a3;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v12 = 1;
        _cg_TIFFSetField(a1, 277, a3, a4, a5, a6, a7, a8, 1);
        v11 = 32;
        goto LABEL_19;
      }

      if (v10 == 3)
      {
        v11 = 8;
        v12 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = 32;
        v12 = 3;
        goto LABEL_19;
      }

      if (v10 == 1)
      {
        v11 = 16;
        v12 = 2;
LABEL_19:
        _cg_TIFFSetField(a1, 258, a3, a4, a5, a6, a7, a8, v11);
        _cg_TIFFSetField(a1, 339, v16, v17, v18, v19, v20, v21, v12);
        if ((*(a1 + 17) & 4) != 0)
        {
          v29 = _cg_TIFFTileSize(a1, v22, v23, v24, v25, v26, v27, v28);
        }

        else
        {
          v29 = -1;
        }

        *(a1 + 936) = v29;
        *(a1 + 1104) = _cg_TIFFScanlineSize(a1, v22, v23, v24, v25, v26, v27, v28);
        return 1;
      }
    }

    TIFFErrorExtR(a1, *a1, "Unknown data format %d for LogLuv compression", a4, a5, a6, a7, a8);
    return 0;
  }

  v14 = *(v9 + 48);

  return v14();
}

uint64_t LogLuvInitState(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LogLuvInitState_cold_2();
  }

  if (*(a1 + 122) != 32845)
  {
    LogLuvInitState_cold_1();
  }

  if (*(a1 + 170) != 1)
  {
    TIFFErrorExtR(a1, "LogLuvInitState", "SGILog compression cannot handle non-contiguous data");
    return 0;
  }

  v3 = *(v1 + 4);
  if (v3 == -1)
  {
    v4 = *(a1 + 118) | (8 * *(a1 + 116));
    if (v4 > 256)
    {
      if ((v4 - 257) < 2)
      {
        goto LABEL_15;
      }

      if (v4 == 259)
      {
        v6 = 0;
LABEL_21:
        v3 = -1;
        goto LABEL_22;
      }

      if (v4 == 260)
      {
LABEL_15:
        v3 = 2;
        v6 = -1;
        goto LABEL_22;
      }
    }

    else
    {
      if ((v4 - 129) <= 3 && v4 != 131)
      {
        v3 = -1;
        v6 = 1;
LABEL_22:
        v7 = *(a1 + 130);
        if (v7 != 3)
        {
          v6 = -1;
        }

        if (v7 != 1)
        {
          v3 = v6;
        }

        *(v1 + 4) = v3;
        goto LABEL_27;
      }

      if (v4 == 65 || v4 == 68)
      {
        v3 = -1;
        v6 = 3;
        goto LABEL_22;
      }
    }

    v6 = -1;
    goto LABEL_21;
  }

LABEL_27:
  if (v3 > 3)
  {
    TIFFErrorExtR(a1, "LogLuvInitState", "No support for converting user data format to LogLuv");
  }

  else
  {
    *(v1 + 12) = dword_186226B30[v3];
    if ((*(a1 + 17) & 4) != 0)
    {
      v9 = *(a1 + 100);
      v8 = *(a1 + 104);
    }

    else
    {
      v8 = *(a1 + 132);
      v9 = *(a1 + 88);
      if (v8 >= *(a1 + 92))
      {
        v8 = *(a1 + 92);
      }
    }

    v10 = _TIFFMultiplySSize(0, v9, v8, 0);
    *(v1 + 24) = v10;
    if (_TIFFMultiplySSize(0, v10, 4, 0))
    {
      v11 = malloc_type_malloc(4 * *(v1 + 24), 0x100004052888210uLL);
      *(v1 + 16) = v11;
      if (v11)
      {
        return 1;
      }
    }

    TIFFErrorExtR(a1, "LogLuvInitState", "No space for SGILog translation buffer");
  }

  return 0;
}

uint64_t LogLuvDecode24(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    LogLuvDecode24_cold_1();
  }

  v4 = a1[137];
  if (!v4)
  {
    LogLuvDecode24_cold_2();
  }

  v6 = a3 / *(v4 + 12);
  if (*(v4 + 4) != 2)
  {
    if (*(v4 + 24) < v6)
    {
      TIFFErrorExtR(a1, "LogLuvDecode24", "Translation buffer too short");
      return 0;
    }

    a2 = *(v4 + 16);
  }

  v7 = a1[144];
  v8 = a1[145];
  v9 = 0;
  v10 = v6 < 1 || v8 < 3;
  if (!v10)
  {
    v11 = a1[145];
    do
    {
      *(a2 + 4 * v9) = (*v7 << 16) | (v7[1] << 8) | v7[2];
      v7 += 3;
      v8 = v11 - 3;
      if (++v9 >= v6)
      {
        break;
      }

      v10 = v11 > 5;
      v11 -= 3;
    }

    while (v10);
  }

  a1[144] = v7;
  a1[145] = v8;
  if (v6 == v9)
  {
    (*(v4 + 32))(v4);
    return 1;
  }

  TIFFErrorExtR(a1, "LogLuvDecode24", "Not enough data at row %u (short %lld pixels)");
  return 0;
}

void Luv24toXYZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = a3 + 1;
    do
    {
      v6 = *v4++;
      LogLuv24toXYZ(v6, a2);
      a2 += 12;
      --v5;
    }

    while (v5 > 1);
  }
}

uint64_t Luv24toLuv48(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = *(result + 16);
    v7 = a3 + 1;
    do
    {
      v11 = 0.0;
      v12[0] = 0.0;
      v8 = *v6;
      *a2 = ((*v6 >> 12) & 0xFFD) + 13314;
      result = uv_decode(v12, &v11, v8 & 0x3FFF);
      if ((result & 0x80000000) != 0)
      {
        v9 = 6898;
        v10 = 15521;
      }

      else
      {
        v9 = vcvtd_n_s64_f64(v12[0], 0xFuLL);
        v10 = vcvtd_n_s64_f64(v11, 0xFuLL);
      }

      a2[1] = v9;
      a2[2] = v10;
      ++v6;
      --v7;
      a2 += 3;
    }

    while (v7 > 1);
  }

  return result;
}

float *Luv24toRGB(float *result, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v4 = *(result + 2);
    v5 = a3 + 1;
    do
    {
      v8 = 0;
      v7 = 0;
      v6 = *v4++;
      LogLuv24toXYZ(v6, &v7);
      result = XYZtoRGB24(&v7, a2);
      a2 += 3;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}