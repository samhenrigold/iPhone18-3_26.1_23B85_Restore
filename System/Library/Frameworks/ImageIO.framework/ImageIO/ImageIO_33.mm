uint64_t IIO_Reader_WebP::validateWebP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  IIOScanner::IIOScanner(&v23, *a3, *(a3 + 8), 1);
  *(a1 + 52) = 0u;
  v5 = (a1 + 52);
  *(a1 + 84) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 116) = 0;
  v6 = IIOScanner::getOSType(&v23) == 1380533830;
  Val32 = IIOScanner::getVal32(&v23);
  v8 = Val32 + 8;
  if (Val32 >= 0xFFFFFFF8)
  {
    _cg_jpeg_mem_term("validateWebP", 316, "*** ERROR: bad webp header\n");
    goto LABEL_65;
  }

  if (v24 >= v8)
  {
    if (v24 > v8)
    {
      _cg_jpeg_mem_term("validateWebP", 322, "*** webP contains additional data (%d bytes) - original: '%d'   new: '%d'\n");
      if (v24 > v8)
      {
        *&v24 = v8;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (((IIOScanner::getOSType(&v23) == 1464156752) & v6) == 0)
  {
    v6 = 0;
    _cg_jpeg_mem_term("validateWebP", 329, "*** ERROR: bad webp header\n");
    goto LABEL_65;
  }

  for (i = IIOScanner::getOSType(&v23); ; i = IIOScanner::getOSType(&v23))
  {
    if (!i)
    {
LABEL_64:
      v6 = 1;
      goto LABEL_65;
    }

    v10 = IIOScanner::getVal32(&v23);
    v12 = *(&v24 + 1) - 8;
    v13 = v10 + 8;
    if (v10 >= 0xFFFFFFF8 || *(a3 + 8) <= v13)
    {
      break;
    }

    v14 = (v13 & 1) + v13;
    if (v12 + v14 > v24)
    {
      if ((i >> 24) > 0x7F)
      {
        __maskrune(i >> 24, 0x40000uLL);
      }

      if ((i << 8 >> 24) > 0x7F)
      {
        __maskrune(i << 8 >> 24, 0x40000uLL);
      }

      if ((i >> 8) > 0x7F)
      {
        __maskrune(i >> 8, 0x40000uLL);
      }

      i = i;
      if (i > 0x7F)
      {
        __maskrune(i, 0x40000uLL);
      }

      v22 = 344;
      goto LABEL_87;
    }

    if (i > 1229144911)
    {
      if (i <= 1448097867)
      {
        if (i == 1229144912)
        {
          v6 = IIO_Reader_WebP::validateICCP(a1, v11);
          ++*(a1 + 76);
          goto LABEL_51;
        }

        if (i == 1448097824)
        {
          v6 = IIO_Reader_WebP::validateVP8_VP8L(a1, &v23, v14, 1448097824);
          ++*v5;
          goto LABEL_51;
        }
      }

      else
      {
        switch(i)
        {
          case 1448097868:
            v6 = IIO_Reader_WebP::validateVP8_VP8L(a1, &v23, v14, 1448097868);
            ++*(a1 + 56);
            goto LABEL_51;
          case 1448097880:
            if (*v5 || *(a1 + 56) || *(a1 + 60))
            {
              _cg_jpeg_mem_term("validateVP8X", 136, "*** ERROR: 'VP8X' - not allowed - VP8/VP8L/VP8X already present\n");
              v6 = 0;
              v16 = *(a1 + 60) + 1;
            }

            else
            {
              v16 = 1;
              v6 = 1;
            }

            *(a1 + 60) = v16;
            goto LABEL_51;
          case 1481461792:
            ++*(a1 + 84);
LABEL_28:
            v6 = 1;
            goto LABEL_51;
        }
      }

      goto LABEL_42;
    }

    if (i > 1095650629)
    {
      if (i == 1095650630)
      {
        v15 = IIO_Reader_WebP::validateANMF(a1, &v23, v14);
        *(a1 + 100) = v14 - 24;
        ++*(a1 + 72);
        if ((v15 & 1) == 0)
        {
          goto LABEL_88;
        }

        LODWORD(v14) = 24;
        goto LABEL_61;
      }

      if (i == 1163413830)
      {
        ++*(a1 + 80);
        goto LABEL_28;
      }

LABEL_42:
      if ((i >> 24) > 0x7F)
      {
        __maskrune(i >> 24, 0x40000uLL);
      }

      if ((i << 8 >> 24) > 0x7F)
      {
        __maskrune(i << 8 >> 24, 0x40000uLL);
      }

      if ((i >> 8) > 0x7F)
      {
        __maskrune(i >> 8, 0x40000uLL);
      }

      if (i > 0x7F)
      {
        __maskrune(i, 0x40000uLL);
      }

      _cg_jpeg_mem_term("validateWebP", 389, "*** ERROR: unknown chunk '%c%c%c%c' at offset 0x%08x  size: %d\n");
      v6 = v14 != 0;
      goto LABEL_51;
    }

    if (i == 1095520328)
    {
      v6 = IIO_Reader_WebP::validateALPH(a1, v11);
      ++*(a1 + 64);
      goto LABEL_51;
    }

    if (i != 1095649613)
    {
      goto LABEL_42;
    }

    v6 = v14 == 14;
    if (v14 != 14)
    {
      _cg_jpeg_mem_term("validateANIM", 197, "*** ERROR: corrupt ANIM chunk (%d bytes, expected: %d)\n");
    }

    ++*(a1 + 68);
LABEL_51:
    if ((*(a1 + 116) & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = *(a1 + 100);
    v18 = v17 >= v14;
    v19 = v17 - v14;
    if (v19)
    {
      if (v19 == 0 || !v18)
      {
LABEL_60:
        if (!v6)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

      *(a1 + 100) = v19;
      if ((v6 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((*(a1 + 119) & 1) == 0)
      {
        _cg_jpeg_mem_term("validateWebP", 401, "*** ERROR: no VP8/VP8L chunk detected in ANMF chunk\n");
        v6 = 0;
        *(a1 + 116) = 0;
        goto LABEL_65;
      }

      *(a1 + 116) = 0;
      if ((v6 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

LABEL_61:
    v20 = v12 + v14;
    if (v20 >= v24)
    {
      goto LABEL_64;
    }

    IIOScanner::seek(&v23, v20);
  }

  if ((i >> 24) > 0x7F)
  {
    __maskrune(i >> 24, 0x40000uLL);
  }

  if ((i << 8 >> 24) > 0x7F)
  {
    __maskrune(i << 8 >> 24, 0x40000uLL);
  }

  if ((i >> 8) > 0x7F)
  {
    __maskrune(i >> 8, 0x40000uLL);
  }

  i = i;
  if (i > 0x7F)
  {
    __maskrune(i, 0x40000uLL);
  }

  v22 = 339;
LABEL_87:
  _cg_jpeg_mem_term("validateWebP", v22, "*** ERROR: bad chunk size [%d,%d] for '%c%c%c%c' (%d bytes)\n");
LABEL_88:
  v6 = 0;
LABEL_65:
  if (!*(a1 + 104))
  {
    _cg_jpeg_mem_term("validateWebP", 427, "*** ERROR: no VP8/VP8L chunk detected\n");
    v6 = 0;
  }

  IIOScanner::~IIOScanner(&v23);
  return v6;
}

void sub_18604D970(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18604D680);
}

void sub_18604D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_WebP::getImageCount(IIO_Reader_WebP *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (a5)
  {
    *a5 = 0;
  }

  os_unfair_lock_lock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
  WebPAnimDecoderOptionsInitInternal(v18, 263);
  v8 = IIOImageReadSession::retainBytePointer(a2, &v20, 0);
  if (v8)
  {
    BytePtr = v8;
    v10 = 0;
  }

  else
  {
    v11 = IIOImageReadSession::copyData(a2);
    if (!v11)
    {
      return 0;
    }

    v10 = v11;
    BytePtr = CFDataGetBytePtr(v11);
  }

  v17[0] = BytePtr;
  v17[1] = IIOImageReadSession::getSize(a2);
  v12 = WebPDemuxInternal(v17, 0, 0, 263);
  if (v12)
  {
    v14 = v12;
    v15 = IIO_Reader_WebP::validateWebP(this, v13, v17);
    if (a5 && v15)
    {
      *a5 = WebPDemuxGetI(v14, 5);
    }

    os_unfair_lock_unlock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
    WebPDemuxDelete(v14);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
    if (v10)
    {
LABEL_12:
      CFRelease(v10);
      return 0;
    }
  }

  if (a2 && BytePtr)
  {
    IIOImageReadSession::releaseBytePointer(a2, v20);
  }

  return 0;
}

uint64_t IIO_Reader_WebP::updateSourceProperties(IIO_Reader_WebP *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v41 = 0;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v37 = 0;
  Size = 0;
  WebPAnimDecoderOptionsInitInternal(v39, 263);
  v8 = IIOImageReadSession::retainBytePointer(a2, &v41, 0);
  if (v8)
  {
    BytePtr = v8;
    v20 = a3;
    v10 = 0;
  }

  else
  {
    v11 = IIOImageReadSession::copyData(a2);
    if (!v11)
    {
      return 0;
    }

    v10 = v11;
    v20 = a3;
    BytePtr = CFDataGetBytePtr(v11);
  }

  v37 = BytePtr;
  Size = IIOImageReadSession::getSize(a2);
  v12 = WebPDemuxInternal(&v37, 0, 0, 263);
  v13 = WebPDemuxGetI(v12, 5);
  v14 = WebPDemuxGetI(v12, 1);
  v15 = WebPDemuxGetI(v12, 2);
  v21 = WebPDemuxGetI(v12, 3);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  IIODictionary::IIODictionary(&v34);
  IIONumber::IIONumber(&v29, v14);
  IIODictionary::setObjectForKey(&v34, value[0], @"CanvasPixelWidth");
  IIONumber::~IIONumber(&v29);
  IIONumber::IIONumber(&v29, v15);
  IIODictionary::setObjectForKey(&v34, value[0], @"CanvasPixelHeight");
  IIONumber::~IIONumber(&v29);
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *value = 0u;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIOArray::IIOArray(&v26);
  if (v13)
  {
    v16 = 1;
    do
    {
      WebPDemuxGetFrame(v12, v16, &v29);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      IIODictionary::IIODictionary(&v23);
      v17 = value[1];
      if (SLODWORD(value[1]) >= 11)
      {
        v18 = value[1];
      }

      else
      {
        v18 = 100;
      }

      IIONumber::IIONumber(v22, v18 / 1000.0);
      IIODictionary::setObjectForKey(&v23, v22, @"DelayTime");
      IIONumber::~IIONumber(v22);
      IIONumber::IIONumber(v22, v17 / 1000.0);
      IIODictionary::setObjectForKey(&v23, v22, @"UnclampedDelayTime");
      IIONumber::~IIONumber(v22);
      IIOArray::addObject(&v26, v24);
      IIODictionary::~IIODictionary(&v23);
      v16 = (v16 + 1);
    }

    while (v16 <= v13);
  }

  IIODictionary::setObjectForKey(&v34, v27, @"FrameInfo");
  IIONumber::IIONumber(&v23, v21);
  IIODictionary::setObjectForKey(&v34, &v23, @"LoopCount");
  IIONumber::~IIONumber(&v23);
  IIODictionary::setObjectForKey(v20, v35, @"{WebP}");
  if (v12)
  {
    WebPDemuxDelete(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  else if (a2 && BytePtr)
  {
    IIOImageReadSession::releaseBytePointer(a2, v41);
  }

  IIOArray::~IIOArray(&v26);
  IIODictionary::~IIODictionary(&v34);
  return 0;
}

void sub_18604DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  IIONumber::~IIONumber(&a15);
  IIOArray::~IIOArray(&a18);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageDestination::IIOImageDestination(IIOImageDestination *this, CGDataConsumer *a2, IIO_Writer *a3, const __CFString *a4, uint64_t a5, CFDictionaryRef *a6)
{
  *this = &unk_1EF4DA278;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  IIOImageDestination::setup(this, 2);
  v11 = CGImageWriteSessionCreateWithConsumer(a2);
  *(this + 2) = v11;
  *(this + 3) = CGImageSourceGetSource(v11);
  *(this + 8) = a3;
  *(this + 9) = IIO_Writer::utType(a3);
  *(this + 5) = a5;
  IIOImageDestination::setProperties(this, a6);
}

void sub_18604DF34(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageDestination::IIOImageDestination(IIOImageDestination *this, const __CFURL *a2, IIO_Writer *a3, const __CFString *a4, uint64_t a5, IIODictionary *a6)
{
  *this = &unk_1EF4DA278;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  IIOImageDestination::setup(this, 3);
  IIODictionary::getBoolForKey(a6, @"kCGImageDestinationShouldHideExtension");
  v11 = CGImageWriteSessionCreateWithURL(a2);
  *(this + 2) = v11;
  if (v11)
  {
    *(this + 3) = CGImageSourceGetSource(v11);
    *(this + 8) = a3;
    *(this + 9) = IIO_Writer::utType(a3);
    *(this + 5) = a5;
    IIOImageDestination::setProperties(this, a6);
  }

  else
  {
    *(this + 59) = -1;
  }
}

void sub_18604E038(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageDestination::createPixelDataProviderForExtendedRange(uint64_t a1, CGImage *a2, vImage_CGImageFormat *a3, void *a4, int a5, IIODictionary *a6)
{
  CFAbsoluteTimeGetCurrent();
  ColorSpace = CGImageGetColorSpace(a2);
  CGColorSpaceGetModel(ColorSpace);
  IIO_LoadHEIFSymbols();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s - input is extended range\n", "createPixelDataProviderForExtendedRange");
  }

  operator new();
}

void sub_18604EAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary((v25 - 128));
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::copyImageSource(IIOImageDestination *this, CGImageSourceRef isrc, IIODictionary *a3, char a4, __CFError **a5)
{
  v17 = 0;
  Type = CGImageSourceGetType(isrc);
  if (!Type)
  {
    IIOImageDestination::copyImageSource(&v17);
    goto LABEL_13;
  }

  v11 = Type;
  v12 = *(this + 9);
  if ((CFStringCompare(Type, @"public.jpeg", 0) && CFStringCompare(v11, @"public.heic", 0) || CFStringCompare(v12, @"public.jpeg", 0)) && CFStringCompare(v11, v12, 0))
  {
    IIOImageDestination::copyImageSource(&v17);
LABEL_13:
    updated = 0;
    if (!a5)
    {
      return updated;
    }

    goto LABEL_9;
  }

  Source = CGImageSourceGetSource(isrc);
  memset(v16, 0, sizeof(v16));
  IIOMetadataUpdater::IIOMetadataUpdater(v16, Source, this, a3, a4);
  updated = IIOMetadataUpdater::updateDestination(v16, &v17);
  if (updated)
  {
    *(this + 232) = 1;
  }

  IIOMetadataUpdater::~IIOMetadataUpdater(v16);
  if (a5)
  {
LABEL_9:
    *a5 = v17;
  }

  return updated;
}

void IIOImageDestination::handlePerFrameGIFSaving(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if (*(this + 6) != 1)
  {
    goto LABEL_12;
  }

  v6 = IIODictionary::containsKey(*(this + 11), @"HasGlobalColorMap");
  v7 = *(this + 11);
  if (v6)
  {
    goto LABEL_3;
  }

  if (IIODictionary::containsKeyGroup(v7, @"HasGlobalColorMap", @"{GIF}"))
  {
    v9 = *(this + 11);
LABEL_6:
    BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(v9, @"HasGlobalColorMap", @"{GIF}");
    goto LABEL_7;
  }

  if (!IIODictionary::containsKey(a3, @"HasGlobalColorMap"))
  {
    if (!IIODictionary::containsKeyGroup(a3, @"HasGlobalColorMap", @"{GIF}"))
    {
      v10 = this + 231;
      if ((*(this + 231) & 1) == 0)
      {
        v13 = *(this + 11);
        if (v13)
        {
          v14 = IIODictionary::containsKey(v13, @"HasGlobalColorMap");
          v15 = *(this + 11);
          if (v14)
          {
            *(this + 230) = !IIODictionary::getBoolForKey(v15, @"HasGlobalColorMap");
            *(this + 231) = 1;
          }

          else if (IIODictionary::containsKey(v15, @"{GIF}"))
          {
            ObjectForKey = IIODictionary::getObjectForKey(a3, @"{GIF}");
            if (ObjectForKey)
            {
              memset(v17, 0, sizeof(v17));
              IIODictionary::IIODictionary(v17, ObjectForKey);
              if (IIODictionary::containsKey(v17, @"HasGlobalColorMap"))
              {
                *(this + 230) = !IIODictionary::getBoolForKey(v17, @"HasGlobalColorMap");
                *(this + 231) = 1;
              }

              IIODictionary::~IIODictionary(v17);
            }
          }
        }
      }

      goto LABEL_8;
    }

    v9 = a3;
    goto LABEL_6;
  }

  v7 = a3;
LABEL_3:
  BoolForKeyGroup = IIODictionary::getBoolForKey(v7, @"HasGlobalColorMap");
LABEL_7:
  *(this + 231) = 1;
  v10 = this + 231;
  *(this + 230) = BoolForKeyGroup ^ 1;
LABEL_8:
  if ((*(this + 230) & 1) == 0 && *v10 == 1)
  {
    v11 = *(this + 5);
    v12 = CGImageGetWidth(a2) * v11;
    if (v12 * CGImageGetHeight(a2) >= 0x5F5E101)
    {
      *(this + 115) = 257;
      LogWarning("handlePerFrameGIFSaving", 2404, "*** NOTE: Global colormap was requested when saving GIF, but memory exceeds limit. Enabling local colormaps.\n");
    }
  }

LABEL_12:
  if (*(this + 230) == 1 && *(this + 231) == 1)
  {
    IIO_Reader::osType(*(this + 8));
    kdebug_trace();
    if ((***(this + 8))())
    {
      *(this + 231) = 0;
    }

    IIO_Reader::osType(*(this + 8));
    kdebug_trace();
    if ((*(this + 231) & 1) == 0)
    {
      _cg_jpeg_mem_term("handlePerFrameGIFSaving", 2426, "*** failed to write GIF frame #%d\n");
    }

    IIOImageDestination::setPixelProviderAtIndex(this, 0, *(this + 7));
    IIOImageDestination::setImagePropertiesAtIndex(this, 0, *(this + 7));
    IIOImageDestination::setSourceImageAtIndex(this, 0, *(this + 7));
  }
}

void sub_18604EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageDestination::handlePerFrameHEICSSaving(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if (*(this + 6) == 1)
  {
    *(this + 115) = 257;
    if (!*(this + 4))
    {
      *(this + 4) = (*(**(this + 8) + 8))(*(this + 8), *(this + 3), this);
    }
  }

  v4 = *(this + 7);
  PixelProviderAtIndex = IIOImageDestination::getPixelProviderAtIndex(this, v4);
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, v4);
  v7 = (*(**(this + 4) + 40))(*(this + 4), PixelProviderAtIndex, 0, ImagePropertiesAtIndex, *(this + 11), v4, 0);
  v8 = *(this + 231);
  if (v7)
  {
    v8 = 0;
  }

  *(this + 231) = v8;
  if ((v8 & 1) == 0)
  {
    _cg_jpeg_mem_term("handlePerFrameHEICSSaving", 2461, "*** failed to write HEICS frame #%d\n");
  }

  IIOImageDestination::setPixelProviderAtIndex(this, 0, v4);
  IIOImageDestination::setImagePropertiesAtIndex(this, 0, v4);
  if (v4 == *(this + 5) - 1)
  {
    v9 = *(**(this + 4) + 48);

    v9();
  }
}

uint64_t IIOImageDestination::handleEncodingIntent(IIOImageDestination *this, CGImage *a2, IIODictionary *a3, IIODictionary *a4)
{
  if (a3)
  {
    if (IIODictionary::containsKey(a3, @"kCGImageDestinationEncodingIntent"))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageDestinationEncodingIntent");
      if (ObjectForKey)
      {
        v7 = ObjectForKey;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v7) && CFStringCompare(v7, @"kCGImageDestinationEncodeForScreenshot", 0) == kCFCompareEqualTo && IIODictionary::getFloatForKey(a3, @"kCGImageDestinationLossyCompressionQuality") <= 0.0)
        {
          IIONumber::IIONumber(v10, 0.95);
          IIODictionary::setObjectForKey(a4, value, @"kCGImageDestinationLossyCompressionQuality");
          IIONumber::~IIONumber(v10);
        }
      }
    }
  }

  return 0;
}

void sub_18604F25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createCreateSDRandHDRGainMapFromHDR(IIOImageDestination *this, CGImageRef image, void **a3, CGImage **a4, IIODictionary *a5)
{
  v18 = 0;
  v19 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s ☀️\n", "createCreateSDRandHDRGainMapFromHDR");
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(image, 2019963440);
    IIO_LoadHEIFSymbols();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIODictionary::IIODictionary(&v15);
    Width = IOSurfaceGetWidth(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Width);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&v14);
    Height = IOSurfaceGetHeight(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Height);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&v14);
    PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, PixelFormat);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&v14);
    IIODictionary::setObjectForKey(&v15, ColorSpace, *gIIO_kCVImageBufferCGColorSpaceKey);
    v12 = IIOCreatePixelBufferAttributesForHDRType(1, v16, a3[1], &v19);
    if (!v12)
    {
      IIO_CreateIOSurfaceWithPixelBufferAttributes(v19);
    }

    LogError("createCreateSDRandHDRGainMapFromHDR", 3291, "*** ERROR: failed to create output pixel buffer attributes (%d)\n", v12);
    if (IOSurfaceFromImage)
    {
      CFRelease(IOSurfaceFromImage);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    IIODictionary::~IIODictionary(&v15);
  }

  else
  {
    _cg_jpeg_mem_term("createCreateSDRandHDRGainMapFromHDR", 3270, "*** ERROR: input image is not HDR\n");
    return 4294967246;
  }

  return v12;
}

void sub_18604F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOImageDestination::addAuxiliaryDataInfo(IIOImageDestination *this, const __CFString *a2, const void **a3)
{
  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDisparity", a2, 0) == kCFCompareEqualTo)
  {
    v10 = 0;
    v6 = 0;
    v12 = 1;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDepth", a2, 0) == kCFCompareEqualTo)
  {
    v10 = 0;
    v6 = 0;
    v12 = 2;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeAlpha", a2, 0) == kCFCompareEqualTo)
  {
    v10 = 0;
    v6 = 0;
    v12 = 3;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypePortraitEffectsMatte", a2, 0) == kCFCompareEqualTo)
  {
    v10 = 0;
    v6 = 0;
    v12 = 5;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v11 = 1;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte;
LABEL_27:
    v10 = 0;
    v6 = **v13;
    goto LABEL_28;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v11 = 1;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v11 = 1;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte", a2, 0) == kCFCompareEqualTo)
  {
    v11 = 0;
    v9 = 1;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte", a2, 0) == kCFCompareEqualTo)
  {
    v11 = 0;
    v9 = 2;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeHDRGainMap", a2, 0) == kCFCompareEqualTo)
  {
    v11 = 0;
    v9 = 3;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
    goto LABEL_27;
  }

  v6 = @"kCGImageAuxiliaryDataTypeISOGainMap";
  v7 = CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", a2, 0);
  if (v7)
  {
    if (!IIO_OSAppleInternalBuild(v7, v8) || !CFStringHasPrefix(a2, @"http:") && !CFStringHasPrefix(a2, @"https:") && !CFStringHasPrefix(a2, @"urn:"))
    {
      goto LABEL_61;
    }

    v9 = 0;
    v10 = 1;
    v6 = a2;
    v11 = 1;
LABEL_28:
    if (v6)
    {
      v14 = CFStringCompare(v6, @"FIG_STRING_SYMBOL_NOT_FOUND", 0);
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = v11;
      }

      if (v15)
      {
        if (v14)
        {
          v12 = 4;
          goto LABEL_35;
        }
      }

      else
      {
        LogError("addAuxiliaryDataInfo", 4796, "*** ERROR: addAuxiliaryDataInfo - MediaToolbox symbol not found [%d]\n", v9);
      }
    }

LABEL_61:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    IIOString::IIOString(&v28, a2);
    v23 = IIOString::utf8String(&v28);
    LogError("addAuxiliaryDataInfo", 4878, "*** ERROR: unsupported auxiliaryDataType: '%s'\n", v23);
    goto LABEL_62;
  }

  v10 = 0;
  v12 = 98;
LABEL_35:
  IIOImageDestination::swapWriterIfNeeded(this, 0, 1);
  v16 = *(this + 8);
  if (!v16)
  {
    v19 = "*** ERROR: depth/disparity is not supported on this platform\n";
    v20 = 4810;
    goto LABEL_57;
  }

  if (((*(*v16 + 40))(v16) & 1) == 0)
  {
    v21 = IIO_Writer::utType(*(this + 8));
    IIOString::IIOString(&v28, v21);
    v22 = IIOString::utf8String(&v28);
    LogError("addAuxiliaryDataInfo", 4816, "*** ERROR: can't add depth/disparity to '%s'\n", v22);
LABEL_62:
    IIOString::~IIOString(&v28);
    return;
  }

  if (*(this + 235))
  {
    if (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoData") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoImage") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoPixelBuffer") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoIOSurface"))
    {
      v17 = 1;
    }

    else
    {
      LogError("addAuxiliaryDataInfo", 4836, "*** ERROR: 'auxiliaryDataInfoDictionary' is missing 'kCGImageAuxiliaryDataInfoData' key\n");
      v17 = 0;
    }

    if ((IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoDataDescription") & 1) == 0 && IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoData"))
    {
      LogError("addAuxiliaryDataInfo", 4842, "*** ERROR: 'auxiliaryDataInfoDictionary' is missing 'kCGImageAuxiliaryDataInfoDataDescription' key\n");
      v17 = 0;
    }

    if ((IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoMetadata") & 1) == 0)
    {
      _cg_jpeg_mem_term("addAuxiliaryDataInfo", 4847, "*** 'auxiliaryDataInfoDictionary' is missing (optional) 'kCGImageAuxiliaryDataInfoMetadata' key\n");
    }

    if (v17)
    {
      Mutable = *(this + 19);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        *(this + 19) = Mutable;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      IIOArray::IIOArray(&v28, Mutable);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      IIODictionary::IIODictionary(&v25);
      IIODictionary::setObjectForKey(&v25, a3[1], a2);
      IIONumber::IIONumber(v24, *(this + 14));
      IIODictionary::setObjectForKey(&v25, v24, @"ImageIndex");
      IIONumber::~IIONumber(v24);
      IIONumber::IIONumber(v24, v12);
      IIODictionary::setObjectForKey(&v25, v24, "AuxiliaryImageType");
      IIONumber::~IIONumber(v24);
      IIONumber::IIONumber(v24, v10);
      IIODictionary::setObjectForKey(&v25, v24, "customMetadata");
      IIONumber::~IIONumber(v24);
      if (v6)
      {
        IIODictionary::setObjectForKey(&v25, v6, "AuxiliaryImageURN");
      }

      IIOArray::addObject(&v28, v26);
      IIODictionary::~IIODictionary(&v25);
      IIOArray::~IIOArray(&v28);
    }

    return;
  }

  v19 = "*** ERROR: please add an image before calling CGImageDestinationAddAuxiliaryDataInfo\n";
  v20 = 4823;
LABEL_57:

  LogError("addAuxiliaryDataInfo", v20, v19);
}

void sub_18604FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIOArray::~IIOArray(va2);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createCreateSDRandISOGainMapFromHDR(IIOImageDestination *this, CGImageRef image, void **a3, CGImage **a4, IIODictionary *a5)
{
  v19 = 0;
  v20 = 0;
  cf = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createCreateSDRandISOGainMapFromHDR");
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(image, 2019963440);
    IIO_LoadHEIFSymbols();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIODictionary::IIODictionary(&v15);
    Width = IOSurfaceGetWidth(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Width);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&v14);
    Height = IOSurfaceGetHeight(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Height);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&v14);
    PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, PixelFormat);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&v14);
    IIODictionary::setObjectForKey(&v15, ColorSpace, *gIIO_kCVImageBufferCGColorSpaceKey);
    v12 = IIOCreatePixelBufferAttributesForHDRType(1, v16, a3[1], &v20);
    if (!v12)
    {
      IIO_CreateIOSurfaceWithPixelBufferAttributes(v20);
    }

    LogError("createCreateSDRandISOGainMapFromHDR", 3145, "*** ERROR: failed to create output pixel buffer attributes (%d)\n", v12);
    if (cf)
    {
      CFRelease(cf);
    }

    if (IOSurfaceFromImage)
    {
      CFRelease(IOSurfaceFromImage);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    IIODictionary::~IIODictionary(&v15);
  }

  else
  {
    _cg_jpeg_mem_term("createCreateSDRandISOGainMapFromHDR", 3126, "*** ERROR: input image is not HDR\n");
    return 4294967246;
  }

  return v12;
}

void sub_1860506F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::updatePreserveGainMapFlag(IIOImageDestination *this, IIOImageSource *a2, IIODictionary *a3)
{
  *(this + 226) = -1;
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationPreserveGainMap"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageDestinationPreserveGainMap");
    *(this + 226) = 0;
    if (BoolForKey)
    {
      Properties = IIOImageSource::getProperties(a2, 0);
      if (Properties)
      {
        ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(Properties, @"Images", @"{FileContents}");
        if (ObjectForKeyGroup)
        {
          v9 = ObjectForKeyGroup;
          if (CFArrayGetCount(ObjectForKeyGroup))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
            if (ValueAtIndex)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"AuxiliaryData");
              if (Value)
              {
                v12 = Value;
                Count = CFArrayGetCount(Value);
                if (Count < 1)
                {
LABEL_15:
                  v19 = 0;
                }

                else
                {
                  v14 = Count;
                  v15 = 0;
                  while (1)
                  {
                    v16 = CFArrayGetValueAtIndex(v12, v15);
                    if (v16)
                    {
                      v17 = CFDictionaryGetValue(v16, @"AuxiliaryDataType");
                      if (v17)
                      {
                        v18 = v17;
                        if (CFStringCompare(v17, @"kCGImageAuxiliaryDataTypeHDRGainMap", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"kCGImageAuxiliaryDataTypeISOGainMap", 0) == kCFCompareEqualTo)
                        {
                          break;
                        }
                      }
                    }

                    if (v14 == ++v15)
                    {
                      goto LABEL_15;
                    }
                  }

                  v19 = 1;
                }

                *(this + 226) = v19;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t IIOImageDestination::validateSDRandHDRRequests(CFMutableArrayRef *this)
{
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
  v3 = IIOImageDestination::getImagePropertiesAtIndex(this, 1uLL);
  if (!IIODictionary::getBoolForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeIsBaseImage", @"kCGImageDestinationEncodeRequestOptions") || !IIODictionary::getBoolForKeyGroup(v3, @"kCGImageDestinationEncodeGenerateGainMapWithBaseImage", @"kCGImageDestinationEncodeRequestOptions"))
  {
    return 4294967246;
  }

  SourceImageAtIndex = IIOImageDestination::getSourceImageAtIndex(this, 0);
  v5 = IIOImageDestination::getSourceImageAtIndex(this, 1uLL);
  Width = CGImageGetWidth(SourceImageAtIndex);
  if (Width != CGImageGetWidth(v5) || (v7 = CGImageGetHeight(SourceImageAtIndex), v7 != CGImageGetHeight(v5)))
  {
    v14 = CGImageGetWidth(SourceImageAtIndex);
    Height = CGImageGetHeight(SourceImageAtIndex);
    v16 = CGImageGetWidth(v5);
    v17 = CGImageGetHeight(v5);
    LogError("validateSDRandHDRRequests", 3072, "*** ERROR: dimensions of base and alternate image don't match (%dx%d) vs. (%dx%d)\n", v14, Height, v16, v17);
    return 4294967246;
  }

  CGImageGetContentHeadroom();
  v9 = v8;
  CGImageGetContentHeadroom();
  v11 = v10;
  result = 0;
  if (v9 == 1.0 && v10 <= v9)
  {
    ColorSpace = CGImageGetColorSpace(v5);
    if (CGColorSpaceUsesExtendedRange(ColorSpace) && v11 == 0.0)
    {
      return 0;
    }

    else
    {
      LogError("validateSDRandHDRRequests", 3089, "*** ERROR: sdrImage headroom: %g   hdrImage headroom: %g - will save SDR only image\n", v9, v11);
      *(this + 234) = 0;
      IIOImageDestination::setSourceImageAtIndex(this, 0, 1);
      IIOImageDestination::setImagePropertiesAtIndex(this, 0, 1u);
      CFArrayRemoveValueAtIndex(this[12], 1);
      result = 0;
      this[6] = 1;
    }
  }

  return result;
}

uint64_t IIOImageDestination::getSourceImageAtIndex(IIOImageDestination *this, unint64_t a2)
{
  v2 = *(this + 13);
  if ((*(this + 14) - v2) >> 3 > a2)
  {
    return *(v2 + 8 * a2);
  }

  _cg_jpeg_mem_term("getSourceImageAtIndex", 4573, "getSourceImageAtIndex index (%d) larger than vector size (%d)\n");
  return 0;
}

uint64_t IIOImageDestination::createImageFromSource(CGImageSourceRef *this, size_t a2, IIODictionary *a3, IIODictionary *a4, CGImage **a5)
{
  Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImageSourceSubsampleFactor");
  BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceEnableRestrictedDecoding");
  v11 = IIODictionary::getUint32ForKey(a3, @"kCGImageDestinationImageMaxPixelSize");
  v29 = 0;
  options = 0;
  v31 = 0;
  IIODictionary::IIODictionary(&v29);
  IIODictionary::setObjectForKey(&v29, *MEMORY[0x1E695E4C0], @"kCGImageSourceUseHardwareAcceleration");
  if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v12, v13))
  {
    ImageIOLog("••• UseHardwareAcceleration: ❌  (using CG to render image) | %s:%d\n", "createImageFromSource", 3405);
  }

  if (BoolForKey)
  {
    IIODictionary::setObjectForKey(&v29, *MEMORY[0x1E695E4D0], @"kCGImageSourceEnableRestrictedDecoding");
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  IIONumber::IIONumber(v27, v11);
  IIODictionary::setObjectForKey(&v29, value, @"kCGImageDestinationImageMaxPixelSize");
  IIONumber::~IIONumber(v27);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(this[20], a2, options);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  if (ImageAtIndex)
  {
    CFRelease(ImageAtIndex);
  }

  if (Width >= Height)
  {
    v17 = Height;
  }

  else
  {
    v17 = Width;
  }

  if (v11 < v17 >> 3)
  {
    v18 = 8;
    goto LABEL_16;
  }

  if (v11 < v17 >> 2)
  {
    v18 = 4;
LABEL_16:
    if (v18 > Uint32ForKey)
    {
      Uint32ForKey = v18;
    }

    goto LABEL_23;
  }

  v19 = v17 >> 1;
  v20 = 2 * (v19 > v11);
  if (v20 <= Uint32ForKey)
  {
    v20 = Uint32ForKey;
  }

  if (v19 > v11)
  {
    Uint32ForKey = v20;
  }

LABEL_23:
  if (*(this + 227) != 1 || (v21 = IIOImageSource::reader(*(this[20] + 3)), !(*(*v21 + 208))(v21)))
  {
LABEL_30:
    if (Uint32ForKey)
    {
      IIONumber::IIONumber(v27, Uint32ForKey);
      IIODictionary::setObjectForKey(&v29, value, @"kCGImageSourceSubsampleFactor");
      IIONumber::~IIONumber(v27);
      v24 = options;
    }

    else
    {
      v24 = 0;
    }

    ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(this[20], a2, v24);
    goto LABEL_34;
  }

  IIODictionary::setObjectForKey(&v29, @"kCGImageSourceDecodeToHDR", @"kCGImageSourceDecodeRequest");
  if (Uint32ForKey)
  {
    IIONumber::IIONumber(v27, Uint32ForKey);
    IIODictionary::setObjectForKey(&v29, value, @"kCGImageSourceSubsampleFactor");
    IIONumber::~IIONumber(v27);
  }

  IIONumber::IIONumber(v27, v11);
  IIODictionary::setObjectForKey(&v29, value, @"kCGImageSourceThumbnailMaxPixelSize");
  IIONumber::~IIONumber(v27);
  IIODictionary::setObjectForKey(&v29, *MEMORY[0x1E695E4D0], @"kCGImageSourceCreateThumbnailFromImageAlways");
  if (IIODictionary::containsKey(a3, @"kCGImageSourceCreateThumbnailWithTransform"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
    IIODictionary::setObjectForKey(&v29, ObjectForKey, @"kCGImageSourceCreateThumbnailWithTransform");
    IIONumber::IIONumber(v27, 1);
    IIODictionary::setObjectForKey(a4, v27, @"Orientation");
    IIONumber::~IIONumber(v27);
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(this[20], a2, options);
LABEL_34:
  *a5 = ThumbnailAtIndex;
  IIODictionary::~IIODictionary(&v29);
  return 0;
}

void sub_186050F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOImageDestination::updateDateTime(IIOImageDestination *this, IIODictionary *a2, IIODictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (IIODictionary::containsKey(a2, @"{IPTC}"))
      {
        ObjectForKey = IIODictionary::getObjectForKey(a3, @"DateTimeDigitized");
        if (ObjectForKey || (ObjectForKey = IIODictionary::getObjectForKeyGroup(a3, @"DateTimeDigitized", @"{Exif}")) != 0)
        {
          v13 = ObjectForKey;
          IPTCDateStringWithXMPDateTimeString = CreateIPTCDateStringWithXMPDateTimeString(ObjectForKey, v6, v7, v8, v9, v10, v11, v12);
          IPTCTimeStringWithXMPDateTimeString = CreateIPTCTimeStringWithXMPDateTimeString(v13);
          IIODictionary::setObjectForKeyGroup(a2, IPTCDateStringWithXMPDateTimeString, @"DateCreated", @"{IPTC}");
          IIODictionary::setObjectForKeyGroup(a2, IPTCDateStringWithXMPDateTimeString, @"DigitalCreationDate", @"{IPTC}");
          IIODictionary::setObjectForKeyGroup(a2, IPTCTimeStringWithXMPDateTimeString, @"TimeCreated", @"{IPTC}");

          IIODictionary::setObjectForKeyGroup(a2, IPTCTimeStringWithXMPDateTimeString, @"DigitalCreationTime", @"{IPTC}");
        }
      }
    }
  }
}

uint64_t IIOImageDestination::addImageFromSource(IIOImageDestination *this, void *cf, unint64_t a3, CFDictionaryRef *a4)
{
  if (*(this + 2))
  {
    if (*(this + 8))
    {
      if (a4)
      {
        if (*(this + 233))
        {
          IIOImageDestination::addImageFromSource();
        }

        else
        {
          if (!*(this + 232))
          {
            *(this + 20) = CFRetain(cf);
            *(this + 22) = a3;
            Source = CGImageSourceGetSource(cf);
            if ((gIIODebugFlags & 0x2000000000000) != 0)
            {
              IIODebugOrientation("addImageFromSource", 3533, a4);
            }

            if (IIODictionary::containsKey(a4, @"kCGImageDestinationImageMaxPixelSize"))
            {
              IIODictionary::getUint32ForKey(a4, @"kCGImageDestinationImageMaxPixelSize");
            }

            IIOImageDestination::updatePreserveGainMapFlag(this, Source, a4);
            if (*(this + 226) == 1)
            {
              IIODictionary::removeObjectForKey(a4, @"kCGImageDestinationCreateHDRGainMap");
              IIODictionary::removeObjectForKey(a4, @"kCGImageSourceDecodeRequest");
            }

            IIOImageDestination::updateCreateHDRGainMapFlag(this, 0, a4);
            operator new();
          }

          IIOImageDestination::addImageFromSource();
        }
      }

      else
      {
        IIOImageDestination::addImageFromSource();
      }
    }

    else
    {
      IIOImageDestination::addImageFromSource();
    }
  }

  else
  {
    IIOImageDestination::addImageFromSource();
  }

  return 0;
}

void dictionaryApplier(const void *key, const __CFDictionary *a2, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    if (*MEMORY[0x1E695E738] == a2)
    {

      CFDictionaryRemoveValue(theDict, key);
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, key);
      if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()) && (v9 = CFGetTypeID(a2), v9 == CFDictionaryGetTypeID()))
      {

        CFDictionaryApplyFunction(a2, dictionaryApplier, v7);
      }

      else
      {

        CFDictionarySetValue(theDict, key, a2);
      }
    }
  }
}

void IIOImageDestination::preserveGainMapFromSource(IIOImageDestination *this, CGImageSource *a2, unint64_t a3, __CFString *a4, IIODictionary *a5, IIODictionary *a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  IIODictionary::IIODictionary(&v42);
  IIODictionary::setObjectForKey(&v42, @"kCGImageAuxiliaryDataRepresentationIOSurface", @"kCGImageAuxiliaryDataRepresentation");
  v11 = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions(a2, a3, a4, v43);
  if (!v11)
  {
    goto LABEL_37;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a5, @"PixelWidth");
  v13 = IIODictionary::getUint32ForKey(a5, @"PixelHeight");
  v35 = IIODictionary::getUint32ForKey(a5, @"Orientation");
  v32 = CFDictionaryGetValue(v11, @"kCGImageAuxiliaryDataInfoMetadata");
  v14 = CFDictionaryGetValue(v11, @"kCGImageAuxiliaryDataInfoIOSurface");
  Width = IOSurfaceGetWidth(v14);
  Height = IOSurfaceGetHeight(v14);
  v17 = Height;
  v34 = a4;
  if (Uint32ForKey <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = Uint32ForKey;
  }

  if (a6)
  {
    if (IIODictionary::containsKey(a6, @"kCGImageDestinationImageMaxPixelSize") && (v19 = IIODictionary::getUint32ForKey(a6, @"kCGImageDestinationImageMaxPixelSize"), v20 = v18, v18 = v19, v19 != v20))
    {
      v24 = v19 / v13;
      if (v19 / Uint32ForKey < v24)
      {
        v24 = v19 / Uint32ForKey;
      }

      v22 = (v24 * Uint32ForKey) >> 1;
      v21 = (v24 * v13) >> 1;
    }

    else
    {
      v21 = v17;
      v22 = Width;
    }

    if (v35 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = IIODictionary::containsKey(a6, @"kCGImageSourceCreateThumbnailWithTransform");
    }
  }

  else
  {
    v23 = 0;
    v22 = Width;
    v21 = Height;
  }

  v25 = IIOCreatePixelBufferWithIOSurfaceAndOptions(v14);
  v40 = 0;
  cf = 0;
  v38 = 0;
  v39 = 0;
  IIODictionary::IIODictionary(&v38);
  if (v18)
  {
    v45.size.width = Width;
    v45.size.height = v17;
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v45);
    if (DictionaryRepresentation)
    {
      IIODictionary::setObjectForKey(&v38, DictionaryRepresentation, *gIIO_kCMPhotoScaleAndRotateOption_SourceCropRectDictionary);
      CFRelease(DictionaryRepresentation);
    }

    v27 = v35 > 4;
    v28 = (v23 & v27) == 0;
    if ((v23 & v27) != 0)
    {
      v29 = v21;
    }

    else
    {
      v29 = v22;
    }

    if (v28)
    {
      v30 = v21;
    }

    else
    {
      v30 = v22;
    }

    v46.size.width = v29;
    v46.size.height = v30;
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v31 = CGRectCreateDictionaryRepresentation(v46);
    if (v31)
    {
      IIODictionary::setObjectForKey(&v38, v31, *gIIO_kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary);
      CFRelease(v31);
    }
  }

  if (v23)
  {
    IIONumber::IIONumber(v36, v35);
    IIODictionary::setObjectForKey(&v38, value, *gIIO_kCMPhotoScaleAndRotateOption_SourceExifOrientation);
    IIONumber::~IIONumber(v36);
  }

  if (gFunc_CMPhotoScaleAndRotateSessionTransformImage(0, v25, v39, &cf))
  {
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v36[0] = 0;
  v36[1] = 0;
  value = 0;
  IIODictionary::IIODictionary(v36);
  IIODictionary::setObjectForKey(v36, v32, @"kCGImageAuxiliaryDataInfoMetadata");
  IIODictionary::setObjectForKey(v36, cf, @"kCGImageAuxiliaryDataInfoPixelBuffer");
  IIOImageDestination::addAuxiliaryDataInfo(this, v34, v36);
  IIODictionary::~IIODictionary(v36);
  if (v25)
  {
LABEL_33:
    CFRelease(v25);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v11);
  IIODictionary::~IIODictionary(&v38);
LABEL_37:
  IIODictionary::~IIODictionary(&v42);
}

void sub_186051C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::addImageAndMetadata(IIOImageDestination *this, CGImage *a2, const CGImageMetadata *a3, CFDictionaryRef *a4)
{
  if (*(this + 2))
  {
    if (*(this + 233))
    {
      IIOImageDestination::addImageAndMetadata();
    }

    else
    {
      if (!*(this + 232))
      {
        operator new();
      }

      IIOImageDestination::addImageAndMetadata();
    }
  }

  else
  {
    IIOImageDestination::addImageAndMetadata();
  }

  return 4294967246;
}

uint64_t IIOImageDestination::finalizeUsingAppleJPEGRecode(IIOImageDestination *this)
{
  Source = CGImageSourceGetSource(*(this + 20));
  if ((gIIODebugFlags & 0xC) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = 0.0;
  }

  kdebug_trace();
  v5 = AppleJPEGReadPlugin::IIORecodeAppleJPEG_to_JPEG(this, Source, v4);
  kdebug_trace();
  if (v5)
  {
    if ((gIIODebugFlags & 0xC) != 0)
    {
      v6 = CFAbsoluteTimeGetCurrent();
      ImageIOLog("    'jpeg' RecodeAppleJPEG  \ttime: %g ms\n", (v6 - Current) * 1000.0);
    }

    return 0;
  }

  else
  {
    v7 = 4294967246;
    LogWarning("finalizeUsingAppleJPEGRecode", 3982, "*** NOTE: CGImageDestinationRecodeJPEG failed [%d] - falling back to full transcode\n", -50);
  }

  return v7;
}

uint64_t IIOImageDestination::finalizeUsingHEIFRecode(IIOImageDestination *this)
{
  Source = CGImageSourceGetSource(*(this + 20));
  kdebug_trace();
  v3 = HEIFReadPlugin::IIORecodeHEIF_to_JPEG(this, Source, *(this + 51));
  kdebug_trace();
  if (v3)
  {
    if (v3 == -15470)
    {
      LogError("finalizeUsingHEIFRecode", 4009, "*** ERROR: media server is NOT running [kCMPhotoError_XPCError / -15470]\n");
    }

    else
    {
      _cg_jpeg_mem_term("finalizeUsingHEIFRecode", 4017, "*** NOTE: CMPhotoDecompressionContainerJFIFTranscode failed [0x%08X] - falling back to full transcode\n");
    }
  }

  return v3;
}

uint64_t IIOImageDestination::writeImageAndGainmap(CFMutableArrayRef *this)
{
  SourceImageAtIndex = IIOImageDestination::getSourceImageAtIndex(this, 0);
  v3 = IIOImageDestination::getSourceImageAtIndex(this, 1uLL);
  v4 = CGImageRetain(v3);
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
  memset(v55, 0, 24);
  v6 = IIOImageDestination::getImagePropertiesAtIndex(this, 1uLL);
  IIODictionary::IIODictionary(v55, *(v6 + 8));
  IIOImageDestination::setSourceImageAtIndex(this, 0, 1);
  IIOImageDestination::setImagePropertiesAtIndex(this, 0, 1u);
  CFArrayRemoveValueAtIndex(this[12], 1);
  this[6] = 1;
  AlphaInfo = CGImageGetAlphaInfo(SourceImageAtIndex);
  ColorSpace = CGImageGetColorSpace(SourceImageAtIndex);
  theString1 = CGColorSpaceGetName(ColorSpace);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeBaseColorSpace", @"kCGImageDestinationEncodeRequestOptions");
  v9 = 0;
  if (ObjectForKeyGroup && theString1)
  {
    v9 = CFStringCompare(theString1, ObjectForKeyGroup, 0) != kCFCompareEqualTo;
  }

  v38 = v9;
  v10 = IIODictionary::getObjectForKeyGroup(v55, @"kCGImageDestinationEncodeAlternateColorSpace", @"kCGImageDestinationEncodeRequestOptions");
  if (!v10)
  {
    LogError("writeImageAndGainmap", 4308, "*** ERROR: 'kCGImageDestinationEncodeAlternateColorSpace' is not specified\n");
  }

  IsSDR = IIOImageIsSDR(SourceImageAtIndex);
  if ((IsSDR & IIOImageIsSDR(v4)) == 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    __p = 0;
    v50 = 0;
    value = 0;
    IIOShortCGImageDescStr(SourceImageAtIndex, &v52);
  }

  IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(SourceImageAtIndex, 0);
  v42 = IIO_CreateIOSurfaceFromImage(v4, 0);
  v13 = IIOCreatePixelBufferWithIOSurfaceAndOptions(IOSurfaceFromImage);
  v14 = IIOCreatePixelBufferWithIOSurfaceAndOptions(v42);
  v15 = v14;
  if (v13 && v14)
  {
    cf = 0;
    v48 = 0;
    v46 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    IIODictionary::IIODictionary(&v52);
    Width = CGImageGetWidth(SourceImageAtIndex);
    IIONumber::IIONumber(&__p, Width);
    IIODictionary::setObjectForKey(&v52, value, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&__p);
    Height = CGImageGetHeight(SourceImageAtIndex);
    IIONumber::IIONumber(&__p, Height);
    IIODictionary::setObjectForKey(&v52, value, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&__p);
    v18 = CGImageGetColorSpace(v4);
    IIODictionary::setObjectForKey(&v52, v18, *gIIO_kCVImageBufferCGColorSpaceKey);
    CGImageGetContentHeadroom();
    IIONumber::IIONumber(&__p, v19);
    IIODictionary::setObjectForKey(&v52, value, @"IOSurfaceContentHeadroom");
    IIONumber::~IIONumber(&__p);
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v15);
    IIONumber::IIONumber(&__p, PixelFormatType);
    v37 = v10;
    IIODictionary::setObjectForKey(&v52, value, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&__p);
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
    v22 = Uint32ForKeyGroup;
    if (AlphaInfo - 1 < 4 || AlphaInfo == kCGImageAlphaOnly)
    {
      if (Uint32ForKeyGroup > 2019963439)
      {
        v23 = v38;
        if (Uint32ForKeyGroup == 2019963440 || Uint32ForKeyGroup == 2019963442 || Uint32ForKeyGroup == 2019963956)
        {
          v22 = 1815491698;
        }
      }

      else
      {
        v23 = v38;
        if (Uint32ForKeyGroup == 875704422 || Uint32ForKeyGroup == 875704934 || Uint32ForKeyGroup == 875836518)
        {
          v22 = 1111970369;
        }
      }
    }

    else
    {
      v23 = v38;
    }

    if (v23 || IOSurfaceGetPixelFormat(IOSurfaceFromImage) != v22)
    {
      __p = 0;
      v50 = 0;
      value = 0;
      IIODictionary::IIODictionary(&__p);
      if (v22)
      {
        IIONumber::IIONumber(v44, v22);
        IIODictionary::setObjectForKey(&__p, v45, @"kCGTargetPixelFormat");
        IIONumber::~IIONumber(v44);
      }

      if (ObjectForKeyGroup)
      {
        IIODictionary::setObjectForKey(&__p, ObjectForKeyGroup, @"kCGTargetColorSpace");
      }

      else
      {
        IIODictionary::setObjectForKey(&__p, theString1, @"kCGTargetColorSpace");
      }

      v26 = CGImageCreatePixelBufferAttributesForHDRTarget(1, v53, v50, &cf);
      if (v26)
      {
        _cg_jpeg_mem_term("writeImageAndGainmap", 4395, "*** ERROR: kCGImageHDRTargetSDR - CGImageCreatePixelBufferAttributesForHDRTarget failed [err:%d]\n");
      }

      PixelBufferWithAttributes = IIOImageDestination::createPixelBufferWithAttributes(v26, cf);
      IIODictionary::~IIODictionary(&__p);
      theString1a = 1;
    }

    else
    {
      theString1a = 0;
      PixelBufferWithAttributes = 0;
    }

    __p = 0;
    v50 = 0;
    value = 0;
    IIODictionary::IIODictionary(&__p);
    v27 = *MEMORY[0x1E695E4C0];
    IIODictionary::setObjectForKeyGroup(&__p, *MEMORY[0x1E695E4C0], @"kCGFlexRangeBaseIsHDR", @"kCGFlexRangeOptions");
    if (IIODictionary::containsKeyGroup(v55, @"kCGImageDestinationEncodeGainMapSubsampleFactor", @"kCGImageDestinationEncodeRequestOptions"))
    {
      if (IIODictionary::getUint32ForKeyGroup(v55, @"kCGImageDestinationEncodeGainMapSubsampleFactor", @"kCGImageDestinationEncodeRequestOptions") >= 2)
      {
        v28 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v28 = v27;
      }

      IIODictionary::setObjectForKeyGroup(&__p, v28, @"kCGFlexRangeSubsample", @"kCGFlexRangeOptions");
    }

    IIODictionary::setObjectForKeyGroup(&__p, v37, @"kCGFlexRangeAlternateColorSpace", @"kCGFlexRangeOptions");
    v29 = IIODictionary::getObjectForKeyGroup(v55, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
    if (v29)
    {
      IIODictionary::setObjectForKey(&__p, v29, @"kCGTargetPixelFormat");
    }

    if (CGImageCreatePixelBufferAttributesForHDRTarget(3, v53, v50, &v46))
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4418, "*** ERROR: kCGImageHDRTargetGainMap - CGImageCreatePixelBufferAttributesForHDRTarget failed [err:%d]\n");
    }

    v44[0] = 0;
    v44[1] = 0;
    v45 = 0;
    IIODictionary::IIODictionary(v44, v46);
    ObjectForKey = IIODictionary::getObjectForKey(v44, @"kCGFlexRangeAlternateColorSpace");
    IIODictionary::setObjectForKeyGroup(&__p, ObjectForKey, @"kCGFlexRangeAlternateColorSpace", @"kCGFlexRangeOptions");
    if (v46)
    {
      v32 = IIOImageDestination::createPixelBufferWithAttributes(v31, v46);
    }

    else
    {
      v32 = 0;
    }

    if (IIOComputeHDRGainMap(v13, v15, v32, PixelBufferWithAttributes, &v48, v50))
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4430, "*** ERROR: IIOComputeHDRGainMap failed [err:%d]\n");
    }

    v33 = theString1a;
    if (!PixelBufferWithAttributes)
    {
      v33 = 0;
    }

    if (v33 == 1)
    {
      IOSurface = gFunc_CVPixelBufferGetIOSurface(PixelBufferWithAttributes);
      if (IOSurface)
      {
        v35 = CGImageCreateFromIOSurface(IOSurface, 0);
        IIOImageDestination::setSourceImageAtIndex(this, v35, 0);
        CGImageRelease(v35);
      }
    }

    memset(v43, 0, sizeof(v43));
    IIODictionary::IIODictionary(v43);
    IIODictionary::setObjectForKey(v43, v32, @"kCGImageAuxiliaryDataInfoPixelBuffer");
    IIODictionary::setObjectForKey(v43, v48, @"kCGImageAuxiliaryDataInfoMetadata");
    IIODictionary::setObjectForKey(v43, ObjectForKey, @"kCGImageAuxiliaryDataInfoColorSpace");
    if (cf)
    {
      CFRelease(cf);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (PixelBufferWithAttributes)
    {
      CFRelease(PixelBufferWithAttributes);
    }

    this[7] = (this[7] - 1);
    IIOImageDestination::addAuxiliaryDataInfo(this, @"kCGImageAuxiliaryDataTypeISOGainMap", v43);
    v24 = (**this[8])(this[8], this[3], this);
    if (v24)
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4469, "*** ERROR: failed to write image [err:%d]\n");
    }

    IIODictionary::~IIODictionary(v43);
    IIODictionary::~IIODictionary(v44);
    IIODictionary::~IIODictionary(&__p);
    IIODictionary::~IIODictionary(&v52);
    goto LABEL_67;
  }

  LogError("writeImageAndGainmap", 4472, "*** ERROR: failed to create IOSurface: base: %p alternate: %p    CVPixelBuffer: base: %p  alternate: %p\n", IOSurfaceFromImage, v42, v13, v14);
  v24 = 4294967246;
  if (v13)
  {
LABEL_67:
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (IOSurfaceFromImage)
  {
    CFRelease(IOSurfaceFromImage);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  CGImageRelease(v4);
  IIODictionary::~IIODictionary(v55);
  return v24;
}

void sub_186052940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  IIONumber::~IIONumber(&a21);
  IIODictionary::~IIODictionary(&__p);
  IIODictionary::~IIODictionary((v32 - 136));
  IIODictionary::~IIODictionary((v32 - 112));
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createPixelBufferWithAttributes(IIOImageDestination *this, const __CFDictionary *a2)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a2);
  Uint64ForKey = IIODictionary::getUint64ForKey(v16, *gIIO_kCVPixelBufferWidthKey);
  v3 = IIODictionary::getUint64ForKey(v16, *gIIO_kCVPixelBufferHeightKey);
  Uint32ForKey = IIODictionary::getUint32ForKey(v16, *gIIO_kCVPixelBufferPixelFormatTypeKey);
  ObjectForKey = IIODictionary::getObjectForKey(v16, *gIIO_kCVImageBufferCGColorSpaceKey);
  v6 = IIODictionary::getObjectForKey(v16, *gIIO_kCVImageBufferYCbCrMatrixKey);
  v7 = IIODictionary::getObjectForKey(v16, @"IOSurfaceContentHeadroom");
  v13 = 0;
  v14 = 0;
  v15 = 0;
  IIODictionary::IIODictionary(&v13);
  IIODictionary::IIODictionary(&v11);
  IIODictionary::setObjectForKey(&v13, value, *gIIO_kCVPixelBufferIOSurfacePropertiesKey);
  IIODictionary::~IIODictionary(&v11);
  IIODictionary::setObjectForKey(&v13, *MEMORY[0x1E695E4D0], *gIIO_kCVPixelBufferMetalCompatibilityKey);
  if (gFunc_CVPixelBufferCreate(0, Uint64ForKey, v3, Uint32ForKey, v14, &v17))
  {
    _cg_jpeg_mem_term("createPixelBufferWithAttributes", 4219, "ERROR: Failed to allocate pixel buffer with attributes");
    v8 = 0;
  }

  else
  {
    if (ObjectForKey)
    {
      gFunc_CVBufferSetAttachment(v17, *gIIO_kCVImageBufferCGColorSpaceKey, ObjectForKey, 1);
    }

    if (v6)
    {
      gFunc_CVBufferSetAttachment(v17, *gIIO_kCVImageBufferYCbCrMatrixKey, v6, 1);
    }

    if (v7)
    {
      gFunc_CVBufferSetAttachment(v17, @"IOSurfaceContentHeadroom", v7, 1);
      IOSurface = gFunc_CVPixelBufferGetIOSurface(v17);
      if (IOSurface)
      {
        IOSurfaceSetValue(IOSurface, @"IOSurfaceContentHeadroom", v7);
      }
    }

    v8 = v17;
  }

  IIODictionary::~IIODictionary(&v13);
  IIODictionary::~IIODictionary(v16);
  return v8;
}

