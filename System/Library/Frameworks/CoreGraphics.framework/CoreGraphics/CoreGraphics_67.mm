void __default_focus_ring_color_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v1 = xmmword_1844DF970;
  default_focus_ring_color_focus_ring_color = CGColorCreate(DeviceGray, &v1);
  CGColorSpaceRelease(DeviceGray);
}

uint64_t *rips_f_BltImage(uint64_t a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  v8 = a5;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 + 3;
  if (a4)
  {
    v10 = a4;
  }

  if (!a5)
  {
    a5 = v10;
  }

  return rips_f_DrawRing(a1, a2, a3, a4, a5, 0, 0, v8, 0, a6, a7, a8);
}

uint64_t *rips_f_BltGlyph(uint64_t a1, int *a2, int *a3, int *a4, uint64_t *a5, uint64_t a6, int32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = v11 + 3;
  if (a4)
  {
    v12 = a4;
  }

  if (!a5)
  {
    a5 = v12;
  }

  return rips_f_DrawRing(a1, a2, a3, a4, a5, 0, v10, 0, 0, a6, a7, a10);
}

uint64_t *rips_f_BltShape(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 + 3;
  if (a4)
  {
    v10 = a4;
  }

  if (a5)
  {
    v11 = (a5 + 12);
  }

  else
  {
    v11 = v10;
  }

  return rips_f_DrawRing(a1, a2, a3, a4, v11, a5, 0, 0, 0, a6, a7, a8);
}

CGColorSpaceRef rips_f_ColorSpace(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return rips_f_cs;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetColorSpace(v1);
  }

  return *(v1 + 24);
}

uint64_t rips_f_Growth(uint64_t a1, unsigned int *a2)
{
  v2 = vcvtmd_s64_f64(*(a1 + 104) + 0.5);
  *a2 = ~v2;
  a2[1] = ~v2;
  v3 = 2 * v2 + 2;
  a2[2] = v3;
  a2[3] = v3;
  return 1;
}

double *rips_f_Create(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v5 = a2 + 32;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = (*(a1 + 8))();
  v12 = malloc_type_calloc(1uLL, v11, 0x933FC33uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    *(v12 + 1) = 0xF100000001;
    *(v12 + 10) = CGGStateCreateCopy(a4);
    v13[19] = 0.0;
    if (a3)
    {
      v14 = sqrt(fabs(*a3 * a3[3] - a3[1] * a3[2]));
    }

    else
    {
      v14 = 1.0;
    }

    v15 = *(a2 + 24);
    if (v15 && (v15 < 1 || !*(v15 + 32)))
    {
      CFRetain(v15);
      *(v13 + 11) = v15;
    }

    v16 = v14 * *(v5 + 24);
    v13[12] = *(v5 + 16);
    v13[13] = v16;
    v13[14] = *(v5 + 32);
    v17 = *(v5 + 8);
    *(v13 + 30) = v17;
    v18 = *(v13 + 3);
    if (v17 != 1)
    {
      if (v17 != 2)
      {
        v19 = v18 | 0x400;
        goto LABEL_19;
      }

      v18 |= 0x300u;
    }

    v19 = v18 | 0x600;
LABEL_19:
    *(v13 + 3) = v19;
    v20 = *(v5 + 72);
    *(v13 + 35) = v20;
    if (v20 < 0)
    {
      v26 = 0;
      v27 = 0;
      *(v13 + 34) = 0;
      v28 = 132;
    }

    else
    {
      v37 = CGRectStandardize(*(v5 + 40));
      x = v37.origin.x * a5;
      if (a5 > 1.0)
      {
        v37.origin.y = v37.origin.y * a5;
        width = v37.size.width * a5;
      }

      else
      {
        x = v37.origin.x;
        width = v37.size.width;
      }

      if (a5 > 1.0)
      {
        height = v37.size.height * a5;
      }

      else
      {
        height = v37.size.height;
      }

      v24 = x + width;
      if (x <= 1073741820.0)
      {
        v29 = vcvtmd_s64_f64(x + 0.0);
        if (x >= -1073741820.0)
        {
          v25 = v29;
        }

        else
        {
          v25 = -1073741823;
        }
      }

      else
      {
        v25 = 0x3FFFFFFF;
      }

      *(v13 + 31) = v25;
      if (v24 <= 1073741820.0)
      {
        v31 = vcvtpd_s64_f64(v24);
        if (v24 >= -1073741820.0)
        {
          v30 = v31;
        }

        else
        {
          v30 = -1073741823;
        }
      }

      else
      {
        v30 = 0x3FFFFFFF;
      }

      *(v13 + 33) = v30 - v25;
      v32 = v37.origin.y + height;
      if (v37.origin.y <= 1073741820.0)
      {
        v34 = vcvtmd_s64_f64(v37.origin.y + 0.0);
        if (v37.origin.y >= -1073741820.0)
        {
          v33 = v34;
        }

        else
        {
          v33 = -1073741823;
        }
      }

      else
      {
        v33 = 0x3FFFFFFF;
      }

      *(v13 + 32) = v33;
      if (v32 <= 1073741820.0)
      {
        if (v32 >= -1073741820.0)
        {
          v35 = vcvtpd_s64_f64(v32);
        }

        else
        {
          v35 = -1073741823;
        }
      }

      else
      {
        v35 = 0x3FFFFFFF;
      }

      v26 = v35 - v33;
      v27 = 1;
      v28 = 136;
    }

    *(v13 + v28) = v26;
    *(v13 + 144) = v27;
  }

  return v13;
}

void rips_f_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    v4 = *(a1 + 19);
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    v5 = *(a1 + 11);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 10);
    if (v6)
    {
      CGGStateRelease(v6);
    }

    free(a1);
  }
}

CGContextRef CGPDFContextCreate(CGDataConsumerRef consumer, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo)
{
  if (CGPDFContextCreate_once != -1)
  {
    dispatch_once_f(&CGPDFContextCreate_once, 0, load_pdf_context_creator);
  }

  if (!creator_10542)
  {
    return 0;
  }

  if (auxiliaryInfo)
  {
    Value = CFDictionaryGetValue(auxiliaryInfo, @"CGPDFContextCreatePDFA");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v7);
      }
    }

    v9 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextOwnerPassword");
    v10 = v9;
    if (v9 && !is_valid_password(v9))
    {
      return 0;
    }

    v11 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextUserPassword");
    v12 = v11;
    if (v11)
    {
      if (!is_valid_password(v11))
      {
        return 0;
      }
    }

    v13 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextEncryptionKeyLength");
    valuePtr = 0;
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
      v14 = 1;
    }

    else
    {
      v14 = (v10 | v12) != 0;
      valuePtr = 128;
    }

    v15 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextEncryptionCipher");
    if (valuePtr > 128)
    {
      return 0;
    }

    if (v15)
    {
      if (CFEqual(v15, @"kCGPDFContextEncryptionCipherAESv3"))
      {
        return 0;
      }
    }

    else if (v14)
    {
      if (valuePtr == 128)
      {
        v16 = @"kCGPDFContextEncryptionCipherAESv2";
      }

      else
      {
        v16 = @"kCGPDFContextEncryptionCipherRC4";
      }

      auxiliaryInfo = CFDictionaryCreateMutableCopy(0, 0, auxiliaryInfo);
      CFDictionarySetValue(auxiliaryInfo, @"kCGPDFContextEncryptionCipher", v16);
    }
  }

  v17 = CGContextCreateWithDelegateAndInfo(0, 1, 0, 0, 0, 0);
  v18 = v17;
  if (!v17)
  {
    CGPostError("%s: failed to create PDF context.", "CGPDFContextCreate");
    return v18;
  }

  *(*(v17 + 112) + 8) = vdupq_n_s64(0x4062000000000000uLL);
  v19 = creator_10542(consumer, mediaBox, auxiliaryInfo);
  *(v18 + 5) = v19;
  if (!v19)
  {
    CGPostError("%s: failed to create PDF context delegate.", "CGPDFContextCreate");
    CFRelease(v18);
    return 0;
  }

  return v18;
}

uint64_t is_valid_password(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length)
  {
    v5.location = 0;
    v5.length = Length;
    if (CFStringGetBytes(a1, v5, 0x600u, 0, 0, 0, Length, 0) < Length)
    {
      CGPostError("Specified password cannot be converted to ASCII.");
      return 0;
    }
  }

  return 1;
}

void load_pdf_context_creator()
{
  v0 = &links;
  v1 = 6;
  while (strcmp("__CGPDFContextDelegateCreate", *v0))
  {
    v0 += 2;
    if (!--v1)
    {
      goto LABEL_7;
    }
  }

  if (v0[1])
  {
    creator_10542 = v0[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load PDF context.");
}

CGContextRef CGPDFContextCreateWithURL(CFURLRef url, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo)
{
  v5 = CGDataConsumerCreateWithURL(url);
  v6 = CGPDFContextCreate(v5, mediaBox, auxiliaryInfo);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

CGContextRef CGPDFContextCreateWithFilename(char *cStr, const CGRect *a2, const __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = CGDataConsumerCreateWithURL(v7);
  v9 = CGPDFContextCreate(v8, a2, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v7);
  return v9;
}

void CGPDFContextClose(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    CGContextDelegateFinalize(*(context + 5));
  }

  else
  {
    handle_invalid_context("CGPDFContextClose", context);
  }
}

void CGPDFContextBeginPage(CGContextRef context, CFDictionaryRef pageInfo)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v3 = *(context + 22);
    *(context + 22) = v3 + 1;
    if (v3)
    {
      CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGPDFContextBeginPage");
    }

    else
    {
      v4.n128_f64[0] = CGContextResetTopGState(context);
      v5 = *(context + 5);
      if (v5)
      {
        v6 = *(v5 + 152);
        if (v6)
        {

          v6(v4);
        }
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextBeginPage", context);
  }
}

void CGPDFContextEndPage(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v2 = *(context + 22) - 1;
    *(context + 22) = v2;
    if (v2)
    {
      CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGPDFContextEndPage");
    }

    else
    {
      v3 = *(context + 5);
      if (v3)
      {
        v4 = *(v3 + 160);
        if (v4)
        {

          v4();
        }
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextEndPage", context);
  }
}

void CGPDFContextSetURLForRect(CGContextRef context, CFURLRef url, CGRect rect)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        height = rect.size.height;
        width = rect.size.width;
        y = rect.origin.y;
        x = rect.origin.x;
        v9 = MEMORY[0x1E695E9D8];
        v10 = MEMORY[0x1E695E9E8];
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v12 = CFDictionaryCreateMutable(0, 0, v9, v10);
        CFDictionarySetValue(v12, @"/Type", @"/Action");
        CFDictionarySetValue(v12, @"/S", @"/URI");
        CFDictionarySetValue(v12, @"/URI", url);
        CFDictionarySetValue(Mutable, @"/A", v12);
        CFDictionarySetValue(Mutable, @"/Type", @"/Annot");
        CFDictionarySetValue(Mutable, @"/Subtype", @"/Link");
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = CGContainerCreateWithRect(x, y, width, height);
        CFDictionarySetValue(Mutable, @"/Rect", v13);
        CFRelease(v13);
        v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CGCFArrayAppendInteger(v14, 0);
        CGCFArrayAppendInteger(v14, 0);
        CGCFArrayAppendInteger(v14, 0);
        CFDictionarySetValue(Mutable, @"/Border", v14);
        if (v14)
        {
          CFRelease(v14);
        }

        CGPDFContextAddAnnotation(context, Mutable);

        CFRelease(Mutable);
      }

      return;
    }

    v15 = context;
  }

  else
  {
    v15 = 0;
  }

  handle_invalid_context("CGPDFContextSetURLForRect", v15);
}

double CGPDFContextAddAnnotation(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1)
      {
        value = 0;
        if (CFDictionaryGetValueIfPresent(theDict, @"Subtype", &value) && (v4 = CFGetTypeID(value), v4 == CFStringGetTypeID()) && CFStringCompare(value, @"Screen", 0) && CFDictionaryGetValueIfPresent(theDict, @"P", &value) && (v5 = CFGetTypeID(value), v5 == CFDictionaryGetTypeID()) && CFDictionaryGetValueIfPresent(value, @"Type", &value) && (v6 = CFGetTypeID(value), v6 == CFStringGetTypeID()) && CFStringCompare(value, @"Page", 0) == kCFCompareEqualTo)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
          CFDictionaryRemoveValue(MutableCopy, @"P");
        }

        else
        {
          MutableCopy = CFRetain(theDict);
        }

        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 168);
          if (v9)
          {
            v9();
          }
        }

        CFRelease(MutableCopy);
      }

      return result;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("CGPDFContextAddAnnotation", v11);
  return result;
}

void CGPDFContextAddDestinationAtPoint(CGContextRef context, CFStringRef name, CGPoint point)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        y = point.y;
        x = point.x;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"Label", name);
        CGCFDictionarySetPoint(Mutable, @"Point", x, y);
        v8 = *(context + 5);
        if (v8)
        {
          v9 = *(v8 + 168);
          if (v9)
          {
            v9();
          }
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      return;
    }

    v10 = context;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGPDFContextAddDestinationAtPoint", v10);
}

void CGPDFContextSetDestinationForRect(CGContextRef context, CFStringRef name, CGRect rect)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        height = rect.size.height;
        width = rect.size.width;
        y = rect.origin.y;
        x = rect.origin.x;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"/Type", @"/Annot");
        CFDictionarySetValue(Mutable, @"/Subtype", @"/Link");
        v10 = CGContainerCreateWithRect(x, y, width, height);
        CFDictionarySetValue(Mutable, @"/Rect", v10);
        CFRelease(v10);
        v11 = CFStringCreateMutable(0, 0);
        CFStringAppend(v11, @"/>");
        CFStringAppend(v11, name);
        CFDictionarySetValue(Mutable, @"/Dest", v11);
        CFRelease(v11);
        v12 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CGCFArrayAppendInteger(v12, 0);
        CGCFArrayAppendInteger(v12, 0);
        CGCFArrayAppendInteger(v12, 0);
        CFDictionarySetValue(Mutable, @"/Border", v12);
        if (v12)
        {
          CFRelease(v12);
        }

        CGPDFContextAddAnnotation(context, Mutable);

        CFRelease(Mutable);
      }

      return;
    }

    v13 = context;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGPDFContextSetDestinationForRect", v13);
}

void CGPDFContextAddCatalogEntry(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1 && a2 != 0 && a3 != 0)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"Key", a2);
        CFDictionarySetValue(Mutable, @"Value", a3);
        v10 = *(a1 + 40);
        if (v10)
        {
          v11 = *(v10 + 168);
          if (v11)
          {
            v11();
          }
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGPDFContextAddCatalogEntry", v8);
}

void CGPDFContextAddDocumentMetadata(CGContextRef context, CFDataRef metadata)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    if (metadata)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"/Type", @"/Metadata");
      CFDictionarySetValue(Mutable, @"/Subtype", @"/XML");
      CFDictionarySetValue(Mutable, @"/%Stream", metadata);
      CGPDFContextAddCatalogEntry(context, @"/Metadata", Mutable);

      CFRelease(Mutable);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextAddDocumentMetadata", context);
  }
}

double CGPDFContextSetParentTree(uint64_t a1, const void *a2)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"ParentTree", a2);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 168);
      if (v8)
      {
        v8();
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetParentTree", a1);
  }

  return result;
}

double CGPDFContextSetIDTree(uint64_t a1, const void *a2)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"IDTree", a2);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 168);
      if (v8)
      {
        v8();
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetIDTree", a1);
  }

  return result;
}

double CGPDFContextSetPageTagStructureTree(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextSetPageTagStructureTree", a1);
  }

  return result;
}

double CGPDFContextAddPDFXInfo(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextAddPDFXInfo", a1);
  }

  return result;
}

double CGPDFContextSetOutputIntent(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextSetOutputIntent", a1);
  }

  return result;
}

double CGPDFContextSetShouldDeflate(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = Mutable;
    v6 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"ShouldDeflate", *v6);
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetShouldDeflate", a1);
  }

  return result;
}

double CGPDFContextBeginDrawingHiddenText(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextBeginDrawingHiddenText", a1);
  }

  return result;
}

double CGPDFContextEndDrawingHiddenText(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndDrawingHiddenText", a1);
  }

  return result;
}

double CGPDFContextSetImageTag(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    if (a2 && a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Image", a2);
      CFDictionarySetValue(Mutable, @"Tag", a3);
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 168);
        if (v9)
        {
          v9();
        }
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetImageTag", a1);
  }

  return result;
}

void CGPDFContextSetOutline(CGContextRef context, CFDictionaryRef outline)
{
  if (outline)
  {
    if (!CFDictionaryContainsKey(outline, @"Title"))
    {
      v4 = convertOutlineTree(outline);
      if (v4)
      {
        v5 = v4;
        CGPDFContextAddCatalogEntry(context, @"/Outlines", v4);

        CFRelease(v5);
      }
    }
  }

  else
  {
    if (context)
    {
      if (*(context + 4) == 1129601108)
      {
        return;
      }

      v6 = context;
    }

    else
    {
      v6 = 0;
    }

    handle_invalid_context("CGPDFContextAddCatalogEntry", v6);
  }
}

__CFDictionary *convertOutlineTree(const __CFDictionary *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(a1, @"Title");
  if (!Value)
  {
    goto LABEL_15;
  }

  CFDictionarySetValue(Mutable, @"/Title", Value);
  v4 = CFDictionaryGetValue(a1, @"Destination");
  v5 = CFGetTypeID(v4);
  if (v5 == CFNumberGetTypeID())
  {
    v6 = CFDictionaryGetValue(a1, @"DestinationRect");
    valuePtr = 0u;
    *v45 = 0u;
    if (v6 && (v7 = v6, get_point_from_dict(v6, &valuePtr), v8) && (get_size_from_dict(v7, v45), v9))
    {
      if (fabs(v45[0]) <= 2.22044605e-16 || fabs(v45[1]) <= 2.22044605e-16)
      {
        values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
        v39 = @"/XYZ";
        v40 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        v34 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr + 8);
        v35 = *MEMORY[0x1E695E738];
        v41 = v34;
        v42 = v35;
        v10 = CFArrayCreate(0, &values, 5, MEMORY[0x1E695E9C0]);
        CFRelease(values);
        CFRelease(v40);
        v11 = v41;
      }

      else
      {
        v36 = v45[1] + *(&valuePtr + 1);
        v37 = v45[0] + *&valuePtr;
        values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
        v39 = @"/FitR";
        v40 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        v41 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr + 8);
        v42 = CFNumberCreate(0, kCFNumberCGFloatType, &v37);
        v43 = CFNumberCreate(0, kCFNumberCGFloatType, &v36);
        v10 = CFArrayCreate(0, &values, 6, MEMORY[0x1E695E9C0]);
        CFRelease(values);
        CFRelease(v40);
        CFRelease(v41);
        CFRelease(v42);
        v11 = v43;
      }
    }

    else
    {
      values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
      v39 = @"/XYZ";
      v40 = *MEMORY[0x1E695E738];
      v41 = v40;
      v42 = v40;
      v10 = CFArrayCreate(0, &values, 5, MEMORY[0x1E695E9C0]);
      v11 = values;
    }

    CFRelease(v11);
    v13 = @"/Dest";
    goto LABEL_14;
  }

  v12 = CFGetTypeID(v4);
  if (v12 != CFURLGetTypeID())
  {
    CFRelease(Mutable);
    return 0;
  }

  values = @"/S";
  v39 = @"/URI";
  *&valuePtr = @"/URI";
  *(&valuePtr + 1) = CFURLGetString(v4);
  v10 = CFDictionaryCreate(0, &values, &valuePtr, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = @"/A";
LABEL_14:
  CFDictionarySetValue(Mutable, v13, v10);
  CFRelease(v10);
LABEL_15:
  v14 = CFDictionaryGetValue(a1, @"Children");
  if (v14)
  {
    v15 = v14;
    Count = CFArrayGetCount(v14);
    v17 = Count;
    values = Count;
    if (Count < 1)
    {
      v22 = Count;
      if (Value)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v18 >= 0x200)
      {
        v20 = 512;
      }

      else
      {
        v20 = 8 * v17;
      }

      bzero(&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
      bzero(&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v17);
      v21 = 0;
      v22 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v21);
        v24 = convertOutlineTree(ValueAtIndex);
        if (v24)
        {
          *&v19[8 * v22++] = v24;
        }

        ++v21;
      }

      while (v17 != v21);
      values = v22;
      v25 = *v19;
      CFDictionarySetValue(Mutable, @"/First", *v19);
      v26 = &v19[8 * v22];
      v27 = *(v26 - 1);
      CFDictionarySetValue(Mutable, @"/Last", v27);
      if (v22 > 1)
      {
        v28 = *(v19 + 1);
        CFDictionarySetValue(v25, @"/Next", v28);
        CFDictionarySetValue(v27, @"/Prev", *(v26 - 2));
        v29 = v22 - 2;
        if (v22 != 2)
        {
          v30 = (v19 + 16);
          do
          {
            v31 = *v30;
            CFDictionarySetValue(v28, @"/Next", *v30);
            CFDictionarySetValue(v28, @"/Prev", *(v30 - 2));
            ++v30;
            v28 = v31;
            --v29;
          }

          while (v29);
        }
      }

      if (Value)
      {
        goto LABEL_30;
      }
    }

    values = -v22;
