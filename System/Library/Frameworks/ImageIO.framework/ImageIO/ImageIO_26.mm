uint64_t alphaProviderSkipForward(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  *a1 += a2;
  return a2;
}

void alphaProviderRewind(void *a1)
{
  if (a1)
  {
    if (a1[4])
    {
      CGAccessSessionRelease();
    }

    a1[4] = 0;
    if (a1[5])
    {
      CGAccessSessionRelease();
    }

    a1[5] = 0;
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    a1[2] = 0;
    v3 = a1[3];
    if (v3)
    {
      free(v3);
    }

    a1[3] = 0;
    *a1 = 0;
    a1[1] = 0;
  }
}

void alphaProviderReleaseInfo(void *a1)
{
  if (a1)
  {
    alphaProviderRewind(a1);
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
    }

    a1[6] = 0;
    v3 = a1[7];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t CGImageCreateCopyWithBitmapInfo_vImage(CGImageRef image, CGColor *a2, int a3, unint64_t a4, int a5, BOOL a6, uint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateCopyWithBitmapInfo_vImage");
  }

  v16[0] = CGImageGetBitsPerComponent(image);
  v16[1] = a3;
  ColorSpace = CGImageGetColorSpace(image);
  v17 = ColorSpace;
  v18 = a5;
  v19 = 0;
  Decode = CGImageGetDecode(image);
  v21 = a7;
  memset(v15, 0, sizeof(v15));
  memset(v22, 0, sizeof(v22));
  if (a2 && (CGColorGetColorSpace(a2), CGColorSpaceEqualToColorSpace()))
  {
    Components = CGColorGetComponents(a2);
  }

  else if (IIO_ConvertCGColorToColorComponents(a2, ColorSpace, a7, v22))
  {
    Components = v22;
  }

  else
  {
    Components = 0;
  }

  if (MEMORY[0x186603ED0](v15, v16, Components, image, 0))
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1866041B0](v15, v16, 0, 0, 512, 0);
  }
}

uint64_t CGImageCreateCopyWithAlphaInfo(CGImage *a1, CGColor *a2, unsigned int a3)
{
  v6 = kdebug_trace();
  IIOInitDebugFlags(v6, v7);
  v8 = gIIODebugFlags;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateCopyWithAlphaInfo", 0, 0, -1, 0);
    v8 = gIIODebugFlags;
  }

  if ((v8 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateCopyWithAlphaInfo");
  }

  CGImageGetWidth(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  LODWORD(ColorSpace) = _GetMinimalPixelSize(ColorSpace, BitsPerComponent, a3);
  NonAlphaInfo = _ImageGetNonAlphaInfo(a1);
  CGImageGetShouldInterpolate(a1);
  RenderingIntent = CGImageGetRenderingIntent(a1);
  CopyWithBitmapInfo_vImage = CGImageCreateCopyWithBitmapInfo_vImage(a1, a2, ColorSpace, v13, NonAlphaInfo | a3, 0, RenderingIntent);
  kdebug_trace();
  return CopyWithBitmapInfo_vImage;
}

CFDataRef CGImageIOCreateXMPDataFromMetaData(CFDataRef a1)
{
  v2 = kdebug_trace();
  IIOInitDebugFlags(v2, v3);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageIOCreateXMPDataFromMetaData", 0, 0, -1, 0);
  }

  size = 0;
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6);
  if (a1)
  {
    bufferXMPForImageProperties(v6, 0, &size);
    if (size >= 1 && (v4 = malloc_type_malloc(size, 0x100004077774924uLL)) != 0)
    {
      bufferXMPForImageProperties(v6, v4, &size);
      a1 = CFDataCreate(*MEMORY[0x1E695E480], v4, size);
      free(v4);
    }

    else
    {
      a1 = 0;
    }
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v6);
  return a1;
}

void bufferXMPForImageProperties(IIODictionary *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = 0;
  usedBufLen = 0;
  v6 = 1;
  if (!a1 || !a3)
  {
LABEL_29:
    if (a2)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (IIODictionary::containsKey(a1, @"Orientation"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"Orientation");
  }

  else
  {
    if (!IIODictionary::containsKeyGroup(a1, @"Orientation", @"{TIFF}"))
    {
      if (!IIODictionary::containsKeyGroup(a1, @"Orientation", @"{TIFF}"))
      {
        v5 = 0;
        goto LABEL_32;
      }

      Uint32ForKey = 0;
      v9 = 0;
      goto LABEL_11;
    }

    Uint32ForKey = IIODictionary::getUint32ForKeyGroup(a1, @"Orientation", @"{TIFF}");
  }

  v9 = 1;
  if ((IIODictionary::containsKeyGroup(a1, @"Orientation", @"{TIFF}") & 1) == 0)
  {
    v10 = 0;
    Uint32ForKeyGroup = 0;
    goto LABEL_12;
  }

LABEL_11:
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a1, @"StarRating", @"{IPTC}");
  v10 = 1;
LABEL_12:
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = Mutable;
  if (!Mutable)
  {
    goto LABEL_32;
  }

  CFStringAppend(Mutable, @"<x:xmpmeta xmlns:x=adobe:ns:meta/ x:xmptk=XMP Core 4.4.0>\n   <rdf:RDF xmlns:rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n");
  if (v9)
  {
    if (Uint32ForKey >= 8)
    {
      LODWORD(v14) = 8;
    }

    else
    {
      LODWORD(v14) = Uint32ForKey;
    }

    if (Uint32ForKey)
    {
      v14 = v14;
    }

    else
    {
      v14 = 1;
    }

    v15 = CFStringCreateWithFormat(v12, 0, @"      <rdf:Description rdf:about= xmlns:tiff=http://ns.adobe.com/tiff/1.0/>\n         <tiff:Orientation>%d</tiff:Orientation>\n      </rdf:Description>\n", v14);
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    CFStringAppend(v5, v15);
    CFRelease(v16);
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v17 = CFStringCreateWithFormat(v12, 0, @"      <rdf:Description rdf:about= xmlns:xmp=http://ns.adobe.com/xap/1.0/>\n         <xmp:Rating>%d</xmp:Rating>\n      </rdf:Description>\n", Uint32ForKeyGroup);
  if (!v17)
  {
LABEL_32:
    v6 = 1;
    if (a2)
    {
      goto LABEL_35;
    }

LABEL_33:
    if (a3)
    {
      *a3 = v6;
    }

LABEL_35:
    if (!v5)
    {
      return;
    }

    goto LABEL_36;
  }

  v18 = v17;
  CFStringAppend(v5, v17);
  CFRelease(v18);
LABEL_25:
  CFStringAppend(v5, @"   </rdf:RDF>\n</x:xmpmeta>");
  if (!a2)
  {
    usedBufLen = CFStringGetLength(v5);
    v6 = usedBufLen + 1;
    goto LABEL_29;
  }

  v20.length = *a3;
  v20.location = 0;
  CFStringGetBytes(v5, v20, 0x8000100u, 0, 0, a2, *a3, &usedBufLen);
  if (usedBufLen < *a3)
  {
    a2[usedBufLen] = 0;
  }

LABEL_36:
  CFRelease(v5);
}

CFDataRef CGImageCopyJPEGData(CGImage *a1)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCopyJPEGData", 0, 0, -1, 0);
  }

  return CGImageCopySourceData(a1, @"public.jpeg");
}

CFDataRef CGImageCopySourceData(CGImage *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  Property = CGImageGetProperty();
  if (!Property || CFStringCompare(Property, a2, 0))
  {
    return 0;
  }

  if (!CGImageGetProperty())
  {
LABEL_10:
    v10 = CGImageGetProperty();
    *buffer = 0;
    if (v10)
    {
      v13.location = 0;
      v13.length = 8;
      CFDataGetBytes(v10, v13, buffer);
      if (*buffer)
      {
        Source = CGImageSourceGetSource(*buffer);
        if (Source)
        {
          return IIOImageRead::copyData(Source);
        }
      }
    }

    return 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = CGImageDestinationCreateWithData(Mutable, a2, 1uLL, 0);
  if (!v7 || (v8 = v7, CGImageDestinationAddImage(v7, a1, 0), v9 = CGImageDestinationFinalize(v8), CFRelease(v8), !v9))
  {
    CFRelease(Mutable);
    goto LABEL_10;
  }

  return Mutable;
}

const __CFData *CGImageCopyJPEGDataAndColorSpace(CGImage *a1, CGColorSpaceRef *a2)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCopyJPEGDataAndColorSpace", 0, 0, -1, 0);
  }

  v4 = CGImageCopySourceData(a1, @"public.jpeg");
  if (v4)
  {
    if (!a2)
    {
      return v4;
    }
  }

  else
  {
    v4 = CGImageCopySourceData(a1, @"public.jpeg-2000");
    if (!a2)
    {
      return v4;
    }
  }

  *a2 = 0;
  if (!v4)
  {
    return v4;
  }

  *buffer = 0;
  Property = CGImageGetProperty();
  if (Property)
  {
    v43.location = 0;
    v43.length = 8;
    CFDataGetBytes(Property, v43, buffer);
    if (*buffer)
    {
      Properties = IIOImagePlus::getProperties(*(*buffer + 24));
      if (Properties)
      {
        v7 = Properties;
        if (IIODictionary::containsKeyGroup(Properties, @"Gamma", @"{Exif}"))
        {
          if (IIODictionary::containsKeyGroup(v7, @"WhitePoint", @"{TIFF}") && IIODictionary::containsKeyGroup(v7, @"PrimaryChromaticities", @"{TIFF}"))
          {
            FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(v7, @"Gamma", @"{Exif}");
            ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v7, @"WhitePoint", @"{TIFF}");
            memset(v41, 0, sizeof(v41));
            IIOArray::IIOArray(v41, ObjectForKeyGroup);
            FloatAtIndex = IIOArray::getFloatAtIndex(v41, 0);
            v10 = IIOArray::getFloatAtIndex(v41, 1);
            v11 = IIODictionary::getObjectForKeyGroup(v7, @"PrimaryChromaticities", @"{TIFF}");
            memset(v40, 0, sizeof(v40));
            IIOArray::IIOArray(v40, v11);
            v12 = IIOArray::getFloatAtIndex(v40, 0);
            v13 = IIOArray::getFloatAtIndex(v40, 1);
            v14 = IIOArray::getFloatAtIndex(v40, 2);
            v15 = IIOArray::getFloatAtIndex(v40, 3);
            v16 = IIOArray::getFloatAtIndex(v40, 4);
            v17 = IIOArray::getFloatAtIndex(v40, 5);
            if (IIOChromaticitiesMatchAdobeRGB(FloatAtIndex, v10, v12, v13, v14, v15, v16, v17, FloatForKeyGroup))
            {
              v18 = MEMORY[0x1E695F0A0];
            }

            else if (IIOChromaticitiesMatchSRGB(FloatAtIndex, v10, v12, v13, v14, v15, v16, v17, v38))
            {
              v18 = MEMORY[0x1E695F1C0];
            }

            else
            {
              if (!IIOChromaticitiesMatchLinearSRGB(FloatAtIndex, v10, v12, v13, v14, v15, v16, v17, v39))
              {
LABEL_21:
                IIOArray::~IIOArray(v40);
                IIOArray::~IIOArray(v41);
                goto LABEL_22;
              }

              v18 = MEMORY[0x1E695F1B0];
            }

            *a2 = CGColorSpaceCreateWithName(*v18);
            goto LABEL_21;
          }
        }
      }
    }
  }

LABEL_22:
  if (!*a2)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    if (Length >= 4 && *BytePtr == 255 && BytePtr[1] == 216 && Length >= 7)
    {
      v21 = __rev16(*(BytePtr + 1));
      if (v21 != 65498)
      {
        v22 = __rev16(*(BytePtr + 2));
        if (v21 == 65506)
        {
          v23 = 4;
          v24 = 6;
LABEL_37:
          v28 = v23 + v22;
          if (v22 >= 0x11 && v28 < Length)
          {
            v30 = &BytePtr[v24];
            if (!strncmp(v30, "ICC_PROFILE", 0xBuLL) && v30 != -14 && v22 != 16)
            {
              v32 = CFDataCreate(*MEMORY[0x1E695E480], v30 + 14, v22 - 16);
              if (v32)
              {
                v33 = v32;
                v34 = CGColorSpaceCreateWithICCData(v32);
                ColorSpace = CGImageGetColorSpace(a1);
                Model = CGColorSpaceGetModel(ColorSpace);
                if (Model == CGColorSpaceGetModel(v34))
                {
                  *a2 = v34;
                }

                else
                {
                  CGColorSpaceRelease(v34);
                }

                CFRelease(v33);
              }
            }
          }
        }

        else
        {
          v23 = 4;
          while (1)
          {
            v25 = v23 + v22;
            v23 = v25 + 2;
            if (v25 + 2 >= Length)
            {
              break;
            }

            v26 = __rev16(*&BytePtr[v25]);
            v24 = v25 + 4;
            if (v24 >= Length || v26 == 65498)
            {
              break;
            }

            v22 = __rev16(*&BytePtr[v23]);
            if (v26 == 65506)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_185FEEAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

CGImageRef CreateImageFromMask(CGImage *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  if (CGImageGetBitsPerComponent(a1) != 8)
  {
    goto LABEL_18;
  }

  DataProvider = CGImageGetDataProvider(a1);
  if (!DataProvider)
  {
    goto LABEL_18;
  }

  v4 = CGDataProviderCopyData(DataProvider);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  if (CFDataGetLength(v5) < BytesPerRow * Height || (v10 = 2 * BytesPerRow, (v11 = malloc_type_calloc(2 * BytesPerRow, Height, 0x100004077774924uLL)) == 0))
  {
    CFRelease(v5);
LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  v12 = v11;
  memcpy(v11, BytePtr, BytesPerRow * Height);
  CFRelease(v5);
  v13 = Height - 1;
  if ((Height - 1) >= 0)
  {
    v14 = &v12[Width - 1 + BytesPerRow * v13];
    v15 = &v12[2 * BytesPerRow * v13 - 1 + 2 * Width];
    do
    {
      if (((Width - 1) & 0x8000000000000000) == 0)
      {
        v16 = v15;
        v17 = v14;
        v18 = -Width;
        do
        {
          v19 = *v17--;
          *(v16 - 1) = 0;
          *v16 = v19;
          v16 -= 2;
        }

        while (!__CFADD__(v18++, 1));
      }

      v14 -= BytesPerRow;
      v15 -= 2 * BytesPerRow;
    }

    while (v13-- >= 1);
  }

  v22 = CFDataCreate(*MEMORY[0x1E695E480], v12, v10 * Height);
  if (v22)
  {
    v23 = v22;
    v24 = CGDataProviderCreateWithCFData(v22);
    if (v24)
    {
      v25 = v24;
      v26 = CGImageCreate(Width, Height, 8uLL, 0x10uLL, v10, v2, 3u, v24, 0, 1, kCGRenderingIntentDefault);
      CGImageSetProperty();
      CGImageSetProperty();
      CGDataProviderRelease(v25);
    }

    else
    {
      v26 = 0;
    }

    CFRelease(v23);
  }

  else
  {
    v26 = 0;
  }

  free(v12);
LABEL_19:
  CGColorSpaceRelease(v2);
  return v26;
}

CGImageRef Create1BitImageFromImageRefWithOrientation(CGImage *a1, int a2, unsigned int a3)
{
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  Width = CGImageGetWidth(a1);
  v30 = xmmword_186208C30;
  v29 = xmmword_186208860;
  Height = CGImageGetHeight(a1);
  v9 = Height;
  v10 = 0.0;
  if (a2 <= 4)
  {
    switch(a2)
    {
      case 2:
        v29 = xmmword_186208C40;
        v10 = Width;
        break;
      case 3:
        v10 = Width;
        v30 = xmmword_186208C20;
        v29 = xmmword_186208C40;
        goto LABEL_18;
      case 4:
        v30 = xmmword_186208C20;
LABEL_18:
        v12 = Height;
        goto LABEL_19;
    }

LABEL_16:
    v12 = 0.0;
    goto LABEL_19;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v30 = xmmword_186208860;
      v29 = xmmword_186208C30;
    }

    else if (a2 == 8)
    {
      v30 = xmmword_186208C40;
      v29 = xmmword_186208C30;
      v10 = Height;
    }

    goto LABEL_16;
  }

  if (a2 == 5)
  {
    v10 = Height;
    v11 = xmmword_186208C40;
  }

  else
  {
    v11 = xmmword_186208860;
  }

  v30 = v11;
  v29 = xmmword_186208C20;
  v12 = Width;
LABEL_19:
  if (a2 >= 5)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  if (a2 >= 5)
  {
    v14 = Height;
  }

  else
  {
    v14 = Width;
  }

  v15 = malloc_type_calloc(v14, v13, 0x100004077774924uLL);
  v16 = CGBitmapContextCreate(v15, v14, v13, 8uLL, v14, v6, 0);
  if (!v16)
  {
    _cg_jpeg_mem_term("Create1BitImageFromImageRefWithOrientation", 3197, "*** ERROR: CGBitmapContextCreate returned NULL\n");
  }

  v32.size.width = v14;
  v32.size.height = v13;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  CGContextClearRect(v16, v32);
  *&transform.a = v29;
  *&transform.c = v30;
  transform.tx = v10;
  transform.ty = v12;
  CGContextConcatCTM(v16, &transform);
  v33.size.width = Width;
  v33.size.height = v9;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  CGContextDrawImage(v16, v33, a1);
  v17 = (v14 + 7) >> 3;
  v18 = malloc_type_calloc(v17, v13, 0x100004077774924uLL);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (v14)
      {
        v20 = 0;
        v21 = &v15[i * v14];
        v22 = 0x80;
        v23 = v14;
        v24 = &v18[i * v17];
        do
        {
          if (v20 == 8)
          {
            ++v24;
            v22 = 0x80;
          }

          v25 = *v21++;
          if (v25 > a3)
          {
            *v24 |= v22;
          }

          v22 >>= 1;
          if (v20 == 8)
          {
            v20 = 1;
          }

          else
          {
            ++v20;
          }

          --v23;
        }

        while (v23);
      }
    }
  }

  v26 = CGDataProviderCreateWithData(v18, v18, v17 * v13, _CGDataProviderReleaseDataCallback);
  v27 = CGImageCreate(v14, v13, 1uLL, 1uLL, (v14 + 7) >> 3, v6, 0, v26, 0, 0, kCGRenderingIntentDefault);
  CGImageSetProperty();
  CGImageSetProperty();
  CGDataProviderRelease(v26);
  CGContextRelease(v16);
  CGColorSpaceRelease(v6);
  if (v15)
  {
    free(v15);
  }

  return v27;
}

void _CGDataProviderReleaseDataCallback(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL CGImageIsInsideSRGB(void *a1)
{
  if (!a1)
  {
    CGImageIsInsideSRGB_cold_2();
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CGImageGetTypeID())
  {
    CGImageIsInsideSRGB_cold_1();
    return 0;
  }

  return CGImageIsInside_sRGB(a1);
}

BOOL CGImageIsInside_sRGB(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageIsInside_sRGB");
  }

  Property = CGImageGetProperty();
  if (Property)
  {
    return Property == *MEMORY[0x1E695E4D0];
  }

  if (!IIO_CGColorSpaceNameMatchesName(ColorSpace, *MEMORY[0x1E695F1C0]))
  {
    if (IIO_CGColorSpaceNameMatchesName(ColorSpace, *MEMORY[0x1E695F0B8]) || CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      v18 = 0;
      space = 0;
      IIOColorSpace::IIOColorSpace(&v18, *MEMORY[0x1E695F110]);
      v8 = malloc_type_calloc(Height, 8 * Width, 0x1000040BDFB0063uLL);
      v9 = CGBitmapContextCreate(v8, Width, Height, 0x10uLL, 8 * Width, space, 0x1105u);
      if (v9)
      {
        CGContextClear();
        v20.size.width = Width;
        v20.size.height = Height;
        v20.origin.x = 0.0;
        v20.origin.y = 0.0;
        CGContextDrawImage(v9, v20, a1);
        v17.data = v8;
        v17.height = Height;
        v17.width = Width;
        v17.rowBytes = 8 * Width;
        v7 = FP16DataInZeroToOneRange(&v17);
        CGContextRelease(v9);
      }

      else
      {
        v7 = 1;
      }

      free(v8);
      IIOColorSpace::~IIOColorSpace(&v18);
      goto LABEL_13;
    }

    if (IIO_CGColorSpaceNameMatchesName(ColorSpace, *MEMORY[0x1E695F110]))
    {
      if (CGImageGetImageProvider())
      {
        v12 = CGImageProviderCopyImageBlockSetWithOptions();
        if (v12)
        {
          if (CGImageBlockSetGetCount())
          {
            CGImageBlockSetGetImageBlock();
            Data = CGImageBlockGetData();
            BytesPerRow = CGImageBlockGetBytesPerRow();
            CGImageBlockGetRect();
            if (Data)
            {
              DataProvider = 0;
              goto LABEL_27;
            }
          }
        }
      }

      else
      {
        v12 = 0;
      }

      DataProvider = CGImageGetDataProvider(a1);
      Data = CGDataProviderRetainBytePtr();
      if (!Data)
      {
        _cg_jpeg_mem_term("CGImageIsInside_sRGB", 3413, "*** CGDataProviderRetainBytePtr returned NULL\n");
      }

      CGDataProviderGetSizeOfData();
      v16 = CGImageGetBytesPerRow(a1);
      if (!Data)
      {
        v7 = 1;
        goto LABEL_29;
      }

      BytesPerRow = v16;
LABEL_27:
      v17.data = Data;
      v17.height = Height;
      v17.width = Width;
      v17.rowBytes = BytesPerRow;
      v7 = FP16DataInZeroToOneRange(&v17);
LABEL_29:
      if (v12)
      {
        CGImageBlockSetRelease();
      }

      if (DataProvider)
      {
        CGDataProviderReleaseBytePtr();
      }

      goto LABEL_13;
    }
  }

  v7 = 1;
LABEL_13:
  if ((gIIODebugFlags & 0x20000000000) != 0)
  {
    v10 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("    CGImageIsInside_sRGB - %g ms\n", (v10 - Current) * 1000.0);
  }

  return v7;
}

void sub_185FEF430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOColorSpace::~IIOColorSpace(va);
  _Unwind_Resume(a1);
}

uint64_t FP16DataInZeroToOneRange(vImage_Buffer *a1)
{
  if (!a1)
  {
    return 1;
  }

  data = a1->data;
  if (!a1->data)
  {
    return 1;
  }

  height = a1->height;
  if (!height)
  {
    return 1;
  }

  v3 = 0;
  width = a1->width;
  rowBytes = a1->rowBytes;
  result = 1;
  do
  {
    if (width)
    {
      v7 = 0;
      v8 = &data[rowBytes * v3];
      while (2)
      {
        for (i = 0; i != 6; i += 2)
        {
          _H2 = *&v8[i];
          __asm { FCVT            D2, H2 }

          if (_D2 > 1.003 || _D2 < -0.025)
          {
            if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
            {
              ImageIOLog("COL FP16DataInZeroToOneRange: outSide [0..1] range at: [%d,%d] value: %g\n", v7, v3, _D2);
            }

            return 0;
          }
        }

        v8 += 8;
        if (++v7 != width)
        {
          continue;
        }

        break;
      }
    }

    ++v3;
  }

  while (v3 != height);
  return result;
}

CGImage *IIOImageCreateWithImageAndMaskInterleaved(CGImage *a1, IIODictionary *a2)
{
  memset(&dest, 0, sizeof(dest));
  memset(&newSrc, 0, sizeof(newSrc));
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  Mask = CGImageGetMask();
  if (Mask)
  {
    if (CGImageGetBitsPerComponent(a1) != 8)
    {
      _cg_jpeg_mem_term("IIOImageCreateWithImageAndMaskInterleaved", 3475, "*** NOTE: CGImage with mask will be converted from %dbpc to 8bpc\n");
    }

    LODWORD(v10) = 3;
    v9[1] = CGImageGetColorSpace(a1);
    v9[0] = 0x2000000008;
    v5 = MEMORY[0x186603ED0](&dest, v9, 0, a1, 0);
    if (v5 || (*&v6 = __PAIR64__(v9[0], v9[0]), *(&v6 + 1) = CGImageGetColorSpace(Mask), LODWORD(v7) = 0, (v5 = MEMORY[0x186603ED0](&newSrc, &v6, 0, Mask, 0)) != 0))
    {
      Mask = 0;
    }

    else
    {
      if (vImageOverwriteChannels_ARGB8888(&newSrc, &dest, &dest, 1u, 0x10u) << 32)
      {
        _cg_jpeg_mem_term("IIOImageCreateWithImageAndMaskInterleaved", 3499, "*** ERROR: vImageOverwriteChannels_ARGB8888 failed - err= %d\n");
      }

      v5 = vImageClipToAlpha_RGBA8888(&dest, &dest, 0x10u);
      Mask = MEMORY[0x1866041B0](&dest, v9, 0, 0, 0, &v5);
    }

    if (dest.data)
    {
      free(dest.data);
    }

    if (newSrc.data)
    {
      free(newSrc.data);
    }
  }

  return Mask;
}

void GlobalPNGInfo::GlobalPNGInfo(GlobalPNGInfo *this)
{
  *this = &unk_1EF4D56F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  pthread_mutex_init((this + 80), 0);
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 14) = 0;
}

void sub_185FEF72C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void GlobalPNGInfo::GlobalPNGInfo(GlobalPNGInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4D56F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  pthread_mutex_init((this + 80), 0);
  *(this + 8) = 0;
  v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = v6;
  if (v6)
  {
    if (CFReadStreamOpen(v6))
    {
      GlobalPNGInfo::readFromStream(this, v7);
      CFReadStreamClose(v7);
    }

    CFRelease(v7);
  }
}

void sub_185FEF810(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void GlobalPNGInfo::~GlobalPNGInfo(GlobalPNGInfo *this)
{
  *this = &unk_1EF4D56F8;
  v2 = *(this + 8);
  if (v2 && *(this + 72) == 1)
  {
    free(v2);
  }

  pthread_mutex_destroy((this + 80));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  GlobalPNGInfo::~GlobalPNGInfo(this);

  JUMPOUT(0x186602850);
}

CFTypeRef GlobalPNGInfo::createDataRepresentation(GlobalPNGInfo *this, const CFRange *a2)
{
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFWriteStreamOpen(v4))
  {
    GlobalPNGInfo::writeToStream(this, v5, a2);
    v6 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

uint64_t GlobalPNGInfo::writeToStream(GlobalPNGInfo *this, CFWriteStreamRef stream, const CFRange *a3)
{
  p_length = &a3->length;
  if (a3->location + a3->length > 0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - *(this + 1)) >> 1))
  {
    return 4294967246;
  }

  *buffer = 1112493127;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 32, 28);
  *v12 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - *(this + 1)) >> 1);
  CFWriteStreamWrite(stream, v12, 8);
  CFWriteStreamWrite(stream, a3, 8);
  CFWriteStreamWrite(stream, p_length, 8);
  length = a3->length;
  v9 = (*(this + 1) + 34 * a3->location);
  v10 = &v9[34 * length];
  while (v9 < v10)
  {
    CFWriteStreamWrite(stream, v9, 34);
    v9 += 34;
  }

  *buffer = 1179992675;
  CFWriteStreamWrite(stream, buffer, 4);
  *v11 = *(this + 12);
  if (*v11 && !*(this + 8))
  {
    *v11 = 0;
  }

  CFWriteStreamWrite(stream, v11, 8);
  if (*v11)
  {
    CFWriteStreamWrite(stream, *(this + 8), *v11);
  }

  return 0;
}