void sub_186052C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOShortCGImageDescStr(const void *a1, uint64_t a2)
{
  v3 = CFCopyDescription(a1);
  IIOString::IIOString(v7, v3);
  v4 = IIOString::utf8String(v7);
  MEMORY[0x186602520](a2, v4);
  IIOString::~IIOString(v7);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  for (; v5; --v5)
  {
    if (*v6 == 10)
    {
      *v6 = 32;
    }

    ++v6;
  }

  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:fe200100](v7, "<CGColorSpace (.)*?> ", 0);
}

void sub_18605353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (*(v10 - 17) < 0)
  {
    operator delete(*(v10 - 40));
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a10);
  _Unwind_Resume(a1);
}

void sub_186053594(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  JUMPOUT(0x18605358CLL);
}

CGColorSpaceRef IIOImageDestination::getResizeSourceColorSpace(IIOImageDestination *this)
{
  v2 = *(this + 21);
  if (v2)
  {

    return CGImageGetColorSpace(v2);
  }

  else
  {
    Source = CGImageSourceGetSource(*(this + 20));
    if (Source && (ImagePlus = IIOImageSource::getImagePlus(Source, 0)) != 0)
    {

      return IIOImagePlus::getSourceGeomColorSpace(ImagePlus);
    }

    else
    {
      return 0;
    }
  }
}