LABEL_30:
    v32 = CFNumberCreate(0, kCFNumberSInt64Type, &values);
    CFDictionarySetValue(Mutable, @"/Count", v32);
    CFRelease(v32);
  }

  return Mutable;
}

const char *__cdecl CGPDFTagTypeGetName(CGPDFTagType tagType)
{
  if (tagType > CGPDFTagTypeTable)
  {
    if (tagType <= CGPDFTagTypeCode)
    {
      if (tagType > (CGPDFTagTypeTableDataCell|0x60))
      {
        if (tagType > CGPDFTagTypeNote)
        {
          if (tagType == CGPDFTagTypeReference)
          {
            return "/Reference";
          }

          else if (tagType == CGPDFTagTypeBibliography)
          {
            return "/BibEntry";
          }

          else
          {
            return "/Code";
          }
        }

        else if (tagType == CGPDFTagTypeSpan)
        {
          return "/Span";
        }

        else if (tagType == CGPDFTagTypeQuote)
        {
          return "/Quote";
        }

        else
        {
          return "/Note";
        }
      }

      else
      {
        if (tagType > CGPDFTagTypeTableDataCell)
        {
          switch(tagType)
          {
            case CGPDFTagTypeTableHeader:
              return "/THead";
            case CGPDFTagTypeTableBody:
              return "/TBody";
            case CGPDFTagTypeTableFooter:
              return "/TFoot";
          }

          return 0;
        }

        if (tagType == CGPDFTagTypeTableRow)
        {
          return "/TR";
        }

        else if (tagType == CGPDFTagTypeTableHeaderCell)
        {
          return "/TH";
        }

        else
        {
          return "/TD";
        }
      }
    }

    else if (tagType <= CGPDFTagTypeRubyPunctuation)
    {
      if (tagType <= CGPDFTagTypeRuby)
      {
        switch(tagType)
        {
          case CGPDFTagTypeLink:
            return "/Link";
          case CGPDFTagTypeAnnotation:
            return "/Annot";
          case CGPDFTagTypeRuby:
            return "/Ruby";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeRubyBaseText)
      {
        return "/RB";
      }

      else if (tagType == CGPDFTagTypeRubyAnnotationText)
      {
        return "/RT";
      }

      else
      {
        return "/RP";
      }
    }

    else
    {
      if (tagType <= 699)
      {
        switch(tagType)
        {
          case CGPDFTagTypeWarichu:
            return "/Warichu";
          case CGPDFTagTypeWarichuText:
            return "/WT";
          case CGPDFTagTypeWarichuPunctiation:
            return "/WP";
        }

        return 0;
      }

      if (tagType > CGPDFTagTypeFormula)
      {
        if (tagType == CGPDFTagTypeForm)
        {
          return "/Form";
        }

        if (tagType == 800)
        {
          return "/OBJR";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeFigure)
      {
        return "/Figure";
      }

      else
      {
        return "/Formula";
      }
    }
  }

  else if (tagType <= 199)
  {
    if (tagType > CGPDFTagTypeBlockQuote)
    {
      if (tagType > CGPDFTagTypeTOCI)
      {
        switch(tagType)
        {
          case CGPDFTagTypeIndex:
            return "/Index";
          case CGPDFTagTypeNonStructure:
            return "/NonStruct";
          case CGPDFTagTypePrivate:
            return "/Private";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeCaption)
      {
        return "/Caption";
      }

      else if (tagType == CGPDFTagTypeTOC)
      {
        return "/TOC";
      }

      else
      {
        return "/TOCI";
      }
    }

    else
    {
      if (tagType <= CGPDFTagTypeArt)
      {
        switch(tagType)
        {
          case CGPDFTagTypeDocument:
            return "/Document";
          case CGPDFTagTypePart:
            return "/Part";
          case CGPDFTagTypeArt:
            return "/Art";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeSection)
      {
        return "/Sect";
      }

      else if (tagType == CGPDFTagTypeDiv)
      {
        return "/Div";
      }

      else
      {
        return "/BlockQuote";
      }
    }
  }

  else
  {
    if (tagType > CGPDFTagTypeHeader4)
    {
      if (tagType <= CGPDFTagTypeList)
      {
        switch(tagType)
        {
          case CGPDFTagTypeHeader5:
            return "/H5";
          case CGPDFTagTypeHeader6:
            return "/H6";
          case CGPDFTagTypeList:
            return "/L";
        }
      }

      else
      {
        if (tagType <= CGPDFTagTypeLabel)
        {
          if (tagType == CGPDFTagTypeListItem)
          {
            return "/LI";
          }

          else
          {
            return "/Lbl";
          }
        }

        if (tagType == CGPDFTagTypeListBody)
        {
          return "/LBody";
        }

        if (tagType == CGPDFTagTypeTable)
        {
          return "/Table";
        }
      }

      return 0;
    }

    if (tagType > CGPDFTagTypeHeader1)
    {
      if (tagType == CGPDFTagTypeHeader2)
      {
        return "/H2";
      }

      else if (tagType == CGPDFTagTypeHeader3)
      {
        return "/H3";
      }

      else
      {
        return "/H4";
      }
    }

    else if (tagType == CGPDFTagTypeParagraph)
    {
      return "/P";
    }

    else if (tagType == CGPDFTagTypeHeader)
    {
      return "/H";
    }

    else
    {
      return "/H1";
    }
  }
}

void CGPDFContextBeginTag(CGContextRef context, CGPDFTagType tagType, CFDictionaryRef tagProperties)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CGCFDictionarySetInteger(Mutable, @"TagType", tagType);
    if (tagProperties)
    {
      CFDictionarySetValue(Mutable, @"TagProperties", tagProperties);
    }

    v7 = *(context + 5);
    if (v7)
    {
      v8 = *(v7 + 168);
      if (v8)
      {
        v8();
      }
    }

    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextBeginTag", context);
  }
}

void CGPDFContextEndTag(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v1 = *(context + 5);
    if (v1)
    {
      v2 = *(v1 + 168);
      if (v2)
      {
        v2();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndTag", context);
  }
}

double CGPDFContextSetRedactionPath(uint64_t a1, const void *a2)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"RedactionPath", a2);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 168);
      if (v8)
      {
        v8();
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetRedactionPath", a1);
  }

  return result;
}

double CGPDFContextBeginAccessibilitySpan(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1)
      {
        v1 = *(a1 + 40);
        if (v1)
        {
          v2 = *(v1 + 168);
          if (v2)
          {
            v2();
          }
        }
      }
    }

    else
    {
      handle_invalid_context("CGPDFContextBeginAccessibilitySpan", a1);
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextBeginAccessibilitySpan", 0);
  }

  return result;
}

double CGPDFContextEndAccessibilitySpan(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1)
      {
        v1 = *(a1 + 40);
        if (v1)
        {
          v2 = *(v1 + 168);
          if (v2)
          {
            v2();
          }
        }
      }
    }

    else
    {
      handle_invalid_context("CGPDFContextEndAccessibilitySpan", a1);
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndAccessibilitySpan", 0);
  }

  return result;
}

const __CFString *CGPDFContextIsValidPassword(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length <= 32)
    {
      v3.location = 0;
      v3.length = Length;
      return (CFStringGetBytes(v1, v3, 0x600u, 0, 0, 0, 0, 0) == Length);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1841B839C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  MEMORY[0x1865EE610](v20, v21, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void Type1::~Type1(Type1 *this)
{
  SimpleFont::~SimpleFont(this);

  JUMPOUT(0x1865EE610);
}

void sub_1841B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10758(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1841B8794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGShadingRef CGShadingCreateAxial(CGColorSpaceRef space, CGPoint start, CGPoint end, CGFunctionRef function, BOOL extendStart, BOOL extendEnd)
{
  if (function)
  {
    v7 = *(function + 5);
  }

  else
  {
    v7 = 0;
  }

  return CGShadingCreateAxialInternal(space, 0, 0, v7, function, extendStart, extendEnd, start.x, start.y, end.x, end.y);
}

uint64_t CGShadingCreateAxialWithContentHeadroom(CGColorSpace *a1, void *a2, char a3, char a4, float a5, double a6, double a7, double a8, double a9)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB || !CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    return 0;
  }

  if (a2)
  {
    v18 = a2[5];
  }

  else
  {
    v18 = 0;
  }

  result = CGShadingCreateAxialInternal(a1, 0, 0, v18, a2, a3, a4, a6, a7, a8, a9);
  v20 = 1.0;
  if (a5 >= 1.0 || a5 <= 0.0)
  {
    v20 = a5;
  }

  if (a5 < 0.0)
  {
    v20 = 0.0;
  }

  *(result + 96) = v20;
  return result;
}

uint64_t CGShadingCreateAxialWithGradient(void *a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v14 = CFGetTypeID(a1);
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  if (v14 != CGGradientGetTypeID_gradient_type_id)
  {
    return 0;
  }

  if (a1)
  {
    v15 = a1[3];
  }

  else
  {
    v15 = 0;
  }

  Function = CGGradientGetFunction(a1);
  if (Function)
  {
    v18 = *(Function + 5);
  }

  else
  {
    v18 = 0;
  }

  AxialInternal = CGShadingCreateAxialInternal(v15, 0, 0, v18, Function, a2, a3, a4, a5, a6, a7);
  *(AxialInternal + 96) = CGGradientGetContentHeadroom(a1);
  return AxialInternal;
}

CGShadingRef CGShadingCreateRadial(CGColorSpaceRef space, CGPoint start, CGFloat startRadius, CGPoint end, CGFloat endRadius, CGFunctionRef function, BOOL extendStart, BOOL extendEnd)
{
  if (function)
  {
    v9 = *(function + 5);
  }

  else
  {
    v9 = 0;
  }

  return CGShadingCreateRadialInternal(space, 0, 0, v9, function, extendStart, extendEnd, start.x, start.y, startRadius, end.x, end.y, endRadius);
}

uint64_t CGShadingCreateRadialWithContentHeadroom(CGColorSpace *a1, void *a2, char a3, char a4, float a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB || !CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    return 0;
  }

  if (a2)
  {
    v22 = a2[5];
  }

  else
  {
    v22 = 0;
  }

  result = CGShadingCreateRadialInternal(a1, 0, 0, v22, a2, a3, a4, a6, a7, a8, a9, a10, a11);
  v24 = 1.0;
  if (a5 >= 1.0 || a5 <= 0.0)
  {
    v24 = a5;
  }

  if (a5 < 0.0)
  {
    v24 = 0.0;
  }

  *(result + 96) = v24;
  return result;
}

uint64_t CGShadingCreateRadialWithGradient(void *a1, char a2, char a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = CFGetTypeID(a1);
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  if (v18 != CGGradientGetTypeID_gradient_type_id)
  {
    return 0;
  }

  if (a1)
  {
    v19 = a1[3];
  }

  else
  {
    v19 = 0;
  }

  Function = CGGradientGetFunction(a1);
  if (Function)
  {
    v22 = *(Function + 5);
  }

  else
  {
    v22 = 0;
  }

  RadialInternal = CGShadingCreateRadialInternal(v19, 0, 0, v22, Function, a2, a3, a4, a5, a6, a7, a8, a9);
  *(RadialInternal + 96) = CGGradientGetContentHeadroom(a1);
  return RadialInternal;
}

uint64_t CGShadingCreateConic(void *a1, void *a2, double a3, double a4, double a5)
{
  if (!a2 || !a1)
  {
    return 0;
  }

  v6 = *(a1[3] + 48);
  v7 = a2[6];
  if (v7 != v6 && v7 != v6 + 1)
  {
    return 0;
  }

  v12 = a2[5];
  Empty = CGShadingCreateEmpty(3, a1, 0, 0);
  *(Empty + 128) = a3;
  *(Empty + 136) = a4;
  *(Empty + 144) = a5;
  CFRetain(a2);
  *(Empty + 168) = a2;
  if (v12)
  {
    *(Empty + 152) = *v12;
    v14 = v12[1];
  }

  else
  {
    *(Empty + 152) = 0;
    v14 = 1.0;
  }

  *(Empty + 160) = v14;
  return Empty;
}

uint64_t CGShadingCreateCustom(void *a1, uint64_t *a2, const CGRect *a3, uint64_t *a4, _OWORD *a5, void *a6)
{
  Empty = 0;
  if (a1 && a6)
  {
    v9 = *(a1[3] + 48);
    v10 = a6[6];
    if (v10 == v9 || v10 == v9 + 1)
    {
      Empty = CGShadingCreateEmpty(4, a1, a2, a3);
      CFRetain(a6);
      *(Empty + 160) = a6;
      v14 = a5[1];
      v13 = a5[2];
      *(Empty + 168) = *a5;
      *(Empty + 184) = v14;
      *(Empty + 200) = v13;
      for (i = 16; i != 20; ++i)
      {
        v16 = *a4++;
        *(Empty + 8 * i) = v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return Empty;
}

CGShadingRef CGShadingRetain(CGShadingRef shading)
{
  if (shading)
  {
    CFRetain(shading);
  }

  return shading;
}

void CGShadingRelease(CGShadingRef shading)
{
  if (shading)
  {
    CFRelease(shading);
  }
}

CGFloat CGShadingGetBounds(uint64_t a1)
{
  v1 = (a1 + 48);
  if (*(a1 + 40) != 1)
  {
    v1 = &CGRectInfinite;
  }

  return v1->origin.x;
}

uint64_t CGShadingGetDescriptor(uint64_t result)
{
  if (result)
  {
    if ((*(result + 20) - 1) >= 4)
    {
      return 0;
    }

    else
    {
      result += 128;
    }
  }

  return result;
}

uint64_t CGShadingSetAssociate(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((result + 88), &v2, a2, memory_order_relaxed, memory_order_relaxed);
    return *(result + 88);
  }

  return result;
}

uint64_t CGShadingGetAssociate(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

float CGShadingGetContentHeadroom(_DWORD *a1)
{
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (_block_invoke_once_10784 != -1)
    {
      dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
    }

    if (v3 == CGShadingGetTypeID_shading_type_id)
    {
      return *(a1 + 24);
    }
  }

  return v1;
}

CFTypeID CGShadingGetTypeID(void)
{
  if (_block_invoke_once_10784 != -1)
  {
    dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
  }

  return CGShadingGetTypeID_shading_type_id;
}

void CGShadingDrawInContextDelegate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      v5 = CGContextCreateWithDelegateAndInfo(a2, 17, a3, a4, 0, 0);
      (*(a1 + 112))(*(a1 + 80), v5);
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }
}

double cmap_yyensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0xB6775A77uLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      fatal_scanner_error();
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x4ADC8BA7uLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_18439C670;
  }

  return result;
}