void std::vector<fcTL_CHUNK>::resize(void *result, unint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((result[1] - *result) >> 1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fcTL_CHUNK>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 34 * a2;
  }
}

uint64_t GlobalPNGInfo::currentBuffer(GlobalPNGInfo *this, unsigned int *a2)
{
  pthread_mutex_lock((this + 80));
  v4 = *(this + 8);
  if (a2)
  {
    *a2 = *(this + 12);
  }

  pthread_mutex_unlock((this + 80));
  return v4;
}

uint64_t GlobalPNGInfo::setCurrentBuffer(GlobalPNGInfo *this, unsigned __int8 *a2, int a3, char a4)
{
  pthread_mutex_lock((this + 80));
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 72) = a4;

  return pthread_mutex_unlock((this + 80));
}

uint64_t GlobalPNGInfo::currentBufferIndex(GlobalPNGInfo *this)
{
  pthread_mutex_lock((this + 80));
  v2 = *(this + 13);
  pthread_mutex_unlock((this + 80));
  return v2;
}

uint64_t GlobalPNGInfo::setCurrentBufferIndex(GlobalPNGInfo *this, int a2)
{
  pthread_mutex_lock((this + 80));
  *(this + 13) = a2;

  return pthread_mutex_unlock((this + 80));
}

uint64_t GlobalPNGInfo::setCurrentBufferRowBytes(GlobalPNGInfo *this, int a2)
{
  pthread_mutex_lock((this + 80));
  *(this + 14) = a2;

  return pthread_mutex_unlock((this + 80));
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<fcTL_CHUNK>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x787878787878788)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<fcTL_CHUNK>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xF0F0F0F0F0F0F0F1 * ((v4 - v5) >> 1) >= a2)
  {
    if (a2)
    {
      v10 = 34 * ((34 * a2 - 34) / 0x22) + 34;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 1);
    v7 = v6 + a2;
    if (v6 + a2 > 0x787878787878787)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3C3C3C3C3C3C3C3)
    {
      v9 = 0x787878787878787;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<fcTL_CHUNK>>(a1, v9);
    }

    v11 = 34 * v6;
    v12 = 34 * ((34 * a2 - 34) / 0x22) + 34;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void IIO_Reader_GIF::~IIO_Reader_GIF(IIO_Reader_GIF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

IIOImageRead *IIO_Reader_GIF::createGlobalInfoData(IIO_Reader_GIF *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, *(this + 6));
  if (result)
  {
    v3 = result;
    v4.location = 0;
    v4.length = GlobalGIFInfo::frameCount(result);
    return GlobalGIFInfo::createDataRepresentation(v3, &v4);
  }

  return result;
}

uint64_t IIO_Reader_GIF::parse(IIO_Reader_GIF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5, IIODictionary *a6)
{
  v100 = 0;
  v101[0] = 1;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v10 = IIOSkipMetadata(a3);
  _cg_DGifOpen(a2, gifRead, v101);
  v12 = v11;
  if (!v11)
  {
    v84 = 0;
    v17 = 0;
    v81 = kCGImageStatusIncomplete;
    if (a4)
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v69 = a4;
  v70 = a5;
  v13 = IIOImageReadSession::globalInfoForType(a2, 1195984416);
  context = a6;
  if (!v13)
  {
    operator new();
  }

  v14 = v13;
  if (a6)
  {
    v71 = 0;
    if ((a6 == 0) | v10 & 1)
    {
      FrameCount = 0;
      theSet = 0;
    }

    else
    {
      theSet = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      v71 = 0;
      FrameCount = 0;
    }
  }

  else
  {
    FrameCount = GlobalGIFInfo::lastFrameCount(v13);
    if (FrameCount)
    {
      v16 = IIOImageDestination::resizeImageMaxPixelSize(v14);
      IIOImageReadSession::seek(a2, v16, 0);
    }

    if (*(v14 + 217) == 1)
    {
      v84 = GlobalGIFInfo::frameCount(v14);
      v17 = 0;
      theSet = 0;
      v81 = kCGImageStatusIncomplete;
      goto LABEL_118;
    }

    theSet = 0;
    v71 = 1;
  }

  v82 = 0;
  v74 = 0;
  v18 = 0;
  alloc = *MEMORY[0x1E695E480];
  v81 = kCGImageStatusIncomplete;
  v75 = a2;
  while (1)
  {
    v101[0] = _cg_DGifGetRecordType(v12, &v100);
    if (!v101[0])
    {
      v84 = FrameCount;
      IIO_Reader_GIF::parse(a2);
      goto LABEL_161;
    }

    v19 = v100;
    if (v100 == 2)
    {
      break;
    }

    if (v100 == 3)
    {
      v22 = IIOImageReadSession::seek(a2, 0, 1);
      v101[0] = _cg_DGifGetExtension(v12, &v98, &v99);
      if (!v101[0])
      {
        v84 = FrameCount;
        IIO_Reader_GIF::parse();
        goto LABEL_161;
      }

      v23 = malloc_type_malloc(0, 0x100004077774924uLL);
      if (!v23)
      {
        goto LABEL_113;
      }

      v24 = v23;
      v25 = 0;
      while (v99)
      {
        v26 = *v99;
        v27 = v25 + v26;
        if (__CFADD__(v25, v26))
        {
          v84 = FrameCount;
          v17 = 0;
          goto LABEL_115;
        }

        v28 = reallocf(v24, v25 + v26);
        if (!v28)
        {
          v84 = FrameCount;
          IIO_Reader_GIF::parse();
          goto LABEL_117;
        }

        v24 = v28;
        memcpy(v28 + v25, v99 + 1, *v99);
        v25 = v27;
        v101[0] = _cg_DGifGetExtensionNext(v12, &v99);
        if (!v101[0])
        {
          v84 = FrameCount;
          _cg_jpeg_mem_term("parse", 416, "    GIF-ERROR: DGifGetExtensionNext (%d)\n");
          v17 = -39;
LABEL_115:
          free(v24);
          goto LABEL_118;
        }
      }

      if (v98 == 255)
      {
        if (v25 >= 0xE)
        {
          v50 = strncmp(v24, gNetscape[0], 0xBuLL);
          v51 = v71;
          if (v50)
          {
            v51 = 1;
          }

          if ((v51 & 1) == 0)
          {
            if (v24[6])
            {
              v52 = v24[6] + 1;
            }

            else
            {
              v52 = 0;
            }

            IIONumber::IIONumber(&v91[2], v52);
            IIODictionary::setObjectForKeyGroup(context, &v91[2], @"LoopCount", @"{GIF}");
            IIONumber::~IIONumber(&v91[2]);
          }
        }

        if (v25 >= 0xB && !strncmp(v24, gICCMagic[0], 0xBuLL))
        {
          GlobalGIFInfo::setColorSyncProfileOffset(v14, v22);
        }
      }

      else if (v98 == 254)
      {
        if (theSet)
        {
          v48 = CFStringCreateWithBytes(alloc, v24, v25, 0x600u, 0);
          if (v48)
          {
            v49 = v48;
            CFSetAddValue(theSet, v48);
            CFRelease(v49);
          }
        }
      }

      else if (v98 == 249 && _cg_DGifExtensionToGCB(v25, v24, &v94) == 1)
      {
        v74 = v94;
        v18 = 1;
      }

      free(v24);
      goto LABEL_108;
    }

    if (v100 == 4)
    {
      GlobalGIFInfo::setFinal(v14, 1);
      if (FrameCount != 1)
      {
        goto LABEL_107;
      }

      if (*v12)
      {
        v21 = v12[1];
        v20 = *v12;
        if (v12[16])
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v12[16] || v12[17])
        {
          v20 = 0;
          v21 = 0;
          goto LABEL_104;
        }

        v20 = v12[18];
        v21 = v12[19];
      }

      if (!v12[17] && v20 > v12[18])
      {
        v53 = v12[19];
        if (v21 > v53)
        {
          v20 = v12[18];
        }

        if (v21 >= v53)
        {
          v21 = v12[19];
        }
      }

LABEL_104:
      v81 = kCGImageStatusComplete;
      FrameCount = 1;
      if (v20 != *v12 && v21 != v12[1])
      {
        GlobalGIFInfo::setSize(v14, v20, v21);
LABEL_107:
        v81 = kCGImageStatusComplete;
      }

LABEL_108:
      v19 = v100;
    }

    if (v19 == 4)
    {
      v84 = FrameCount;
      if ((v71 & 1) == 0 && (IIODictionary::containsKeyGroup(context, @"LoopCount", @"{GIF}") & 1) == 0)
      {
        IIONumber::IIONumber(&v91[2], 1);
        IIODictionary::setObjectForKeyGroup(context, &v91[2], @"LoopCount", @"{GIF}");
        IIONumber::~IIONumber(&v91[2]);
      }

      goto LABEL_117;
    }
  }

  v84 = FrameCount;
  v29 = IIOImageReadSession::seek(a2, 0, 1);
  if (v18)
  {
    v30 = v94;
    v31 = v95;
    v32 = WORD2(v95);
    if (HIDWORD(v95) == -1)
    {
      v33 = 8;
    }

    else
    {
      v33 = 10;
    }

    v83 = v33;
    v34 = v82;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = v84;
    v82 = v84;
    v83 = 0;
  }

  v101[0] = _cg_DGifGetImageDesc(v12);
  if (!v101[0])
  {
    IIO_Reader_GIF::parse(a2);
    goto LABEL_161;
  }

  v35 = *(v12 + 6);
  v78 = v29;
  if (v35)
  {
    v77 = *v35;
  }

  else
  {
    LOWORD(v77) = 0;
  }

  v36 = v12[16];
  v37 = v12[17];
  v38 = v12[18];
  v79 = v32;
  v80 = v12[19];
  v39 = v34;
  v40 = !*(v12 + 8) && v38 == *v12 && v80 == v12[1];
  v41 = v84;
  v76 = *(v12 + 40);
  if (v84 >= 2 && !v30 && !v40)
  {
    v93 = 0;
    *&v91[2] = 0u;
    v92 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(&v91[2], v14, v84 - 2);
    v82 = WORD4(v92);
    v39 = SWORD4(v92);
    LOWORD(v30) = 1;
  }

  if (v40)
  {
    if (v84 < 3)
    {
      v42 = 1;
    }

    else
    {
      v93 = 0;
      *&v91[2] = 0u;
      v92 = 0u;
      GlobalGIFInfo::getFrameInfoAtIndex(&v91[2], v14, v84 - 1);
      v42 = BYTE4(v93) ^ 1;
    }

    if ((v83 & 2) == 0 || !((v74 != 2) | v42 & 1))
    {
      v39 = (v84 - 1) & ~((v84 - 1) >> 31);
      v82 = v39;
      v41 = v84;
    }
  }

  Code = _cg_DGifGetCode(v12, &v96, &v97);
  v101[0] = Code;
  if (Code)
  {
    if (!v41 && !v97)
    {
      IIO_Reader_GIF::parse();
      v84 = 0;
      v17 = -50;
      goto LABEL_137;
    }

    v44 = v31;
    if (v97)
    {
      v45 = 255;
      while (1)
      {
        v46 = v45;
        Code = _cg_DGifGetCodeNext(v12, &v97);
        v101[0] = Code;
        if (!Code)
        {
          break;
        }

        v45 = v46 + 255;
        if (!v97)
        {
          goto LABEL_75;
        }
      }

      _cg_GifLastError(v12);
      _cg_jpeg_mem_term("parse", 355, "    GIF-ERROR: DGifGetCodeNext (%d)\n");
      Code = -39;
      v101[0] = -39;
    }

    else
    {
      v46 = 255;
    }

LABEL_75:
    if (!v84)
    {
      GlobalGIFInfo::setSize(v14, *v12, v12[1]);
      Code = v101[0];
    }

    if (Code == 1)
    {
      *&v91[2] = v78;
      *&v91[10] = v36;
      *&v91[12] = v37;
      *&v91[14] = v38;
      *&v91[16] = v80;
      LOWORD(v92) = v30;
      WORD1(v92) = v44;
      DWORD1(v92) = v79;
      DWORD2(v92) = v39;
      HIDWORD(v92) = v77;
      LODWORD(v93) = v46;
      HIDWORD(v93) = v83 | ((4 * v76) | v40);
      GlobalGIFInfo::setFrameInfoAtIndex(v14, &v91[2], v84);
      FrameCount = v84 + 1;
      GlobalGIFInfo::setLastFrameCount(v14, v84 + 1);
      a2 = v75;
      v47 = IIOImageReadSession::seek(v75, 0, 1);
      if (v47 == -1 || (GlobalGIFInfo::setLastImageDescOffset(v14, v47), v101[0] != 1))
      {
LABEL_113:
        v84 = FrameCount;
LABEL_117:
        v17 = 0;
        goto LABEL_118;
      }

      v18 = 0;
    }

    else
    {
      v18 = 0;
      a2 = v75;
      FrameCount = v84;
    }

    goto LABEL_108;
  }

  IIO_Reader_GIF::parse();
LABEL_161:
  v17 = -39;
LABEL_118:
  if (!v84)
  {
LABEL_136:
    v84 = 0;
    goto LABEL_137;
  }

  if (GlobalGIFInfo::frameSizesMatchCanvasSize(v14, *v12, v12[1]))
  {
    goto LABEL_137;
  }

  if (GlobalGIFInfo::frameCount(v14) == 1 && !*v12 && !v12[1])
  {
    v93 = 0;
    *&v91[2] = 0u;
    v92 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(&v91[2], v14, 0);
    if (!(*&v91[10] | *&v91[12]))
    {
      *v12 = *&v91[14];
    }
  }

  _cg_jpeg_mem_term("parse", 531, "canvas size doesn't match frame sizes\n");
  *v91 = 0;
  v88[0] = 0;
  v85[0] = 0;
  GlobalGIFInfo::getMinMaxFrames(v14, &v91[2], v88, v85, v91);
  v54 = *v12 * v12[1];
  v58 = 1;
  if (is_mul_ok(*v12, v12[1]))
  {
    v55 = GlobalGIFInfo::frameCount(v14);
    v56 = v54 * v55;
    v57 = (v54 * v55) >> 64;
    v54 = v56;
    if (!v57)
    {
      v54 = 4 * v56;
      if (!(v56 >> 62))
      {
        v58 = 0;
      }
    }
  }

  v59 = v12[1] * *v12;
  v60 = *v91 * v85[0];
  GlobalGIFInfo::frameCount(v14);
  _cg_jpeg_mem_term("parse", 547, "      count: %d\n");
  _cg_jpeg_mem_term("parse", 548, "canvas size: %d x %d      [%d]\n");
  _cg_jpeg_mem_term("parse", 549, "     memory: %lld\n");
  _cg_jpeg_mem_term("parse", 550, "  max frame: (%d, %d, %d, %d)   [%d]\n");
  if (v58 || v54 >= 0x3B9ACA01)
  {
    v61 = " too much memory\n";
    v62 = 555;
LABEL_135:
    _cg_jpeg_mem_term("parse", v62, v61);
    goto LABEL_136;
  }

  if (v84 >= 0x2711 && v59 > 100 * v60)
  {
    v61 = "framePixel vs. canvasPixel ratio looks suspicious\n";
    v62 = 564;
    goto LABEL_135;
  }

LABEL_137:
  if (context)
  {
    if (*(v12 + 2))
    {
      v63 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v63 = MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKeyGroup(context, *v63, @"HasGlobalColorMap", @"{GIF}");
    IIONumber::IIONumber(&v91[2], *v12);
    IIODictionary::setObjectForKeyGroup(context, &v91[2], @"CanvasPixelWidth", @"{GIF}");
    IIONumber::~IIONumber(&v91[2]);
    IIONumber::IIONumber(v64, v12[1]);
    IIODictionary::setObjectForKeyGroup(context, &v91[2], @"CanvasPixelHeight", @"{GIF}");
    IIONumber::~IIONumber(&v91[2]);
    *v88 = 0;
    v89 = 0;
    v90 = 0;
    IIOArray::IIOArray(v88);
    for (i = 0; i < GlobalGIFInfo::frameCount(v14); ++i)
    {
      v93 = 0;
      *&v91[2] = 0u;
      v92 = 0u;
      GlobalGIFInfo::getFrameInfoAtIndex(&v91[2], v14, i);
      *v85 = 0;
      v86 = 0;
      v87 = 0;
      IIODictionary::IIODictionary(v85);
      IIO_addDelayTimeToDictionary(WORD1(v92), v85, 0);
      IIOArray::addObject(v88, v86);
      IIODictionary::~IIODictionary(v85);
    }

    IIODictionary::setObjectForKeyGroup(context, v89, @"FrameInfo", @"{GIF}");
    if (theSet)
    {
      gCommentIndex = 0;
      CFSetApplyFunction(theSet, GifSetApplier, context);
      CFRelease(theSet);
    }

    IIOArray::~IIOArray(v88);
  }

  a4 = v69;
  a5 = v70;
  if (v69)
  {
LABEL_148:
    *a4 = v81;
  }

LABEL_149:
  if (a5)
  {
    *a5 = v84;
  }

  if (v12)
  {
    _cg_DGifCloseFile(v12, 0);
  }

  if (v17 == -39 && v84 > 1)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

void GifSetApplier(const void *a1, IIODictionary *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v4 = gCommentIndex++;
  snprintf(__str, 0x40uLL, "Comment %d", v4);
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  if (v5)
  {
    v6 = v5;
    IIODictionary::setObjectForKeyGroup(a2, a1, v5, @"{GIF}");
    CFRelease(v6);
  }
}

int8x16_t *SwapKTXHeader(int8x16_t *result)
{
  v1 = result[1].i32[0];
  if (result->i32[3] != 67305985)
  {
    v2 = vrev32q_s8(result[1]);
    v3 = result[3];
    v4 = vrev32q_s8(result[2]);
    result[1] = v2;
    result[2] = v4;
    result[3] = vrev32q_s8(v3);
    v1 = v2.i32[0];
  }

  if (!v1 && !result[1].i32[2] && !result[1].i32[1])
  {
    result[1].i32[1] = 1;
  }

  return result;
}

uint64_t ValidateKTXHeader(_DWORD *a1, unint64_t a2)
{
  v2 = a1[9];
  if (!v2)
  {
    ValidateKTXHeader();
    return 4294967246;
  }

  v5 = a1[4];
  v6 = a1[6];
  if (v5 | v6)
  {
    if (!v5)
    {
      ValidateKTXHeader();
      return 4294967246;
    }

    if (!v6)
    {
      ValidateKTXHeader();
      return 4294967246;
    }

    if (!a1[5])
    {
      ValidateKTXHeader();
      return 4294967246;
    }

    if (!a1[7])
    {
      ValidateKTXHeader();
      return 4294967246;
    }
  }

  else
  {
    if (!a1[7])
    {
      ValidateKTXHeader();
      return 4294967246;
    }

    if (a1[5] != 1)
    {
      LogError("ValidateKTXHeader", 97, "*** ERROR: glTypeSize (%d) must be 1 for compressed textures\n");
      return 4294967246;
    }
  }

  v7 = a1[13];
  if (v7 != 1)
  {
    if (v7 != 6)
    {
      LogError("ValidateKTXHeader", 114, "*** ERROR: numberOfFaces (%d) must be 1 or 6 (cubemap)\n");
      return 4294967246;
    }

    if (v2 != a1[10])
    {
      _cg_jpeg_mem_term("ValidateKTXHeader", 120, "*** NOTE: Cubemap faces should be square");
    }

    if (a1[11])
    {
      ValidateKTXHeader();
      return 4294967246;
    }
  }

  if (a1[14])
  {
    v8 = a1[15];
    if (v8)
    {
      if (v8 + 64 > a2)
      {
        ValidateKTXHeader();
        return 4294967246;
      }

      if ((v8 & 3) != 0)
      {
        _cg_jpeg_mem_term("ValidateKTXHeader", 135, "*** NOTE: Key-value data size not aligned to 4 bytes");
        LODWORD(v8) = a1[15];
      }
    }

    if (v8 + 64 < a2)
    {
      return 0;
    }

    ValidateKTXHeader();
  }

  else
  {
    ValidateKTXHeader();
  }

  return 4294967246;
}

void iio_jpeg_Free(void *a1, void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL iioWriteCallback(void *__ptr, int a2, IIOImageWriteSession *this)
{
  v4 = IIOImageWriteSession::putBytes(this, __ptr, a2);
  if (v4 != a2)
  {
    _cg_jpeg_mem_term("iioWriteCallback", 114, "wrote %ld bytes (expected: %ld)\n");
  }

  return v4 != a2;
}

uint64_t JPEGReadPlugin::loadDataFromXPCObject(JPEGReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_jpeg", &length);
    if (length == 56)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(this + 65) = *(v6 + 6);
      *(this + 488) = v8;
      *(this + 504) = v9;
      *(this + 472) = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t JPEGReadPlugin::saveDataToXPCObject(JPEGReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_jpeg", this + 472, 0x38uLL);
  }

  return v4;
}

CFTypeRef JPEGReadPlugin::useNamedColorSpace(JPEGReadPlugin *this, CFTypeRef cf)
{
  v4 = *(this + 58);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFRetain(cf);
  *(this + 58) = result;
  return result;
}

CFDataRef JPEGWritePlugin::createLumaQuantizationTableFromImageIOQuality(JPEGWritePlugin *this, float a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a2 >= 0.9944)
  {
    *&v10 = 0x101010101010101;
    *(&v10 + 1) = 0x101010101010101;
    v14 = v10;
    v15 = v10;
    v12 = v10;
    v13 = v10;
  }

  else
  {
    v3 = 0.0;
    v4 = fminf(fmaxf(a2, 0.0), 1.0);
    if (v4 < 0.9944)
    {
      v3 = 200.0 / (v4 * 32.0 * v4 * v4 + 1.0);
    }

    for (i = 0; i != 64; ++i)
    {
      v6 = i;
      if (a3)
      {
        v6 = jpeg_zigzag_order[i];
      }

      v7 = ((v3 * JPEGWritePlugin::createLumaQuantizationTableFromImageIOQuality(float,BOOL)::std_luma_quant_tbl[i]) / 100.0) + 0.5;
      if (v7 <= 255.0)
      {
        v8 = ((v3 * JPEGWritePlugin::createLumaQuantizationTableFromImageIOQuality(float,BOOL)::std_luma_quant_tbl[i]) / 100.0) + 0.5;
      }

      else
      {
        v8 = 255.0;
      }

      if (v7 >= 1.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = i;
      }

      *(&v12 + v6) = v9;
    }
  }

  return CFDataCreate(*MEMORY[0x1E695E480], &v12, 64);
}

CFDataRef JPEGWritePlugin::createChromaQuantizationTableFromImageIOQuality(JPEGWritePlugin *this, float a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a2 >= 0.9944)
  {
    *&v10 = 0x101010101010101;
    *(&v10 + 1) = 0x101010101010101;
    v14 = v10;
    v15 = v10;
    v12 = v10;
    v13 = v10;
  }

  else
  {
    v3 = 0.0;
    v4 = fminf(fmaxf(a2, 0.0), 1.0);
    if (v4 < 0.9944)
    {
      v3 = 200.0 / (v4 * 32.0 * v4 * v4 + 1.0);
    }

    for (i = 0; i != 64; ++i)
    {
      v6 = i;
      if (a3)
      {
        v6 = jpeg_zigzag_order[i];
      }

      v7 = ((v3 * JPEGWritePlugin::createChromaQuantizationTableFromImageIOQuality(float,BOOL)::std_chroma_quant_tbl[i]) / 100.0) + 0.5;
      if (v7 <= 255.0)
      {
        v8 = ((v3 * JPEGWritePlugin::createChromaQuantizationTableFromImageIOQuality(float,BOOL)::std_chroma_quant_tbl[i]) / 100.0) + 0.5;
      }

      else
      {
        v8 = 255.0;
      }

      if (v7 >= 1.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = i;
      }

      *(&v12 + v6) = v9;
    }
  }

  return CFDataCreate(*MEMORY[0x1E695E480], &v12, 64);
}

char *JPEGWritePlugin::CreateExtendedXMPMarkerData(JPEGWritePlugin *this, const __CFData *a2, unsigned int a3, const __CFData *a4, const __CFData *a5, unint64_t *a6)
{
  v9 = a2;
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  v13 = malloc_type_calloc(1uLL, Length + 75, 0x100004077774924uLL);
  v14 = v13;
  if (v13)
  {
    qmemcpy(v13, "http://ns.adobe.com/xmp/extension/", 34);
    v15 = CFDataGetBytePtr(a4);
    v16 = *(v15 + 1);
    *(v14 + 35) = *v15;
    *(v14 + 51) = v16;
    *(v14 + 67) = bswap32(v9);
    *(v14 + 71) = bswap32(a3);
    memcpy(v14 + 75, BytePtr, Length);
    *a5 = Length + 75;
  }

  return v14;
}

uint64_t JPEGWritePlugin::WriteIPTCData(JPEGWritePlugin *this, IIOImageWriteSession *a2, IIOImagePixelDataProvider *a3, IIODictionary *a4)
{
  v15 = 0;
  if (a3)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"{IPTC}");
    if (ObjectForKey)
    {
      v7 = CFGetTypeID(ObjectForKey);
      if (v7 == CFDictionaryGetTypeID())
      {
        operator new();
      }
    }

    if (IIODictionary::getCount(a3))
    {
      v8 = IIODictionary::containsKeyGroup(a3, @"ColorSpace", @"{Exif}");
      if (v8)
      {
        LOBYTE(v8) = IIODictionary::getUint32ForKeyGroup(a3, @"ColorSpace", @"{Exif}") == 1;
      }

      v9 = CreateIPTCDataFromProperties(v8, 0, &v15);
      if (v9 && v15)
      {
        v10 = v9;
        __ptr = -4609;
        __ptr_2 = (v15 + 2) >> 8;
        __ptr_3 = v15 + 2;
        iioWriteCallback(&__ptr, 4, this);
        iioWriteCallback(v10, v15, this);
        free(v10);
      }
    }
  }

  return 0;
}