CFTypeID CGImageDestinationGetTypeID(void)
{
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationGetTypeID_cold_1();
  }

  return CGImageDestinationGetTypeID::id;
}

CFStringRef _CGImageDestinationCopyDescription(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v4 = IIO_Writer::utType(v3);
        if (v4)
        {
          return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageDestination: %p> %p '%@'", a1, v2, v4);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageDestination: %p> %p", a1, v2);
}

CFMutableArrayRef CGImageDestinationCopyImageFormats(const __CFString *a1)
{
  v2 = kdebug_trace();
  IIOInitDebugFlags(v2, v3);
  v4 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v4, "S", "CGImageDestinationCopyImageFormats", 0, 0, -1, 0);
  }

  WriterHandler = IIO_WriterHandler::GetWriterHandler(v4);
  v6 = IIO_WriterHandler::copyImageFormats(WriterHandler, a1);
  kdebug_trace();
  return v6;
}

CGImageDestinationRef CGImageDestinationCreateWithDataConsumer(CGDataConsumerRef consumer, CFStringRef type, size_t count, CFDictionaryRef options)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = kdebug_trace();
  IIOInitDebugFlags(v8, v9);
  if (consumer)
  {
    if (type)
    {
      if (!count)
      {
        LogError("CGImageDestinationCreateWithDataConsumer", 5213, "*** ERROR: CGImageDestinationCreateWithDataConsumer: invalid capacity (%zu)\n", 0);
      }

      v10 = CFGetTypeID(consumer);
      if (v10 == CGDataConsumerGetTypeID())
      {
        v11 = CFGetTypeID(type);
        if (v11 == CFStringGetTypeID())
        {
          if (options)
          {
            v12 = CFGetTypeID(options);
            if (v12 != CFDictionaryGetTypeID())
            {
              LogError("CGImageDestinationCreateWithDataConsumer", 5218, "*** ERROR: CGImageDestinationCreateWithDataConsumer: options parameter is not a CFDictionaryRef - ignoring\n");
              options = 0;
            }
          }

          if ((gIIODebugFlags & 0x3000) != 0)
          {
            v20 = 0u;
            v21 = 0u;
            *buffer = 0u;
            v19 = 0u;
            CFStringGetCString(type, buffer, 64, 0x600u);
            v13 = (gIIODebugFlags >> 12) & 3;
            if (v13)
            {
              ImageIODebugOptions(v13, "A", "CGImageDestinationCreateWithDataConsumer", 0, buffer, -1, options);
            }
          }

          memset(buffer, 0, sizeof(buffer));
          *&v19 = 0;
          IIODictionary::IIODictionary(buffer, options);
          WriterHandler = IIO_WriterHandler::GetWriterHandler(v14);
          if (IIO_WriterHandler::findWriterForType(WriterHandler, type, count, buffer, v16))
          {
            operator new();
          }

          IIODictionary::~IIODictionary(buffer);
          LogError("CGImageDestinationCreateWithDataConsumer", 5234, "*** ERROR: CGImageDestinationCreateWithDataConsumer: failed to create 'CGImageDestinationRef'\n");
        }

        else
        {
          CGImageDestinationCreateWithDataConsumer_cold_2();
        }
      }

      else
      {
        CGImageDestinationCreateWithDataConsumer_cold_1();
      }
    }

    else
    {
      CGImageDestinationCreateWithDataConsumer_cold_3();
    }
  }

  else
  {
    CGImageDestinationCreateWithDataConsumer_cold_4();
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationCreateWithDataConsumer", 5237, "could not create CGImageDestinationRef");
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_186053AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x186602850](v9, 0x10E1C405BBD71D3, a3, a4, a5);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageDestinationRef CGImageDestinationCreateWithURL(CFURLRef url, CFStringRef type, size_t count, CFDictionaryRef options)
{
  IIOInitDebugFlags(url, type);
  kdebug_trace();
  if (url)
  {
    if (type)
    {
      if (!count)
      {
        _cg_jpeg_mem_term("CGImageDestinationCreateWithURL", 5310, "*** CGImageDestinationCreateWithURL: capacity is 0\n");
      }

      v8 = CFGetTypeID(url);
      if (v8 == CFURLGetTypeID())
      {
        v9 = CFGetTypeID(type);
        if (v9 == CFStringGetTypeID())
        {
          if (options)
          {
            v10 = CFGetTypeID(options);
            if (v10 != CFDictionaryGetTypeID())
            {
              LogError("CGImageDestinationCreateWithURL", 5315, "*** ERROR: CGImageDestinationCreateWithURL: options parameter is not a CFDictionaryRef - ignoring\n");
              options = 0;
            }
          }

          if ((gIIODebugFlags & 0x3000) != 0)
          {
            v11 = IIO_CFURLCopyResolvedFileSystemPath(url);
            if (v11)
            {
              v12 = v11;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              IIOString::IIOString(&v19, 0, @"[%@] %@", type, v11);
              v13 = (gIIODebugFlags >> 12) & 3;
              if (v13)
              {
                v14 = IIOString::utf8String(&v19);
                ImageIODebugOptions(v13, "A", "CGImageDestinationCreateWithURL", 0, v14, -1, options);
              }

              CFRelease(v12);
              IIOString::~IIOString(&v19);
            }
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          IIODictionary::IIODictionary(&v19, options);
          WriterHandler = IIO_WriterHandler::GetWriterHandler(v15);
          if (IIO_WriterHandler::findWriterForType(WriterHandler, type, count, &v19, v17))
          {
            operator new();
          }

          IIODictionary::~IIODictionary(&v19);
          LogError("CGImageDestinationCreateWithURL", 5332, "*** ERROR: CGImageDestinationCreateWithURL: failed to create 'CGImageDestinationRef'\n");
        }

        else
        {
          CGImageDestinationCreateWithURL_cold_2();
        }
      }

      else
      {
        CGImageDestinationCreateWithURL_cold_1();
      }
    }

    else
    {
      CGImageDestinationCreateWithURL_cold_3();
    }
  }

  else
  {
    CGImageDestinationCreateWithURL_cold_4();
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_186053DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x186602850](v7, 0x10E1C405BBD71D3, a3, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationSetProperties(CGImageDestinationRef idst, CFDictionaryRef properties)
{
  kdebug_trace();
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageDestinationSetProperties", idst, 0, -1, properties);
  }

  if (idst)
  {
    v5 = CFGetTypeID(idst);
    if (CGImageDestinationGetTypeID::once != -1)
    {
      CGImageDestinationGetTypeID_cold_1();
    }

    if (v5 == CGImageDestinationGetTypeID::id)
    {
      if (properties)
      {
        v6 = CFGetTypeID(properties);
        if (v6 != CFDictionaryGetTypeID())
        {
          LogError("CGImageDestinationSetProperties", 5361, "*** ERROR: CGImageDestinationSetProperties: properties parameter is not a CFDictionaryRef - ignoring\n");
          properties = 0;
        }
      }

      v7 = *(idst + 3);
      if (v7)
      {
        memset(v9, 0, sizeof(v9));
        IIODictionary::IIODictionary(v9, properties);
        IIOImageDestination::setProperties(v7, v9);
        v8 = *(v7 + 8);
        if (v8)
        {
          IIO_Reader::osType(v8);
        }

        IIODictionary::~IIODictionary(v9);
      }
    }

    else
    {
      CGImageDestinationSetProperties_cold_2();
    }
  }

  else
  {
    CGImageDestinationSetProperties_cold_3();
  }

  kdebug_trace();
}

void sub_186053FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageFromSource(CGImageDestinationRef idst, CGImageSourceRef isrc, size_t index, CFDictionaryRef properties)
{
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22, properties, 1);
  IIOPackDstInputInfo(v22);
  kdebug_trace();
  v8 = (gIIODebugFlags >> 12) & 3;
  if (v8 < 2)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v8 = 1;
    goto LABEL_8;
  }

  if (!isrc)
  {
LABEL_8:
    ImageIODebugOptions(v8, "A", "CGImageDestinationAddImageFromSource", idst, 0, -1, properties);
    goto LABEL_9;
  }

  v9 = CFCopyDescription(isrc);
  memset(v21, 0, sizeof(v21));
  IIOString::IIOString(v21, v9);
  v10 = (gIIODebugFlags >> 12) & 3;
  if (v10)
  {
    v11 = IIOString::utf8String(v21);
    ImageIODebugOptions(v10, "A", "CGImageDestinationAddImageFromSource", idst, v11, -1, properties);
  }

  CFRelease(v9);
  IIOString::~IIOString(v21);
LABEL_9:
  Uint32ForKey = IIODictionary::getUint32ForKey(v22, @"kCGImageSurfaceFormatRequest");
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v22, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  IIOPixelFormatIndex(Uint32ForKey);
  IIOPixelFormatIndex(Uint32ForKeyGroup);
  IIODictionary::getUint32ForKeyGroup(v22, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  if (!idst)
  {
    LogError("CGImageDestinationAddImageFromSource", 5512, "*** ERROR: CGImageDestinationAddImageFromSource: destination is nil\n");
    goto LABEL_28;
  }

  v14 = *(idst + 3);
  if (isrc)
  {
    v15 = CFGetTypeID(idst);
    if (CGImageDestinationGetTypeID::once != -1)
    {
      CGImageDestinationAddImage_cold_1();
    }

    if (v15 == CGImageDestinationGetTypeID::id)
    {
      v16 = CFGetTypeID(isrc);
      if (v16 == CGImageSourceGetTypeID())
      {
        if (properties)
        {
          v17 = CFGetTypeID(properties);
          if (v17 != CFDictionaryGetTypeID())
          {
            LogError("CGImageDestinationAddImageFromSource", 5519, "*** ERROR: CGImageDestinationAddImageFromSource: properties parameter is not a CFDictionaryRef - ignoring\n");
          }
        }

        if (!CGImageSourceGetType(isrc))
        {
          LogError("CGImageDestinationAddImageFromSource", 5527, "*** ERROR: CGImageDestinationAddImageFromSource: source is not an image -- (CGImageSourceGetType() returned NULL)\n");
          v20 = -65;
          goto LABEL_25;
        }

        Count = CGImageSourceGetCount(isrc);
        if (Count > index)
        {
          if (v14)
          {
            IIOImageDestination::addImageFromSource(v14, isrc, index, v22);
            v19 = *(v14 + 64);
            if (v19)
            {
              IIO_Reader::osType(v19);
            }

            v20 = 0;
            goto LABEL_26;
          }

          goto LABEL_28;
        }

        LogError("CGImageDestinationAddImageFromSource", 5533, "*** ERROR: srcIndex (%ld) >= CGImageSourceGetCount (%ld)\n", index, Count);
      }

      else
      {
        LogError("CGImageDestinationAddImageFromSource", 5516, "*** ERROR: CGImageDestinationAddImageFromSource: source is not a CGImageSourceRef\n");
      }
    }

    else
    {
      LogError("CGImageDestinationAddImageFromSource", 5515, "*** ERROR: CGImageDestinationAddImageFromSource: destination is not a CGImageDestinationRef\n");
    }
  }

  else
  {
    LogError("CGImageDestinationAddImageFromSource", 5514, "*** ERROR: CGImageDestinationAddImageFromSource: source is nil\n");
  }

  v20 = -50;
LABEL_25:
  if (v14)
  {
LABEL_26:
    *(v14 + 212) = v20;
  }

LABEL_28:
  kdebug_trace();
  IIODictionary::~IIODictionary(v22);
}

void sub_186054564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageAndMetadata(CGImageDestinationRef idst, CGImageRef image, CGImageMetadataRef metadata, CFDictionaryRef options)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19, options);
  if (image)
  {
    CGImageGetWidth(image);
    CGImageGetHeight(image);
  }

  IIOPackDstInputInfo(v19);
  IIOPackImageDesc(image);
  kdebug_trace();
  v8 = (gIIODebugFlags >> 12) & 3;
  if (v8)
  {
    ImageIODebugOptions(v8, "A", "CGImageDestinationAddImageAndMetadata", idst, 0, -1, options);
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v19, @"kCGImageSurfaceFormatRequest");
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v19, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  IIOPixelFormatIndex(Uint32ForKey);
  IIOPixelFormatIndex(Uint32ForKeyGroup);
  IIODictionary::getUint32ForKeyGroup(v19, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  if (idst)
  {
    v11 = 5571;
  }

  else
  {
    v11 = 5570;
  }

  if (idst)
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: image is nil\n";
  }

  else
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: destination is nil\n";
  }

  if (!idst || !image)
  {
    goto LABEL_29;
  }

  v13 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationAddImage_cold_1();
  }

  if (v13 != CGImageDestinationGetTypeID::id)
  {
    LogError("CGImageDestinationAddImageAndMetadata", 5572, "*** ERROR: CGImageDestinationAddImageAndMetadata: destination is not a CGImageDestinationRef\n");
    goto LABEL_30;
  }

  v14 = CFGetTypeID(image);
  if (v14 != CGImageGetTypeID())
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: image is not a CGImageRef\n";
    v11 = 5573;
LABEL_29:
    LogError("CGImageDestinationAddImageAndMetadata", v11, v12);
    goto LABEL_30;
  }

  if (metadata)
  {
    v15 = CFGetTypeID(metadata);
    if (v15 != CGImageMetadataGetTypeID())
    {
      LogError("CGImageDestinationAddImageAndMetadata", 5576, "*** ERROR: CGImageDestinationAddImageAndMetadata: metadata parameter is not a CGImageMetadataRef - ignoring\n");
      metadata = 0;
    }
  }

  if (options)
  {
    v16 = CFGetTypeID(options);
    if (v16 != CFDictionaryGetTypeID())
    {
      LogError("CGImageDestinationAddImageAndMetadata", 5581, "*** ERROR: CGImageDestinationAddImageAndMetadata: options parameter is not a CFDictionaryRef - ignoring\n");
    }
  }

  v17 = *(idst + 3);
  if (v17)
  {
    IIOImageDestination::addImageAndMetadata(*(idst + 3), image, metadata, v19);
    v18 = *(v17 + 64);
    if (v18)
    {
      IIO_Reader::osType(v18);
    }
  }

LABEL_30:
  kdebug_trace();
  IIODictionary::~IIODictionary(v19);
}

void sub_186054A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL CGImageDestinationCopyImageSource(CGImageDestinationRef idst, CGImageSourceRef isrc, CFDictionaryRef options, CFErrorRef *err)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19, options);
  IIOPackDstInputInfo(v19);
  v8 = kdebug_trace();
  IIOInitDebugFlags(v8, v9);
  v10 = (gIIODebugFlags >> 12) & 3;
  if (v10)
  {
    ImageIODebugOptions(v10, "A", "CGImageDestinationCopyImageSource", idst, 0, -1, options);
  }

  if (!idst)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5615, "CGImageDestinationCopyImageSource: destination is nil\n");
    goto LABEL_22;
  }

  if (!isrc)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5616, "CGImageDestinationCopyImageSource: source is nil\n");
    goto LABEL_22;
  }

  v11 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationAddImage_cold_1();
  }

  if (v11 != CGImageDestinationGetTypeID::id)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5617, "*** ERROR: CGImageDestinationCopyImageSource: destination is not a CGImageDestinationRef\n");
    goto LABEL_22;
  }

  v12 = CFGetTypeID(isrc);
  if (v12 != CGImageSourceGetTypeID())
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5618, "*** ERROR: CGImageDestinationCopyImageSource: source is not a CGImageSourceRef\n");
    goto LABEL_22;
  }

  if (options)
  {
    v13 = CFGetTypeID(options);
    if (v13 == CFDictionaryGetTypeID())
    {
      v14 = 1;
      goto LABEL_14;
    }

    LogError("CGImageDestinationCopyImageSource", 5621, "*** ERROR: CGImageDestinationCopyImageSource: options parameter is not a CFDictionaryRef - ignoring\n");
  }

  v14 = 0;
LABEL_14:
  v15 = *(idst + 3);
  if (!v15)
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v16 = IIOImageDestination::copyImageSource(*(idst + 3), isrc, v19, v14, err);
  v17 = *(v15 + 64);
  if (v17)
  {
    IIO_Reader::osType(v17);
  }

LABEL_23:
  if ((gIIODebugFlags & 0x800000000000) != 0 && (v16 & 1) == 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationCopyImageSource", 5635, "could not copy from imageSource");
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v19);
  return v16;
}

void sub_186054CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddAuxiliaryDataInfo(CGImageDestinationRef idst, CFStringRef auxiliaryImageDataType, CFDictionaryRef auxiliaryDataInfoDictionary)
{
  IIOInitDebugFlags(idst, auxiliaryImageDataType);
  if (auxiliaryImageDataType && CFStringCompare(auxiliaryImageDataType, @"kCGImageAuxiliaryDataTypeHDRGainMap", 0))
  {
    CFStringCompare(auxiliaryImageDataType, @"kCGImageAuxiliaryDataTypeISOGainMap", 0);
  }

  kdebug_trace();
  if ((gIIODebugFlags & 0x3000) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    IIOString::IIOString(&v13, auxiliaryImageDataType);
    v6 = (gIIODebugFlags >> 12) & 3;
    if (v6)
    {
      v7 = IIOString::utf8String(&v13);
      ImageIODebugOptions(v6, "A", "CGImageDestinationAddAuxiliaryDataInfo", idst, v7, -1, 0);
    }

    IIOString::~IIOString(&v13);
  }

  if (idst)
  {
    if (auxiliaryImageDataType)
    {
      if (auxiliaryDataInfoDictionary)
      {
        v8 = CFGetTypeID(idst);
        if (CGImageDestinationGetTypeID::once != -1)
        {
          CGImageDestinationAddImage_cold_1();
        }

        if (v8 == CGImageDestinationGetTypeID::id)
        {
          v9 = CFGetTypeID(auxiliaryImageDataType);
          if (v9 == CFStringGetTypeID())
          {
            v10 = CFGetTypeID(auxiliaryDataInfoDictionary);
            if (v10 == CFDictionaryGetTypeID())
            {
              v11 = *(idst + 3);
              if (v11)
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                IIODictionary::IIODictionary(&v13, auxiliaryDataInfoDictionary);
                IIOImageDestination::addAuxiliaryDataInfo(v11, auxiliaryImageDataType, &v13);
                v12 = *(v11 + 8);
                if (v12)
                {
                  IIO_Reader::osType(v12);
                }

                IIODictionary::~IIODictionary(&v13);
              }
            }

            else
            {
              CGImageDestinationAddAuxiliaryDataInfo_cold_4();
            }
          }

          else
          {
            CGImageDestinationAddAuxiliaryDataInfo_cold_3();
          }
        }

        else
        {
          CGImageDestinationAddAuxiliaryDataInfo_cold_2();
        }
      }

      else
      {
        CGImageDestinationAddAuxiliaryDataInfo_cold_5();
      }
    }

    else
    {
      CGImageDestinationAddAuxiliaryDataInfo_cold_6();
    }
  }

  else
  {
    CGImageDestinationAddAuxiliaryDataInfo_cold_7();
  }

  kdebug_trace();
}

void sub_186054F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageWithMetadata(CGImageDestinationRef idst, CGImageRef image, const __CFArray *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageDestinationAddImageWithMetadata", 0, 0, -1, 0);
  }

  keys[0] = @"{MetaData}";
  if (a3 && (v6 = CGImageMetadataCreateFromMetadataProperties(a3)) != 0)
  {
    v7 = v6;
    values = v6;
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v7);
    CGImageDestinationAddImage(idst, image, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {

    CGImageDestinationAddImage(idst, image, 0);
  }
}

void CGImageDestinationAddImageFromSourceWithMetadata(CGImageDestinationRef idst, CGImageSourceRef isrc, size_t index, const __CFArray *a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageDestinationAddImageFromSourceWithMetadata", 0, 0, -1, 0);
  }

  keys[0] = @"{MetaData}";
  if (a4 && (v8 = CGImageMetadataCreateFromMetadataProperties(a4)) != 0)
  {
    v9 = v8;
    values = v8;
    v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v9);
    CGImageDestinationAddImageFromSource(idst, isrc, index, v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {

    CGImageDestinationAddImageFromSource(idst, isrc, index, 0);
  }
}

uint64_t TIFFInitNeXT(void *a1)
{
  a1[121] = NeXTPreDecode;
  a1[126] = NeXTDecode;
  a1[128] = NeXTDecode;
  a1[130] = NeXTDecode;
  return 1;
}

uint64_t NeXTPreDecode(uint64_t a1)
{
  v1 = *(a1 + 116);
  if (v1 == 2)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "NeXTPreDecode", "Unsupported BitsPerSample = %hu", v1);
  return 0;
}