void *cmap_yy_create_buffer(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x4ADC8BA7uLL);
  if (!v4 || (v5 = v4, v4[3] = 0x4000, v6 = malloc_type_malloc(0x4002uLL, 0x4ADC8BA7uLL), (*(v5 + 8) = v6) == 0))
  {
    fatal_scanner_error();
  }

  *(v5 + 40) = 1;
  cmap_yy_init_buffer(v5, a1, a2);
  return v5;
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 2u;
      }

      if (yy_accept[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 253)
          {
            v4 = yy_meta[v4];
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

int *cmap_yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  if (a1)
  {
    *(a1 + 32) = 0;
    **(a1 + 8) = 0;
    *(*(a1 + 8) + 1) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 48) = 1;
    *(a1 + 64) = 0;
    v7 = *(a3 + 40);
    if (v7)
    {
      v8 = *(v7 + 8 * *(a3 + 24));
    }

    else
    {
      v8 = 0;
    }

    if (v8 == a1)
    {
      v9 = *(a3 + 24);
      v10 = *(v7 + 8 * v9);
      *(a3 + 56) = *(v10 + 32);
      v11 = *(v10 + 16);
      *(a3 + 72) = v11;
      *(a3 + 136) = v11;
      *(a3 + 8) = **(v7 + 8 * v9);
      *(a3 + 48) = *v11;
      *a1 = a2;
      *(a1 + 60) = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(a3 + 40);
  }

  *a1 = a2;
  *(a1 + 60) = 1;
  if (v7)
  {
LABEL_10:
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

void cmap_yy_delete_buffer(void **a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(v3 + 8 * *(a2 + 24));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a1)
  {
    *(v3 + 8 * *(a2 + 24)) = 0;
  }

  if (*(a1 + 10))
  {
    free(a1[1]);
  }

  free(a1);
}

char *CGPDFSecurityManagerCreateCryptFilter(uint64_t a1, char *__s1)
{
  v2 = __s1;
  if (!__s1)
  {
    return v2;
  }

  if (!strcmp(__s1, "Identity"))
  {
    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
    __CFSetLastAllocationEventName();
    if (v2)
    {
      *v2 = a1;
      v2[12] = 1;
      *(v2 + 2) = 0;
      *(v2 + 2) = 0;
    }

    return v2;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(*(a1 + 24), v2, &value))
  {
    return 0;
  }

  v2 = value;
  if (value)
  {
    v11 = 0;
    __s1a = 0;
    v10 = 0;
    if (CGPDFDictionaryGetName(value, "CFM", &__s1a))
    {
      v4 = __s1a;
    }

    else
    {
      v4 = "None";
      __s1a = "None";
    }

    if (*v4 == 86 && v4[1] == 50 && !v4[2])
    {
      v5 = 1;
    }

    else if (!strcmp(v4, "AESV2"))
    {
      v5 = 2;
    }

    else
    {
      if (strcmp(v4, "AESV3"))
      {
        return 0;
      }

      v5 = 3;
    }

    if (CGPDFDictionaryGetInteger(v2, "Length", &v10))
    {
      v6 = v10;
      if ((v10 - 5) > 0x1B)
      {
        goto LABEL_24;
      }

      v6 = 8 * v10;
    }

    else
    {
      v6 = 128;
    }

    v10 = v6;
LABEL_24:
    if ((v6 - 40) > 0xD8 || (v6 & 7) != 0)
    {
      return 0;
    }

    if (CGPDFDictionaryGetName(v2, "AuthEvent", &v11))
    {
      v7 = v11;
    }

    else
    {
      v7 = "DocOpen";
      v11 = "DocOpen";
    }

    if (strcmp(v7, "DocOpen"))
    {
      return 0;
    }

    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
    __CFSetLastAllocationEventName();
    if (v2)
    {
      *v2 = a1;
      *(v2 + 2) = v5;
      v2[12] = 0;
      *(v2 + 2) = v10 / 8;
    }
  }

  return v2;
}

uint64_t CGPDFSecurityManagerUnlock(uint64_t a1, _OWORD *a2, size_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && (a2 || !a3))
  {
    pthread_mutex_lock(&lock);
    if (!CGPDFSecurityHandlerAuthenticateUserPassword(v3, a2, a3))
    {
      if (!CGPDFSecurityHandlerAuthenticateOwnerPassword(v3, a2, a3, v7))
      {
        *(v3 + 184) = 0;
        *(v3 + 188) = 0;
LABEL_34:
        pthread_mutex_unlock(&lock);
        v6 = *(v3 + 184);
        return v6 & 1;
      }

      *(v3 + 184) = 257;
      v16 = 4095;
LABEL_33:
      *(v3 + 188) = v16;
      goto LABEL_34;
    }

    *(v3 + 184) = 1;
    if ((*v3 - 3) >= 4)
    {
      if (*v3 != 2)
      {
        LOWORD(v16) = 0;
LABEL_32:
        v16 = v16;
        goto LABEL_33;
      }

      v17 = *(v3 + 16);
      if ((v17 & 0x10) != 0)
      {
        v13 = (v17 << 29 >> 31) & 7 | 0x38;
      }

      else
      {
        v13 = (v17 << 29 >> 31) & 7;
      }

      if ((v17 & 8) != 0)
      {
        LOWORD(v13) = v13 | 0xC40;
        v18 = 960;
      }

      else
      {
        v18 = 832;
      }

      v14 = v13 | v18;
      v15 = (*(v3 + 16) & 0x20) == 0;
    }

    else
    {
      v8 = *(v3 + 16);
      if ((v8 & 0x800) != 0)
      {
        v9 = 7;
      }

      else
      {
        v9 = 3;
      }

      v10 = v9 & ((v8 << 29) >> 31);
      if ((v8 & 0x10) != 0)
      {
        v10 |= 0x28u;
      }

      v11 = v10 | (v8 >> 5) & 0x10;
      if ((v8 & 8) != 0)
      {
        v11 |= 0x840u;
        v12 = 960;
      }

      else
      {
        v12 = 832;
      }

      v13 = v11 | v12 & ((v8 << 26) >> 31);
      if ((v8 & 0x100) != 0)
      {
        LOWORD(v13) = v13 | 0x240;
      }

      v14 = v13 | 0x440;
      v15 = (*(v3 + 16) & 0x408) == 0;
    }

    if (v15)
    {
      LOWORD(v16) = v13;
    }

    else
    {
      LOWORD(v16) = v14;
    }

    goto LABEL_32;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t CGPDFSecurityManagerGetDecryptionKey(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  pthread_mutex_lock(&lock);
  v6 = *(v3 + 184);
  if (v6 == 1)
  {
    if (a2)
    {
      memcpy(a2, (v3 + 192), *(v3 + 8));
    }

    *a3 = *(v3 + 8);
  }

  pthread_mutex_unlock(&lock);
  return v6;
}

void *CGPDFSecurityManagerCreateDecryptor(uint64_t a1, uint64_t a2, char *__s1, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4 || *(v4 + 184) != 1)
  {
    return 0;
  }

  if (a2)
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    if (__s1)
    {
LABEL_5:
      CryptFilter = CGPDFSecurityManagerCreateCryptFilter(a1, __s1);
      if (CryptFilter)
      {
        v10 = CryptFilter;
        Decryptor = CGPDFCryptFilterCreateDecryptor(CryptFilter, v7, v8, a4);
        free(v10);
        return Decryptor;
      }

      return 0;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
    if (__s1)
    {
      goto LABEL_5;
    }
  }

  v13 = *(a1 + 32);

  return CGPDFCryptFilterCreateDecryptor(v13, v7, v8, a4);
}

CGContextRef CGBitmapContextCreateAdaptive(size_t a1, size_t a2, CFTypeRef cf, const void *a4, const void *a5, const void *a6, const void *a7)
{
  if (useDebugBitmap_predicate_10881 != -1)
  {
    dispatch_once(&useDebugBitmap_predicate_10881, &__block_literal_global_10882);
  }

  if (useDebugBitmap_use_bitmap_10883)
  {
    v14 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    return CGBitmapContextCreateWithData(0, a1, a2, 8uLL, 0, v14, 1u, 0, 0);
  }

  if (!cf || (v16 = CFGetTypeID(cf), v16 == CFDictionaryGetTypeID()))
  {
    if (a1 - 0x80000000 >= 0xFFFFFFFF80000001 && a2 - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      v17 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409E4AD1ABuLL);
      if (v17)
      {
        v18 = v17;
        v17->i64[0] = a1;
        v17->i64[1] = a2;
        v17[1] = vdupq_n_s64(0x4052000000000000uLL);
        v17[2].i64[0] = _Block_copy(a4);
        *(v18 + 40) = _Block_copy(a5);
        *(v18 + 48) = _Block_copy(a6);
        *(v18 + 56) = _Block_copy(a7);
        if (cf)
        {
          v19 = CFRetain(cf);
        }

        else
        {
          v19 = 0;
        }

        *(v18 + 64) = v19;
        v20 = CGContextCreateWithDelegateAndInfo(0, 13, 0, 0, v18, adaptive_bitmap_context_context_finalize);
        if (!v20)
        {
          CGPostError("%s: failed to create btimap context with delegates.", "CGBitmapContextCreateAdaptive");
          adaptive_bitmap_context_info_release(v18);
          return v20;
        }

        v34 = *(v18 + 32);
        v35 = *(v18 + 48);
        v21 = *(v18 + 64);
        v36 = v21;
        v32 = *v18;
        v33 = *(v18 + 16);
        LODWORD(v37[0]) = 0;
        if (CGCFDictionaryGetInteger(v21, @"kCGAdaptiveMaximumBitDepth", v37))
        {
          v22 = v37[0];
        }

        else
        {
          v22 = 5;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v37[0] = 0;
        v37[1] = 0;
        v38 = vcvtq_f64_u64(*v18);
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, v37, v24);
        if (CGDisplayList)
        {
          v26 = CGDisplayList;
          v27 = CGDisplayListContextCreate(CGDisplayList);
          if (v27)
          {
            v28 = v27;
            v29 = malloc_type_calloc(1uLL, 0x148uLL, 0x10E0040685F387CuLL);
            if (v29)
            {
              v30 = v29;
              *(v29 + 2) = v34;
              *(v29 + 3) = v35;
              *v29 = v32;
              *(v29 + 1) = v33;
              *(v29 + 8) = v36;
              *(v29 + 9) = v26;
              *(v29 + 10) = v28;
              *(v29 + 11) = 0;
              *(v29 + 24) = v22;
              *(v29 + 108) = 0;
              *(v29 + 100) = 0;
              *(v29 + 29) = 1;
              *(v29 + 15) = 850045863;
              *(v29 + 9) = 0u;
              *(v29 + 10) = 0u;
              *(v29 + 8) = 0u;
              *(v29 + 22) = 0;
              *(v29 + 23) = Mutable;
              *(v29 + 40) = 0;
              *(v29 + 18) = 0u;
              *(v29 + 19) = 0u;
              *(v29 + 16) = 0u;
              *(v29 + 17) = 0u;
              *(v29 + 14) = 0u;
              *(v29 + 15) = 0u;
              *(v29 + 12) = 0u;
              *(v29 + 13) = 0u;
              pthread_mutex_init((v29 + 120), 0);
              v31 = CGContextDelegateCreate(v30);
              CGContextDelegateSetCallbacks(v31, &RIPAdaptiveBitmapContextCreate_callbacks, 19);
              v20[5] = v31;
              if (v31)
              {
                return v20;
              }

              goto LABEL_30;
            }

            CFRelease(v26);
          }

          else
          {
            v28 = v26;
          }

          CFRelease(v28);
        }

        v20[5] = 0;
LABEL_30:
        CGPostError("%s: failed to create delegate.", "CGBitmapContextCreateAdaptive");
        CFRelease(v20);
        return 0;
      }
    }
  }

  CGPostError("%s: failed to create CGAdaptiveContextInfo.", "CGBitmapContextCreateAdaptive");
  return 0;
}

void adaptive_bitmap_context_info_release(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("adaptive_bitmap_context_info_release", 22, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGAdaptiveBitmapContext.c", "info", "info is NULL");
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));
  _Block_release(*(a1 + 56));
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

double adaptive_bitmap_context_context_finalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      adaptive_bitmap_context_info_release(*(a1 + 32));
    }

    else
    {
      handle_invalid_context("adaptive_bitmap_context_context_finalize", a1);
    }
  }

  return result;
}

const void *__useDebugBitmap_block_invoke_10894()
{
  v1 = 0;
  result = get_BOOLean_property("CONTEXT_WITH_DELEGATES_USE_BITMAP", copy_local_domain_value, &v1);
  if (result)
  {
    useDebugBitmap_use_bitmap_10883 = v1;
  }

  return result;
}

CGFloat *cg_function_type2_create(CGPDFDictionary *a1)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x108004052750FCFuLL);
  if (result)
  {
    v3 = result;
    if (!CGPDFDictionaryGetNumbers(a1, "Domain", (result + 1), 2))
    {
      goto LABEL_21;
    }

    v10 = 0;
    v11 = 0;
    *v3 = 1;
    v4 = pdf_dictionary_copy_numbers(a1, "C0", &v11);
    *(v3 + 5) = v4;
    if (!v4)
    {
      v11 = 1;
      v5 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      *(v3 + 5) = v5;
      if (!v5)
      {
        goto LABEL_21;
      }

      *v5 = 0;
    }

    if (v11)
    {
      *(v3 + 3) = v11;
      v6 = pdf_dictionary_copy_numbers(a1, "C1", &v11);
      *(v3 + 6) = v6;
      if (v6)
      {
        goto LABEL_10;
      }

      v11 = 1;
      v7 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      *(v3 + 6) = v7;
      if (v7)
      {
        *v7 = 0x3FF0000000000000;
LABEL_10:
        if (v11 == *(v3 + 3))
        {
          if (CGPDFDictionaryGetNumber(a1, "N", &v10))
          {
            *(v3 + 7) = v10;
            v8 = pdf_dictionary_copy_numbers(a1, "Range", &v11);
            *(v3 + 4) = v8;
            v9 = *(v3 + 3);
            if (v8 && v11 != 2 * v9)
            {
            }

            else
            {
              result = CGFunctionCreate(v3, *v3, v3 + 1, v9, v8, &type2_callbacks);
              if (result)
              {
                return result;
              }

              pdf_error("unable to create Type 2 function.", v10);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

LABEL_21:
    type2_release(v3);
    return 0;
  }

  return result;
}

void type2_release(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[5]);
    free(a1[6]);

    free(a1);
  }
}

void type2_evaluate(uint64_t a1, long double *a2, double *a3)
{
  if (a1)
  {
    v5 = *(a1 + 56);
    v6 = *a2;
    v7 = pow(*a2, v5);
    if (v5 == 1.0)
    {
      v7 = v6;
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      do
      {
        v11 = *v9++;
        v12 = v11;
        v13 = *v10++;
        *a3++ = v12 + v7 * (v13 - v12);
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t CGFontDefaultAllowsFontSmoothing()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return allows_font_smoothing;
}

uint64_t CGFontDefaultGetAntialiasingStyle()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return default_antialiasing_style;
}

uint64_t CGFontDefaultGetSmoothingStyle()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return default_smoothing_style;
}

double CGFontDefaultGetSmoothingContrast()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return 2.0;
}

double CGFontGetDilationParameters(double a1, double a2, uint64_t a3, double *a4, unsigned int a5)
{
  if (CGFontGetDilationParameters_defaultsOnce != -1)
  {
    dispatch_once_f(&CGFontGetDilationParameters_defaultsOnce, 0, get_glyph_debugging_defaults);
  }

  if ((a5 & 2) != 0)
  {
    v10 = (a5 >> 4) & 7;
    if (v10 <= 3)
    {
      if (((a5 >> 4) & 7) <= 1)
      {
        v12 = 0.0;
        v11 = 0.0;
        if (v10 != 1)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      if (v10 != 2)
      {
LABEL_18:
        v11 = 0.0151249999;
        v12 = 0.0120999999;
        goto LABEL_28;
      }

      v11 = 0.0100429999;
LABEL_23:
      v12 = 0.00798599981;
      goto LABEL_28;
    }

    if (((a5 >> 4) & 7) <= 5)
    {
      if (v10 == 4)
      {
        v11 = 0.0205700006;
        v12 = 0.0169399995;
      }

      else
      {
        v11 = 0.00179999997;
        v12 = 0.00124999997;
      }

      goto LABEL_28;
    }

    if (v10 == 6)
    {
      v11 = 0.0131249996;
      v12 = 0.104999997;
      goto LABEL_28;
    }

LABEL_21:
    v12 = a1 * 0.300000012;
    v11 = a2 * 0.300000012;
    goto LABEL_28;
  }

  v9 = ((a5 & 0xD80) - 128) >> 7;
  if (v9 > 6)
  {
    if (v9 - 7 >= 2)
    {
LABEL_26:
      abort();
    }

    goto LABEL_21;
  }

  if (!v9)
  {
    v11 = 0.0100429999;
    goto LABEL_23;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v11 = 0.0125839999;
  v12 = 0.0100429999;
LABEL_28:
  v13 = sqrt(fabs(a4[1] * a4[2] + *a4 * a4[3]));
  v14 = v12 * v13;
  v15 = v11 * v13;
  if (v14 <= 0.300000012)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0.300000012;
  }

  if (v15 <= 0.300000012)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0.300000012;
  }

  if (default_glyph_debugging == 1)
  {
    CGPostError("%s Effective dilation parameters are: dilation width = %f dilation height = %f", "CGFontGetDilationParameters", v16, v17);
  }

  return v16;
}

const void *get_glyph_debugging_defaults()
{
  get_BOOLean_property("CGFontDebugGlyphBitmaps", copy_local_domain_value, &default_glyph_bitmap_debugging);

  return get_BOOLean_property("CGFontDebugGlyphs", copy_local_domain_value, &default_glyph_debugging);
}

uint64_t __cmyk_to_rgb_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  cmyk_to_rgb_info_cmyk_to_rgb_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v7, 0, v8, v9, v10, v6);
  cmyk_to_rgb_info_cmyk_to_rgb_extended = result;
  return result;
}

uint64_t __cmyk_to_gray_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  cmyk_to_gray_info_cmyk_to_gray = result;
  return result;
}

uint64_t __rgb_to_cmyk_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  rgb_to_cmyk_info_rgb_to_cmyk = result;
  return result;
}

uint64_t __rgb_to_gray_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearSRGB");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearGray");
  rgb_to_gray_info_rgb_to_gray_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearGray");
  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v7, v8, 0, v9, v10, v11, v6);
  rgb_to_gray_info_rgb_to_gray_extended = result;
  return result;
}

uint64_t __gray_to_cmyk_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  gray_to_cmyk_info_gray_to_cmyk = result;
  return result;
}

uint64_t __gray_to_rgb_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearGray");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearSRGB");
  gray_to_rgb_info_gray_to_rgb_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearGray");
  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v6, v8, 0, v9, v10, v11, v7);
  gray_to_rgb_info_gray_to_rgb_extended = result;
  return result;
}

void rle_filter_finalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t rle_filter_refill(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  while (result + 128 < a3 && (*(a1 + 8) & 1) == 0)
  {
    v6 = CGPDFSourceGetc(*a1);
    if (v6 == -1)
    {
      goto LABEL_17;
    }

    v7 = v6;
    if (v6 <= 127)
    {
      v8 = (v6 + 1);
      while (1)
      {
        v9 = CGPDFSourceGetc(*a1);
        if (v9 == -1)
        {
          break;
        }

        v11 = *(a1 + 16);
        v10 = *(a1 + 24);
        *(a1 + 16) = v11 + 1;
        *(v10 + v11) = v9;
        if (!--v8)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      pdf_error("RunLengthDecode: encountered unexpected EOF.");
LABEL_18:
      *(a1 + 8) = 1;
      return *(a1 + 16);
    }

    if (v6 == 128)
    {
      goto LABEL_18;
    }

    v12 = CGPDFSourceGetc(*a1);
    if (v12 == -1)
    {
      goto LABEL_17;
    }

    LODWORD(v13) = 257 - v7;
    if ((257 - v7) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v13;
    }

    do
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      *(a1 + 16) = v15 + 1;
      *(v14 + v15) = v12;
      --v13;
    }

    while (v13);
LABEL_16:
    result = *(a1 + 16);
  }

  return result;
}

void *PDFImageSetCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401C8C6399uLL);
  __CFSetLastAllocationEventName();
  *v2 = a1;
  v2[1] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &image_key_callbacks, &image_callbacks);
  v2[2] = 0;
  *(v2 + 8) = 0;
  return v2;
}

atomic_uint *image_retain(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  return result;
}