uint64_t JPEGWritePlugin::WriteExtendedXMPData(JPEGWritePlugin *this, IIOImageWriteSession *a2, IIODictionary *a3)
{
  cf = 0;
  theData = 0;
  v31 = 0;
  if (this && a2)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"{MetaData}");
    if (ObjectForKey)
    {
      v6 = ObjectForKey;
      CFRetain(ObjectForKey);
    }

    else
    {
      v6 = CGImageMetadataCreateFromLegacyProps(a2);
    }

    if (CGImageMetadataCreateExtendedXMPWithEXIFFiltered(v6, &theData, &cf, &v31, 1246774599, 0))
    {
      v8 = theData;
      if (theData)
      {
        Length = CFDataGetLength(theData);
        v8 = theData;
        if (Length >= 65501)
        {
          v10 = CFDataGetLength(theData);
          LogError("WriteExtendedXMPData", 647, "xmpData size exceeds 64KB limit (%ld)\n", v10);
          CFRelease(theData);
          theData = 0;
          if (v6)
          {
            CFRelease(v6);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          goto LABEL_32;
        }
      }

      v27 = v6;
      __ptr = 57855;
      v29 = 0;
      XMPMarkerData = JPEGWritePlugin::CreateXMPMarkerData(v8, &v29, v7);
      if (XMPMarkerData)
      {
        v12 = XMPMarkerData;
        v13 = v29;
        HIWORD(__ptr) = bswap32(v29 + 2) >> 16;
        iioWriteCallback(&__ptr, 4, this);
        iioWriteCallback(v12, v13, this);
        free(v12);
      }

      if (cf)
      {
        if (v31)
        {
          v14 = CFDataGetLength(cf);
          BytePtr = CFDataGetBytePtr(cf);
          if (v14 >= 1)
          {
            v16 = BytePtr;
            v17 = 0;
            v18 = *MEMORY[0x1E695E480];
            v19 = v14;
            do
            {
              if (v19 >= 65000)
              {
                v20 = 65000;
              }

              else
              {
                v20 = v19;
              }

              v21 = CFDataCreate(v18, &v16[v17], v20);
              v28 = 0;
              ExtendedXMPMarkerData = JPEGWritePlugin::CreateExtendedXMPMarkerData(v21, v14, v17, v31, &v28, v22);
              if (ExtendedXMPMarkerData)
              {
                v24 = ExtendedXMPMarkerData;
                v25 = v28;
                HIWORD(__ptr) = bswap32(v28 + 2) >> 16;
                iioWriteCallback(&__ptr, 4, this);
                iioWriteCallback(v24, v25, this);
                free(v24);
              }

              CFRelease(v21);
              v17 += 65000;
              v19 -= 65000;
            }

            while (v17 < v14);
          }
        }
      }

      v6 = v27;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  if (v31)
  {
    CFRelease(v31);
  }

  return 0;
}

char *JPEGWritePlugin::CreateXMPMarkerData(JPEGWritePlugin *this, const __CFData *a2, unint64_t *a3)
{
  v5 = CFDataGetLength(this) + 29;
  v6 = malloc_type_calloc(1uLL, v5, 0x100004077774924uLL);
  v7 = v6;
  if (v6)
  {
    qmemcpy(v6, "http://ns.adobe.com/xap/1.0/", 28);
    BytePtr = CFDataGetBytePtr(this);
    Length = CFDataGetLength(this);
    memcpy(v7 + 29, BytePtr, Length);
    *a2 = v5;
  }

  return v7;
}

uint64_t JPEGWritePlugin::getEncodingHorizontalSubsamplingFactor(JPEGWritePlugin *this, IIODictionary *a2)
{
  ImageIOCompressionQuality = JPEGWritePlugin::GetImageIOCompressionQuality(a2, a2);
  v4 = @"ChromaSubsamplingX";
  if (IIODictionary::containsKeyGroup(a2, @"ChromaSubsamplingX", @"{JPEG}"))
  {
    LODWORD(result) = IIODictionary::getUint32ForKeyGroup(a2, @"ChromaSubsamplingX", @"{JPEG}");
  }

  else if (IIODictionary::containsKey(a2, @"ChromaSubsamplingX") || (v4 = @"kCGImageDestinationChromaSubSamplingX", LODWORD(result) = IIODictionary::containsKey(a2, @"kCGImageDestinationChromaSubSamplingX"), result))
  {
    LODWORD(result) = IIODictionary::getUint32ForKey(a2, v4);
  }

  if (ImageIOCompressionQuality >= 0.9944)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if ((result - 1) >= 2)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

float JPEGWritePlugin::GetImageIOCompressionQuality(JPEGWritePlugin *this, IIODictionary *a2)
{
  v3 = IIODictionary::containsKey(this, @"kCGImageDestinationLossyCompressionQuality");
  result = 0.75;
  if (v3)
  {
    result = IIODictionary::getFloatForKey(this, @"kCGImageDestinationLossyCompressionQuality");
  }

  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t JPEGWritePlugin::getEncodingVerticalSubsamplingFactor(JPEGWritePlugin *this, IIODictionary *a2)
{
  ImageIOCompressionQuality = JPEGWritePlugin::GetImageIOCompressionQuality(a2, a2);
  v4 = @"ChromaSubsamplingY";
  if (IIODictionary::containsKeyGroup(a2, @"ChromaSubsamplingY", @"{JPEG}"))
  {
    LODWORD(result) = IIODictionary::getUint32ForKeyGroup(a2, @"ChromaSubsamplingY", @"{JPEG}");
  }

  else if (IIODictionary::containsKey(a2, @"ChromaSubsamplingY") || (v4 = @"kCGImageDestinationChromaSubSamplingY", LODWORD(result) = IIODictionary::containsKey(a2, @"kCGImageDestinationChromaSubSamplingY"), result))
  {
    LODWORD(result) = IIODictionary::getUint32ForKey(a2, v4);
  }

  if (ImageIOCompressionQuality >= 0.9944)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if ((result - 1) >= 2)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t JPEGWritePlugin::JPEGQualityFromLossyCompressionQuality(JPEGWritePlugin *this, float a2)
{
  v2 = 0.0;
  v3 = fminf(fmaxf(a2, 0.0), 1.0);
  if (v3 < 0.9944 && (v2 = 200.0 / (v3 * 32.0 * v3 * v3 + 1.0), v2 >= 100.0))
  {
    v4 = 5000.0 / v2;
  }

  else
  {
    v4 = (200.0 - v2) * 0.5;
  }

  v5 = v4 & ~(v4 >> 31);
  if (v5 >= 100)
  {
    return 100;
  }

  else
  {
    return v5;
  }
}

void CGImagePluginInitThumbJPEGAtOffsetWithOptions(uint64_t a1, IIOImageReadSession *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  IIOInitDebugFlags(a1, a2);
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v17[0] = 0;
    asprintf(v17, "offset:%ld  size:%ld", a2, a3);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImagePluginInitThumbJPEGAtOffsetWithOptions", 0, v17[0], -1, a5);
    }

    free(v17[0]);
  }

  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a5);
  if (IIODictionary::containsKey(v17, @"kCGImageSourceCreateThumbnailFromImageAlways"))
  {
    IIODictionary::getBoolForKey(v17, @"kCGImageSourceCreateThumbnailFromImageAlways");
  }

  if (IIODictionary::containsKey(v17, @"kCGImageSourceCreateThumbnailFromImageIfAbsent"))
  {
    IIODictionary::getBoolForKey(v17, @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
  }

  if (IIODictionary::containsKey(v17, @"kCGImageSourceCreateThumbnailWithTransform"))
  {
    IIODictionary::getBoolForKey(v17, @"kCGImageSourceCreateThumbnailWithTransform");
  }

  IIODictionary::getUint32ForKey(v17, @"Orientation");
  IIODictionary::getUint32ForKeyGroup(v17, @"Orientation", @"{TIFF}");
  if (IIODictionary::containsKey(v17, @"kCGImageSourceSubsampleFactor"))
  {
    IIODictionary::getUint32ForKey(v17, @"kCGImageSourceSubsampleFactor");
  }

  if (IIODictionary::containsKey(v17, @"kCGImageSourceDecodeRequest"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v17, @"kCGImageSourceDecodeRequest");
    if (CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToHDR", 0))
    {
      CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToSDR", 0);
    }

    if (IIODictionary::containsKeyGroup(v17, @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions"))
    {
      IIODictionary::getBoolForKeyGroup(v17, @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions");
    }
  }

  if (!IIODictionary::getUint32ForKey(v17, @"kCGImageSourceThumbnailMaxPixelSize"))
  {
    IIODictionary::getUint32ForKey(v17, @"kCGImageDestinationImageMaxPixelSize");
  }

  kdebug_trace();
  v10 = IIODictionary::getObjectForKey(v17, @"NamedColorSpace");
  if (a1)
  {
    v11 = *(a1 + 24);
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = 0;
    if (!a2)
    {
LABEL_26:
      _cg_jpeg_mem_term("CGImagePluginInitThumbJPEGAtOffsetWithOptions", 966, "*** ERROR: CGImagePluginInitThumbJPEGAtOffsetWithOptions is called with offset: %ld   size: %ld\n");
LABEL_27:
      if (IIO_ReaderHandler::UseAppleJPEG(v10))
      {
        if (v11)
        {
          Options = IIOImagePlus::getOptions(v11);
          v13 = Options;
          if (Options)
          {
            if (IIODictionary::containsKey(Options, @"kCGImageSourceDecodeRequest"))
            {
              v14 = IIO_Reader::testHeaderSize(v11);
              if (IIO_Reader_AppleJPEG::HasGainMapAtOffset(v14, a2))
              {
                v15 = IIODictionary::getObjectForKey(v13, @"kCGImageSourceDecodeRequest");
                v16 = v15;
                if (v15)
                {
                  CFStringCompare(v15, @"kCGImageSourceDecodeToSDR", 0);
                  CFStringCompare(v16, @"kCGImageSourceDecodeToHDR", 0);
                }

                _cg_jpeg_mem_term("CGImagePluginInitThumbJPEGAtOffsetWithOptions", 988, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'    '%s%s'\n");
                kdebug_trace();
                if (v14)
                {
                  IIO_Reader_HEIF::CreateGlobalHEIFInfoIfNeeded(v14, a2, a3);
                }

                operator new();
              }
            }
          }
        }

        _cg_jpeg_mem_term("CGImagePluginInitThumbJPEGAtOffsetWithOptions", 1001, "    AppleJPEGReadPlugin - offset: %ld   size: %d\n");
        operator new();
      }

      operator new();
    }
  }

  if (a3)
  {
    goto LABEL_27;
  }

  goto LABEL_26;
}

void sub_185FF2588(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FF2420);
}

void sub_185FF260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImagePluginInitJPEGAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImagePluginInitJPEGAtOffset", 0, 0, -1, 0);
  }

  v9 = kdebug_trace();
  if (IIO_ReaderHandler::UseAppleJPEG(v9) && v8 != 1095389255 && v8 != 1279869514)
  {
    operator new();
  }

  operator new();
}

void sub_185FF2878(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FF27C0);
}

void IIOPixelProvider::IIOPixelProvider(IIOPixelProvider *this, CGImageRef image, const vImage_CGImageFormat *a3, IIODictionary *a4)
{
  *this = &unk_1EF4D5A10;
  *(this + 1) = image;
  *(this + 13) = CGImageGetWidth(image);
  *(this + 14) = CGImageGetHeight(*(this + 1));
  v6 = *&a3->renderingIntent;
  v7 = *&a3->bitmapInfo;
  *(this + 7) = *&a3->bitsPerComponent;
  *(this + 8) = v7;
  *(this + 18) = v6;
  operator new();
}

void IIOPixelProvider::setupSrcFormat(IIOPixelProvider *this)
{
  ImageProvider = CGImageGetImageProvider();
  *(this + 2) = ImageProvider;
  if (ImageProvider)
  {
    v3 = IIO_CGImageWrapsIOSurface(*(this + 1), 1);
    if (*(this + 177) == 1 && v3 != 0)
    {
      *(this + 58) = 1;
      IIOPixelProvider::setupSrcFormatUsingIOSurface(this);
      goto LABEL_10;
    }

    *(this + 2) = 0;
    *(this + 3) = CGImageGetDataProvider(*(this + 1));
    *(this + 58) = 3;
  }

  else
  {
    *(this + 58) = 3;
    *(this + 3) = CGImageGetDataProvider(*(this + 1));
  }

  IIOPixelProvider::setupSrcFormatUsingDataProvider(this);
LABEL_10:
  v5 = *(this + 43);
  if (v5 <= (*(this + 13) * *(this + 29)) >> 3)
  {
    v6 = (*(this + 13) * *(this + 29)) >> 3;
  }

  else
  {
    v6 = *(this + 43);
  }

  if (!v5)
  {
    v6 = (*(this + 13) * *(this + 29)) >> 3;
  }

  *(this + 41) = v6;
  if (!v6)
  {
    LogError("setupSrcFormat", 115, "*** invalid _dstRowBytes (0)\n");
  }

  v7 = CGColorSpaceUsesITUR_2100TF(*(this + 10));
  v8 = CGColorSpaceUsesExtendedRange(*(this + 10));
  CGColorSpaceUsesITUR_2100TF(*(this + 15));
  v9 = CGColorSpaceUsesExtendedRange(*(this + 15));
  if (v7 && v9 && (*(this + 129) & 1) != 0)
  {
    if (IIOPixelProvider::createImageConverter(this))
    {
      *(this + 181) = 1;
    }
  }

  else
  {
    v10 = *(this + 22);
    if ((v10 & 0xF0000) == 0x30000)
    {
      if (CGColorSpaceContainsFlexGTCInfo())
      {
        _cg_jpeg_mem_term("setupSrcFormat", 137, "*** NOTE: RGB101010 with FlexGTC detected - using CoreGraphics workaround for HDR\n");
        *(this + 183) = 1;
      }

      else
      {
        *(this + 182) = 1;
      }
    }

    else if ((v10 & 0x100) != 0)
    {
      v11 = *(this + 18);
      if ((v11 == 32 || v11 == 16) && v8)
      {
        *(this + 184) = 1;
      }
    }
  }
}

void IIOPixelProvider::~IIOPixelProvider(IIOPixelProvider *this)
{
  *this = &unk_1EF4D5A10;
  if (*(this + 4))
  {
    CGAccessSessionRelease();
  }

  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    vImageConverter_Release(v4);
  }
}

{
  IIOPixelProvider::~IIOPixelProvider(this);

  JUMPOUT(0x186602850);
}

size_t IIOPixelProvider::setupSrcFormatUsingDataProvider(IIOPixelProvider *this)
{
  *(this + 18) = CGImageGetBitsPerComponent(*(this + 1));
  *(this + 19) = CGImageGetBitsPerPixel(*(this + 1));
  *(this + 10) = CGImageGetColorSpace(*(this + 1));
  *(this + 22) = CGImageGetBitmapInfo(*(this + 1));
  *(this + 12) = CGImageGetDecode(*(this + 1));
  *(this + 26) = CGImageGetRenderingIntent(*(this + 1));
  *(this + 23) = 0;
  *(this + 42) = *(this + 19) / *(this + 18);
  result = CGImageGetBytesPerRow(*(this + 1));
  *(this + 40) = result;
  return result;
}

uint64_t IIOPixelProvider::setupSrcFormatUsingIOSurface(IIOPixelProvider *this)
{
  v2 = CGImageProviderCopyIOSurface();
  *(this + 5) = v2;
  if (v2)
  {
    result = IOSurfaceGetPixelFormat(v2);
    *(this + 12) = result;
  }

  else
  {

    return IIOPixelProvider::setupSrcFormatUsingImageProvider(this);
  }

  return result;
}

vImage_Error IIOPixelProvider::createImageConverter(IIOPixelProvider *this)
{
  if (*(this + 19))
  {
    return 0;
  }

  error = 0;
  v3 = vImageConverter_CreateWithCGImageFormat((this + 72), (this + 112), this + 24, 0x100u, &error);
  *(this + 19) = v3;
  v1 = error;
  if (error)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("createImageConverter", 239, "*** ERROR: vImageConverter_CreateWithCGImageFormat failed [%ld] '%s'\n");
  }

  return v1;
}

uint64_t IIOPixelProvider::setupSrcFormatUsingImageProvider(IIOPixelProvider *this)
{
  v2 = CGImageProviderGetComponentType() - 1;
  if (v2 <= 4)
  {
    *(this + 18) = *&asc_186209D18[4 * v2];
  }

  *(this + 19) = 8 * CGImageProviderGetPixelSize();
  *(this + 10) = CGImageProviderGetColorSpace();
  *(this + 22) = CGImageGetBitmapInfo(*(this + 1));
  *(this + 12) = CGImageGetDecode(*(this + 1));
  result = CGImageGetRenderingIntent(*(this + 1));
  *(this + 26) = result;
  *(this + 23) = 0;
  *(this + 42) = *(this + 19) / *(this + 18);
  return result;
}

vImage_Error IIOPixelProvider::convertRGB101010Buffer(IIOPixelProvider *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  *permuteMap = 197121;
  v4 = *(this + 28);
  v3 = *(this + 29);
  if (v4 == 16)
  {
    if (v3 == 48)
    {
      return iio_convert_XRGB2101010ToRGB16U(a2, a3, 0);
    }

    if (v3 == 64)
    {
      return vImageConvert_XRGB2101010ToARGB16U(a2, 0xFFFFu, a3, 0, 1023, permuteMap, 0);
    }

    LogError("convertRGB101010Buffer", 285, "*** convertRGB101010Buffer: Unsupported 16-bit destination format bpp: %d\n");
  }

  else if (v4 == 8)
  {
    if (v3 == 24)
    {
      return iioConvert_XRGB2101010ToRGB888(a2, 0xFFu, a3, 0, 1023, permuteMap, 0);
    }

    if (v3 == 32)
    {
      return vImageConvert_XRGB2101010ToARGB8888(a2, 0xFFu, a3, 0, 1023, permuteMap, 0);
    }

    LogError("convertRGB101010Buffer", 267, "*** convertRGB101010Buffer: Unsupported 8-bit destination format bpp: %d\n");
  }

  else
  {
    LogError("convertRGB101010Buffer", 291, "*** convertRGB101010Buffer: Unsupported destination format bpc: %d bpp: %d\n");
  }

  return 4294967246;
}

vImage_Error IIOPixelProvider::convertRGB101010BufferUsingCGContext(IIOPixelProvider *this, vImage_Buffer *a2, vImage_Buffer *a3, unsigned int a4)
{
  v8 = *(this + 28);
  v7 = *(this + 29);
  if (v7 == 24)
  {
    v9 = 6;
    v10 = 32;
    goto LABEL_5;
  }

  if (v7 == 48)
  {
    v9 = 4102;
    v10 = 64;
LABEL_5:
    v11 = (a3->width * v10) >> 3;
    data = malloc_type_malloc(v11 * a3->height, 0xA35113CBuLL);
    if (!data)
    {
      IIOPixelProvider::convertRGB101010BufferUsingCGContext();
      return 4294967188;
    }

    width = a3->width;
    v14 = 1;
    v15 = data;
    rowBytes = v11;
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0;
  v9 = *(this + 32);
  width = a3->width;
  rowBytes = a3->rowBytes;
  v11 = (width * (4 * v8) + 7) >> 3;
  data = a3->data;
LABEL_8:
  v17 = CGBitmapContextCreate(data, width, a3->height, v8, rowBytes, *(this + 15), v9);
  if (!v17)
  {
    LogError("convertRGB101010BufferUsingCGContext", 347, "*** ERROR: CGBitmapContextCreate failed for HDR RGB101010 (size: %dx%d rb: %d bpc: %d bmi: 0x%08X)\n", a3->width, a3->height, rowBytes, v8, v9);
    v28 = 4294967292;
    if (!v15)
    {
      return v28;
    }

    goto LABEL_20;
  }

  v19 = v17;
  height = a3->height;
  v21 = *(this + 14);
  if (height == v21)
  {
    LODWORD(v18) = *(this + 13);
    v32.size.width = v18;
    v32.size.height = v21;
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    CGContextDrawImage(v17, v32, *(this + 1));
  }

  else
  {
    v33.origin.y = a4;
    LODWORD(v18) = *(this + 13);
    v33.size.width = v18;
    v33.size.height = height;
    v33.origin.x = 0.0;
    v22 = CGImageCreateWithImageInRect(*(this + 1), v33);
    if (!v22)
    {
      IIOPixelProvider::convertRGB101010BufferUsingCGContext();
      goto LABEL_28;
    }

    v23 = v22;
    v34.size.width = a3->width;
    v34.size.height = a3->height;
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    CGContextDrawImage(v19, v34, v22);
    CGImageRelease(v23);
  }

  CGContextFlush(v19);
  if (!v14)
  {
    goto LABEL_18;
  }

  v25 = a3->data;
  v24 = a3->height;
  argbSrc.data = v15;
  argbSrc.height = v24;
  v26 = a3->rowBytes;
  argbSrc.width = a3->width;
  argbSrc.rowBytes = v11;
  rgbDest.data = v25;
  rgbDest.height = v24;
  rgbDest.width = argbSrc.width;
  rgbDest.rowBytes = v26;
  v27 = *(this + 28);
  if (v27 == 16)
  {
    v28 = vImageConvert_ARGB16UtoRGB16U(&argbSrc, &rgbDest, 0);
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (v27 != 8)
  {
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v28 = vImageConvert_ARGB8888toRGB888(&argbSrc, &rgbDest, 0);
  _cg_jpeg_mem_term("convertRGB101010BufferUsingCGContext", 378, "*** HDR RGB101010: ARGB8888->RGB888 conversion result: %ld\n");
  if (!v28)
  {
    goto LABEL_19;
  }

LABEL_23:
  IIOPixelProvider::convertRGB101010BufferUsingCGContext(v28);
LABEL_28:
  v28 = 4294967292;
LABEL_19:
  CGContextRelease(v19);
  if (v15)
  {
LABEL_20:
    free(v15);
  }

  return v28;
}

uint64_t IIOPixelProvider::convertFloatHDRBufferUsingCGContext(IIOPixelProvider *this, vImage_Buffer *a2, vImage_Buffer *a3, unsigned int a4)
{
  v41 = 0;
  v42 = 0;
  IIOColorSpace::IIOColorSpace(&v41, *MEMORY[0x1E695F1C0]);
  v7 = *(this + 32);
  v8 = *(this + 28);
  v37 = *(this + 29);
  v33 = *(this + 18);
  v35 = *(this + 19);
  _cg_jpeg_mem_term("convertFloatHDRBufferUsingCGContext", 421, "*** Float HDR conversion: src bpc=%d bpp=%d dst bpc=%d bpp=%d\n");
  v9 = *(this + 29);
  if (v9 == 24)
  {
    v10 = 32;
    goto LABEL_5;
  }

  if (v9 != 48)
  {
    if ((v7 & 3) != 0)
    {
      v18 = 1;
    }

    else
    {
      if ((v7 & 4) == 0)
      {
LABEL_12:
        v16 = 0;
        v38 = 0;
        width = a3->width;
        rowBytes = a3->rowBytes;
        v12 = (width * (4 * v8) + 7) >> 3;
        data = a3->data;
        goto LABEL_13;
      }

      v18 = 2;
    }

    v7 = *(this + 32) & 0x7000 | v18;
    goto LABEL_12;
  }

  v10 = 64;
LABEL_5:
  v11 = *(this + 32);
  v12 = (a3->width * v10) >> 3;
  v13 = malloc_type_malloc(v12 * a3->height, 0x921698A4uLL);
  data = v13;
  if (!v13)
  {
    LogError("convertFloatHDRBufferUsingCGContext", 450, "*** ERROR: Failed to allocate temp buffer for Float HDR conversion\n", v33, v35, v8, v37);
    v30 = 4294967188;
    goto LABEL_34;
  }

  v7 = v11 & 0x7000 | 5u;
  width = a3->width;
  v16 = 1;
  v38 = v13;
  rowBytes = v12;
LABEL_13:
  height = a3->height;
  v34 = width;
  _cg_jpeg_mem_term("convertFloatHDRBufferUsingCGContext", 458, "*** Creating Float HDR CG context: %dx%d bpc=%d rb=%d bmi=0x%08X\n");
  v19 = *(this + 15);
  if (CGColorSpaceUsesExtendedRange(v19))
  {
    v20 = v42;
  }

  else
  {
    v20 = v19;
  }

  v21 = CGBitmapContextCreate(data, a3->width, a3->height, v8, rowBytes, v20, v7);
  if (v21)
  {
    CGImageGetContentHeadroom();
    if (*&v22 == 0.0)
    {
      rgbDest.data = 0;
      if (!CGImageComputeImageStatistics(*(this + 1), 0, &rgbDest.data))
      {
        IIODictionary::IIODictionary(&argbSrc, rgbDest.data);
        IIODictionary::getFloatForKey(&argbSrc, @"kCGContentHeadroom");
        IIODictionary::~IIODictionary(&argbSrc);
        CGImageSetHeadroom();
      }
    }

    v23 = a3->height;
    if (v23 == *(this + 14))
    {
      CGContextDrawImageApplyingToneMapping();
    }

    else
    {
      v43.origin.y = a4;
      LODWORD(v22) = *(this + 13);
      v43.size.width = v22;
      v43.size.height = v23;
      v43.origin.x = 0.0;
      v24 = CGImageCreateWithImageInRect(*(this + 1), v43);
      if (!v24)
      {
        LogError("convertFloatHDRBufferUsingCGContext", 490, "*** ERROR: CGImageCreateWithImageInRect failed for Float HDR conversion\n", v34, height, v8, rowBytes, v7);
        goto LABEL_39;
      }

      CGContextDrawImageApplyingToneMapping();
      CGImageRelease(v24);
    }

    CGContextFlush(v21);
    if (v16)
    {
      v26 = a3->data;
      v25 = a3->height;
      argbSrc.data = v38;
      argbSrc.height = v25;
      v27 = a3->rowBytes;
      argbSrc.width = a3->width;
      argbSrc.rowBytes = v12;
      rgbDest.data = v26;
      rgbDest.height = v25;
      rgbDest.width = argbSrc.width;
      rgbDest.rowBytes = v27;
      v28 = *(this + 28);
      if (v28 == 16)
      {
        v29 = vImageConvert_ARGB16UtoRGB16U(&argbSrc, &rgbDest, 0);
        _cg_jpeg_mem_term("convertFloatHDRBufferUsingCGContext", 519, "*** Float HDR: ARGB16U->RGB16U conversion result: %ld\n");
        goto LABEL_29;
      }

      if (v28 == 8)
      {
        v29 = vImageConvert_ARGB8888toRGB888(&argbSrc, &rgbDest, 0);
        _cg_jpeg_mem_term("convertFloatHDRBufferUsingCGContext", 513, "*** Float HDR: ARGB8888->RGB888 conversion result: %ld\n");
LABEL_29:
        if (!v29)
        {
          goto LABEL_30;
        }

        v32 = IIO_vImageErrorString(v29);
        LogError("convertFloatHDRBufferUsingCGContext", 522, "*** ERROR: Float HDR ARGB to RGB conversion failed: '%s'\n", v32);
LABEL_39:
        v30 = 4294967292;
        goto LABEL_31;
      }
    }

LABEL_30:
    v30 = 0;
LABEL_31:
    CGContextRelease(v21);
    goto LABEL_32;
  }

  LogError("convertFloatHDRBufferUsingCGContext", 469, "*** ERROR: CGBitmapContextCreate failed for Float HDR (size: %dx%d rb: %d bpc: %d bmi: 0x%08X)\n", a3->width, a3->height, rowBytes, v8, v7);
  v30 = 4294967292;
LABEL_32:
  if (v38)
  {
    free(v38);
  }

LABEL_34:
  IIOColorSpace::~IIOColorSpace(&v41);
  return v30;
}

void sub_185FF3638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIOColorSpace::~IIOColorSpace(va1);
  _Unwind_Resume(a1);
}

vImage_Error IIOPixelProvider::iterateOverImage(IIOPixelProvider *this, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v32[0] = 0;
  if (*(this + 14) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(this + 14);
  }

  if (v5 < a2)
  {
    return 4294967246;
  }

  LODWORD(v8) = a4;
  v9 = a2;
  srcs.height = 0;
  memset(&dests, 0, sizeof(dests));
  if ((*(this + 181) & 1) != 0 || (*(this + 182) & 1) != 0 || (*(this + 183) & 1) != 0 || (*(this + 184) & 1) != 0 || *(this + 19))
  {
    ImageConverter = 4294967246;
  }

  else
  {
    ImageConverter = IIOPixelProvider::createImageConverter(this);
    if (!*(this + 19))
    {
      ImageIOLog("*** could not create vImageConverter\n");
      return ImageConverter;
    }
  }

  v11 = malloc_type_malloc((*(this + 40) * v8), 0x31F6D320uLL);
  v12 = *(this + 13);
  srcs.data = v11;
  v13 = *(this + 40);
  srcs.width = v12;
  srcs.rowBytes = v13;
  if ((*(this + 178) & 1) == 0)
  {
    v14 = malloc_type_malloc((*(this + 41) * v8), 0x6FC3662AuLL);
    v15 = *(this + 13);
    dests.data = v14;
    v16 = *(this + 41);
    dests.width = v15;
    dests.rowBytes = v16;
  }

  if (*(this + 181) == 1)
  {
    v17 = CGColorConversionInfoCreateWithOptions(*(this + 10), *(this + 15), 0);
    if (!v17)
    {
      return 4294967246;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v5 <= v9)
  {
LABEL_42:
    if (!v18)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  while (1)
  {
    if (v9 + v8 <= v5)
    {
      v8 = v8;
    }

    else
    {
      v8 = v5 - v9;
    }

    srcs.height = v8;
    v19 = IIOPixelProvider::fillSourceBuffer(this, v9, &srcs);
    if (v19)
    {
      ImageConverter = v19;
      v28 = "*** ERROR: fillSourceBuffer failed [%d]\n";
      v29 = 626;
      goto LABEL_41;
    }

    if (*(this + 178))
    {
      p_srcs = &srcs;
      goto LABEL_37;
    }

    if (*(this + 184) == 1)
    {
      dests.height = v8;
      p_srcs = &dests;
      v22 = IIOPixelProvider::convertFloatHDRBufferUsingCGContext(this, v20, &dests, v9);
      if (v22)
      {
        ImageConverter = v22;
        v28 = "*** ERROR: convertFloatHDRBufferUsingCGContext failed: %d\n";
        v29 = 641;
LABEL_41:
        _cg_jpeg_mem_term("iterateOverImage", v29, v28);
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (*(this + 183) == 1)
    {
      dests.height = v8;
      p_srcs = &dests;
      v23 = IIOPixelProvider::convertRGB101010BufferUsingCGContext(this, v20, &dests, v9);
      if (v23)
      {
        ImageConverter = v23;
        v28 = "*** ERROR: convertRGB101010BufferUsingCGContext failed: %d\n";
        v29 = 653;
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (*(this + 182) == 1)
    {
      dests.height = v8;
      p_srcs = &dests;
      v24 = IIOPixelProvider::convertRGB101010Buffer(this, &srcs, &dests);
      if (v24)
      {
        ImageConverter = v24;
        v28 = "*** ERROR: convertRGB101010Buffer failed: %d\n";
        v29 = 665;
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    v25 = *(this + 181);
    dests.height = v8;
    if (v25 == 1)
    {
      CGColorConversionInfoConvertData();
      p_srcs = &dests;
      goto LABEL_37;
    }

    p_srcs = &dests;
    v26 = iio_vImageConvert_AnyToAny(*(this + 19), &srcs, &dests, 0, 0x100u);
    ImageConverter = v26;
    if (v26)
    {
      break;
    }

LABEL_37:
    (*(a5 + 16))(a5, v9, p_srcs, v32);
    ImageConverter = 0;
    if ((v32[0] & 1) == 0)
    {
      v9 = (v8 + v9);
      if (v9 < v5)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  IIO_vImageErrorString(v26);
  _cg_jpeg_mem_term("iterateOverImage", 687, "*** ERROR: vImageConvert_AnyToAny failed: '%s'\n");
  if (v18)
  {
LABEL_43:
    CFRelease(v18);
  }

LABEL_44:
  if (srcs.data)
  {
    free(srcs.data);
  }

  if (dests.data)
  {
    free(dests.data);
  }

  return ImageConverter;
}

uint64_t IIOPixelProvider::fillSourceBuffer(IIOPixelProvider *this, int a2, vImage_Buffer *a3)
{
  if (*(this + 58) != 3)
  {
    return 0;
  }

  if (!*(this + 4))
  {
    *(this + 4) = CGAccessSessionCreate();
  }

  result = CGAccessSessionRewind();
  if (result)
  {
    v7 = (*(this + 40) * a2);
    if (CGAccessSessionSkipForward() == v7)
    {
      v8 = a3->rowBytes * a3->height;
      if (v8 == CGAccessSessionGetBytes())
      {
        return 0;
      }

      else
      {
        return 4294967257;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IIO_Reader_ETC::getImageCount(IIO_Reader_ETC *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  IIOScanner::IIOScanner(v7, a2);
  memset(__dst, 0, sizeof(__dst));
  IIOScanner::getBytesAtOffset(v7, __dst, 0, 0x40uLL);
  if (a5)
  {
    *a5 = 1;
  }

  IIOScanner::~IIOScanner(v7);
  return 0;
}

double TIFFReadPlugin::TIFFReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a6);
  *v7 = &unk_1EF4D5B78;
  result = 0.0;
  *(v7 + 464) = 0u;
  *(v7 + 480) = 0u;
  *(v7 + 496) = 0u;
  *(v7 + 512) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 544) = 0u;
  *(v7 + 560) = 0u;
  *(v7 + 576) = 0u;
  *(v7 + 590) = a5;
  return result;
}

void TIFFReadPlugin::~TIFFReadPlugin(TIFFReadPlugin *this)
{
  *this = &unk_1EF4D5B78;
  v2 = *(this + 58);
  if (v2)
  {
    _cg_TIFFClose(v2);
  }

  *(this + 58) = 0;

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  TIFFReadPlugin::~TIFFReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t TIFFReadPlugin::loadDataFromXPCObject(TIFFReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_tiff", &length);
    if (length == 128)
    {
      v6 = data;
      result = 0;
      v7 = v6[3];
      v9 = *v6;
      v8 = v6[1];
      *(this + 31) = v6[2];
      *(this + 32) = v7;
      *(this + 29) = v9;
      *(this + 30) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      *(this + 35) = v6[6];
      *(this + 36) = v12;
      *(this + 33) = v10;
      *(this + 34) = v11;
      *(this + 58) = 0;
    }

    else
    {
      _cg_jpeg_mem_term("loadDataFromXPCObject", 219, "*** ERROR: failed to load 'IMAGEIO_PLUGIN_DATA_TIFF'\n");
      return 4294967246;
    }
  }

  return result;
}

uint64_t TIFFReadPlugin::saveDataToXPCObject(TIFFReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_tiff", this + 464, 0x80uLL);
  }

  return v4;
}

void TIFFReadPlugin::isValidIFD(uint64_t a1, unint64_t a2, unsigned int a3, unint64_t a4, _WORD *a5, int a6)
{
  IIOScanner::seek(a2, a4);
  IFDCount = IIOScanner::getIFDCount(a2);
  v10 = IFDCount;
  if (IFDCount)
  {
    v11 = IFDCount;
    if (IFDCount >= 0x65)
    {
      _cg_jpeg_mem_term("isValidIFD", 260, "*** ERROR: invalid ifdCount (%lld)\n");
      ++a5[2];
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    v12 = malloc_type_calloc(IFDCount, 0x14uLL, 0x1000040A86A77D5uLL);
    v13 = v12;
    v14 = v10;
    do
    {
      if (a3)
      {
        IIOScanner::getBigTiffTag(a2, v13);
      }

      else
      {
        v52 = 0;
        v51 = 0;
        IIOScanner::getTiffTag(a2, &v51);
        if (*(a2 + 64))
        {
          v45 = __cxa_allocate_exception(4uLL);
          *v45 = -1;
          __cxa_throw(v45, MEMORY[0x1E69E5478], 0);
        }

        *v13 = v51;
        *&v15 = HIDWORD(v51);
        *(&v15 + 1) = v52;
        *(v13 + 4) = v15;
      }

      v13 += 20;
      --v14;
    }

    while (v14);
    if (a6)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a2 + 24);
    }

    v17 = v10 - 1;
    if (v10 != 1)
    {
      v18 = v12;
      do
      {
        v19 = *v18;
        v20 = v18[10];
        v18 += 10;
        if (v19 > v20)
        {
          ++*a5;
        }

        --v17;
      }

      while (v17);
      v21 = 0;
      v22 = v12;
      v23 = v10;
      do
      {
        if (v21 < v10)
        {
          v24 = &v12[10 * v21];
          v25 = *v24;
          v26 = v22;
          v27 = v23;
          do
          {
            if (v25 == *v26 && *(v24 + 6) != *(v26 + 6))
            {
              ++a5[1];
            }

            v26 += 10;
            --v27;
          }

          while (v27);
        }

        ++v21;
        --v23;
        v22 += 10;
      }

      while (v21 != v10 - 1);
    }

    v28 = (v12 + 2);
    do
    {
      v29 = *(v28 - 2);
      v30 = (v29 - 256) > 0x28 || ((1 << v29) & 0x1001C6400C3) == 0;
      v31 = v29 - 40961;
      v32 = v30 && v31 >= 3;
      if (v32)
      {
        v33 = 0xFFFFFFFFLL;
      }

      else
      {
        v33 = 1;
      }

      if (*v28 > v33 && *v28 >= 5)
      {
        ++a5[2];
      }

      v28 = (v28 + 20);
      --v11;
    }

    while (v11);
    v47 = v16;
    v34 = 0;
    v35 = (a5 + 8);
    do
    {
      v36 = &v12[10 * v34];
      v37 = *v36;
      if (v37 == 34665 || v37 == 40965 || v37 == 34853)
      {
        v40 = *(v36 + 6);
        if (v40 == a4)
        {
          ++a5[3];
        }

        else
        {
          v51 = v40;
          v41 = *v35;
          if (!*v35)
          {
            goto LABEL_58;
          }

          v42 = (a5 + 8);
          do
          {
            v43 = *(v41 + 32);
            v32 = v43 >= v40;
            v44 = v43 < v40;
            if (v32)
            {
              v42 = v41;
            }

            v41 = *(v41 + 8 * v44);
          }

          while (v41);
          if (v42 != v35 && v40 >= v42[4])
          {
            ++a5[1];
          }

          else
          {
LABEL_58:
            std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((a5 + 4), &v51, &v51);
            TIFFReadPlugin::isValidIFD(a1, a2, a3, v51, a5, a6 + 1);
          }
        }
      }

      ++v34;
    }

    while (v34 != v10);
    free(v12);
    if (v47)
    {
      IIOScanner::seek(a2, v47);
    }
  }
}

void sub_185FF4338(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FF42A0);
}

BOOL TIFFReadPlugin::isValidTIFF(TIFFReadPlugin *this)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  IIOScanner::IIOScanner(v22, *(this + 3));
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  IIOScanner::seek(v22, *(this + 26));
  Val16 = IIOScanner::getVal16(v22);
  if (Val16 == 18761)
  {
    v3 = 1;
  }

  else
  {
    if (Val16 != 19789)
    {
      v13 = 0;
      goto LABEL_30;
    }

    v3 = 0;
  }

  IIOScanner::setEndianness(v22, v3);
  v4 = IIOScanner::getVal16(v22);
  if (v4 == 43)
  {
    v5 = IIOScanner::getVal16(v22);
    IIOScanner::skip(v22, 2uLL);
  }

  else
  {
    v5 = 4;
  }

  LODWORD(v23) = v5;
  v17 = 0;
  v19 = 0u;
  v18 = &v19;
  IIOScanner::seek(v22, *(this + 26) + 4);
  if (v4 == 43)
  {
    IIOScanner::skip(v22, 4uLL);
  }

  for (i = IIOScanner::getTiffOffset(v22); ; i = IIOScanner::getTiffOffset(v22))
  {
    v16 = i;
    if (!i)
    {
      break;
    }

    v7 = v21[0];
    if (v21[0])
    {
      v8 = v21;
      do
      {
        v9 = v7[4];
        v10 = v9 >= i;
        v11 = v9 < i;
        if (v10)
        {
          v8 = v7;
        }

        v7 = v7[v11];
      }

      while (v7);
      if (v8 != v21 && i >= v8[4])
      {
        ++HIWORD(v17);
        break;
      }
    }

    std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v20, &v16, &v16);
    TIFFReadPlugin::isValidIFD(this, v22, v4 == 43, v16, &v17, 0);
    if (v25)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  v12 = WORD1(v17);
  if (WORD1(v17))
  {
    _cg_jpeg_mem_term("isValidTIFF", 474, "*** ERROR: invalid TIFF - found %d duplicate tagID%s\n");
  }

  v13 = (WORD2(v17) | v12) == 0;
  if (HIWORD(v17))
  {
    _cg_jpeg_mem_term("isValidTIFF", 487, "*** ERROR: invalid TIFF - found %d offset error%s \n");
    v13 = 0;
  }

  std::__tree<unsigned long long>::destroy(&v18, v19);
LABEL_30:
  std::__tree<unsigned long long>::destroy(&v20, v21[0]);
  IIOScanner::~IIOScanner(v22);
  return v13;
}

uint64_t TIFFReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  isValidTIFF = *(this + 384);
  if (isValidTIFF == 255)
  {
    isValidTIFF = TIFFReadPlugin::isValidTIFF(this);
    *(this + 384) = isValidTIFF;
  }

  if (isValidTIFF)
  {
    IIODictionary::getBoolForKey(this[6], @"kCGImageSourceShouldAllowFloat");
    IIOSkipMetadata(this[6]);
    IIOSkipXMP_and_IPTC(this[6]);
    ObjectForKey = IIODictionary::getObjectForKey(this[6], @"kCGImageSourceXMPSidecar");
    if (ObjectForKey)
    {
      CFGetTypeID(ObjectForKey);
      CFDataGetTypeID();
    }

    if (IIODictionary::containsKey(this[6], @"kCGImageSourceSubsampleFactor"))
    {
      IIODictionary::getUint32ForKey(this[6], @"kCGImageSourceSubsampleFactor");
    }

    v5 = IIOImageReadSession::globalInfoForType(this[3], 1414088262);
    if (v5)
    {
      if (*(this + 56) < ((*(v5 + 3) - *(v5 + 2)) >> 3))
      {
        operator new();
      }

      TIFFReadPlugin::initialize();
    }

    else
    {
      TIFFReadPlugin::initialize();
    }
  }

  else
  {
    TIFFReadPlugin::initialize();
  }

  kdebug_trace();
  return 4294967246;
}

uint64_t TIFFReadPlugin::initPhotoshopThumbnail(TIFFReadPlugin *this, off_t a2, uint64_t size, IIODictionary *a4)
{
  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v7, a2, size) == size && size >= 6)
  {
    v10 = &v7[size];
    v11 = v7 + 5;
    v12 = v7;
    do
    {
      if (strncmp(v12, "8BIM", 4uLL) || (v12 + 12) >= v10)
      {
        break;
      }

      if ((*v11 | (v12[4] << 8)) == 0x40C)
      {
        if ((v12 + 42) < v10 && v12[40] == 255 && v12[41] == 216)
        {
          v14 = (v12[32] << 24) | (v12[33] << 16) | (v12[34] << 8) | v12[35];
          if (v14 <= size)
          {
            v15 = v12 + 40 - v7 + a2;
            if (v15 + v14 <= size)
            {
              CGImagePluginInitJPEGAtOffset(*(this + 1), 0, v15, v14, 1, 5000, 1953785973, 0);
            }
          }
        }

        break;
      }

      v12 += _byteswap_ulong(*(v12 + 2)) + (v12[11] & 1) + 12;
      v11 = v12 + 5;
    }

    while ((v12 + 5) < v10);
  }

  if (v7)
  {
    free(v7);
  }

  return 0;
}

void sub_185FF53D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t TIFFReadPlugin::updateTiffStruct(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!_cg_TIFFGetField(a2, 256, a3, a4, a5, a6, a7, a8, a1 + 472))
  {
    TIFFReadPlugin::updateTiffStruct();
    return 4294967246;
  }

  if (!_cg_TIFFGetField(a2, 257, v10, v11, v12, v13, v14, v15, a1 + 476))
  {
    TIFFReadPlugin::updateTiffStruct();
    return 4294967246;
  }

  v22 = (a1 + 482);
  _cg_TIFFGetFieldDefaulted(a2, 258, v16, v17, v18, v19, v20, v21, a1 + 482);
  _cg_TIFFGetFieldDefaulted(a2, 277, v23, v24, v25, v26, v27, v28, a1 + 512);
  _cg_TIFFGetFieldDefaulted(a2, 284, v29, v30, v31, v32, v33, v34, a1 + 490);
  _cg_TIFFGetFieldDefaulted(a2, 339, v35, v36, v37, v38, v39, v40, a1 + 492);
  *(a1 + 504) = _cg_TIFFStripSize64(a2, v41, v42, v43, v44, v45, v46, v47);
  *(a1 + 580) = _cg_TIFFNumberOfStrips(a2);
  *(a1 + 520) = _cg_TIFFScanlineSize64(a2, v48, v49, v50, v51, v52, v53, v54);
  if (*(a1 + 492) == 3)
  {
    v55 = *v22;
    if (v55 != 16 && v55 != 32)
    {
      v86 = "*** floatingPoint TIFF - cannot handle %d bits/component\n";
      v87 = 1003;
LABEL_24:
      _cg_jpeg_mem_term("updateTiffStruct", v87, v86);
      return 4294967246;
    }
  }

  v56 = *(a1 + 512);
  if (v56 >= 0x21)
  {
    v86 = "*** samplesPerPixel '%d' not supported (<=32)\n";
    v87 = 1005;
    goto LABEL_24;
  }

  v57 = *v22;
  if (v57 >= 0x21)
  {
    v86 = "*** bitsPerComponent '%d' not supported (<=32)\n";
    v87 = 1006;
    goto LABEL_24;
  }

  v58 = v56 - *(a1 + 486);
  if (v58 >= 0x21u)
  {
    TIFFReadPlugin::updateTiffStruct();
    return 4294967246;
  }

  if (*v22 && !*(a1 + 484))
  {
    *(a1 + 484) = v58 * v57;
  }

  v59 = _cg_TIFFIsTiled(*(a1 + 464));
  *(a1 + 585) = v59 != 0;
  if (v59)
  {
    _cg_TIFFGetField(*(a1 + 464), 322, v60, v61, v62, v63, v64, v65, a1 + 540);
    _cg_TIFFGetField(*(a1 + 464), 323, v66, v67, v68, v69, v70, v71, a1 + 544);
    v79 = *(a1 + 540);
    if ((v79 & 0xF) != 0)
    {
      v86 = "*** ERROR: tileWidth %d is not a multiple of 16\n";
      v87 = 1022;
    }

    else
    {
      v80 = *(a1 + 544);
      if ((v80 & 0xF) != 0)
      {
        v86 = "*** ERROR: tileHeight %d is not a multiple of 16\n";
        v87 = 1023;
      }

      else if (v79 <= 0xF)
      {
        v86 = "unexpected tileWidth: %d\n";
        v87 = 1024;
      }

      else if (v80 <= 0xF)
      {
        v86 = "unexpected tileHeight: %d\n";
        v87 = 1025;
      }

      else
      {
        v81 = _cg_TIFFTileSize64(*(a1 + 464), v72, v73, v74, v75, v76, v77, v78);
        *(a1 + 552) = v81;
        if (v81 <= *(a1 + 200))
        {
          v82 = _cg_TIFFTileRowSize64(*(a1 + 464));
          result = 0;
          *(a1 + 528) = v82;
          return result;
        }

        v86 = "unexpected tileSize: %ll  d\n";
        v87 = 1027;
      }
    }

    goto LABEL_24;
  }

  _cg_TIFFGetFieldDefaulted(a2, 278, v60, v61, v62, v63, v64, v65, a1 + 496);
  v84 = *(a1 + 496);
  v85 = *(a1 + 476);
  if (v84 == -1)
  {
    result = 0;
    *(a1 + 496) = v85;
  }

  else
  {
    if (v84 > v85)
    {
      _cg_jpeg_mem_term("updateTiffStruct", 1037, "*** NOTE: _tiff._tiffRowsPerStrip: %d   _tiff._tiffHeight: %d\n");
    }

    return 0;
  }

  return result;
}

uint64_t TIFFReadPlugin::sanityCheck(TIFFReadPlugin *this)
{
  v2 = *(this + 118);
  if (v2 <= 0x3E8)
  {
    v3 = *(this + 119);
    if (v3 <= 0x3E8)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(this + 119);
    if (v2 > 0x30D40)
    {
      goto LABEL_6;
    }
  }

  if (v3 > 0x30D40)
  {
LABEL_6:
    LogError("sanityCheck", 1409, "image too large (%ld x %ld)\n");
    return 4294967246;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  v6 = *(this + 118);
  v7 = *(this + 241);
  v8 = *(this + 256) * v6 * v7;
  v9 = (v8 + 7) >> 3;
  v10 = *(this + 244);
  if (v10 == 1)
  {
    if (v9 > Size)
    {
      v11 = "oneRow > imageSize (%ld > %ld)\n";
      v12 = 1421;
LABEL_11:
      _cg_jpeg_mem_term("sanityCheck", v12, v11);
      return 4294967246;
    }

    if (v9 * *(this + 119) > Size && *(this + 240) != 6)
    {
      v11 = "oneRow * height > imageSize (%ld > %ld)\n";
      v12 = 1426;
      goto LABEL_11;
    }
  }

  if (*(this + 585) == 1)
  {
    if (Size <= (*(this + 119) + *(this + 136) - 1) * ((v6 + *(this + 135) - 1) / *(this + 135)) / *(this + 136))
    {
      LogError("sanityCheck", 1436, "ERROR: too many tiles (%ld)\n");
      return 4294967246;
    }

    if (Size <= *(*(this + 58) + 228))
    {
      LogError("sanityCheck", 1437, "ERROR: too many tiles (%ld)\n");
      return 4294967246;
    }
  }

  if (v10 == 5)
  {
    v13 = (v8 + 7) / 0x1F40;
    if (v8 < 0x1F39)
    {
      v13 = 1;
    }

    v14 = *(this + 119);
    if (Size < v13 * v14 && *(this + 369) == 1 && (((v9 * v14) / Size) >> 4 > 0x270 || v7 != 1))
    {
      return 4294967246;
    }
  }

  return 0;
}

uint64_t TIFFReadPlugin::updateSubsample(TIFFReadPlugin *this, unsigned int a2)
{
  *(this + 166) = 0;
  v2 = *(this + 118);
  v3 = *(this + 119);
  *(this + 61) = v2;
  *(this + 62) = v3;
  *(this + 69) = v2;
  *(this + 70) = v3;
  if (!a2)
  {
    v4 = *(this + 57);
    if (v4)
    {
      v5 = v2 / v4;
      if (v5 <= v3 / v4)
      {
        v5 = v3 / v4;
      }

      a2 = v5;
    }

    else
    {
      a2 = 0;
    }
  }

  if ((gIIODebugFlags & 0x200000000) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = *(this + 240);
  if (v7 == 6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v2 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v2;
  }

  if (v8 <= v9 && v8 >= 2)
  {
    v11 = *(this + 241);
    v12 = ((v11 - 8) & 0xFFF7) == 0 && ((v13 = v7 - 3, v13 >= 8u) || ((0xE1u >> v13) & 1) == 0) && *(this + 256) - 1 < 5;
    if ((*(this + 585) & 1) == 0 && *(this + 245) != 2 && (*(this + 241) == 16 || *(this + 241) == 8) && v12)
    {
      if (*(this + 232) == 3)
      {
        v14 = *(this + 57);
        if (v14)
        {
          if (v14 >= (v2 + 31) >> 5 && v14 >= (v3 + 31) >> 5)
          {
            if (v14 >= (v2 + 15) >> 4 && v14 >= (v3 + 15) >> 4)
            {
              if (v14 >= (v2 + 7) >> 3 && v14 >= (v3 + 7) >> 3)
              {
                if (v14 >= (v2 + 3) >> 2 && v14 >= (v3 + 3) >> 2)
                {
                  if (v14 >= (v2 + 1) >> 1)
                  {
                    if (v14 >= (v3 + 1) >> 1)
                    {
                      v15 = 1;
                    }

                    else
                    {
                      v15 = 2;
                    }
                  }

                  else
                  {
                    v15 = 2;
                  }
                }

                else
                {
                  v15 = 4;
                }

                goto LABEL_56;
              }

LABEL_52:
              v15 = 8;
              goto LABEL_56;
            }

LABEL_50:
            v15 = 16;
            goto LABEL_56;
          }

LABEL_48:
          v15 = 32;
          goto LABEL_56;
        }

        v15 = 1;
      }

      else if (v8 <= 0x7F)
      {
        if (v8 <= 0x3F)
        {
          if (v8 <= 0x1F)
          {
            if (v8 <= 0xF)
            {
              if (v8 <= 7)
              {
                if (v8 <= 3)
                {
                  v15 = 2;
                }

                else
                {
                  v15 = 4;
                }

                goto LABEL_56;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v15 = 64;
      }

      else
      {
        v15 = 128;
      }

LABEL_56:
      *(this + 166) = v15;
      *(this + 69) = v2 / v15;
      *(this + 70) = v3 / v15;
      *(this + 71) = ((v2 * v11 * *(this + 256) + 7) >> 3) / v15;
    }
  }

  return 0;
}

uint64_t TIFFReadPlugin::handleColorSpace(TIFFReadPlugin *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = 1380401696;
  length = 0;
  v11 = *(this + 256) - *(this + 243);
  *(this + 85) = 0;
  v12 = *(this + 240);
  if (v12 <= 5)
  {
    if (*(this + 240) > 2u)
    {
      if (v12 != 3)
      {
        if (v12 != 5 || v11 != 4)
        {
          goto LABEL_28;
        }

        v10 = 1129142603;
        goto LABEL_30;
      }

      if (v11 == 1)
      {
LABEL_30:
        *(this + 85) = v10;
        goto LABEL_31;
      }
    }

    else
    {
      if (v12 < 2)
      {
        if (v11 == 1)
        {
          v10 = 1196573017;
        }

        else if (v11 != 3)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      if (v11 == 3)
      {
        goto LABEL_30;
      }
    }

LABEL_28:
    v15 = "*** unsupported colormodel (0)\n";
    v16 = 1123;
LABEL_111:
    _cg_jpeg_mem_term("handleColorSpace", v16, v15);
    return 4294967246;
  }

  if (v12 - 8 < 3)
  {
    if (v11 == 3)
    {
      v10 = 1281450528;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v12 != 6)
  {
    if (v12 != 32845)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v11 != 3)
  {
    goto LABEL_28;
  }

  v14 = *(this + 244);
  if (v14 == 1)
  {
    goto LABEL_30;
  }

  if (v14 != 7)
  {
    goto LABEL_28;
  }

  *(this + 85) = 1380401696;
  _cg_TIFFSetField(*(this + 58), 65538, a3, a4, a5, a6, a7, a8, 1);
  *(this + 240) = 2;
  if (!*(this + 85))
  {
    goto LABEL_28;
  }

LABEL_31:
  _cg_TIFFGetField(*(this + 58), 34675, a3, a4, a5, a6, a7, a8, &length);
  if (length)
  {
    v17 = CGColorSpaceCreateWithCopyOfData(0, length);
    *(this + 20) = v17;
    Model = CGColorSpaceGetModel(v17);
    LODWORD(v19) = Model;
    v20 = Model > kCGColorSpaceModelXYZ ? 1061109567 : dword_186209E14[Model];
    if (v20 != *(this + 85))
    {
      v21 = Model >> 24;
      if ((Model >> 24) <= 0x7F)
      {
        v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(Model >> 24, 0x40000uLL);
      }

      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 46;
      }

      v24 = (v19 << 8) >> 24;
      if (v24 <= 0x7F)
      {
        v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
      }

      else
      {
        v25 = __maskrune((v19 << 8) >> 24, 0x40000uLL);
      }

      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 46;
      }

      LODWORD(v27) = v19 >> 8;
      if (v27 <= 0x7F)
      {
        v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
      }

      else
      {
        v28 = __maskrune(v19 >> 8, 0x40000uLL);
      }

      if (v28)
      {
        v27 = v27;
      }

      else
      {
        v27 = 46;
      }

      LODWORD(v19) = v19;
      if (v19 <= 0x7F)
      {
        v29 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
      }

      else
      {
        v29 = __maskrune(v19, 0x40000uLL);
      }

      if (v29)
      {
        v19 = v19;
      }

      else
      {
        v19 = 46;
      }

      v30 = *(this + 85);
      v31 = v30 >> 24;
      if ((v30 >> 24) <= 0x7F)
      {
        v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
      }

      else
      {
        v32 = __maskrune(v31, 0x40000uLL);
        v30 = *(this + 85);
      }

      if (v32)
      {
        v33 = (v30 >> 24);
      }

      else
      {
        v33 = 46;
      }

      v34 = v30 << 8 >> 24;
      if (v34 <= 0x7F)
      {
        v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
      }

      else
      {
        v35 = __maskrune(v34, 0x40000uLL);
        v30 = *(this + 85);
      }

      if (v35)
      {
        v36 = (v30 << 8 >> 24);
      }

      else
      {
        v36 = 46;
      }

      v37 = v30 >> 8;
      if (v37 <= 0x7F)
      {
        v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
      }

      else
      {
        v38 = __maskrune(v37, 0x40000uLL);
        v30 = *(this + 85);
      }

      if (v38)
      {
        v39 = (v30 >> 8);
      }

      else
      {
        v39 = 46;
      }

      if (v30 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000) != 0)
        {
          goto LABEL_80;
        }
      }

      else if (__maskrune(v30, 0x40000uLL))
      {
LABEL_80:
        v40 = *(this + 340);
LABEL_83:
        LogError("handleColorSpace", 1159, "*** embeded '%c%c%c%c' ColorSync profile doesn't match image '%c%c%c%c'\n", v23, v26, v27, v19, v33, v36, v39, v40);
        *(this + 20) = 0;
        goto LABEL_84;
      }

      v40 = 46;
      goto LABEL_83;
    }
  }

LABEL_84:
  if (!*(this + 20) && *(this + 85) == 1380401696)
  {
    LOBYTE(length_4[0]) = 0;
    ColorSpaceFromMetadata = createColorSpaceFromMetadata(*(this + 8), a2, length_4);
    *(this + 20) = ColorSpaceFromMetadata;
    if (LOBYTE(length_4[0]) == 1)
    {
      *(this + 172) = LOBYTE(length_4[0]);
    }

    if (!ColorSpaceFromMetadata && *(this + 85) == 1380401696)
    {
      TopLevelTag = CGImageMetadataGetTopLevelTag(*(this + 8), @"http://ns.adobe.com/exif/1.0/", @"ColorSpace");
      if (TopLevelTag)
      {
        Value = CGImageMetadataTagGetValue(TopLevelTag);
        if (Value)
        {
          if (CFStringGetIntValue(Value) == 1)
          {
            *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          }
        }
      }
    }
  }

  if (*(this + 240) == 3)
  {
    v44 = *(this + 241);
    if (v44 > 8)
    {
      v15 = "*** can't handle PHOTOMETRIC_PALETTE with more than 8 bit...\n";
      v16 = 1229;
      goto LABEL_111;
    }

    v45 = malloc_type_calloc(3uLL, 0x100uLL, 0x100004077774924uLL);
    *&length_4[0] = 0;
    whitePoint[0] = 0.0;
    blackPoint[0] = 0.0;
    _cg_TIFFGetField(*(this + 58), 320, v46, v47, v48, v49, v50, v51, length_4);
    v52 = *&length_4[0];
    if (!*&length_4[0])
    {
      TIFFReadPlugin::handleColorSpace();
      return 4294967246;
    }

    v53 = whitePoint[0];
    if (!*&whitePoint[0])
    {
      TIFFReadPlugin::handleColorSpace();
      return 4294967246;
    }

    v54 = blackPoint[0];
    if (!*&blackPoint[0])
    {
      TIFFReadPlugin::handleColorSpace();
      return 4294967246;
    }

    v55 = 1 << v44;
    v56 = v45 + 2;
    v57 = 1 << v44;
    do
    {
      v58 = *v52++;
      *(v56 - 2) = ((255 - ((v58 + 128) >> 8)) >> 31) | ((v58 + 128) >> 8);
      v59 = **&v53;
      *&v53 += 2;
      *(v56 - 1) = ((255 - ((v59 + 128) >> 8)) >> 31) | ((v59 + 128) >> 8);
      v60 = **&v54;
      *&v54 += 2;
      *v56 = ((255 - ((v60 + 128) >> 8)) >> 31) | ((v60 + 128) >> 8);
      v56 += 3;
      --v57;
    }

    while (v57);
    v61 = *(this + 20);
    if (!v61)
    {
      v61 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    if ((v55 - 1) >= 0xFF)
    {
      v62 = 255;
    }

    else
    {
      v62 = v55 - 1;
    }

    *(this + 20) = CGColorSpaceCreateIndexed(v61, v62, v45);
    free(v45);
    CFRelease(v61);
  }

  Lab = *(this + 20);
  if (!Lab)
  {
    if (*(this + 85) == 1281450528)
    {
      *whitePoint = xmmword_186209DB0;
      v71 = 0x3FEA6594AF4F0D84;
      memset(blackPoint, 0, sizeof(blackPoint));
      length_4[0] = xmmword_186209DC8;
      length_4[1] = unk_186209DD8;
      Lab = CGColorSpaceCreateLab(whitePoint, blackPoint, length_4);
      *(this + 20) = Lab;
    }

    else
    {
      Lab = 0;
    }
  }

  if ((*(this + 373) & 1) == 0 && *(this + 590) != 1)
  {
    return 0;
  }

  if (Lab)
  {
    if (CGColorSpaceUsesExtendedRange(Lab) || CGColorSpaceUsesITUR_2100TF(*(this + 20)))
    {
      return 0;
    }

    Extended = CGColorSpaceCreateExtended(*(this + 20));
    CGColorSpaceRelease(*(this + 20));
    result = 0;
    *(this + 20) = Extended;
  }

  else
  {
    v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    result = 0;
    *(this + 20) = v65;
  }

  return result;
}

uint64_t TIFFReadPlugin::calculateBlockCount(TIFFReadPlugin *this)
{
  result = 0;
  v3 = *(this + 78);
  *(this + 26) = 1;
  *(this + 27) = v3;
  v4 = *(this + 119);
  if (v4 >= 0x801 && v4 * *(this + 118) > 0x400000)
  {
    v5 = *(this + 576);
    if ((v5 - 2) < 2)
    {
      return 0;
    }

    else if ((v5 - 4) > 1)
    {
      return 4294967292;
    }

    else
    {
      result = 0;
      v6 = (*(this + 136) + 2047) / *(this + 136) * *(this + 136);
      *(this + 26) = (v4 + v6 - 1) / v6;
      *(this + 27) = v6;
    }
  }

  return result;
}

IOTiffClientData *TIFFReadPlugin::loadTIFFStructure(TIFFReadPlugin *this, GlobalTIFFInfo *a2, IIOImageReadSession *a3)
{
  v4 = 0;
  if (a2 && *(this + 56) < ((*(a2 + 3) - *(a2 + 2)) >> 3))
  {
    operator new();
  }

  return 0;
}

uint64_t TIFFReadPlugin::decodeSubsampled(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 280);
  if (*(a1 + 392) < v3)
  {
    v3 = *(a1 + 392);
  }

  v4 = *(a1 + 332);
  if (!*(a1 + 332))
  {
    return 4294967246;
  }

  *v43 = *(a1 + 252);
  if (v3 <= v4)
  {
    v7 = 2 * v4;
    v6 = 2;
  }

  else
  {
    v6 = v3 / v4;
    v7 = v6 * v4;
  }

  v8 = *(a1 + 320);
  v37 = *a3;
  v45 = v6;
  v38 = malloc_type_malloc(v43[0] * v7, 0x100004077774924uLL);
  if (!v38)
  {
    return 4294967246;
  }

  v9 = *(a1 + 324);
  if (v9 == 4)
  {
    if (*(a1 + 322) == 32)
    {
      if (*(a1 + 437))
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  memset(v44, 0, sizeof(v44));
  if (*(a1 + 260) >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(a1 + 260);
  }

  IIOSubsampler::IIOSubsampler(v44, *(a1 + 244), v43[0], (*(a1 + 263) << 12) | (*(a1 + 264) << 16) | ((*(a1 + 265) != 0) << 8) | *(a1 + 262), *(a1 + 256), v12, *(a1 + 332), v10, *(a1 + 308), *(a1 + 316));
  v13 = *(a1 + 248);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v36 = v7;
    v41 = (v8 + 7) >> 3;
    while (1)
    {
      if (v14 + v7 >= v13)
      {
        v16 = v13 - v14;
        v45 = (v13 - v14) / *(a1 + 332);
        if (!v45)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v16 = v7;
        if (!v45)
        {
          goto LABEL_45;
        }
      }

      v40 = v15;
      v39 = v16;
      v17 = v16 + v14;
      if (v14 < v16 + v14)
      {
        break;
      }

LABEL_44:
      IIOSubsampler::subsample(v44, v38, v39, (v37 + v40 * *(a1 + 316)), &v45);
      v15 = v40 + v45;
      v13 = *(a1 + 248);
      v14 = v17;
      v7 = v36;
      if (v17 >= v13)
      {
        goto LABEL_45;
      }
    }

    v18 = v38;
    while (1)
    {
      v19 = _cg_TIFFReadScanline(a2, v18, v14, 0);
      v20 = *(a1 + 260);
      v21 = *(a1 + 324);
      if (v20 > v21)
      {
        switch(v41)
        {
          case 1u:
            v32 = *(a1 + 244);
            if (v32)
            {
              v33 = v18;
              v34 = v18;
              do
              {
                memmove(v33, v34, v21);
                v34 += v20;
                v33 += v21;
                --v32;
              }

              while (v32);
            }

            break;
          case 2u:
            v27 = *(a1 + 244);
            if (v27)
            {
              v28 = 2 * v21;
              v29 = 2 * v20;
              v30 = v18;
              v31 = v18;
              do
              {
                memmove(v31, v30, v28);
                v31 += v28;
                v30 += v29;
                --v27;
              }

              while (v27);
            }

            break;
          case 4u:
            v22 = *(a1 + 244);
            if (v22)
            {
              v23 = 4 * v21;
              v24 = 4 * v20;
              v25 = v18;
              v26 = v18;
              do
              {
                memmove(v26, v25, v23);
                v26 += v23;
                v25 += v24;
                --v22;
              }

              while (v22);
            }

            break;
        }
      }

      if (v19 == -1)
      {
        break;
      }

      v18 += *v43;
      if (++v14 == v17)
      {
        goto LABEL_44;
      }
    }

    _cg_jpeg_mem_term("decodeSubsampled", 1749, "*** ERROR: TIFFReadScanline returned -1\n");
    IIOSubsampler::~IIOSubsampler(v44);
    v11 = 4294967246;
  }

  else
  {
LABEL_45:
    IIOSubsampler::~IIOSubsampler(v44);
    v11 = 0;
  }

  free(v38);
  return v11;
}

void sub_185FF6870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIOSubsampler::~IIOSubsampler(va);
  _Unwind_Resume(a1);
}

float *ConvertLineXYZToRGB<float>(float *result, float *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = result[1] * -1.276 + *result * 2.69 + result[2] * -0.414;
    *a2 = v3;
    v4 = result[1] * 1.978 + *result * -1.022 + result[2] * 0.044;
    a2[1] = v4;
    v5 = result[1] * -0.224 + *result * 0.061 + result[2] * 1.163;
    a2[2] = v5;
    a2 += 3;
    result += 3;
  }

  return result;
}

__int16 *ConvertLineXYZToRGB<half>(__int16 *result, _WORD *a2, int a3)
{
  for (; a3; --a3)
  {
    _H17 = *result;
    __asm { FCVT            D17, H17 }

    _H18 = result[1];
    __asm { FCVT            D18, H18 }

    v11 = _D18 * -1.276 + _D17 * 2.69;
    LOWORD(_D18) = result[2];
    __asm { FCVT            D18, H18 }

    _D17 = v11 + _D18 * -0.414;
    __asm { FCVT            H17, D17 }

    *a2 = LOWORD(_D17);
    LOWORD(_D17) = *result;
    __asm { FCVT            D17, H17 }

    LOWORD(_D18) = result[1];
    __asm { FCVT            D18, H18 }

    v16 = _D18 * 1.978 + _D17 * -1.022;
    LOWORD(_D18) = result[2];
    __asm { FCVT            D18, H18 }

    _D17 = v16 + _D18 * 0.044;
    __asm { FCVT            H17, D17 }

    a2[1] = LOWORD(_D17);
    LOWORD(_D17) = *result;
    __asm { FCVT            D17, H17 }

    LOWORD(_D18) = result[1];
    __asm { FCVT            D18, H18 }

    v21 = _D18 * -0.224 + _D17 * 0.061;
    LOWORD(_D18) = result[2];
    __asm { FCVT            D18, H18 }

    _D17 = v21 + _D18 * 1.163;
    __asm { FCVT            H17, D17 }

    a2[2] = LOWORD(_D17);
    a2 += 3;
    result += 3;
  }

  return result;
}

uint64_t TIFFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55);
    v9 = v8 >> 24;
    if ((v8 >> 24) <= 0x7F)
    {
      v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v10 = __maskrune(v9, 0x40000uLL);
      v8 = *(this + 55);
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
      v8 = *(this + 55);
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
      v8 = *(this + 55);
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
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_22:
      v18 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v11, v14, v17, v18, iioTypeStr[a3], "virtual OSStatus TIFFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v18 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 446) != 1)
  {
    v21 = 4294967115;
    goto LABEL_83;
  }

  v19 = *(this + 3);
  if (v19)
  {
    v20 = IIOImageReadSession::mapData(v19);
    v19 = *(this + 3);
  }

  else
  {
    v20 = 0;
  }

  v22 = IIOImageReadSession::globalInfoForType(v19, 1414088262);
  if (!v22)
  {
    _cg_jpeg_mem_term("decodeImageImp", 2299, "*** globalInfoForType('TIFF') failed...\n");
    goto LABEL_88;
  }

  if (a3 == 3)
  {
    TIFFReadPlugin::calculateBlockCount(this);
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    v62 = v22;
    *(v76 + 6) = BlockArray;
    v68 = 0uLL;
    if (*(this + 26))
    {
      v26 = 0;
      v27 = 0;
      while (1)
      {
        *&v69 = __PAIR64__(v27, v26);
        v28 = *(this + 27);
        v29 = *(this + 78);
        if (v28 + v27 > v29)
        {
          v28 = v29 - v27;
        }

        v27 += v28;
        *(&v69 + 1) = __PAIR64__(*(this + 77), v27);
        v30 = *(this + 79);
        v70 = __PAIR64__(v30, v28);
        v31 = v30 * v28;
        v32 = _ImageIO_Malloc(v31, *(this + 52), &v68 + 1, kImageMalloc_TIFF_Data[0], 0, 0);
        *&v68 = v32;
        if (!v32)
        {
          break;
        }

        memset(v32, 255, v31);
        v33 = v73;
        if (v73 >= v74)
        {
          v37 = v72;
          v38 = v73 - v72;
          v39 = 0xCCCCCCCCCCCCCCCDLL * (v73 - v72);
          v40 = v39 + 1;
          if (v39 + 1 > 0x666666666666666)
          {
            std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
          }

          if (0x999999999999999ALL * ((v74 - v72) >> 3) > v40)
          {
            v40 = 0x999999999999999ALL * ((v74 - v72) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v74 - v72) >> 3) >= 0x333333333333333)
          {
            v40 = 0x666666666666666;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeInfo>>(&v72, v40);
          }

          v41 = 8 * (v73 - v72);
          v42 = v68;
          v43 = v69;
          *(v41 + 32) = v70;
          *v41 = v42;
          *(v41 + 16) = v43;
          v36 = (40 * v39 + 40);
          v44 = (40 * v39 - v38);
          memcpy((v41 - v38), v37, v38);
          v45 = v72;
          v72 = v44;
          v73 = v36;
          v74 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          v34 = v68;
          v35 = v69;
          v73[4] = v70;
          *v33 = v34;
          v33[1] = v35;
          v36 = v33 + 5;
        }

        v73 = v36;
        if (++v26 >= *(this + 26))
        {
          goto LABEL_54;
        }
      }

      BaseAddress = 0;
      a3 = 3;
      goto LABEL_70;
    }

LABEL_54:
    v24 = 0;
    BaseAddress = 0;
    a3 = 3;
    v22 = v62;
    goto LABEL_56;
  }

  if (a3 != 1)
  {
    v24 = 0;
    BaseAddress = 0;
    goto LABEL_56;
  }

  if (!a4 || !*a4)
  {
LABEL_88:
    BaseAddress = 0;
    goto LABEL_70;
  }

  IOSurfaceLock(*a4, 0, &seed);
  BaseAddress = IOSurfaceGetBaseAddress(*a4);
  IOSurfaceGetHeight(*a4);
  IOSurfaceGetBytesPerRow(*a4);
  v24 = 1;
LABEL_56:
  v46 = 0xCCCCCCCCCCCCCCCDLL * (v73 - v72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN14TIFFReadPlugin14decodeImageImpEP18IIODecodeParameter12IIOImageTypePP11__IOSurfacePP10__CVBufferPP15CGImageBlockSet_block_invoke;
  block[3] = &unk_1EF4D5CA0;
  block[5] = this;
  __p = 0;
  v65 = 0;
  v66 = 0;
  std::vector<IIODecodeInfo>::__init_with_size[abi:fe200100]<IIODecodeInfo*,IIODecodeInfo*>(&__p, v72, v73, v46);
  v67 = v22;
  block[4] = &v75;
  dispatch_apply(v46, 0, block);
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (*(v76 + 6))
  {
    *(this + 26) = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (a3 == 3)
    {
      v49 = v72;
      v50 = v73;
      if (v72 != v73)
      {
        v51 = MEMORY[0x1E695F050];
        do
        {
          LODWORD(v47) = *(v49 + 5);
          v52 = v47;
          LODWORD(v47) = *(v49 + 7);
          LODWORD(v48) = *(v49 + 8);
          v53 = v47;
          v54 = v48;
          v79.origin.x = 0.0;
          v79.origin.y = v52;
          v79.size.width = v53;
          v79.size.height = v54;
          *(*(this + 12) + 8 * *(v49 + 4)) = IIOReadPlugin::createImageBlock(this, *v49, v49[1], v79, *(v49 + 9), *(this + 371));
          if (CGRectEqualToRect(*(this + 120), *v51))
          {
            v47 = 0;
          }

          else
          {
            v80.origin.x = 0.0;
            v80.origin.y = v52;
            v80.size.width = v53;
            v80.size.height = v54;
            *&v47 = CGRectUnion(*(this + 120), v80);
            v52 = *&v48;
            v53 = v55;
            v54 = v56;
          }

          *(this + 15) = v47;
          *(this + 16) = v52;
          *(this + 17) = v53;
          *(this + 18) = v54;
          *v49 = 0;
          v49 += 5;
        }

        while (v49 != v50);
      }
    }

    if (!v24)
    {
      goto LABEL_70;
    }
  }

  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_70:
  v57 = *(this + 58);
  if (v57)
  {
    _cg_TIFFClose(v57);
    *(this + 58) = 0;
  }

  if (a3 == 3 && BaseAddress)
  {
    v58 = v72;
    v59 = v73;
    while (v58 != v59)
    {
      if (*v58)
      {
        _ImageIO_Free(*v58, v58[1]);
      }

      v58 += 5;
    }
  }

  if (v20)
  {
    v60 = *(this + 3);
    if (v60)
    {
      IIOImageReadSession::unmapData(v60);
    }
  }

  v21 = *(v76 + 6);
LABEL_83:
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  _Block_object_dispose(&v75, 8);
  return v21;
}

void sub_185FF70A0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void ___ZN14TIFFReadPlugin14decodeImageImpEP18IIODecodeParameter12IIOImageTypePP11__IOSurfacePP10__CVBufferPP15CGImageBlockSet_block_invoke(uint64_t a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - v2) >> 3) <= a2)
  {
    __break(1u);
  }

  v4 = *(a1 + 40);
  v5 = (v2 + 40 * a2);
  v6 = *v5;
  v28 = *(v5 + 1);
  v7 = *(v5 + 7);
  v29 = *(v5 + 6);
  v8 = *(v5 + 8);
  v9 = *(v5 + 9);
  memset(v27, 0, sizeof(v27));
  v10 = IIO_Reader::testHeaderSize(*(v4 + 24));
  IIOImageReadSession::IIOImageReadSession(v27, v10);
  TIFFStructure = TIFFReadPlugin::loadTIFFStructure(v4, *(a1 + 72), v27);
  if (!TIFFStructure)
  {
    *(*(*(a1 + 32) + 8) + 24) = -50;
    goto LABEL_38;
  }

  v17 = *(v4 + 576);
  if (v17 > 3)
  {
    switch(v17)
    {
      case 4u:
        dest.data = v6;
        *&dest.height = v28;
        dest.rowBytes = __PAIR64__(v7, v29);
        v25 = v8;
        v26 = v9;
        v18 = TIFFReadPlugin::decodeTileChunky(v4, TIFFStructure, &dest, v11, v12, v13, v14, v15);
        goto LABEL_18;
      case 5u:
        dest.data = v6;
        *&dest.height = v28;
        dest.rowBytes = __PAIR64__(v7, v29);
        v25 = v8;
        v26 = v9;
        v18 = TIFFReadPlugin::decodeTilePlanar(v4, TIFFStructure, &dest);
        goto LABEL_18;
      case 6u:
        dest.data = v6;
        *&dest.height = v28;
        dest.rowBytes = __PAIR64__(v7, v29);
        v25 = v8;
        v26 = v9;
        v18 = TIFFReadPlugin::decodeRGBAImage(v4, TIFFStructure, &dest);
        goto LABEL_18;
    }

LABEL_15:
    LogError("decodeImageImp_block_invoke", 2395, "*** unknown decode mode [%d]\n", *(v4 + 576));
    goto LABEL_19;
  }

  if (v17 == 1)
  {
    dest.data = v6;
    *&dest.height = v28;
    dest.rowBytes = __PAIR64__(v7, v29);
    v25 = v8;
    v26 = v9;
    v18 = TIFFReadPlugin::decodeSubsampled(v4, TIFFStructure, &dest);
    goto LABEL_18;
  }

  if (v17 == 2)
  {
    dest.data = v6;
    *&dest.height = v28;
    dest.rowBytes = __PAIR64__(v7, v29);
    v25 = v8;
    v26 = v9;
    v18 = TIFFReadPlugin::decodeStripChunky(v4, TIFFStructure, &dest);
    goto LABEL_18;
  }

  if (v17 != 3)
  {
    goto LABEL_15;
  }

  dest.data = v6;
  *&dest.height = v28;
  dest.rowBytes = __PAIR64__(v7, v29);
  v25 = v8;
  v26 = v9;
  v18 = TIFFReadPlugin::decodeStripPlanar(v4, TIFFStructure, &dest);
LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = v18;
LABEL_19:
  if (!*(*(*(a1 + 32) + 8) + 24) && *(v4 + 322) == 32 && *(v4 + 320) == 8 && *(v4 + 340) == 1380401696)
  {
    dest.data = v6;
    dest.height = v8;
    dest.width = v7;
    dest.rowBytes = v9;
    if (*(v4 + 584))
    {
      if (*(v4 + 445) == 1)
      {
        vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      }
    }

    else
    {
      if (v8)
      {
        v19 = 0;
        v20 = 0;
        while (1)
        {
          if (v7)
          {
            v21 = &v6[(v9 * v19)];
            v22 = v7;
            do
            {
              v23 = *v21;
              v21 += 4;
              v20 |= v23;
              --v22;
            }

            while (v22);
            if (HIBYTE(v20))
            {
              break;
            }
          }

          if (++v19 == v8)
          {
            if (v20)
            {
              *(*(*(a1 + 32) + 8) + 24) = vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0x10u);
            }

            break;
          }
        }
      }

      if (*(v4 + 438) == 1)
      {
        vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      }
    }
  }

  _cg_TIFFClose(TIFFStructure);
LABEL_38:
  IIOImageReadSession::~IIOImageReadSession(v27);
}

void sub_185FF7444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *(*(*(v15 + 32) + 8) + 24) = -50;
    __cxa_end_catch();
    JUMPOUT(0x185FF73F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *__copy_helper_block_e8_48c55_ZTSNSt3__16vectorI13IIODecodeInfoNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = (a1 + 48);
  v2[2] = 0;
  return std::vector<IIODecodeInfo>::__init_with_size[abi:fe200100]<IIODecodeInfo*,IIODecodeInfo*>(v2, *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
}

void __destroy_helper_block_e8_48c55_ZTSNSt3__16vectorI13IIODecodeInfoNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2, void *a3)
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
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
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

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t *std::vector<IIODecodeInfo>::__init_with_size[abi:fe200100]<IIODecodeInfo*,IIODecodeInfo*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IIODecodeInfo>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_185FF7654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IIODecodeInfo>::__vallocate[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeInfo>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

uint64_t IIOReader_RawCamera::callUpdateSourceProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 80);
  if (v7)
  {
    v7(a2, a3, a7, a4, a5, a6);
  }

  return 0;
}

uint64_t IIOReader_RawCamera::callGetImageCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    return v5(a2, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t IIOReader_RawCamera::compareOptions(IIOReader_RawCamera *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v3 = *(this + 12);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t IIOReader_RawCamera::initImageAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 104);
  if (!v4)
  {
    return 4294967246;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    IIOImagePlus::setReadPluginType(v9, *(a1 + 24));
    v4 = *(a1 + 104);
  }

  if (v4(a2, a3, a4))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

void sub_185FF77B4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FF7798);
}

uint64_t IIOReader_RawCamera::initThumbnail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  v5 = 4294967245;
  if (v4)
  {
    if (v4(a2, a3, a4))
    {
      return 0;
    }

    else
    {
      return 4294967245;
    }
  }

  return v5;
}

uint64_t IIOReader_RawCamera::copyAuxiliaryDataInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t TIFFInitOJPEG(int8x16_t *a1, int a2)
{
  if (a2 != 6)
  {
    TIFFInitOJPEG_cold_1();
  }

  if (!_TIFFMergeFields(a1->i64, ojpegFields, 7))
  {
    TIFFErrorExtR(a1, "TIFFInitOJPEG", "Merging Old JPEG codec-specific tags failed");
    return 0;
  }

  v3 = malloc_type_malloc(0x1690uLL, 0x10F0040A94412F2uLL);
  if (!v3)
  {
    TIFFErrorExtR(a1, "TIFFInitOJPEG", "No space for OJPEG state block");
    return 0;
  }

  v4 = v3;
  _TIFFmemset(v3, 0, 0x1690uLL);
  *v4 = a1;
  v5 = 1;
  v4[288] = 1;
  *(v4 + 146) = 514;
  _cg_TIFFSetField(a1, 530, v6, v7, v8, v9, v10, v11, 2);
  a1[59].i64[1] = OJPEGFixupTags;
  a1[60].i64[0] = OJPEGSetupDecode;
  a1[60].i64[1] = OJPEGPreDecode;
  a1[78].i64[0] = OJPEGPostDecode;
  a1[63].i64[0] = OJPEGDecode;
  a1[64].i64[0] = OJPEGDecode;
  a1[65].i64[0] = OJPEGDecode;
  a1[61].i64[0] = OJPEGSetupEncode;
  a1[62].i64[0] = OJPEGPreEncode;
  a1[62].i64[1] = OJPEGPostEncode;
  a1[63].i64[1] = OJPEGEncode;
  a1[64].i64[1] = OJPEGEncode;
  a1[65].i64[1] = OJPEGEncode;
  a1[67].i64[0] = OJPEGCleanup;
  a1[68].i64[1] = v4;
  v12 = a1[80];
  a1[80].i64[1] = OJPEGVGetField;
  *(v4 + 216) = vextq_s8(v12, v12, 8uLL);
  a1[80].i64[0] = OJPEGVSetField;
  *(v4 + 29) = a1[81].i64[0];
  a1[81].i64[0] = OJPEGPrintDir;
  a1[1].i32[0] |= 0x20000u;
  return v5;
}

uint64_t OJPEGPreDecode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v9 = *(result + 1096);
  if (!*(v9 + 290))
  {
    OJPEGSubsamplingCorrect(result, a2, a3, a4, a5, a6, a7);
  }

  if (!*(v9 + 600))
  {
    v27 = *(result + 1096);
    if (*(v27 + 600))
    {
      OJPEGPreDecode_cold_1();
    }

    v28 = *(result + 88);
    v29 = *(result + 92);
    *(v27 + 248) = v28;
    *(v27 + 252) = v29;
    if ((*(result + 17) & 4) != 0)
    {
      v28 = *(result + 100);
      v30 = *(result + 104);
      v31 = (v30 + v29 - 1) / v30 * v30;
    }

    else
    {
      v30 = *(result + 132);
      if (v30 == -1)
      {
        v30 = v29;
      }

      v31 = v29;
    }

    *(v27 + 256) = v28;
    *(v27 + 260) = v30;
    *(v27 + 264) = v31;
    v32 = *(result + 130);
    if (v32 == 3)
    {
      *(v27 + 268) = 3;
      if (*(result + 170) != 1)
      {
        LOBYTE(v32) = 1;
      }

      *(v27 + 270) = v32;
    }

    else
    {
      if (v32 != 1)
      {
        TIFFErrorExtR(result, "OJPEGReadHeaderInfo", "SamplesPerPixel %hhu not supported for this compression scheme");
        return 0;
      }

      *(v27 + 268) = 1;
      *(v27 + 270) = 1;
      *(v27 + 292) = 257;
    }

    if (v30 < v29)
    {
      v62 = *(v27 + 292);
      if (v62 > 4 || ((1 << v62) & 0x16) == 0 || (v63 = *(v27 + 293), v63 > 4) || ((1 << v63) & 0x16) == 0)
      {
        TIFFErrorExtR(result, "OJPEGReadHeaderInfo", "Invalid subsampling values");
        return 0;
      }

      v64 = 8 * v63;
      v65 = v30 / (8 * v63);
      if (v30 % v64)
      {
        TIFFErrorExtR(result, "OJPEGReadHeaderInfo", "Incompatible vertical subsampling and image strip/tile length");
        return 0;
      }

      *(v27 + 472) = v65 * ((v28 + 8 * v62 - 1) / (8 * v62));
    }

    decompress_encap = OJPEGReadHeaderInfoSec(result, a2, a3, a4, a5, a6, a7);
    if (!decompress_encap)
    {
      return decompress_encap;
    }

    *(v27 + 504) = 1;
    *(v27 + 508) = *(v27 + 1608);
    v74 = *(v27 + 1648);
    *(v27 + 520) = *(v27 + 1624) - v74;
    *(v27 + 528) = *(v27 + 1640) + v74;
    *(v27 + 600) = 1;
  }

  v10 = v9 + 32 * v7;
  if (!*(v10 + 504))
  {
    if (!v7)
    {
      OJPEGPreDecode_cold_7();
    }

    if (v7 >= 3)
    {
      OJPEGPreDecode_cold_6();
    }

    v11 = *(result + 1096);
    if (!*(v11 + 504))
    {
      OJPEGPreDecode_cold_5();
    }

    v12 = v11 + 504;
    if (*(v11 + 504 + 32 * v7))
    {
      OJPEGPreDecode_cold_2();
    }

    v13 = v7;
    do
    {
      --v13;
    }

    while (!*(v12 + 32 * v13));
    *(v11 + 269) = v13;
    v14 = (v12 + 32 * v13);
    *(v11 + 1608) = *(v14 + 4);
    v16 = v14[2];
    v15 = v14[3];
    *(v11 + 1624) = v16;
    *(v11 + 1632) = 0;
    *(v11 + 1640) = v15;
    *(v11 + 1648) = 0;
    *(v11 + 1656) = 0;
    if (v7 > v13)
    {
      v76 = 0;
      while (OJPEGReadByte(v11, &v76, a3, a4, a5, a6, a7))
      {
        if (v76 == 255)
        {
          do
          {
            if (!OJPEGReadByte(v11, &v76, a3, a4, a5, a6, a7))
            {
              return 0;
            }
          }

          while (v76 == 255);
          if (v76 == 218)
          {
            ++*(v11 + 269);
            if (!OJPEGReadHeaderInfoSecStreamSos(result, v17, a3, a4, a5, a6, a7))
            {
              return 0;
            }

            v18 = *(v11 + 269);
            v19 = v12 + 32 * v18;
            *v19 = 1;
            *(v19 + 4) = *(v11 + 1608);
            v20 = *(v11 + 1648);
            v21 = *(v11 + 1624) - v20;
            v22 = *(v11 + 1640) + v20;
            *(v19 + 16) = v21;
            *(v19 + 24) = v22;
            if (v18 >= v7)
            {
              goto LABEL_20;
            }
          }
        }
      }

      return 0;
    }
  }

LABEL_20:
  v23 = 932;
  if ((*(result + 17) & 4) == 0)
  {
    v23 = 884;
  }

  v24 = *(result + v23);
  if (!*(v9 + 601))
  {
LABEL_28:
    *(v9 + 269) = v7;
    *(v9 + 602) = v7;
    *(v9 + 604) = *(result + 224) * v7;
    if (*(v9 + 1632))
    {
      v26 = *(v10 + 520);
      if (*(v9 + 1624) - *(v9 + 1648) == v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = *(v10 + 520);
    }

    *(v9 + 1608) = *(v10 + 508);
    *(v9 + 1624) = v26;
    *(v9 + 1632) = 0;
    *(v9 + 1640) = *(v10 + 528);
    *(v9 + 1648) = 0;
    *(v9 + 1656) = 0;
LABEL_42:
    v33 = *(result + 1096);
    if (*(v33 + 608))
    {
      return 0;
    }

    *(v33 + 3712) = 0;
    *(v33 + 474) = 0;
    _cg_jpeg_std_error(v33 + 616);
    *(v33 + 632) = OJPEGLibjpegJpegErrorMgrOutputMessage;
    *(v33 + 616) = OJPEGLibjpegJpegErrorMgrErrorExit;
    *(v33 + 792) = v33 + 616;
    *(v33 + 816) = result;
    decompress_encap = jpeg_create_decompress_encap(v33, (v33 + 792));
    if (!decompress_encap)
    {
      return decompress_encap;
    }

    *(v33 + 608) = 1;
    *(v33 + 1464) = 0;
    *(v33 + 1472) = OJPEGLibjpegJpegSourceMgrInitSource;
    *(v33 + 1480) = OJPEGLibjpegJpegSourceMgrFillInputBuffer;
    *(v33 + 1488) = OJPEGLibjpegJpegSourceMgrSkipInputData;
    *(v33 + 1496) = OJPEGLibjpegJpegSourceMgrResyncToRestart;
    *(v33 + 1504) = OJPEGLibjpegJpegSourceMgrTermSource;
    *(v33 + 832) = v33 + 1456;
    decompress_encap = jpeg_read_header_encap(v33, v33 + 792);
    if (!decompress_encap)
    {
      return decompress_encap;
    }

    v35 = *(v33 + 270);
    if (*(v33 + 294) || v35 < 2)
    {
      *(v33 + 852) = 0;
      *(v33 + 609) = 1;
      *(v33 + 1600) = *(v33 + 256) * v35;
      *(v33 + 1604) = *(v33 + 260);
    }

    else
    {
      *(v33 + 884) = 1;
      *(v33 + 892) = 0;
      *(v33 + 609) = 0;
      if (!*(v33 + 1512))
      {
        if (*(v33 + 1544))
        {
          OJPEGPreDecode_cold_3();
        }

        if (*(v33 + 1584))
        {
          OJPEGPreDecode_cold_4();
        }

        v36 = *(v33 + 292);
        if (!*(v33 + 292))
        {
          return 0;
        }

        v37 = *(v33 + 293);
        if (!*(v33 + 293))
        {
          return 0;
        }

        v38 = (*(v33 + 256) + 8 * v36 - 1) / (8 * v36) * 8 * v36;
        *(v33 + 1516) = v38;
        v39 = 8 * v37;
        *(v33 + 1520) = v39;
        v40 = v38 / v36;
        *(v33 + 1524) = v40;
        *(v33 + 1528) = 8;
        v41 = v38 * v39;
        *(v33 + 1532) = v41;
        *(v33 + 1536) = 8 * v40;
        v42 = (v41 + 16 * v40);
        *(v33 + 1540) = v42;
        v43 = malloc_type_calloc(1uLL, v42, 0x79BC5794uLL);
        *(v33 + 1544) = v43;
        if (!v43 || (*(v33 + 1552) = v43, v44 = &v43[*(v33 + 1532)], *(v33 + 1560) = v44, *(v33 + 1568) = &v44[*(v33 + 1536)], LODWORD(v44) = *(v33 + 1520) + 2 * *(v33 + 1528) + 3, *(v33 + 1576) = v44, v45 = malloc_type_malloc(8 * v44, 0x10040436913F5uLL), (*(v33 + 1584) = v45) == 0))
        {
          v75 = "OJPEGWriteHeaderInfo";
LABEL_117:
          TIFFErrorExtR(result, v75, "Out of memory");
          return 0;
        }

        v46 = v45 + 3;
        *v45 = v45 + 3;
        v47 = *(v33 + 1520);
        v45[1] = *(v33 + 1584) + 8 * v47 + 24;
        v48 = *(v33 + 1528);
        v45[2] = *(v33 + 1584) + 8 * v47 + 8 * v48 + 24;
        if (v47)
        {
          v49 = 0;
          v50 = *(v33 + 1516);
          do
          {
            *v46++ = *(v33 + 1552) + v49;
            v49 += v50;
            --v47;
          }

          while (v47);
        }

        if (v48)
        {
          v51 = 0;
          v52 = *(v33 + 1524);
          v53 = v48;
          do
          {
            *v46++ = *(v33 + 1560) + v51;
            v51 += v52;
            --v53;
          }

          while (v53);
          v54 = 0;
          v55 = 8 * v48;
          do
          {
            *(v46 + v53) = *(v33 + 1568) + v54;
            v53 += 8;
            v54 += v52;
          }

          while (v55 != v53);
        }

        v56 = *(v33 + 256);
        v57 = *(v33 + 292);
        if (v56 % v57)
        {
          v58 = v56 / v57 + 1;
        }

        else
        {
          v58 = v56 / v57;
        }

        *(v33 + 1592) = v58;
        *(v33 + 1596) = 0;
        *(v33 + 12) = 0;
        v59 = *(v33 + 293);
        *(v33 + 1600) = (v59 * v57 + 2) * v58;
        v60 = *(v33 + 260);
        if (v60 % v59)
        {
          v61 = v60 / v59 + 1;
        }

        else
        {
          v61 = v60 / v59;
        }

        *(v33 + 1604) = v61;
        *(v33 + 1512) = 1;
      }
    }

    decompress_encap = jpeg_start_decompress_encap(v33, v33 + 792);
    if (!decompress_encap)
    {
      return decompress_encap;
    }

    if (*(v33 + 840) != *(v33 + 256))
    {
      TIFFErrorExtR(result, "OJPEGWriteHeaderInfo", "jpeg_start_decompress() returned image_width = %u, expected %u");
      return 0;
    }

    if (*(v33 + 1208) != __PAIR64__(*(v33 + 293), *(v33 + 292)))
    {
      TIFFErrorExtR(result, "OJPEGWriteHeaderInfo", "jpeg_start_decompress() returned max_h_samp_factor = %d and max_v_samp_factor = %d, expected %hhu and %hhu");
      return 0;
    }

    *(v33 + 601) = 1;
    v25 = *(v9 + 604);
    goto LABEL_86;
  }

  if (*(v9 + 602) != v7 || (v25 = *(v9 + 604), v25 > v24))
  {
    if (*(v9 + 608))
    {
      OJPEGLibjpegSessionAbort(result);
    }

    *(v9 + 601) = 0;
    goto LABEL_28;
  }

LABEL_86:
  *(v9 + 1596) = 0;
  if (v25 >= v24)
  {
LABEL_109:
    decompress_encap = 1;
    *(v9 + 8) = 1;
    return decompress_encap;
  }

  while (1)
  {
    v66 = *(result + 1096);
    if (*(v9 + 609))
    {
      break;
    }

    v69 = *(v66 + 1604);
    v70 = *(v66 + 1596);
    v71 = *(v66 + 1528);
    if (!v70)
    {
      goto LABEL_100;
    }

    if (v69 <= v71 - v70)
    {
      v72 = v70 + v69;
      if (v72 == v71)
      {
        v69 = 0;
      }

      else
      {
        v69 = v72;
      }
    }

    else
    {
      *(v66 + 1596) = 0;
      *(v66 + 12) = 0;
      v69 -= v71 - v70;
LABEL_100:
      while (v69 >= v71)
      {
        decompress_encap = jpeg_read_raw_data_encap(v66, v66 + 792, *(v66 + 1584), 8 * *(v66 + 293));
        if (!decompress_encap)
        {
          return decompress_encap;
        }

        v71 = *(v66 + 1528);
        v69 -= v71;
      }

      if (!v69)
      {
        goto LABEL_108;
      }

      decompress_encap = jpeg_read_raw_data_encap(v66, v66 + 792, *(v66 + 1584), 8 * *(v66 + 293));
      if (!decompress_encap)
      {
        return decompress_encap;
      }
    }

    *(v66 + 1596) = v69;
LABEL_108:
    v73 = *(v9 + 604) + 1;
    *(v9 + 604) = v73;
    if (v73 >= v24)
    {
      goto LABEL_109;
    }
  }

  if (!*(v66 + 5768))
  {
    v67 = malloc_type_malloc(*(v66 + 1600), 0x9DF0B703uLL);
    *(v66 + 5768) = v67;
    if (!v67)
    {
      v75 = "OJPEGPreDecodeSkipScanlines";
      goto LABEL_117;
    }
  }

  if (!*(v66 + 1604))
  {
    goto LABEL_108;
  }

  v68 = 0;
  while (1)
  {
    decompress_encap = jpeg_read_scanlines_encap(v66, v66 + 792, v66 + 5768);
    if (!decompress_encap)
    {
      return decompress_encap;
    }

    if (++v68 >= *(v66 + 1604))
    {
      goto LABEL_108;
    }
  }
}

uint64_t OJPEGPostDecode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(result + 1096);
  if (v9)
  {
    v10 = *(v9 + 604) + 1;
    *(v9 + 604) = v10;
    if (!(v10 % *(result + 224)))
    {
      if (!*(v9 + 608))
      {
        OJPEGPostDecode_cold_1();
      }

      result = OJPEGLibjpegSessionAbort(result);
      *(v9 + 601) = 0;
    }
  }

  else
  {
    v11 = *(result + 1200);

    return TIFFErrorExt(v11, "OJPEGPostDecode", "Cannot perform PostDecode, OJPEGState is NULL", a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t OJPEGDecode(uint64_t a1, _BYTE *a2, int64_t a3)
{
  v6 = *(a1 + 1096);
  if (*(v6 + 8))
  {
    if (*(v6 + 608))
    {
      if (*(v6 + 12))
      {
        goto LABEL_13;
      }

      if (!*(v6 + 609))
      {
        if (!(a3 % *(v6 + 1600)))
        {
          if (a3 < 1)
          {
            OJPEGDecode_cold_2();
          }

          v12 = *(v6 + 1596);
          v13 = a2;
          v14 = a3;
          while (1)
          {
            v15 = *(v6 + 293);
            if (!v12)
            {
              if (!jpeg_read_raw_data_encap(v6, v6 + 792, *(v6 + 1584), 8 * v15))
              {
                *(v6 + 12) = 1;
                goto LABEL_13;
              }

              v12 = *(v6 + 1596);
              v15 = *(v6 + 293);
            }

            if (*(v6 + 1592))
            {
              v16 = 0;
              v17 = (*(v6 + 1524) * v12);
              v18 = (*(v6 + 1568) + v17);
              v19 = (*(v6 + 1560) + v17);
              v20 = (*(v6 + 1552) + (v12 * v15 * *(v6 + 1516)));
              v21 = v13;
              do
              {
                v22 = *(v6 + 293);
                v23 = *(v6 + 292);
                if (*(v6 + 293))
                {
                  v24 = 0;
                  v25 = *(v6 + 292);
                  v26 = v20;
                  do
                  {
                    if (v25)
                    {
                      v27 = 0;
                      do
                      {
                        v28 = *v26++;
                        *v21++ = v28;
                        ++v27;
                        v23 = *(v6 + 292);
                      }

                      while (v27 < v23);
                      v22 = *(v6 + 293);
                      v25 = *(v6 + 292);
                    }

                    v26 += (*(v6 + 1516) - v25);
                    ++v24;
                  }

                  while (v24 < v22);
                }

                v20 += v23;
                v29 = *v19++;
                *v21 = v29;
                v30 = *v18++;
                v21[1] = v30;
                v21 += 2;
                ++v16;
              }

              while (v16 < *(v6 + 1592));
              v12 = *(v6 + 1596);
            }

            if (v12 + 1 == *(v6 + 1528))
            {
              v12 = 0;
            }

            else
            {
              ++v12;
            }

            *(v6 + 1596) = v12;
            v31 = *(v6 + 1600);
            v13 += v31;
            result = 1;
            v11 = v14 <= v31;
            v14 -= v31;
            if (v11)
            {
              return result;
            }
          }
        }

        v7 = "OJPEGDecodeRaw";
LABEL_12:
        TIFFErrorExtR(a1, v7, "Fractional scanline not read");
        goto LABEL_13;
      }

      if (a3 % *(v6 + 1600))
      {
        v7 = "OJPEGDecodeScanlines";
        goto LABEL_12;
      }

      if (a3 <= 0)
      {
        OJPEGDecode_cold_1();
      }

      v32 = a2;
      v9 = a3;
      while (jpeg_read_scanlines_encap(v6, v6 + 792, &v32))
      {
        v10 = *(v6 + 1600);
        v32 += v10;
        v11 = v9 <= v10;
        v9 -= v10;
        if (v11)
        {
          return 1;
        }
      }

LABEL_13:
      bzero(a2, a3);
    }

    else
    {
      bzero(a2, a3);
      TIFFErrorExtR(a1, "OJPEGDecode", "Cannot decode: libjpeg_session_active == 0");
    }
  }

  else
  {
    bzero(a2, a3);
    TIFFErrorExtR(a1, "OJPEGDecode", "Cannot decode: decoder not correctly initialized");
  }

  return 0;
}

void *OJPEGCleanup(void *result)
{
  v1 = result[137];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 224);
    result[161] = *(v1 + 216);
    result[160] = v3;
    result[162] = *(v1 + 232);
    v4 = *(v1 + 376);
    if (v4)
    {
      free(v4);
    }

    v5 = *(v1 + 384);
    if (v5)
    {
      free(v5);
    }

    v6 = *(v1 + 392);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v1 + 400);
    if (v7)
    {
      free(v7);
    }

    v8 = *(v1 + 408);
    if (v8)
    {
      free(v8);
    }

    v9 = *(v1 + 416);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v1 + 424);
    if (v10)
    {
      free(v10);
    }

    v11 = *(v1 + 432);
    if (v11)
    {
      free(v11);
    }

    v12 = *(v1 + 440);
    if (v12)
    {
      free(v12);
    }

    v13 = *(v1 + 448);
    if (v13)
    {
      free(v13);
    }

    v14 = *(v1 + 456);
    if (v14)
    {
      free(v14);
    }

    v15 = *(v1 + 464);
    if (v15)
    {
      free(v15);
    }

    if (*(v1 + 608))
    {
      OJPEGLibjpegSessionAbort(v2);
    }

    v16 = *(v1 + 1544);
    if (v16)
    {
      free(v16);
    }

    v17 = *(v1 + 1584);
    if (v17)
    {
      free(v17);
    }

    v18 = *(v1 + 5768);
    if (v18)
    {
      free(v18);
    }

    free(v1);
    v2[137] = 0;

    return _TIFFSetDefaultCompressionState(v2);
  }

  return result;
}