uint64_t NeXTDecode(uint64_t a1, char *__b, int64_t __len)
{
  v3 = __len;
  v4 = __b;
  if (__len >= 1)
  {
    memset(__b, 255, __len);
  }

  v6 = *(a1 + 1104);
  if (v3 % v6)
  {
    TIFFErrorExtR(a1, "NeXTDecode", "Fractional scanlines cannot be read");
    return 0;
  }

  i = *(a1 + 1160);
  v9 = *(a1 + 1152);
  if (i < 1 || v3 < 1)
  {
LABEL_46:
    *(a1 + 1152) = v9;
    *(a1 + 1160) = i;
    return 1;
  }

LABEL_8:
  v11 = v9 + 1;
  v10 = *v9;
  v12 = i - 1;
  if (v10 == 64)
  {
    if (i < 5 || ((v13 = __rev16(*(v9 + 1)), v14 = __rev16(*(v9 + 3)), v15 = v14 + 4, i > v14 + 4) ? (v16 = (v14 + v13) <= v6) : (v16 = 0), !v16))
    {
LABEL_47:
      TIFFErrorExtR(a1, "NeXTDecode", "Not enough data for scanline %u");
      return 0;
    }

    _TIFFmemcpy(&v4[v13], v9 + 5, v14);
    v9 = &v11[v15];
    i = v12 - v15;
    goto LABEL_43;
  }

  if (!*v9)
  {
    if (i <= v6)
    {
      goto LABEL_47;
    }

    _TIFFmemcpy(v4, v9 + 1, v6);
    v9 = &v11[v6];
    i = v12 - v6;
    goto LABEL_43;
  }

  v17 = 0;
  v18 = 0;
  if ((*(a1 + 17) & 4) != 0)
  {
    v19 = 100;
  }

  else
  {
    v19 = 88;
  }

  v20 = *(a1 + v19);
  v21 = v4;
  for (i = v12; ; --i)
  {
    v22 = v17 < v20;
    v23 = v18 < v6;
    v24 = v10 & 0x3F;
    if ((v10 & 0x3F) != 0 && v17 < v20 && v18 < v6)
    {
      v25 = v10 >> 6;
      v26 = 4 * (v10 >> 6);
      v27 = 16 * (v10 >> 6);
      v28 = v10 & 0xC0;
      while ((v17 & 3) > 1)
      {
        if ((v17 & 3) == 2)
        {
          v29 = *v21 | v26;
LABEL_33:
          *v21 = v29;
          goto LABEL_35;
        }

        *v21++ |= v25;
        ++v18;
LABEL_35:
        v30 = v17 + 1;
        v22 = v17 + 1 < v20;
        v23 = v18 < v6;
        ++v17;
        if (v24 >= 2 && v30 < v20)
        {
          --v24;
          if (v18 < v6)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      if ((v17 & 3) == 0)
      {
        *v21 = v28;
        goto LABEL_35;
      }

      v29 = *v21 | v27;
      goto LABEL_33;
    }

LABEL_38:
    if (!v22)
    {
      v9 = v11;
LABEL_43:
      if (i < 1)
      {
        goto LABEL_46;
      }

      v4 += v6;
      v16 = v3 <= v6;
      v3 -= v6;
      if (v16)
      {
        goto LABEL_46;
      }

      goto LABEL_8;
    }

    if (!v23)
    {
      break;
    }

    if (!i)
    {
      goto LABEL_47;
    }

    v31 = *v11++;
    v10 = v31;
  }

  TIFFErrorExtR(a1, "NeXTDecode", "Invalid data for scanline %u");
  return 0;
}

size_t png_default_read_data(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v4 = result;
    result = fread(__ptr, 1uLL, a3, *(result + 40));
    if (result != a3)
    {
      _cg_png_error(v4, "Read Error");
    }
  }

  return result;
}

void *MPOReadPlugin::MPOReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DA328;
  return result;
}

void MPOReadPlugin::~MPOReadPlugin(MPOReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t MPOReadPlugin::loadDataFromXPCObject(MPOReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_mpo", &length);
    if (length == 1)
    {
      v6 = data;
      result = 0;
      *(this + 464) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t MPOReadPlugin::saveDataToXPCObject(MPOReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_mpo", this + 464, 1uLL);
  }

  return v4;
}

uint64_t MPOReadPlugin::initialize(MPOReadPlugin *this, IIODictionary *a2)
{
  v4 = *(this + 7);
  v5 = IIOImageReadSession::globalInfoForType(*(this + 3), 1297108768);
  if (v5)
  {
    v6 = v5;
    v7 = *(this + 56);
    if (v7 < GlobalMPOInfo::getEntryCount(v5))
    {
      EntryAtIndex = GlobalMPOInfo::getEntryAtIndex(v6, *(this + 56));
      if (EntryAtIndex)
      {
        v9 = EntryAtIndex;
        v10 = _MPEntry::imageSize(EntryAtIndex);
        v11 = _MPEntry::imageOffset(v9);
        v12 = v11;
        if (v11)
        {
          v11 = IIOImageSource::cf(v6);
          v12 += v11;
        }

        if (IIO_ReaderHandler::UseAppleJPEG(v11))
        {
          IIONumber::IIONumber(v17, 1246774599);
        }

        else
        {
          IIONumber::IIONumber(v17, 1279938631);
        }

        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(v17);
        IIONumber::IIONumber(v17, v12);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(v17);
        IIONumber::IIONumber(v17, v10);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        IIONumber::~IIONumber(v17);
        Metadata = GlobalMPOInfo::getMetadata(v6);
        if (Metadata)
        {
          v15 = Metadata;
          if (GlobalMPOInfo::getEntryCount(v6) >= 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, *(this + 56));
            if (ValueAtIndex)
            {
              IIODictionary::setObjectForKey(v4, ValueAtIndex, @"{MPO}");
            }
          }

          if (_MPEntry::isLargeThumbnail(v9))
          {
            IIODictionary::setObjectForKey(v4, *MEMORY[0x1E695E4D0], @"kCGImageSourceAddMetadataFromPrimaryImage");
          }
        }
      }
    }
  }

  else
  {
    _cg_jpeg_mem_term("initialize", 91, "could not get globalMPOInfo\n");
  }

  kdebug_trace();
  kdebug_trace();
  return 4294967247;
}

void sub_18605594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIO_Reader_AppleJPEG::~IIO_Reader_AppleJPEG(IIO_Reader_AppleJPEG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Reader_AppleJPEG::HasGainMapAtOffset(IIO_Reader_AppleJPEG *this, IIOImageReadSession *a2)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  IIOScanner::IIOScanner(&v20, this);
  IIOScanner::setEndianness(&v20, 0);
  IIOScanner::seek(&v20, a2);
  if (IIOScanner::getVal16(&v20) == 65496)
  {
    for (i = IIOScanner::getVal16(&v20); (i & 0xFFF0) == 0xFFE0; i = IIOScanner::getVal16(&v20))
    {
      Val16 = IIOScanner::getVal16(&v20);
      v5 = Val16;
      if (i == 65506 && Val16 >= 5)
      {
        v6 = *(&v21 + 1);
        if (IIOScanner::getVal32(&v20) == 1297106432)
        {
          v7 = *(&v21 + 1);
          if (IIOScanner::getVal16(&v20) == 18761)
          {
            IIOScanner::setEndianness(&v20, 1);
          }

          if (IIOScanner::getVal16(&v20) != 42)
          {
            break;
          }

          if (IIOScanner::getVal32(&v20) != 8)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = -1;
            __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
          }

          v8 = IIOScanner::getVal16(&v20);
          v19 = 0;
          v18 = 0;
          v9 = 0;
          if (v8)
          {
            v10 = 0;
            v11 = 0;
            do
            {
              IIOScanner::getTiffTag(&v20, &v18);
              if (v18 == 45057)
              {
                v11 = v19;
              }

              else if (v18 == 45058)
              {
                IIOScanner::seek(&v20, v7 + v19, 0);
                if (v11)
                {
                  v12 = 0;
                  v13 = 0;
                  while (1)
                  {
                    v14 = IIOScanner::getVal32(&v20) & 0xFFFFFF;
                    if (!v12)
                    {
                      v13 = v14;
                    }

                    IIOScanner::skip(&v20, 8uLL);
                    v15 = IIOScanner::getVal16(&v20);
                    if (!(v15 | IIOScanner::getVal16(&v20)) && (v14 == 327680 || v12 && v13 == 196608 && !v14))
                    {
                      break;
                    }

                    if (v11 == ++v12)
                    {
                      goto LABEL_30;
                    }
                  }

                  v9 = 1;
                }
              }

LABEL_30:
              ++v10;
            }

            while (v10 != v8);
          }

          goto LABEL_34;
        }

        IIOScanner::seek(&v20, v6);
      }

      IIOScanner::skip(&v20, v5 - 2);
    }
  }

  v9 = 0;
LABEL_34:
  IIOScanner::~IIOScanner(&v20);
  return v9 & 1;
}

uint64_t IIO_Reader_AppleJPEG::updateSourceProperties(IIO_Reader_AppleJPEG *this, IIOImageRead **a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (a2)
  {
    v7 = IIOImageReadSession::mapData(a2);
  }

  else
  {
    v7 = 0;
  }

  if (IIO_Reader_AppleJPEG::HasGainMapAtOffset(a2, 0))
  {
    kdebug_trace();
    v8 = 4294967248;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v7;
  if (!a2)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    IIOImageReadSession::unmapData(a2);
  }

  return v8;
}

uint64_t IIO_Reader_AppleJPEG::initThumbnail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Source = CGImageSourceGetSource(a2);
  Properties = IIOImagePlus::getProperties(Source);
  Session = CGImagePluginGetSession(a2);
  v9 = CGImageSourceGetSource(Session);
  if (!Session)
  {
    return 4294967245;
  }

  v10 = v9;
  Size = IIOImageReadSession::getSize(v9);
  v73 = 0;
  v12 = IIOImageReadSession::retainBytePointer(v10, &v73, 0);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    Size = IIOImageReadSession::getBytesAtOffset(v10, v14, 0, 4096);
  }

  if (Size < 0x1000 || *v14 != 255 || v14[1] != 216)
  {
    goto LABEL_17;
  }

  if (v14[2] == 255 && v14[3] == 224)
  {
    v16 = __rev16(*(v14 + 2)) + 4;
  }

  else
  {
    v16 = 2;
  }

  if (v16 < Size - 10)
  {
    if (v14[v16] != 255)
    {
      goto LABEL_17;
    }

    v17 = &v14[v16];
    if (v14[v16 + 1] != 225)
    {
      goto LABEL_17;
    }

    v18 = *(v17 + 1);
    if (strncmp(v17 + 4, "Exif", 4uLL))
    {
      goto LABEL_17;
    }

    v22 = &v14[Size];
    v19 = v16 + 10;
    v23 = &v14[v16 + 10];
    v24 = *v23;
    if (v24 == 77)
    {
      if (v23[1] != 77 || v23[2])
      {
        goto LABEL_18;
      }

      v25 = v18;
      v20 = 0;
      if (v23[3] != 42)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v24 != 73 || v23[1] != 73 || v23[2] != 42)
      {
        goto LABEL_18;
      }

      v25 = v18;
      v20 = 0;
      if (v23[3])
      {
        goto LABEL_45;
      }
    }

    if ((v23 + 8) <= v22)
    {
      v20 = 0;
      LODWORD(v26) = *(v23 + 1);
      v27 = bswap32(v26);
      v26 = v24 == 77 ? v27 : v26;
      if (v26 >= 8 && __rev16(v25) - 4 >= v26)
      {
        v28 = &v23[v26];
        v29 = (v28 + 2);
        if ((v28 + 2) <= v22)
        {
          v30 = *v28;
          v31 = bswap32(v30) >> 16;
          if (v24 == 77)
          {
            v32 = v31;
          }

          else
          {
            v32 = v30;
          }

          if ((Size - v16 - v26 - 12) / 0xC <= v32)
          {
            goto LABEL_18;
          }

          if (v32)
          {
            v69 = v24;
            do
            {
              if ((v29 + 1) <= v22)
              {
                v34 = *v29;
                v35 = bswap32(v34) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v34) = v35;
                }

                v33 = v34 == 274;
              }

              else
              {
                v33 = 0;
              }

              if ((v29 + 2) <= v22)
              {
                v37 = v29[1];
                v38 = bswap32(v37) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v37) = v38;
                }

                v36 = v37 == 3;
              }

              else
              {
                v36 = 0;
              }

              if ((v29 + 4) <= v22)
              {
                v39 = *(v29 + 1);
                v40 = bswap32(v39);
                if (v24 == 77)
                {
                  LOWORD(v39) = v40;
                }

                if (v33 && v36 && v39 == 1 && (v29 + 5) <= v22)
                {
                  v42 = v29[4];
                  v43 = bswap32(v42) >> 16;
                  if (v24 == 77)
                  {
                    LOWORD(v42) = v43;
                  }

                  if (v42 - 1 <= 7)
                  {
                    v70 = v32;
                    v71 = v42;
                    IIONumber::IIONumber(v72, v42);
                    IIODictionary::setObjectForKey(Properties, v72, @"Orientation");
                    IIONumber::~IIONumber(v72);
                    IIONumber::IIONumber(v72, v71);
                    IIODictionary::setObjectForKeyGroup(Properties, v72, @"Orientation", @"{TIFF}");
                    IIONumber::~IIONumber(v72);
                    v24 = v69;
                    v22 = &v14[Size];
                    v32 = v70;
                  }
                }
              }

              --v32;
              v29 += 6;
            }

            while (v32);
          }
        }

        else if (Size - v16 - v26 - 12 < 0xC)
        {
          goto LABEL_18;
        }

        if ((v29 + 2) > v22)
        {
          goto LABEL_18;
        }

        v44 = *v29;
        v45 = bswap32(*v29);
        if (v24 == 77)
        {
          v44 = v45;
        }

        if (!v44)
        {
          goto LABEL_18;
        }

        v46 = v19 + v44;
        if (v73)
        {
          if (Size <= v46 + 2)
          {
            goto LABEL_18;
          }

          v14 = v13 + v46;
          BytesAtOffset = Size - v46;
        }

        else
        {
          v48 = v24;
          BytesAtOffset = IIOImageReadSession::getBytesAtOffset(v10, v14, v46, 4096);
          if (BytesAtOffset < 2)
          {
            goto LABEL_18;
          }

          v24 = v48;
        }

        if (BytesAtOffset >= 2)
        {
          v49 = *v14;
          v50 = bswap32(v49) >> 16;
          if (v24 == 77)
          {
            v49 = v50;
          }

          if ((BytesAtOffset - 2) / 0xCuLL > v49 && v49 != 0)
          {
            v52 = 0;
            v21 = 0;
            v20 = 0;
            v53 = &v14[BytesAtOffset];
            do
            {
              v54 = &v14[v52];
              v55 = &v14[v52 + 4];
              if (v55 <= v53)
              {
                v56 = *(v54 + 1);
                v57 = bswap32(v56) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v56) = v57;
                }
              }

              else
              {
                LOWORD(v56) = 0;
              }

              v58 = (v54 + 6);
              if ((v54 + 6) <= v53)
              {
                v60 = *v55;
                v61 = bswap32(v60) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v60) = v61;
                }

                v59 = v60 == 4;
              }

              else
              {
                v59 = 0;
              }

              v62 = &v14[v52 + 10];
              if (v62 <= v53)
              {
                v63 = *v58;
                v64 = bswap32(v63);
                if (v24 != 77)
                {
                  v64 = v63;
                }

                if (v56 == 513 && v59 && v64 == 1)
                {
                  if (&v14[v52 + 14] <= v53)
                  {
                    v65 = *v62;
                    v66 = bswap32(v65);
                    if (v24 == 77)
                    {
                      v20 = v66;
                    }

                    else
                    {
                      v20 = v65;
                    }
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else if (v56 == 514 && v59 && v64 == 1)
                {
                  if (&v14[v52 + 14] <= v53)
                  {
                    v67 = *v62;
                    v68 = bswap32(v67);
                    if (v24 == 77)
                    {
                      v21 = v68;
                    }

                    else
                    {
                      v21 = v67;
                    }
                  }

                  else
                  {
                    v21 = 0;
                  }
                }
              }

              --v49;
              v52 += 12;
            }

            while (v49);
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

LABEL_45:
    v21 = 0;
    goto LABEL_19;
  }

  _cg_jpeg_mem_term("initThumbnail", 392, "*** ERROR: bad APP marker offset (%ld)\n");
LABEL_17:
  v19 = 0;
LABEL_18:
  v20 = 0;
  v21 = 0;
LABEL_19:
  if (v73)
  {
    IIOImageReadSession::releaseBytePointer(v10, v73);
  }

  else if (v14)
  {
    free(v14);
  }

  result = 4294967245;
  if (v20)
  {
    if (v21)
    {
      CGImagePluginInitThumbJPEGAtOffset(a2, (v20 + v19), v21, a4);
    }
  }

  return result;
}