BOOL image_key_equal(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = CGColorEqualToColor(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

void image_key_release(int a1, void *a2)
{
  v3 = a2[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

_DWORD *image_key_retain(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = *a2;
    v3[2] = *(a2 + 8);
    v5 = *(a2 + 16);
    if (v5)
    {
      CFRetain(v5);
    }

    *(v4 + 2) = v5;
  }

  return v4;
}

void PDFImageSetRelease(uint64_t a1)
{
  if (a1)
  {
    CFRelease(*(a1 + 8));
    CGOrderedSetRelease(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

const void *add_image(uint64_t *a1, uint64_t a2, const void *a3, int a4, uint64_t a5)
{
  Value = 0;
  if (a1 && a2)
  {
    v7 = a5;
    if (add_image_predicate != -1)
    {
      dispatch_once(&add_image_predicate, &__block_literal_global_10959);
    }

    key[0] = add_image_f(a2);
    key[1] = v7;
    key[2] = a3;
    Value = CFDictionaryGetValue(a1[1], key);
    if (!Value)
    {
      if (a4)
      {
        v11 = *a1;
        v12 = *(a1 + 8) + 1;
        *(a1 + 8) = v12;
        v13 = a2;
        v14 = a3;
        v15 = v7;
        v16 = 1;
      }

      else
      {
        v17 = a1[3];
        if (v17)
        {
          v18 = CFDictionaryGetValue(v17, *(a2 + 24));
          if (v18)
          {
            v19 = v18;
            v11 = *a1;
            v12 = *(a1 + 8) + 1;
            *(a1 + 8) = v12;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
LABEL_13:
            Value = create_image(v11, v13, v14, v15, v16, v19, v12);
            CFDictionarySetValue(a1[1], key, Value);
            v20 = a1[2];
            if (!v20)
            {
              v20 = CGOrderedSetCreate();
              a1[2] = v20;
            }

            CGOrderedSetAddValue(v20, Value);
            PDFImageRelease(Value);
            return Value;
          }
        }

        v11 = *a1;
        v12 = *(a1 + 8) + 1;
        *(a1 + 8) = v12;
        v13 = a2;
        v14 = 0;
        v15 = v7;
        v16 = 0;
      }

      v19 = 0;
      goto LABEL_13;
    }
  }

  return Value;
}

uint64_t (*__add_image_block_invoke())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageGetHash");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageGetHash");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageGetHash", v0);
  }

  add_image_f = result;
  return result;
}

uint64_t PDFImageSetEmitDefinitions(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        *(v1 + 16) = 0;
        v3 = *(v2 + 8);
        v4.length = CFArrayGetCount(v3);
        v4.location = 0;
        CFArrayApplyFunction(v3, v4, emit_image_definition, 0);
        CGOrderedSetRelease(v2);
        v2 = *(v1 + 16);
      }

      while (v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void emit_image_definition(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_19;
  }

  EPSRep = CGImageGetEPSRep(*(a1 + 48));
  if (EPSRep)
  {
    v4 = EPSRep;
    v5 = *(v1 + 8);
    v6 = PDFXRefTableAddObject(*(v5 + 504));
    v7 = PDFStreamCreateWithObjectNumber(v5, v6);
    v8 = v7;
    if (v7)
    {
      v9 = v7[1];
      v10 = v9;
    }

    else
    {
      v10 = 0;
      v9 = MEMORY[8];
    }

    *(v1 + 56) = v10;
    PDFDocumentBeginObject(*v7, v9);
    PDFDocumentPrintf(*v8, "<<");
    PDFDocumentPrintf(*(v1 + 8), "/Type /AAPL:EPSData");
    PDFStreamBeginData(v8);
    v11 = v4[2];
    v12 = malloc_type_malloc(0x5000uLL, 0xE0DAC87uLL);
    v13 = CGAccessSessionCreate(v11);
    while (1)
    {
      Bytes = CGAccessSessionGetBytes(v13, v12, 0x5000uLL);
      if (!Bytes)
      {
        break;
      }

      CGDataConsumerPutBytes(v8[3], v12, Bytes);
    }

    CGAccessSessionRelease(v13);
    free(v12);
    PDFStreamEndData(v8);
    PDFStreamEnd(v8);
    PDFStreamRelease(v8);
    v2 = v4[3];
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  v15 = *(v2 + 36);
  if ((v15 & 0x2000000) != 0)
  {
    if (*(v2 + 56) < 2uLL)
    {
      v28 = *(v1 + 16);
      PDFDocumentBeginObject(*v28, *(v28 + 8));
      PDFDocumentPrintf(*v28, "<<");
      PDFDocumentPrintf(*(v1 + 8), "/Type /XObject");
      PDFDocumentPrintf(*(v1 + 8), "/Subtype /Image");
      PDFDocumentPrintf(*(v1 + 8), "/Width %z", *(v2 + 40));
      PDFDocumentPrintf(*(v1 + 8), "/Height %z", *(v2 + 48));
      PDFDocumentPrintf(*(v1 + 8), "/ImageMask true");
      emit_interpolation(v1);
      Decode = CGImageGetDecode(v2);
      emit_decode(v1, Decode, 2);
      if (*(v1 + 104) != -1)
      {
        PDFDocumentPrintf(*(v1 + 8), "/StructParent %d", *(v1 + 104));
      }

      if (*(v1 + 73) == 1)
      {
        goto LABEL_44;
      }

      v30 = v1;
      v31 = v2;
      if (*(v1 + 74) == 1)
      {
LABEL_47:
        emit_jpeg2000_data(v30, v31);
        goto LABEL_50;
      }

LABEL_49:
      PDFImageEmitData(v30, v31);
      goto LABEL_50;
    }

    pdf_error("unsupported image mask: bits/component > 1.");
LABEL_19:
    emit_empty_image(v1);
    goto LABEL_207;
  }

  if (*(v1 + 72) == 1)
  {
    v16 = *(v1 + 16);
    PDFDocumentBeginObject(*v16, *(v16 + 8));
    PDFDocumentPrintf(*v16, "<<");
    PDFDocumentPrintf(*(v1 + 8), "/Type /XObject");
    PDFDocumentPrintf(*(v1 + 8), "/Subtype /Image");
    PDFDocumentPrintf(*(v1 + 8), "/Width %z", *(v2 + 40));
    PDFDocumentPrintf(*(v1 + 8), "/Height %z", *(v2 + 48));
    PDFDocumentPrintf(*(v1 + 8), "/ColorSpace /DeviceGray");
    emit_interpolation(v1);
    v17 = CGImageGetDecode(v2);
    emit_decode(v1, v17, 2);
    if (*(v1 + 104) != -1)
    {
      PDFDocumentPrintf(*(v1 + 8), "/StructParent %d", *(v1 + 104));
    }

    v18 = *(v1 + 64);
    if (v18)
    {
      if (v18 < 0)
      {
        NumberOfComponents = CGTaggedColorGetNumberOfComponents(v18);
        v18 = *(v1 + 64);
      }

      else
      {
        NumberOfComponents = *(v18 + 56);
      }

      Components = CGColorGetComponents(v18);
      PDFDocumentPrintf(*(v1 + 8), "/Matte [");
      v35 = NumberOfComponents - 1;
      if (NumberOfComponents != 1)
      {
        do
        {
          v36 = *Components++;
          PDFDocumentPrintf(*(v1 + 8), "%f", v36);
          --v35;
        }

        while (v35);
      }

      PDFDocumentPrintf(*(v1 + 8), "]");
    }

    if (*(v1 + 73) == 1)
    {
      PDFDocumentPrintf(*(v1 + 8), "/BitsPerComponent %z", *(v2 + 56));
LABEL_44:
      emit_jpeg_data(v1);
LABEL_50:
      PDFStreamEnd(*(v1 + 16));
      goto LABEL_207;
    }

    if (*(v1 + 74) == 1)
    {
      PDFDocumentPrintf(*(v1 + 8), "/BitsPerComponent %z", *(v2 + 56));
      v30 = v1;
      v31 = v2;
      goto LABEL_47;
    }

    v30 = v1;
    v31 = v2;
    goto LABEL_49;
  }

  if ((*(v1 + 74) & 1) != 0 || (v15 & 0x4000000) == 0)
  {
    v32 = v1;
    v33 = v2;
LABEL_206:
    emit_image(v32, v33);
    goto LABEL_207;
  }

  PixelComponentType = CGImageGetPixelComponentType(v2);
  if (PixelComponentType == 3 || !PixelComponentType)
  {
    PixelComponentType = CGImageGetUpscaledComponentType(v2);
  }

  if (PixelComponentType - 6 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v21 = 2;
  }

  else
  {
    v21 = PixelComponentType;
  }

  if (!*(v2 + 176))
  {
    memset(__src, 0, 304);
    CGBitmapPixelInfoInitializeWithImage(__src, __src, v2);
    if ((v21 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      _CGHandleAssert("stream_create_from_image_without_softmask", 284, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "preblended ? CGPixelComponentLessThanOrEqual(pixel_component_type, kCGPixelComponent8BitInteger) : CGPixelComponentLessThanOrEqual(pixel_component_type, kCGPixelComponent16BitInteger)", "preblended %d", 0);
    }

    LODWORD(__src[0]) = v21;
    *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v21);
    if (v21 == 2)
    {
      v37 = 12288;
    }

    else
    {
      v37 = 0;
    }

    if ((*(v2 + 36) & 0xC000000) != 0)
    {
      v38 = 3;
    }

    else
    {
      v38 = 0;
    }

    *(&__src[1] + 1) = __PAIR64__(v37, v38);
    v39 = *(v2 + 40);
    v40 = *(v2 + 48);
    memcpy(__dst, __src, 0x130uLL);
    v41 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) * v39 + 7) >> 3;
    v42 = (*(&__src[0] + 1) * v39 + 7) >> 3;
    RenderingIntent = CGImageGetRenderingIntent(v2);
    memcpy(__dst, __src, 0x130uLL);
    v44 = CGDataProviderCreateForDestinationWithImage(0, __dst, v39, v40, v2, RenderingIntent, 0);
    v45 = v44;
    if (v44 && (v46 = *(v44 + 168)) != 0)
    {
      v47 = v46(*(v44 + 24));
    }

    else
    {
      v47 = 0;
    }

    ColorSpace = CGImageGetColorSpace(v2);
    if (DWORD2(__src[1]))
    {
      v73 = v42;
    }

    else
    {
      v73 = 0;
    }

    memcpy(__dst, __src, 0x130uLL);
    image_stream = create_image_stream(ColorSpace, __dst, 0, v39, v40, v41, v73, v41, v73, v47, 0, v45, 0, 0);
    goto LABEL_116;
  }

  Mask = CGImageGetMask(v2);
  if (!Mask)
  {
    _CGHandleAssert("stream_create_from_image_with_softmask", 449, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "mask != NULL", "mask missing");
  }

  v23 = Mask;
  v24 = CGImageGetPixelComponentType(v2);
  v25 = CGImageGetPixelComponentType(v2);
  v26 = CGImageGetPixelComponentType(v23);
  v27 = *(v2 + 40) != *(v23 + 40) || *(v2 + 48) != *(v23 + 48);
  v48 = *(v2 + 36);
  if ((v48 & 0x4000000) == 0)
  {
    v49 = (v48 >> 27) & 1;
    if (v24 != v21)
    {
      v49 = 1;
    }

    if (((v49 | v27) & 1) == 0 && v25 == v26)
    {
      v50 = CGImageGetMask(v2);
      memset(__src, 0, 304);
      CGBitmapPixelInfoInitializeWithImage(__src, __src, v2);
      memset(__dst, 0, 304);
      CGBitmapPixelInfoInitializeWithImage(__dst, __dst, v50);
      if (CGImageGetPixelComponentType(v2) - 6 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v170 = CGImageGetPixelComponentType(v2);
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 329, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "CGPixelComponentLessThanOrEqual(CGImageGetPixelComponentType(image), kCGPixelComponent16BitInteger)", "type %d", v170);
      }

      if (CGImageGetPixelComponentType(v50) - 6 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v171 = CGImageGetPixelComponentType(v50);
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 330, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "CGPixelComponentLessThanOrEqual(CGImageGetPixelComponentType(smask), kCGPixelComponent16BitInteger)", "mask %d", v171);
      }

      LODWORD(__src[0]) = v21;
      *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v21);
      if (CGImageGetPixelComponentType(v2) == 2)
      {
        v51 = 12288;
      }

      else
      {
        v51 = 0;
      }

      HIDWORD(__src[1]) = v51;
      if (DWORD2(__src[1]))
      {
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 340, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "image_info.alpha_info == kCGImageAlphaNone", "alpha %d", DWORD2(__src[1]));
      }

      LODWORD(__dst[0]) = v21;
      *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v21);
      if (CGImageGetPixelComponentType(v50) == 2)
      {
        v52 = 12288;
      }

      else
      {
        v52 = 0;
      }

      HIDWORD(__dst[1]) = v52;
      v53 = *(v2 + 40);
      v54 = *(v2 + 48);
      memcpy(v183, __src, sizeof(v183));
      v55 = (CGBitmapPixelInfoGetBitsPerPixel(v183) * v53 + 7) >> 3;
      v56 = *(&__src[0] + 1) * v53 + 7;
      v57 = CGImageGetRenderingIntent(v2);
      memcpy(v183, __src, sizeof(v183));
      v58 = CGDataProviderCreateForDestinationWithImage(0, v183, v53, v54, v2, v57, 0);
      v59 = CGImageGetRenderingIntent(v50);
      memcpy(v183, __dst, sizeof(v183));
      v60 = CGDataProviderCreateForDestinationWithImage(0, v183, v53, v54, v50, v59, 0);
      provider = v55;
      if (v58 && (v61 = *(v58 + 21)) != 0)
      {
        v178 = v61(*(v58 + 3));
      }

      else
      {
        v178 = 0;
      }

      v75 = v56 >> 3;
      v76 = v2;
      if (v60 && (v77 = *(v60 + 21)) != 0)
      {
        v78 = v77(*(v60 + 3));
      }

      else
      {
        v78 = 0;
      }

      v79 = CGImageGetColorSpace(v76);
      Matte = CGImageGetMatte(v76);
      memcpy(v183, __src, sizeof(v183));
      v172 = v78;
      v2 = v76;
      v71 = create_image_stream(v79, v183, 0, v53, v54, provider, v75, provider, v75, v178, v172, v58, v60, Matte);
      CGDataProviderRelease(v58);
      v81 = v60;
      goto LABEL_117;
    }
  }

  if ((v21 - 3) >= 3)
  {
    v62 = v21;
  }

  else
  {
    v62 = 2;
  }

  if ((v21 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62;
  }

  v64 = CGImageGetMask(v2);
  v65 = CGImageGetMatte(v2);
  memset(__src, 0, 304);
  CGBitmapPixelInfoInitializeWithImage(__src, __src, v2);
  DWORD2(__src[1]) = 3;
  LODWORD(__src[0]) = v63;
  *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v63);
  if (v63 == 2)
  {
    v66 = 12288;
  }

  else
  {
    v66 = 0;
  }

  HIDWORD(__src[1]) = v66;
  v67 = *(v2 + 40);
  v68 = *(v2 + 48);
  if (!v64)
  {
LABEL_107:
    v82 = CGImageGetRenderingIntent(v2);
    memcpy(__dst, __src, 0x130uLL);
    v45 = CGDataProviderCreateWithSoftMaskAndMatte(0, __dst, v67, v68, v2, v82);
    memcpy(__dst, __src, 0x130uLL);
    v83 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) * v67 + 7) >> 3;
    if (v45)
    {
      v84 = *(v45 + 21);
      if (v84)
      {
        v85 = v84(*(v45 + 3));
      }

      else
      {
        v85 = 0;
      }

      v86 = *(v45 + 22);
      if (v86)
      {
        v87 = v86(*(v45 + 3));
LABEL_115:
        v88 = v2;
        v89 = CGImageGetColorSpace(v2);
        memcpy(__dst, __src, 0x130uLL);
        v90 = v89;
        v2 = v88;
        image_stream = create_image_stream(v90, __dst, 1, v67, v68, v83, v83, v83, v83, v85, v87, v45, 0, v65);
LABEL_116:
        v71 = image_stream;
        v81 = v45;
LABEL_117:
        CGDataProviderRelease(v81);
        goto LABEL_118;
      }
    }

    else
    {
      v85 = 0;
    }

    v87 = 0;
    goto LABEL_115;
  }

  v69 = v64[5];
  if (v69 - 0x4000000 >= 0xFFFFFFFFFC000001)
  {
    v70 = v64[6];
    if (v70 - 0x4000000 >= 0xFFFFFFFFFC000001)
    {
      if (v69 > v67)
      {
        v67 = v64[5];
      }

      if (v70 > v68)
      {
        v68 = v64[6];
      }

      goto LABEL_107;
    }
  }

  v71 = 0;
LABEL_118:
  if (!v71)
  {
    goto LABEL_205;
  }

  v91 = (*(v71 + 2) * *(v71 + 3) * *(v71 + 39) + 7) >> 3;
  v92 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v91 * *(v71 + 40));
  if (!Mutable)
  {
    goto LABEL_205;
  }

  v94 = Mutable;
  if (!*(v71 + 42))
  {
    image = v2;
    v174 = v1;
    v95 = 0;
    v97 = 0;
    goto LABEL_124;
  }

  v95 = (*(v71 + 39) * *(v71 + 2) + 7) >> 3;
  v96 = CFDataCreateMutable(v92, v95 * *(v71 + 40));
  if (!v96)
  {
    CFRelease(v94);
LABEL_205:
    v32 = v1;
    v33 = 0;
    goto LABEL_206;
  }

  v97 = v96;
  image = v2;
  v174 = v1;
LABEL_124:
  for (providera = 0; ; providera = (providera + v109))
  {
    v98 = *(v71 + 40);
    v99 = v98 > providera;
    v100 = v98 - providera;
    if (!v99)
    {
      break;
    }

    if (v100 >= *(v71 + 43))
    {
      v101 = *(v71 + 43);
    }

    else
    {
      v101 = v100;
    }

    if (v71[521] == 1)
    {
      v102 = *(v71 + 67) == 0;
      v103 = (v71 + 384);
      if (*(v71 + 67))
      {
        v103 = (v71 + 368);
      }
    }

    else
    {
      v102 = 0;
      v103 = (v71 + 368);
    }

    ChunksAtPosition = CGAccessSessionGetChunksAtPosition(*(v71 + 84), *(v71 + 44) * providera, *(v71 + 41), *(v71 + 44) - *(v71 + 41), v101, *v103, 0);
    v105 = *(v71 + 41);
    v106 = ChunksAtPosition + v105 - 1;
    if (v105 <= 1)
    {
      v107 = 1;
    }

    else
    {
      v107 = *(v71 + 41);
    }

    v108 = *(v71 + 85);
    v109 = v106 / v107;
    if (v108)
    {
      v110 = v101;
      v111 = v106;
      v112 = CGAccessSessionGetChunksAtPosition(v108, *(v71 + 45) * providera, *(v71 + 42), *(v71 + 45) - *(v71 + 42), v110, *(v71 + 47), 0);
      v106 = v111;
      v113 = (v112 + *(v71 + 42) - 1) / *(v71 + 42);
      if (v113 != v109)
      {
        _CGHandleAssert("CGImageStreamRead", 576, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "smask_rows_read == rows_read", "%zu %zu", v113, v109);
      }
    }

    if (!v102)
    {
      goto LABEL_187;
    }

    v175 = *(v71 + 48);
    v176 = v107;
    v114 = *(v71 + 39);
    v177 = v106;
    memcpy(&__src[2] + 8, v71 + 696, 0x130uLL);
    v115 = *(v71 + 41);
    v116 = v95;
    v117 = *(v71 + 46);
    memcpy(&__dst[2] + 8, v71 + 1000, 0x130uLL);
    v118 = *(v71 + 86);
    *&__src[0] = v175;
    *(&__src[0] + 1) = v114;
    *&__src[1] = v109;
    *(&__src[1] + 1) = v115;
    *&__src[2] = 0;
    *&__dst[0] = v117;
    *(&__dst[0] + 1) = v114;
    v95 = v116;
    *&__dst[1] = v109;
    *(&__dst[1] + 1) = v115;
    *&__dst[2] = 0;
    vImageConverterConvert(v118, __src, __dst, 0);
    v107 = v176;
    v106 = v177;
    if (v176 > v177)
    {
      goto LABEL_187;
    }

    v119 = 0;
    v120 = *(v71 + 89);
    v121 = *(v71 + 88);
    v123 = *(v71 + 47);
    v122 = *(v71 + 48);
    v124 = v121 - 24;
    do
    {
      v125 = *(v71 + 39);
      if (!v125)
      {
        goto LABEL_186;
      }

      LODWORD(j) = 0;
      v127 = 0;
      v128 = 0;
      LODWORD(v129) = 0;
      v130 = 0;
      v131 = v123;
      v132 = v122;
      do
      {
        if (v120)
        {
          for (i = 0; i != v120; ++i)
          {
            if (v121 < 0x19)
            {
              v137 = v121;
            }

            else
            {
              if (v129 > 0x17)
              {
                v135 = v129;
              }

              else
              {
                do
                {
                  v134 = *v132++;
                  v130 = v134 | (v130 << 8);
                  v135 = v129 + 8;
                  v136 = v129 >= 0x10;
                  LODWORD(v129) = v129 + 8;
                }

                while (!v136);
              }

              LODWORD(v129) = v135 - 24;
              v137 = v121 - 24;
            }

            if (v137 > v129)
            {
              do
              {
                v138 = *v132++;
                v130 = v138 | (v130 << 8);
                v129 = (v129 + 8);
              }

              while (v137 > v129);
            }

            LODWORD(v129) = v129 - v137;
          }
        }

        if (v121 <= 0x18)
        {
          v141 = 0;
          v142 = v129;
          v143 = v121;
        }

        else
        {
          if (v129 > 0x17)
          {
            v140 = v129;
          }

          else
          {
            do
            {
              v139 = *v132++;
              v130 = v139 | (v130 << 8);
              v140 = v129 + 8;
              v136 = v129 >= 0x10;
              LODWORD(v129) = v129 + 8;
            }

            while (!v136);
          }

          v142 = (v140 - 24);
          v141 = ((v130 >> (v140 - 24)) & 0xFFFFFF) << v124;
          LODWORD(v129) = v142;
          v143 = v121 - 24;
        }

        if (v143 > v142)
        {
          do
          {
            v144 = *v132++;
            v130 = v144 | (v130 << 8);
            v129 = (v129 + 8);
          }

          while (v143 > v129);
        }

        LODWORD(v129) = v129 - v143;
        v145 = (v130 >> v129) & ~(-1 << v143) | v141;
        if (v121 < 0x19)
        {
          v146 = v121;
          if (j < 8)
          {
            goto LABEL_177;
          }
        }

        else
        {
          if (j >= 8)
          {
            for (j = j; j > 7; *v131++ = v128 >> j)
            {
              j -= 8;
            }
          }

          LODWORD(j) = j | 0x18;
          v128 = (v145 >> v124) & 0xFFFFFF | (v128 << 24);
          v146 = v121 - 24;
        }

        v147 = (j - 8);
        do
        {
          LODWORD(j) = j - 8;
          *v131++ = v128 >> v147;
          v147 -= 8;
        }

        while (j > 7);
        v125 = *(v71 + 39);
LABEL_177:
        v128 = (v128 << v146) | v145 & ~(-1 << v146);
        LODWORD(j) = j + v146;
        ++v127;
      }

      while (v127 < v125);
      if (v131 && j)
      {
        do
        {
          if (j < 8)
          {
            LODWORD(k) = j;
          }

          else
          {
            for (k = j; k > 7; *v131++ = v128 >> k)
            {
              k -= 8;
            }
          }

          v149 = -j & 7;
          v128 <<= v149;
          LODWORD(j) = k + v149;
        }

        while (j);
      }

LABEL_186:
      v122 += *(v71 + 41);
      v123 += *(v71 + 42);
      ++v119;
    }

    while (v119 != v109);
LABEL_187:
    if (v107 > v106)
    {
      break;
    }

    v150 = 0;
    do
    {
      CFDataAppendBytes(v94, (*(v71 + 46) + *(v71 + 41) * v150), v91);
      if (v97)
      {
        CFDataAppendBytes(v97, (*(v71 + 47) + *(v71 + 42) * v150), v95);
      }

      ++v150;
    }

    while (v109 != v150);
  }

  providerb = CGDataProviderCreateWithCFData(v94);
  CFRelease(v94);
  shouldInterpolate = CGImageGetShouldInterpolate(image);
  v151 = CGImageGetRenderingIntent(image);
  CopyWithStandardRange = CGColorSpaceCreateCopyWithStandardRange(*v71);
  v154 = *(v71 + 39);
  v153 = *(v71 + 40);
  v155 = *(v71 + 2);
  v156 = *(v71 + 3) * v155;
  memcpy(__src, v71 + 8, 0x130uLL);
  CGImageBitmapInfo = CGBitmapPixelInfoGetCGImageBitmapInfo(__src);
  v158 = CGImageCreate(v154, v153, v155, v156, v91, CopyWithStandardRange, CGImageBitmapInfo & 0xFFFFFFE0, providerb, *(v71 + 6), shouldInterpolate, v151);
  CGDataProviderRelease(providerb);
  CGColorSpaceRelease(CopyWithStandardRange);
  if (v97)
  {
    v159 = CGDataProviderCreateWithCFData(v97);
    CFRelease(v97);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v161 = *(v71 + 39);
    v162 = *(v71 + 40);
    v163 = *(v71 + 2);
    memcpy(__src, v71 + 8, 0x130uLL);
    v164 = CGBitmapPixelInfoGetCGImageBitmapInfo(__src);
    v165 = CGImageCreate(v161, v162, v163, v163, v95, DeviceGray, v164 & 0xFFFFFFE0, v159, 0, 0, kCGRenderingIntentDefault);
    CGColorSpaceRelease(DeviceGray);
    CGDataProviderRelease(v159);
    if (v71[520])
    {
      v166 = (v71 + 392);
    }

    else
    {
      v166 = 0;
    }

    v167 = CGImageCreateWithMaskAndMatte(v158, v165, v166);
    v1 = v174;
    if (v158)
    {
      CFRelease(v158);
    }

    if (v165)
    {
      CFRelease(v165);
    }
  }

  else
  {
    v167 = v158;
    v1 = v174;
  }

  CGImageStreamRelease(v71);
  emit_image(v1, v167);
  if (v167)
  {
    CFRelease(v167);
  }

LABEL_207:
  v168 = *(v1 + 48);
  if (v168)
  {
    CFRelease(v168);
  }

  *(v1 + 48) = 0;
  v169 = *(v1 + 80);
  if (v169)
  {
    CFRelease(v169);
    *(v1 + 80) = 0;
  }

  CGColorSpaceRelease(*(v1 + 88));
  *(v1 + 88) = 0;
}

char *CGContextCopyTopGState(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 96);

    return CGGStateCreateCopy(v1);
  }

  else
  {
    handle_invalid_context("CGContextCopyTopGState", a1);
    return 0;
  }
}