uint64_t OJPEGVGetField(uint64_t a1, uint64_t a2, _DWORD **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a3;
  v7 = *(a1 + 1096);
  if (a2 > 518)
  {
    if (a2 <= 520)
    {
      v13 = a3 + 1;
      if (a2 == 519)
      {
        **a3 = *(v7 + 295);
        v8 = v7 + 304;
      }

      else
      {
        **a3 = *(v7 + 296);
        v8 = v7 + 328;
      }

      goto LABEL_22;
    }

    if (a2 == 521)
    {
      v13 = a3 + 1;
      **a3 = *(v7 + 297);
      v8 = v7 + 352;
      goto LABEL_22;
    }

    if (a2 != 530)
    {
      goto LABEL_24;
    }

    if (!*(v7 + 290))
    {
      OJPEGSubsamplingCorrect(a1, a2, a3, a4, a5, a6, a7);
    }

    v10 = v13++;
    **v10 = *(v7 + 292);
    v9 = *(v7 + 293);
    goto LABEL_18;
  }

  if (a2 <= 513)
  {
    if (a2 != 512)
    {
      if (a2 == 513)
      {
        v8 = *(v7 + 272);
LABEL_22:
        **v13 = v8;
        return 1;
      }

      goto LABEL_24;
    }

    v9 = *(v7 + 288);
LABEL_18:
    **v13 = v9;
    return 1;
  }

  if (a2 == 514)
  {
    v8 = *(v7 + 280);
    goto LABEL_22;
  }

  if (a2 == 515)
  {
    v9 = *(v7 + 472);
    goto LABEL_18;
  }

LABEL_24:
  v12 = *(v7 + 216);

  return v12();
}