void sub_186056478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t png_icc_profile_error(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, char *a5)
{
  *&v28[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(a2 + 74) |= 0x8000u;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v10 = png_safecat(v26, v28, 0xC4uLL, 0, "profile '");
  v11 = png_safecat(v26, v28, v10 + 79, v10, a3);
  result = png_safecat(v26, v28, 0xC4uLL, v11, "': ");
  v13 = result;
  v14 = a4 >> 24;
  if ((a4 >> 24 == 32 || v14 - 58 > 0xFFFFFFFFFFFFFFF5 || (v14 & 0xFFFFFFFFFFFFFFDFLL) - 91 >= 0xFFFFFFFFFFFFFFE6) && (((a4 >> 16) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE2(a4) == 32 || BYTE2(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && (((a4 >> 8) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE1(a4) == 32 || BYTE1(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && ((a4 & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || a4 == 32 || a4 - 58 >= 0xFFFFFFFFFFFFFFF6))
  {
    v19 = v26 + result;
    if ((v26 + result) < v26)
    {
      goto LABEL_46;
    }

    if (v19 >= v28)
    {
      goto LABEL_46;
    }

    *v19 = 39;
    if (v19 + 1 >= v28 || v19 + 1 < v19)
    {
      goto LABEL_46;
    }

    v20 = BYTE3(a4);
    if (BYTE3(a4) - 32 >= 0x5Fu)
    {
      LOBYTE(v20) = 63;
    }

    v19[1] = v20;
    if (v19 + 2 >= v28 || v19 + 2 < v19)
    {
      goto LABEL_46;
    }

    v21 = WORD1(a4);
    if (BYTE2(a4) - 32 >= 0x5F)
    {
      LOBYTE(v21) = 63;
    }

    v19[2] = v21;
    if (v19 + 3 >= v28 || v19 + 3 < v19)
    {
      goto LABEL_46;
    }

    v22 = a4 >> 8;
    if (BYTE1(a4) - 32 >= 0x5F)
    {
      LOBYTE(v22) = 63;
    }

    if ((v19[3] = v22, v19 + 4 >= v28) || v19 + 4 < v19 || (a4 - 32 >= 0x5F ? (v23 = 63) : (v23 = a4), (v19[4] = v23, v19 + 5 >= v28) || v19 + 5 < v19 || (v19[5] = 39, v19 + 6 >= v28) || v19 + 6 < v26 || (v19[6] = 58, v24 = v19 + 7, v24 >= v28) || v24 < v26))
    {
LABEL_46:
      __break(0x5519u);
      return result;
    }

    v17 = result + 8;
    *v24 = 32;
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    v15 = png_format_number(v25, v26, v26, v26, 3, a4);
    v16 = png_safecat(v26, v28, 0xC4uLL, v13, v15);
    v17 = png_safecat(v26, v28, 0xC4uLL, v16, "h: ");
  }

  png_safecat(v26, v28, 0xC4uLL, v17, a5);
  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  return png_chunk_report(a1, v26, v18);
}

uint64_t png_colorspace_set_rgb_coefficients(uint64_t result)
{
  if (*(result + 905) || (*(result + 1274) & 2) == 0)
  {
    return result;
  }

  v1 = *(result + 1240);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v2 = *(result + 1252);
  v3 = *(result + 1264);
  v4 = v2 + v1 + v3;
  if (v4 < 1)
  {
    goto LABEL_44;
  }

  if (v1)
  {
    v5 = floor(v1 * 32768.0 / v4 + 0.5);
    if (v5 > 2147483650.0 || v5 < -2147483650.0)
    {
      goto LABEL_44;
    }

    v1 = v5;
  }

  if ((v2 & 0x80000000) != 0 || v1 > 0x8000)
  {
    goto LABEL_44;
  }

  if (v2)
  {
    v7 = floor(v2 * 32768.0 / v4 + 0.5);
    if (v7 <= 2147483650.0 && v7 >= -2147483650.0)
    {
      v2 = v7;
      goto LABEL_19;
    }

LABEL_44:
    _cg_png_error(result, "internal error handling cHRM->XYZ");
  }

LABEL_19:
  if ((v3 & 0x80000000) != 0 || v2 > 0x8000)
  {
    goto LABEL_44;
  }

  if (v3)
  {
    v9 = v3 * 32768.0 / v4 + 0.5;
    v10 = floor(v9);
    if (v10 > 2147483650.0 || v10 < -2147483650.0)
    {
      goto LABEL_44;
    }

    v12 = vcvtmd_s64_f64(v9);
    if (v12 > 0x8000)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v2 + v1 + v12;
  if (v13 > 0x8001)
  {
    goto LABEL_44;
  }

  if (v13 == 32769)
  {
    v14 = -1;
LABEL_34:
    if (v2 < v1 || v2 < v12)
    {
      if (v1 < v2 || v1 < v12)
      {
        v12 += v14;
      }

      else
      {
        v1 += v14;
      }
    }

    else
    {
      v2 += v14;
    }

    goto LABEL_41;
  }

  if (!(v13 >> 15))
  {
    v14 = 1;
    goto LABEL_34;
  }

LABEL_41:
  if (v2 + v1 + v12 != 0x8000)
  {
    _cg_png_error(result, "internal error handling cHRM coefficients");
  }

  *(result + 906) = v1;
  *(result + 908) = v2;
  return result;
}

uint64_t png_muldiv(int *a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  v5 = floor(a2 * a3 / a4 + 0.5);
  if (v5 > 2147483650.0 || v5 < -2147483650.0)
  {
    return 0;
  }

  v4 = v5;
LABEL_10:
  *a1 = v4;
  return 1;
}

unint64_t png_check_fp_number(unint64_t result, unint64_t a2, unint64_t a3, unsigned int *a4, unint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  if (*a5 >= a3)
  {
    goto LABEL_48;
  }

  do
  {
    v7 = (result + v6);
    if (result + v6 >= a2 || v7 < result)
    {
      __break(0x5519u);
      return result;
    }

    v9 = *v7;
    if (v9 <= 48)
    {
      if (v9 > 45)
      {
        if (v9 == 46)
        {
          v10 = 16;
        }

        else
        {
          if (v9 != 48)
          {
            goto LABEL_48;
          }

          v10 = 8;
        }
      }

      else if (v9 == 43)
      {
        v10 = 4;
      }

      else
      {
        if (v9 != 45)
        {
          goto LABEL_48;
        }

        v10 = 132;
      }
    }

    else if ((v9 - 49) >= 9)
    {
      if (v9 != 69 && v9 != 101)
      {
        goto LABEL_48;
      }

      v10 = 32;
    }

    else
    {
      v10 = 264;
    }

    v11 = v10 & 0x3C | v5 & 3;
    if (v11 > 9)
    {
      if (v11 <= 31)
      {
        if (v11 == 10)
        {
          v5 |= 0x48u;
          goto LABEL_44;
        }

        if (v11 != 16 || (v5 & 0x10) != 0)
        {
          goto LABEL_48;
        }

        if ((v5 & 8) == 0)
        {
          v5 = v5 & 0x1C0 | v10 | 1;
          goto LABEL_44;
        }

LABEL_39:
        v5 |= v10;
        goto LABEL_44;
      }

      if (v11 != 32 && v11 != 33 || (v5 & 8) == 0)
      {
        goto LABEL_48;
      }

      v5 = v5 & 0x1C0 | 2;
    }

    else
    {
      if (v11 > 7)
      {
        if (v11 == 8 && (v5 & 0x10) != 0)
        {
          v5 = v5 & 0x180 | 0x11;
        }

        v5 |= v10 | 0x40;
        goto LABEL_44;
      }

      if (v11 == 4)
      {
        if ((v5 & 0x3C) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      if (v11 != 6 || (v5 & 0x3C) != 0)
      {
        goto LABEL_48;
      }

      v5 |= 4u;
    }

LABEL_44:
    ++v6;
  }

  while (a3 != v6);
  v6 = a3;
LABEL_48:
  *a4 = v5;
  *a5 = v6;
  return (v5 >> 3) & 1;
}

unint64_t png_check_fp_string(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v10 = 0;
  v9 = 0;
  result = png_check_fp_number(a1, a2, a3, &v10, &v9);
  if (result)
  {
    if (v9 == a3)
    {
      return v10;
    }

    v7 = (a1 + v9);
    if (a1 + v9 >= a2 || v7 < a1)
    {
      __break(0x5519u);
      return result;
    }

    if (!*v7)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t png_fixed(void (**a1)(void), uint64_t a2, double a3)
{
  v3 = floor(a3 * 100000.0 + 0.5);
  if (v3 > 2147483650.0 || v3 < -2147483650.0)
  {
    png_fixed_error(a1, a2);
  }

  return v3;
}

unsigned int png_reciprocal2(int a1, int a2)
{
  if (a1 && a2 && ((v2 = 1.0e15 / a1 / a2 + 0.5, v3 = floor(v2), v3 <= 2147483650.0) ? (v4 = v3 < -2147483650.0) : (v4 = 1), !v4))
  {
    return vcvtmd_s64_f64(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t png_gamma_8bit_correct(uint64_t result, int a2)
{
  if ((result - 1) <= 0xFD)
  {
    LOBYTE(result) = vcvtmd_s64_f64(pow(result / 255.0, a2 * 0.00001) * 255.0 + 0.5);
  }

  return result;
}

uint64_t png_gamma_correct(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2 - 1;
  if (*(a1 + 432) == 8)
  {
    if (v3 <= 0xFD)
    {
      LOBYTE(a2) = vcvtmd_s64_f64(pow(a2 / 255.0, a3 * 0.00001) * 255.0 + 0.5);
    }

    LOWORD(a2) = a2;
  }

  else if (v3 <= 0xFFFD)
  {
    LOWORD(a2) = vcvtmd_s64_f64(pow(a2 / 65535.0, a3 * 0.00001) * 65535.0 + 0.5);
  }

  return a2;
}

void png_build_gamma_table(uint64_t a1, int a2)
{
  if (*(a1 + 496) || *(a1 + 512))
  {
    png_warning(a1, "gamma table being rebuilt");
    png_destroy_gamma_table(a1);
  }

  if (a2 > 8)
  {
    if ((*(a1 + 431) & 2) != 0)
    {
      v9 = *(a1 + 592);
      if (*(a1 + 593) > v9)
      {
        v9 = *(a1 + 593);
      }

      if (*(a1 + 594) > v9)
      {
        v9 = *(a1 + 594);
      }
    }

    else
    {
      v9 = *(a1 + 595);
    }

    v10 = v9 - 1;
    v11 = 16 - v9;
    if (v10 >= 0xF)
    {
      v11 = 0;
    }

    v12 = v11;
    if (v11 <= 5u)
    {
      v12 = 5;
    }

    v13 = *(a1 + 88) & 0x4000400;
    if (v13)
    {
      v11 = v12;
    }

    if ((v11 & 0xF8) != 0)
    {
      v14 = 8;
    }

    else
    {
      v14 = v11;
    }

    *(a1 + 488) = v14;
    v15 = (a1 + 512);
    v16 = a1 + 528;
    v87 = v14;
    if (v13)
    {
      if (v15 <= v16)
      {
        v17 = *(a1 + 492);
        if (v17 < 1)
        {
          v22 = 1.0;
        }

        else
        {
          v18 = *(a1 + 1200) * 0.00001 * v17 + 0.5;
          v19 = floor(v18);
          v20 = vcvtmd_s64_f64(v18);
          if (v19 < -2147483650.0 || v19 > 2147483650.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v20 * 0.00001;
          }
        }

        v28 = 8 - v14;
        v29 = (1 << (8 - v14));
        v30 = 16 - v14;
        png_calloc(a1, 16 * v29);
        v32 = v31;
        if (v31)
        {
          v33 = &v31[2 * v29];
        }

        else
        {
          v33 = 0;
        }

        *(a1 + 512) = v31;
        *(a1 + 520) = v33;
        v34 = v31;
        while (v34 >= v32 && (v34 + 2) <= v33 && v34 <= v34 + 2)
        {
          v35 = png_malloc(a1, 512);
          v36 = v35 + 64;
          if (!v35)
          {
            v36 = 0;
          }

          *v34 = v35;
          v34[1] = v36;
          v34 += 2;
          if (!--v29)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0xFFu >> v87;
            do
            {
              v40 = vcvtmd_s64_f64(pow(((257 * v37) + 128) / 65535.0, v22) * 65535.0 + 0.5);
              v41 = ((v40 << v30) - v40 + 0x8000) / 0xFFFF;
              if (v38 <= v41)
              {
                v42 = v41 + 1;
                while (1)
                {
                  v43 = (v32 + 16 * (v38 & v39));
                  v44 = v43 + 2;
                  v45 = v43 < v32 || v44 > v33;
                  if (v45 || v43 >= v44)
                  {
                    goto LABEL_137;
                  }

                  v47 = *v43;
                  v48 = v43[1];
                  v49 = (*v43 + 2 * (v38 >> v28));
                  v50 = v49 + 1;
                  v51 = v49 < v47 || v50 > v48;
                  if (v51 || v49 >= v50)
                  {
                    goto LABEL_137;
                  }

                  *v49 = 257 * v37;
                  if (v42 == ++v38)
                  {
                    v38 = v42;
                    break;
                  }
                }
              }

              ++v37;
            }

            while (v37 != 255);
            if (v38 >= 256 << v28)
            {
              goto LABEL_117;
            }

            while (1)
            {
              v53 = (v32 + 16 * (v38 & v39));
              v54 = v53 + 2;
              v55 = v53 < v32 || v54 > v33;
              if (v55 || v53 >= v54)
              {
                goto LABEL_137;
              }

              v57 = *v53;
              v58 = v53[1];
              v59 = (*v53 + 2 * (v38 >> v28));
              v60 = v59 + 1;
              v61 = v59 < v57 || v60 > v58;
              if (v61 || v59 >= v60)
              {
                goto LABEL_137;
              }

              *v59 = -1;
              if (256 << v28 == ++v38)
              {
                goto LABEL_117;
              }
            }
          }
        }
      }

      goto LABEL_137;
    }

    if (v15 > v16)
    {
LABEL_137:
      __break(0x5519u);
      return;
    }

    v23 = *(a1 + 492);
    if (v23 < 1)
    {
      v75 = 100000;
    }

    else
    {
      v24 = *(a1 + 1200);
      if (!v24 || ((v25 = 1.0e15 / v24 / v23 + 0.5, v26 = floor(v25), v26 <= 2147483650.0) ? (v27 = v26 < -2147483650.0) : (v27 = 1), v27))
      {
        v75 = 0;
      }

      else
      {
        v75 = vcvtmd_s64_f64(v25);
      }
    }

    png_build_16bit_table(a1, v15, v14, v75);
LABEL_117:
    if ((*(a1 + 88) & 0x600080) != 0)
    {
      if (a1 + 576 > (a1 + 592))
      {
        goto LABEL_137;
      }

      v76 = 1.0e10 / *(a1 + 1200) + 0.5;
      v77 = floor(v76);
      v78 = v77 < -2147483650.0 || v77 > 2147483650.0;
      v79 = vcvtmd_s64_f64(v76);
      if (v78)
      {
        v80 = 0;
      }

      else
      {
        v80 = v79;
      }

      png_build_16bit_table(a1, (a1 + 576), v87, v80);
      v81 = *(a1 + 492);
      if (v81 < 1)
      {
        v86 = *(a1 + 1200);
      }

      else
      {
        v82 = 1.0e10 / v81 + 0.5;
        v83 = floor(v82);
        v84 = v83 < -2147483650.0 || v83 > 2147483650.0;
        v85 = vcvtmd_s64_f64(v82);
        if (v84)
        {
          v86 = 0;
        }

        else
        {
          v86 = v85;
        }
      }

      png_build_16bit_table(a1, (a1 + 560), v87, v86);
    }
  }

  else
  {
    if (a1 + 496 > (a1 + 512))
    {
      goto LABEL_137;
    }

    v4 = *(a1 + 492);
    if (v4 < 1)
    {
      v63 = 100000;
    }

    else
    {
      v5 = *(a1 + 1200);
      if (!v5 || ((v6 = 1.0e15 / v5 / v4 + 0.5, v7 = floor(v6), v7 <= 2147483650.0) ? (v8 = v7 < -2147483650.0) : (v8 = 1), v8))
      {
        v63 = 0;
      }

      else
      {
        v63 = vcvtmd_s64_f64(v6);
      }
    }

    png_build_8bit_table(a1, (a1 + 496), v63);
    if ((*(a1 + 88) & 0x600080) != 0)
    {
      if (a1 + 544 <= (a1 + 560))
      {
        v64 = 1.0e10 / *(a1 + 1200) + 0.5;
        v65 = floor(v64);
        v66 = v65 < -2147483650.0 || v65 > 2147483650.0;
        v67 = vcvtmd_s64_f64(v64);
        if (v66)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67;
        }

        png_build_8bit_table(a1, (a1 + 544), v68);
        v69 = *(a1 + 492);
        if (v69 < 1)
        {
          v74 = *(a1 + 1200);
        }

        else
        {
          v70 = 1.0e10 / v69 + 0.5;
          v71 = floor(v70);
          v72 = v71 < -2147483650.0 || v71 > 2147483650.0;
          v73 = vcvtmd_s64_f64(v70);
          if (v72)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }
        }

        png_build_8bit_table(a1, (a1 + 528), v74);
        return;
      }

      goto LABEL_137;
    }
  }
}

void png_build_8bit_table(void (**a1)(void), char **a2, int a3)
{
  v5 = png_malloc(a1, 256);
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 256;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  if ((a3 - 95000) > 0x2710)
  {
    v11 = 0;
    while (1)
    {
      v12 = (v11 - 1) > 0xFD ? v11 : vcvtmd_s64_f64(pow(v11 / 255.0, a3 * 0.00001) * 255.0 + 0.5);
      v13 = &v6[v11];
      if (&v6[v11] >= v7 || v13 < v6)
      {
        break;
      }

      *v13 = v12;
      if (++v11 == 256)
      {
        return;
      }
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8];
      if (&v5[v8] >= v7 || v9 < v5)
      {
        break;
      }

      *v9 = v8++;
      if (v8 == 256)
      {
        return;
      }
    }
  }

  __break(0x5519u);
}

void png_build_16bit_table(void (**a1)(void), unint64_t *a2, int a3, int a4)
{
  v7 = 8 - a3;
  v8 = (1 << (8 - a3));
  v9 = ~(-1 << (16 - a3));
  v10 = 1 << (15 - a3);
  png_calloc(a1, 16 * v8);
  v12 = v11;
  v13 = 0;
  v28 = v8;
  v14 = v11 + 16 * v8;
  if (!v11)
  {
    v14 = 0;
  }

  *a2 = v11;
  a2[1] = v14;
  v31 = v14;
  v29 = a4 - 95000;
  v15 = a4 * 0.00001;
LABEL_4:
  v16 = (v12 + 16 * v13);
  v17 = v16 + 2;
  if (v16 >= v12 && v17 <= v31 && v16 < v17)
  {
    v20 = png_malloc(a1, 512);
    v21 = v20;
    if (v20)
    {
      v22 = (v20 + 64);
    }

    else
    {
      v22 = 0;
    }

    *v16 = v20;
    v16[1] = v22;
    if (v29 >= 0x2711)
    {
      v26 = 0;
      v27 = v20;
      while (v27 >= v21 && (v27 + 1) <= v22 && v27 <= v27 + 1)
      {
        *v27++ = vcvtmd_s64_f64(pow(1.0 / v9 * ((v26 << v7) + v13), v15) * 65535.0 + 0.5);
        if (++v26 == 256)
        {
LABEL_28:
          if (++v13 != v28)
          {
            goto LABEL_4;
          }

          return;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = v20;
      while (1)
      {
        v25 = (v23 << v7) + v13;
        if (a3)
        {
          v25 = (v10 - v25 + (v25 << 16)) / v9;
        }

        if (v24 < v20 || (v24 + 1) > v22 || v24 > v24 + 1)
        {
          break;
        }

        *v24++ = v25;
        if (++v23 == 256)
        {
          goto LABEL_28;
        }
      }
    }
  }

  __break(0x5519u);
}

void TIFFWritePlugin::~TIFFWritePlugin(TIFFWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t TIFFWritePlugin::writeIPTCData(int a1, uint64_t a2, IIODictionary *this)
{
  if (this && IIODictionary::getObjectForKey(this, @"{IPTC}"))
  {
    operator new();
  }

  return 0;
}

uint64_t TIFFWritePlugin::fixScanlineForCIELab(TIFFWritePlugin *this, char *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = (a5 * a4) >> 3;
  if (a3 && a5 == 8)
  {
    v6 = a2 + 2;
    do
    {
      *(v6 - 1) ^= 0x80u;
      *v6 ^= 0x80u;
      v6 += v5;
      --a3;
    }

    while (a3);
  }

  else if (a3 && a5 == 16)
  {
    v7 = a2 + 4;
    do
    {
      *(v7 - 1) ^= 0x8000u;
      *v7 ^= 0x8000u;
      v7 += v5;
      --a3;
    }

    while (a3);
  }

  return 0;
}

uint64_t TIFFWritePlugin::writeOne(uint64_t a1, uint64_t a2, IIOImageReadSession **a3, IIOImagePixelDataProvider *this, IIODictionary *a5)
{
  v361 = *MEMORY[0x1E69E9840];
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(this);
  v338 = this;
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(this);
  v356 = 0;
  v357 = 0;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v10 = *(a1 + 32);
    v11 = v10 >> 24;
    if ((v10 >> 24) <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v12)
    {
      v13 = (v10 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v10 << 8 >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v15)
    {
      v16 = (v10 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v10 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v18)
    {
      v19 = (v10 >> 8);
    }

    else
    {
      v19 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_22:
      v20 = *(a1 + 32);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' TIFFWritePlugin::writeOne\n", v13, v16, v19, v20);
      goto LABEL_26;
    }

    v20 = 46;
    goto LABEL_25;
  }

LABEL_26:
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(v338);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(v338);
  v23 = 4294967246;
  v352 = BytesPerRow;
  if (!BytesPerRow)
  {
    return v23;
  }

  v24 = SourceGeomColorSpace;
  if (!SourceGeomColorSpace)
  {
    return v23;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
  Model = CGColorSpaceGetModel(v24);
  Type = CGColorSpaceGetType();
  size = BitmapInfo;
  if (Type == 7)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(v24);
    v28 = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    ColorTableCount = CGColorSpaceGetColorTableCount(v24);
    v333 = malloc_type_malloc(ColorTableCount * v28, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(v24, v333);
    v30 = CGColorSpaceGetBaseColorSpace(v24);
    CGColorSpaceGetType();
    v340 = v30;
    Model = CGColorSpaceGetModel(v30);
    Uint32ForKeyGroup = 0;
    v336 = 0;
    v31 = 1;
  }

  else
  {
    v340 = v24;
    if (Model == kCGColorSpaceModelRGB)
    {
      if (IIODictionary::containsKeyGroup(a5, @"TileWidth", @"{TIFF}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a5, @"TileWidth", @"{TIFF}");
      }

      else
      {
        Uint32ForKeyGroup = 0;
      }

      if (IIODictionary::containsKeyGroup(a5, @"TileLength", @"{TIFF}"))
      {
        v32 = IIODictionary::getUint32ForKeyGroup(a5, @"TileLength", @"{TIFF}");
        ColorTableCount = 0;
        v31 = 1;
        if (!Uint32ForKeyGroup || !v32)
        {
          v336 = v32;
          Model = kCGColorSpaceModelRGB;
          v333 = 0;
          goto LABEL_48;
        }

        ColorTableCount = 0;
        v333 = 0;
        v33 = ((v32 | Uint32ForKeyGroup) & 0xF) == 0;
        if (((v32 | Uint32ForKeyGroup) & 0xF) != 0)
        {
          v34 = 256;
        }

        else
        {
          v34 = Uint32ForKeyGroup;
        }

        Uint32ForKeyGroup = v34;
        if (v33)
        {
          v32 = v32;
        }

        else
        {
          v32 = 256;
        }

        v336 = v32;
      }

      else
      {
        ColorTableCount = 0;
        v333 = 0;
        v336 = 0;
        v31 = 1;
      }

      Model = kCGColorSpaceModelRGB;
    }

    else
    {
      v31 = 0;
      ColorTableCount = 0;
      v333 = 0;
      Uint32ForKeyGroup = 0;
      v336 = 0;
    }
  }

LABEL_48:
  v35 = IIOImageSource::count(v338);
  v36 = IIO_Reader::testHeaderSize(v338);
  v347 = v35;
  _cg_TIFFSetField(a2, 256, v37, v38, v39, v40, v41, v42, v35);
  v335 = v36;
  _cg_TIFFSetField(a2, 257, v43, v44, v45, v46, v47, v48, v36);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("\n");
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    TIFFTAG_IMAGEWIDTH/TIFFTAG_IMAGEHEIGHT: %dx%d\n", v35, v36);
    }
  }

  _cg_TIFFSetField(a2, 284, v49, v50, v51, v52, v53, v54, 1);
  if (AlphaInfo)
  {
    v61 = NumberOfComponents + 1;
  }

  else
  {
    v61 = NumberOfComponents;
  }

  v62 = v61;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                   TIFFTAG_SAMPLESPERPIXEL: %d\n", v61);
  }

  v350 = v62;
  _cg_TIFFSetField(a2, 277, v55, v56, v57, v58, v59, v60, v62);
  v69 = v35;
  if (IIODictionary::containsKey(a5, @"Orientation"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a5, @"Orientation");
  }

  else
  {
    Uint32ForKey = 1;
  }

  if (Uint32ForKey - 9 < 0xFFFFFFF8)
  {
    v71 = 1;
  }

  else
  {
    v71 = Uint32ForKey;
  }

  _cg_TIFFSetField(a2, 274, v63, v64, v65, v66, v67, v68, v71);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_ORIENTATION: %d\n", v71);
  }

  v358 = 0;
  v359[0] = 0;
  if (AlphaInfo)
  {
    v78 = AlphaInfo == 3 ? 2 : 1;
    LOWORD(v360[0]) = v78;
    _cg_TIFFSetField(a2, 338, v72, v73, v74, v75, v76, v77, 1);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                      TIFFTAG_EXTRASAMPLES: %d\n", LOWORD(v360[0]));
    }
  }

  __n = _cg_GifLastError(v338);
  _cg_TIFFSetField(a2, 258, v79, v80, v81, v82, v83, v84, __n);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                     TIFFTAG_BITSPERSAMPLE: %d\n", __n);
  }

  v91 = 3;
  if ((size & 0x100) != 0)
  {
    v92 = 3;
  }

  else
  {
    v92 = 1;
  }

  if ((size & 0x100) == 0)
  {
    v91 = 1;
  }

  _cg_TIFFSetField(a2, 339, v85, v86, v87, v88, v89, v90, v91);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                      TIFFTAG_SAMPLEFORMAT: %d\n", v92);
  }

  if (Type == 7)
  {
    v99 = 3;
  }

  else
  {
    v99 = 2;
  }

  if ((v31 & 1) == 0)
  {
    if (Model == kCGColorSpaceModelLab)
    {
      v99 = 8;
    }

    else if (Model == kCGColorSpaceModelCMYK)
    {
      v99 = 5;
    }

    else if (Model)
    {
      v99 = 2;
    }

    else
    {
      v99 = IIOImageSource::reader(v338) == 0;
    }
  }

  _cg_TIFFSetField(a2, 262, v93, v94, v95, v96, v97, v98, v99);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_PHOTOMETRIC: %d\n", v99);
  }

  v100 = IIODictionary::getUint32ForKeyGroup(a5, @"Compression", @"{TIFF}");
  if (v336)
  {
    v107 = Uint32ForKeyGroup == 0;
  }

  else
  {
    v107 = 1;
  }

  if (v107)
  {
    v108 = v100;
  }

  else
  {
    v108 = 1;
  }

  if (v108 > 7u)
  {
    if (v108 == 8 || v108 == 32773)
    {
      goto LABEL_106;
    }

LABEL_103:
    if (Model == kCGColorSpaceModelMonochrome && __n == 1 && v350 == 1)
    {
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  if (v108 == 5)
  {
LABEL_106:
    _cg_TIFFSetField(a2, 259, v101, v102, v103, v104, v105, v106, v108);
    goto LABEL_107;
  }

  if (v108 != 7)
  {
    goto LABEL_103;
  }

  v108 = 1;
  if (__n == 8 && Model < kCGColorSpaceModelCMYK)
  {
    v108 = 7;
    goto LABEL_106;
  }

LABEL_107:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_COMPRESSION: %d\n", v108);
  }

  _cg_TIFFSetField(a2, 266, v101, v102, v103, v104, v105, v106, 1);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                         TIFFTAG_FILLORDER: %d\n", 1);
  }

  if (__n == 8 && v108 == 5)
  {
    _cg_TIFFSetField(a2, 317, v110, v111, v112, v113, v114, v115, 2);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                         TIFFTAG_PREDICTOR: %d\n", 2);
    }
  }

  if (_cg_TIFFScanlineSize(a2, v109, v110, v111, v112, v113, v114, v115) > v352)
  {
    goto LABEL_250;
  }

  if (Uint32ForKeyGroup)
  {
    v122 = v336 == 0;
  }

  else
  {
    v122 = 1;
  }

  v123 = v122;
  if (v122)
  {
    if (__n < 2u)
    {
      if ((v108 - 3) > 1u)
      {
        TIFFWritePlugin::writeOne(v108, __n);
      }

      _cg_TIFFSetField(a2, 278, v116, v117, v118, v119, v120, v121, v335);
      v127 = BYTE2(gIIODebugFlags);
      LODWORD(v126) = v335;
    }

    else
    {
      v124 = 0x20000 / v352;
      v125 = (0x20000 / v352) & 0x3FFF8;
      if (((0x20000 / v352) & 0x3FFF8) == 0)
      {
        LODWORD(v125) = 8;
      }

      if (v108 == 7)
      {
        LODWORD(v124) = v125;
      }

      if (v124 <= 1)
      {
        v126 = 1;
      }

      else
      {
        v126 = v124;
      }

      _cg_TIFFSetField(a2, 278, v116, v117, v118, v119, v120, v121, v126);
      v127 = BYTE2(gIIODebugFlags);
    }

    if ((v127 & 3) != 0)
    {
      ImageIOLog("                      TIFFTAG_ROWSPERSTRIP: %d\n", v126);
    }
  }

  if (IIODictionary::containsKey(a5, @"DPIWidth") && IIODictionary::containsKey(a5, @"DPIHeight"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a5, @"DPIWidth");
    v129 = IIODictionary::getFloatForKey(a5, @"DPIHeight");
    *&v130 = FloatForKey;
    _cg_TIFFSetField(a2, 282, v131, v132, v133, v134, v135, v136, v130);
    *&v137 = v129;
    _cg_TIFFSetField(a2, 283, v138, v139, v140, v141, v142, v143, v137);
    _cg_TIFFSetField(a2, 296, v144, v145, v146, v147, v148, v149, 2);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("   TIFFTAG_XRESOLUTION/TIFFTAG_YRESOLUTION: %g %g\n", *&v130, *&v137);
    }
  }

  else
  {
    if (IIODictionary::containsKeyGroup(a5, @"ResolutionUnit", @"{TIFF}"))
    {
      v162 = IIODictionary::getUint32ForKeyGroup(a5, @"ResolutionUnit", @"{TIFF}");
    }

    else
    {
      v162 = 2;
    }

    _cg_TIFFSetField(a2, 296, v156, v157, v158, v159, v160, v161, v162);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                    TIFFTAG_RESOLUTIONUNIT: %d\n", v162);
    }

    if (IIODictionary::containsKeyGroup(a5, @"DPIWidth", @"{TIFF}"))
    {
      if (IIODictionary::containsKeyGroup(a5, @"DPIHeight", @"{TIFF}"))
      {
        FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(a5, @"DPIWidth", @"{TIFF}");
        v164 = IIODictionary::getFloatForKeyGroup(a5, @"DPIHeight", @"{TIFF}");
        *&v165 = FloatForKeyGroup;
        _cg_TIFFSetField(a2, 282, v166, v167, v168, v169, v170, v171, v165);
        *&v172 = v164;
        _cg_TIFFSetField(a2, 283, v173, v174, v175, v176, v177, v178, v172);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("   TIFFTAG_XRESOLUTION/TIFFTAG_YRESOLUTION: %d %d\n", v165, v172);
        }
      }
    }
  }

  if (Type == 7)
  {
    if (ColorTableCount <= 0x100 && (1 << *(a2 + 116)) <= 0x100)
    {
      memset(v360, 0, sizeof(v360));
      memset(&v359[1], 0, 1024);
      if (ColorTableCount)
      {
        v179 = &v359[1] + 1;
        v180 = &v359[65] + 1;
        v181 = (v333 + 2);
        v182 = v360 + 1;
        do
        {
          v183 = *(v181 - 2);
          *v182 = v183;
          *(v182 - 1) = v183;
          v184 = *(v181 - 1);
          *v180 = v184;
          *(v180 - 1) = v184;
          v185 = *v181;
          v181 += 3;
          *v179 = v185;
          *(v179 - 1) = v185;
          v179 += 2;
          v180 += 2;
          v182 += 2;
          --ColorTableCount;
        }

        while (ColorTableCount);
      }

      _cg_TIFFSetField(a2, 320, v150, v151, v152, v153, v154, v155, v360);
      goto LABEL_157;
    }

    _cg_jpeg_mem_term("writeOne", 538, "bitsPerSample: %d  colorTableCount: %d\n");
LABEL_250:
    v290 = 0;
    goto LABEL_251;
  }

LABEL_157:
  if (IIODictionary::containsKeyGroup(a5, @"DocumentName", @"{TIFF}"))
  {
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a5, @"DocumentName", @"{TIFF}");
    IIOString::IIOString(v360, ObjectForKeyGroup);
    v187 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 269, v188, v189, v190, v191, v192, v193, v187);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, ObjectForKeyGroup);
      v194 = IIOString::utf8String(v360);
      ImageIOLog("                      TIFFTAG_DOCUMENTNAME: %s\n", v194);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"ImageDescription", @"{TIFF}"))
  {
    v195 = IIODictionary::getObjectForKeyGroup(a5, @"ImageDescription", @"{TIFF}");
    IIOString::IIOString(v360, v195);
    v196 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 270, v197, v198, v199, v200, v201, v202, v196);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v195);
      v203 = IIOString::utf8String(v360);
      ImageIOLog("                  TIFFTAG_IMAGEDESCRIPTION: %s\n", v203);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Make", @"{TIFF}"))
  {
    v204 = IIODictionary::getObjectForKeyGroup(a5, @"Make", @"{TIFF}");
    IIOString::IIOString(v360, v204);
    v205 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 271, v206, v207, v208, v209, v210, v211, v205);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v204);
      v212 = IIOString::utf8String(v360);
      ImageIOLog("                              TIFFTAG_MAKE: %s\n", v212);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Model", @"{TIFF}"))
  {
    v213 = IIODictionary::getObjectForKeyGroup(a5, @"Model", @"{TIFF}");
    IIOString::IIOString(v360, v213);
    v214 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 272, v215, v216, v217, v218, v219, v220, v214);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v213);
      v221 = IIOString::utf8String(v360);
      ImageIOLog("                             TIFFTAG_MODEL: %s\n", v221);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Software", @"{TIFF}"))
  {
    v222 = IIODictionary::getObjectForKeyGroup(a5, @"Software", @"{TIFF}");
    IIOString::IIOString(v360, v222);
    v223 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 305, v224, v225, v226, v227, v228, v229, v223);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v222);
      v230 = IIOString::utf8String(v360);
      ImageIOLog("                          TIFFTAG_SOFTWARE: %s\n", v230);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Artist", @"{TIFF}"))
  {
    v231 = IIODictionary::getObjectForKeyGroup(a5, @"Artist", @"{TIFF}");
    IIOString::IIOString(v360, v231);
    v232 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 315, v233, v234, v235, v236, v237, v238, v232);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v231);
      v239 = IIOString::utf8String(v360);
      ImageIOLog("                            TIFFTAG_ARTIST: %s\n", v239);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"HostComputer", @"{TIFF}"))
  {
    v240 = IIODictionary::getObjectForKeyGroup(a5, @"HostComputer", @"{TIFF}");
    IIOString::IIOString(v360, v240);
    v241 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 316, v242, v243, v244, v245, v246, v247, v241);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v240);
      v248 = IIOString::utf8String(v360);
      ImageIOLog("                      TIFFTAG_HOSTCOMPUTER: %s\n", v248);
      IIOString::~IIOString(v360);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Copyright", @"{TIFF}"))
  {
    v249 = IIODictionary::getObjectForKeyGroup(a5, @"Copyright", @"{TIFF}");
    IIOString::IIOString(v360, v249);
    v250 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 33432, v251, v252, v253, v254, v255, v256, v250);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v249);
      v257 = IIOString::utf8String(v360);
      ImageIOLog("                         TIFFTAG_COPYRIGHT: %s\n", v257);
      IIOString::~IIOString(v360);
    }
  }

  v258 = IIODictionary::containsKeyGroup(a5, @"DateTime", @"{TIFF}");
  if (v258)
  {
    v259 = IIODictionary::getObjectForKeyGroup(a5, @"DateTime", @"{TIFF}");
    IIOString::IIOString(v360, v259);
    v260 = IIOString::utf8String(v360);
    _cg_TIFFSetField(a2, 306, v261, v262, v263, v264, v265, v266, v260);
    IIOString::~IIOString(v360);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v360, v259);
      v267 = IIOString::utf8String(v360);
      ImageIOLog("                          TIFFTAG_DATETIME: %s\n", v267);
      IIOString::~IIOString(v360);
    }
  }

  TIFFWritePlugin::writeIPTCData(v258, a2, a5);
  BoolForKey = IIODictionary::getBoolForKey(a5, @"kCGImageMetadataShouldExcludeXMP");
  if (!BoolForKey)
  {
    TIFFWritePlugin::writeXMPData(BoolForKey, a2, a5);
  }

  Ref = IIOImageSource::imageReadRef(v338);
  RenderingIntent = CGImageGetRenderingIntent(Ref);
  TIFFWritePlugin::writeICCData(RenderingIntent, a2, v340, RenderingIntent);
  v271 = myTIFFSeekProc(a3, 0, 2);
  v359[0] = 0;
  ExifBufferFromPropertiesTIFF = CreateExifBufferFromPropertiesTIFF(a5, v347, v335, v271, v359);
  if (v359[0])
  {
    v279 = ExifBufferFromPropertiesTIFF;
    if (ExifBufferFromPropertiesTIFF)
    {
      if (_cg_TIFFSetField(a2, 34665, v273, v274, v275, v276, v277, v278, v271))
      {
        myTIFFWriteProc(a3, v279, v359[0]);
      }

      free(v279);
    }
  }

  v280 = myTIFFSeekProc(a3, 0, 2);
  v358 = 0;
  v282 = CreateGPSBufferFromPropertiesTIFF(a5, v347, v335, v280, &v358, v281);
  if (v358)
  {
    v289 = v282;
    if (v282)
    {
      if (_cg_TIFFSetField(a2, 34853, v283, v284, v285, v286, v287, v288, v280))
      {
        myTIFFWriteProc(a3, v289, v358);
      }

      free(v289);
    }
  }

  if (v123)
  {
    v290 = IIOImagePixelDataProvider::createEncodingTempBuffer(v338, &v357, &v356);
    v291 = v335;
    if (v335)
    {
      v292 = 0;
      v293 = v357;
      while (1)
      {
        if (v293 + v292 > v335)
        {
          v356 = v352 * (v291 - v292);
          v357 = v291 - v292;
        }

        Bytes = IIOImagePixelDataProvider::getBytes(v338, v290);
        if (Bytes != v356)
        {
          _cg_jpeg_mem_term("writeOne", 703, "CGImagePixelDataProviderGetBytes returned: %ld - expected: %ld\n");
          v291 = v335;
          goto LABEL_243;
        }

        v293 = v357;
        if (v357)
        {
          break;
        }

LABEL_208:
        v292 += v293;
        v291 = v335;
        if (v292 >= v335)
        {
          goto LABEL_243;
        }
      }

      v299 = 0;
      v300 = v292;
      v301 = v290;
      while (1)
      {
        if (v99 == 8)
        {
          TIFFWritePlugin::fixScanlineForCIELab(Bytes, v301, v347, v350, __n);
        }

        Bytes = _cg_TIFFWriteScanline(a2, v301, v300, 0, v295, v296, v297, v298);
        if ((Bytes & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        ++v299;
        v301 += v352;
        v293 = v357;
        ++v300;
        if (v357 <= v299)
        {
          goto LABEL_208;
        }
      }
    }

    v292 = 0;
LABEL_243:
    if (v292 != v291)
    {
      goto LABEL_251;
    }

    v331 = _cg_TIFFWriteDirectory(a2);
LABEL_235:
    if (v331)
    {
      v306 = v333;
      v23 = 0;
LABEL_237:
      if (!v306)
      {
        goto LABEL_239;
      }

      goto LABEL_238;
    }

LABEL_251:
    v23 = 4294967246;
    goto LABEL_252;
  }

  v290 = 0;
  v302 = (__n + 7) >> 3;
  v341 = v302 * v350;
  v303 = Uint32ForKeyGroup * (v302 * v350);
  v305 = v303 * v336;
  v304 = (v305 & 0xFFFFFFFF00000000) != 0;
  v305 = v305;
  v23 = 4294967246;
  v334 = Uint32ForKeyGroup * v302 * v350;
  if ((v303 & 0xFFFFFFFF00000000) != 0)
  {
    v305 = 0;
  }

  sizea = v305;
  if ((v303 & 0xFFFFFFFF00000000) == 0)
  {
    v306 = v333;
    if (v304)
    {
      goto LABEL_237;
    }

    v307 = v352 * v336;
    v337 = v307;
    v356 = v307;
    if ((v307 & 0xFFFFFFFF00000000) == 0)
    {
      v308 = malloc_type_malloc(v305, 0x100004077774924uLL);
      v346 = malloc_type_malloc(v337, 0x100004077774924uLL);
      _cg_TIFFSetField(a2, 322, v309, v310, v311, v312, v313, v314, Uint32ForKeyGroup);
      _cg_TIFFSetField(a2, 323, v315, v316, v317, v318, v319, v320, v336);
      v321 = v335;
      v322 = v336;
      if (v335)
      {
        v323 = 0;
        v324 = Uint32ForKeyGroup * v302 * v350;
        *v351 = v336;
        do
        {
          v339 = v323 + v322;
          if (v323 + v322 > v321)
          {
            *v351 = v321 - v323;
            v356 = v352 * *v351;
            bzero(v308, sizea);
          }

          IIOImagePixelDataProvider::getBytes(v338, v346);
          if (v69)
          {
            v325 = 0;
            v326 = 0;
            __na = v334;
            v349 = v323;
            do
            {
              v327 = v326 + Uint32ForKeyGroup;
              if (v326 + Uint32ForKeyGroup > v69)
              {
                __na = (v69 - v326) * v341;
                bzero(v308, sizea);
              }

              if (*v351)
              {
                v328 = 0;
                v329 = *v351;
                v330 = &v346[v325];
                do
                {
                  memcpy(&v308[v328], v330, __na);
                  v328 += v324;
                  v330 += v352;
                  --v329;
                }

                while (v329);
              }

              v69 = v347;
              if (_cg_TIFFWriteTile(a2, v308, v326, v349, 0, 0) == -1)
              {
                LogError("writeOne", 792, "*** TIFFWriteTile returned: %d\n", -1);
              }

              v325 += v324;
              v326 = (v326 + Uint32ForKeyGroup);
            }

            while (v327 < v347);
          }

          v323 = v339;
          v321 = v335;
          v322 = v336;
        }

        while (v339 < v335);
      }

      if (v308)
      {
        free(v308);
      }

      if (v346)
      {
        free(v346);
      }

      v331 = _cg_TIFFWriteDirectory(a2);
      v290 = 0;
      goto LABEL_235;
    }

    v290 = 0;
  }

LABEL_252:
  v306 = v333;
  if (v333)
  {
LABEL_238:
    free(v306);
  }

LABEL_239:
  if (v290)
  {
    free(v290);
  }

  return v23;
}

uint64_t TIFFWritePlugin::writeAll(IIOImageDestination **this)
{
  if (IIOWritePlugin::getImageCount(this))
  {
    operator new();
  }

  return 4294967246;
}

void IIO_ReaderHandler::~IIO_ReaderHandler(IIO_ReaderHandler *this)
{
  *this = &unk_1EF4DA608;
  v1 = (this + 16);
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(this + 40);
  v2 = v1;
  std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](&v2);
}