void CGContextReplaceTopGState(CGContext *c, uint64_t a2)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (a2)
      {
        v4 = *(c + 13);
        v5 = v4[1];
        if (v5 != v4)
        {
          v7 = *v5;
          v6 = v5[1];
          *(v7 + 8) = v6;
          *v6 = v7;
          *v5 = v5;
          v5[1] = v5;
          CGGStateRelease(v5);
        }

        Copy = CGGStateCreateCopy(a2);
        v9 = v4[1];
        v4[1] = Copy;
        *Copy = v4;
        *v9 = Copy;
        *(Copy + 1) = v9;
        *(c + 12) = v4[1];
      }

      else
      {

        CGContextResetTopGState(c);
      }

      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextReplaceTopGState", v10);
}

double CGContextResetTopGState(CGContext *c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 12) + 24) = CGAffineTransformIdentity;
      CGContextResetClip(c);
      v2 = *(c + 12);

      CGGStateReset(v2);
      return result;
    }

    v4 = c;
  }

  else
  {
    v4 = 0;
  }

  handle_invalid_context("CGContextResetTopGState", v4);
  return result;
}

void CGContextResetClip(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    CGGStateResetClip(*(c + 12));
  }

  else
  {
    handle_invalid_context("CGContextResetClip", c);
  }
}

CGFloat CGContextResetCTM(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    *(*(a1 + 96) + 24) = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  else
  {
    handle_invalid_context("CGContextResetCTM", a1);
  }

  return result;
}

double CGContextSetCTM(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v2 = *(a1 + 96);
      v3 = *a2;
      v4 = a2[1];
      *(v2 + 56) = a2[2];
      *(v2 + 40) = v4;
      *(v2 + 24) = v3;
    }

    else
    {
      handle_invalid_context("CGContextSetCTM", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetCTM", 0);
  }

  return *&v3;
}

void CGContextRotateCTM(CGContextRef c, CGFloat angle)
{
  if (c && *(c + 4) == 1129601108)
  {
    v3 = *(c + 12);
    v5 = *(v3 + 40);
    v6 = *(v3 + 24);
    v7 = *(v3 + 56);
    v4 = __sincos_stret(angle);
    *(v3 + 24) = vmlaq_n_f64(vmulq_n_f64(v5, v4.__sinval), v6, v4.__cosval);
    *(v3 + 40) = vmlsq_lane_f64(vmulq_n_f64(v5, v4.__cosval), v6, v4.__sinval, 0);
    *(v3 + 56) = vaddq_f64(v7, vmlaq_f64(vmulq_f64(v5, 0), 0, v6));
  }

  else
  {

    handle_invalid_context("CGContextRotateCTM", c);
  }
}

double CGContextGetLineWidth(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 8);
  }

  handle_invalid_context("CGContextGetLineWidth", a1);
  return 0.0;
}

uint64_t CGContextGetLineCap(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 2);
  }

  handle_invalid_context("CGContextGetLineCap", a1);
  return 0;
}

uint64_t CGContextGetLineJoin(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 3);
  }

  handle_invalid_context("CGContextGetLineJoin", a1);
  return 0;
}

double CGContextGetMiterLimit(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 16);
  }

  handle_invalid_context("CGContextGetMiterLimit", a1);
  return 0.0;
}

uint64_t CGContextGetLineDashCount(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(*(a1 + 96) + 128) + 32);
    if (v1)
    {
      return *(v1 + 16);
    }
  }

  else
  {
    handle_invalid_context("CGContextGetLineDashCount", a1);
  }

  return 0;
}

double CGContextGetLineDashPattern(uint64_t a1, double *a2, double *a3, unint64_t a4, double result)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v5 = *(*(*(a1 + 96) + 128) + 32);
      if (a2)
      {
        if (v5)
        {
          result = *(v5 + 8);
        }

        else
        {
          result = 0.0;
        }

        *a2 = result;
      }

      if (v5)
      {
        v6 = *(v5 + 16);
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = (v5 + 24);
      }

      else
      {
        v7 = 0;
      }

      if (v6 >= a4)
      {
        v6 = a4;
      }

      for (; v6; --v6)
      {
        v8 = *v7++;
        result = v8;
        *a3++ = v8;
      }
    }

    else
    {
      handle_invalid_context("CGContextGetLineDashPattern", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextGetLineDashPattern", 0);
  }

  return result;
}

uint64_t CGContextGetRenderingIntent(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return ((*(*(*(a1 + 96) + 120) + 4) << 12) >> 28);
  }

  handle_invalid_context("CGContextGetRenderingIntent", a1);
  return 2;
}

uint64_t CGContextGetContentToneMappingInfo(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 56);
  }

  handle_invalid_context("CGContextGetContentToneMappingInfo", a1);
  return 0;
}

double CGContextSetContentToneMappingInfo(uint64_t a1, int a2, const void *a3)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetContentToneMappingInfo(*(a1 + 96), a2, a3);
    }

    else
    {
      handle_invalid_context("CGContextSetContentToneMappingInfo", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetContentToneMappingInfo", 0);
  }

  return result;
}

uint64_t CGContextGetStrokeAdjust(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(*(a1 + 96) + 128) + 1);
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeAdjust", a1);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGContextGetFillColorAsColor(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 96);

    return CGGStateGetFillColor(v1);
  }

  else
  {
    handle_invalid_context("CGContextGetFillColorAsColor", a1);
    return 0;
  }
}

uint64_t CGContextGetStrokeColorAsColor(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 96);

    return CGGStateGetStrokeColor(v1);
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeColorAsColor", a1);
    return 0;
  }
}

unint64_t CGContextGetFillColorSpace(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    result = CGGStateGetFillColor(*(a1 + 96));
    if (result)
    {
      if ((result & 0x8000000000000000) != 0)
      {

        return CGTaggedColorGetColorSpace(result);
      }

      else
      {
        return *(result + 24);
      }
    }
  }

  else
  {
    handle_invalid_context("CGContextGetFillColorSpace", a1);
    return 0;
  }

  return result;
}

unint64_t CGContextGetStrokeColorSpace(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    result = CGGStateGetStrokeColor(*(a1 + 96));
    if (result)
    {
      if ((result & 0x8000000000000000) != 0)
      {

        return CGTaggedColorGetColorSpace(result);
      }

      else
      {
        return *(result + 24);
      }
    }
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeColorSpace", a1);
    return 0;
  }

  return result;
}

void CGContextGetFillColor(uint64_t a1, void *a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    FillColor = CGGStateGetFillColor(*(a1 + 96));
    Components = CGColorGetComponents(FillColor);
    if (!FillColor)
    {
      return;
    }

    v5 = Components;
    if (FillColor < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(FillColor);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    else
    {
      NumberOfComponents = *(FillColor + 56);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    do
    {
      v7 = *v5++;
      *a2++ = v7;
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  else
  {

    handle_invalid_context("CGContextGetFillColor", a1);
  }
}

void CGContextGetStrokeColor(uint64_t a1, void *a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    StrokeColor = CGGStateGetStrokeColor(*(a1 + 96));
    Components = CGColorGetComponents(StrokeColor);
    if (!StrokeColor)
    {
      return;
    }

    v5 = Components;
    if (StrokeColor < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(StrokeColor);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    else
    {
      NumberOfComponents = *(StrokeColor + 56);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    do
    {
      v7 = *v5++;
      *a2++ = v7;
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  else
  {

    handle_invalid_context("CGContextGetStrokeColor", a1);
  }
}

void CGContextSetFillPattern(CGContextRef c, CGPatternRef pattern, const CGFloat *components)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (!pattern || !components)
      {
        CGPostError("%s: pattern and components may not be NULL.");
        return;
      }

      FillColor = CGGStateGetFillColor(*(c + 12));
      if (FillColor)
      {
        v7 = FillColor;
        if ((FillColor & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(FillColor);
          if (ColorSpace)
          {
            goto LABEL_8;
          }
        }

        else
        {
          ColorSpace = *(FillColor + 24);
          if (ColorSpace)
          {
LABEL_8:
            if (CGColorSpaceGetType(ColorSpace) == 9)
            {
              if ((CGColorEqualToColorComponents(v7, ColorSpace, pattern, components) & 1) == 0)
              {
                v9 = CGColorCreateWithPattern(ColorSpace, pattern, components);
                CGContextSetFillColorWithColor(c, v9);
                if (v9)
                {

                  CFRelease(v9);
                }
              }
            }

            else
            {
              CGPostError("%s: pattern specified with non-pattern color space.");
            }

            return;
          }
        }
      }

      CGPostError("%s: no color space specified for fill pattern.");
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextSetFillPattern", v10);
}

uint64_t CGContextGetFillPattern(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetFillPattern", a1);
    return 0;
  }

  FillColor = CGGStateGetFillColor(*(a1 + 96));
  Components = CGColorGetComponents(FillColor);
  if (!FillColor)
  {
    return 0;
  }

  v5 = Components;
  if (FillColor < 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(FillColor);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  else
  {
    NumberOfComponents = *(FillColor + 56);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v8 = *v5++;
    *a2++ = v8;
    --NumberOfComponents;
  }

  while (NumberOfComponents);
LABEL_11:
  if (FillColor < 1)
  {
    return 0;
  }

  return *(FillColor + 32);
}

void CGContextSetStrokePattern(CGContextRef c, CGPatternRef pattern, const CGFloat *components)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (!pattern || !components)
      {
        CGPostError("%s: pattern and components may not be NULL.");
        return;
      }

      StrokeColor = CGGStateGetStrokeColor(*(c + 12));
      if (StrokeColor)
      {
        v7 = StrokeColor;
        if ((StrokeColor & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(StrokeColor);
          if (ColorSpace)
          {
            goto LABEL_8;
          }
        }

        else
        {
          ColorSpace = *(StrokeColor + 24);
          if (ColorSpace)
          {
LABEL_8:
            if (CGColorSpaceGetType(ColorSpace) == 9)
            {
              if ((CGColorEqualToColorComponents(v7, ColorSpace, pattern, components) & 1) == 0)
              {
                v9 = CGColorCreateWithPattern(ColorSpace, pattern, components);
                CGContextSetStrokeColorWithColor(c, v9);
                if (v9)
                {

                  CFRelease(v9);
                }
              }
            }

            else
            {
              CGPostError("%s: pattern specified with non-pattern color space.");
            }

            return;
          }
        }
      }

      CGPostError("%s: no color space specified for stroke pattern.");
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextSetStrokePattern", v10);
}

uint64_t CGContextGetStrokePattern(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetStrokePattern", a1);
    return 0;
  }

  StrokeColor = CGGStateGetStrokeColor(*(a1 + 96));
  Components = CGColorGetComponents(StrokeColor);
  if (!StrokeColor)
  {
    return 0;
  }

  v5 = Components;
  if (StrokeColor < 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(StrokeColor);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  else
  {
    NumberOfComponents = *(StrokeColor + 56);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v8 = *v5++;
    *a2++ = v8;
    --NumberOfComponents;
  }

  while (NumberOfComponents);
LABEL_11:
  if (StrokeColor < 1)
  {
    return 0;
  }

  return *(StrokeColor + 32);
}

void CGContextSetGrayFillColor(CGContextRef c, CGFloat gray, CGFloat alpha)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v6[0] = gray;
      v6[1] = alpha;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      set_fill_color_with_components(c, DeviceGray, v6);
      CGColorSpaceRelease(DeviceGray);
      return;
    }

    v5 = c;
  }

  else
  {
    v5 = 0;
  }

  handle_invalid_context("CGContextSetGrayFillColor", v5);
}

void CGContextSetGrayStrokeColor(CGContextRef c, CGFloat gray, CGFloat alpha)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v6[0] = gray;
      v6[1] = alpha;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      set_stroke_color_with_components(c, DeviceGray, v6);
      CGColorSpaceRelease(DeviceGray);
      return;
    }

    v5 = c;
  }

  else
  {
    v5 = 0;
  }

  handle_invalid_context("CGContextSetGrayStrokeColor", v5);
}

void CGContextSetRGBStrokeColor(CGContextRef c, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8[0] = red;
      v8[1] = green;
      v8[2] = blue;
      v8[3] = alpha;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      set_stroke_color_with_components(c, DeviceRGB, v8);
      CGColorSpaceRelease(DeviceRGB);
      return;
    }

    v7 = c;
  }

  else
  {
    v7 = 0;
  }

  handle_invalid_context("CGContextSetRGBStrokeColor", v7);
}

void CGContextSetCMYKFillColor(CGContextRef c, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v9[0] = cyan;
      v9[1] = magenta;
      v9[2] = yellow;
      v9[3] = black;
      v9[4] = alpha;
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      set_fill_color_with_components(c, DeviceCMYK, v9);
      CGColorSpaceRelease(DeviceCMYK);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetCMYKFillColor", v8);
}

void CGContextSetCMYKStrokeColor(CGContextRef c, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v9[0] = cyan;
      v9[1] = magenta;
      v9[2] = yellow;
      v9[3] = black;
      v9[4] = alpha;
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      set_stroke_color_with_components(c, DeviceCMYK, v9);
      CGColorSpaceRelease(DeviceCMYK);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetCMYKStrokeColor", v8);
}

uint64_t CGContextGetFont(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 8);
  }

  handle_invalid_context("CGContextGetFont", a1);
  return 0;
}

double CGContextGetFontSize(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 16);
  }

  handle_invalid_context("CGContextGetFontSize", a1);
  return 0.0;
}

double CGContextGetCharacterSpacing(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 24);
  }

  handle_invalid_context("CGContextGetCharacterSpacing", a1);
  return 0.0;
}

void CGContextSetCharacterSpacing(CGContextRef c, CGFloat spacing)
{
  if (c && *(c + 4) == 1129601108)
  {
    v4 = *(c + 12);
    if (*(*(v4 + 136) + 24) != spacing)
    {
      maybe_copy_text_state(*(c + 12));
      *(*(v4 + 136) + 24) = spacing;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetCharacterSpacing", c);
  }
}

uint64_t CGContextGetTextDrawingMode(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 1);
  }

  handle_invalid_context("CGContextGetTextDrawingMode", a1);
  return 0;
}

double CGContextGetTextGreekingThreshold(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 32);
  }

  handle_invalid_context("CGContextGetTextGreekingThreshold", a1);
  return 0.0;
}

double CGContextSetTextGreekingThreshold(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v4 = *(a1 + 96);
    result = *(*(v4 + 136) + 32);
    if (result != a2)
    {
      maybe_copy_text_state(*(a1 + 96));
      *(*(v4 + 136) + 32) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetTextGreekingThreshold", a1);
  }

  return result;
}

uint64_t CGContextGetShouldAntialiasFonts(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 2) & 1;
  }

  handle_invalid_context("CGContextGetShouldAntialiasFonts", a1);
  return 1;
}

double CGContextSetShouldAntialiasFonts(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldAntialiasFonts(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldAntialiasFonts", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldAntialiasFonts", 0);
  }

  return result;
}

uint64_t CGContextGetShouldSmoothFonts(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 3) & 1;
  }

  handle_invalid_context("CGContextGetShouldSmoothFonts", a1);
  return 1;
}

uint64_t CGContextGetShouldSubpixelPositionFonts(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 4) & 1;
  }

  handle_invalid_context("CGContextGetShouldSubpixelPositionFonts", a1);
  return 1;
}

void CGContextSetShouldSubpixelPositionFonts(CGContextRef c, BOOL shouldSubpixelPositionFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSubpixelPositionFonts(*(c + 12), shouldSubpixelPositionFonts);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldSubpixelPositionFonts", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldSubpixelPositionFonts", 0);
  }
}

uint64_t CGContextGetShouldSubpixelQuantizeFonts(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 5) & 1;
  }

  handle_invalid_context("CGContextGetShouldSubpixelQuantizeFonts", a1);
  return 1;
}

void CGContextSetShouldSubpixelQuantizeFonts(CGContextRef c, BOOL shouldSubpixelQuantizeFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSubpixelQuantizeFonts(*(c + 12), shouldSubpixelQuantizeFonts);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldSubpixelQuantizeFonts", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldSubpixelQuantizeFonts", 0);
  }
}

uint64_t CGContextGetShouldUsePlatformNativeGlyphs(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 6) & 1;
  }

  handle_invalid_context("CGContextGetShouldUsePlatformNativeGlyphs", a1);
  return 1;
}

double CGContextSetShouldUsePlatformNativeGlyphs(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldUsePlatformNativeGlyphs(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldUsePlatformNativeGlyphs", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldUsePlatformNativeGlyphs", 0);
  }

  return result;
}

uint64_t CGContextGetShouldDrawBitmapRuns(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 7) & 1;
  }

  handle_invalid_context("CGContextGetShouldDrawBitmapRuns", a1);
  return 0;
}

uint64_t CGContextGetFontAntialiasingStyle(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 48);
  }

  handle_invalid_context("CGContextGetFontAntialiasingStyle", a1);
  return 0;
}

double CGContextSetFontAntialiasingStyle(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    HIDWORD(v4) = a2;
    LODWORD(v4) = a2;
    v3 = v4 >> 7;
    if (v3 <= 9 && ((1 << v3) & 0x30F) != 0)
    {
      v5 = *(a1 + 96);
      if (*(*(v5 + 136) + 48) != a2)
      {
        maybe_copy_text_state(*(a1 + 96));
        *(*(v5 + 136) + 48) = a2;
      }
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontAntialiasingStyle", a1);
  }

  return result;
}

uint64_t CGContextGetFontSmoothingStyle(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 52);
  }

  handle_invalid_context("CGContextGetFontSmoothingStyle", a1);
  return 48;
}

double CGContextSetFontSmoothingStyle(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    HIDWORD(v3) = a2 - 16;
    LODWORD(v3) = a2 - 16;
    if ((v3 >> 4) <= 6)
    {
      v4 = *(a1 + 96);
      if (*(*(v4 + 136) + 52) != a2)
      {
        maybe_copy_text_state(*(a1 + 96));
        *(*(v4 + 136) + 52) = a2;
      }
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontSmoothingStyle", a1);
  }

  return result;
}

double CGContextGetFontSmoothingContrast(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 40);
  }

  handle_invalid_context("CGContextGetFontSmoothingContrast", a1);
  return 1.0;
}

double CGContextSetFontSmoothingContrast(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v4 = *(a1 + 96);
    result = *(*(v4 + 136) + 40);
    if (result != a2)
    {
      maybe_copy_text_state(*(a1 + 96));
      *(*(v4 + 136) + 40) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontSmoothingContrast", a1);
  }

  return result;
}

uint64_t CGContextGetFontSmoothingBackgroundColor(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 64);
  }

  handle_invalid_context("CGContextGetFontSmoothingBackgroundColor", a1);
  return 0;
}

double CGContextSetFontSmoothingBackgroundColor(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetFontSmoothingBackgroundColor(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetFontSmoothingBackgroundColor", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFontSmoothingBackgroundColor", 0);
  }

  return result;
}

double CGContextGetDeviceClipBoundingBox(_DWORD *a1, __n128 a2)
{
  if (a1 && a1[4] == 1129601108)
  {
    return get_device_clip_bounding_box(a1, a2);
  }

  handle_invalid_context("CGContextGetDeviceClipBoundingBox", a1);
  return INFINITY;
}

double CGContextGetFlatness(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 8);
  }

  handle_invalid_context("CGContextGetFlatness", a1);
  return 0.0;
}

uint64_t CGContextGetFillOverprint(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 24);
  }

  handle_invalid_context("CGContextGetFillOverprint", a1);
  return 0;
}

uint64_t CGContextGetStrokeOverprint(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 25);
  }

  handle_invalid_context("CGContextGetStrokeOverprint", a1);
  return 0;
}

uint64_t CGContextGetOverprintMode(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 28);
  }

  handle_invalid_context("CGContextGetOverprintMode", a1);
  return 0;
}

uint64_t CGContextGetBlackGeneration(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 32);
  }

  handle_invalid_context("CGContextGetBlackGeneration", a1);
  return 0;
}

uint64_t CGContextGetUndercolorRemoval(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 40);
  }

  handle_invalid_context("CGContextGetUndercolorRemoval", a1);
  return 0;
}

uint64_t CGContextGetTransferFunctions(_DWORD *a1)
{
  if (!a1 || a1[4] != 1129601108)
  {
    handle_invalid_context("CGContextGetTransferFunctions", a1);
  }

  return 0;
}

double CGContextSetTransferFunctions(_DWORD *a1)
{
  if (!a1 || a1[4] != 1129601108)
  {
    handle_invalid_context("CGContextSetTransferFunctions", a1);
  }

  return result;
}

double CGContextGetSmoothness(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 16);
  }

  handle_invalid_context("CGContextGetSmoothness", a1);
  return 0.0;
}

uint64_t CGContextGetShouldAntialias(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 7) & 1;
  }

  handle_invalid_context("CGContextGetShouldAntialias", a1);
  return 1;
}

uint64_t CGContextGetBlendMode(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = (*(*(*(a1 + 96) + 120) + 4) << 16) >> 24;
    if (v1 <= 0x1B)
    {
      return CGContextGetBlendMode_mode[v1];
    }
  }

  else
  {
    handle_invalid_context("CGContextGetBlendMode", a1);
  }

  return 0;
}