uint64_t OJPEGVSetField(uint64_t a1, int a2, unsigned int *a3)
{
  v4 = *(a1 + 1096);
  if (a2 > 518)
  {
    if (a2 > 520)
    {
      if (a2 != 521)
      {
        if (a2 != 530)
        {
          goto LABEL_26;
        }

        *(v4 + 291) = 1;
        v6 = *a3;
        *(v4 + 292) = *a3;
        v7 = a3[2];
        *(v4 + 293) = v7;
        *(a1 + 336) = v6;
        *(a1 + 338) = v7;
        goto LABEL_37;
      }

      v9 = *a3;
      if (!v9)
      {
        goto LABEL_37;
      }

      if (v9 < 4)
      {
        *(v4 + 297) = v9;
        v15 = *(a3 + 1);
        v16 = (v4 + 352);
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v9;
        }

        while (v9);
        goto LABEL_37;
      }

      TIFFErrorExtR(a1, "OJPEGVSetField", "JpegAcTables tag has incorrect count");
    }

    else if (a2 == 519)
    {
      v8 = *a3;
      if (!v8)
      {
        goto LABEL_37;
      }

      if (v8 < 4)
      {
        *(v4 + 295) = v8;
        v12 = *(a3 + 1);
        v13 = (v4 + 304);
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v8;
        }

        while (v8);
        goto LABEL_37;
      }

      TIFFErrorExtR(a1, "OJPEGVSetField", "JpegQTables tag has incorrect count");
    }

    else
    {
      v5 = *a3;
      if (!v5)
      {
        goto LABEL_37;
      }

      if (v5 < 4)
      {
        *(v4 + 296) = v5;
        v18 = *(a3 + 1);
        v19 = (v4 + 328);
        do
        {
          v20 = *v18++;
          *v19++ = v20;
          --v5;
        }

        while (v5);
        goto LABEL_37;
      }

      TIFFErrorExtR(a1, "OJPEGVSetField", "JpegDcTables tag has incorrect count");
    }

    return 0;
  }

  if (a2 > 513)
  {
    if (a2 == 514)
    {
      *(v4 + 280) = *a3;
    }

    else
    {
      if (a2 != 515)
      {
        goto LABEL_26;
      }

      *(v4 + 472) = *a3;
    }

LABEL_37:
    result = TIFFFieldWithTag(a1, a2);
    if (result)
    {
      v21 = *(result + 24);
      result = 1;
      *(a1 + ((v21 >> 3) & 0x1FFC) + 72) |= 1 << v21;
      *(a1 + 16) |= 8u;
    }

    return result;
  }

  if (a2 == 512)
  {
    *(v4 + 288) = *a3;
    goto LABEL_37;
  }

  if (a2 == 513)
  {
    *(v4 + 272) = *a3;
    goto LABEL_37;
  }