{
  *this = &unk_1EF4DA608;
  v2 = (this + 16);
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(this + 40);
  v3 = v2;
  std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](&v3);
  MEMORY[0x186602850](this, 0x10A1C40EEBF52FBLL);
}

CFMutableArrayRef IIO_ReaderHandler::copyTypeExtensions(IIO_ReaderHandler *this, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 != v6)
  {
    while (1)
    {
      if (!a2)
      {
        goto LABEL_5;
      }

      v7 = CFStringCompare(a2, @"public.camera-raw-image", 0);
      v8 = IIO_Reader::utType(*v5);
      if (v7 == kCFCompareEqualTo)
      {
        break;
      }

      if (CFStringCompare(v8, a2, 0) == kCFCompareEqualTo)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (++v5 == v6)
      {
        return Mutable;
      }
    }

    if (!CFStringHasSuffix(v8, @"raw-image"))
    {
      goto LABEL_6;
    }

LABEL_5:
    (*(**v5 + 136))(*v5, Mutable);
    goto LABEL_6;
  }

  return Mutable;
}

IIO_Reader *IIO_ReaderHandler::readerForUTTypeAndOSType(IIO_ReaderHandler *this, const __CFString *a2, int a3)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = IIO_Reader::utType(*v3);
    if (CFStringCompare(v7, a2, 0) == kCFCompareEqualTo && IIO_Reader::osType(*v3) == a3)
    {
      break;
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }

  return *v3;
}

__CFString *IIO_ReaderHandler::typeForPathExtension(IIO_ReaderHandler *this, CFStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = xmmword_186224392;
  v7 = 0;
  if (!theString || !CFStringGetCString(theString, &v6 + 1, 15, 0x600u))
  {
    return 0;
  }

  if (strcasecmp(&v6, ".tif"))
  {
    v4 = *(this + 2);
    v3 = *(this + 3);
    while (v4 != v3)
    {
      if ((*(**v4 + 144))(*v4, &v6))
      {
        return IIO_Reader::utType(*v4);
      }

      ++v4;
    }

    return 0;
  }

  if (IIO_ReaderHandler::readerForUTType(this, @"public.tiff"))
  {
    return @"public.tiff";
  }

  else
  {
    return 0;
  }
}

IIO_Reader *IIO_ReaderHandler::typeFromDataAtPath(IIO_ReaderHandler *a1, const __CFString *a2, __CFString *a3, __int128 *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    LogError("typeFromDataAtPath", 515, "*** ERROR: path parameter is nil\n", a4);
    return 0;
  }

  bzero(v23, 0x400uLL);
  v8 = *(a1 + 1);
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!_CFStringGetFileSystemRepresentation())
  {
    goto LABEL_15;
  }

  v11 = open(v23, 0, 0);
  v12 = v11;
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog(">>> %s: opening file [%d] '%s'\n", "typeFromDataAtPath", v11, v23);
  }

  if (v12 < 0)
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
    v13 = pread(v12, v10, v8, 0);
    if (v13 < 1)
    {
      v19 = 0;
    }

    else
    {
      v14 = v13;
      if (!a3 && (a4[1] & 2) != 0)
      {
        v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
        if (v15)
        {
          v16 = v15;
          v17 = CFURLCopyPathExtension(v15);
          if (v17)
          {
            v18 = v17;
            a3 = IIO_ReaderHandler::typeForPathExtension(a1, v17);
            CFRelease(v18);
          }

          else
          {
            a3 = 0;
          }

          CFRelease(v16);
        }

        else
        {
          a3 = 0;
        }
      }

      v21 = *a4;
      v22 = *(a4 + 2);
      v19 = IIO_ReaderHandler::typeForBytes(a1, v10, v14, a3, &v21);
    }

    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog("<<< %s: closing file [%d] '%s'\n", "typeFromDataAtPath", v12, v23);
    }

    close(v12);
  }

  free(v10);
  return v19;
}

IIO_Reader *IIO_ReaderHandler::typeForBytes(IIO_Reader ***a1, uint64_t a2, unint64_t a3, __CFString *a4, uint64_t a5)
{
  v8 = 0;
  v6 = *a5;
  v7 = *(a5 + 16);
  result = IIO_ReaderHandler::readerForBytesImp(a1, a2, a3, a4, a3, &v6, 0, &v8);
  if (result)
  {
    return IIO_Reader::utType(result);
  }

  return result;
}

IIO_Reader *IIO_ReaderHandler::typeFromURL(IIO_ReaderHandler *a1, const void *a2, __CFString *a3, uint64_t a4)
{
  if (!a2)
  {
    IIO_ReaderHandler::typeFromURL();
    return 0;
  }

  v8 = CFURLGetTypeID();
  if (v8 != CFGetTypeID(a2))
  {
    IIO_ReaderHandler::typeFromURL();
    return 0;
  }

  v9 = CFURLCopyPathExtension(a2);
  if (!a3)
  {
    a3 = IIO_ReaderHandler::typeForPathExtension(a1, v9);
  }

  v10 = IIO_CFURLCopyResolvedFileSystemPath(a2);
  if (v10)
  {
    v11 = v10;
    v16 = *a4;
    v17 = *(a4 + 16);
    v12 = IIO_ReaderHandler::typeFromDataAtPath(a1, v10, a3, &v16);
    CFRelease(v11);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_12;
  }

  v13 = CGDataProviderCreateWithURL(a2);
  if (v13)
  {
    v14 = v13;
    v16 = *a4;
    v17 = *(a4 + 16);
    v12 = IIO_ReaderHandler::typeForDataProvider(a1, v13, 0, &v16, 0);
    CGDataProviderRelease(v14);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_12;
  }

  v12 = 0;
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }

  return v12;
}

IIO_Reader *IIO_ReaderHandler::typeForDataProvider(uint64_t a1, uint64_t a2, __CFString *a3, __int128 *a4, BOOL *a5)
{
  if (!a2)
  {
    LogError("typeForDataProvider", 642, "*** ERROR: provider parameter is nil\n", a4, a5);
    return 0;
  }

  if (a5)
  {
    *a5 = 1;
  }

  v9 = *(a1 + 8);
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  BytesAtPosition = CGDataProviderGetBytesAtPosition();
  if (a5)
  {
    *a5 = BytesAtPosition < v9;
  }

  v15 = *a4;
  v16 = *(a4 + 2);
  v13 = IIO_ReaderHandler::typeForBytes(a1, v11, BytesAtPosition, a3, &v15);
  free(v11);
  return v13;
}

IIO_Reader *IIO_ReaderHandler::typeForData(IIO_Reader ***a1, CFDataRef theData, __CFString *a3, __int128 *a4, _BYTE *a5)
{
  if (theData)
  {
    if (a5)
    {
      *a5 = 1;
    }

    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v13 = *a4;
    v14 = *(a4 + 2);
    result = IIO_ReaderHandler::typeForBytes(a1, BytePtr, Length, a3, &v13);
    if (a5)
    {
      if (result)
      {
        *a5 = 0;
      }
    }
  }

  else
  {
    LogError("typeForData", 714, "*** ERROR: data parameter is nil\n", a4, a5);
    return 0;
  }

  return result;
}

void ___ZN17IIO_ReaderHandler18copySupportedTypesEv_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = *(a1 + 32);

      IIOArray::addObject(v5, cf);
    }
  }
}

uint64_t IIO_ReaderHandler::disableRAWPlugins(IIO_ReaderHandler *this)
{
  v1 = *(this + 2);
  if (v1 == *(this + 3))
  {
    return 0;
  }

  while (1)
  {
    result = (*(**v1 + 152))();
    if (result)
    {
      break;
    }

    ++v1;
    v6 = *(this + 3);
LABEL_10:
    if (v1 == v6)
    {
      return 0;
    }
  }

  v4 = *(this + 3);
  if (v4 != v1)
  {
    std::__copy_move_unwrap_iters[abi:fe200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,0>(v1 + 1, v4, v1);
    v6 = v5;
    v7 = *(this + 3);
    if (v7 != v5)
    {
      do
      {
        v9 = *--v7;
        v8 = v9;
        *v7 = 0;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v7 != v6);
    }

    *(this + 3) = v6;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t IIO_ReaderHandler::xpcQueueForReader(os_unfair_lock_s *this, IIO_Reader *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (IIO_ReaderHandler::xpcQueueForReader(IIO_Reader *)::poolSizeCheck != -1)
  {
    IIO_ReaderHandler::xpcQueueForReader();
  }

  os_unfair_lock_lock(this + 20);
  v3 = std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::find<IIO_Reader *>(&this[10]._os_unfair_lock_opaque, &v31);
  if (!v3)
  {
    *__str = 0u;
    v34 = 0u;
    v3 = std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__emplace_unique_key_args<IIO_Reader *,IIO_Reader *&,IIO_ReaderHandler::QueuePool>(&this[10]._os_unfair_lock_opaque, &v31, &v31, __str);
    v32[0] = __str;
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](v32);
  }

  v4 = v3[3];
  v5 = (v3 + 3);
  v6 = (v3[4] - v4) >> 4;
  if (v6 < IIO_ReaderHandler::xpcQueueForReader(IIO_Reader *)::gPoolSize)
  {
    bzero(__str, 0x400uLL);
    if (!v31)
    {
      snprintf(__str, 0x400uLL, "com.apple.ImageIOXPCService.General.%zu");
LABEL_27:
      v14 = dispatch_workloop_create(__str);
      v15 = v3[4];
      v16 = v3[5];
      if (v15 >= v16)
      {
        v19 = *v5;
        v20 = v15 - *v5;
        v21 = v20 >> 4;
        v22 = (v20 >> 4) + 1;
        if (v22 >> 60)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        v32[4] = (v3 + 3);
        if (v22)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>>((v3 + 3), v22);
        }

        v24 = (16 * v21);
        v25 = MEMORY[0x1E69E9798];
        *v24 = v14;
        v24[1] = v25;
        v18 = 16 * v21 + 16;
        memcpy(0, v19, v20);
        v26 = v3[3];
        v3[3] = 0;
        v3[4] = v18;
        v27 = v3[5];
        v3[5] = 0;
        v32[2] = v26;
        v32[3] = v27;
        v32[0] = v26;
        v32[1] = v26;
        std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::~__split_buffer(v32);
      }

      else
      {
        v17 = MEMORY[0x1E69E9798];
        *v15 = v14;
        *(v15 + 1) = v17;
        v18 = (v15 + 16);
      }

      v3[4] = v18;
      v4 = v3[3];
      v6 = (v18 - v4) >> 4;
      goto LABEL_38;
    }

    v7 = IIO_Reader::utType(v31);
    CFStringGetCStringPtr(v7, 0x600u);
    v8 = IIO_Reader::osType(v31) >> 24;
    if (v8 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_9:
      v9 = (IIO_Reader::osType(v31) >> 24);
      goto LABEL_13;
    }

    v9 = 46;
LABEL_13:
    v10 = (IIO_Reader::osType(v31) << 8) >> 24;
    if (v10 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_15;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_15:
      v11 = ((IIO_Reader::osType(v31) << 8) >> 24);
      goto LABEL_18;
    }

    v11 = 46;
LABEL_18:
    v12 = IIO_Reader::osType(v31) >> 8;
    if (v12 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000) == 0)
      {
LABEL_22:
        v13 = IIO_Reader::osType(v31);
        if (v13 <= 0x7F)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) == 0)
          {
            goto LABEL_26;
          }
        }

        else if (!__maskrune(v13, 0x40000uLL))
        {
LABEL_26:
          snprintf(__str, 0x400uLL, "com.apple.ImageIOXPCService.'%c%c%c%c'.%s%s%zu", v9, v11);
          goto LABEL_27;
        }

        IIO_Reader::osType(v31);
        goto LABEL_26;
      }
    }

    else if (!__maskrune(v12, 0x40000uLL))
    {
      goto LABEL_22;
    }

    IIO_Reader::osType(v31);
    goto LABEL_22;
  }

LABEL_38:
  v28 = (v3[6] + 1) % v6;
  v3[6] = v28;
  v29 = *(v4 + 16 * v28);
  os_unfair_lock_unlock(this + 20);
  return v29;
}

void sub_186059EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void IIO_ReaderHandler::xpcReply(int a1, xpc_connection_t connection, xpc_object_t message, uint64_t a4)
{
  if (message)
  {
    xpc_connection_send_message(connection, message);
    xpc_release(message);
  }

  if (a4)
  {
    v6 = *(a4 + 16);

    v6(a4);
  }
}

uint64_t IIO_ReaderHandler::xpcTestHeader(os_unfair_lock_s *a1, uint64_t a2, xpc_object_t original, uint64_t a4)
{
  if (!xpc_dictionary_create_reply(original))
  {
    return (*(a4 + 16))(a4, 0);
  }

  xpc_retain(original);
  IIO_ReaderHandler::xpcQueueForReader(a1, 0);
  return xpc_dictionary_handoff_reply();
}

void ___ZN17IIO_ReaderHandler13xpcTestHeaderEP17_xpc_connection_sPvU13block_pointerFvPjE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  source_dict = iio_xpc_get_source_dict(*(a1 + 48));
  v4 = iio_xpc_add_message_dict(*(a1 + 56));
  v5 = iio_xpc_add_source_dict(*(a1 + 56));
  v30 = 0;
  v31 = 774778414;
  length = 0;
  if (!source_dict || ((v6 = v5, (data = xpc_dictionary_get_data(source_dict, "iio_xpc_src_header_data", &length)) != 0) ? (v8 = length == 0) : (v8 = 1), v8))
  {
    iio_xpc_dictionary_set_error_code(v4, 0xFFFFFA86);
    v10 = 0;
  }

  else
  {
    v11 = data;
    string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_hint_string");
    uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_file_size");
    v27 = 0uLL;
    v28 = 0;
    iio_xpc_get_IIOHeaderOptions_from_xpcObj(source_dict, "iio_xpc_src_header_options", &v27);
    v14 = length;
    if (string)
    {
      IIOString::IIOString(v25, string);
      v15 = v26;
    }

    else
    {
      v15 = 0;
    }

    v23 = v27;
    v24 = v28;
    v16 = IIO_ReaderHandler::readerForBytesImp(v2, v11, v14, v15, uint64, &v23, 0, &v30);
    if (string)
    {
      IIOString::~IIOString(v25);
    }

    if (v16)
    {
      v17 = IIO_Reader::utType(v16);
      LODWORD(v18) = IIO_Reader::osType(v16);
      v31 = v18;
      IIOIncrementIdentifyCallCount();
      v18 = v18;
      v10 = &v31;
    }

    else
    {
      v10 = 0;
      v17 = 0;
      v18 = 774778414;
    }

    v23 = 0uLL;
    v24 = 0;
    IIOString::IIOString(&v23, v17);
    if (v17)
    {
      v19 = IIOString::utf8String(&v23);
      xpc_dictionary_set_string(v6, "iio_xpc_src_utitype", v19);
    }

    else
    {
      xpc_dictionary_set_string(v6, "iio_xpc_src_utitype", "unknown");
    }

    xpc_dictionary_set_uint64(v6, "iio_xpc_src_ostype", v18);
    iio_xpc_dictionary_set_error_code(v4, v30);
    IIOString::~IIOString(&v23);
  }

  v21 = *(a1 + 56);
  v20 = *(a1 + 64);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN17IIO_ReaderHandler13xpcTestHeaderEP17_xpc_connection_sPvU13block_pointerFvPjE_block_invoke_2;
  v22[3] = &unk_1E6F0AA20;
  v22[4] = *(a1 + 32);
  v22[5] = v10;
  IIO_ReaderHandler::xpcReply(v9, v20, v21, v22);
  xpc_release(*(a1 + 48));
}

void sub_18605A320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (v18)
  {
    IIOString::~IIOString(va);
  }

  _Unwind_Resume(exception_object);
}

void IIO_ReaderHandler::xpcGetImageCount(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA85);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler16xpcGetImageCountEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 40))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcUpdateSourceProperties(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA84);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler25xpcUpdateSourcePropertiesEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 64))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcInitImage(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA83);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler12xpcInitImageEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 256))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcDecodeImage(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA80);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler14xpcDecodeImageEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 264))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__base_destruct_at_end[abi:fe200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 2);
      v5 -= 2;
      result = v6;
      *v5 = 0;
      if (v6)
      {
        result = (*(v4 - 1))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<IIO_Reader>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<IIO_Reader>>::clear[abi:fe200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__split_buffer<std::unique_ptr<IIO_Reader>>::__destruct_at_end[abi:fe200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:fe200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::find<IIO_Reader *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__emplace_unique_key_args<IIO_Reader *,IIO_Reader *&,IIO_ReaderHandler::QueuePool>(float *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fe200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,void *>>>::operator()[abi:fe200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destruct_at_end[abi:fe200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 16);
      *(v4 + 16) = v2 - 16;
      *(v2 - 16) = 0;
      if (result)
      {
        result = (*(v2 - 8))();
        v2 = *(v4 + 16);
      }

      else
      {
        v2 -= 16;
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t CreateKtxStream(uint64_t a1, IIOImageReadSession *this)
{
  if (!a1)
  {
    return 11;
  }

  IIOImageReadSession::setOffset(this, 0);
  result = 0;
  *(a1 + 64) = this;
  *(a1 + 56) = 3;
  *a1 = IIOktxStream_read;
  *(a1 + 8) = IIOktxStream_skip;
  *(a1 + 16) = IIOktxStream_write;
  *(a1 + 24) = IIOktxStream_getpos;
  *(a1 + 32) = IIOktxStream_setpos;
  *(a1 + 40) = IIOktxStream_getsize;
  *(a1 + 48) = IIOktxStream_destruct;
  *(a1 + 96) = 0;
  return result;
}

uint64_t IIOktxStream_read(uint64_t a1, unsigned __int8 *a2, int64_t a3)
{
  if (!a1)
  {
    return 11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 11;
  }

  if (IIOImageReadSession::getBytes(v3, a2, a3) == a3)
  {
    return 0;
  }

  return 7;
}

uint64_t IIOktxStream_skip(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 11;
  }

  if (IIOImageReadSession::seek(v2, a2, 1) == -1)
  {
    return 7;
  }

  return 0;
}

uint64_t IIOktxStream_write(uint64_t a1)
{
  if (!a1)
  {
    return 11;
  }

  if (*(a1 + 64))
  {
    return 10;
  }

  return 11;
}

uint64_t IIOktxStream_getpos(uint64_t a1, uint64_t *a2)
{
  result = 11;
  if (a1 && a2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = IIO_Reader::minimumFileSize(v5);
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t IIOktxStream_setpos(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 11;
  }

  IIOImageReadSession::setOffset(v2, a2);
  return 0;
}

uint64_t IIOktxStream_getsize(uint64_t a1, IIOImageRead **a2)
{
  result = 11;
  if (a1 && a2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      Size = IIOImageReadSession::getSize(v5);
      result = 0;
      *a2 = Size;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t TIFFInitPixarLog(int8x16_t *a1, int a2)
{
  if (a2 != 32909)
  {
    TIFFInitPixarLog_cold_1();
  }

  if (!_TIFFMergeFields(a1->i64, pixarlogFields, 2))
  {
    TIFFErrorExtR(a1, "TIFFInitPixarLog", "Merging PixarLog codec-specific tags failed");
    return 0;
  }

  v3 = malloc_type_malloc(0x150uLL, 0x10B0040CB2D490FuLL);
  a1[68].i64[1] = v3;
  if (!v3)
  {
    TIFFErrorExtR(a1, "TIFFInitPixarLog", "No space for PixarLog state block");
    return 0;
  }

  v4 = v3;
  _TIFFmemset(v3, 0, 0x150uLL);
  v4[54] = 0;
  a1[59].i64[1] = PixarLogFixupTags;
  a1[60].i64[0] = PixarLogSetupDecode;
  a1[60].i64[1] = PixarLogPreDecode;
  a1[63].i64[0] = PixarLogDecode;
  a1[64].i64[0] = PixarLogDecode;
  a1[65].i64[0] = PixarLogDecode;
  a1[61].i64[0] = PixarLogSetupEncode;
  a1[62].i64[0] = PixarLogPreEncode;
  a1[62].i64[1] = PixarLogPostEncode;
  a1[63].i64[1] = PixarLogEncode;
  a1[64].i64[1] = PixarLogEncode;
  a1[65].i64[1] = PixarLogEncode;
  a1[66].i64[0] = PixarLogClose;
  a1[67].i64[0] = PixarLogCleanup;
  *(v4 + 34) = a1[80].i64[1];
  a1[80].i64[1] = PixarLogVGetField;
  *(v4 + 35) = a1[80].i64[0];
  a1[80].i64[0] = PixarLogVSetField;
  *(v4 + 33) = -1;
  v4[65] = 0;
  TIFFPredictorInit(a1);
  LogK1 = 1132068864;
  LogK2 = 1125411269;
  v5 = malloc_type_malloc(0xD548uLL, 0x1000040BDFB0063uLL);
  v6 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  v7 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
  v8 = malloc_type_malloc(0x2004uLL, 0x100004052888210uLL);
  v9 = malloc_type_malloc(0x1002uLL, 0x1000040BDFB0063uLL);
  v10 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  v11 = v10;
  if (v5 && v6 && v7 && v8 && v9 && v10)
  {
    v12 = 0;
    v13 = xmmword_186205EB0;
    v14 = xmmword_186205EC0;
    v15 = vdupq_n_s64(0xFAuLL);
    v16 = v8 + 2;
    v17 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v14)), *v13.i8).u8[0])
      {
        v18 = v12 * 0.0000732625556;
        *(v16 - 2) = v18;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFAuLL), *&v14)), *&v13).i8[2])
      {
        v19 = (v12 + 1) * 0.0000732625556;
        *(v16 - 1) = v19;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFAuLL), *&v13))).i32[1])
      {
        v20 = (v12 + 2) * 0.0000732625556;
        *v16 = v20;
        v21 = (v12 + 3) * 0.0000732625556;
        v16[1] = v21;
      }

      v12 += 4;
      v13 = vaddq_s64(v13, v17);
      v14 = vaddq_s64(v14, v17);
      v16 += 4;
    }

    while (v12 != 252);
    v22 = 0;
    v23 = v8 + 253;
    v55 = vdupq_n_s64(0x706uLL);
    v54 = vdupq_n_s64(0x3F70624DD2F1A9FCuLL);
    do
    {
      v62 = vdupq_n_s64(v22);
      v59 = vorrq_s8(v62, xmmword_186205EC0);
      v24 = vmovn_s64(vcgtq_u64(v55, v59));
      v57 = vuzp1_s16(v24, v24).u8[0];
      v25 = vaddq_s32(vdupq_n_s32(v22), xmmword_1862243C0);
      v26.i64[0] = v25.u32[2];
      v26.i64[1] = v25.u32[3];
      v27 = vcvtq_f64_u64(v26);
      v26.i64[0] = v25.u32[0];
      v26.i64[1] = v25.u32[1];
      v63 = vmulq_f64(vcvtq_f64_u64(v26), v54);
      __xa = vmulq_f64(v27, v54);
      v58 = exp(__xa.f64[1]);
      __x = exp(__xa.f64[0]);
      v56 = exp(v63.f64[1]);
      v28.f64[0] = exp(v63.f64[0]);
      v28.f64[1] = v56;
      if (v57)
      {
        v29 = 0.006737947 * v28.f64[0];
        *(v23 - 3) = v29;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v59)), *&v28).i8[2])
      {
        v30 = vmuld_lane_f64(0.006737947, v28, 1);
        *(v23 - 2) = v30;
      }

      v31.f64[0] = __x;
      v31.f64[1] = v58;
      v32 = vorrq_s8(v62, xmmword_186205EB0);
      if (vuzp1_s16(*&v32, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v32))).i32[1])
      {
        v33 = 0.006737947 * __x;
        *(v23 - 1) = v33;
      }

      v34 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v32));
      if (vuzp1_s16(v34, v34).i8[6])
      {
        v35 = vmuld_lane_f64(0.006737947, v31, 1);
        *v23 = v35;
      }

      v22 += 4;
      v23 += 4;
    }

    while (v22 != 1800);
    v36 = 0;
    v8[2048] = v8[2047];
    do
    {
      v37 = v8[v36];
      v38 = v37 * 65535.0 + 0.5;
      if (v38 >= 65535.0)
      {
        v38 = 65535.0;
      }

      v9[v36] = v38;
      v39 = v37 * 255.0 + 0.5;
      if (v39 >= 255.0)
      {
        v39 = 255.0;
      }

      v11[v36++] = v39;
    }

    while (v36 != 2049);
    v40 = 0;
    v41 = 0;
    do
    {
      if (v40 * 0.0000732625556 * (v40 * 0.0000732625556) > (v8[v41] * v8[v41 + 1]))
      {
        ++v41;
      }

      v5[v40++] = v41;
    }

    while (v40 != 27300);
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = v8[v43];
      v45 = v43 + 1;
      do
      {
        v46 = v8[v45++];
        v47 = v42 / 16383.0 * (v42 / 16383.0) <= (v44 * v46);
        v44 = v46;
      }

      while (!v47);
      v43 = v45 - 2;
      v6[v42++] = v43;
    }

    while (v42 != 0x4000);
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = v8[v49];
      v51 = v49 + 1;
      do
      {
        v52 = v8[v51++];
        v47 = v48 / 255.0 * (v48 / 255.0) <= (v50 * v52);
        v50 = v52;
      }

      while (!v47);
      v49 = v51 - 2;
      v7[v48++] = v49;
    }

    while (v48 != 256);
    Fltsize = 1179994112;
    *(v4 + 36) = v8;
    *(v4 + 37) = v9;
    *(v4 + 38) = v11;
    *(v4 + 39) = v5;
    result = 1;
    *(v4 + 40) = v6;
    *(v4 + 41) = v7;
  }

  else
  {
    if (v5)
    {
      free(v5);
    }

    if (v6)
    {
      free(v6);
    }

    if (v7)
    {
      free(v7);
    }

    if (v8)
    {
      free(v8);
    }

    if (v9)
    {
      free(v9);
    }

    if (v11)
    {
      free(v11);
    }

    *(v4 + 19) = 0u;
    *(v4 + 20) = 0u;
    *(v4 + 18) = 0u;
    return 1;
  }

  return result;
}