uint64_t CGContextGetImageRenderingIntent(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(*(a1 + 96) + 120) + 4);
    if (((v1 >> 20) & 0xF) != 0)
    {
      v2 = v1 << 8;
    }

    else
    {
      v2 = v1 << 12;
    }

    return (v2 >> 28);
  }

  else
  {
    handle_invalid_context("CGContextGetImageRenderingIntent", a1);
    return 3;
  }
}

double CGContextGetLineWidthThreshold(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 24);
  }

  handle_invalid_context("CGContextGetLineWidthThreshold", a1);
  return 0.0;
}

double CGContextSetLineWidthThreshold(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v4 = *(a1 + 96);
    result = *(*(v4 + 128) + 24);
    if (result != a2)
    {
      maybe_copy_stroke_state(*(a1 + 96));
      *(*(v4 + 128) + 24) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetLineWidthThreshold", a1);
  }

  return result;
}

double CGContextGetAdjustedLineWidth(CGContext *c)
{
  if (c && *(c + 4) == 1129601108)
  {
    v1 = *(c + 12);
    CGContextGetUserSpaceToDeviceSpaceTransform(&v3, c);
    return CGGStateGetAdjustedLineWidth(v1, &v3.a);
  }

  else
  {
    handle_invalid_context("CGContextGetAdjustedLineWidth", c);
    return 0.0;
  }
}

double CGContextGetPatternPhase(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 24);
  }

  handle_invalid_context("CGContextGetPatternPhase", a1);
  return 0.0;
}

CGInterpolationQuality CGContextGetInterpolationQuality(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    return *(*(*(c + 12) + 120) + 4);
  }

  handle_invalid_context("CGContextGetInterpolationQuality", c);
  return 0;
}

uint64_t CGContextGetAlphaIsShape(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (*(*(*(a1 + 96) + 120) + 7) >> 1) & 1;
  }

  handle_invalid_context("CGContextGetAlphaIsShape", a1);
  return 0;
}

double CGContextSetFontDilation(uint64_t a1, double a2, double a3)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    CGGStateSetFontDilation(*(a1 + 96), a2, a3);
  }

  else
  {
    handle_invalid_context("CGContextSetFontDilation", a1);
  }

  return result;
}

double CGContextGetFontDilation(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 72);
  }

  handle_invalid_context("CGContextGetFontDilation", a1);
  return 0.0;
}

uint64_t CGContextGetFontSubpixelQuantizationLevel(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 88);
  }

  handle_invalid_context("CGContextGetFontSubpixelQuantizationLevel", a1);
  return 0;
}

double CGContextSetFontSubpixelQuantizationLevel(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    v10 = 0;

    goto LABEL_16;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;

LABEL_16:
    handle_invalid_context("CGContextSetFontSubpixelQuantizationLevel", v10);
    return result;
  }

  v3 = *(a1 + 96);
  v4 = HIDWORD(a2);
  v5 = a2 & ~(a2 >> 31);
  if (SHIDWORD(a2) >= 128)
  {
    LODWORD(v4) = 128;
  }

  if (v5 >= 128)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (*(*(v3 + 136) + 88) != (v6 | (v7 << 32)))
  {
    maybe_copy_text_state(v3);
    v9 = *(v3 + 136);
    *(v9 + 88) = v6;
    *(v9 + 92) = v7;
  }

  return result;
}

void PDFAnnotationSetRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t __CGPDFTextStringGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFTextStringGetTypeID_class);
  CGPDFTextStringGetTypeID_id = result;
  return result;
}

void *CGPDFTextStringFinalize(uint64_t a1)
{
  for (result = *(a1 + 24); result; result = *(a1 + 24))
  {
    *(a1 + 24) = *result;
    text_block_release(result);
  }

  return result;
}

void text_block_release(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

CFTypeRef CGPDFTextStringRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFTextStringRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFTextStringGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void *CGPDFTextStringGetCharacterAtIndex(uint64_t a1, unint64_t a2)
{
  result = find_block(a1, a2);
  if (result)
  {
    return WORD1(result[4 * (a2 - result[1]) + 14]);
  }

  return result;
}

void *find_block(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 40);
  if (result && result[1] <= a2 || (result = *(a1 + 24)) != 0)
  {
    while (result[2] + result[1] <= a2)
    {
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    *(a1 + 40) = result;
  }

  return result;
}

void *CGPDFTextStringGetGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  result = find_block(a1, a2);
  if (result)
  {
    return LOWORD(result[4 * (a2 - result[1]) + 14]);
  }

  return result;
}

CGFloat CGPDFTextStringGetPositionForIndex(uint64_t a1, unint64_t a2, void *a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    v6 = a2 - block[1];
    if (a3)
    {
      *a3 = block[4 * v6 + 13];
      a3[1] = 0;
    }

    v7 = &block[4 * v6 + 11];
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v7 = &CGPointZero;
  }

  return v7->x;
}

double CGPDFTextStringGetBBoxForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    v6 = block[3];
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  v7 = (v6 + 56);
  if (!v6)
  {
    v7 = &CGAffineTransformIdentity;
  }

  v8 = *&v7->c;
  *&v10.a = *&v7->a;
  *&v10.c = v8;
  *&v10.tx = *&v7->tx;
  v11.origin.x = CGPDFFontGetFontBBox(v6);
  *&result = CGRectApplyAffineTransform(v11, &v10);
  return result;
}

uint64_t CGPDFTextStringGetFontForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    return block[3];
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

__n128 CGPDFTextStringGetTransformForIndex@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    v8 = (block + 5);
  }

  else
  {
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }

    v8 = &CGAffineTransformIdentity;
  }

  v9 = *&v8->c;
  *a4 = *&v8->a;
  *(a4 + 16) = v9;
  result = *&v8->tx;
  *(a4 + 32) = result;
  return result;
}

uint64_t CGPDFTextStringGetColorForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    return block[4];
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

void *CGPDFTextStringAppendTextLayout(void *result, uint64_t a2, void **a3)
{
  if (result && a2 && a3)
  {
    v16[0] = a2;
    v16[1] = result;
    if (*(result + 16) == 1)
    {
      return CGPDFTextLayoutDrawGlyphs(a3, draw_glyphs, v16);
    }

    else
    {
      v4 = *a3;
      if (*a3)
      {
        v5 = 0;
        do
        {
          v6 = v4;
          v4 = *v4;
          *v6 = v5;
          v5 = v6;
        }

        while (v4);
        *a3 = v6;
        do
        {
          v7 = v6[1];
          v8 = *(v7 + 40);
          v9 = *(v7 + 128);
          v10 = *(v7 + 136);
          v11 = *(v7 + 8);
          if (*(v7 + 17) == 1)
          {
            v12 = *(v7 + 120);
            v13 = *(v7 + 80);
            v17 = *(v7 + 64);
            v18 = v13;
            v19 = *(v7 + 96);
            draw_text(v16, v8, &v17, v9, v10, v12, 0, v11);
          }

          else
          {
            v14 = *(v7 + 112);
            v15 = *(v7 + 80);
            v17 = *(v7 + 64);
            v18 = v15;
            v19 = *(v7 + 96);
            append_standard_text(v16, v8, &v17, 0, v9, v10, v14, v11);
          }

          v6 = *v6;
        }

        while (v6);
      }

      return text_layout_reset(a3);
    }
  }

  return result;
}

void draw_text(uint64_t a1, _DWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3[1];
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = a3[2];
  if (a6)
  {
    append_cid_text(a1, a2, v9, 0, a6, a4, a5, a8);
  }

  else
  {
    append_standard_text(a1, a2, v9, 0, a4, a5, a7, a8);
  }
}

uint64_t append_standard_text(uint64_t a1, _DWORD *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 8);
  result = text_block_create(a8);
  if (result)
  {
    v18 = result;
    v39 = 0;
    *(result + 8) = v16[6];
    *(result + 16) = a8;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v18 + 24) = a2;
    *(v18 + 32) = copy_color();
    v19 = *a1;
    if (*a1)
    {
      v19 = *&v19->a;
    }

    v38 = v16;
    if (!v19)
    {
      v19 = &CGAffineTransformIdentity;
    }

    v20 = *&v19->c;
    v21 = vmlaq_n_f64(vmulq_n_f64(v20, a3[3]), *&v19->a, a3[2]);
    v22 = vaddq_f64(*&v19->tx, vmlaq_n_f64(vmulq_n_f64(v20, a3[5]), *&v19->a, a3[4]));
    *(v18 + 40) = vmlaq_n_f64(vmulq_n_f64(v20, a3[1]), *&v19->a, *a3);
    *(v18 + 56) = v21;
    *(v18 + 72) = v22;
    result = CGPDFFontGetEncoding(a2);
    if (a8)
    {
      v23 = result;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        result = CGPDFEncodingGetUnicodesForIndex(v23, *(a7 + v25), &v39);
        if (v39)
        {
          break;
        }

        v29 = 0;
LABEL_23:
        v34 = v18 + 88 + 32 * v24;
        *(v34 + 26) = v29;
        if (a4)
        {
          v35 = *(a4 + 2 * v25);
        }

        else
        {
          v35 = 0;
        }

        *(v34 + 24) = v35;
        *v34 = *(a5 + 16 * v25);
        *(v34 + 16) = *(a6 + 8 * v25);
        ++v24;
        if (++v25 == a8)
        {
          goto LABEL_27;
        }
      }

      v26 = result;
      v27 = v39 - 1;
      if (v39 == 1)
      {
LABEL_22:
        v29 = *v26;
        goto LABEL_23;
      }

      v28 = v27 + *(v18 + 16);
      *(v18 + 16) = v28;
      if (v28 <= 0x7FFFFFFFFFFFFFDLL)
      {
        result = malloc_type_realloc(v18, 32 * v28 + 88, 0x10200401B0FFA56uLL);
        v18 = result;
        v27 = v39 - 1;
        if (v39 == 1)
        {
LABEL_21:
          v26 += v27;
          goto LABEL_22;
        }
      }

      else
      {
        v18 = 0;
      }

      v30 = 0;
      v31 = 32 * v24;
      v24 += v27;
      do
      {
        v32 = v18 + v31;
        *(v18 + v31 + 114) = v26[v30];
        if (a4)
        {
          v33 = *(a4 + 2 * v25);
        }

        else
        {
          v33 = 0;
        }

        *(v32 + 112) = v33;
        *(v32 + 88) = *(a5 + 16 * v25);
        *(v32 + 104) = 0;
        ++v30;
        v31 += 32;
      }

      while (v27 != v30);
      goto LABEL_21;
    }

LABEL_27:
    v36 = v38 + 4;
    if (v38[3])
    {
      v37 = *v36;
    }

    else
    {
      v37 = v38 + 4;
      v36 = v38 + 3;
    }

    *v37 = v18;
    *v36 = v18;
    v38[6] += *(v18 + 16);
  }

  return result;
}

void append_cid_text(uint64_t a1, void *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 8);
  v16 = text_block_create(a8);
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v16[1] = *(v15 + 48);
  v16[2] = a8;
  if (a2)
  {
    CFRetain(a2);
  }

  v17[3] = a2;
  v17[4] = copy_color();
  v18 = *a1;
  if (*a1)
  {
    v18 = *&v18->a;
  }

  if (!v18)
  {
    v18 = &CGAffineTransformIdentity;
  }

  v19 = *&v18->c;
  v20 = vmlaq_n_f64(vmulq_n_f64(v19, a3[3]), *&v18->a, a3[2]);
  v21 = vaddq_f64(*&v18->tx, vmlaq_n_f64(vmulq_n_f64(v19, a3[5]), *&v18->a, a3[4]));
  *(v17 + 5) = vmlaq_n_f64(vmulq_n_f64(v19, a3[1]), *&v18->a, *a3);
  *(v17 + 7) = v20;
  *(v17 + 9) = v21;
  ROSUnicodeCMap = CGPDFFontGetToUnicodeCMap(a2);
  if (ROSUnicodeCMap)
  {
    v22 = v47;
    goto LABEL_11;
  }

  v22 = v47;
  ROSUnicodeCMap = CGPDFFontGetROSUnicodeCMap(a2);
  if (ROSUnicodeCMap)
  {
LABEL_11:
    v23 = *(*(ROSUnicodeCMap + 16) + 48);
    if (v23)
    {
      v23 = *(v23 + 16);
      if (v23)
      {
        v23 = *(v23 + 40);
      }
    }

    if (v23 <= 2)
    {
      v23 = 2;
    }

    v24 = MEMORY[0x1EEE9AC00](2 * v23);
    v46 = &v44 - v26;
    if (v25 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v27 = &v44 - v26;
    }

    else
    {
      v27 = 0;
    }

    if (v25 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000022)
    {
      v27 = malloc_type_malloc(v24, 0xC389D79uLL);
    }

    if (v27)
    {
      v44 = &v44;
      v45 = v15;
      if (a8)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          v30 = *(*(ROSUnicodeCMap + 16) + 48);
          if (!v30 || (unichars = cmap_bf_set_get_unichars(*(v30 + 16), *(v22 + 2 * v29), v27)) == 0)
          {
            unichars = CGPDFGetUnicharGuessForCID(*(v22 + 2 * v29), v27);
          }

          if (unichars)
          {
            if (unichars == 1)
            {
              v32 = v27;
            }

            else
            {
              v33 = v17[2] + unichars - 1;
              v17[2] = v33;
              if (v33 <= 0x7FFFFFFFFFFFFFDLL)
              {
                v17 = malloc_type_realloc(v17, 32 * v33 + 88, 0x10200401B0FFA56uLL);
              }

              else
              {
                v17 = 0;
              }

              v34 = &v17[4 * v28 + 14] + 1;
              v28 = unichars + v28 - 1;
              v35 = v27;
              v36 = unichars - 1;
              do
              {
                v37 = *v35;
                v35 += 2;
                *v34 = v37;
                if (a4)
                {
                  v38 = *(a4 + 2 * v29);
                }

                else
                {
                  v38 = 0;
                }

                *(v34 - 1) = v38;
                *(v34 - 13) = *(a6 + 16 * v29);
                *(v34 - 5) = 0;
                v34 += 16;
                --v36;
              }

              while (v36);
              v32 = &v27[2 * unichars - 2];
              v22 = v47;
            }

            LOWORD(unichars) = *v32;
          }

          v39 = &v17[4 * v28 + 11];
          *(v39 + 26) = unichars;
          if (a4)
          {
            v40 = *(a4 + 2 * v29);
          }

          else
          {
            v40 = 0;
          }

          *(v39 + 24) = v40;
          *v39 = *(a6 + 16 * v29);
          *(v39 + 16) = *(a7 + 8 * v29);
          ++v28;
          ++v29;
        }

        while (v29 != a8);
      }

      if (v27 != v46)
      {
        free(v27);
      }

      v41 = v45;
      v42 = (v45 + 32);
      if (*(v45 + 24))
      {
        v43 = *v42;
      }

      else
      {
        v43 = (v45 + 32);
        v42 = (v45 + 24);
      }

      *v43 = v17;
      *v42 = v17;
      *(v41 + 48) += v17[2];
    }

    else
    {
      text_block_release(v17);
    }

    return;
  }

  text_block_release(v17);
}

void *text_block_create(uint64_t a1)
{
  v1 = malloc_type_calloc(1uLL, 32 * a1 + 88, 0x10200401B0FFA56uLL);
  __CFSetLastAllocationEventName();
  if (v1)
  {
    *v1 = 0;
  }

  return v1;
}

const void *copy_color()
{
  v0 = copy_color_color;
  if (copy_color_color || (DeviceRGB = CGColorSpaceCreateDeviceRGB(), copy_color_color = CGColorCreate(DeviceRGB, copy_color_components), CGColorSpaceRelease(DeviceRGB), (v0 = copy_color_color) != 0))
  {
    CFRetain(v0);
  }

  return v0;
}

void draw_glyphs(uint64_t a1, _DWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3[1];
  v10[0] = *a3;
  v10[1] = v9;
  v10[2] = a3[2];
  if (a7)
  {
    append_cid_text(a1, a2, v10, a6, a7, a4, a5, a9);
  }

  else
  {
    append_standard_text(a1, a2, v10, a6, a4, a5, a8, a9);
  }
}