LABEL_26:
  v11 = *(v4 + 224);

  return v11();
}

uint64_t OJPEGPrintDir(uint64_t result, FILE *__stream, uint64_t a3)
{
  v3 = *(result + 1096);
  if (!v3)
  {
    OJPEGPrintDir_cold_1();
  }

  v6 = result;
  v7 = *(result + 80);
  if ((v7 & 4) != 0)
  {
    result = fprintf(__stream, "  JpegInterchangeFormat: %llu\n", *(v3 + 272));
    v7 = *(v6 + 80);
    if ((v7 & 8) == 0)
    {
LABEL_4:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_4;
  }

  result = fprintf(__stream, "  JpegInterchangeFormatLength: %llu\n", *(v3 + 280));
  v7 = *(v6 + 80);
  if ((v7 & 0x10) == 0)
  {
LABEL_5:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_16:
  fwrite("  JpegQTables:", 0xEuLL, 1uLL, __stream);
  if (*(v3 + 295))
  {
    v9 = 0;
    do
    {
      fprintf(__stream, " %llu", *(v3 + 304 + 8 * v9++));
    }

    while (v9 < *(v3 + 295));
  }

  result = fputc(10, __stream);
  v7 = *(v6 + 80);
  if ((v7 & 0x20) == 0)
  {
LABEL_6:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_20:
  fwrite("  JpegDcTables:", 0xFuLL, 1uLL, __stream);
  if (*(v3 + 296))
  {
    v10 = 0;
    do
    {
      fprintf(__stream, " %llu", *(v3 + 328 + 8 * v10++));
    }

    while (v10 < *(v3 + 296));
  }

  result = fputc(10, __stream);
  v7 = *(v6 + 80);
  if ((v7 & 0x40) == 0)
  {
LABEL_7:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_24:
  fwrite("  JpegAcTables:", 0xFuLL, 1uLL, __stream);
  if (*(v3 + 297))
  {
    v11 = 0;
    do
    {
      fprintf(__stream, " %llu", *(v3 + 352 + 8 * v11++));
    }

    while (v11 < *(v3 + 297));
  }

  result = fputc(10, __stream);
  v7 = *(v6 + 80);
  if ((v7 & 0x80) == 0)
  {
LABEL_8:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  result = fprintf(__stream, "  JpegProc: %hhu\n", *(v3 + 288));
  if ((*(v6 + 80) & 0x100) != 0)
  {
LABEL_9:
    result = fprintf(__stream, "  JpegRestartInterval: %hu\n", *(v3 + 472));
  }

LABEL_10:
  v8 = *(v3 + 232);
  if (v8)
  {

    return v8(v6, __stream, a3);
  }

  return result;
}

uint64_t OJPEGSubsamplingCorrect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 1096);
  if (*(v7 + 290))
  {
    OJPEGSubsamplingCorrect_cold_1();
  }

  v8 = result;
  if (*(result + 130) != 3 || ((v9 = *(result + 122), v9 != 6) ? (v10 = v9 == 10) : (v10 = 1), !v10))
  {
    if (*(v7 + 291))
    {
      result = TIFFWarningExtR(result, "OJPEGSubsamplingCorrect", "Subsampling tag not appropriate for this Photometric and/or SamplesPerPixel");
    }

    *(v7 + 292) = 257;
    *(v7 + 294) = 0;
    goto LABEL_14;
  }

  v11 = *(v7 + 292);
  v12 = *(v7 + 293);
  *(v7 + 289) = 257;
  result = OJPEGReadHeaderInfoSec(result, a2, a3, a4, a5, a6, a7);
  v13 = *(v7 + 294);
  if (*(v7 + 294))
  {
    *(v7 + 292) = 257;
    *(v7 + 289) = 0;
    if (v11 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v14 = *(v7 + 292);
  *(v7 + 289) = 0;
  if (v14 == v11)
  {
LABEL_16:
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = *(v7 + 293) == v12;
    }

    if (v15)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 291))
  {
    result = TIFFWarningExtR(v8, "OJPEGSubsamplingCorrect", "Subsampling inside JPEG data [%hhu,%hhu] does not match subsampling tag values [%hhu,%hhu]; assuming subsampling inside JPEG data is correct");
  }

  else
  {
    result = TIFFWarningExtR(v8, "OJPEGSubsamplingCorrect", "Subsampling tag is not set, yet subsampling inside JPEG data [%hhu,%hhu] does not match default values [2,2]; assuming subsampling inside JPEG data is correct");
  }

LABEL_23:
  if (!*(v7 + 294) || (!*(v7 + 291) ? (result = TIFFWarningExtR(v8, "OJPEGSubsamplingCorrect", "Subsampling tag is not set, yet subsampling inside JPEG data does not match default values [2,2] (nor any other values allowed in TIFF); assuming subsampling inside JPEG data is correct and desubsampling inside JPEG decompression")) : (result = TIFFWarningExtR(v8, "OJPEGSubsamplingCorrect", "Subsampling inside JPEG data does not match subsampling tag values [%hhu,%hhu] (nor any other values allowed in TIFF); assuming subsampling inside JPEG data is correct and desubsampling inside JPEG decompression")), !*(v7 + 294)))
  {
    v16 = *(v7 + 293);
    if (*(v7 + 292) < v16)
    {
      result = TIFFWarningExtR(v8, "OJPEGSubsamplingCorrect", "Subsampling values [%hhu,%hhu] are not allowed in TIFF", *(v7 + 292), v16);
    }
  }

LABEL_14:
  *(v7 + 290) = 1;
  return result;
}

uint64_t OJPEGReadHeaderInfoSec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v168 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1096);
  v163 = 0;
  v9 = *(v8 + 240);
  if (!v9)
  {
    v9 = (*(a1 + 1240))(*(a1 + 1200));
    *(v8 + 240) = v9;
  }

  v10 = *(v8 + 272);
  if (v10)
  {
    if (v9 <= v10)
    {
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
    }

    else
    {
      v11 = *(v8 + 280);
      v12 = __CFADD__(v11, v10);
      if (!v11 || v12 || v11 + v10 > v9)
      {
        *(v8 + 280) = v9 - v10;
      }
    }
  }

  v13 = 0;
  *(v8 + 1608) = 0;
  *(v8 + 1616) = *(a1 + 228);
  *(v8 + 1640) = 0;
  for (*(v8 + 1648) = 0; ; v13 = *(v8 + 1648))
  {
    if (!v13)
    {
      result = OJPEGReadBufferFill(v8, a2, a3, a4, a5, a6, a7);
      if (!result)
      {
        return result;
      }

      v13 = *(v8 + 1648);
      if (!v13)
      {
        OJPEGReadHeaderInfoSec_cold_2();
      }
    }

    v15 = *(v8 + 1656);
    v164 = *v15;
    if (v164 != 255)
    {
      goto LABEL_125;
    }

    *(v8 + 1656) = v15 + 1;
    *(v8 + 1648) = v13 - 1;
    while (1)
    {
      result = OJPEGReadByte(v8, &v164, a3, a4, a5, a6, a7);
      if (!result)
      {
        return result;
      }

      if (v164 <= 0xFDu)
      {
        break;
      }

      if (v164 != 255)
      {
        if (v164 != 254)
        {
          goto LABEL_128;
        }

LABEL_26:
        result = OJPEGReadWord(v8, &v163, a3, a4, a5, a6, a7);
        if (!result)
        {
          return result;
        }

        if (v163 > 1u)
        {
          if (v163 != 2)
          {
            v16 = (v163 - 2);
            v17 = v8;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (*(v8 + 289))
        {
          return 0;
        }

        v90 = "OJPEGReadHeaderInfoSec";
LABEL_208:
        TIFFErrorExtR(a1, v90, "Corrupt JPEG data");
        return 0;
      }
    }

    if (v164 > 0xDAu)
    {
      if (v164 - 224 < 0x10)
      {
        goto LABEL_26;
      }

      if (v164 == 219)
      {
        v69 = *(a1 + 1096);
        v167.i16[0] = 0;
        if (!OJPEGReadWord(v69, &v167, a3, a4, a5, a6, a7))
        {
          return 0;
        }

        v70 = v167.i16[0] - 2;
        if (v167.u16[0] <= 2u)
        {
          if (*(v69 + 289))
          {
            return 0;
          }
        }

        else
        {
          if (*(v69 + 289))
          {
            OJPEGReadSkip(v69, (v167.i16[0] - 2));
            continue;
          }

          v80 = v69 + 376;
          while (v70 > 0x40u)
          {
            v81 = malloc_type_malloc(0x49uLL, 0x4FF02492uLL);
            if (!v81)
            {
              v131 = "OJPEGReadHeaderInfoSecStreamDqt";
              goto LABEL_214;
            }

            v86 = v81;
            *v81 = 73;
            *(v81 + 1) = 1124129791;
            if (!OJPEGReadBlock(v69, 65, v81 + 8, v82, v83, v84, v85))
            {
              goto LABEL_216;
            }

            v87 = v86[8] & 0xF;
            if (v87 >= 4)
            {
              TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamDqt", "Corrupt DQT marker in JPEG data");
LABEL_216:
              v132 = v86;
              goto LABEL_283;
            }

            v88 = *(v80 + 8 * v87);
            if (v88)
            {
              free(v88);
            }

            *(v80 + 8 * v87) = v86;
            v70 -= 65;
            if (!v70)
            {
              goto LABEL_31;
            }
          }
        }

        TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamDqt", "Corrupt DQT marker in JPEG data");
        return 0;
      }

      if (v164 == 221)
      {
        v36 = *(a1 + 1096);
        v167.i16[0] = 0;
        if (!OJPEGReadWord(v36, &v167, a3, a4, a5, a6, a7))
        {
          return 0;
        }

        if (v167.u16[0] != 4)
        {
          TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamDri", "Corrupt DRI marker in JPEG data");
          return 0;
        }

        if (!OJPEGReadWord(v36, &v167, v37, v38, v39, v40, v41))
        {
          return 0;
        }

        *(v36 + 472) = v167.i16[0];
        continue;
      }

LABEL_128:
      TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSec", "Unknown marker type %hhu in JPEG data");
      return 0;
    }

    if (v164 <= 0xC3u)
    {
      if (v164 - 192 >= 2 && v164 != 195)
      {
        goto LABEL_128;
      }

      v18 = *(a1 + 1096);
      if (*(v18 + 475))
      {
        v90 = "OJPEGReadHeaderInfoSecStreamSof";
        goto LABEL_208;
      }

      if (!*(v18 + 289))
      {
        *(v18 + 476) = v164;
      }

      v167.i16[0] = 0;
      if (!OJPEGReadWord(v18, &v167, a3, a4, a5, a6, a7))
      {
        return 0;
      }

      if (v167.u16[0] > 0xAu)
      {
        v24 = (v167.i16[0] - 8) / 3u;
        v25 = *(v18 + 289);
        if (v167.i16[0] - 8 != 3 * (((v167.i16[0] - 8) / 0x18000u) >> 1))
        {
          goto LABEL_132;
        }

        if (!*(v18 + 289) && v24 != *(v18 + 268))
        {
          TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data indicates unexpected number of samples");
          return 0;
        }

        v166 = 0;
        if (!OJPEGReadByte(v18, &v166, v19, v20, v21, v22, v23))
        {
          return 0;
        }

        if (v166 != 8)
        {
          if (!*(v18 + 289))
          {
            TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data indicates unexpected number of bits per sample");
          }

          return 0;
        }

        if (*(v18 + 289))
        {
          OJPEGReadSkip(v18, 4u);
        }

        else
        {
          v165 = 0;
          if (!OJPEGReadWord(v18, &v165, v26, v27, v28, v29, v30))
          {
            return 0;
          }

          if (*(v18 + 252) > v165 && *(v18 + 264) > v165)
          {
            TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data indicates unexpected height");
            return 0;
          }

          *(v18 + 484) = v165;
          if (!OJPEGReadWord(v18, &v165, v45, v46, v47, v48, v49))
          {
            return 0;
          }

          v50 = *(v18 + 256);
          if (*(v18 + 248) > v165 && v50 > v165)
          {
            TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data indicates unexpected width");
            return 0;
          }

          if (v50 < v165)
          {
            TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data image width exceeds expected image width");
            return 0;
          }

          *(v18 + 480) = v165;
        }

        if (!OJPEGReadByte(v18, &v166, v31, v32, v33, v34, v35))
        {
          return 0;
        }

        if (v24 == v166)
        {
          if (!OJPEGReadByte(v18, &v166, v51, v52, v53, v54, v55))
          {
            return 0;
          }

          v61 = 0;
          while (1)
          {
            if (!*(v18 + 289))
            {
              *(v18 + 488 + v61) = v166;
            }

            if (!OJPEGReadByte(v18, &v166, v56, v57, v58, v59, v60))
            {
              return 0;
            }

            if (*(v18 + 289))
            {
              v67 = v166;
              if (!v61)
              {
                *(v18 + 292) = v166 >> 4;
                *(v18 + 293) = v67 & 0xF;
LABEL_84:
                *(v18 + 294) = 1;
                goto LABEL_85;
              }

              if (v166 != 17)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v68 = v166;
              *(v18 + 491 + v61) = v166;
              if (!*(v18 + 294))
              {
                if (v61)
                {
                  if (v68 != 17)
                  {
                    goto LABEL_211;
                  }
                }

                else if ((*(v18 + 293) | (16 * *(v18 + 292))) != v68)
                {
LABEL_211:
                  TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "JPEG compressed data indicates unexpected subsampling values");
                  return 0;
                }
              }
            }

LABEL_85:
            if (!OJPEGReadByte(v18, &v166, v62, v63, v64, v65, v66))
            {
              return 0;
            }

            if (*(v18 + 289))
            {
              if (++v61 == v24)
              {
                goto LABEL_114;
              }
            }

            else
            {
              *(v18 + 494 + v61++) = v166;
              if (v61 == v24)
              {
                *(v18 + 475) = 1;
LABEL_114:
                if (*(v8 + 289))
                {
                  return 1;
                }

                goto LABEL_31;
              }
            }

            if (!OJPEGReadByte(v18, &v166, a3, a4, a5, a6, a7))
            {
              return 0;
            }
          }
        }
      }

      v25 = *(v18 + 289);
LABEL_132:
      if (!v25)
      {
        TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSof", "Corrupt SOF marker in JPEG data");
      }

      return 0;
    }

    if (v164 != 196)
    {
      break;
    }

    v42 = *(a1 + 1096);
    v167.i16[0] = 0;
    if (!OJPEGReadWord(v42, &v167, a3, a4, a5, a6, a7))
    {
      return 0;
    }

    v43 = v167.i16[0];
    v44 = v167.i16[0] - 2;
    if (v167.u16[0] <= 2u)
    {
      if (!*(v42 + 289))
      {
        TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamDht", "Corrupt DHT marker in JPEG data");
      }

      return 0;
    }

    if (!*(v42 + 289))
    {
      v71 = v167.u16[0] + 6;
      v72 = malloc_type_malloc(v167.u16[0] + 6, 0xACEB5F00uLL);
      if (!v72)
      {
        v131 = "OJPEGReadHeaderInfoSecStreamDht";
LABEL_214:
        TIFFErrorExtR(a1, v131, "Out of memory");
        return 0;
      }

      v77 = v72;
      *v72 = v71;
      *(v72 + 2) = -15105;
      *(v72 + 6) = HIBYTE(v43);
      *(v72 + 7) = v43;
      if (OJPEGReadBlock(v42, v44, v72 + 8, v73, v74, v75, v76))
      {
        v78 = v77[8];
        if ((v78 & 0xF0) == 0x10)
        {
          v78 &= 0xFu;
          if (v78 < 4)
          {
            v79 = v42 + 440;
            goto LABEL_118;
          }
        }

        else if ((v78 & 0xF0) == 0 && v78 < 4)
        {
          v79 = v42 + 408;
LABEL_118:
          v89 = *(v79 + 8 * v78);
          if (v89)
          {
            free(v89);
          }

          *(v79 + 8 * v78) = v77;
          continue;
        }

        TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamDht", "Corrupt DHT marker in JPEG data");
      }

LABEL_282:
      v132 = v77;
LABEL_283:
      free(v132);
      return 0;
    }

    v16 = (v167.i16[0] - 2);
    v17 = v42;
LABEL_30:
    OJPEGReadSkip(v17, v16);
LABEL_31:
    ;
  }

  if (v164 == 216)
  {
    goto LABEL_31;
  }

  if (v164 != 218)
  {
    goto LABEL_128;
  }

  if (*(v8 + 289))
  {
    return 1;
  }

  if (*(v8 + 269))
  {
    OJPEGReadHeaderInfoSec_cold_1();
  }

  result = OJPEGReadHeaderInfoSecStreamSos(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    return result;
  }

LABEL_125:
  if (*(v8 + 289) || *(v8 + 475))
  {
    return 1;
  }

  v91 = *(a1 + 1096);
  if (!*(v91 + 304))
  {
    v130 = "OJPEGReadHeaderInfoSecTablesQTable";
LABEL_278:
    TIFFErrorExtR(a1, v130, "Missing JPEG tables");
    return 0;
  }

  *(v91 + 1632) = 0;
  v92 = *(v91 + 268);
  if (*(v91 + 268))
  {
    v93 = 0;
    v94 = v91 + 304;
    v95 = v91 + 376;
    v96 = v91 + 494;
    v97 = -1;
    while (1)
    {
      v98 = *(v94 + 8 * v93);
      if (!v98)
      {
        break;
      }

      if (v93)
      {
        v99 = v93 - 1;
        if (v98 == *(v94 + 8 * (v93 - 1)))
        {
          goto LABEL_150;
        }

        if (v93 != 1)
        {
          v100 = 0;
          do
          {
            if (v98 == *(v94 + 8 * v100))
            {
              TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecTablesQTable", "Corrupt JpegQTables tag value");
              return 0;
            }

            ++v100;
          }

          while (v97 != v100);
        }
      }

      v101 = malloc_type_malloc(0x49uLL, 0x7A19DCEBuLL);
      if (!v101)
      {
        v131 = "OJPEGReadHeaderInfoSecTablesQTable";
        goto LABEL_214;
      }

      v77 = v101;
      *v101 = 73;
      *(v101 + 1) = 1124129791;
      v101[8] = v93;
      (*(a1 + 1224))(*(a1 + 1200), *(v94 + 8 * v93), 0);
      if ((*(a1 + 1208))(*(a1 + 1200), v77 + 9, 64) != 64)
      {
        goto LABEL_282;
      }

      v102 = *(v95 + 8 * v93);
      if (v102)
      {
        free(v102);
      }

      *(v95 + 8 * v93) = v77;
      *(v96 + v93) = v93;
      v92 = *(v91 + 268);
LABEL_151:
      ++v93;
      ++v97;
      if (v93 >= v92)
      {
        goto LABEL_152;
      }
    }

    v99 = v93 - 1;
LABEL_150:
    *(v96 + v93) = *(v96 + v99);
    goto LABEL_151;
  }

LABEL_152:
  *(v8 + 476) = -64;
  v103 = *(v8 + 268);
  if (*(v8 + 268))
  {
    v104 = vdupq_n_s64(v103 - 1);
    v105 = xmmword_186205E50;
    v106 = xmmword_186205E60;
    v107 = xmmword_186205E70;
    v108 = xmmword_186205E80;
    v109 = xmmword_186205E90;
    v110 = xmmword_186205EA0;
    v111 = (v8 + 503);
    v112 = 503;
    v113 = xmmword_186205EB0;
    v114 = xmmword_186205EC0;
    v115 = vdupq_n_s64(0x10uLL);
    do
    {
      v116 = v112 + 9;
      v117 = vmovn_s64(vcgeq_u64(v104, v114));
      if (vuzp1_s8(vuzp1_s16(v117, *v104.i8), *v104.i8).u8[0])
      {
        *(v111 - 15) = v116;
      }

      if (vuzp1_s8(vuzp1_s16(v117, *&v104), *&v104).i8[1])
      {
        *(v111 - 14) = v116 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v104, vmovn_s64(vcgeq_u64(v104, *&v113))), *&v104).i8[2])
      {
        *(v111 - 13) = v116 | 2;
        *(v111 - 12) = v116 | 3;
      }

      v118 = vmovn_s64(vcgeq_u64(v104, v110));
      if (vuzp1_s8(*&v104, vuzp1_s16(v118, *&v104)).i32[1])
      {
        *(v111 - 11) = v116 | 4;
      }

      if (vuzp1_s8(*&v104, vuzp1_s16(v118, *&v104)).i8[5])
      {
        *(v111 - 10) = v116 | 5;
      }

      if (vuzp1_s8(*&v104, vuzp1_s16(*&v104, vmovn_s64(vcgeq_u64(v104, *&v109)))).i8[6])
      {
        *(v111 - 9) = v116 | 6;
        *(v111 - 8) = v116 | 7;
      }

      v119 = vmovn_s64(vcgeq_u64(v104, v108));
      if (vuzp1_s8(vuzp1_s16(v119, *v104.i8), *v104.i8).u8[0])
      {
        *(v111 - 7) = v116 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v119, *&v104), *&v104).i8[1])
      {
        *(v111 - 6) = v116 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v104, vmovn_s64(vcgeq_u64(v104, *&v107))), *&v104).i8[2])
      {
        *(v111 - 5) = v116 | 0xA;
        *(v111 - 4) = v116 | 0xB;
      }

      v120 = vmovn_s64(vcgeq_u64(v104, v106));
      if (vuzp1_s8(*&v104, vuzp1_s16(v120, *&v104)).i32[1])
      {
        *(v111 - 3) = v116 | 0xC;
      }

      if (vuzp1_s8(*&v104, vuzp1_s16(v120, *&v104)).i8[5])
      {
        *(v111 - 2) = v116 | 0xD;
      }

      if (vuzp1_s8(*&v104, vuzp1_s16(*&v104, vmovn_s64(vcgeq_u64(v104, *&v105)))).i8[6])
      {
        *(v111 - 1) = v116 | 0xE;
        *v111 = v116 | 0xF;
      }

      v110 = vaddq_s64(v110, v115);
      v113 = vaddq_s64(v113, v115);
      v114 = vaddq_s64(v114, v115);
      v109 = vaddq_s64(v109, v115);
      v108 = vaddq_s64(v108, v115);
      v107 = vaddq_s64(v107, v115);
      v106 = vaddq_s64(v106, v115);
      v105 = vaddq_s64(v105, v115);
      v112 += 16;
      v111 += 16;
    }

    while (v112 - ((v103 + 15) & 0x1F0) != 503);
    *(v8 + 491) = *(v8 + 293) | (16 * *(v8 + 292));
    if (v103 != 1)
    {
      v121 = vdupq_n_s64(v103 - 2);
      v122 = -((v103 + 14) & 0x1F0);
      v123 = (v8 + 507);
      v124 = 507;
      do
      {
        v125 = vdupq_n_s64(v124 - 507);
        v126 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205EC0)));
        if (vuzp1_s8(vuzp1_s16(v126, *v121.i8), *v121.i8).u8[0])
        {
          *(v123 - 15) = 17;
        }

        if (vuzp1_s8(vuzp1_s16(v126, *&v121), *&v121).i8[1])
        {
          *(v123 - 14) = 17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205EB0)))), *&v121).i8[2])
        {
          *(v123 - 13) = 17;
          *(v123 - 12) = 17;
        }

        v127 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205EA0)));
        if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i32[1])
        {
          *(v123 - 11) = 17;
        }

        if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i8[5])
        {
          *(v123 - 10) = 17;
        }

        if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205E90))))).i8[6])
        {
          *(v123 - 9) = 17;
          *(v123 - 8) = 17;
        }

        v128 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205E80)));
        if (vuzp1_s8(vuzp1_s16(v128, *v121.i8), *v121.i8).u8[0])
        {
          *(v123 - 7) = 17;
        }

        if (vuzp1_s8(vuzp1_s16(v128, *&v121), *&v121).i8[1])
        {
          *(v123 - 6) = 17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205E70)))), *&v121).i8[2])
        {
          *(v123 - 5) = 17;
          *(v123 - 4) = 17;
        }

        v129 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205E60)));
        if (vuzp1_s8(*&v121, vuzp1_s16(v129, *&v121)).i32[1])
        {
          *(v123 - 3) = 17;
        }

        if (vuzp1_s8(*&v121, vuzp1_s16(v129, *&v121)).i8[5])
        {
          *(v123 - 2) = 17;
        }

        if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v125, xmmword_186205E50))))).i8[6])
        {
          *(v123 - 1) = 17;
          *v123 = 17;
        }

        v124 += 16;
        v123 += 16;
      }

      while (v122 + v124 != 507);
    }
  }

  else
  {
    *(v8 + 491) = *(v8 + 293) | (16 * *(v8 + 292));
  }

  *(v8 + 480) = *(v8 + 256);
  *(v8 + 484) = *(v8 + 264);
  *(v8 + 475) = 1;
  v133 = *(a1 + 1096);
  if (!*(v133 + 328))
  {
    v130 = "OJPEGReadHeaderInfoSecTablesDcTable";
    goto LABEL_278;
  }

  *(v133 + 1632) = 0;
  v134 = *(v133 + 268);
  if (!*(v133 + 268))
  {
LABEL_248:
    result = OJPEGReadHeaderInfoSecTablesAcTable(a1);
    if (!result)
    {
      return result;
    }

    v150 = *(v8 + 268);
    v151 = v150 - 2;
    if (v150 >= 2)
    {
      v152 = 0;
      v153 = (v150 + 14) & 0x1F0;
      v154 = vdupq_n_s64(v151);
      v155 = (v8 + 513);
      result = 1;
      do
      {
        v156 = vdupq_n_s64(v152);
        v157 = vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205EC0)));
        if (vuzp1_s8(vuzp1_s16(v157, *v154.i8), *v154.i8).u8[0])
        {
          *(v155 - 15) = v152 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(v157, *&v154), *&v154).i8[1])
        {
          *(v155 - 14) = v152 | 2;
        }

        if (vuzp1_s8(vuzp1_s16(*&v154, vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205EB0)))), *&v154).i8[2])
        {
          *(v155 - 13) = v152 | 3;
          *(v155 - 12) = v152 | 4;
        }

        v158 = vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205EA0)));
        if (vuzp1_s8(*&v154, vuzp1_s16(v158, *&v154)).i32[1])
        {
          *(v155 - 11) = v152 | 5;
        }

        if (vuzp1_s8(*&v154, vuzp1_s16(v158, *&v154)).i8[5])
        {
          *(v155 - 10) = v152 | 6;
        }

        if (vuzp1_s8(*&v154, vuzp1_s16(*&v154, vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205E90))))).i8[6])
        {
          *(v155 - 9) = v152 | 7;
          *(v155 - 8) = v152 | 8;
        }

        v159 = vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205E80)));
        if (vuzp1_s8(vuzp1_s16(v159, *v154.i8), *v154.i8).u8[0])
        {
          *(v155 - 7) = v152 | 9;
        }

        if (vuzp1_s8(vuzp1_s16(v159, *&v154), *&v154).i8[1])
        {
          *(v155 - 6) = v152 | 0xA;
        }

        if (vuzp1_s8(vuzp1_s16(*&v154, vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205E70)))), *&v154).i8[2])
        {
          *(v155 - 5) = v152 | 0xB;
          *(v155 - 4) = v152 | 0xC;
        }

        v160 = vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205E60)));
        if (vuzp1_s8(*&v154, vuzp1_s16(v160, *&v154)).i32[1])
        {
          *(v155 - 3) = v152 | 0xD;
        }

        if (vuzp1_s8(*&v154, vuzp1_s16(v160, *&v154)).i8[5])
        {
          *(v155 - 2) = v152 | 0xE;
        }

        if (vuzp1_s8(*&v154, vuzp1_s16(*&v154, vmovn_s64(vcgeq_u64(v154, vorrq_s8(v156, xmmword_186205E50))))).i8[6])
        {
          *(v155 - 1) = v152 | 0xF;
          *v155 = v152 + 16;
        }

        v152 += 16;
        v155 += 16;
        v153 -= 16;
      }

      while (v153);
      return result;
    }

    return 1;
  }

  v135 = 0;
  v136 = v133 + 328;
  v137 = v133 + 408;
  v167 = 0uLL;
  v138 = v133 + 500;
  v139 = -1;
  v161 = v133 + 500;
  v162 = v133;
  while (1)
  {
    v140 = *(v136 + 8 * v135);
    if (!v140)
    {
      v141 = v135 - 1;
LABEL_246:
      *(v138 + v135) = *(v138 + v141);
      goto LABEL_247;
    }

    if (v135)
    {
      v141 = v135 - 1;
      if (v140 == *(v136 + 8 * (v135 - 1)))
      {
        goto LABEL_246;
      }

      if (v135 != 1)
      {
        break;
      }
    }

LABEL_237:
    (*(a1 + 1224))(*(a1 + 1200));
    if ((*(a1 + 1208))(*(a1 + 1200), &v167, 16) != 16)
    {
      return 0;
    }

    v143 = vmovl_high_u8(v167);
    v144 = vmovl_u8(*v167.i8);
    v144.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v144.i8, *v143.i8), vaddl_high_u16(v144, v143)));
    v145 = v144.u32[0];
    v146 = v144.i32[0] + 25;
    v147 = malloc_type_malloc((v144.i32[0] + 25), 0x71A2E669uLL);
    if (!v147)
    {
      v131 = "OJPEGReadHeaderInfoSecTablesDcTable";
      goto LABEL_214;
    }

    v77 = v147;
    v148 = 0;
    *v147 = v146;
    *(v147 + 2) = -15105;
    v147[6] = (v145 + 19) >> 8;
    v147[7] = v145 + 19;
    v147[8] = v135;
    do
    {
      v147[v148 + 9] = v167.u8[v148];
      ++v148;
    }

    while (v148 != 16);
    if (v145 != (*(a1 + 1208))(*(a1 + 1200), v147 + 25, v145))
    {
      goto LABEL_282;
    }

    v149 = *(v137 + 8 * v135);
    if (v149)
    {
      free(v149);
    }

    *(v137 + 8 * v135) = v77;
    v138 = v161;
    *(v161 + v135) = 16 * v135;
    v134 = *(v162 + 268);