uint64_t PixarLogSetupDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    PixarLogSetupDecode_cold_2();
  }

  if (*(v1 + 260))
  {
    return 1;
  }

  v3 = *(a1 + 132);
  v4 = *(a1 + 92);
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(a1 + 1248) = _TIFFNoPostDecode;
  if (*(a1 + 170) == 1)
  {
    v6 = *(a1 + 130);
  }

  else
  {
    v6 = 1;
  }

  *(v1 + 256) = v6;
  v7 = _TIFFMultiplySSize(0, v6, *(a1 + 88), 0);
  v8 = _TIFFMultiplySSize(0, v7, v5, 0);
  v9 = _TIFFMultiplySSize(0, v8, 2, 0);
  if ((v9 & 0x8000000000000000) != 0)
  {
    PixarLogSetupDecode_cold_1();
  }

  v10 = v9 + 2 * *(v1 + 256);
  if (v9)
  {
    v11 = *(v1 + 256) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ((2 * *(v1 + 256)) ^ 0x7FFFFFFFFFFFFFFFuLL) < v9 || v10 == 0)
  {
    return 0;
  }

  result = malloc_type_malloc(v9 + 2 * *(v1 + 256), 0x1000040BDFB0063uLL);
  *(v1 + 248) = result;
  if (!result)
  {
    return result;
  }

  *(v1 + 240) = v10;
  v15 = (v1 + 240);
  if (*(v1 + 264) == -1)
  {
    v16 = result;
    v17 = PixarLogGuessDataFmt(a1 + 72);
    *(v1 + 264) = v17;
    if (v17 == -1)
    {
      free(v16);
      *v15 = 0;
      *(v1 + 248) = 0;
      TIFFErrorExtR(a1, "PixarLogSetupDecode", "PixarLog compression can't handle bits depth/data format combination (depth: %hu)");
      return 0;
    }
  }

  if (!inflateInit_((v1 + 128), "1.2.12", 112))
  {
    *(v1 + 260) |= 1u;
    return 1;
  }

  free(*(v1 + 248));
  *v15 = 0;
  *(v1 + 248) = 0;
  TIFFErrorExtR(a1, "PixarLogSetupDecode", "%s");
  return 0;
}

BOOL PixarLogPreDecode(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    PixarLogPreDecode_cold_1();
  }

  *(v1 + 128) = a1[140];
  v2 = (v1 + 128);
  v3 = a1[145];
  v2->avail_in = v3;
  if (!HIDWORD(v3))
  {
    return inflateReset(v2) == 0;
  }

  TIFFErrorExtR(a1, "PixarLogPreDecode", "ZLib cannot deal with buffers this size");
  return 0;
}

uint64_t PixarLogDecode(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 1096);
  v7 = *(v6 + 264);
  if (v7 - 2 < 3)
  {
    v8 = a3 >> 1;
  }

  else
  {
    v8 = a3;
    if (v7 >= 2)
    {
      if (v7 != 5)
      {
        TIFFErrorExtR(a1, "PixarLogDecode", "%hu bit input not supported in PixarLog");
        goto LABEL_150;
      }

      v8 = a3 >> 2;
    }
  }

  *(v6 + 128) = *(a1 + 1152);
  v9 = *(v6 + 256);
  v10 = *(a1 + 88);
  *(v6 + 136) = *(a1 + 1160);
  *(v6 + 152) = *(v6 + 248);
  *(v6 + 160) = 2 * v8;
  if ((v8 >> 31))
  {
    TIFFErrorExtR(a1, "PixarLogDecode", "ZLib cannot deal with buffers this size");
    goto LABEL_150;
  }

  if (2 * v8 > *(v6 + 240))
  {
    TIFFErrorExtR(a1, "PixarLogDecode", "sp->stream.avail_out > sp->tbuf_size");
    goto LABEL_150;
  }

  v11 = v10 * v9;
  while (1)
  {
    v12 = inflate((v6 + 128), 1);
    if (v12)
    {
      break;
    }

    if (!*(v6 + 160))
    {
      goto LABEL_20;
    }
  }

  if (v12 == 1)
  {
    if (*(v6 + 160))
    {
      TIFFErrorExtR(a1, "PixarLogDecode", "Not enough data at scanline %u (short %u bytes)");
      goto LABEL_150;
    }

LABEL_20:
    *(a1 + 1152) = *(v6 + 128);
    *(a1 + 1160) = *(v6 + 136);
    v13 = *(v6 + 248);
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(*(v6 + 248), v8);
    }

    v14 = v8 % v11;
    if (v14)
    {
      TIFFWarningExtR(a1, "PixarLogDecode", "stride %d is not a multiple of sample count, %lld, data truncated.", v11, v8);
      v8 -= v14;
    }

    if (v8 < 1)
    {
      return 1;
    }

    v15 = 0;
    v16 = 2 * v11;
    v17 = v13 + 5;
    v18 = v13 + 7;
    v19.i64[0] = 0x4500000045000000;
    v19.i64[1] = 0x4500000045000000;
    v20 = vdupq_n_s32(0x453FF000u);
    while (1)
    {
      v21 = *(v6 + 264);
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            v58 = *(v6 + 256);
            v23 = 2 * v11;
            v59 = v11 - v58;
            if (v11 >= v58)
            {
              v60 = *(v6 + 288);
              if (v58 == 3)
              {
                v121 = *v13 & 0x7FF;
                v122 = v13[1] & 0x7FF;
                v123 = *(v60 + 4 * v122) * 2048.0;
                v124 = v13[2] & 0x7FF;
                v125 = *(v60 + 4 * v124);
                *a2 = fminf(*(v60 + 4 * v121) * 2048.0, 3071.0);
                *(a2 + 1) = fminf(v123, 3071.0);
                *(a2 + 2) = fminf(v125 * 2048.0, 3071.0);
                v23 = 2 * v11;
                if (v11 >= 4)
                {
                  v126 = a2 + 10;
                  v127 = v17;
                  v128 = v11 + 3;
                  do
                  {
                    LODWORD(v121) = v121 + *(v127 - 2);
                    LODWORD(v122) = v122 + *(v127 - 1);
                    v129 = *v127;
                    v127 += 3;
                    LODWORD(v124) = v124 + v129;
                    v130 = *(v60 + 4 * (v122 & 0x7FF)) * 2048.0;
                    v131 = *(v60 + 4 * (v124 & 0x7FF)) * 2048.0;
                    *(v126 - 2) = fminf(*(v60 + 4 * (v121 & 0x7FF)) * 2048.0, 3071.0);
                    *(v126 - 1) = fminf(v130, 3071.0);
                    *v126 = fminf(v131, 3071.0);
                    v126 += 6;
                    v128 -= 3;
                  }

                  while (v128 > 6);
                  goto LABEL_146;
                }
              }

              else
              {
                if (v58 != 4)
                {
                  v168 = v58 + 1;
                  v169 = a2;
                  v170 = v13;
                  do
                  {
                    v171 = *v170++;
                    *v169 = fminf(*(v60 + 4 * (v171 & 0x7FF)) * 2048.0, 3071.0);
                    v169 += 2;
                    --v168;
                  }

                  while (v168 > 1);
                  v23 = 2 * v11;
                  if (v59 < 1)
                  {
                    break;
                  }

                  do
                  {
                    v172 = v58 + 1;
                    do
                    {
                      v173 = v170[v58] + *v170;
                      v170[v58] = v173;
                      *v169 = fminf(*(v60 + 4 * (v173 & 0x7FF)) * 2048.0, 3071.0);
                      v169 += 2;
                      ++v170;
                      --v172;
                    }

                    while (v172 > 1);
                    v155 = __OFSUB__(v59, v58);
                    v59 -= v58;
                  }

                  while (!((v59 < 0) ^ v155 | (v59 == 0)));
                  goto LABEL_146;
                }

                v61.i32[0] = *v13 & 0x7FF07FF;
                v61.i16[2] = HIDWORD(*v13) & 0x7FF;
                v61.i16[3] = v61.i16[2];
                v62.i32[0] = *(v60 + 4 * (*v13 & 0x7FFLL));
                v62.i32[1] = *(v60 + 4 * v61.u16[1]);
                v62.i32[2] = *(v60 + 4 * v61.u16[2]);
                v62.i32[3] = v62.i32[2];
                *a2 = vmovn_s32(vcvtq_u32_f32(vminnmq_f32(vmulq_f32(v62, v19), v20)));
                v23 = 2 * v11;
                if (v11 >= 5)
                {
                  v63 = vmovl_u16(v61);
                  v64 = v11 + 4;
                  v65 = 4;
                  do
                  {
                    v63 = vaddw_u16(v63, *&v13[v65]);
                    *v66.f32 = vmovn_s32(v63);
                    v67 = (v60 + 4 * (v66.i16[1] & 0x7FF));
                    v68 = (v60 + 4 * (v66.i16[2] & 0x7FF));
                    v69 = v66.i16[3] & 0x7FF;
                    v66.i32[0] = *(v60 + 4 * (v66.i16[0] & 0x7FF));
                    v66.i32[1] = *v67;
                    v66.i32[2] = *v68;
                    v66.i32[3] = *(v60 + 4 * v69);
                    *&a2[v65 * 2] = vmovn_s32(vcvtq_u32_f32(vminnmq_f32(vmulq_f32(v66, v19), v20)));
                    v65 += 4;
                    v64 -= 4;
                  }

                  while (v64 > 8);
                  goto LABEL_146;
                }
              }
            }

            break;
          case 4:
            v85 = *(v6 + 256);
            v23 = 2 * v11;
            v86 = v11 - v85;
            if (v11 >= v85)
            {
              v87 = *(v6 + 296);
              if (v85 == 3)
              {
                v142 = *v13 & 0x7FF;
                *a2 = *(v87 + 2 * v142);
                v143 = v13[1] & 0x7FF;
                *(a2 + 1) = *(v87 + 2 * v143);
                v144 = v13[2] & 0x7FF;
                *(a2 + 2) = *(v87 + 2 * v144);
                v23 = 2 * v11;
                if (v11 >= 4)
                {
                  v145 = a2 + 10;
                  v146 = v17;
                  v147 = v11 + 3;
                  do
                  {
                    LODWORD(v142) = v142 + *(v146 - 2);
                    *(v145 - 2) = *(v87 + 2 * (v142 & 0x7FF));
                    LODWORD(v143) = v143 + *(v146 - 1);
                    *(v145 - 1) = *(v87 + 2 * (v143 & 0x7FF));
                    v148 = *v146;
                    v146 += 3;
                    LODWORD(v144) = v144 + v148;
                    *v145 = *(v87 + 2 * (v144 & 0x7FF));
                    v145 += 6;
                    v147 -= 3;
                  }

                  while (v147 > 6);
                  goto LABEL_146;
                }
              }

              else
              {
                if (v85 != 4)
                {
                  v180 = v85 + 1;
                  v181 = a2;
                  v182 = v13;
                  do
                  {
                    v183 = *v182++;
                    *v181 = *(v87 + 2 * (v183 & 0x7FF));
                    v181 += 2;
                    --v180;
                  }

                  while (v180 > 1);
                  v23 = 2 * v11;
                  if (v86 < 1)
                  {
                    break;
                  }

                  do
                  {
                    v184 = v85 + 1;
                    do
                    {
                      v182[v85] += *v182;
                      v185 = *v182++;
                      *v181 = *(v87 + 2 * (v185 & 0x7FF));
                      v181 += 2;
                      --v184;
                    }

                    while (v184 > 1);
                    v155 = __OFSUB__(v86, v85);
                    v86 -= v85;
                  }

                  while (!((v86 < 0) ^ v155 | (v86 == 0)));
                  goto LABEL_146;
                }

                v88 = *v13 & 0x7FF;
                *a2 = *(v87 + 2 * v88);
                v89 = v13[1] & 0x7FF;
                *(a2 + 1) = *(v87 + 2 * v89);
                v90 = v13[2] & 0x7FF;
                *(a2 + 2) = *(v87 + 2 * v90);
                v91 = v13[3] & 0x7FF;
                *(a2 + 3) = *(v87 + 2 * v91);
                v23 = 2 * v11;
                if (v11 >= 5)
                {
                  v92 = a2 + 14;
                  v93 = v18;
                  v94 = v11 + 4;
                  do
                  {
                    LODWORD(v88) = v88 + *(v93 - 3);
                    *(v92 - 3) = *(v87 + 2 * (v88 & 0x7FF));
                    LODWORD(v89) = v89 + *(v93 - 2);
                    *(v92 - 2) = *(v87 + 2 * (v89 & 0x7FF));
                    LODWORD(v90) = v90 + *(v93 - 1);
                    *(v92 - 1) = *(v87 + 2 * (v90 & 0x7FF));
                    v95 = *v93;
                    v93 += 4;
                    LODWORD(v91) = v91 + v95;
                    *v92 = *(v87 + 2 * (v91 & 0x7FF));
                    v92 += 8;
                    v94 -= 4;
                  }

                  while (v94 > 8);
                  goto LABEL_146;
                }
              }
            }

            break;
          case 5:
            v33 = *(v6 + 256);
            v23 = 4 * v11;
            v34 = v11 - v33;
            if (v11 >= v33)
            {
              v35 = *(v6 + 288);
              if (v33 == 3)
              {
                v103 = *v13 & 0x7FF;
                v104 = v13[1] & 0x7FF;
                v105 = *(v35 + 4 * v104);
                v106 = v13[2] & 0x7FF;
                v107 = *(v35 + 4 * v106);
                *a2 = *(v35 + 4 * v103);
                *(a2 + 1) = v105;
                *(a2 + 2) = v107;
                v23 = 4 * v11;
                if (v11 >= 4)
                {
                  v108 = a2 + 20;
                  v109 = v17;
                  v110 = v11 + 3;
                  do
                  {
                    LODWORD(v103) = v103 + *(v109 - 2);
                    LODWORD(v104) = v104 + *(v109 - 1);
                    v111 = *(v35 + 4 * (v104 & 0x7FF));
                    v112 = *v109;
                    v109 += 3;
                    LODWORD(v106) = v106 + v112;
                    v113 = *(v35 + 4 * (v106 & 0x7FF));
                    *(v108 - 2) = *(v35 + 4 * (v103 & 0x7FF));
                    *(v108 - 1) = v111;
                    *v108 = v113;
                    v108 += 12;
                    v110 -= 3;
                  }

                  while (v110 > 6);
                  goto LABEL_114;
                }
              }

              else
              {
                if (v33 != 4)
                {
                  v156 = v33 + 1;
                  v157 = a2;
                  v158 = v13;
                  do
                  {
                    v159 = *v158++;
                    *v157 = *(v35 + 4 * (v159 & 0x7FF));
                    v157 += 4;
                    --v156;
                  }

                  while (v156 > 1);
                  v23 = 4 * v11;
                  if (v34 < 1)
                  {
                    break;
                  }

                  do
                  {
                    v160 = v33 + 1;
                    do
                    {
                      v158[v33] += *v158;
                      v161 = *v158++;
                      *v157 = *(v35 + 4 * (v161 & 0x7FF));
                      v157 += 4;
                      --v160;
                    }

                    while (v160 > 1);
                    v155 = __OFSUB__(v34, v33);
                    v34 -= v33;
                  }

                  while (!((v34 < 0) ^ v155 | (v34 == 0)));
                  goto LABEL_114;
                }

                v36.i32[0] = *v13 & 0x7FF07FF;
                v36.i16[2] = HIDWORD(*v13) & 0x7FF;
                v36.i16[3] = v36.i16[2];
                v37 = *(v35 + 4 * v36.u16[1]);
                v38 = *(v35 + 4 * v36.u16[2]);
                *a2 = *(v35 + 4 * (*v13 & 0x7FFLL));
                *(a2 + 1) = v37;
                *(a2 + 2) = v38;
                *(a2 + 3) = v38;
                v23 = 4 * v11;
                if (v11 >= 5)
                {
                  v39 = vmovl_u16(v36);
                  v40 = a2 + 28;
                  v41 = v11 + 4;
                  v42 = 4;
                  do
                  {
                    v39 = vaddw_u16(v39, *&v13[v42]);
                    v43 = vmovn_s32(v39);
                    v44 = *(v35 + 4 * (v43.i16[0] & 0x7FF));
                    v45 = *(v35 + 4 * (v43.i16[1] & 0x7FF));
                    v46 = *(v35 + 4 * (v43.i16[2] & 0x7FF));
                    v43.i32[0] = *(v35 + 4 * (v43.i16[3] & 0x7FF));
                    *(v40 - 3) = v44;
                    *(v40 - 2) = v45;
                    *(v40 - 1) = v46;
                    *v40 = v43.i32[0];
                    v42 += 4;
                    v40 += 16;
                    v41 -= 4;
                  }

                  while (v41 > 8);
LABEL_114:
                  v23 = 4 * v11;
                }
              }
            }

            break;
          default:
LABEL_151:
            TIFFErrorExtR(a1, "PixarLogDecode", "Unsupported bits/sample: %hu");
            goto LABEL_150;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v70 = *(v6 + 256);
          v23 = v11;
          v71 = v11 - v70;
          if (v11 >= v70)
          {
            v72 = *(v6 + 304);
            if (v70 == 3)
            {
              *a2 = 0;
              v132 = v13[2] & 0x7FF;
              v133 = v13[1] & 0x7FF;
              v134 = *(v72 + v133);
              v135 = *v13 & 0x7FF;
              v136 = *(v72 + v135);
              a2[1] = *(v72 + v132);
              a2[2] = v134;
              a2[3] = v136;
              v23 = v11;
              if (v11 >= 4)
              {
                v137 = a2 + 7;
                v138 = v17;
                v139 = v11 + 3;
                do
                {
                  *(v137 - 3) = 0;
                  LODWORD(v132) = v132 + *v138;
                  LODWORD(v133) = v133 + *(v138 - 1);
                  v140 = *(v72 + (v133 & 0x7FF));
                  LODWORD(v135) = v135 + *(v138 - 2);
                  v141 = *(v72 + (v135 & 0x7FF));
                  *(v137 - 2) = *(v72 + (v132 & 0x7FF));
                  *(v137 - 1) = v140;
                  *v137 = v141;
                  v137 += 4;
                  v139 -= 3;
                  v138 += 3;
                }

                while (v139 > 6);
                goto LABEL_138;
              }
            }

            else
            {
              if (v70 != 4)
              {
                v174 = v70 + 1;
                v175 = a2;
                v176 = v13;
                do
                {
                  v177 = *v176++;
                  *v175++ = *(v72 + (v177 & 0x7FF));
                  --v174;
                }

                while (v174 > 1);
                v23 = v11;
                if (v71 < 1)
                {
                  goto LABEL_147;
                }

                do
                {
                  v178 = v70 + 1;
                  do
                  {
                    v176[v70] += *v176;
                    v179 = *v176++;
                    *v175++ = *(v72 + (v179 & 0x7FF));
                    --v178;
                  }

                  while (v178 > 1);
                  v155 = __OFSUB__(v71, v70);
                  v71 -= v70;
                }

                while (!((v71 < 0) ^ v155 | (v71 == 0)));
                goto LABEL_138;
              }

              v73.i32[0] = *v13 & 0x7FF07FF;
              v73.i16[2] = HIDWORD(*v13) & 0x7FF;
              v73.i16[3] = v73.i16[2];
              v74 = *(v72 + v73.u16[2]);
              v75 = *(v72 + v73.u16[1]);
              v76 = *(v72 + (*v13 & 0x7FFLL));
              *a2 = v74;
              a2[1] = v74;
              a2[2] = v75;
              a2[3] = v76;
              v23 = v11;
              if (v11 >= 5)
              {
                v77 = vmovl_u16(v73);
                v78 = a2 + 7;
                v79 = v11 + 4;
                v80 = 4;
                do
                {
                  v77 = vaddw_u16(v77, *&v13[v80]);
                  v81 = vmovn_s32(v77);
                  v81.i32[0] &= 0x7FF07FFu;
                  v82 = *(v72 + (v81.i16[2] & 0x7FF));
                  v83 = *(v72 + v81.u16[1]);
                  v84 = *(v72 + v81.u16[0]);
                  *(v78 - 3) = *(v72 + (v81.i16[3] & 0x7FF));
                  *(v78 - 2) = v82;
                  *(v78 - 1) = v83;
                  *v78 = v84;
                  v78 += 4;
                  v80 += 4;
                  v79 -= 4;
                }

                while (v79 > 8);
LABEL_138:
                v23 = v11;
              }
            }
          }
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_151;
          }

          v22 = *(v6 + 256);
          v23 = 2 * v11;
          v24 = v11 - v22;
          if (v11 >= v22)
          {
            if (v22 == 3)
            {
              *a2 = *v13;
              *(a2 + 1) = v13[1];
              v96 = v13[2];
              *(a2 + 2) = v96;
              v23 = 2 * v11;
              if (v11 >= 4)
              {
                v97 = v13[1];
                v98 = *v13;
                v99 = a2 + 10;
                v100 = v17;
                v101 = v11 + 3;
                do
                {
                  v98 += *(v100 - 2);
                  *(v99 - 2) = v98 & 0x7FF;
                  v97 += *(v100 - 1);
                  *(v99 - 1) = v97 & 0x7FF;
                  v102 = *v100;
                  v100 += 3;
                  v96 += v102;
                  *v99 = v96 & 0x7FF;
                  v99 += 6;
                  v101 -= 3;
                }

                while (v101 > 6);
                goto LABEL_146;
              }
            }

            else
            {
              if (v22 != 4)
              {
                v149 = v22 + 1;
                v150 = v13;
                v151 = a2;
                do
                {
                  v152 = *v150++;
                  *v151 = v152 & 0x7FF;
                  v151 += 2;
                  --v149;
                }

                while (v149 > 1);
                v23 = 2 * v11;
                if (v24 < 1)
                {
                  goto LABEL_147;
                }

                do
                {
                  v153 = v22 + 1;
                  do
                  {
                    v150[v22] += *v150;
                    v154 = *v150++;
                    *v151 = v154 & 0x7FF;
                    v151 += 2;
                    --v153;
                  }

                  while (v153 > 1);
                  v155 = __OFSUB__(v24, v22);
                  v24 -= v22;
                }

                while (!((v24 < 0) ^ v155 | (v24 == 0)));
                goto LABEL_146;
              }

              *a2 = *v13;
              *(a2 + 1) = v13[1];
              *(a2 + 2) = v13[2];
              v25 = v13[3];
              *(a2 + 3) = v25;
              v23 = 2 * v11;
              if (v11 >= 5)
              {
                v26 = v13[2];
                v27 = v13[1];
                v28 = a2 + 14;
                v29 = v18;
                v30 = v11 + 4;
                v31 = *v13;
                do
                {
                  v31 += *(v29 - 3);
                  *(v28 - 3) = v31 & 0x7FF;
                  v27 += *(v29 - 2);
                  *(v28 - 2) = v27 & 0x7FF;
                  v26 += *(v29 - 1);
                  *(v28 - 1) = v26 & 0x7FF;
                  v32 = *v29;
                  v29 += 4;
                  v25 += v32;
                  *v28 = v25 & 0x7FF;
                  v28 += 8;
                  v30 -= 4;
                }

                while (v30 > 8);
LABEL_146:
                v23 = 2 * v11;
              }
            }
          }
        }
      }

      else
      {
        v47 = *(v6 + 256);
        v23 = v11;
        v48 = v11 - v47;
        if (v11 >= v47)
        {
          v49 = *(v6 + 304);
          if (v47 == 3)
          {
            v114 = *v13 & 0x7FF;
            *a2 = *(v49 + v114);
            v115 = v13[1] & 0x7FF;
            a2[1] = *(v49 + v115);
            v116 = v13[2] & 0x7FF;
            a2[2] = *(v49 + v116);
            v23 = v11;
            if (v11 >= 4)
            {
              v117 = a2 + 5;
              v118 = v17;
              v119 = v11 + 3;
              do
              {
                LODWORD(v114) = v114 + *(v118 - 2);
                *(v117 - 2) = *(v49 + (v114 & 0x7FF));
                LODWORD(v115) = v115 + *(v118 - 1);
                *(v117 - 1) = *(v49 + (v115 & 0x7FF));
                v120 = *v118;
                v118 += 3;
                LODWORD(v116) = v116 + v120;
                *v117 = *(v49 + (v116 & 0x7FF));
                v117 += 3;
                v119 -= 3;
              }

              while (v119 > 6);
              goto LABEL_138;
            }
          }

          else
          {
            if (v47 != 4)
            {
              v162 = v47 + 1;
              v163 = a2;
              v164 = v13;
              do
              {
                v165 = *v164++;
                *v163++ = *(v49 + (v165 & 0x7FF));
                --v162;
              }

              while (v162 > 1);
              v23 = v11;
              if (v48 < 1)
              {
                goto LABEL_147;
              }

              do
              {
                v166 = v47 + 1;
                do
                {
                  v164[v47] += *v164;
                  v167 = *v164++;
                  *v163++ = *(v49 + (v167 & 0x7FF));
                  --v166;
                }

                while (v166 > 1);
                v155 = __OFSUB__(v48, v47);
                v48 -= v47;
              }

              while (!((v48 < 0) ^ v155 | (v48 == 0)));
              goto LABEL_138;
            }

            v50 = *v13 & 0x7FF;
            *a2 = *(v49 + v50);
            v51 = v13[1] & 0x7FF;
            a2[1] = *(v49 + v51);
            v52 = v13[2] & 0x7FF;
            a2[2] = *(v49 + v52);
            v53 = v13[3] & 0x7FF;
            a2[3] = *(v49 + v53);
            v23 = v11;
            if (v11 >= 5)
            {
              v54 = a2 + 7;
              v55 = v18;
              v56 = v11 + 4;
              do
              {
                LODWORD(v50) = v50 + *(v55 - 3);
                *(v54 - 3) = *(v49 + (v50 & 0x7FF));
                LODWORD(v51) = v51 + *(v55 - 2);
                *(v54 - 2) = *(v49 + (v51 & 0x7FF));
                LODWORD(v52) = v52 + *(v55 - 1);
                *(v54 - 1) = *(v49 + (v52 & 0x7FF));
                v57 = *v55;
                v55 += 4;
                LODWORD(v53) = v53 + v57;
                *v54 = *(v49 + (v53 & 0x7FF));
                v54 += 4;
                v56 -= 4;
              }

              while (v56 > 8);
              goto LABEL_138;
            }
          }
        }
      }