void std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void StructureElement::~StructureElement(StructureElement *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        StructureElement::~StructureElement(*v2);
        MEMORY[0x1865EE610]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 11);
  }

  *(this + 12) = v2;
  v4 = *(this + 14);
  v5 = *(this + 15);
  if (v4 != v5)
  {
    do
    {
      v6 = *v4++;
      CGPDFNodeRelease(v6);
    }

    while (v4 != v5);
    v4 = *(this + 14);
  }

  *(this + 15) = v4;
  v7 = *(this + 20);
  v8 = *(this + 21);
  if (v7 != v8)
  {
    do
    {
      CFRelease(*v7++);
    }

    while (v7 != v8);
    v7 = *(this + 20);
  }

  *(this + 21) = v7;
  v9 = *(this + 17);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 19);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 23);
  if (v12)
  {
    v13 = *(this + 24);
    v14 = *(this + 23);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        v13 -= 8;
        std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v15);
      }

      while (v13 != v12);
      v14 = *(this + 23);
    }

    *(this + 24) = v12;
    operator delete(v14);
  }

  v16 = *(this + 20);
  if (v16)
  {
    *(this + 21) = v16;
    operator delete(v16);
  }

  v17 = *(this + 14);
  if (v17)
  {
    *(this + 15) = v17;
    operator delete(v17);
  }

  v18 = *(this + 11);
  if (v18)
  {
    *(this + 12) = v18;
    operator delete(v18);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void TaggedParser::AddPage(TaggedParser *this, CGPDFPage *a2)
{
  if (a2)
  {
    v4 = *(*(a2 + 5) + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 - 1;
  v6 = *this;
  if (*(*this + 256) <= (v4 - 1))
  {
    goto LABEL_103;
  }

  v7 = *(v6 + 248);
  v8 = *(v7 + 8 * (v5 >> 6));
  if ((v8 & (1 << v5)) == 0)
  {
    *(v7 + 8 * (v5 >> 6)) = v8 | (1 << v5);
    if (*v6)
    {
      v9 = CGPDFContentStreamCreate(*(a2 + 5));
      v10 = CGPDFOperatorTableCreate();
      if (v10)
      {
        v11 = &off_1EF2377B8;
        v12 = 528;
        do
        {
          CGPDFOperatorTableSetCallback(v10, *(v11 - 1), *v11);
          v11 += 2;
          v12 -= 16;
        }

        while (v12);
      }

      *&info = a2;
      v77 = v10;
      v78 = this;
      v79 = 0;
      BoxRect = CGPDFPageGetBoxRect(a2, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      *(&info + 1) = *&BoxRect.origin.x;
      *&v75 = BoxRect.origin.y;
      *(&v75 + 1) = *&BoxRect.size.width;
      v76 = BoxRect.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(a2);
      if (RotationAngle == 270 || RotationAngle == 90)
      {
        *(&v75 + 1) = height;
        v76 = width;
        v19 = width;
      }

      else
      {
        v19 = height;
        height = width;
      }

      v82 = *&x;
      v83 = *&y;
      v84 = height;
      v85 = v19;
      CGDisplayList = CG::DisplayList::createCGDisplayList(0, &v82, v18);
      cf = CGDisplayListContextCreate(CGDisplayList);
      v20 = CGPDFScannerCreate(v9, v10, &info);
      CGPDFScannerScan(v20);
      if (v20)
      {
        CFRelease(v20);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (CGDisplayList)
      {
        CFRelease(CGDisplayList);
      }

      v6 = *this;
    }

    std::mutex::lock((v6 + 32));
    v21 = *this;
    v22 = **this;
    v23 = *(*this + 24);
    if (v22)
    {
      if (v23)
      {
        v25 = v21 + 200;
        v24 = *(v21 + 200);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 8) - v24) >> 3);
        if (v26 <= v5)
        {
          goto LABEL_103;
        }

        v27 = (v24 + 24 * v5);
        v82 = 0;
        v83 = 0;
        v84 = 0.0;
        v28 = *v27;
        v29 = v27[1];
        *&info = &v82;
        BYTE8(info) = 0;
        if (v29 != v28)
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3);
          if (v30 < 0xAAAAAAAAAAAAAABLL)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(v30);
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (v26 <= v5)
        {
          goto LABEL_103;
        }

        v31 = (v24 + 24 * v5);
        v33 = *v31;
        v32 = v31[1];
        if (v32 != *v31)
        {
          do
          {
            v34 = v32 - 24;
            std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(*(v32 - 8));
            v32 = v34;
          }

          while (v34 != v33);
        }

        v31[1] = v33;
        v35 = v82;
        v36 = v83;
        if (v82 != v83)
        {
          while (1)
          {
            info = 0u;
            v75 = 0u;
            LODWORD(v76) = 1065353216;
            v87 = 0;
            value[0] = 0;
            v86 = 0;
            v73[0] = value;
            v73[1] = &v87;
            v73[2] = &v86;
            std::__memberwise_copy_assign[abi:fe200100]<std::tuple<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *> &>,std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0ul,1ul,2ul>(v73, v35);
            v37 = *(value[0] + 11);
            if (v87 >= (*(value[0] + 12) - v37) >> 3)
            {
              break;
            }

            if (!*(v37 + 8 * v87))
            {
              TaggedParser::BuildStructureElementFromDictionary(this, value[0], v86, v4, &info, v87);
            }

            if (v86)
            {
              CFRelease(v86);
            }

            std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(&info);
            v35 = (v35 + 24);
            if (v35 == v36)
            {
              goto LABEL_41;
            }
          }

LABEL_103:
          __break(1u);
          __assert_rtn("CreateStructureRoot", "TaggedParser.mm", 1537, "pageIndex < pageCount");
        }

LABEL_41:
        v38 = *(*this + 200);
        if (0xAAAAAAAAAAAAAAABLL * ((*(*this + 208) - v38) >> 3) <= v5)
        {
          goto LABEL_103;
        }

        if (*(v38 + 24 * v5 + 8) != *(v38 + 24 * v5))
        {
          __assert_rtn("AddPage", "TaggedParser.mm", 828, "_private->objectsToSearch[pageIndex].size() == 0");
        }

        *&info = &v82;
        std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__destroy_vector::operator()[abi:fe200100](&info);
      }

      else
      {
        v73[0] = v4;
        if (TaggedParser::ValidatePageNumber(this, v22, v73))
        {
          value[0] = 0;
          if (CGPDFDictionaryGetDictionary(v22, "RoleMap", value))
          {
            CGPDFDictionaryApplyFunction(value[0], RoleMapCallback, (*this + 152));
          }

          operator new();
        }

        *(*this + 24) = 0;
      }

      v39 = CGPDFPageCopyPageLayoutWithCTLD(a2, 1);
      v40 = v39;
      v82 = v39;
      if (a2)
      {
        v41 = *(*(a2 + 5) + 8);
      }

      else
      {
        v41 = 0;
      }

      v42 = *(*this + 128);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*this + 136) - v42) >> 3) <= v41 - 1)
      {
        goto LABEL_103;
      }

      *&info = v42 + 24 * (v41 - 1);
      *(&info + 1) = v41;
      *&v75 = v39 + 2;
      *(&v75 + 1) = a2;
      v43 = v39[40];
      v44 = v39[41];
      if (v43 != v44 && (v44 - v43) <= v39[17] - v39[16])
      {
        v45 = v39[10];
        if (v39[11] == v45)
        {
          v47 = 0;
          v46 = -1;
        }

        else
        {
          v46 = *(*v45 + 8) + **v45;
          v47 = 1;
        }

        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = *v43;
        while (1)
        {
          v53 = v40[13];
          if (v48 >= (v40[14] - v53) >> 1)
          {
            break;
          }

          v54 = *&v43[8 * v51];
          v55 = *(v53 + 2 * v48);
          if (v55 == 32 || v52 != v54 || v51 == v46)
          {
            if (v50 >= 1)
            {
              TaggedParser::addWords(CGPDFPage *)::$_0::operator()(&info, v52, v49, v50);
            }

            v50 = v55 != 32;
            if (v55 == 32)
            {
              v49 = v51 + 1;
            }

            else
            {
              v49 = v51;
            }

            if (v51 == v46)
            {
              v58 = v40[10];
              if (v47 >= (v40[11] - v58) >> 4)
              {
                v46 = -1;
              }

              else
              {
                v46 = *(*(v58 + 16 * v47) + 8) + **(v58 + 16 * v47);
                ++v47;
              }
            }
          }

          else
          {
            ++v50;
          }

          v59 = v40[16];
          if (v51 >= (v40[17] - v59) >> 3)
          {
            goto LABEL_103;
          }

          v48 += *(v59 + 8 * v51++);
          v43 = v40[40];
          v52 = v54;
          if (v51 >= (v40[41] - v43) >> 3)
          {
            goto LABEL_83;
          }
        }

        LODWORD(v54) = v52;
LABEL_83:
        if (v50 >= 1)
        {
          TaggedParser::addWords(CGPDFPage *)::$_0::operator()(&info, v54, v49, v50);
        }
      }

      CFRelease(v40);
      if (!a2)
      {
        goto LABEL_103;
      }

      v60 = *(*(a2 + 5) + 8) - 1;
      v61 = *this;
      v62 = *(*this + 224);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(*this + 232) - v62) >> 3) <= v60)
      {
        goto LABEL_103;
      }

      v64 = v61 + 128;
      v63 = *(v61 + 128);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v64 + 8) - v63) >> 3) <= v60)
      {
        goto LABEL_103;
      }

      v65 = *(v62 + 40 * v60 + 16);
      if (v65)
      {
        v66 = (v63 + 24 * v60 + 8);
        do
        {
          v67 = *v66;
          if (*v66)
          {
            v68 = v65[2];
            v69 = v66;
            do
            {
              if (v67[4] >= v68)
              {
                v69 = v67;
              }

              v67 = v67[v67[4] < v68];
            }

            while (v67);
            if (v69 != v66 && v68 >= v69[4])
            {
              v70 = v69[5];
              v71 = *(v65 + 3);
              v72 = *(v65 + 5);
              *(v70 + 240) = *(v65 + 56);
              *(v70 + 208) = v71;
              *(v70 + 224) = v72;
            }
          }

          v65 = *v65;
        }

        while (v65);
      }
    }

    else if (!v23)
    {
      operator new();
    }

    std::mutex::unlock((v6 + 32));
  }
}

void sub_1841C03EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(va);
  std::mutex::unlock((v13 + 32));
  _Unwind_Resume(a1);
}

void std::__memberwise_copy_assign[abi:fe200100]<std::tuple<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *> &>,std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0ul,1ul,2ul>(uint64_t a1, void *a2)
{
  v2 = a2[1];
  **a1 = *a2;
  v3 = *(a1 + 16);
  **(a1 + 8) = v2;
  v4 = *v3;
  v5 = a2[2];
  *v3 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

const void **applesauce::CF::ObjectRef<CGPDFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TaggedParser::addWords(CGPDFPage *)::$_0::operator()(void *a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v8 = a2 | (a1[1] << 32);
    v9 = *a1 + 8;
    do
    {
      if (*(v4 + 32) >= v8)
      {
        v9 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v8));
    }

    while (v4);
    if (v9 != *a1 + 8 && v8 >= *(v9 + 32))
    {
      v10 = *(v9 + 40);
      v11 = CGPDFTaggedNodeCreate(a1[3]);
      v12 = v11;
      v14 = v10[24];
      v13 = v10[25];
      if (v14 >= v13)
      {
        v20 = v10[23];
        v21 = (v14 - v20) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v23 = v13 - v20;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v30 = v10 + 23;
        if (v24)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v24);
        }

        v26 = 0;
        v27 = (8 * v21);
        *v27 = v12;
        v28 = 8 * v21 + 8;
        v29 = 0;
        std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::__swap_out_circular_buffer((v10 + 23), &v26);
        v25 = v10[24];
        std::__split_buffer<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::~__split_buffer(&v26);
        v10[24] = v25;
        v12 = *(v25 - 8);
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *v14 = v11;
        v10[24] = v14 + 1;
        if (v11)
        {
LABEL_10:
          *(v12 + 104) = 0;
          *(v12 + 16) = 1;
          v15 = a1[2];
          *(v12 + 176) = a1[1];
          PageLayout::GetBoundsForRangeWithinLine(v15, a3, a4, 0, 0);
          *(v12 + 40) = 1;
          *(v12 + 48) = v16;
          *(v12 + 56) = v17;
          *(v12 + 64) = v18;
          *(v12 + 72) = v19;
          *(v12 + 184) = 1;
          *(v12 + 192) = a3;
          *(v12 + 200) = a4;
          *(v12 + 208) = 0;
          return;
        }
      }

      PageLayout::GetBoundsForRangeWithinLine(a1[2], a3, a4, 0, 0);
    }
  }
}

void std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TaggedParser::BuildStructureElement(TaggedParser *a1, StructureElement *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v56 = a4;
  v57 = a2;
  v9 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a5[1];
  if (!*&v12)
  {
    goto LABEL_33;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(*a5 + 8 * v14);
  if (v15)
  {
    for (i = *v15; i; i = *i)
    {
      v17 = i[1];
      if (v17 == v11)
      {
        if (i[2] == a3)
        {
          v32 = *a1;
          if (*(*a1 + 96) == 1)
          {
            printf("Hit tagged parsing error: %s\n", "Cycles detected in marked structure element graph");
            v32 = *a1;
          }

          *(v32 + 97) = 1;
          return;
        }
      }

      else
      {
        if (v13.u32[0] > 1uLL)
        {
          if (v17 >= *&v12)
          {
            v17 %= *&v12;
          }
        }

        else
        {
          v17 &= *&v12 - 1;
        }

        if (v17 != v14)
        {
          break;
        }
      }
    }
  }

  if (v13.u32[0] > 1uLL)
  {
    v18 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v18 = v11 % *&v12;
    }
  }

  else
  {
    v18 = v11 & (*&v12 - 1);
  }

  v19 = *(*a5 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v21 >= *&v12)
      {
        v21 %= *&v12;
      }
    }

    else
    {
      v21 &= *&v12 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_33;
    }

LABEL_32:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_33;
    }
  }

  if (v20[2] != a3)
  {
    goto LABEL_32;
  }

  if (!a3)
  {
    goto LABEL_48;
  }

  v22 = a4 - 1;
  v23 = *(a3 + 8);
  if (v23 > 7)
  {
    if (v23 == 8)
    {
      v31 = *(a3 + 32);
      value = 0;
      if (CGPDFDictionaryGetName(v31, "Type", &value) && !strcmp(value, "OBJR"))
      {
        v55 = a4;
        TaggedParser::ValidatePageNumber(a1, v31, &v55);
        cf = 0;
        if (CGPDFDictionaryGetDictionary(v31, "Obj", &cf))
        {
          TaggedParser::BuildObjectElement(a2, v55, cf, v46);
        }

        return;
      }

      if (TaggedParser::ValidatePageNumber(a1, v31, &v56))
      {
        TaggedParser::BuildStructureElementFromDictionary(a1, a2, v31, v56, a5, 0xFFFFFFFF);
        return;
      }

      v33 = (*(a2 + 12) - *(a2 + 11)) >> 3;
      cf = 0;
      v55 = v33;
      std::vector<CGPDFObject *>::push_back[abi:fe200100](a2 + 88, &cf);
      v34 = v56 - 1;
      v35 = *a1;
      v36 = *(*a1 + 200);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v35 + 208) - v36) >> 3) > v56 - 1)
      {
        if (v31)
        {
          CFRetain(v31);
        }

        v37 = (v36 + 24 * v34);
        cf = v31;
        v38 = v37[1];
        if (v38 >= v37[2])
        {
          v44 = std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__emplace_back_slow_path<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *>>(v37, &v57, &v55, &cf);
          v45 = cf;
          v37[1] = v44;
          if (v45)
          {
            CFRelease(v45);
          }
        }

        else
        {
          *v38 = a2;
          v38[1] = v33;
          v38[2] = v31;
          v37[1] = v38 + 3;
        }

        return;
      }

LABEL_100:
      __break(1u);
      return;
    }

    if (v23 != 12)
    {
      goto LABEL_48;
    }

LABEL_45:
    v27 = *(*a1 + 128);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 136) - v27) >> 3) > v22)
    {
      v28 = (*(a3 + 32) | (a4 << 32));
      v55 = v28;
      value = &v55;
      std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>((v27 + 24 * v22), v28, &value)[5] = a2;
      *(a2 + 7) = v28;
      return;
    }

    goto LABEL_100;
  }

  if (v23 == 3)
  {
    goto LABEL_45;
  }

  if (v23 == 7)
  {
    v24 = *(a3 + 32);
    if (!v24)
    {
      return;
    }

    v25 = (*(v24 + 3) - *(v24 + 2)) >> 3;
    if (!v25)
    {
      return;
    }

    v26 = v25 - 1;
    if (v25 == 1)
    {
      value = 0;
      if (CGPDFArrayGetObject(v24, 0, &value))
      {
        TaggedParser::BuildStructureElement(a1, a2, value, a4, a5);
      }

      return;
    }

    v39 = 0;
    while (1)
    {
      value = 0;
      if (!CGPDFArrayGetObject(v24, v39, &value) || !value)
      {
        break;
      }

      v40 = *(value + 2);
      if (v39)
      {
        v41 = 8;
      }

      else
      {
        v41 = 3;
      }

      v42 = v40 == v41;
      if (v40 == 12)
      {
        v43 = v39 == 0;
      }

      else
      {
        v43 = v42;
      }

      if (++v39 >= v25 || !v43)
      {
        goto LABEL_82;
      }
    }

    v43 = 0;
LABEL_82:
    v47 = 0;
    while (2)
    {
      v55 = 0;
      if (CGPDFArrayGetObject(v24, v47, &v55))
      {
        if (!v55)
        {
          goto LABEL_98;
        }

        v48 = *(v55 + 2);
        switch(v48)
        {
          case 12:
            goto LABEL_88;
          case 8:
            TaggedParser::BuildStructureElement(a1, a2, v55, a4, a5);
            if ((v52 & 1) == 0)
            {
              return;
            }

            break;
          case 3:
LABEL_88:
            v49 = *(v55 + 4);
            if (!v43)
            {
              TaggedParser::CreateStructureElement(a1, a2, a4, v49);
            }

            v50 = *(*a1 + 128);
            if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 136) - v50) >> 3) <= v22)
            {
              goto LABEL_100;
            }

            v51 = (v49 | (a4 << 32));
            cf = v51;
            value = &cf;
            std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>((v50 + 24 * v22), v51, &value)[5] = a2;
            *(a2 + 7) = v51;
            break;
          default:
LABEL_98:
            v29 = *a1;
            if (*(*a1 + 96) == 1)
            {
              v30 = "Found a non-integer and non-dictionary object in /K array";
LABEL_50:
              printf("Hit tagged parsing error: %s\n", v30);
              v29 = *a1;
            }

            goto LABEL_51;
        }
      }

      if (*(*a1 + 97))
      {
        return;
      }

      if (v26 == v47++)
      {
        return;
      }

      continue;
    }
  }

LABEL_48:
  v29 = *a1;
  if (*(*a1 + 96) == 1)
  {
    v30 = "Malformed marked content structure";
    goto LABEL_50;
  }

LABEL_51:
  *(v29 + 97) = 1;
}

void sub_1841C1924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<CGPDFDictionary *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

BOOL TaggedParser::ValidatePageNumber(TaggedParser *this, CGPDFDictionary *a2, unint64_t *a3)
{
  v11 = "Pg";
  if (!a2)
  {
    return 1;
  }

  v5 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(a2 + 6, &v11);
  if (!v5)
  {
    return 1;
  }

  v6 = v5[3];
  if (!v6)
  {
    return 1;
  }

  if (*(v6 + 8) != 10)
  {
    return 1;
  }

  PageNumberForPageReference = CGPDFDocumentGetPageNumberForPageReference(*(*this + 16), *(v6 + 16), *(v6 + 24));
  if (PageNumberForPageReference == -1)
  {
    return 1;
  }

  v8 = *a3;
  *a3 = PageNumberForPageReference;
  v9 = v8 - PageNumberForPageReference;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return v9 < 2;
}