LABEL_247:
    ++v135;
    ++v139;
    if (v135 >= v134)
    {
      goto LABEL_248;
    }
  }

  v142 = 0;
  while (v140 != *(v136 + 8 * v142))
  {
    if (v139 == ++v142)
    {
      goto LABEL_237;
    }
  }

  TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecTablesDcTable", "Corrupt JpegDcTables tag value");
  return 0;
}

unint64_t OJPEGReadByte(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a1 + 1648))
  {
    result = OJPEGReadBufferFill(a1, a2, a3, a4, a5, a6, a7);
    if (!result)
    {
      return result;
    }

    if (!*(a1 + 1648))
    {
      OJPEGReadByte_cold_1();
    }
  }

  *a2 = *(*(a1 + 1656))++;
  --*(a1 + 1648);
  return 1;
}

unint64_t OJPEGReadWord(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  result = OJPEGReadByte(a1, &v15, a3, a4, a5, a6, a7);
  if (result)
  {
    *a2 = v15 << 8;
    result = OJPEGReadByte(a1, &v15, v10, v11, v12, v13, v14);
    if (result)
    {
      *a2 |= v15;
      return 1;
    }
  }

  return result;
}

uint64_t OJPEGReadSkip(uint64_t result, unsigned int a2)
{
  v2 = *(result + 1648);
  if (v2 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(result + 1648);
  }

  *(result + 1656) += v3;
  *(result + 1648) = v2 - v3;
  if (v2 < a2)
  {
    v4 = a2 - v3;
    v5 = *(result + 1640);
    if (v5 < v4)
    {
      v4 = *(result + 1640);
    }

    *(result + 1624) += v4;
    *(result + 1640) = v5 - v4;
    *(result + 1632) = 0;
  }

  return result;
}