LABEL_147:
      a2 += v23;
      v15 += v11;
      v13 = (v13 + v16);
      v17 = (v17 + v16);
      v18 = (v18 + v16);
      if (v15 >= v8)
      {
        return 1;
      }
    }
  }

  if (v12 == -3)
  {
    TIFFErrorExtR(a1, "PixarLogDecode", "Decoding error at scanline %u, %s");
  }

  else
  {
    TIFFErrorExtR(a1, "PixarLogDecode", "ZLib error: %s");
  }

LABEL_150:
  bzero(a2, a3);
  return 0;
}

size_t PixarLogSetupEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    PixarLogSetupEncode_cold_1();
  }

  if (*(a1 + 170) == 1)
  {
    v3 = *(a1 + 130);
  }

  else
  {
    v3 = 1;
  }

  *(v1 + 256) = v3;
  v4 = _TIFFMultiplySSize(0, v3, *(a1 + 88), 0);
  v5 = _TIFFMultiplySSize(0, v4, *(a1 + 132), 0);
  result = _TIFFMultiplySSize(0, v5, 2, 0);
  if (result)
  {
    result = malloc_type_malloc(result, 0x1000040BDFB0063uLL);
    *(v1 + 248) = result;
    if (result)
    {
      if (*(v1 + 264) == -1 && (v7 = PixarLogGuessDataFmt(a1 + 72), *(v1 + 264) = v7, v7 == -1))
      {
        TIFFErrorExtR(a1, "PixarLogSetupEncode", "PixarLog compression can't handle %hu bit linear encodings");
      }

      else
      {
        if (!deflateInit_((v1 + 128), *(v1 + 268), "1.2.12", 112))
        {
          *(v1 + 260) |= 1u;
          return 1;
        }

        TIFFErrorExtR(a1, "PixarLogSetupEncode", "%s");
      }

      return 0;
    }
  }

  return result;
}

BOOL PixarLogPreEncode(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    PixarLogPreEncode_cold_1();
  }

  *(v1 + 152) = a1[140];
  v2 = a1[141];
  *(v1 + 160) = v2;
  if (!HIDWORD(v2))
  {
    return deflateReset((v1 + 128)) == 0;
  }

  TIFFErrorExtR(a1, "PixarLogPreEncode", "ZLib cannot deal with buffers this size");
  return 0;
}

uint64_t PixarLogPostEncode(void *a1)
{
  v2 = a1[137];
  *(v2 + 136) = 0;
  while (1)
  {
    v3 = deflate((v2 + 128), 4);
    if (v3 > 1)
    {
      break;
    }

    v4 = v3;
    v5 = a1[141] - *(v2 + 160);
    if (v5)
    {
      a1[145] = v5;
      result = TIFFFlushData1(a1);
      if (!result)
      {
        return result;
      }

      *(v2 + 152) = a1[140];
      *(v2 + 160) = a1[141];
    }

    if (v4 == 1)
    {
      return 1;
    }
  }

  v7 = *(v2 + 176);
  if (!v7)
  {
    v7 = "(null)";
  }

  TIFFErrorExtR(a1, "PixarLogPostEncode", "ZLib error: %s", v7);
  return 0;
}

uint64_t PixarLogEncode(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v3 = *(a1 + 1096);
  v4 = *(v3 + 66);
  if (v4 - 2 < 3)
  {
    a3 >>= 1;
  }

  else if (v4 >= 2)
  {
    if (v4 != 5)
    {
      goto LABEL_181;
    }

    a3 >>= 2;
  }

  v5 = *(a1 + 88) * *(v3 + 128);
  if (a3 > *(a1 + 132) * v5)
  {
    TIFFErrorExtR(a1, "PixarLogEncode", "Too many input bytes provided");
    return 0;
  }

  v124 = v3[31];
  if (a3 >= 1)
  {
    if (v4 <= 5 && ((1 << v4) & 0x31) != 0)
    {
      v7 = 0;
      v8 = *&Fltsize;
      v9 = *&LogK1;
      v120 = *&LogK2;
      v125 = 4 * v5;
      v122 = v5 + 4;
      v10 = v3[31];
      v132 = (v124 + 14);
      v121 = v5 + 3;
      v130 = 2 * v5;
      v131 = (v124 + 10);
      HIDWORD(v11) = 1084226560;
      v128 = a3;
      v129 = *(a1 + 1096);
      v127 = *(v3 + 66);
      v126 = *(a1 + 88) * *(v3 + 128);
      v119 = *&LogK1;
      while (1)
      {
        v12 = *(v3 + 128);
        v133 = v7;
        if (v4 == 4)
        {
          v13 = v130;
          v14 = v5;
          if (v5 >= v12)
          {
            v18 = v129[40];
            if (v12 == 3)
            {
              v46 = *(v18 + ((*a2 >> 1) & 0x7FFE));
              *v10 = v46;
              v47 = *(v18 + ((a2[1] >> 1) & 0x7FFE));
              v10[1] = v47;
              v48 = *(v18 + ((a2[2] >> 1) & 0x7FFE));
              v10[2] = v48;
              v13 = v130;
              v14 = v126;
              if (v126 >= 4)
              {
                v49 = a2 + 5;
                v50 = v131;
                v51 = v121;
                do
                {
                  v52 = *(v18 + ((*(v49 - 2) >> 1) & 0x7FFE));
                  *(v50 - 2) = (v52 - v46) & 0x7FF;
                  v53 = *(v18 + ((*(v49 - 1) >> 1) & 0x7FFE));
                  *(v50 - 1) = (v53 - v47) & 0x7FF;
                  v54 = *v49;
                  v49 += 3;
                  v55 = *(v18 + ((v54 >> 1) & 0x7FFE));
                  *v50 = (v55 - v48) & 0x7FF;
                  v50 += 3;
                  v51 -= 3;
                  v48 = v55;
                  v47 = v53;
                  v46 = v52;
                }

                while (v51 > 6);
                goto LABEL_76;
              }
            }

            else
            {
              v14 = v126;
              if (v12 != 4)
              {
                v67 = v12 + 1;
                v68 = v10;
                v69 = a2;
                do
                {
                  v70 = *v69++;
                  *v68++ = *(v18 + ((v70 >> 1) & 0x7FFE));
                  --v67;
                }

                while (v67 > 1);
                v71 = v126 - v12;
                v13 = v130;
                if (v126 - v12 < 1)
                {
                  goto LABEL_171;
                }

                do
                {
                  v72 = v12 + 1;
                  do
                  {
                    *v68++ = (*(v18 + ((*v69 >> 1) & 0x7FFE)) - *(v18 + ((v69[-v12] >> 1) & 0x7FFE))) & 0x7FF;
                    ++v69;
                    --v72;
                  }

                  while (v72 > 1);
                  v66 = __OFSUB__(v71, v12);
                  v71 -= v12;
                }

                while (!((v71 < 0) ^ v66 | (v71 == 0)));
LABEL_76:
                v13 = v130;
LABEL_169:
                v14 = v126;
                goto LABEL_170;
              }

              v19 = *(v18 + ((*a2 >> 1) & 0x7FFE));
              *v10 = v19;
              v20 = *(v18 + ((a2[1] >> 1) & 0x7FFE));
              v10[1] = v20;
              v21 = *(v18 + ((a2[2] >> 1) & 0x7FFE));
              v10[2] = v21;
              v22 = *(v18 + ((a2[3] >> 1) & 0x7FFE));
              v10[3] = v22;
              v13 = v130;
              if (v126 >= 5)
              {
                v23 = a2 + 7;
                v24 = v132;
                v25 = v122;
                do
                {
                  v26 = *(v18 + ((*(v23 - 3) >> 1) & 0x7FFE));
                  *(v24 - 3) = (v26 - v19) & 0x7FF;
                  v27 = *(v18 + ((*(v23 - 2) >> 1) & 0x7FFE));
                  *(v24 - 2) = (v27 - v20) & 0x7FF;
                  v28 = *(v18 + ((*(v23 - 1) >> 1) & 0x7FFE));
                  *(v24 - 1) = (v28 - v21) & 0x7FF;
                  v29 = *v23;
                  v23 += 4;
                  v30 = *(v18 + ((v29 >> 1) & 0x7FFE));
                  *v24 = (v30 - v22) & 0x7FF;
                  v24 += 4;
                  v25 -= 4;
                  v22 = v30;
                  v21 = v28;
                  v20 = v27;
                  v19 = v26;
                }

                while (v25 > 8);
                goto LABEL_76;
              }
            }
          }
        }

        else if (v4 == 5)
        {
          v13 = v125;
          v14 = v5;
          if (v5 >= v12)
          {
            v15 = v129[39];
            if (v12 == 3)
            {
              LODWORD(v11) = *a2;
              v44 = 0.0;
              v45 = 0.0;
              if (*a2 >= 0.0)
              {
                if (*&v11 >= 2.0)
                {
                  v45 = 2047.0;
                  if (*&v11 <= 24.2)
                  {
                    v11 = log((*&v11 * v120));
                    v45 = v9 * v11 + 0.5;
                  }
                }

                else
                {
                  *&v11 = v8 * *&v11;
                  LOWORD(v11) = *(v15 + 2 * *&v11);
                  v45 = *&v11;
                }
              }

              v89 = v45;
              *v10 = v45;
              LODWORD(v11) = *(a2 + 1);
              if (*&v11 >= 0.0)
              {
                if (*&v11 >= 2.0)
                {
                  v44 = 2047.0;
                  if (*&v11 <= 24.2)
                  {
                    v11 = log((*&v11 * v120));
                    v44 = v9 * v11 + 0.5;
                  }
                }

                else
                {
                  *&v11 = v8 * *&v11;
                  LOWORD(v11) = *(v15 + 2 * *&v11);
                  v44 = *&v11;
                }
              }

              v90 = v44;
              v10[1] = v44;
              LODWORD(v11) = *(a2 + 2);
              v91 = 0.0;
              if (*&v11 >= 0.0)
              {
                if (*&v11 >= 2.0)
                {
                  v91 = 2047.0;
                  if (*&v11 <= 24.2)
                  {
                    v11 = log((*&v11 * v120));
                    v91 = v9 * v11 + 0.5;
                  }
                }

                else
                {
                  *&v11 = v8 * *&v11;
                  LOWORD(v11) = *(v15 + 2 * *&v11);
                  v91 = *&v11;
                }
              }

              v92 = v91;
              v10[2] = v91;
              v13 = v125;
              v14 = v126;
              v7 = v133;
              if (v126 < 4)
              {
                goto LABEL_171;
              }

              v93 = *&LogK1;
              v94 = *&LogK2;
              v95 = a2 + 10;
              v96 = v131;
              v97 = v121;
              do
              {
                LODWORD(v11) = *(v95 - 2);
                v98 = 0.0;
                v99 = 0.0;
                if (*&v11 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    v99 = 2047.0;
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v94 * *&v11));
                      v99 = v93 * v11 + 0.5;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v99 = *&v11;
                  }
                }

                v100 = v99;
                *(v96 - 2) = (v99 - v89) & 0x7FF;
                LODWORD(v11) = *(v95 - 1);
                if (*&v11 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    v98 = 2047.0;
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v94 * *&v11));
                      v98 = v93 * v11 + 0.5;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v98 = *&v11;
                  }
                }

                *(v96 - 1) = (v98 - v90) & 0x7FF;
                LODWORD(v11) = *v95;
                v101 = 0.0;
                if (*v95 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    v101 = 2047.0;
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v94 * *&v11));
                      v101 = v93 * v11 + 0.5;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v101 = *&v11;
                  }
                }

                *v96 = (v101 - v92) & 0x7FF;
                v96 += 3;
                v97 -= 3;
                v95 += 6;
                v92 = v101;
                v90 = v98;
                LOWORD(v89) = v100;
              }

              while (v97 > 6);
LABEL_168:
              v13 = v125;
              goto LABEL_169;
            }

            if (v12 != 4)
            {
              v56 = *&LogK1;
              v57 = *&LogK2;
              v58 = v12 + 1;
              v59 = v10;
              v60 = a2;
              do
              {
                LODWORD(v11) = *v60;
                v61 = 0.0;
                if (*v60 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v57 * *&v11));
                      v61 = v56 * v11 + 0.5;
                    }

                    else
                    {
                      v61 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v61 = *&v11;
                  }
                }

                *v59++ = v61;
                v60 += 2;
                --v58;
              }

              while (v58 > 1);
              v14 = v126;
              v62 = v126 - v12;
              v13 = v125;
              v7 = v133;
              if (v126 - v12 >= 1)
              {
                do
                {
                  v63 = v12 + 1;
                  do
                  {
                    LODWORD(v11) = *v60;
                    v64 = 0.0;
                    v65 = 0.0;
                    if (*v60 >= 0.0)
                    {
                      if (*&v11 >= 2.0)
                      {
                        if (*&v11 <= 24.2)
                        {
                          v11 = log((v57 * *&v11));
                          v65 = v56 * v11 + 0.5;
                        }

                        else
                        {
                          v65 = 2047.0;
                        }
                      }

                      else
                      {
                        *&v11 = v8 * *&v11;
                        LOWORD(v11) = *(v15 + 2 * *&v11);
                        v65 = *&v11;
                      }
                    }

                    LODWORD(v11) = *&v60[-2 * v12];
                    if (*&v11 >= 0.0)
                    {
                      if (*&v11 >= 2.0)
                      {
                        if (*&v11 <= 24.2)
                        {
                          v11 = log((v57 * *&v11));
                          v64 = v56 * v11 + 0.5;
                        }

                        else
                        {
                          v64 = 2047.0;
                        }
                      }

                      else
                      {
                        *&v11 = v8 * *&v11;
                        LOWORD(v11) = *(v15 + 2 * *&v11);
                        v64 = *&v11;
                      }
                    }

                    *v59++ = (v65 - v64) & 0x7FF;
                    v60 += 2;
                    --v63;
                  }

                  while (v63 > 1);
                  v66 = __OFSUB__(v62, v12);
                  v62 -= v12;
                }

                while (!((v62 < 0) ^ v66 | (v62 == 0)));
                v13 = v125;
                v14 = v126;
                v7 = v133;
                v9 = v119;
              }

              goto LABEL_171;
            }

            LODWORD(v11) = *a2;
            v16 = 0.0;
            v17 = 0.0;
            if (*a2 >= 0.0)
            {
              if (*&v11 >= 2.0)
              {
                if (*&v11 <= 24.2)
                {
                  v11 = log((*&v11 * v120));
                  v17 = v9 * v11 + 0.5;
                }

                else
                {
                  v17 = 2047.0;
                }
              }

              else
              {
                *&v11 = v8 * *&v11;
                LOWORD(v11) = *(v15 + 2 * *&v11);
                v17 = *&v11;
              }
            }

            v102 = v17;
            *v10 = v17;
            LODWORD(v11) = *(a2 + 1);
            if (*&v11 >= 0.0)
            {
              if (*&v11 >= 2.0)
              {
                if (*&v11 <= 24.2)
                {
                  v11 = log((*&v11 * v120));
                  v16 = v9 * v11 + 0.5;
                }

                else
                {
                  v16 = 2047.0;
                }
              }

              else
              {
                *&v11 = v8 * *&v11;
                LOWORD(v11) = *(v15 + 2 * *&v11);
                v16 = *&v11;
              }
            }

            v103 = v16;
            v10[1] = v16;
            LODWORD(v11) = *(a2 + 2);
            v104 = 0.0;
            v105 = 0.0;
            if (*&v11 >= 0.0)
            {
              if (*&v11 >= 2.0)
              {
                if (*&v11 <= 24.2)
                {
                  v11 = log((*&v11 * v120));
                  v105 = v9 * v11 + 0.5;
                }

                else
                {
                  v105 = 2047.0;
                }
              }

              else
              {
                *&v11 = v8 * *&v11;
                LOWORD(v11) = *(v15 + 2 * *&v11);
                v105 = *&v11;
              }
            }

            v106 = v105;
            v10[2] = v105;
            LODWORD(v11) = *(a2 + 3);
            if (*&v11 >= 0.0)
            {
              if (*&v11 >= 2.0)
              {
                if (*&v11 <= 24.2)
                {
                  v11 = log((*&v11 * v120));
                  v104 = v9 * v11 + 0.5;
                }

                else
                {
                  v104 = 2047.0;
                }
              }

              else
              {
                *&v11 = v8 * *&v11;
                LOWORD(v11) = *(v15 + 2 * *&v11);
                v104 = *&v11;
              }
            }

            v107 = v104;
            v10[3] = v104;
            v13 = v125;
            v14 = v126;
            v7 = v133;
            if (v126 >= 5)
            {
              v108 = *&LogK1;
              v109 = *&LogK2;
              v110 = a2 + 14;
              v111 = v132;
              v112 = v122;
              do
              {
                LODWORD(v11) = *(v110 - 3);
                v113 = 0.0;
                v114 = 0.0;
                if (*&v11 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v109 * *&v11));
                      v114 = v108 * v11 + 0.5;
                    }

                    else
                    {
                      v114 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v114 = *&v11;
                  }
                }

                v115 = v114;
                *(v111 - 3) = (v114 - v102) & 0x7FF;
                LODWORD(v11) = *(v110 - 2);
                if (*&v11 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v109 * *&v11));
                      v113 = v108 * v11 + 0.5;
                    }

                    else
                    {
                      v113 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v113 = *&v11;
                  }
                }

                v102 = v113;
                *(v111 - 2) = (v113 - v103) & 0x7FF;
                LODWORD(v11) = *(v110 - 1);
                v116 = 0.0;
                v117 = 0.0;
                if (*&v11 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v109 * *&v11));
                      v117 = v108 * v11 + 0.5;
                    }

                    else
                    {
                      v117 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v117 = *&v11;
                  }
                }

                v103 = v117;
                *(v111 - 1) = (v117 - v106) & 0x7FF;
                LODWORD(v11) = *v110;
                if (*v110 >= 0.0)
                {
                  if (*&v11 >= 2.0)
                  {
                    if (*&v11 <= 24.2)
                    {
                      v11 = log((v109 * *&v11));
                      v116 = v108 * v11 + 0.5;
                    }

                    else
                    {
                      v116 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v11 = v8 * *&v11;
                    LOWORD(v11) = *(v15 + 2 * *&v11);
                    v116 = *&v11;
                  }
                }

                *v111 = (v116 - v107) & 0x7FF;
                v111 += 4;
                v112 -= 4;
                v110 += 8;
                v107 = v116;
                LOWORD(v106) = v103;
                LOWORD(v103) = v102;
                LOWORD(v102) = v115;
              }

              while (v112 > 8);
              goto LABEL_168;
            }
          }
        }

        else
        {
          v13 = v5;
          v14 = v5;
          if (v5 >= v12)
          {
            v31 = v129[41];
            if (v12 == 3)
            {
              v73 = *(v31 + 2 * *a2);
              *v10 = v73;
              v74 = *(v31 + 2 * *(a2 + 1));
              v10[1] = v74;
              v75 = *(v31 + 2 * *(a2 + 2));
              v10[2] = v75;
              v14 = v126;
              v13 = v126;
              if (v126 >= 4)
              {
                v76 = a2 + 5;
                v77 = v131;
                v78 = v121;
                do
                {
                  v79 = *(v31 + 2 * *(v76 - 2));
                  *(v77 - 2) = (v79 - v73) & 0x7FF;
                  v80 = *(v31 + 2 * *(v76 - 1));
                  *(v77 - 1) = (v80 - v74) & 0x7FF;
                  v81 = *v76;
                  v76 += 3;
                  v82 = *(v31 + 2 * v81);
                  *v77 = (v82 - v75) & 0x7FF;
                  v77 += 3;
                  v78 -= 3;
                  v75 = v82;
                  v74 = v80;
                  v73 = v79;
                }

                while (v78 > 6);
LABEL_80:
                v14 = v126;
                v13 = v126;
LABEL_170:
                v7 = v133;
              }
            }

            else
            {
              v14 = v126;
              if (v12 != 4)
              {
                v83 = v12 + 1;
                v84 = v10;
                v85 = a2;
                do
                {
                  v86 = *v85;
                  v85 = (v85 + 1);
                  *v84++ = *(v31 + 2 * v86);
                  --v83;
                }

                while (v83 > 1);
                v87 = v126 - v12;
                v13 = v126;
                if (v126 - v12 < 1)
                {
                  goto LABEL_171;
                }

                do
                {
                  v88 = v12 + 1;
                  do
                  {
                    *v84++ = (*(v31 + 2 * *v85) - *(v31 + 2 * *(v85 - v12))) & 0x7FF;
                    v85 = (v85 + 1);
                    --v88;
                  }

                  while (v88 > 1);
                  v66 = __OFSUB__(v87, v12);
                  v87 -= v12;
                }

                while (!((v87 < 0) ^ v66 | (v87 == 0)));
                v13 = v126;
                goto LABEL_170;
              }

              v32 = *(v31 + 2 * *a2);
              *v10 = v32;
              v33 = *(v31 + 2 * *(a2 + 1));
              v10[1] = v33;
              v34 = *(v31 + 2 * *(a2 + 2));
              v10[2] = v34;
              v35 = *(v31 + 2 * *(a2 + 3));
              v10[3] = v35;
              v13 = v126;
              if (v126 >= 5)
              {
                v36 = a2 + 7;
                v37 = v132;
                v38 = v122;
                do
                {
                  v39 = *(v31 + 2 * *(v36 - 3));
                  *(v37 - 3) = (v39 - v32) & 0x7FF;
                  v40 = *(v31 + 2 * *(v36 - 2));
                  *(v37 - 2) = (v40 - v33) & 0x7FF;
                  v41 = *(v31 + 2 * *(v36 - 1));
                  *(v37 - 1) = (v41 - v34) & 0x7FF;
                  v42 = *v36;
                  v36 += 4;
                  v43 = *(v31 + 2 * v42);
                  *v37 = (v43 - v35) & 0x7FF;
                  v37 += 4;
                  v38 -= 4;
                  v35 = v43;
                  v34 = v41;
                  v33 = v40;
                  v32 = v39;
                }

                while (v38 > 8);
                goto LABEL_80;
              }
            }
          }
        }

LABEL_171:
        a2 = (a2 + v13);
        v7 += v14;
        v10 += v14;
        v3 = v129;
        v132 = (v132 + v130);
        v131 = (v131 + v130);
        LODWORD(a3) = v128;
        v4 = v127;
        v5 = v14;
        if (v7 >= v128)
        {
          goto LABEL_172;
        }
      }
    }

LABEL_181:
    TIFFErrorExtR(a1, "PixarLogEncode", "%hu bit input not supported in PixarLog");
    return 0;
  }

LABEL_172:
  v3[16] = v124;
  *(v3 + 34) = 2 * a3;
  if ((a3 & 0x80000000) != 0)
  {
    TIFFErrorExtR(a1, "PixarLogEncode", "ZLib cannot deal with buffers this size");
  }

  else
  {
    while (!deflate((v3 + 16), 0))
    {
      if (!*(v3 + 40))
      {
        *(a1 + 1160) = *(a1 + 1128);
        result = TIFFFlushData1(a1);
        if (!result)
        {
          return result;
        }

        v3[19] = *(a1 + 1120);
        *(v3 + 40) = *(a1 + 1128);
      }

      if (!*(v3 + 34))
      {
        return 1;
      }
    }

    TIFFErrorExtR(a1, "PixarLogEncode", "Encoder error: %s");
  }

  return 0;
}