void TaggedParser::BuildObjectElement(TaggedParser *this, StructureElement *a2, CGPDFDictionaryRef dict, CGPDFDictionary *a4)
{
  if (this)
  {
    if (dict)
    {
      value = 0;
      if (CGPDFDictionaryGetName(dict, "Type", &value))
      {
        if (value)
        {
          if (!strcmp(value, "Annot"))
          {
            memset(v10, 0, sizeof(v10));
            if (CGPDFDictionaryGetRect(dict, "Rect", v10))
            {
              __s1 = 0;
              if (CGPDFDictionaryGetName(dict, "Subtype", &__s1))
              {
                if (__s1)
                {
                  v7 = CGPDFAnnotationCreateWithCGPDFDictionary(dict);
                  if (v7)
                  {
                    TaggedParser::CreateStructureElement(this, a2, v7, v8);
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

void *std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__emplace_back_slow_path<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *>>(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v5) >> 3) > v8)
  {
    v8 = 0x5555555555555556 * ((a1[2] - v5) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v5) >> 3) >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(v10);
  }

  v11 = (8 * (v6 >> 3));
  v12 = *a3;
  *v11 = *a2;
  v11[1] = v12;
  v11[2] = *a4;
  *a4 = 0;
  v13 = v11 - v6;
  if (v5 != v4)
  {
    v14 = v5;
    v15 = v13;
    do
    {
      *v15 = *v14;
      *(v15 + 2) = v14[2];
      v14[2] = 0;
      v14 += 3;
      v15 += 24;
    }

    while (v14 != v4);
    do
    {
      std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(v5[2]);
      v5 += 3;
    }

    while (v5 != v4);
  }

  v16 = *a1;
  *a1 = v13;
  *(a1 + 1) = 24 * v7 + 24;
  if (v16)
  {
    operator delete(v16);
  }

  return (24 * v7 + 24);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<__CFDictionary const*>::emplace_back<__CFDictionary const* const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void TaggedParser::AddIntAttributeFromSourceDictionary(TaggedParser *a1, CGPDFDictionaryRef dict, __CFString *a3)
{
  value = 0;
  CGPDFDictionaryGetDictionary(dict, "A", &value);
  if (value)
  {
    v6 = -2;
    CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
    if (!*(a1 + 17))
    {
      *(a1 + 17) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (CStringPtr)
    {
      if (CGPDFDictionaryGetInteger(value, CStringPtr, &v6))
      {
        TaggedParser::InsertNewAttribute(a1, a3, v6);
      }
    }
  }
}

float64x2_t TaggedParser::SetBoundaryBoxFromSourceDictionary(uint64_t a1, CGPDFDictionaryRef dict)
{
  v15 = *MEMORY[0x1E69E9840];
  value = 0;
  CGPDFDictionaryGetDictionary(dict, "A", &value);
  if (value)
  {
    array = 0;
    CStringPtr = CFStringGetCStringPtr(@"BBox", 0x600u);
    if (!*(a1 + 136))
    {
      *(a1 + 136) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (CStringPtr && CGPDFDictionaryGetArray(value, CStringPtr, &array))
    {
      if (array)
      {
        v6 = *(array + 2);
        v7 = *(array + 3);
        v11 = -2.0;
        v8 = v7 - v6;
        if (v8)
        {
          v9 = 0;
          v10 = v8 >> 3;
          do
          {
            CGPDFArrayGetNumber(array, v9, &v11);
            *(v14 + v9++) = v11;
          }

          while (v10 != v9);
          v5 = v14[0];
          result = v14[1];
        }
      }

      result = vsubq_f64(result, v5);
      *(a1 + 248) = v5;
      *(a1 + 264) = result;
    }
  }

  return result;
}

void TaggedParser::LoadTextProperty(uint64_t a1, CGPDFDictionary *a2, CFStringRef theString)
{
  value = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  if (CStringPtr && CGPDFDictionaryGetString(a2, CStringPtr, &value))
  {
    if (!*(a1 + 144))
    {
      *(a1 + 144) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v7 = CGPDFStringCopyTextString(value);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(*(a1 + 144), theString, v7);
      CFRelease(v8);
    }
  }
}

void TaggedParser::InsertNewAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = *MEMORY[0x1E695E480];
  if (!*(a1 + 136))
  {
    *(a1 + 136) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(*(a1 + 136), a2, v6);
  CFRelease(v6);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1841C2EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a9)
    {
      MEMORY[0x1865EE610](v9, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
      _Unwind_Resume(a1);
    }
  }
}

void RoleMapCallback(char *__s, CGPDFObject *a2, uint64_t **a3)
{
  if (a2 && *(a2 + 2) == 5)
  {
    v4 = *(a2 + 4);
    std::string::basic_string[abi:fe200100]<0>(__p, __s);
    if (!std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(a3[1], __p))
    {
      std::string::basic_string[abi:fe200100]<0>(&v6, v4);
      v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a3, &v10, __p);
      if (!v5)
      {
        operator new();
      }

      if (*(v5 + 79) < 0)
      {
        operator delete(*(v5 + 56));
      }

      *(v5 + 56) = v6;
      *(v5 + 72) = v7;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1841C3158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void TaggedParser::BeginMarkedContentSequence(TaggedParser *this, CGPDFPage *a2, CGPDFDictionaryRef dict, CGPDFDictionary *a4)
{
  if (!a2)
  {
    puts("Critical error: null page");
  }

  if ((*(*this + 97) & 1) == 0)
  {
    value = 0;
    v7 = CGPDFDictionaryGetName(dict, "Type", &value) && strcmp(value, "OCMD") == 0;
    v28 = -1;
    Integer = CGPDFDictionaryGetInteger(dict, "MCID", &v28);
    v9 = v28 >= 0 && Integer;
    if (a2 && (v10 = *(*(a2 + 5) + 8), v11 = *(*this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(*this + 112) - v11) >> 3) > v10 - 1))
    {
      v12 = (v11 + 24 * (v10 - 1));
      if (v9)
      {
        v13 = v28 | (v10 << 32);
        v14 = v12[1];
        v15 = 1;
      }

      else
      {
        if (v7)
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        v14 = v12[1];
        if (v14 == *v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = *(v14 - 1);
        }
      }

      v16 = v12[2];
      if (v14 < v16)
      {
        *v14 = v15;
        *(v14 + 1) = v13;
        v17 = (v14 + 16);
LABEL_33:
        v12[1] = v17;
        if (*(*this + 96) == 1)
        {
          v25 = (v17 - *v12) >> 4;
          if (v25 >= 2)
          {
            v26 = v25 - 1;
            do
            {
              printf("    ");
              --v26;
            }

            while (v26);
          }

          v27 = "marked";
          if (v7)
          {
            v27 = "optional";
          }

          printf("Pushed %s content sequence.", v27);
          if (v9)
          {
            printf(" Page number %d, MCID: %d.");
          }

          else if (v7)
          {
            printf(" Optional content.");
          }

          printf(" Current depth: %d.\n", v25);
        }

        return;
      }

      v18 = *v12;
      v19 = v14 - *v12;
      v20 = v19 >> 4;
      v21 = (v19 >> 4) + 1;
      if (!(v21 >> 60))
      {
        v22 = v16 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v24 = 16 * v20;
        *v24 = v15;
        *(v24 + 8) = v13;
        v17 = 16 * v20 + 16;
        memcpy(0, v18, v19);
        *v12 = 0;
        v12[1] = v17;
        v12[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void TaggedParser::BeginMarkedContentSequence(TaggedParser *this, CGPDFPage *a2, const char *a3, const char *a4)
{
  if (!a2)
  {
    puts("Critical error: null page");
    v5 = *this;
    if (*(*this + 97))
    {
      return;
    }

    goto LABEL_9;
  }

  v5 = *this;
  if (*(*this + 97))
  {
    return;
  }

  v7 = *(*(a2 + 5) + 16);
  if (!v7)
  {
LABEL_9:
    if (*(v5 + 96) != 1)
    {
      return;
    }

    v10 = "Missing dictionary that backs a given page";
    goto LABEL_17;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(v7, "Resources", &value))
  {
    if (*(*this + 96) != 1)
    {
      return;
    }

    v10 = "Missing Resources dictionary from page dictionary";
    goto LABEL_17;
  }

  dict = 0;
  if (!CGPDFDictionaryGetDictionary(value, "Properties", &dict))
  {
    if (*(*this + 96) != 1)
    {
      return;
    }

    v10 = "Missing Properties dictionary from page resources dictionary";
    goto LABEL_17;
  }

  v11 = 0;
  if (CGPDFDictionaryGetDictionary(dict, a3, &v11))
  {
    TaggedParser::BeginMarkedContentSequence(this, a2, v11, v9);
    return;
  }

  if (*(*this + 96) == 1)
  {
    v10 = "Missing given property name's dictionary from page resources's properties dictionary";
LABEL_17:
    printf("Hit tagged parsing error: %s\n", v10);
  }
}

uint64_t TaggedParser::EndMarkedContentSequence(uint64_t this, CGPDFPage *a2)
{
  if ((*(this + 97) & 1) == 0)
  {
    if (!a2 || (v2 = *(*(a2 + 5) + 8) - 1, v3 = *(this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(this + 112) - v3) >> 3) <= v2))
    {
LABEL_15:
      __break(1u);
      return this;
    }

    v4 = (v3 + 24 * v2);
    v6 = *v4;
    v5 = v4[1];
    v7 = v5 - *v4;
    if (v5 != *v4)
    {
      if (*(this + 96))
      {
        v8 = (v7 >> 4) - 1;
        if ((v7 >> 4) >= 2)
        {
          v9 = (v7 >> 4) - 1;
          do
          {
            printf("    ");
            --v9;
          }

          while (v9);
        }

        this = printf("Popped content sequence. Was depth: %d\n", v8);
        v6 = *v4;
        v5 = v4[1];
      }

      if (v6 != v5)
      {
        v4[1] = v5 - 16;
        return this;
      }

      goto LABEL_15;
    }

    if (*(this + 96))
    {
      return printf("Hit tagged parsing error: %s\n", "Attempted to pop a marked content sequence from an empty stack");
    }
  }

  return this;
}

uint64_t TaggedParser::GetCurrentMCID(uint64_t this, CGPDFPage *a2)
{
  if (a2 && (v2 = *(*(a2 + 5) + 8) - 1, v3 = *(*this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(*this + 112) - v3) >> 3) > v2))
  {
    v4 = &kCGPDFNodeIDNone;
    if ((*(*this + 97) & 1) == 0)
    {
      v6 = (v3 + 24 * v2);
      v5 = v6[1];
      if (v5 != *v6)
      {
        v4 = (v5 - 8);
      }
    }

    return *v4;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void TaggedParser::AddGraphicBounds(TaggedParser *this, CGPDFPage *a2, CGRect a3, char a4)
{
  v4 = *this;
  if ((*(*this + 97) & 1) == 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    CurrentMCID = TaggedParser::GetCurrentMCID(this, a2);
    if (CurrentMCID != -1)
    {
      v10 = HIDWORD(CurrentMCID) - 1;
      v11 = *(v4 + 224);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 232) - v11) >> 3) > v10)
      {
        v12 = (v11 + 40 * v10);
        v13 = v12[1];
        if (!*&v13)
        {
          goto LABEL_21;
        }

        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = CurrentMCID;
          if (CurrentMCID >= *&v13)
          {
            v15 = CurrentMCID % *&v13;
          }
        }

        else
        {
          v15 = (*&v13 - 1) & CurrentMCID;
        }

        v16 = *(*v12 + 8 * v15);
        if (!v16 || (v17 = *v16) == 0)
        {
LABEL_21:
          operator new();
        }

        while (1)
        {
          v18 = v17[1];
          if (v18 == CurrentMCID)
          {
            if (v17[2] == CurrentMCID)
            {
              v19.origin.x = x;
              v19.origin.y = y;
              v19.size.width = width;
              v19.size.height = height;
              *(v17 + 3) = CGRectUnion(*(v17 + 3), v19);
              return;
            }
          }

          else
          {
            if (v14.u32[0] > 1uLL)
            {
              if (v18 >= *&v13)
              {
                v18 %= *&v13;
              }
            }

            else
            {
              v18 &= *&v13 - 1;
            }

            if (v18 != v15)
            {
              goto LABEL_21;
            }
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_21;
          }
        }
      }

      __break(1u);
    }
  }
}

const StructureElement *CreateCGPDFTaggedNodeFromStructureElement(const StructureElement *result, CGPDFPage *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!IsStructureElementForPage(result, a2))
  {
    return 0;
  }

  v4 = CGPDFTaggedNodeCreate(a2);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = *(v3 + 2);
    if (*(v3 + 40) == 1)
    {
      *(v4 + 104) = 0;
    }

    *(v4 + 24) = *(v3 + 4);
  }

  v6 = *(v3 + 18);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"Alt");
    if (Value)
    {
      CGPDFTaggedNodeSetAltText(v5, Value);
    }

    v8 = CFDictionaryGetValue(*(v3 + 18), @"ActualText");
    if (v8)
    {
      CGPDFTaggedNodeSetActualText(v5, v8);
    }

    v9 = CFDictionaryGetValue(*(v3 + 18), @"T");
    if (v9)
    {
      CGPDFTaggedNodeSetTitleText(v5, v9);
    }

    v10 = CFDictionaryGetValue(*(v3 + 18), @"Lang");
    if (v10)
    {
      CGPDFTaggedNodeSetLanguageText(v5, v10);
    }

    v11 = CFDictionaryGetValue(*(v3 + 18), @"TextDecorationType");
    if (v11)
    {
      CGPDFTaggedNodeSetTextDecorationType(v5, v11);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v3 + 17);
  if (v12)
  {
    if (CFDictionaryContainsKey(v12, @"RowSpan"))
    {
      v13 = CFDictionaryGetValue(*(v3 + 17), @"RowSpan");
      if (v5)
      {
        *(v5 + 112) = v13;
      }
    }

    if (CFDictionaryContainsKey(*(v3 + 17), @"ColSpan"))
    {
      v14 = CFDictionaryGetValue(*(v3 + 17), @"ColSpan");
      if (v5)
      {
        *(v5 + 120) = v14;
      }
    }
  }

  v15 = *(v3 + 20);
  v16 = *(v3 + 21);
  while (v15 != v16)
  {
    v17 = *v15++;
    CGPDFTaggedNodeAddURL(v5, v17);
  }

  v18 = *(v3 + 11);
  v19 = *(v3 + 12);
  while (v18 != v19)
  {
    CGPDFTaggedNodeFromStructureElement = CreateCGPDFTaggedNodeFromStructureElement(*v18, a2);
    if (CGPDFTaggedNodeFromStructureElement)
    {
      v21 = CGPDFTaggedNodeFromStructureElement;
      if (v10)
      {
        if (!*(CGPDFTaggedNodeFromStructureElement + 19))
        {
          CGPDFTaggedNodeSetLanguageText(CGPDFTaggedNodeFromStructureElement, v10);
        }
      }

      CGPDFTaggedNodeAddTaggedNode(v5, v21);
      CFRelease(v21);
    }

    ++v18;
  }

  v22 = *(v3 + 7);
  if (v22 == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = HIDWORD(v22);
  }

  if (v5)
  {
    *(v5 + 176) = v23;
  }

  v67 = v23;
  v24 = *(v3 + 14);
  v25 = *(v3 + 15);
  while (v24 != v25)
  {
    v26 = *v24;
    if (*v24)
    {
      v27 = *v24;
      while (v27->n64_u32[0] != 517)
      {
        v27 = v27[1].n64_u64[0];
        if (!v27)
        {
          goto LABEL_72;
        }
      }

      if (v27[13].n64_u64[0])
      {
        v28 = v26->n64_u32[0];
        if (v26->n64_u32[0] == 1)
        {
          v68 = 0;
          v29 = 0;
          v30 = 1;
        }

        else if ((v28 - 257) >= 2)
        {
          if (v28 != 259)
          {
            goto LABEL_72;
          }

          v31 = v26[13].n64_i64[0];
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v29 = *(v32 + 24);
              v68 = *(v32 + 32);
            }

            else
            {
              v29 = 0;
              v68 = 0;
            }

            if (CGPDFAnnotationGetType(v31) == 25)
            {
              v30 = 702;
            }

            else
            {
              v30 = 507;
            }
          }

          else
          {
            v68 = 0;
            v29 = 0;
            v30 = 0;
          }

          v28 = 259;
        }

        else
        {
          v68 = 0;
          v29 = 0;
          v30 = 700;
        }

        v33 = CGPDFTaggedNodeCreate(0);
        v34 = v33;
        if (v33)
        {
          *(v33 + 16) = v30;
          v35 = *(v33 + 96);
          if (v35)
          {
            CGPDFNodeRelease(v35);
          }

          *(v34 + 96) = v26;
          ++v26[5].n64_u32[0];
          *(v34 + 176) = v67;
        }

        v36 = CGPDFNodeGetBounds(v26).n64_f64[0];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        Rotation = CGPDFNodeGetRotation(v26);
        v44 = __sincos_stret(Rotation);
        v69.tx = 0.0;
        v69.ty = 0.0;
        v69.a = v44.__cosval;
        v69.b = v44.__sinval;
        v69.c = -v44.__sinval;
        v69.d = v44.__cosval;
        v70.origin.x = v36;
        v70.origin.y = v38;
        v70.size.width = v40;
        v70.size.height = v42;
        v71 = CGRectApplyAffineTransform(v70, &v69);
        if (v34)
        {
          *(v34 + 40) = 1;
          *(v34 + 48) = v71;
          if (v28 == 257)
          {
            *(v34 + 105) = 1;
          }

          *(v34 + 24) = v29;
          *(v34 + 32) = v68;
          CGPDFTaggedNodeAddTaggedNode(v5, v34);
          CFRelease(v34);
        }
      }
    }

LABEL_72:
    ++v24;
  }

  v45 = *(v3 + 23);
  v46 = *(v3 + 24);
  while (v45 != v46)
  {
    v47 = *v45++;
    CGPDFTaggedNodeAddTaggedNode(v5, v47);
  }

  if (v5 && *(v5 + 16) == 700)
  {
    v48 = CGPDFTaggedNodeGetBounds(v5).n128_u64[0];
    v52 = 1;
LABEL_79:
    v72 = CGRectUnion(*&v48, *(v3 + 208));
    *(v5 + 40) = 1;
    *(v5 + 48) = v72;
    if (v52)
    {
      *(v5 + 105) = *(v3 + 240);
    }
  }

  else if (*(v3 + 11) == *(v3 + 12) && *(v3 + 23) == *(v3 + 24))
  {
    v48 = CGPDFTaggedNodeGetBounds(v5).n128_u64[0];
    if (v5)
    {
      v52 = 0;
      goto LABEL_79;
    }
  }

  v53 = *(v3 + 19);
  if (v53)
  {
    Rect = CGPDFAnnotationGetRect(v53);
    y = v55;
    width = v57;
    height = v59;
    RotationAngle = CGPDFPageGetRotationAngle(a2);
    if (RotationAngle)
    {
      v62 = __sincos_stret(RotationAngle * -3.14159265 / 180.0);
      v69.tx = 0.0;
      v69.ty = 0.0;
      v69.a = v62.__cosval;
      v69.b = v62.__sinval;
      v69.c = -v62.__sinval;
      v69.d = v62.__cosval;
      v73.origin.x = Rect;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v74 = CGRectApplyAffineTransform(v73, &v69);
      Rect = v74.origin.x;
      y = v74.origin.y;
      width = v74.size.width;
      height = v74.size.height;
    }

    if (v5)
    {
      *(v5 + 40) = 1;
      *(v5 + 48) = Rect;
      *(v5 + 56) = y;
      *(v5 + 64) = width;
      *(v5 + 72) = height;
      goto LABEL_88;
    }

    return 0;
  }

  else
  {
LABEL_88:
    v63 = *(v3 + 31);
    v64 = *(v3 + 32);
    v65 = v63 == INFINITY;
    if (v64 == INFINITY)
    {
      v65 = 1;
    }

    if (v65)
    {
      result = v5;
    }

    else
    {
      result = 0;
    }

    if (!v65 && v5)
    {
      *(v5 + 40) = 1;
      v66 = *(v3 + 264);
      *(v5 + 48) = v63;
      *(v5 + 56) = v64;
      *(v5 + 64) = v66;
      return v5;
    }
  }

  return result;
}

void ___ZN12TaggedParser38InsertLinkAnnotationsIntoStructureTreeEP15CGPDFTaggedNodeP9CGPDFPageR10PageLayout_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CGPDFAnnotationGetType(a3) != 8)
  {
    return;
  }

  Rect = CGPDFAnnotationGetRect(a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ElementForInserting = FindElementForInserting(*(a1 + 32), Rect, v7, v9, v11);
  if (!ElementForInserting)
  {
    return;
  }

  v14 = ElementForInserting;
  v15 = *(ElementForInserting + 176);
  v38.origin.x = Rect;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  SelectionForRect = PageLayout::CreateSelectionForRect(*(a1 + 40), v38);
  v17 = SelectionForRect;
  if (!SelectionForRect || (v18 = *(SelectionForRect + 184), v18 == *(SelectionForRect + 192)))
  {
    v20 = 0;
    v21 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
  }

  v22 = CGPDFTaggedNodeCreate(a2);
  v23 = v22;
  if (v22)
  {
    *(v22 + 16) = 506;
    *(v22 + 104) = 0;
    *(v22 + 176) = v15;
    *(v22 + 40) = 1;
    *(v22 + 48) = Rect;
    *(v22 + 56) = v8;
    *(v22 + 64) = v10;
    *(v22 + 72) = v12;
    if ((v19 & 1) == 0)
    {
      *(v22 + 184) = 1;
      *(v22 + 192) = v20;
      *(v22 + 200) = v21;
      *(v22 + 208) = 0;
    }
  }

  v24 = CGPDFTaggedNodeCreate(a2);
  v25 = v24;
  if (v24)
  {
    *(v24 + 16) = 800;
    *(v24 + 176) = v15;
    *(v24 + 104) = 0;
    *(v24 + 40) = 1;
    *(v24 + 48) = Rect;
    *(v24 + 56) = v8;
    *(v24 + 64) = v10;
    *(v24 + 72) = v12;
  }

  v26 = *(a3 + 16);
  if (!v26)
  {
    v27 = 0uLL;
    if (!v24)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v27 = *(v26 + 24);
  if (v24)
  {
LABEL_14:
    *(v24 + 24) = v27;
  }

LABEL_15:
  CGPDFTaggedNodeAddTaggedNode(v23, v24);
  if (v19)
  {
    CGPDFTaggedNodeAddTaggedNode(v14, v23);
  }

  else
  {
    StringRange = CGPDFTaggedNodeGetStringRange(v14);
    v30 = v29;
    v31 = CGPDFSelectionGetStringRange(v17, 0);
    v32 = v31;
    v34 = v33;
    if (v31 <= StringRange)
    {
      CopyWithStringRange = 0;
    }

    else
    {
      CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange(v14, StringRange, v31 - StringRange);
    }

    if (StringRange + v30 <= v32 + v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = CGPDFTaggedNodeCreateCopyWithStringRange(v14, v32 + v34, StringRange + v30 - (v32 + v34));
    }

    v37 = CGPDFTaggedNodeCreateCopyWithStringRange(v14, v32, v34);
    CGPDFTaggedNodeAddTaggedNode(v23, v37);
    CGPDFTaggedNodeRemoveAllChildren(v14);
    if (CopyWithStringRange)
    {
      CGPDFTaggedNodeAddTaggedNode(v14, CopyWithStringRange);
    }

    CGPDFTaggedNodeAddTaggedNode(v14, v23);
    if (v36)
    {
      CGPDFTaggedNodeAddTaggedNode(v14, v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (CopyWithStringRange)
    {
      CFRelease(CopyWithStringRange);
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_1841C4380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va1);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va2);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va3);
  applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(va4);
  _Unwind_Resume(a1);
}

void ___ZN12TaggedParser39InsertSignatureMarkersIntoStructureTreeEP15CGPDFTaggedNodeP9CGPDFPageR10PageLayout_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  value = 0;
  if (CGPDFDictionaryGetName(v6, "Subtype", &value) && strcmp(value, "Widget"))
  {
    return;
  }

  v32 = 0;
  if (CGPDFDictionaryGetBoolean(v6, "AAPL:isSignatureMarker", &v32) && v32 == 0)
  {
    return;
  }

  Rect = CGPDFAnnotationGetRect(a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  ElementForInserting = FindElementForInserting(*(a1 + 32), Rect, v9, v11, v13);
  if (!ElementForInserting)
  {
    return;
  }

  v16 = ElementForInserting;
  v34.origin.x = Rect;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  SelectionForRect = PageLayout::CreateSelectionForRect(*(a1 + 40), v34);
  v18 = SelectionForRect;
  if (SelectionForRect)
  {
    v19 = *(SelectionForRect + 184) == *(SelectionForRect + 192);
  }

  else
  {
    v19 = 1;
  }

  v20 = CGPDFTaggedNodeCreate(a2);
  v21 = v20;
  if (v20)
  {
    *(v20 + 176) = *(v16 + 176);
    *(v20 + 16) = 800;
    *(v20 + 104) = 0;
    *(v20 + 40) = 1;
    *(v20 + 48) = Rect;
    *(v20 + 56) = v10;
    *(v20 + 64) = v12;
    *(v20 + 72) = v14;
  }

  if (!v6)
  {
    v22 = 0uLL;
    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v22 = *(v6 + 24);
  if (v20)
  {
LABEL_15:
    *(v20 + 24) = v22;
  }

LABEL_16:
  if (v19)
  {
    CGPDFTaggedNodeAddTaggedNode(v16, v20);
  }

  else
  {
    StringRange = CGPDFTaggedNodeGetStringRange(v16);
    v25 = v24;
    v26 = CGPDFSelectionGetStringRange(v18, 0);
    v27 = v26;
    v29 = v28;
    if (v26 <= StringRange)
    {
      CopyWithStringRange = 0;
    }

    else
    {
      CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange(v16, StringRange, v26 - StringRange);
    }

    if (StringRange + v25 <= v27 + v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = CGPDFTaggedNodeCreateCopyWithStringRange(v16, v27 + v29, StringRange + v25 - (v27 + v29));
    }

    CGPDFTaggedNodeRemoveAllChildren(v16);
    if (CopyWithStringRange)
    {
      CGPDFTaggedNodeAddTaggedNode(v16, CopyWithStringRange);
    }

    CGPDFTaggedNodeAddTaggedNode(v16, v21);
    if (v31)
    {
      CGPDFTaggedNodeAddTaggedNode(v16, v31);
      CFRelease(v31);
    }

    if (CopyWithStringRange)
    {
      CFRelease(CopyWithStringRange);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}