unint64_t OJPEGReadHeaderInfoSecStreamSos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 1096);
  if (v7[289])
  {
    OJPEGReadHeaderInfoSecStreamSos_cold_1();
  }

  if (!v7[475])
  {
    goto LABEL_13;
  }

  v27 = 0;
  result = OJPEGReadWord(v7, &v27, a3, a4, a5, a6, a7);
  if (!result)
  {
    return result;
  }

  if (2 * v7[270] + 6 != v27)
  {
    goto LABEL_13;
  }

  v26 = 0;
  result = OJPEGReadByte(v7, &v26, v10, v11, v12, v13, v14);
  if (!result)
  {
    return result;
  }

  if (v26 == v7[270])
  {
    if (v26)
    {
      v20 = 0;
      while (1)
      {
        result = OJPEGReadByte(v7, &v26, v15, v16, v17, v18, v19);
        if (!result)
        {
          break;
        }

        v7[v20 + 497 + v7[269]] = v26;
        result = OJPEGReadByte(v7, &v26, v21, v22, v23, v24, v25);
        if (!result)
        {
          break;
        }

        v7[v20++ + 500 + v7[269]] = v26;
        if (v20 >= v7[270])
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      OJPEGReadSkip(v7, 3u);
      return 1;
    }
  }

  else
  {
LABEL_13:
    TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecStreamSos", "Corrupt SOS marker in JPEG data");
    return 0;
  }

  return result;
}

uint64_t OJPEGReadHeaderInfoSecTablesAcTable(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1096);
  if (!*(v2 + 352))
  {
    TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecTablesAcTable", "Missing JPEG tables", *&v22);
    return 0;
  }

  *(v2 + 1632) = 0;
  v3 = *(v2 + 268);
  if (!*(v2 + 268))
  {
    return 1;
  }

  v4 = 0;
  v5 = v2 + 352;
  v22 = 0uLL;
  v6 = v2 + 440;
  v7 = v2 + 500;
  while (1)
  {
    v8 = *(v5 + 8 * v4);
    if (!v8)
    {
      v9 = v4 - 1;
LABEL_20:
      *(v7 + v4) |= *(v7 + v9) & 0xF;
      goto LABEL_21;
    }

    if (v4)
    {
      v9 = v4 - 1;
      if (v8 == *(v5 + 8 * (v4 - 1)))
      {
        goto LABEL_20;
      }

      if (v4 != 1)
      {
        break;
      }
    }

LABEL_11:
    (*(a1 + 1224))(*(a1 + 1200));
    if ((*(a1 + 1208))(*(a1 + 1200), &v22, 16) != 16)
    {
      return 0;
    }

    v11 = vmovl_high_u8(v22);
    v12 = vmovl_u8(*v22.i8);
    v12.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v12.i8, *v11.i8), vaddl_high_u16(v12, v11)));
    v13 = v12.u32[0];
    v14 = v12.i32[0] + 25;
    v15 = malloc_type_malloc((v12.i32[0] + 25), 0xD515BCADuLL);
    if (!v15)
    {
      TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecTablesAcTable", "Out of memory", *&v22);
      return 0;
    }

    v16 = v15;
    *v15 = v14;
    *(v15 + 2) = -15105;
    *(v15 + 6) = (v13 + 19) >> 8;
    *(v15 + 7) = v13 + 19;
    *(v15 + 8) = v4 | 0x10;
    v17 = &v22;
    for (i = 9; i != 25; ++i)
    {
      v19 = v17->i8[0];
      v17 = (v17 + 1);
      *(v15 + i) = v19;
    }

    if (v13 != (*(a1 + 1208))(*(a1 + 1200), v15 + 25, v13))
    {
      free(v16);
      return 0;
    }

    v20 = *(v6 + 8 * v4);
    if (v20)
    {
      free(v20);
    }

    *(v6 + 8 * v4) = v16;
    *(v7 + v4) |= v4;
    v3 = *(v2 + 268);
LABEL_21:
    if (++v4 >= v3)
    {
      return 1;
    }
  }

  v10 = 0;
  while (v8 != *(v5 + 8 * v10))
  {
    if (v9 <= ++v10)
    {
      goto LABEL_11;
    }
  }

  TIFFErrorExtR(a1, "OJPEGReadHeaderInfoSecTablesAcTable", "Corrupt JpegAcTables tag value", *&v22);
  return 0;
}

unint64_t OJPEGReadBufferFill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 1640);
  if (!v8)
  {
    do
    {
      *(a1 + 1632) = 0;
      v9 = *(a1 + 1608);
      if (v9 == 2)
      {
        v11 = *(a1 + 1612);
        if (v11 == *(a1 + 1616))
        {
          v10 = 0;
          *(a1 + 1608) = 3;
        }

        else
        {
          v21 = 0;
          v12 = TIFFGetStrileOffsetWithErr(*a1, v11, &v21, a4, a5, a6, a7);
          *(a1 + 1624) = v12;
          if (v21)
          {
            return 0;
          }

          if (v12)
          {
            v13 = TIFFGetStrileByteCountWithErr(*a1, *(a1 + 1612), &v21, a4, a5, a6, a7);
            if (v21)
            {
              return 0;
            }

            v14 = *(a1 + 1624);
            v15 = *(a1 + 240);
            if (v15 <= v14)
            {
              *(a1 + 1624) = 0;
            }

            else if (!v13 || (*(a1 + 1640) = v13, __CFADD__(v13, v14)) || v14 + v13 > v15)
            {
              *(a1 + 1640) = v15 - v14;
            }
          }

          ++*(a1 + 1612);
          v8 = *(a1 + 1640);
          v10 = v8;
        }
      }

      else if (v9 == 1)
      {
        v10 = 0;
        *(a1 + 1608) = 2;
      }

      else
      {
        if (v9)
        {
          return 0;
        }

        v10 = *(a1 + 272);
        if (v10)
        {
          *(a1 + 1624) = v10;
          v8 = *(a1 + 280);
          *(a1 + 1640) = v8;
          v10 = v8;
        }

        *(a1 + 1608) = 1;
      }
    }

    while (!v10);
  }

  if (!*(a1 + 1632))
  {
    (*(*a1 + 1224))(*(*a1 + 1200), *(a1 + 1624), 0);
    *(a1 + 1632) = 1;
    v8 = *(a1 + 1640);
  }

  if (v8 >= 0x800)
  {
    v16 = 2048;
  }

  else
  {
    v16 = v8;
  }

  result = (*(*a1 + 1208))(*(*a1 + 1200), a1 + 1664, v16);
  if (result)
  {
    if (result <= 0)
    {
      OJPEGReadBufferFill_cold_3();
    }

    if (result >= 0x801)
    {
      OJPEGReadBufferFill_cold_2();
    }

    v18 = *(a1 + 1640);
    v19 = v18 >= result;
    v20 = v18 - result;
    if (!v19)
    {
      OJPEGReadBufferFill_cold_1();
    }

    *(a1 + 1648) = result;
    *(a1 + 1656) = a1 + 1664;
    *(a1 + 1640) = v20;
    *(a1 + 1624) += result;
    return 1;
  }

  return result;
}

unint64_t OJPEGReadBlock(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    OJPEGReadBlock_cold_2();
  }

  v7 = __dst;
  v8 = a2;
  v10 = *(a1 + 1648);
  do
  {
    if (!v10)
    {
      result = OJPEGReadBufferFill(a1, a2, __dst, a4, a5, a6, a7);
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 1648);
      if (!v10)
      {
        OJPEGReadBlock_cold_1();
      }
    }

    if (v8 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    _TIFFmemcpy(v7, *(a1 + 1656), v12);
    *(a1 + 1656) += v12;
    v10 = *(a1 + 1648) - v12;
    *(a1 + 1648) = v10;
    v8 -= v12;
    v7 += v12;
  }

  while (v8);
  return 1;
}

uint64_t OJPEGLibjpegSessionAbort(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!*(v1 + 608))
  {
    OJPEGLibjpegSessionAbort_cold_1();
  }

  result = _cg_jpeg_destroy(v1 + 792);
  *(v1 + 608) = 0;
  return result;
}

uint64_t OJPEGLibjpegJpegErrorMgrOutputMessage(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(*a1 + 24))(a1, v3);
  return TIFFWarningExtR(a1[3], "LibJpeg", "%s", v3);
}

void OJPEGLibjpegJpegErrorMgrErrorExit(uint64_t *a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  (*(*a1 + 24))(a1, v2);
  TIFFErrorExtR(a1[3], "LibJpeg", "%s", v2);
  siglongjmp((*(a1[3] + 1096) + 16), 1);
}

uint64_t jpeg_create_decompress_encap(uint64_t a1, char *a2)
{
  v3 = 0;
  if (!sigsetjmp((a1 + 16), 0))
  {
    _cg_jpeg_CreateDecompress(a2, 90, 664);
    return 1;
  }

  return v3;
}

uint64_t OJPEGLibjpegJpegSourceMgrFillInputBuffer(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = *(a1 + 24);
  v10 = *(v9 + 1096);
  while (2)
  {
    v11 = *(v9 + 1096);
    switch(*(v10 + 3712))
    {
      case 0:
        v8 = (v11 + 3716);
        *(v11 + 3716) = -9985;
        v20 = *(v11 + 3712) + 1;
        goto LABEL_41;
      case 1:
        v12 = *(v11 + 376);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 2:
        v12 = *(v11 + 384);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 3:
        v12 = *(v11 + 392);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 4:
        v12 = *(v11 + 400);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 5:
        v12 = *(v11 + 408);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 6:
        v12 = *(v11 + 416);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 7:
        v12 = *(v11 + 424);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 8:
        v12 = *(v11 + 432);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 9:
        v12 = *(v11 + 440);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 0xA:
        v12 = *(v11 + 448);
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      case 0xB:
        v12 = *(v11 + 456);
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_8;
      case 0xC:
        v12 = *(v11 + 464);
        if (v12)
        {
LABEL_6:
          v13 = *v12 - 4;
          v8 = v12 + 1;
        }

        else
        {
LABEL_8:
          v13 = 0;
        }

        goto LABEL_9;
      case 0xD:
        v13 = *(v11 + 472);
        if (*(v11 + 472))
        {
          v8 = (v11 + 3716);
          *(v11 + 3716) = 67165695;
          *(v11 + 3720) = BYTE1(v13);
          *(v11 + 3721) = v13;
          v13 = 6;
        }

LABEL_9:
        ++*(v11 + 3712);
        if (v13)
        {
          goto LABEL_55;
        }

        continue;
      case 0xE:
        v14 = *(v11 + 270);
        if (v14 >= 0x53)
        {
          OJPEGLibjpegJpegSourceMgrFillInputBuffer_cold_3();
        }

        v8 = (v11 + 3716);
        *(v11 + 3716) = -1;
        *(v11 + 3717) = *(v11 + 476);
        *(v11 + 3718) = 0;
        v15 = 3 * v14;
        *(v11 + 3719) = 3 * v14 + 8;
        *(v11 + 3720) = 8;
        *(v11 + 3721) = bswap32(*(v11 + 484)) >> 16;
        v16 = *(v11 + 480);
        *(v11 + 3723) = BYTE1(v16);
        *(v11 + 3724) = v16;
        *(v11 + 3725) = v14;
        if (v14)
        {
          v17 = (*(v11 + 269) + v11 + 494);
          v18 = (v11 + 3728);
          do
          {
            *(v18 - 2) = *(v17 - 6);
            *(v18 - 1) = *(v17 - 3);
            v19 = *v17++;
            *v18 = v19;
            v18 += 3;
            --v14;
          }

          while (v14);
        }

        v13 = v15 + 10;
        goto LABEL_49;
      case 0xF:
        v23 = *(v11 + 270);
        if (v23 >= 0x7D)
        {
          OJPEGLibjpegJpegSourceMgrFillInputBuffer_cold_2();
        }

        v8 = (v11 + 3716);
        *(v11 + 3716) = -9473;
        *(v11 + 3718) = 0;
        v24 = 2 * v23;
        *(v11 + 3719) = 2 * v23 + 6;
        *(v11 + 3720) = v23;
        if (v23)
        {
          v25 = (*(v11 + 269) + v11 + 500);
          v26 = (v11 + 3722);
          do
          {
            *(v26 - 1) = *(v25 - 3);
            v27 = *v25++;
            *v26 = v27;
            v26 += 2;
            --v23;
          }

          while (v23);
        }

        v28 = v8 + v24;
        *(v28 + 5) = 16128;
        v28[7] = 0;
        v13 = v24 + 8;
LABEL_49:
        v29 = *(v11 + 3712) + 1;
        goto LABEL_50;
      case 0x10:
        v13 = *(v11 + 1648);
        if (!*(v11 + 1648))
        {
          if (!OJPEGReadBufferFill(*(v9 + 1096), a3, a4, a5, a6, a7, a8))
          {
            TIFFErrorExtR(v9, "LibJpeg", "Premature end of JPEG data");
            siglongjmp((*(v9 + 1096) + 16), 1);
          }

          v13 = *(v11 + 1648);
          if (!*(v11 + 1648))
          {
            OJPEGLibjpegJpegSourceMgrFillInputBuffer_cold_1();
          }
        }

        v8 = *(v11 + 1656);
        *(v11 + 1648) = 0;
        if (*(v11 + 1640))
        {
          goto LABEL_55;
        }

        v31 = *(v11 + 1608);
        if (v31 == 3)
        {
          goto LABEL_61;
        }

        if (v31 == 2)
        {
          if (*(v11 + 1612) >= *(v11 + 1616))
          {
LABEL_61:
            v29 = 18;
          }

          else
          {
            v29 = 17;
          }

LABEL_50:
          *(v11 + 3712) = v29;
        }

LABEL_55:
        *(v10 + 1464) = v13;
        *(v10 + 1456) = v8;
        return 1;
      case 0x11:
        v8 = (v11 + 3716);
        *(v11 + 3716) = -1;
        v21 = *(v11 + 474);
        *(v11 + 3717) = v21 - 48;
        if (v21 == 7)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 + 1;
        }

        *(v11 + 474) = v22;
        v20 = 16;
LABEL_41:
        *(v11 + 3712) = v20;
        goto LABEL_43;
      case 0x12:
        v8 = (v11 + 3716);
        *(v11 + 3716) = -9729;
LABEL_43:
        v13 = 2;
        goto LABEL_55;
      default:
        OJPEGLibjpegJpegSourceMgrFillInputBuffer_cold_4();
    }
  }
}

void OJPEGLibjpegJpegSourceMgrSkipInputData(uint64_t a1)
{
  v1 = *(a1 + 24);
  TIFFErrorExtR(v1, "LibJpeg", "Unexpected error");
  siglongjmp((*(v1 + 1096) + 16), 1);
}

void OJPEGLibjpegJpegSourceMgrResyncToRestart(uint64_t a1)
{
  v1 = *(a1 + 24);
  TIFFErrorExtR(v1, "LibJpeg", "Unexpected error");
  siglongjmp((*(v1 + 1096) + 16), 1);
}

uint64_t jpeg_read_header_encap(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (!sigsetjmp((a1 + 16), 0))
  {
    v3 = 1;
    _cg_jpeg_read_header(a2, 1);
  }

  return v3;
}

uint64_t jpeg_start_decompress_encap(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (!sigsetjmp((a1 + 16), 0))
  {
    _cg_jpeg_start_decompress(a2);
    return 1;
  }

  return v3;
}

uint64_t jpeg_read_raw_data_encap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = 0;
  if (!sigsetjmp((a1 + 16), 0))
  {
    _cg_jpeg_read_raw_data(a2, a3, a4);
    return 1;
  }

  return v7;
}

uint64_t jpeg_read_scanlines_encap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (!sigsetjmp((a1 + 16), 0))
  {
    v5 = 1;
    _cg_jpeg_read_scanlines(a2, a3, 1);
  }

  return v5;
}

char *IIOImageWriteSession::createTempFileName(IIOImageWriteSession *this, char *a2)
{
  if (_xpc_runtime_is_app_sandboxed())
  {
    v3 = _amkrtemp();
    if (v3)
    {
      return v3;
    }

    v4 = __error();
    LogWarning("createTempFileName", 508, " _amkrtemp(%s) failed.  errno = %d\n", a2, *v4);
  }

  v5 = strlen(a2);
  v3 = malloc_type_malloc(v5 + 7, 0x100004077774924uLL);
  strncpy(v3, a2, v5 + 1);
  if ((_xpc_runtime_is_app_sandboxed() & 1) == 0)
  {
    v6 = strrchr(v3, 47);
    if (v6)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v3;
    }

    v8 = strlen(v7);
    memmove(v7 + 1, v7, v8 + 1);
    *v7 = 46;
    strcat(v3, "-XXXX");
    mktemp(v3);
  }

  return v3;
}

size_t IIOImageWriteSession::getBytes(IIOImageWriteSession *this, void *__ptr, size_t a3)
{
  v6 = *(this + 7);
  v5 = *(this + 8);
  v7 = v5 + a3;
  v8 = v6 - v5;
  if (v7 <= v6)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(this + 4);
  if (v10)
  {
    v9 = fread(__ptr, 1uLL, v9, v10);
  }

  else
  {
    v11 = *(this + 3);
    if (v11)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(v11);
      memcpy(__ptr, &MutableBytePtr[*(this + 8)], v9);
    }

    else if (*(this + 2))
    {
      LogError("getBytes", 306, "*** ERROR: does not work for CGDataConsumers\n");
      return 0;
    }
  }

  *(this + 8) += v9;
  return v9;
}

uint64_t CGImageWriteSessionCreateWithConsumer(const void *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t CGImageWriteSessionCreateWithFile(const __CFString *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

const __CFURL *CGImageWriteSessionCreateWithURL(const __CFURL *a1)
{
  v1 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFURLGetTypeID();
    if (v2 == CFGetTypeID(v1))
    {
      v3 = IIO_CFURLCopyResolvedFileSystemPath(v1);
      if (v3)
      {
        v4 = v3;
        bzero(buffer, 0x402uLL);
        if (!CFURLGetFileSystemRepresentation(v1, 1u, buffer, 1026))
        {
          LogError("CGImageWriteSessionCreateWithURL", 787, "*** ERROR: invalid URL - CFURLGetFileSystemRepresentation failed\n");
          goto LABEL_14;
        }

        memset(&v9, 0, sizeof(v9));
        if (!stat(buffer, &v9) && (v9.st_mode & 0xF000) == 0x4000)
        {
          LogError("CGImageWriteSessionCreateWithURL", 794, "*** ERROR: invalid URL (directory vs. file)\n");
LABEL_14:
          v1 = 0;
          goto LABEL_15;
        }

        v7 = CGImageWriteSessionCreateWithFile(v4);
LABEL_12:
        v1 = v7;
LABEL_15:
        CFRelease(v4);
        return v1;
      }

      v5 = CFURLCopyScheme(v1);
      if (v5)
      {
        CFRelease(v5);
        v6 = CGDataConsumerCreateWithURL(v1);
        if (v6)
        {
          v4 = v6;
          v7 = CGImageWriteSessionCreateWithConsumer(v6);
          goto LABEL_12;
        }

        CGImageWriteSessionCreateWithURL_cold_1();
      }

      else
      {
        CGImageWriteSessionCreateWithURL_cold_2();
      }
    }

    return 0;
  }

  return v1;
}

uint64_t _cg_TIFFWriteScanline(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 16);
  if ((v12 & 0x40) == 0)
  {
    if (!TIFFWriteCheck(a1, 0, "TIFFWriteScanline"))
    {
      return 0xFFFFFFFFLL;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x10) != 0 && *(a1 + 1120))
  {
LABEL_8:
    *(a1 + 16) = v12 | 0x100000;
    v13 = *(a1 + 92);
    v14 = *(a1 + 170);
    if (v13 > a3)
    {
      if (v14 == 2)
      {
        if (*(a1 + 130) <= a4)
        {
          TIFFErrorExtR(a1, "TIFFWriteScanline", "%lu: Sample out of range, max %lu");
          return 0xFFFFFFFFLL;
        }

        v15 = a3 / *(a1 + 132) + *(a1 + 224) * a4;
LABEL_16:
        if (v15 >= *(a1 + 228) && !TIFFGrowStrips(a1, "TIFFWriteScanline"))
        {
          return 0xFFFFFFFFLL;
        }

        if (v15 != *(a1 + 884))
        {
          if (!TIFFFlushData(a1))
          {
            return 0xFFFFFFFFLL;
          }

          *(a1 + 884) = v15;
          v18 = *(a1 + 224);
          if (v13 <= a3 && v15 >= v18)
          {
            v18 = 0;
            v19 = *(a1 + 92);
            v20 = *(a1 + 132);
            if (v19 < -v20)
            {
              v18 = (v19 + v20 - 1) / v20;
            }

            *(a1 + 224) = v18;
          }

          if (!v18)
          {
            TIFFErrorExtR(a1, "TIFFWriteScanline", "Zero strips per image");
            return 0xFFFFFFFFLL;
          }

          *(a1 + 876) = *(a1 + 132) * (v15 % v18);
          if ((*(a1 + 16) & 0x20) == 0)
          {
            if (!(*(a1 + 976))(a1))
            {
              return 0xFFFFFFFFLL;
            }

            *(a1 + 16) |= 0x20u;
          }

          *(a1 + 1160) = 0;
          *(a1 + 1152) = *(a1 + 1120);
          *(a1 + 888) = 0;
          if (!(*(a1 + 992))(a1, a4))
          {
            return 0xFFFFFFFFLL;
          }

          *(a1 + 16) |= 0x1000u;
        }

        v16 = *(a1 + 876);
        if (v16 != a3)
        {
          if (v16 > a3)
          {
            v16 = *(a1 + 132) * (v15 % *(a1 + 224));
            *(a1 + 876) = v16;
            *(a1 + 1152) = *(a1 + 1120);
          }

          if (!(*(a1 + 1064))(a1, a3 - v16))
          {
            return 0xFFFFFFFFLL;
          }

          *(a1 + 876) = a3;
        }

        (*(a1 + 1248))(a1, a2, *(a1 + 1104));
        result = (*(a1 + 1016))(a1, a2, *(a1 + 1104), a4);
        *(a1 + 876) = a3 + 1;
        return result;
      }
    }

    else
    {
      if (v14 == 2)
      {
        TIFFErrorExtR(a1, "TIFFWriteScanline", "Can not change ImageLength when using separate planes");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 92) = a3 + 1;
    }

    v15 = a3 / *(a1 + 132);
    goto LABEL_16;
  }

  if (TIFFWriteBufferSetup(a1, 0, -1, a4, a5, a6, a7, a8))
  {
    v12 = *(a1 + 16);
    goto LABEL_8;
  }

  return 0xFFFFFFFFLL;
}