void emit_key_string(uint64_t *result, CFStringRef theString, const __CFString *a3)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a3)
    {
      if (Length >= 1 && CFStringGetLength(a3) >= 1)
      {
        PDFDocumentPrintf(*result, "%/ %T", theString, a3);
      }
    }
  }
}

uint64_t MinMax(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 68);
  if (v2 < *a2)
  {
    *a2 = v2;
  }

  if (v2 > a2[1])
  {
    a2[1] = v2;
  }

  return 1;
}

uint64_t graphicBetween(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 68);
  v5 = *(a2 + 68);
  if (v4 + 1 >= v5)
  {
    v6 = *(a1 + 68);
    if (v5 + 1 >= v4)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a2 + 68);
    v5 = *(a1 + 68);
  }

  v7 = *(a3 + 2160);
  while (v7 < *(a3 + 2168))
  {
    v8 = *(v7 + 68);
    v7 += 184;
    if (v8 > v5)
    {
      if (v8 < v6)
      {
        v9 = *(v7 - 184);
        v10 = *(v7 - 176);
        v11 = *(v7 - 168);
        v12 = *(v7 - 160);
        v14.origin.x = v9;
        v14.origin.y = v10;
        v14.size.width = v11;
        v14.size.height = v12;
        if (CGRectIntersectsRect(*a1, v14))
        {
          v15.origin.x = v9;
          v15.origin.y = v10;
          v15.size.width = v11;
          v15.size.height = v12;
          if (CGRectIntersectsRect(*a2, v15))
          {
            return 1;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t CGColorConverterIterateFunctionsWithCallbacks(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  CGPostError("%s: This function is deprected. Please use CGColorConversionInfoIterateFunctionsWithCallbacks", "CGColorConverterIterateFunctionsWithCallbacks");

  return CGColorConversionInfoIterateFunctionsWithCallbacks(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t CGColorConverterIterateColorSpaceFunctionsWithCallbacks(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  CGPostError("%s: This function is deprected. Please use CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks", "CGColorConverterIterateColorSpaceFunctionsWithCallbacks");

  return CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

_DWORD *clipMaskRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

void emitClipMaskDefinition(uint64_t result, _BYTE *a2)
{
  if (*(result + 24))
  {
    goto LABEL_47;
  }

  v4 = *(result + 8);
  v5 = *(v4 + 4);
  if (v5 <= 0)
  {
    *(v4 + 4) = 1;
    v6 = (v4 + 8);
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    v7 = *(v4 + 8);
    v6 = (v4 + 8);
    if (v7 > 3)
    {
      goto LABEL_8;
    }
  }

  *v6 = 4;
LABEL_8:
  v64 = CGRectNull;
  v8 = *(result + 32);
  if (v8)
  {
    v9 = (result + 40);
    height = 0.0;
    y = INFINITY;
    v12 = 0.0;
    v13 = INFINITY;
    do
    {
      v15 = *v9++;
      v14 = v15;
      p_height = &CGRectNull.size.height;
      p_y = &CGRectNull.origin.y;
      p_size = &CGRectNull.size;
      v19 = v15 + 2;
      v20 = &v15[2].origin.y;
      v21 = &v15[2].size;
      v22 = &v15[2].size.height;
      if (v15)
      {
        p_size = v21;
        p_y = v20;
        p_height = v22;
      }

      else
      {
        v19 = &CGRectNull;
      }

      v23 = *p_height;
      x = v19->origin.x;
      v25 = *p_y;
      width = p_size->width;
      if (v14)
      {
        v27 = &v14->origin.y;
      }

      else
      {
        v27 = &CGAffineTransformIdentity;
      }

      v28 = *&v27->c;
      *&v63.a = *&v27->a;
      *&v63.c = v28;
      *&v63.tx = *&v27->tx;
      v67 = CGRectApplyAffineTransform(*&x, &v63);
      v65.origin.x = v13;
      v65.origin.y = y;
      v65.size.width = v12;
      v65.size.height = height;
      v66 = CGRectUnion(v65, v67);
      v13 = v66.origin.x;
      y = v66.origin.y;
      v12 = v66.size.width;
      height = v66.size.height;
      --v8;
    }

    while (v8);
    v64 = v66;
  }

  v29 = PDFContentStreamCreate(*(result + 8), &v64);
  v30 = v29;
  if (v29)
  {
    v31 = *(v29 + 1);
    v32 = *(v29 + 14);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v34 = *(result + 8);
  v33 = *(result + 16);
  if (!v33)
  {
    v33 = PDFXRefTableAddObject(*(v34 + 504));
    *(result + 16) = v33;
  }

  PDFDocumentBeginObject(v34, v33);
  PDFDocumentPrintf(*(result + 8), "<<");
  PDFDocumentPrintf(*(result + 8), "/Type /Mask");
  PDFDocumentPrintf(*(result + 8), "/S /Luminosity");
  PDFDocumentPrintReference(*(result + 8), "/G %R", v31);
  PDFDocumentPrintf(*(result + 8), ">>");
  PDFDocumentEndObject(*(result + 8));
  PDFContentStreamBegin(v30);
  PDFDocumentPrintf(*(result + 8), "/Type /XObject");
  PDFDocumentPrintf(*(result + 8), "/Subtype /Form");
  PDFDocumentPrintf(*(result + 8), "/FormType 1");
  PDFDocumentPrintf(*(result + 8), "/BBox %r", &v64);
  PDFDocumentPrintf(*(result + 8), "/Matrix [1 0 0 1 0 0]");
  PDFDocumentPrintReference(*(result + 8), "/Resources %R", *(v32 + 16));
  PDFDocumentPrintf(*(result + 8), "/Group <<");
  PDFDocumentPrintf(*(result + 8), "/S /Transparency");
  PDFDocumentPrintf(*(result + 8), "/CS /DeviceGray");
  PDFDocumentPrintf(*(result + 8), "/I true");
  PDFDocumentPrintf(*(result + 8), "/K false");
  PDFDocumentPrintf(*(result + 8), ">>");
  PDFContentStreamBeginData(v30);
  v35 = CGGStateCreate();
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v37 = CGColorCreate(DeviceGray, dbl_1844F0670);
  CGColorSpaceRelease(DeviceGray);
  CGGStateSetFillColor(v35, v37);
  if (v37)
  {
    CFRelease(v37);
  }

  if (*(result + 32))
  {
    v38 = 0;
    v39 = result + 40;
    do
    {
      v40 = *(v39 + 8 * v38);
      v41 = (v40 + 8);
      if (!v40)
      {
        v41 = &CGAffineTransformIdentity;
      }

      v42 = *&v41->a;
      v43 = *&v41->c;
      *(v35 + 56) = *&v41->tx;
      *(v35 + 40) = v43;
      *(v35 + 24) = v42;
      v44 = &CGRectNull.size.height;
      v45 = &CGRectNull.origin.y;
      v46 = (v40 + 64);
      v47 = (v40 + 72);
      v48 = (v40 + 88);
      v49 = v40 == 0;
      if (v40)
      {
        v50 = (v40 + 80);
      }

      else
      {
        v50 = &CGRectNull.size;
      }

      if (v49)
      {
        v51 = &CGRectNull;
      }

      else
      {
        v45 = v47;
        v51 = v46;
      }

      if (!v49)
      {
        v44 = v48;
      }

      CGGStateClipToRect(v35, v51->origin.x, *v45, v50->width, *v44);
      ++v38;
      v52 = *(result + 32);
    }

    while (v38 < v52);
    if (v52)
    {
      v53 = 0;
      do
      {
        v54 = *(v39 + 8 * v53);
        v55 = (v54 + 1);
        if (!v54)
        {
          v55 = &CGAffineTransformIdentity;
        }

        v56 = *&v55->a;
        v57 = *&v55->c;
        *(v35 + 56) = *&v55->tx;
        *(v35 + 40) = v57;
        *(v35 + 24) = v56;
        if (v54)
        {
          v58 = *(v54 + 8);
          v59 = *(v54 + 9);
          v60 = *(v54 + 10);
          v61 = *(v54 + 11);
          v62 = v54[7];
        }

        else
        {
          v62 = 0;
          v60 = 0.0;
          v59 = INFINITY;
          v58 = INFINITY;
          v61 = 0.0;
        }

        PDFContentStreamDrawImage(v30, v35, v62, v58, v59, v60, v61);
        CGGStateSetCompositeOperation(v35, 13);
        ++v53;
      }

      while (v53 < *(result + 32));
    }
  }

  CGGStateRelease(v35);
  PDFContentStreamEndData(v30);
  PDFContentStreamEnd(v30);
  PDFResourceSetEmit(v32);
  PDFContentStreamRelease(v30);
  *(result + 24) = 1;
LABEL_47:
  *a2 = 1;
}

void CGPDFGStateRelease(void *a1)
{
  if (a1)
  {
    CGPDFGStateReleaseProperties(a1);

    free(a1);
  }
}

__n128 CGPDFGStateGetCTM@<Q0>(const CGAffineTransform *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = &CGAffineTransformIdentity;
  if (a1)
  {
    v2 = a1;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

__n128 CGPDFGStateSetCTM(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = *a2;
    v3 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v3;
    *a1 = result;
  }

  return result;
}

uint64_t CGPDFGStateHasPendingClip(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetHasPendingClip(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 48) = a2;
    if (a2)
    {
      *(result + 49) = 0;
    }
  }

  return result;
}

uint64_t CGPDFGStateHasPendingEOClip(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 49);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetHasPendingEOClip(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 49) = a2;
    if (a2)
    {
      *(result + 48) = 0;
    }
  }

  return result;
}

const void *map_color(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    v5 = *(a1 + 72);
    v6 = v5[3];
    v9[2] = v5[2];
    v9[3] = v6;
    v9[4] = v5[4];
    v7 = v5[1];
    v9[0] = *v5;
    v9[1] = v7;
    Value = CGMatrixFilterCreateTransformedColor(v9, a2);
    if (Value)
    {
      CFDictionarySetValue(*(a1 + 80), a2, Value);
      CFRelease(Value);
    }
  }

  if (Value)
  {
    return Value;
  }

  else
  {
    return a2;
  }
}

char *CGPDFGStateGetTextObject(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    v2 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10200405FA55690uLL);
    __CFSetLastAllocationEventName();
    if (v2)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      *(v2 + 3) = 0;
      *(v2 + 4) = 0;
      *(v2 + 10) = 0;
      *(v2 + 6) = 0;
      *(v2 + 7) = 0;
      v2[64] = 1;
      *(v2 + 120) = CGAffineTransformIdentity;
      *(v2 + 72) = CGAffineTransformIdentity;
      *(v2 + 21) = 0;
      *(v2 + 22) = 0;
      *v2 = *(a1 + 88);
      *(v2 + 1) = *(a1 + 104);
      CGPDFTextObjectSetFont(v2, *(a1 + 136));
      *(v2 + 7) = *(a1 + 144);
      CGPDFTextObjectSetTextDrawingMode(v2, *(a1 + 128));
      *(v2 + 4) = *(a1 + 120);
      v2[64] = *(a1 + 152);
      *(a1 + 288) = v2;
    }
  }

  return v2;
}

double CGPDFGStateGetCharacterSpacing(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetCharacterSpacing(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 88) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *v2 = a2;
    }
  }

  return result;
}

double CGPDFGStateGetWordSpacing(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetWordSpacing(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 96) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *(v2 + 8) = a2;
    }
  }

  return result;
}

double CGPDFGStateGetHorizontalScale(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 104);
  }

  else
  {
    return 100.0;
  }
}

uint64_t CGPDFGStateSetHorizontalScale(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 104) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *(v2 + 16) = a2;
    }
  }

  return result;
}

double CGPDFGStateGetLeading(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 112);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetLeading(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 112) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *(v2 + 24) = a2;
    }
  }

  return result;
}

double CGPDFGStateGetTextRise(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 120);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetTextRise(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 120) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *(v2 + 32) = a2;
    }
  }

  return result;
}

uint64_t CGPDFGStateGetTextDrawingMode(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

void CGPDFGStateSetTextDrawingMode(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      CGPDFTextObjectSetTextDrawingMode(v2, a2);
    }
  }
}

uint64_t CGPDFGStateGetFont(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

void CGPDFGStateSetFont(void *result, void *cf)
{
  if (result)
  {
    v4 = result[17];
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      result[17] = cf;
      v5 = result[36];
      if (v5)
      {

        CGPDFTextObjectSetFont(v5, cf);
      }
    }
  }
}

double CGPDFGStateGetFontSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 144);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetFontSize(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 144) = a2;
    v2 = *(result + 288);
    if (v2)
    {
      *(v2 + 56) = a2;
    }
  }

  return result;
}

uint64_t CGPDFGStateGetTextKnockout(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 152);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetTextKnockout(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

double CGPDFGStateGetLineWidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 160);
  }

  else
  {
    return 1.0;
  }
}

uint64_t CGPDFGStateSetLineWidth(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetLineCap(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t CGPDFGStateSetLineCap(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetLineJoin(uint64_t result)
{
  if (result)
  {
    return *(result + 172);
  }

  return result;
}

uint64_t CGPDFGStateSetLineJoin(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 172) = a2;
  }

  return result;
}

double CGPDFGStateGetMiterLimit(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 176);
  }

  else
  {
    return 10.0;
  }
}

uint64_t CGPDFGStateSetMiterLimit(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetDash(uint64_t result)
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

void CGPDFGStateSetDash(uint64_t a1, atomic_uint *a2)
{
  if (a1)
  {
    v4 = *(a1 + 184);
    if (v4 != a2)
    {
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v4);
      }

      if (a2)
      {
        atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
      }

      *(a1 + 184) = a2;
    }
  }
}

uint64_t CGPDFGStateGetRenderingIntent(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 192);
  }

  else
  {
    return 2;
  }
}

uint64_t CGPDFGStateSetRenderingIntent(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetStrokeAdjust(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 196);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetStrokeAdjust(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 196) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetBlendMode(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t CGPDFGStateSetBlendMode(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

uint64_t CGPDFGStateSetBlendModeAsObject(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = CGPDFBlendModeFromCGPDFObject(a2);
    if (result != -1)
    {
      *(v2 + 200) = result;
    }
  }

  return result;
}

uint64_t CGPDFBlendModeFromCGPDFObject(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 8);
  if (v1 != 7)
  {
    if (v1 == 5)
    {
      v2 = *(a1 + 32);

      return get_blend_mode_for_name(v2);
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 3) - *(v4 + 2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = v5 >> 3;
  value = 0;
  while (!CGPDFArrayGetName(v4, v6, &value))
  {
    if (v7 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return get_blend_mode_for_name(value);
}

uint64_t get_blend_mode_for_name(const char *a1)
{
  result = strcmp(a1, "Normal");
  if (result)
  {
    result = strcmp(a1, "Compatible");
    if (result)
    {
      if (!strcmp(a1, "Multiply"))
      {
        return 1;
      }

      else if (!strcmp(a1, "Screen"))
      {
        return 2;
      }

      else if (!strcmp(a1, "Overlay"))
      {
        return 3;
      }

      else if (!strcmp(a1, "Darken"))
      {
        return 4;
      }

      else if (!strcmp(a1, "Lighten"))
      {
        return 5;
      }

      else if (!strcmp(a1, "ColorDodge"))
      {
        return 6;
      }

      else if (!strcmp(a1, "ColorBurn"))
      {
        return 7;
      }

      else if (!strcmp(a1, "HardLight"))
      {
        return 8;
      }

      else if (!strcmp(a1, "SoftLight"))
      {
        return 9;
      }

      else if (!strcmp(a1, "Difference"))
      {
        return 10;
      }

      else if (!strcmp(a1, "Exclusion"))
      {
        return 11;
      }

      else if (!strcmp(a1, "Hue"))
      {
        return 12;
      }

      else if (!strcmp(a1, "Saturation"))
      {
        return 13;
      }

      else if (!strcmp(a1, "Color"))
      {
        return 14;
      }

      else if (!strcmp(a1, "Luminosity"))
      {
        return 15;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t CGPDFGStateGetSoftMask(uint64_t result)
{
  if (result)
  {
    return *(result + 208);
  }

  return result;
}

void CGPDFGStateSetSoftMask(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 208);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 208) = cf;
    }
  }
}

double CGPDFGStateGetFillAlpha(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 216);
  }

  else
  {
    return 1.0;
  }
}

double CGPDFGStateGetStrokeAlpha(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 224);
  }

  else
  {
    return 1.0;
  }
}

uint64_t CGPDFGStateGetAlphaIsShape(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 232);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetAlphaIsShape(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 232) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetFillOverprint(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 233);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetFillOverprint(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 233) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetStrokeOverprint(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 234);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGPDFGStateSetStrokeOverprint(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 234) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetOverprintMode(uint64_t result)
{
  if (result)
  {
    return *(result + 236);
  }

  return result;
}

uint64_t CGPDFGStateSetOverprintMode(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 236) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetBlackGeneration(uint64_t result)
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

void CGPDFGStateSetBlackGeneration(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 240);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 240) = cf;
    }
  }
}

uint64_t CGPDFGStateGetUndercolorRemoval(uint64_t result)
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

void CGPDFGStateSetUndercolorRemoval(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 248);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 248) = cf;
    }
  }
}

uint64_t CGPDFGStateGetTransferFunctions(uint64_t result)
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

void *CGPDFGStateSetTransferFunctions(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    if (!cf || (result = CFArrayGetCount(cf), result == 4))
    {
      result = v3[32];
      if (result != cf)
      {
        if (result)
        {
          CFRelease(result);
        }

        if (cf)
        {
          result = CFRetain(cf);
        }

        else
        {
          result = 0;
        }

        v3[32] = result;
      }
    }
  }

  return result;
}

double CGPDFGStateGetFlatness(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 264);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetFlatness(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 264) = a2;
  }

  return result;
}

double CGPDFGStateGetSmoothness(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 272);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGPDFGStateSetSmoothness(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 272) = a2;
  }

  return result;
}

uint64_t CGPDFGStateGetShadowStyle(uint64_t result)
{
  if (result)
  {
    return *(result + 280);
  }

  return result;
}

void CGPDFGStateSetShadowStyle(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 280);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 280) = cf;
    }
  }
}

void CGPDFGStateSetColorMatrixFilter(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 80) = 0;
  if (a2)
  {
    v6 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    if (v6)
    {
      *v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      v9 = a2[4];
      v6[3] = a2[3];
      v6[4] = v9;
      v6[1] = v7;
      v6[2] = v8;
    }

    *(a1 + 72) = v6;
    *(a1 + 80) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }
}

uint64_t *std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v3) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(v3 + 8) - *v3;
    v15 = v12 - v14;
    memcpy((v12 - v14), *v3, v14);
    v16 = *v3;
    *v3 = v15;
    *(v3 + 8) = v7;
    *(v3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(v3 + 8) = v7;
  return a1;
}

const void **applesauce::CF::ObjectRef<CGPDFPage *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void Selection::cacheStringRanges(os_unfair_lock_s **this)
{
  if (this[2] != this[3])
  {
    v2 = (this + 5);
    if (this[6] == this[5])
    {
      v3 = CGPDFPageCopyPageLayoutWithCTLD(*this, 1);
      v37[0] = v2;
      v37[1] = v3;
      if ((v3[7] & 1) == 0)
      {
        v18 = this[2];
        for (i = this[3]; v18 != i; v18 += 6)
        {
          v20 = *&v18[2]._os_unfair_lock_opaque;
          v21 = v3[25];
          v22 = (v3[26] - v21) >> 3;
          if (v22 <= v20)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
          }

          v23 = *&v18[4]._os_unfair_lock_opaque + v20;
          if (v22 <= v23)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
          }

          v24 = *(v21 + 8 * v20);
          v25 = *(v21 + 8 * v23) - v24;
          v27 = this[6];
          v26 = this[7];
          if (v27 >= v26)
          {
            v29 = *v2;
            v30 = v27 - *v2;
            v31 = v30 >> 4;
            v32 = (v30 >> 4) + 1;
            if (v32 >> 60)
            {
              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
            }

            v33 = v26 - v29;
            if (v33 >> 3 > v32)
            {
              v32 = v33 >> 3;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF0)
            {
              v34 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v34);
            }

            v35 = (16 * v31);
            *v35 = v24;
            v35[1] = v25;
            v28 = (16 * v31 + 16);
            memcpy(0, v29, v30);
            v36 = this[5];
            this[5] = 0;
            this[6] = v28;
            this[7] = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *&v27->_os_unfair_lock_opaque = v24;
            *&v27[2]._os_unfair_lock_opaque = v25;
            v28 = v27 + 4;
          }

          this[6] = v28;
        }

LABEL_47:
        CFRelease(v3);
        return;
      }

      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v6 = this[2];
      v5 = this[3];
      while (v6 != v5)
      {
        v7 = *&v6[4]._os_unfair_lock_opaque;
        if (v7 >= 1)
        {
          v8 = *&v6[2]._os_unfair_lock_opaque;
          v9 = v7 + v8;
          v11 = v3[16];
          v10 = v3[17];
          while (1)
          {
            if (v8 >= (v10 - v11) >> 3)
            {
              goto LABEL_39;
            }

            if (*(v11 + 8 * v8))
            {
              break;
            }

LABEL_20:
            if (++v8 >= v9)
            {
              goto LABEL_21;
            }
          }

          v12 = 0;
          while (1)
          {
            v13 = v3[25];
            if (v8 >= (v3[26] - v13) >> 3)
            {
              std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
            }

            v14 = v3[43];
            v15 = v3[44];
            if (v14 == v15)
            {
              v17 = v3[43];
            }

            else
            {
              v16 = *(v13 + 8 * v8) + v12;
              v17 = v3[43];
              while (*v17 != v16)
              {
                if (++v17 == v15)
                {
                  v17 = v3[44];
                  break;
                }
              }
            }

            [v4 addIndex:v17 - v14];
            v11 = v3[16];
            v10 = v3[17];
            if (v8 >= (v10 - v11) >> 3)
            {
              break;
            }

            if (++v12 >= *(v11 + 8 * v8))
            {
              goto LABEL_20;
            }
          }

LABEL_39:
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

LABEL_21:
        v6 += 6;
      }

      v39 = 0;
      v40 = &v39;
      v41 = 0x4012000000;
      v42 = __Block_byref_object_copy_;
      v43 = __Block_byref_object_dispose_;
      v44 = "";
      v45 = xmmword_18439C770;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__16ranges14transform_viewB10llvm18_nuaINS2_8ref_viewINS1_6vectorINS1_4pairIm7CFRangeEENS1_9allocatorIS8_EEEEEEZN9Selection17cacheStringRangesEvE3__0EENS1_20back_insert_iteratorINS5_IS7_NS9_IS7_EEEEEEEEvOT_OT0__block_invoke;
      v38[3] = &unk_1E6E317D0;
      v38[4] = &v39;
      v38[5] = v3 + 2;
      v38[6] = v37;
      [v4 enumerateRangesUsingBlock:v38];
      if (v40[6] != -1)
      {
        std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](v37, v40 + 3);
      }

      _Block_object_dispose(&v39, 8);

      if (v3)
      {
        goto LABEL_47;
      }
    }
  }
}

void sub_184016E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  JUMPOUT(0x184016EA4);
}

const void **applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t *___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__16ranges14transform_viewB10llvm18_nuaINS2_8ref_viewINS1_6vectorINS1_4pairIm7CFRangeEENS1_9allocatorIS8_EEEEEEZN9Selection17cacheStringRangesEvE3__0EENS1_20back_insert_iteratorINS5_IS7_NS9_IS7_EEEEEEEEvOT_OT0__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[5];
  v7 = a2 + a3;
  result = [*(v6 + 56) length];
  if (v7 < result)
  {
    result = [*(v6 + 56) characterAtIndex:v7];
    if (result == 10)
    {
      ++v3;
    }
  }

  v9 = *(a1[4] + 8);
  v10 = *(v9 + 48);
  if (v10 != -1)
  {
    v11 = *(v9 + 56);
    if (v11 + v10 == a2)
    {
      *(v9 + 56) = v11 + v3;
      return result;
    }

    result = std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](a1[6], (v9 + 48));
    v9 = *(a1[4] + 8);
  }

  *(v9 + 48) = a2;
  *(v9 + 56) = v3;
  return result;
}

uint64_t *std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - *v3;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
  return a1;
}

void std::__throw_out_of_range[abi:fe200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:fe200100](exception, a1);
  __cxa_throw(exception, off_1E6E04888, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void Selection::cacheRectsAndTransforms(os_unfair_lock_s *this)
{
  v93[4] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 29);
  if (LOBYTE(this[28]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this[28]._os_unfair_lock_opaque) = 0;
    if (*&this[4]._os_unfair_lock_opaque != *&this[6]._os_unfair_lock_opaque)
    {
      v2 = CGPDFPageCopyPageLayoutWithCTLD(*&this->_os_unfair_lock_opaque, 1);
      v3 = *&this[4]._os_unfair_lock_opaque;
      v89 = *&this[6]._os_unfair_lock_opaque;
      if (v3 != v89)
      {
        do
        {
          v4 = *v3;
          v5 = v3[1];
          v90 = v3;
          v6 = v3[2] + v5;
          if ((this[30]._os_unfair_lock_opaque & 0xFFFFFFFE) == 2)
          {
            while (1)
            {
              v7 = v2[10];
              if (v4 >= (v2[11] - v7) >> 4)
              {
                goto LABEL_90;
              }

              v8 = *(v7 + 16 * v4);
              v9 = *v8;
              v10 = *(v8 + 1);
              v11 = __sincos_stret(v8[7]);
              v12 = -v11.__sinval;
              v13 = *&this[18]._os_unfair_lock_opaque;
              v14 = *&this[20]._os_unfair_lock_opaque;
              if (v13 >= v14)
              {
                v16 = *&this[16]._os_unfair_lock_opaque;
                v17 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v16) >> 4);
                v18 = v17 + 1;
                if (v17 + 1 > 0x333333333333333)
                {
                  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                }

                v19 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v16) >> 4);
                if (2 * v19 > v18)
                {
                  v18 = 2 * v19;
                }

                if (v19 >= 0x199999999999999)
                {
                  v20 = 0x333333333333333;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(v20);
                }

                v21 = 80 * v17;
                *v21 = CGRectNull;
                *(v21 + 32) = v11.__cosval;
                *(v21 + 40) = v11.__sinval;
                *(v21 + 48) = v12;
                *(v21 + 56) = v11.__cosval;
                *(v21 + 64) = 0;
                *(v21 + 72) = 0;
                v15 = 80 * v17 + 80;
                v22 = *&this[16]._os_unfair_lock_opaque;
                v23 = *&this[18]._os_unfair_lock_opaque - v22;
                v24 = 80 * v17 - v23;
                memcpy((v21 - v23), v22, v23);
                v25 = *&this[16]._os_unfair_lock_opaque;
                *&this[16]._os_unfair_lock_opaque = v24;
                *&this[18]._os_unfair_lock_opaque = v15;
                *&this[20]._os_unfair_lock_opaque = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v13 = CGRectNull;
                *(v13 + 32) = v11.__cosval;
                *(v13 + 40) = v11.__sinval;
                *(v13 + 48) = v12;
                *(v13 + 56) = v11.__cosval;
                *(v13 + 64) = 0;
                *(v13 + 72) = 0;
                v15 = v13 + 80;
              }

              *&this[18]._os_unfair_lock_opaque = v15;
              v26 = v5 < v6;
              if (v5 < v6)
              {
                v27 = v10 + *&v9;
                if (v5 < v10 + *&v9)
                {
                  break;
                }
              }

LABEL_27:
              ++v4;
              if (!v26)
              {
                goto LABEL_58;
              }
            }

            v28 = v2[19];
            v29 = v2[20] - v28;
            if (v5 <= (v29 >> 5))
            {
              v30 = v29 >> 5;
            }

            else
            {
              v30 = v5;
            }

            v31 = v28 + 32 * v5 + 16;
            while (v30 != v5)
            {
              *(v15 - 80) = CGRectUnion(*(v15 - 80), *(v31 - 16));
              v26 = ++v5 < v6;
              if (v5 < v6)
              {
                v31 += 32;
                if (v5 < v27)
                {
                  continue;
                }
              }

              goto LABEL_27;
            }

LABEL_90:
            __break(1u);
          }

          do
          {
            v32 = v2[10];
            if (v4 >= (v2[11] - v32) >> 4)
            {
              goto LABEL_90;
            }

            v33 = (v32 + 16 * v4);
            v34 = v2[46];
            v35 = v2[47];
            if (v34 == v35)
            {
LABEL_33:
              v37 = *v33;
              v38 = **v33;
              v39 = *(v37 + 1);
              v40 = __sincos_stret(v37[7]);
              v41 = -v40.__sinval;
              v42 = *&this[18]._os_unfair_lock_opaque;
              v43 = *&this[20]._os_unfair_lock_opaque;
              if (v42 >= v43)
              {
                v45 = *&this[16]._os_unfair_lock_opaque;
                v46 = 0xCCCCCCCCCCCCCCCDLL * ((v42 - v45) >> 4);
                v47 = v46 + 1;
                if (v46 + 1 > 0x333333333333333)
                {
                  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                }

                v48 = 0xCCCCCCCCCCCCCCCDLL * ((v43 - v45) >> 4);
                if (2 * v48 > v47)
                {
                  v47 = 2 * v48;
                }

                if (v48 >= 0x199999999999999)
                {
                  v49 = 0x333333333333333;
                }

                else
                {
                  v49 = v47;
                }

                if (v49)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(v49);
                }

                v50 = 80 * v46;
                *v50 = CGRectNull;
                *(v50 + 32) = v40.__cosval;
                *(v50 + 40) = v40.__sinval;
                *(v50 + 48) = v41;
                *(v50 + 56) = v40.__cosval;
                *(v50 + 64) = 0;
                *(v50 + 72) = 0;
                v44 = 80 * v46 + 80;
                v51 = *&this[16]._os_unfair_lock_opaque;
                v52 = *&this[18]._os_unfair_lock_opaque - v51;
                v53 = 80 * v46 - v52;
                memcpy((v50 - v52), v51, v52);
                v54 = *&this[16]._os_unfair_lock_opaque;
                *&this[16]._os_unfair_lock_opaque = v53;
                *&this[18]._os_unfair_lock_opaque = v44;
                *&this[20]._os_unfair_lock_opaque = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                *v42 = CGRectNull;
                *(v42 + 32) = v40.__cosval;
                *(v42 + 40) = v40.__sinval;
                *(v42 + 48) = v41;
                *(v42 + 56) = v40.__cosval;
                *(v42 + 64) = 0;
                *(v42 + 72) = 0;
                v44 = v42 + 80;
              }

              *&this[18]._os_unfair_lock_opaque = v44;
              if (v6 >= v39 + v38)
              {
                v55 = v39 + v38;
              }

              else
              {
                v55 = v6;
              }

              v56 = v55 - v5;
              if (v55 > v5)
              {
                v57 = v2[19];
                v58 = (v2[20] - v57) >> 5;
                v59 = v58 >= v5;
                v60 = v58 - v5;
                if (v59)
                {
                  v61 = v60;
                }

                else
                {
                  v61 = 0;
                }

                v62 = v57 + 32 * v5 + 16;
                do
                {
                  if (!v61)
                  {
                    goto LABEL_90;
                  }

                  v94 = *(v62 - 16);
                  v62 += 32;
                  *(v44 - 80) = CGRectUnion(*(v44 - 80), v94);
                  --v61;
                  --v56;
                }

                while (v56);
                v5 = v55;
              }
            }

            else
            {
              while (1)
              {
                v36 = *v34;
                v92 = 0;
                v93[0] = &unk_1EF23E368;
                v93[1] = v33;
                v93[2] = &v92;
                v93[3] = v93;
                PageLayoutTable::enumerateLines(*(v36 + 120), *(v36 + 128), v93);
                std::__function::__value_func<void ()(std::shared_ptr<TextLine> const&,BOOL &)>::~__value_func[abi:fe200100](v93);
                if (v92)
                {
                  break;
                }

                v34 += 2;
                if (v34 == v35)
                {
                  goto LABEL_33;
                }
              }

              v5 = fmin(v6, (*(*v33 + 1) + **v33));
            }

            ++v4;
          }

          while (v5 < v6);
LABEL_58:
          v3 = v90 + 3;
        }

        while (v90 + 3 != v89);
        v3 = *&this[4]._os_unfair_lock_opaque;
        v89 = *&this[6]._os_unfair_lock_opaque;
      }

      if (v3 != v89)
      {
        do
        {
          v91 = v3;
          v63 = v2[46];
          v64 = v2[47];
          if (v63 != v64)
          {
            v65 = v3[1];
            v66 = v3[2] + v65;
            do
            {
              v67 = *v63;
              if ((*(*v63 + 72) & 1) == 0)
              {
                PageLayoutTable::computeTableRanges(*v63);
              }

              v68 = *(v67 + 7);
              if (v65 <= v68 && v66 >= v68 + *(v67 + 8))
              {
                v71 = *(*v63 + 10);
                v70 = *(*v63 + 11);
                v73 = *(*v63 + 12);
                v72 = *(*v63 + 13);
                v74 = __sincos_stret(*(*v63 + 14));
                v75 = -v74.__sinval;
                v76 = *&this[24]._os_unfair_lock_opaque;
                v77 = *&this[26]._os_unfair_lock_opaque;
                if (v76 >= v77)
                {
                  v79 = *&this[22]._os_unfair_lock_opaque;
                  v80 = 0xCCCCCCCCCCCCCCCDLL * ((v76 - v79) >> 4);
                  v81 = v80 + 1;
                  if (v80 + 1 > 0x333333333333333)
                  {
                    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                  }

                  v82 = 0xCCCCCCCCCCCCCCCDLL * ((v77 - v79) >> 4);
                  if (2 * v82 > v81)
                  {
                    v81 = 2 * v82;
                  }

                  if (v82 >= 0x199999999999999)
                  {
                    v83 = 0x333333333333333;
                  }

                  else
                  {
                    v83 = v81;
                  }

                  if (v83)
                  {
                    std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(v83);
                  }

                  v84 = 80 * v80;
                  *v84 = v71;
                  *(v84 + 8) = v70;
                  *(v84 + 16) = v73;
                  *(v84 + 24) = v72;
                  *(v84 + 32) = v74.__cosval;
                  *(v84 + 40) = v74.__sinval;
                  *(v84 + 48) = v75;
                  *(v84 + 56) = v74.__cosval;
                  *(v84 + 64) = 0;
                  *(v84 + 72) = 0;
                  v78 = 80 * v80 + 80;
                  v85 = *&this[22]._os_unfair_lock_opaque;
                  v86 = *&this[24]._os_unfair_lock_opaque - v85;
                  v87 = 80 * v80 - v86;
                  memcpy((v84 - v86), v85, v86);
                  v88 = *&this[22]._os_unfair_lock_opaque;
                  *&this[22]._os_unfair_lock_opaque = v87;
                  *&this[24]._os_unfair_lock_opaque = v78;
                  *&this[26]._os_unfair_lock_opaque = 0;
                  if (v88)
                  {
                    operator delete(v88);
                  }
                }

                else
                {
                  *v76 = v71;
                  *(v76 + 8) = v70;
                  *(v76 + 16) = v73;
                  *(v76 + 24) = v72;
                  *(v76 + 32) = v74.__cosval;
                  *(v76 + 40) = v74.__sinval;
                  *(v76 + 48) = v75;
                  *(v76 + 56) = v74.__cosval;
                  v78 = v76 + 80;
                  *(v76 + 64) = 0;
                  *(v76 + 72) = 0;
                }

                *&this[24]._os_unfair_lock_opaque = v78;
              }

              v63 += 2;
            }

            while (v63 != v64);
          }

          v3 = v91 + 3;
        }

        while (v91 + 3 != v89);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  os_unfair_lock_unlock(this + 29);
}

void sub_1840177B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void Selection::Normalize(os_unfair_lock_s **this)
{
  v2 = CGPDFPageCopyPageLayoutWithCTLD(*this, 1);
  v3 = v2;
  v4 = this[2];
  v6 = this[3];
  v5 = this + 2;
  if (v4 == v6)
  {
    __p = this[2];
    *v5 = 0;
    this[3] = 0;
    this[4] = 0;
  }

  else
  {
    v7 = (v2[20] - v2[19]) >> 5;
    v8 = this[2];
    do
    {
      v9 = *&v8[2]._os_unfair_lock_opaque;
      v10 = v9 >= 1 && v9 < v7;
      if (v10)
      {
        v11 = v2[16];
        v12 = (v2[17] - v11) >> 3;
        v13 = (32 * v9) | 0x10;
        while (v12 > v9)
        {
          if (*(v11 + v9))
          {
            v14 = v2[22];
            if (v9 >= ((v2[23] - v14) >> 5))
            {
              goto LABEL_55;
            }

            if (*(v14 + v13) != 0.0)
            {
              goto LABEL_16;
            }
          }

          v13 -= 32;
          v10 = v9-- <= 1;
          v15 = *&v8[4]._os_unfair_lock_opaque + 1;
          *&v8[2]._os_unfair_lock_opaque = v9;
          *&v8[4]._os_unfair_lock_opaque = v15;
          if (v10)
          {
            v9 = 0;
            goto LABEL_16;
          }
        }

        goto LABEL_55;
      }

LABEL_16:
      v16 = *&v8[4]._os_unfair_lock_opaque;
      v17 = v16 + v9;
      if (v16 + v9 < v7 && (v17 & 0x8000000000000000) == 0)
      {
        v18 = v2[16];
        if ((v2[17] - v18) >> 3 <= v17)
        {
          v19 = v16 + v9;
        }

        else
        {
          v19 = (v2[17] - v18) >> 3;
        }

        v20 = (32 * v17) | 0x10;
        v21 = v18 + 8 * v9;
        v22 = v9 - v19;
        while (v22 + v16)
        {
          if (!*(v21 + 8 * v16))
          {
            goto LABEL_58;
          }

          v23 = v2[22];
          if (v9 + v16 >= ((v2[23] - v23) >> 5))
          {
            break;
          }

          if (*(v23 + v20) == 0.0)
          {
LABEL_58:
            *&v8[4]._os_unfair_lock_opaque = ++v16;
            v20 += 32;
            if (v9 + v16 < v7)
            {
              continue;
            }
          }

          goto LABEL_27;
        }

LABEL_55:
        __break(1u);
        return;
      }

LABEL_27:
      v8 += 6;
    }

    while (v8 != v6);
    v24 = 0;
    v25 = -1;
    *v5 = 0;
    this[3] = 0;
    this[4] = 0;
    __p = v4;
    do
    {
      v27 = v4 + 2;
      v26 = *&v4[2]._os_unfair_lock_opaque;
      if (v25 >= v26)
      {
        v31 = *&v4[4]._os_unfair_lock_opaque + v26;
        if (v31 > v25)
        {
          if (*v5 == v24)
          {
            goto LABEL_55;
          }

          *(v24 - 8) += v31 - *(v24 - 16);
          v25 = v31;
        }
      }

      else
      {
        LineIndex = PageLayout::getLineIndex(v3[10], v3[11], v26);
        v29 = LineIndex;
        v30 = this[4];
        if (v24 >= v30)
        {
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v5) >> 3);
          v33 = v32 + 1;
          if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v5) >> 3);
          if (2 * v34 > v33)
          {
            v33 = 2 * v34;
          }

          if (v34 >= 0x555555555555555)
          {
            v35 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v35);
          }

          v36 = 24 * v32;
          *v36 = v29;
          *(v36 + 8) = *&v27->_os_unfair_lock_opaque;
          v24 = 24 * v32 + 24;
          v37 = this[2];
          v38 = (this[3] - v37);
          v39 = (v36 - v38);
          memcpy((v36 - v38), v37, v38);
          v40 = this[2];
          this[2] = v39;
          this[3] = v24;
          this[4] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v24 = LineIndex;
          *(v24 + 8) = *&v27->_os_unfair_lock_opaque;
          v24 += 24;
        }

        this[3] = v24;
      }

      v4 += 6;
    }

    while (v4 != v6);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_184017B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, const void *a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void PDFWritePath(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, const CGPath *a5)
{
  if (a4 > 4)
  {
    v10 = "Unknown mode";
  }

  else
  {
    v10 = off_1E6E059E0[a4];
  }

  PDFWriterAnnotate(a2, "%s: BEGIN: %s", "PDFWritePath", v10);
  v11 = *(a1 + 104);
  PDFGStateSetClipStack(v11, *(a3 + 112));
  if (a4 < 2)
  {
    v13 = 0;
    v12 = 1;
    goto LABEL_20;
  }

  if (a4 - 3 >= 2)
  {
    v12 = 0;
    v13 = 0;
    if (a4 != 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 1;
  }

  v14 = *(a3 + 128);
  v15 = *(v14 + 8);
  if (v15 == -1.0905473e16)
  {
    v15 = 0.0;
  }

  if (*(v11 + 48) != v15)
  {
    *(v11 + 48) = v15;
    addEmitFunction(v11, emitLineWidthChange);
    v14 = *(a3 + 128);
  }

  v16 = *(v14 + 2);
  if (*(v11 + 56) != v16)
  {
    *(v11 + 56) = v16;
    addEmitFunction(v11, emitLineCapChange);
    v14 = *(a3 + 128);
    v16 = *(v14 + 2);
  }

  if (*(v11 + 60) != v16 >> 8)
  {
    *(v11 + 60) = v16 >> 8;
    addEmitFunction(v11, emitLineJoinChange);
    v14 = *(a3 + 128);
  }

  v17 = *(v14 + 16);
  if (*(v11 + 64) != v17)
  {
    *(v11 + 64) = v17;
    addEmitFunction(v11, emitMiterLimitChange);
    v14 = *(a3 + 128);
  }

  PDFGStateSetLineDash(v11, *(v14 + 32));
  v13 = 1;
LABEL_20:
  v18 = *(*(a3 + 144) + 8);
  if (*(v11 + 88) != v18)
  {
    *(v11 + 88) = v18;
    addEmitFunction(v11, emitFlatnessChange);
  }

  v19 = *(*(a3 + 128) + 1);
  if (*(v11 + 96) != v19)
  {
    *(v11 + 96) = v19;
    addEmitFunction(v11, emitStrokeAdjustChange);
  }

  v20 = *(*(a3 + 120) + 4);
  if ((v20 & 0xF0000) != 0)
  {
    v21 = v20 << 12 >> 28;
  }

  else
  {
    v21 = 2;
  }

  if (*(v11 + 80) != v21)
  {
    *(v11 + 80) = v21;
    addEmitFunction(v11, emitRenderingIntentChange);
  }

  v22 = *(*(a3 + 144) + 16);
  if (*(v11 + 224) != v22)
  {
    *(v11 + 224) = v22;
    addEmitFunction(v11, emitSmoothnessChange);
  }

  v23 = *(*(a3 + 120) + 8);
  if (v12)
  {
    FillColor = CGGStateGetFillColor(a3);
    PDFGStateSetFillColor(v11, FillColor);
    if (FillColor)
    {
      if ((FillColor & 0x8000000000000000) != 0)
      {
        Alpha = CGTaggedColorGetAlpha(FillColor);
      }

      else
      {
        Alpha = *(FillColor + 8 * *(FillColor + 56) + 64);
      }
    }

    else
    {
      Alpha = 0.0;
    }

    v26 = v23 * Alpha;
    if (*(v11 + 168) != v26)
    {
      *(v11 + 168) = v26;
      addEmitFunction(v11, emitNonStrokeAlphaChange);
    }

    v27 = *(*(a3 + 144) + 24);
    if (*(v11 + 200) != v27)
    {
      *(v11 + 200) = v27;
      addEmitFunction(v11, emitNonStrokeOverprintChange);
    }

    v28 = *(a1 + 136);
    *&v38.a = *(a1 + 120);
    *&v38.c = v28;
    *&v38.tx = *(a1 + 152);
    PDFGStateSetPatternMatrix(v11, &v38, *(*(a3 + 120) + 24), *(*(a3 + 120) + 32));
  }

  if (v13)
  {
    StrokeColor = CGGStateGetStrokeColor(a3);
    PDFGStateSetStrokeColor(v11, StrokeColor);
    if (StrokeColor)
    {
      if ((StrokeColor & 0x8000000000000000) != 0)
      {
        v30 = CGTaggedColorGetAlpha(StrokeColor);
      }

      else
      {
        v30 = *(StrokeColor + 8 * *(StrokeColor + 56) + 64);
      }
    }

    else
    {
      v30 = 0.0;
    }

    v31 = v23 * v30;
    if (*(v11 + 176) != v31)
    {
      *(v11 + 176) = v31;
      addEmitFunction(v11, emitStrokeAlphaChange);
    }

    PDFGStateSetStrokeOverprint(v11, *(*(a3 + 144) + 25));
    v32 = *(a1 + 136);
    *&v38.a = *(a1 + 120);
    *&v38.c = v32;
    *&v38.tx = *(a1 + 152);
    PDFGStateSetPatternMatrix(v11, &v38, *(*(a3 + 120) + 24), *(*(a3 + 120) + 32));
  }

  PDFGStateSetOverprintMode(v11, *(*(a3 + 144) + 28));
  PDFGStateSetBlackGeneration(v11, *(*(a3 + 144) + 32));
  PDFGStateSetUndercolorRemoval(v11, *(*(a3 + 144) + 40));
  PDFGStateSetStyle(v11, *(*(a3 + 120) + 16));
  PDFGStateSetSoftMask(v11, *(*(a3 + 120) + 40));
  v33 = (*(*(a3 + 120) + 4) << 16) >> 24;
  if ((v33 - 13) >= 0xF)
  {
    v33 = 2;
  }

  if (*(v11 + 248) != v33)
  {
    *(v11 + 248) = v33;
    addEmitFunction(v11, emitBlendModeChange);
  }

  PDFWriterAnnotate(a2, "  BEGIN: synchronizing gstate.");
  PDFGStateEmit(v11);
  PDFWriterAnnotate(a2, "  END: synchronizing gstate.");
  if (a4 - 2 > 2)
  {
    PDFWriterAnnotate(a2, "  BEGIN: drawing path.");
    write_path(a2, 0, a5);
    if (a4 > 4)
    {
      PDFWriterPrintf(a2, "n");
      goto LABEL_64;
    }
  }

  else
  {
    PDFWriterAnnotate(a2, "  BEGIN: drawing path.");
    v34 = *(a3 + 56);
    v35 = *(a3 + 40);
    *&v38.a = *(a3 + 24);
    *&v38.c = v35;
    *&v38.tx = v34;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v38.a, xmmword_18439C630), vceqq_f64(v35, xmmword_18439C780))))) & 1) != 0 || v38.tx != 0.0 || v38.ty != 0.0)
    {
      PDFWriterPrintf(a2, "q %*m cm", &v38);
      v36 = v38;
      CGAffineTransformInvert(&v37, &v36);
      v38 = v37;
      write_path(a2, &v38, a5);
      PDFWriterPrintf(a2, off_1E6E05A20[a4]);
      PDFWriterPrintf(a2, "Q");
      goto LABEL_64;
    }

    write_path(a2, 0, a5);
  }

  PDFWriterPrintf(a2, off_1E6E05A20[a4]);
LABEL_64:
  PDFWriterAnnotate(a2, "  END: drawing path.");
  PDFWriterAnnotate(a2, "%s: END", "PDFWritePath");
}

void write_path(uint64_t *a1, const CGAffineTransform *a2, CGPathRef path)
{
  v15 = 0u;
  v14 = 0u;
  memset(&rect, 0, sizeof(rect));
  if (a2)
  {
    v5 = a2;
    if ((a2->b == 0.0 && a2->c == 0.0 || a2->a == 0.0 && a2->d == 0.0) && CGPathIsRect(path, &rect))
    {
      v6 = *&v5->c;
      *&v8.a = *&v5->a;
      *&v8.c = v6;
      *&v8.tx = *&v5->tx;
      rect = CGRectApplyAffineTransform(rect, &v8);
LABEL_9:
      PDFWriterPrintf(a1, "%*r re", &rect);
      return;
    }
  }

  else
  {
    if (CGPathIsRect(path, &rect))
    {
      goto LABEL_9;
    }

    v5 = &CGAffineTransformIdentity;
  }

  info = a1;
  v7 = *&v5->c;
  v11 = *&v5->a;
  v12 = v7;
  v13 = *&v5->tx;
  CGPathApply(path, &info, write_path_element);
}

void write_path_element(void *result, uint64_t a2, __n128 a3)
{
  v4 = *a2;
  if (*a2 > 1)
  {
    switch(v4)
    {
      case 2:
        v6 = *(a2 + 8);
        v7 = v6[1];
        v8 = *(result + 1);
        v9 = *(result + 2);
        v10 = *(result + 3);
        v11 = *(result + 4);
        v12 = *(result + 5);
        v13 = *(result + 6);
        v14 = v12 + v7 * v10 + v8 * *v6;
        v15 = v13 + v7 * v11 + v9 * *v6;
        v16 = v6[2];
        v17 = v6[3];
        v18 = v12 + v10 * v17 + v8 * v16;
        v19 = v13 + v11 * v17 + v9 * v16;
        PDFWriterPrintf(*result, "%f %f %f %f %f %f c", (*(result + 9) + v14 * 2.0) / 3.0, (*(result + 10) + v15 * 2.0) / 3.0, (v18 + v14 * 2.0) / 3.0, (v19 + v15 * 2.0) / 3.0, v18, v19);
        break;
      case 3:
        v20 = *(a2 + 8);
        v21 = v20[1];
        v22 = *(result + 1);
        v23 = *(result + 2);
        v24 = *(result + 3);
        v25 = *(result + 4);
        v26 = *(result + 5);
        v27 = *(result + 6);
        v28 = v26 + v21 * v24 + v22 * *v20;
        v29 = v27 + v21 * v25 + v23 * *v20;
        v30 = v20[2];
        v31 = v20[3];
        v32 = v26 + v24 * v31 + v22 * v30;
        v33 = v27 + v25 * v31 + v23 * v30;
        v34 = v20[4];
        v35 = v20[5];
        v18 = v26 + v24 * v35 + v22 * v34;
        v19 = v27 + v25 * v35 + v23 * v34;
        PDFWriterPrintf(*result, "%f %f %f %f %f %f c", v28, v29, v32, v33, v18, v19);
        break;
      case 4:
        PDFWriterPrintf(*result, "h", a3.n128_f64[0]);
        goto LABEL_13;
      default:
        return;
    }

    *(result + 9) = v18;
    *(result + 10) = v19;
    return;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v36 = vaddq_f64(*(result + 5), vmlaq_n_f64(vmulq_n_f64(*(result + 3), *(*(a2 + 8) + 8)), *(result + 1), **(a2 + 8)));
    PDFWriterPrintf(*result, "%f %f l", v36.f64[0], v36.f64[1]);
    v5 = v36;
    goto LABEL_14;
  }

  v37 = vaddq_f64(*(result + 5), vmlaq_n_f64(vmulq_n_f64(*(result + 3), *(*(a2 + 8) + 8)), *(result + 1), **(a2 + 8)));
  PDFWriterPrintf(*result, "%f %f m", v37.f64[0], v37.f64[1]);
  *(result + 7) = v37;
LABEL_13:
  v5 = *(result + 7);
LABEL_14:
  *(result + 9) = v5;
}

void PDFWriteClipPath(uint64_t *a1, uint64_t a2)
{
  ClipPath = CGClipCreateClipPath(a2);
  if (ClipPath)
  {
    v5 = ClipPath;
    write_path(a1, 0, ClipPath);
    if (*(a2 + 9) > 2)
    {
      PDFWriterPrintf(a1, "n");
    }

    else
    {
      PDFWriterPrintf(a1, off_1E6E05A08[*(a2 + 9)]);
    }

    CFRelease(v5);
  }
}

double medianDouble(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  v2 = a2 - 1;
  v3 = (a2 - 1) >> 1;
  if ((a2 - 1) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v4 + v2) >> 1;
      v7 = *(a1 + 8 * v6);
      v8 = *(a1 + 8 * v2);
      if (v7 <= v8)
      {
        v7 = *(a1 + 8 * v2);
      }

      else
      {
        *(a1 + 8 * v6) = v8;
        *(a1 + 8 * v2) = v7;
      }

      v9 = *(a1 + 8 * v4);
      if (v9 > v7)
      {
        *(a1 + 8 * v4) = v7;
        *(a1 + 8 * v2) = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = *(a1 + 8 * v6);
      if (v10 > v9)
      {
        *(a1 + 8 * v6) = v9;
        *(a1 + 8 * v4) = v10;
        v10 = *(a1 + 8 * v6);
      }

      *(a1 + 8 * v6) = *(a1 + 8 * v5);
      *(a1 + 8 * v5) = v10;
      v11 = *(a1 + 8 * v4);
      for (i = v2; ; *(a1 + 8 * i) = v13)
      {
        do
        {
          v13 = *(a1 + 8 * ++v5);
        }

        while (v13 < v11);
        do
        {
          v14 = i--;
          v15 = *(a1 + 8 * i);
        }

        while (v15 > v11);
        if (i < v5)
        {
          break;
        }

        *(a1 + 8 * v5) = v15;
      }

      *(a1 + 8 * v4) = v15;
      *(a1 + 8 * i) = v11;
      v16 = v14 - 2;
      if (i <= v3)
      {
        v4 = v5;
      }

      if (i >= v3)
      {
        v2 = v16;
      }

      v5 = v4 + 1;
    }

    while (v2 > v4 + 1);
  }

  if (v2 <= v4)
  {
    return *(a1 + 8 * v3);
  }

  v18 = *(a1 + 8 * v4);
  v19 = *(a1 + 8 * v2);
  if (v18 > v19)
  {
    *(a1 + 8 * v4) = v19;
    *(a1 + 8 * v2) = v18;
    v19 = v18;
    v18 = *(a1 + 8 * v4);
  }

  return (v18 + v19) * 0.5;
}

uint64_t compareDouble(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

CFTypeID CGColorConversionInfoGetTypeID(void)
{
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  return kCGColorConverterRuntimeID;
}

CFStringRef cg_color_conversion_info_copy_debug_description(void *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<CGColorConversionInfo %p> transform:%@ options:%@\n", a1, a1[2], a1[3]);
  }

  else
  {
    v4 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v4, 0, @"<NULL CGColorConversionInfo>");
  }
}

uint64_t cg_color_conversion_info_equal(void *cf, void *a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (CGColorConversionInfoGetTypeID_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
    }

    if (v5 != kCGColorConverterRuntimeID)
    {
      return 0;
    }

    v6 = CFGetTypeID(a2);
    if (CGColorConversionInfoGetTypeID_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
    }

    if (v6 == kCGColorConverterRuntimeID)
    {
      v7 = cf[2];
      v8 = a2[2];

      return CFEqual(v7, v8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGColorConversionInfoRef CGColorConversionInfoCreateForToneMapping(CGColorSpace *a1, CGColorSpace *a2, uint64_t a3, const void *a4, CFErrorRef *a5, float a6, float a7)
{
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a6 >= 1.0 || a6 <= 0.0)
  {
    v17 = a6;
  }

  else
  {
    v17 = 1.0;
  }

  if (a6 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  if (a7 >= 1.0 || a7 <= 0.0)
  {
    v20 = a7;
  }

  else
  {
    v20 = 1.0;
  }

  if (a7 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = CGToneMappingConstrainedHeadroomRequested(a3, a4);
  v23 = v21;
  if ((a3 - 3) <= 2)
  {
    if (v18 != 0.0 || (v23 = 1.0, v21 != 0.0))
    {
      CFStringAppendFormat(Mutable, 0, @"%s does not handle headroom; both headroom values shall be set to 0.0f", off_1E6E05B80[a3]);
      goto LABEL_39;
    }
  }

  IsSDR = CGColorSpaceIsSDR(a1);
  if (v18 == 1.0)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (!IsSDR)
  {
    v25 = v18;
  }

  if ((a3 - 3) >= 3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1.0;
  }

  v27 = CGColorSpaceIsSDR(a1);
  v28 = CGColorSpaceUsesITUR_2100TF(a2);
  if (v26 < 1.0)
  {
    CFStringAppendFormat(Mutable, 0, @"source headroom = %f is invalid", v18);
LABEL_39:
    v30 = 0;
    goto LABEL_40;
  }

  v29 = v27 && v28 && v26 == 1.0;
  if (v26 > v23)
  {
    v29 = 1;
  }

  if ((v22 | v29) != 1)
  {
    CFStringAppendFormat(Mutable, 0, @"cannot tone map from source headroom = %f to target headroom = %f", v26, v23);
    goto LABEL_39;
  }

  if (v23 < 1.0)
  {
    CFStringAppendFormat(Mutable, 0, @"target headroom = %f is invalid", v23);
    goto LABEL_39;
  }

  v45 = conversion_type(a2, a1);
  if (v45 > 4)
  {
    if (v45 <= 6)
    {
      if (v45 != 5)
      {
        v46 = verify_parameters_sdr_to_edr(a1, a2, a3, Mutable);
        goto LABEL_90;
      }

      if (!CGColorSpaceIsSDR(a2))
      {
        goto LABEL_39;
      }

      goto LABEL_85;
    }

    if (v45 == 7)
    {
      v46 = verify_parameters_sdr_to_hdr(a1, a2, a3, Mutable);
    }

    else
    {
      if (v45 != 8)
      {
        if (a1)
        {
          v47 = CFCopyDescription(a1);
        }

        else
        {
          v47 = @"NULL";
        }

        if (a2)
        {
          v48 = CFCopyDescription(a2);
        }

        else
        {
          v48 = @"NULL";
        }

        CFStringAppendFormat(Mutable, 0, @" conversion from %@ to %@ cannot be handled by tone mapping", v47, v48);
        if (v47)
        {
          CFRelease(v47);
        }

        if (v48)
        {
          CFRelease(v48);
        }

        goto LABEL_39;
      }

      v46 = verify_parameters_sdr_to_sdr(a1, a2, a3, Mutable);
    }
  }

  else
  {
    if (v45 <= 1)
    {
      if (v45)
      {
        v46 = verify_parameters_edr_to_hdr(a1, a2, a3, Mutable);
      }

      else
      {
        v46 = verify_parameters_edr_to_edr(a1, a2, a3, Mutable, v23);
      }

      goto LABEL_90;
    }

    if (v45 != 2)
    {
      if (v45 == 3)
      {
        if (!CGColorSpaceUsesExtendedRange(a2))
        {
          goto LABEL_39;
        }
      }

      else if (!CGColorSpaceUsesITUR_2100TF(a2))
      {
        goto LABEL_39;
      }

LABEL_85:
      v46 = verify_parameters_hdr_to_any(a1, a3, Mutable, v26);
      goto LABEL_90;
    }

    v46 = verify_parameters_edr_to_sdr(a1, a2, a3, Mutable, v23);
  }

LABEL_90:
  v30 = v46;
LABEL_40:
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v31 = CGImageDefaultReferenceWhite_media_white;
  v32 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v33 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v33 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v31, kCFNumberFloatType, &valuePtr);
      v32 = valuePtr;
    }
  }

  v49 = v32;
  if (a4)
  {
    v34 = CFGetTypeID(a4);
    if (v34 == CFDictionaryGetTypeID())
    {
      v35 = a3 == 2 ? @"kCGRWTMSourceReferenceWhite" : @"kCGHDRMediaReferenceWhite";
      Value = CFDictionaryGetValue(a4, v35);
      if (Value)
      {
        v37 = Value;
        v38 = CFGetTypeID(Value);
        if (v38 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v37, kCFNumberFloatType, &v49);
          v32 = v49;
        }
      }
    }
  }

  if (v30)
  {
    OptionsForToneMapping = CGColorConversionInfoCreateOptionsForToneMapping(a3, a2, a1, a4, Mutable, v21, v18, v32);
    if (OptionsForToneMapping)
    {
      v40 = OptionsForToneMapping;
      if (CFDictionaryContainsKey(OptionsForToneMapping, @"kCGColorConversionInfoOptionsFailed"))
      {
        if (a3 >= 6)
        {
          _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
        }

        CFStringAppendFormat(Mutable, 0, @"failed to create valid options for tone mapping method %s", off_1E6E05B80[a3]);
        handle_error(Mutable, a5, a1, a2, a3, a4, v18, v21);
        v41 = 0;
      }

      else
      {
        v43 = CFDictionaryGetValue(v40, @"kCGColorConversionInfoOptions");
        v41 = CGColorConversionInfoCreateFromList(v43, a1, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a2, 1, 0, 0);
      }

      CFRelease(v40);
    }

    else
    {
      v41 = CGColorConversionInfoCreateFromList(0, a1, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a2, 1, 0, 0);
    }
  }

  else
  {
    v42 = CFStringCreateMutable(v14, 0);
    CFStringAppendFormat(v42, 0, @"invalid parameters: %@", Mutable);
    handle_error(v42, a5, a1, a2, a3, a4, v18, v21);
    if (v42)
    {
      CFRelease(v42);
    }

    v41 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v41;
}

CFDictionaryRef create_new_transform_options(CFDictionaryRef theDict)
{
  v1 = theDict;
  v11[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    theDict = CFDictionaryGetCount(theDict);
    v2 = theDict;
  }

  else
  {
    v2 = 0;
  }

  if (create_3DLUT_for_PQEETF_predicate != -1)
  {
    dispatch_once(&create_3DLUT_for_PQEETF_predicate, &__block_literal_global_98);
  }

  v3 = create_3DLUT_for_PQEETF_status;
  if (create_3DLUT_for_HLG_SceneReferredMapping_predicate != -1)
  {
    dispatch_once(&create_3DLUT_for_HLG_SceneReferredMapping_predicate, &__block_literal_global_102_1199);
  }

  v4 = 8 * (v2 + create_3DLUT_for_HLG_SceneReferredMapping_status + v3);
  MEMORY[0x1EEE9AC00](theDict);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v11 - v5;
  if (v4 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v4;
  }

  bzero(v11 - v5, v7);
  MEMORY[0x1EEE9AC00](v8);
  v9 = v11 - v5;
  bzero(v11 - v5, v7);
  if (!v1 || (CFDictionaryGetKeysAndValues(v1, (v11 - v5), (v11 - v5)), !CFDictionaryContainsKey(v1, @"kCGPQEETF3DLut")))
  {
    if (create_3DLUT_for_PQEETF_predicate != -1)
    {
      dispatch_once(&create_3DLUT_for_PQEETF_predicate, &__block_literal_global_98);
    }

    if (create_3DLUT_for_PQEETF_status == 1)
    {
      *&v6[8 * v2] = @"kCGPQEETF3DLut";
      *&v9[8 * v2++] = *MEMORY[0x1E695E4D0];
    }

    if (!v1)
    {
      goto LABEL_19;
    }
  }

  if (!CFDictionaryContainsKey(v1, @"kCGPQEETF3DLut"))
  {
LABEL_19:
    if (create_3DLUT_for_HLG_SceneReferredMapping_predicate != -1)
    {
      dispatch_once(&create_3DLUT_for_HLG_SceneReferredMapping_predicate, &__block_literal_global_102_1199);
    }

    if (create_3DLUT_for_HLG_SceneReferredMapping_status == 1)
    {
      *&v6[8 * v2] = @"kCGHLGSceneMapping3DLut";
      *&v9[8 * v2++] = *MEMORY[0x1E695E4D0];
    }
  }

  return CFDictionaryCreate(0, (v11 - v5), (v11 - v5), v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

void modify(const __CFDictionary *a1, __CFArray *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (CFDictionaryGetValue(a1, @"com.apple.cmm.ExtendedRange") == *MEMORY[0x1E695E4C0])
  {
    Count = CFDictionaryGetCount(a1);
    MEMORY[0x1EEE9AC00](Count);
    v5 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (v16 - v5);
    if ((8 * Count) >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = 8 * Count;
    }

    bzero(v16 - v5, v7);
    MEMORY[0x1EEE9AC00](v8);
    v9 = (v16 - v5);
    bzero(v16 - v5, v7);
    CFDictionaryGetKeysAndValues(a1, (v16 - v5), (v16 - v5));
    if (Count >= 1)
    {
      v10 = *MEMORY[0x1E695E4D0];
      v11 = (v16 - v5);
      v12 = v9;
      v13 = Count;
      do
      {
        if (CFEqual(*v11, @"com.apple.cmm.ExtendedRange"))
        {
          *v12 = v10;
        }

        ++v12;
        ++v11;
        --v13;
      }

      while (v13);
    }

    v14 = CFDictionaryCreate(0, v6, v9, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v14)
    {
      v15 = v14;
      CFArrayAppendValue(a2, v14);
      CFRelease(v15);
    }
  }

  else
  {

    CFArrayAppendValue(a2, a1);
  }
}

uint64_t conversion_type(CGColorSpace *cf, void *a2)
{
  v3 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v4 == CGColorSpaceGetTypeID_type_id)
    {
      v5 = CGColorSpaceUsesExtendedRange(v3);
      v6 = CGColorSpaceUsesITUR_2100TF(v3);
      LODWORD(v3) = CGColorSpaceIsSDR(v3);
      v7 = !v5;
      v8 = !v6;
      if (!a2)
      {
        return 9;
      }

      goto LABEL_9;
    }

    LODWORD(v3) = 0;
  }

  v7 = 1;
  v8 = 1;
  if (!a2)
  {
    return 9;
  }

LABEL_9:
  v9 = CFGetTypeID(a2);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v9 != CGColorSpaceGetTypeID_type_id)
  {
    return 9;
  }

  v10 = CGColorSpaceUsesExtendedRange(a2);
  v11 = CGColorSpaceUsesITUR_2100TF(a2);
  IsSDR = CGColorSpaceIsSDR(a2);
  v13 = !v10;
  if (((!v10 | v7) & 1) == 0)
  {
    return 0;
  }

  if (((v13 | v8) & 1) == 0)
  {
    return 1;
  }

  if (((v13 | v3 ^ 1) & 1) == 0)
  {
    return 2;
  }

  v14 = !v11;
  if (((!v11 | v7) & 1) == 0)
  {
    return 3;
  }

  if (((v14 | v8) & 1) == 0)
  {
    return 4;
  }

  if (((v14 | v3 ^ 1) & 1) == 0)
  {
    return 5;
  }

  v15 = IsSDR;
  if (!(v7 & 1 | !IsSDR))
  {
    return 6;
  }

  v16 = v3 ? 8 : 9;
  result = v8 ? v16 : 7;
  if (!v15)
  {
    return 9;
  }

  return result;
}

BOOL verify_parameters_edr_to_edr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4, float a5)
{
  result = CGColorSpaceUsesExtendedRange(a1);
  if (result)
  {
    result = CGColorSpaceUsesExtendedRange(a2);
    if (result)
    {
      if (!a3)
      {
        return 1;
      }

      for (i = 4u; i != 16; i += 4)
      {
        v11 = *(&unk_18439D030 + i);
        if (v11 == a3)
        {
          if (a5 == 1.0 || a3 != 4)
          {
            return 1;
          }

          CFStringAppendFormat(a4, 0, @"target headroom for kCGToneMappingEXRGamma must be equal 1.0");
          return 0;
        }
      }

      if (a3 >= 6)
      {
        _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
      }

      CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
      return 0;
    }
  }

  return result;
}

BOOL verify_parameters_edr_to_hdr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4)
{
  result = CGColorSpaceUsesExtendedRange(a1);
  if (result)
  {
    result = CGColorSpaceUsesITUR_2100TF(a2);
    if (result)
    {
      if (a3 > 5 || (result = 1, ((1 << a3) & 0x25) == 0))
      {
        if (a3 >= 6)
        {
          _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
        }

        CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
        return 0;
      }
    }
  }

  return result;
}

BOOL verify_parameters_edr_to_sdr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4, float a5)
{
  result = CGColorSpaceUsesExtendedRange(a1);
  if (result)
  {
    result = CGColorSpaceIsSDR(a2);
    if (result)
    {
      if (a5 == 1.0)
      {
        if (!a3)
        {
          return 1;
        }

        for (i = 4u; i != 16; i += 4)
        {
          v11 = *(&unk_18439D030 + i);
          if (v11 == a3)
          {
            return 1;
          }
        }

        if (a3 >= 6)
        {
          _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
        }

        CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
      }

      else
      {
        CFStringAppendFormat(a4, 0, @"incorrect target headroom %f for EDR to SDR", a5);
      }

      return 0;
    }
  }

  return result;
}

BOOL verify_parameters_hdr_to_any(CGColorSpace *a1, unsigned int a2, __CFString *a3, float a4)
{
  result = CGColorSpaceUsesITUR_2100TF(a1);
  if (result)
  {
    if (a2)
    {
      v9 = 0;
      do
      {
        if (v9 == 16)
        {
          if (a2 >= 6)
          {
            _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
          }

          CFStringAppendFormat(a3, 0, @"incorrect method %s", off_1E6E05B80[a2]);
          return 0;
        }

        v10 = *(&unk_18446E418 + v9 + 4);
        v9 += 4;
      }

      while (v10 != a2);
      if (a2 != 1)
      {
        return 1;
      }

      if (CGColorSpaceContainsFlexGTCInfo(a1))
      {
        HeadroomInfo = CGColorSpaceGetHeadroomInfo(a1, 0);
        if (vabds_f32(HeadroomInfo, a4) <= 0.00001)
        {
          return 1;
        }

        CFStringAppendFormat(a3, 0, @"source headroom %f does not match luma scaling information %f", a4, HeadroomInfo);
      }

      else
      {
        CFStringAppendFormat(a3, 0, @"source color space does not contain luma scaling information");
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL verify_parameters_sdr_to_edr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4)
{
  result = CGColorSpaceIsSDR(a1);
  if (result)
  {
    result = CGColorSpaceUsesExtendedRange(a2);
    if (result)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8;
        if (dword_18439DA48[v9] == a3)
        {
          return 1;
        }

        v8 = 1;
        v9 = 1;
      }

      while ((v10 & 1) == 0);
      if (a3 >= 6)
      {
        _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
      }

      CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
      return 0;
    }
  }

  return result;
}

BOOL verify_parameters_sdr_to_hdr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4)
{
  result = CGColorSpaceIsSDR(a1);
  if (result)
  {
    result = CGColorSpaceUsesITUR_2100TF(a2);
    if (result)
    {
      if (a3 > 5 || (result = 1, ((1 << a3) & 0x29) == 0))
      {
        if (a3 >= 6)
        {
          _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
        }

        CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
        return 0;
      }
    }
  }

  return result;
}

BOOL verify_parameters_sdr_to_sdr(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, __CFString *a4)
{
  result = CGColorSpaceIsSDR(a1);
  if (result)
  {
    result = CGColorSpaceIsSDR(a2);
    if (result)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8;
        if (dword_18439DA48[v9] == a3)
        {
          return 1;
        }

        v8 = 1;
        v9 = 1;
      }

      while ((v10 & 1) == 0);
      if (a3 >= 6)
      {
        _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
      }

      CFStringAppendFormat(a4, 0, @"incorrect method %s", off_1E6E05B80[a3]);
      return 0;
    }
  }

  return result;
}

void *CGColorConversionInfoCreateOptionsForToneMapping(uint64_t a1, CGColorSpace *a2, void *a3, const __CFDictionary *a4, CFMutableStringRef theString, float a6, float a7, float a8)
{
  if (!a2)
  {
    CFStringAppendFormat(theString, 0, @"target color space is NULL", a4);
    return 0;
  }

  theDict = 0;
  v8 = CGCreateResolvedToneMappingSettingForMethod(a1, a2, a3, a4, theString, &theDict, a6, a7, a8);
  v9 = v8;
  v10 = 0;
  if (v8 && theDict)
  {
    if (CFDictionaryGetCount(theDict) < 1)
    {
      v10 = 0;
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    values = theDict;
    keys = @"kCGColorConversionInfoOptions";
    v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if ((v9 & 1) == 0)
  {
LABEL_7:
    if (CGColorConversionInfoCreateOptionsForToneMapping_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoCreateOptionsForToneMapping_predicate, &__block_literal_global_50);
    }

    if (CGColorConversionInfoCreateOptionsForToneMapping_bad_color_conversion_info_options)
    {
      v10 = CFRetain(CGColorConversionInfoCreateOptionsForToneMapping_bad_color_conversion_info_options);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_14:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v10;
}

void handle_error(uint64_t a1, CFErrorRef *a2, const void *a3, const void *a4, unsigned int a5, const void *a6, float a7, float a8)
{
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return;
  }

  v18 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"\n%@\n", a1);
  v19 = CFCopyDescription(a3);
  v20 = CFCopyDescription(a4);
  if (a6)
  {
    v21 = CFCopyDescription(a6);
  }

  else
  {
    v21 = @"<NULL>";
  }

  CFStringAppendFormat(v18, 0, @"parameters:\n");
  if (a5 >= 6)
  {
    _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
  }

  CFStringAppendFormat(v18, 0, @"\tmethod: %s\n", off_1E6E05B80[a5]);
  CFStringAppendFormat(v18, 0, @"\tsource: %@\n", v19);
  CFStringAppendFormat(v18, 0, @"\tsource headroom: %f\n", a7);
  CFStringAppendFormat(v18, 0, @"\ttarget: %@\n", v20);
  CFStringAppendFormat(v18, 0, @"\ttarget headroom: %f\n", a8);
  CFStringAppendFormat(v18, 0, @"\toptions:\n\t\t %@\n", v21);
  if (a2)
  {
    v22 = *MEMORY[0x1E695E620];
    values = v18;
    keys = v22;
    v23 = CFDictionaryCreate(v16, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a2 = CFErrorCreate(v16, @"CGColorConversionInfoCreateForToneMapping", -1, v23);
    if (v23)
    {
      CFRelease(v23);
    }

    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __sprintf_chk(handle_error_message, 0, 0x401uLL, "CGColorConversionInfoCreateForToneMapping failed: ");
    v24 = strlen(handle_error_message);
    Length = CFStringGetLength(v18);
    if (!CFStringGetCString(v18, &handle_error_message[v24], 1024 - v24, 0x8000100u))
    {
      v28.location = 0;
      v28.length = Length;
      CFStringGetBytes(v18, v28, 0x600u, 0x3Fu, 0, &handle_error_message[v24], 1024 - v24, 0);
    }

    handle_error_message[strlen(handle_error_message)] = 0;
    CGPostError("%s", handle_error_message);
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  CFRelease(v19);
LABEL_11:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  CFRelease(v18);
}

uint64_t CGCreateResolvedToneMappingSettingForMethod(uint64_t a1, CGColorSpace *a2, void *a3, const __CFDictionary *a4, __CFString *a5, const __CFDictionary **a6, float a7, float a8, float a9)
{
  v12 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v13 = 1.0;
  if (a7 >= 1.0 || a7 <= 0.0)
  {
    v15 = a7;
  }

  else
  {
    v15 = 1.0;
  }

  if (a7 >= 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  if (a8 >= 1.0 || a8 <= 0.0)
  {
    v13 = a8;
  }

  if (a8 >= 0.0)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = CGCreateToneMappingSettingForMethod(a1, a2, a3, a5, a6, v16, v18, a9);
  v20 = v19;
  if (!a4 || !v19)
  {
    goto LABEL_36;
  }

  Mutable = *a6;
  if (!*a6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a6 = Mutable;
  }

  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        if (add_options_for_image_specific_luma_scaling(Mutable, a4, a5))
        {
          return 1;
        }

        goto LABEL_54;
      }

      if (v12 == 2)
      {
        if ((add_options_for_reference_white_based(Mutable, a4, a5) & 1) == 0)
        {
          goto LABEL_54;
        }

        return 1;
      }

LABEL_36:
      if (v20)
      {
        return 1;
      }

LABEL_54:
      if (a5)
      {
        if (v12 >= 6)
        {
LABEL_58:
          _CGHandleAssert("method_name", 553, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "false", "CGToneMapping name unkonwn");
        }

        goto LABEL_78;
      }

      if (v12 >= 6)
      {
        goto LABEL_58;
      }

LABEL_80:
      CGPostError("Resolving options for tone mapping method %s failed", off_1E6E05B80[v12]);
      return 0;
    }

    v24 = CFGetTypeID(a4);
    if (v24 == CFDictionaryGetTypeID())
    {
      if (!Mutable)
      {
        return 1;
      }

      if (CFDictionaryGetValue(Mutable, @"kCGApplyReferenceWhiteToneMapping"))
      {
        if (add_options_for_reference_white_based(Mutable, a4, a5))
        {
          return 1;
        }
      }

      else if (CFDictionaryContainsKey(Mutable, @"kCGApplyFlexLumaScaling") == 1 && (!CFDictionaryGetValue(Mutable, @"kCGApplyFlexLumaScaling") || (add_options_for_image_specific_luma_scaling(Mutable, a4, a5) & 1) != 0))
      {
        return 1;
      }
    }

    if (!a5)
    {
      CGPostError("Incorrect options for 'kCGToneMappingDefault'");
      goto LABEL_80;
    }

    CFStringAppendFormat(a5, 0, @"Incorrect options for 'kCGToneMappingDefault'");
LABEL_78:
    CFStringAppendFormat(a5, 0, @"Resolving options for tone mapping method %s failed\n", off_1E6E05B80[v12]);
    return 0;
  }

  if (v12 != 3)
  {
    if (v12 != 4)
    {
      if (v12 != 5)
      {
        goto LABEL_36;
      }

      v22 = CFGetTypeID(a4);
      if (v22 == CFDictionaryGetTypeID() && !CFDictionaryGetCount(a4))
      {
        return 1;
      }

      if (!a5)
      {
        CGPostError("No options are accepted for 'kCGToneMappingNone'");
        goto LABEL_80;
      }

      CFStringAppendFormat(a5, 0, @"No options are accepted for 'kCGToneMappingNone'");
      goto LABEL_78;
    }

    v56 = @"kCGEXRToneMappingGammaDefog";
    v57 = @"kCGEXRToneMappingGammaExposure";
    v58 = @"kCGEXRToneMappingGammaKneeLow";
    v59 = @"kCGEXRToneMappingGammaKneeHigh";
    if (!verify_options_dictionary(a4, &v56, 4))
    {
      if (!a5)
      {
        CGPostError("Unkonwn options for 'kCGToneMappingEXRGamma'");
        goto LABEL_80;
      }

      CFStringAppendFormat(a5, 0, @"Unkonwn options for 'kCGToneMappingEXRGamma'");
      goto LABEL_78;
    }

    if (!Mutable)
    {
      return 1;
    }

    Value = CFDictionaryGetValue(Mutable, @"kCGImageExtendedRangeToneMappingInfo");
    if (!Value)
    {
      return 1;
    }

    v37 = Value;
    v38 = CFGetTypeID(Value);
    if (v38 != CFDictionaryGetTypeID())
    {
      return 1;
    }

    v39 = CFDictionaryGetValue(v37, @"kCGApplyEXRToneMappingGamma");
    if (v39 && (v40 = v39, v41 = CFGetTypeID(v39), v41 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v40);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v43 = MutableCopy;
    if (MutableCopy)
    {
      v44 = CFDictionaryGetValue(a4, @"kCGEXRToneMappingGammaDefog");
      if (v44)
      {
        v45 = v44;
        v46 = CFGetTypeID(v44);
        if (v46 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v43, @"kCGEXRToneMappingGammaDefog", v45);
        }
      }

      v47 = CFDictionaryGetValue(a4, @"kCGEXRToneMappingGammaExposure");
      if (v47)
      {
        v48 = v47;
        v49 = CFGetTypeID(v47);
        if (v49 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v43, @"kCGEXRToneMappingGammaExposure", v48);
        }
      }

      v50 = CFDictionaryGetValue(a4, @"kCGEXRToneMappingGammaKneeLow");
      if (v50)
      {
        v51 = v50;
        v52 = CFGetTypeID(v50);
        if (v52 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v43, @"kCGEXRToneMappingGammaKneeLow", v51);
        }
      }

      v53 = CFDictionaryGetValue(a4, @"kCGEXRToneMappingGammaKneeHigh");
      if (v53)
      {
        v54 = v53;
        v55 = CFGetTypeID(v53);
        if (v55 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v43, @"kCGEXRToneMappingGammaKneeHigh", v54);
        }
      }

      CFDictionarySetValue(v37, @"kCGApplyEXRToneMappingGamma", v43);
      CFRelease(v43);
      return 1;
    }

    v33 = @"kCGApplyEXRToneMappingGamma";
    v34 = v37;
    v35 = 0;
LABEL_52:
    CFDictionarySetValue(v34, v33, v35);
    return 1;
  }

  v56 = @"kCGUse100nitsHLGOOTF";
  v57 = @"kCGUseBT1886ForCoreVideoGamma";
  v58 = @"kCGSkipBoostToHDR";
  v59 = @"kCGUseLegacyHDREcosystem";
  if (!verify_options_dictionary(a4, &v56, 4))
  {
    if (!a5)
    {
      CGPostError("Unkonwn options for 'kCGToneMappingITURecommended'");
      goto LABEL_80;
    }

    CFStringAppendFormat(a5, 0, @"Unkonwn options for 'kCGToneMappingITURecommended'");
    goto LABEL_78;
  }

  v25 = CFDictionaryGetValue(a4, @"kCGUse100nitsHLGOOTF");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    TypeID = CFBooleanGetTypeID();
    if (Mutable)
    {
      if (v27 == TypeID)
      {
        CFDictionarySetValue(Mutable, @"kCGUse100nitsHLGOOTF", v26);
      }
    }
  }

  v29 = CFDictionaryGetValue(a4, @"kCGUseBT1886ForCoreVideoGamma");
  if (!v29)
  {
    return 1;
  }

  v30 = v29;
  v31 = CFGetTypeID(v29);
  v32 = CFBooleanGetTypeID();
  result = 1;
  if (Mutable && v31 == v32)
  {
    v33 = @"kCGUseBT1886ForCoreVideoGamma";
    v34 = Mutable;
    v35 = v30;
    goto LABEL_52;
  }

  return result;
}

CFDictionaryRef __CGColorConversionInfoCreateOptionsForToneMapping_block_invoke()
{
  v1 = *MEMORY[0x1E695E4D0];
  keys = @"kCGColorConversionInfoOptionsFailed";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGColorConversionInfoCreateOptionsForToneMapping_bad_color_conversion_info_options = result;
  return result;
}

uint64_t CGCreateToneMappingSettingForMethod(uint64_t a1, CGColorSpaceRef space, void *a3, __CFString *a4, __CFDictionary **a5, float a6, float a7, float a8)
{
  if (!a5)
  {
    _CGHandleAssert("CGCreateToneMappingSettingForMethod", 1522, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "settings != NULL", "settings == NULL");
  }

  v15 = a1;
  *a5 = 0;
  if (!CGColorSpaceSupportsOutput(space))
  {
    v18 = "Target color space does not support output";
LABEL_9:
    report_error(a4, v18);
    return 0;
  }

  if (v15)
  {
    v16 = v15 - 3;
    if (a6 >= 1.0)
    {
      if (!space)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v16 > 2 || !space)
      {
        return result;
      }
    }

    v19 = CFGetTypeID(space);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      v24 = v19;
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
      v19 = v24;
    }

    result = 0;
    if (a3 && v19 == CGColorSpaceGetTypeID_type_id)
    {
      v20 = CFGetTypeID(a3);
      if (kCGColorSpace_block_invoke_once != -1)
      {
        v25 = v20;
        dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
        v20 = v25;
      }

      if (v20 != CGColorSpaceGetTypeID_type_id)
      {
        return 0;
      }

      v21 = conversion_type(space, a3);
      if (v21 <= 4)
      {
        if (v21 <= 1)
        {
          if (v21)
          {

            return settings_edr_to_hdr(v15, space, a3, a5, a6, a7, a8);
          }

          else
          {

            return settings_edr_to_edr(v15, space, a3, a5, a6, a7, a8);
          }
        }

        else if (v21 == 2)
        {

          return settings_edr_to_sdr(v15, space, a3, a5, a6, a7, a8);
        }

        else if (v21 == 3)
        {

          return settings_hdr_to_edr(v15, space, a3, a5, a6, a7, a8);
        }

        else
        {

          return settings_hdr_to_hdr(v15, space, a3, a5, a6, a7, a8);
        }
      }

      if (v21 <= 6)
      {
        if (v21 != 5)
        {
          v18 = "SDR to EDR is not handled by CGCreateToneMappingSettingForMethod";
          goto LABEL_9;
        }

        if (a6 == 0.0)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = a6;
        }

        if (v16 >= 3 && v22 != 1.0)
        {
          v18 = "Target headroom for SDR target space mustb be equal 1.0";
          goto LABEL_9;
        }

        return settings_hdr_to_sdr(v15, space, a3, a5, v22, a7, a8);
      }

      else
      {
        if (v21 == 7)
        {
          if (a7 == 0.0)
          {
            v23 = 1.0;
          }

          else
          {
            v23 = a7;
          }

          if (v16 < 3 || v23 == 1.0)
          {
            default_settings_sdr_to_hdr(v15, space, a3, v23);
            return 1;
          }

          v18 = "Source headroom for SDR source space mustb be equal 1.0";
          goto LABEL_9;
        }

        if (v21 == 8)
        {
          v18 = "SDR to SDR is not handled by CGCreateToneMappingSettingForMethod";
          goto LABEL_9;
        }

        if (CGColorSpaceIsSDR(space) || CGColorSpaceUsesExtendedRange(space) || (result = CGColorSpaceUsesITUR_2100TF(space), result))
        {
          if (CGColorSpaceIsSDR(a3) || CGColorSpaceUsesExtendedRange(a3) || (result = CGColorSpaceUsesITUR_2100TF(a3), result))
          {
            _CGHandleAssert("CGCreateToneMappingSettingForMethod", 1631, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "(CGColorSpaceIsSDR(target_space) == false && CGColorSpaceUsesExtendedRange(target_space) == false && CGColorSpaceUsesITUR_2100TF(target_space) == false) || (CGColorSpaceIsSDR(source_space) == false && CGColorSpaceUsesExtendedRange(source_space) == false && CGColorSpaceUsesITUR_2100TF(source_space) == false)", "color spaces are not unknown");
          }
        }
      }
    }
  }

  else
  {

    return CGCreateSettingsForDefaultToneMapping(space, a3, a5, a6, a7, a8);
  }

  return result;
}

uint64_t add_options_for_reference_white_based(const __CFDictionary *a1, const __CFDictionary *a2, __CFString *a3)
{
  valuePtr[18] = *MEMORY[0x1E69E9840];
  valuePtr[0] = @"kCGRWTMSourcePeak";
  valuePtr[1] = @"kCGRWTMSourceReferenceWhite";
  valuePtr[2] = @"kCGRWTMEDRHeadroom";
  valuePtr[3] = @"kCGRWTMTargetReferenceWhiteBase";
  valuePtr[4] = @"kCGRWTMReferenceWhiteThreshold";
  valuePtr[5] = @"kCGRWTMVersion";
  valuePtr[6] = @"kCGContentEDRStrength";
  valuePtr[7] = @"kCGContentAverageLightLevelNits";
  valuePtr[8] = @"kCGContentAverageLightLevel";
  valuePtr[9] = @"kCGConstrainedDynamicRange";
  valuePtr[10] = @"kCGPreferredDynamicRange";
  valuePtr[11] = @"kCGTargetDynamicRange";
  valuePtr[12] = @"kCGRWTMPrimaries";
  valuePtr[13] = @"kCGRWTMMinimumSDRExposure";
  valuePtr[14] = @"kCGRWTMOffsetAnchor";
  valuePtr[15] = @"kCGRWTMHighlightsTradeOffRatio";
  valuePtr[16] = @"kCGRWTMMinimumGammaAdjustment";
  valuePtr[17] = @"kCGRWTMStopAnchor";
  if (!verify_options_dictionary(a2, valuePtr, 18))
  {
LABEL_6:
    if (a3)
    {
      CFStringAppendFormat(a3, 0, @"Unsupported options for 'kCGToneMappingReferenceWhiteBased'");
    }

    else
    {
      CGPostError("Unsupported options for 'kCGToneMappingReferenceWhiteBased'");
    }

    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"kCGPreferredDynamicRange");
  if (Value)
  {
    v7 = Value;
    if (!CFEqual(Value, @"kCGDynamicRangeHigh") && !CFEqual(v7, @"kCGDynamicRangeConstrained") && !CFEqual(v7, @"kCGDynamicRangeStandard"))
    {
      goto LABEL_6;
    }
  }

  else
  {
    CFDictionaryGetValue(a2, @"kCGTargetDynamicRange");
  }

  result = CFDictionaryGetValue(a1, @"kCGApplyReferenceWhiteToneMapping");
  if (result)
  {
    v9 = result;
    result = CGAddPreferredDynamicRangeOptions(a2, result);
    if (result)
    {
      v10 = CFDictionaryGetValue(a2, @"kCGRWTMSourcePeak");
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = CFGetTypeID(v11);
          TypeID = CFNumberGetTypeID();
          v15 = 0;
          if (v13 == TypeID)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v11, kCFNumberFloatType, valuePtr);
            v15 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v15;
          v16 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v16)
          {
            v17 = v16;
            CFDictionarySetValue(v9, @"kCGRWTMSourcePeak", v16);
            CFRelease(v17);
          }
        }
      }

      v18 = CFDictionaryGetValue(a2, @"kCGRWTMSourceReferenceWhite");
      v19 = 0.0;
      if (v18)
      {
        v20 = v18;
        v21 = CFGetTypeID(v18);
        if (v21 == CFNumberGetTypeID())
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v20, kCFNumberFloatType, valuePtr);
            v19 = *valuePtr;
          }

          *valuePtr = v19;
          v23 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v23)
          {
            v24 = v23;
            CFDictionarySetValue(v9, @"kCGRWTMSourceReferenceWhite", v23);
            CFRelease(v24);
          }
        }
      }

      v25 = CFDictionaryGetValue(a2, @"kCGRWTMEDRHeadroom");
      if (v25)
      {
        v26 = v25;
        v27 = CFGetTypeID(v25);
        if (v27 == CFNumberGetTypeID())
        {
          v28 = CFGetTypeID(v26);
          v29 = CFNumberGetTypeID();
          v30 = 0;
          if (v28 == v29)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v26, kCFNumberFloatType, valuePtr);
            v30 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v30;
          v31 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v31)
          {
            v32 = v31;
            CFDictionarySetValue(v9, @"kCGRWTMEDRHeadroom", v31);
            CFRelease(v32);
          }
        }
      }

      v33 = CFDictionaryGetValue(a2, @"kCGRWTMTargetReferenceWhiteBase");
      if (v33)
      {
        v34 = v33;
        v35 = CFGetTypeID(v33);
        if (v35 == CFNumberGetTypeID())
        {
          v36 = CFGetTypeID(v34);
          v37 = CFNumberGetTypeID();
          v38 = 0;
          if (v36 == v37)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v34, kCFNumberFloatType, valuePtr);
            v38 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v38;
          v39 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v39)
          {
            v40 = v39;
            CFDictionarySetValue(v9, @"kCGRWTMTargetReferenceWhiteBase", v39);
            CFRelease(v40);
          }
        }
      }

      v41 = CFDictionaryGetValue(a2, @"kCGRWTMReferenceWhiteThreshold");
      if (v41)
      {
        v42 = v41;
        v43 = CFGetTypeID(v41);
        if (v43 == CFNumberGetTypeID())
        {
          v44 = CFGetTypeID(v42);
          v45 = CFNumberGetTypeID();
          v46 = 0;
          if (v44 == v45)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v42, kCFNumberFloatType, valuePtr);
            v46 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v46;
          v47 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v47)
          {
            v48 = v47;
            CFDictionarySetValue(v9, @"kCGRWTMReferenceWhiteThreshold", v47);
            CFRelease(v48);
          }
        }
      }

      v49 = CFDictionaryGetValue(a2, @"kCGRWTMVersion");
      if (v49)
      {
        v50 = v49;
        v51 = CFGetTypeID(v49);
        if (v51 == CFNumberGetTypeID())
        {
          v52 = CFGetTypeID(v50);
          if (v52 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v50, kCFNumberIntType, valuePtr);
            v53 = valuePtr[0];
          }

          else
          {
            v53 = 0;
          }

          LODWORD(valuePtr[0]) = v53;
          v54 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
          if (v54)
          {
            v55 = v54;
            CFDictionarySetValue(v9, @"kCGRWTMVersion", v54);
            CFRelease(v55);
          }
        }
      }

      v56 = CFDictionaryGetValue(a2, @"kCGContentEDRStrength");
      if (v56)
      {
        v57 = v56;
        v58 = CFGetTypeID(v56);
        if (v58 == CFNumberGetTypeID())
        {
          v59 = CFGetTypeID(v57);
          v60 = CFNumberGetTypeID();
          v61 = 0;
          if (v59 == v60)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v57, kCFNumberFloatType, valuePtr);
            v61 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v61;
          v62 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v62)
          {
            v63 = v62;
            CFDictionarySetValue(v9, @"kCGContentEDRStrength", v62);
            CFRelease(v63);
          }
        }
      }

      v64 = CFDictionaryGetValue(a2, @"kCGContentAverageLightLevel");
      if (v64)
      {
        v65 = v64;
        v66 = CFGetTypeID(v64);
        if (v66 == CFNumberGetTypeID())
        {
          v67 = CFGetTypeID(v65);
          v68 = 0.0;
          if (v67 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v65, kCFNumberFloatType, valuePtr);
            v68 = *valuePtr;
          }

          if (v19 == 0.0)
          {
            if (CGImageDefaultReferenceWhite_once != -1)
            {
              dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
            }

            v69 = CGImageDefaultReferenceWhite_media_white;
            v19 = 0.0;
            if (CGImageDefaultReferenceWhite_media_white)
            {
              v70 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
              if (v70 == CFNumberGetTypeID())
              {
                LODWORD(valuePtr[0]) = 0;
                CFNumberGetValue(v69, kCFNumberFloatType, valuePtr);
                v19 = *valuePtr;
              }
            }
          }

          LODWORD(valuePtr[0]) = vcvtas_u32_f32(v68 / v19);
          v71 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
          if (v71)
          {
            v72 = v71;
            CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v71);
            CFRelease(v72);
          }
        }
      }

      v73 = CFDictionaryGetValue(a2, @"kCGContentAverageLightLevelNits");
      if (v73)
      {
        v74 = v73;
        v75 = CFGetTypeID(v73);
        if (v75 == CFNumberGetTypeID())
        {
          v76 = CFGetTypeID(v74);
          if (v76 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v74, kCFNumberIntType, valuePtr);
            v77 = valuePtr[0];
          }

          else
          {
            v77 = 0;
          }

          LODWORD(valuePtr[0]) = v77;
          v78 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
          if (v78)
          {
            v79 = v78;
            CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v78);
            CFRelease(v79);
          }
        }
      }

      v80 = CFDictionaryGetValue(a2, @"kCGConstrainedDynamicRange");
      if (v80)
      {
        v81 = v80;
        v82 = CFGetTypeID(v80);
        if (v82 == CFNumberGetTypeID())
        {
          v83 = CFGetTypeID(v81);
          v84 = CFNumberGetTypeID();
          v85 = 0;
          if (v83 == v84)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v81, kCFNumberFloatType, valuePtr);
            v85 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v85;
          v86 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v86)
          {
            v87 = v86;
            CFDictionarySetValue(v9, @"kCGConstrainedDynamicRange", v86);
            CFRelease(v87);
          }
        }
      }

      v88 = CFDictionaryGetValue(a2, @"kCGRWTMMinimumSDRExposure");
      if (v88)
      {
        v89 = v88;
        v90 = CFGetTypeID(v88);
        if (v90 == CFNumberGetTypeID())
        {
          v91 = CFGetTypeID(v89);
          v92 = CFNumberGetTypeID();
          v93 = 0;
          if (v91 == v92)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v89, kCFNumberFloatType, valuePtr);
            v93 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v93;
          v94 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v94)
          {
            v95 = v94;
            CFDictionarySetValue(v9, @"kCGRWTMMinimumSDRExposure", v94);
            CFRelease(v95);
          }
        }
      }

      v96 = CFDictionaryGetValue(a2, @"kCGRWTMOffsetAnchor");
      if (v96)
      {
        v97 = v96;
        v98 = CFGetTypeID(v96);
        if (v98 == CFNumberGetTypeID())
        {
          v99 = CFGetTypeID(v97);
          v100 = CFNumberGetTypeID();
          v101 = 0;
          if (v99 == v100)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v97, kCFNumberFloatType, valuePtr);
            v101 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v101;
          v102 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v102)
          {
            v103 = v102;
            CFDictionarySetValue(v9, @"kCGRWTMOffsetAnchor", v102);
            CFRelease(v103);
          }
        }
      }

      v104 = CFDictionaryGetValue(a2, @"kCGRWTMHighlightsTradeOffRatio");
      if (v104)
      {
        v105 = v104;
        v106 = CFGetTypeID(v104);
        if (v106 == CFNumberGetTypeID())
        {
          v107 = CFGetTypeID(v105);
          v108 = CFNumberGetTypeID();
          v109 = 0;
          if (v107 == v108)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v105, kCFNumberFloatType, valuePtr);
            v109 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v109;
          v110 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v110)
          {
            v111 = v110;
            CFDictionarySetValue(v9, @"kCGRWTMHighlightsTradeOffRatio", v110);
            CFRelease(v111);
          }
        }
      }

      v112 = CFDictionaryGetValue(a2, @"kCGRWTMMinimumGammaAdjustment");
      if (v112)
      {
        v113 = v112;
        v114 = CFGetTypeID(v112);
        if (v114 == CFNumberGetTypeID())
        {
          v115 = CFGetTypeID(v113);
          v116 = CFNumberGetTypeID();
          v117 = 0;
          if (v115 == v116)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v113, kCFNumberFloatType, valuePtr);
            v117 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v117;
          v118 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v118)
          {
            v119 = v118;
            CFDictionarySetValue(v9, @"kCGRWTMMinimumGammaAdjustment", v118);
            CFRelease(v119);
          }
        }
      }

      v120 = CFDictionaryGetValue(a2, @"kCGRWTMStopAnchor");
      if (v120)
      {
        v121 = v120;
        v122 = CFGetTypeID(v120);
        if (v122 == CFNumberGetTypeID())
        {
          v123 = CFGetTypeID(v121);
          v124 = CFNumberGetTypeID();
          v125 = 0;
          if (v123 == v124)
          {
            LODWORD(valuePtr[0]) = 0;
            CFNumberGetValue(v121, kCFNumberFloatType, valuePtr);
            v125 = valuePtr[0];
          }

          LODWORD(valuePtr[0]) = v125;
          v126 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          if (v126)
          {
            v127 = v126;
            CFDictionarySetValue(v9, @"kCGRWTMStopAnchor", v126);
            CFRelease(v127);
          }
        }
      }

      if (CFDictionaryContainsKey(a2, @"kCGRWTMPrimaries") == 1)
      {
        v128 = CFDictionaryGetValue(a2, @"kCGRWTMPrimaries");
        v129 = CGColorSpaceCreateWithName(v128);
        return CGColorSpaceGetCICPInfo(v129, 0);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t add_options_for_image_specific_luma_scaling(const __CFDictionary *a1, const __CFDictionary *a2, __CFString *a3)
{
  v51[7] = *MEMORY[0x1E69E9840];
  v51[0] = @"kCGFlexGTCTargetHeadroom";
  v51[1] = @"kCGContentEDRStrength";
  v51[2] = @"kCGContentAverageLightLevelNits";
  v51[3] = @"kCGContentAverageLightLevel";
  v51[4] = @"kCGConstrainedDynamicRange";
  v51[5] = @"kCGPreferredDynamicRange";
  v51[6] = @"kCGTargetDynamicRange";
  if (!verify_options_dictionary(a2, v51, 7))
  {
LABEL_6:
    if (a3)
    {
      CFStringAppendFormat(a3, 0, @"Unsupported options for 'kCGToneMappingImageSpecificLumaScaling'");
    }

    else
    {
      CGPostError("Unsupported options for 'kCGToneMappingImageSpecificLumaScaling'");
    }

    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"kCGPreferredDynamicRange");
  if (Value)
  {
    v7 = Value;
    if (!CFEqual(Value, @"kCGDynamicRangeHigh") && !CFEqual(v7, @"kCGDynamicRangeConstrained") && !CFEqual(v7, @"kCGDynamicRangeStandard"))
    {
      goto LABEL_6;
    }
  }

  else
  {
    CFDictionaryGetValue(a2, @"kCGTargetDynamicRange");
  }

  result = CFDictionaryGetValue(a1, @"kCGApplyFlexLumaScaling");
  if (result)
  {
    v9 = result;
    result = CGAddPreferredDynamicRangeOptions(a2, result);
    if (result)
    {
      v10 = CFDictionaryGetValue(a2, @"kCGFlexGTCTargetHeadroom");
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = CFGetTypeID(v11);
          TypeID = CFNumberGetTypeID();
          v15 = 0;
          if (v13 == TypeID)
          {
            LODWORD(v51[0]) = 0;
            CFNumberGetValue(v11, kCFNumberFloatType, v51);
            v15 = v51[0];
          }

          LODWORD(v51[0]) = v15;
          v16 = CFNumberCreate(0, kCFNumberFloatType, v51);
          if (v16)
          {
            v17 = v16;
            CFDictionarySetValue(v9, @"kCGFlexGTCTargetHeadroom", v16);
            CFRelease(v17);
          }
        }
      }

      v18 = CFDictionaryGetValue(a2, @"kCGContentEDRStrength");
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFNumberGetTypeID())
        {
          v21 = CFGetTypeID(v19);
          v22 = CFNumberGetTypeID();
          v23 = 0;
          if (v21 == v22)
          {
            LODWORD(v51[0]) = 0;
            CFNumberGetValue(v19, kCFNumberFloatType, v51);
            v23 = v51[0];
          }

          LODWORD(v51[0]) = v23;
          v24 = CFNumberCreate(0, kCFNumberFloatType, v51);
          if (v24)
          {
            v25 = v24;
            CFDictionarySetValue(v9, @"kCGContentEDRStrength", v24);
            CFRelease(v25);
          }
        }
      }

      v26 = CFDictionaryGetValue(a2, @"kCGContentAverageLightLevel");
      if (v26)
      {
        v27 = v26;
        v28 = CFGetTypeID(v26);
        if (v28 == CFNumberGetTypeID())
        {
          v29 = CFGetTypeID(v27);
          v30 = 0.0;
          if (v29 == CFNumberGetTypeID())
          {
            LODWORD(v51[0]) = 0;
            CFNumberGetValue(v27, kCFNumberFloatType, v51);
            v30 = *v51;
          }

          if (CGImageDefaultReferenceWhite_once != -1)
          {
            dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
          }

          v31 = CGImageDefaultReferenceWhite_media_white;
          v32 = 0.0;
          if (CGImageDefaultReferenceWhite_media_white)
          {
            v33 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
            if (v33 == CFNumberGetTypeID())
            {
              LODWORD(v51[0]) = 0;
              CFNumberGetValue(v31, kCFNumberFloatType, v51);
              v32 = *v51;
            }
          }

          LODWORD(v51[0]) = vcvtas_u32_f32(v30 / v32);
          v34 = CFNumberCreate(0, kCFNumberSInt32Type, v51);
          if (v34)
          {
            v35 = v34;
            CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v34);
            CFRelease(v35);
          }
        }
      }

      v36 = CFDictionaryGetValue(a2, @"kCGContentAverageLightLevelNits");
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFNumberGetTypeID())
        {
          v39 = CFGetTypeID(v37);
          if (v39 == CFNumberGetTypeID())
          {
            LODWORD(v51[0]) = 0;
            CFNumberGetValue(v37, kCFNumberIntType, v51);
            v40 = v51[0];
          }

          else
          {
            v40 = 0;
          }

          LODWORD(v51[0]) = v40;
          v41 = CFNumberCreate(0, kCFNumberSInt32Type, v51);
          if (v41)
          {
            v42 = v41;
            CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v41);
            CFRelease(v42);
          }
        }
      }

      v43 = CFDictionaryGetValue(a2, @"kCGConstrainedDynamicRange");
      if (v43)
      {
        v44 = v43;
        v45 = CFGetTypeID(v43);
        if (v45 == CFNumberGetTypeID())
        {
          v46 = CFGetTypeID(v44);
          v47 = CFNumberGetTypeID();
          v48 = 0;
          if (v46 == v47)
          {
            LODWORD(v51[0]) = 0;
            CFNumberGetValue(v44, kCFNumberFloatType, v51);
            v48 = v51[0];
          }

          LODWORD(v51[0]) = v48;
          v49 = CFNumberCreate(0, kCFNumberFloatType, v51);
          if (v49)
          {
            v50 = v49;
            CFDictionarySetValue(v9, @"kCGConstrainedDynamicRange", v49);
            CFRelease(v50);
          }
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL verify_options_dictionary(const __CFDictionary *a1, const void **a2, uint64_t a3)
{
  Count = CFDictionaryGetCount(a1);
  v7 = 0;
  do
  {
    v8 = *a2++;
    if (CFDictionaryContainsKey(a1, v8) == 1)
    {
      ++v7;
    }

    --a3;
  }

  while (a3);
  return Count == v7;
}

uint64_t CGCreateSettingsForDefaultToneMapping(void *cf, void *a2, __CFDictionary **a3, float a4, float a5, float a6)
{
  if (!a3)
  {
    _CGHandleAssert("CGCreateSettingsForDefaultToneMapping", 1165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "settings != NULL", "settings == NULL");
  }

  result = 0;
  *a3 = 0;
  if (a4 >= 1.0 || a4 <= 0.0)
  {
    v11 = a4;
  }

  else
  {
    v11 = 1.0;
  }

  if (a4 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (a5 >= 1.0 || a5 <= 0.0)
  {
    v14 = a5;
  }

  else
  {
    v14 = 1.0;
  }

  if (a5 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  if (cf && v12 >= 1.0)
  {
    v17 = CFGetTypeID(cf);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    result = 0;
    if (a2)
    {
      if (v17 == CGColorSpaceGetTypeID_type_id)
      {
        v18 = CFGetTypeID(a2);
        if (kCGColorSpace_block_invoke_once != -1)
        {
          dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
        }

        if (v18 != CGColorSpaceGetTypeID_type_id)
        {
          return 0;
        }

        v19 = conversion_type(cf, a2);
        if (v19 > 4)
        {
          if (v19 <= 6)
          {
            if (v19 == 5)
            {
              v21 = v12 == 0.0 || v12 == 1.0;
              if (!v21 || (default_settings_hdr_to_sdr(cf, a2, a3, v15, a6) & 1) == 0)
              {
                v20 = "HDR to SDR";
                goto LABEL_82;
              }
            }

            else
            {
              if (v15 != 0.0 && v15 != 1.0)
              {
                v20 = "SDR to EDR";
                goto LABEL_82;
              }

              default_settings_sdr_to_edr(cf, a2);
            }
          }

          else if (v19 == 7)
          {
            if (v15 != 1.0)
            {
              v20 = "SDR to HDR";
              goto LABEL_82;
            }

            default_settings_sdr_to_hdr(0, cf, a2, 1.0);
          }

          else if (v19 == 8)
          {
            if (!CGColorSpaceIsSDR(cf))
            {
              _CGHandleAssert("CGCreateSettingsForDefaultToneMapping", 1259, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(target_space) == true", "Target color space is not SDR");
            }

            if (!CGColorSpaceIsSDR(a2))
            {
              _CGHandleAssert("CGCreateSettingsForDefaultToneMapping", 1260, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(source_space) == true", "Source color space is not SDR");
            }

            v20 = "SDR to SDR";
            if (v12 != 1.0 || v15 != 1.0)
            {
              goto LABEL_82;
            }
          }

          else if ((CGColorSpaceIsSDR(cf) || CGColorSpaceUsesExtendedRange(cf) || CGColorSpaceUsesITUR_2100TF(cf)) && (CGColorSpaceIsSDR(a2) || CGColorSpaceUsesExtendedRange(a2) || CGColorSpaceUsesITUR_2100TF(a2)))
          {
            v20 = "unknown conversion type";
            goto LABEL_82;
          }
        }

        else if (v19 <= 1)
        {
          if (v19)
          {
            if ((default_settings_edr_to_hdr(cf, a2, a3, v12, v15, a6) & 1) == 0)
            {
              v20 = "EDR to HDR";
              goto LABEL_82;
            }
          }

          else if ((default_settings_edr_to_edr(cf, a2, a3, v12, v15, a6) & 1) == 0)
          {
            v20 = "EDR to EDR";
            goto LABEL_82;
          }
        }

        else if (v19 == 2)
        {
          v22 = v12 == 0.0 || v12 == 1.0;
          if (!v22 || (default_settings_edr_to_sdr(cf, a2, a3, v15, a6) & 1) == 0)
          {
            v20 = "EDR to SDR";
            goto LABEL_82;
          }
        }

        else if (v19 == 3)
        {
          if ((default_settings_hdr_to_edr(cf, a2, a3, v12, v15, a6) & 1) == 0)
          {
            v20 = "HDR to EDR";
LABEL_82:
            CGLog(2, "%s failed for %s", "CGCreateSettingsForDefaultToneMapping", v20);
            return 0;
          }
        }

        else if ((default_settings_hdr_to_hdr(cf, a2, a3, v12, v15, a6) & 1) == 0)
        {
          v20 = "HDR to HDR";
          goto LABEL_82;
        }

        return 1;
      }
    }
  }

  return result;
}

CFMutableDictionaryRef settings_edr_to_edr(int a1, CGColorSpaceRef space, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceUsesExtendedRange(space))
  {
    _CGHandleAssert("settings_edr_to_edr", 1336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(target_space) == true", "Target color space is not extended");
  }

  if (!CGColorSpaceUsesExtendedRange(a3))
  {
    _CGHandleAssert("settings_edr_to_edr", 1337, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  switch(a1)
  {
    case 5:

      return default_settings_for_no_tone_mapping(a4);
    case 4:
      if (fabsf(a5 + -1.0) >= 0.00001)
      {
        return 0;
      }

      return default_settings_for_exr_gamma_mapping(a4);
    case 2:

      return default_rwtm_settings(a4, a5, a6, a7);
    default:
      return 0;
  }
}

uint64_t settings_edr_to_hdr(int a1, CGColorSpaceRef a2, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("settings_edr_to_hdr", 1362, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(target_space) == true", "Target color space is not HDR");
  }

  if (!CGColorSpaceUsesExtendedRange(a3))
  {
    _CGHandleAssert("settings_edr_to_hdr", 1363, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  if (a1 == 3)
  {
    return a5 == 0.0 && a6 == 0.0 || a6 == 4.9261 && a5 == a6;
  }

  if (a1 != 2)
  {
    return 0;
  }

  return default_rwtm_settings(a4, a5, a6, a7);
}

CFMutableDictionaryRef settings_edr_to_sdr(int a1, CGColorSpace *a2, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceIsSDR(a2))
  {
    _CGHandleAssert("settings_edr_to_sdr", 1389, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(target_space) == true", "Target color space is not SDR");
  }

  if (!CGColorSpaceUsesExtendedRange(a3))
  {
    _CGHandleAssert("settings_edr_to_sdr", 1390, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  if (a5 == 1.0)
  {
    if (a1 != 5)
    {
      if (a1 != 4)
      {
        if (a1 == 2)
        {

          return default_rwtm_settings(a4, 1.0, a6, a7);
        }

        return 0;
      }

LABEL_16:

      return default_settings_for_exr_gamma_mapping(a4);
    }
  }

  else
  {
    if (a1 == 3)
    {
      return 0;
    }

    if (a1 == 4)
    {
      goto LABEL_16;
    }

    if (a1 != 5)
    {
      _CGHandleAssert("settings_edr_to_sdr", 1392, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "target_headroom == 1.0f || ignore_headroom == true", "Target headroom is not SDR");
    }
  }

  return default_settings_for_no_tone_mapping(a4);
}

uint64_t settings_hdr_to_edr(int a1, CGColorSpaceRef space, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceUsesExtendedRange(space))
  {
    _CGHandleAssert("settings_hdr_to_edr", 1414, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(target_space) == true", "Target color space is not extended");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a3))
  {
    _CGHandleAssert("settings_hdr_to_edr", 1415, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 1;
    }

    if (a1 == 5)
    {

      return default_settings_for_no_tone_mapping(a4);
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (!CGColorSpaceContainsFlexGTCInfo(a3))
    {
      return 0;
    }
  }

  else if (a1 != 2)
  {
    return 0;
  }

  return default_settings_hdr_to_any(a3, a4, a5, a6, a7);
}

uint64_t settings_hdr_to_hdr(int a1, CGColorSpaceRef a2, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("settings_hdr_to_hdr", 1439, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(target_space) == true", "Target color space is not HDR");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a3))
  {
    _CGHandleAssert("settings_hdr_to_hdr", 1440, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 1;
    }

    if (a1 == 5)
    {

      return default_settings_for_no_tone_mapping(a4);
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (!CGColorSpaceContainsFlexGTCInfo(a3))
    {
      return 0;
    }
  }

  else if (a1 != 2)
  {
    return 0;
  }

  return default_settings_hdr_to_any(a3, a4, a5, a6, a7);
}

uint64_t settings_hdr_to_sdr(int a1, CGColorSpace *a2, CGColorSpace *a3, __CFDictionary **a4, float a5, float a6, float a7)
{
  if (!CGColorSpaceIsSDR(a2))
  {
    _CGHandleAssert("settings_hdr_to_sdr", 1464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(target_space) == true", "Target color space is not SDR");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a3))
  {
    _CGHandleAssert("settings_hdr_to_sdr", 1465, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  if (a5 != 1.0 || a1 > 2)
  {
    if (a1 == 3)
    {
      return 1;
    }

    if (a1 == 5)
    {

      return default_settings_for_no_tone_mapping(a4);
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (!CGColorSpaceContainsFlexGTCInfo(a3))
    {
      return 0;
    }
  }

  else if (a1 != 2)
  {
    return 0;
  }

  return default_settings_hdr_to_any(a3, a4, 1.0, a6, a7);
}

void report_error(__CFString *a1, const char *a2)
{
  if (a1)
  {
    CFStringAppendFormat(a1, 0, @"%s\n", a2);
  }

  else
  {
    CGPostError("%s", a2);
  }
}

BOOL default_settings_sdr_to_hdr(int a1, CGColorSpaceRef a2, CGColorSpace *a3, float a4)
{
  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("default_settings_sdr_to_hdr", 1147, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(target_space) == true", "Target color space is not HDR");
  }

  result = CGColorSpaceIsSDR(a3);
  if (!result)
  {
    _CGHandleAssert("default_settings_sdr_to_hdr", 1148, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(source_space) == true", "Source color space is not SDR");
  }

  if ((a1 - 3) >= 3 && a4 != 1.0)
  {
    _CGHandleAssert("default_settings_sdr_to_hdr", 1150, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "source_headroom == 1.0f || ignore_headroom == true", "Source headroom is not SDR");
  }

  return result;
}

uint64_t default_settings_hdr_to_any(void *a1, __CFDictionary **a2, float a3, float a4, float a5)
{
  if (CGColorSpaceContainsFlexGTCInfo(a1))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(a1, 0);
    v11 = vabds_f32(a4, HeadroomInfo);
    if (v11 > 0.00001)
    {
      CGPostError("Image headroom (%f) != Gain Map Preview headroom (%f)", a4, HeadroomInfo);
    }

    result = 0;
    if (a3 >= 1.0 && v11 <= 0.0001)
    {
      v13 = *MEMORY[0x1E695E480];
      result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (result)
      {
        v14 = result;
        valuePtr = a3;
        result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        if (result)
        {
          v15 = result;
          CFDictionarySetValue(v14, @"kCGFlexGTCTargetHeadroom", result);
          CFRelease(v15);
          result = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (result)
          {
            v16 = result;
            CFDictionarySetValue(result, @"kCGApplyFlexLumaScaling", v14);
            CFRelease(v14);
            *a2 = v16;
            return 1;
          }
        }
      }
    }
  }

  else
  {

    return default_rwtm_settings(a2, a3, a4, a5);
  }

  return result;
}

BOOL default_settings_for_no_tone_mapping(__CFDictionary **a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"kCGSkipToneMappingForBT2100", *MEMORY[0x1E695E4D0]);
    *a1 = v3;
  }

  return v3 != 0;
}

uint64_t default_rwtm_settings(__CFDictionary **a1, float a2, float a3, float a4)
{
  if (a2 < 1.0)
  {
    return 0;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v10 = Mutable;
  valuePtr = a2;
  v11 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (v11 && (v12 = v11, CFDictionarySetValue(v10, @"kCGRWTMEDRHeadroom", v11), CFRelease(v12), v20 = a3 * a4, (v13 = CFNumberCreate(0, kCFNumberFloatType, &v20)) != 0) && (v14 = v13, CFDictionarySetValue(v10, @"kCGRWTMSourcePeak", v13), CFRelease(v14), (v15 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
  {
    v16 = v15;
    CFDictionarySetValue(v15, @"kCGApplyReferenceWhiteToneMapping", v10);
    *a1 = v16;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v10);
  return v17;
}

CFMutableDictionaryRef default_settings_for_exr_gamma_mapping(CFMutableDictionaryRef *a1)
{
  v2 = *MEMORY[0x1E695E480];
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v4 = result;
    CFDictionarySetValue(result, @"kCGApplyEXRToneMappingGamma", *MEMORY[0x1E695E4D0]);
    result = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (result)
    {
      v5 = result;
      CFDictionarySetValue(result, @"kCGImageExtendedRangeToneMappingInfo", v4);
      *a1 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t default_settings_edr_to_edr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5, float a6)
{
  if (!CGColorSpaceUsesExtendedRange(a1))
  {
    _CGHandleAssert("default_settings_edr_to_edr", 1045, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(target_space) == true", "Target color space is not extended");
  }

  if (!CGColorSpaceUsesExtendedRange(a2))
  {
    _CGHandleAssert("default_settings_edr_to_edr", 1046, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  return default_rwtm_settings(a3, a4, a5, a6);
}

uint64_t default_settings_edr_to_hdr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5, float a6)
{
  if (!CGColorSpaceUsesITUR_2100TF(a1))
  {
    _CGHandleAssert("default_settings_edr_to_hdr", 1059, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(target_space) == true", "Target color space is not HDR");
  }

  if (!CGColorSpaceUsesExtendedRange(a2))
  {
    _CGHandleAssert("default_settings_edr_to_hdr", 1060, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  return default_rwtm_settings(a3, a4, a5, a6);
}

uint64_t default_settings_edr_to_sdr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5)
{
  if (!CGColorSpaceIsSDR(a1))
  {
    _CGHandleAssert("default_settings_edr_to_sdr", 1073, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(target_space) == true", "Target color space is not SDR");
  }

  if (!CGColorSpaceUsesExtendedRange(a2))
  {
    _CGHandleAssert("default_settings_edr_to_sdr", 1074, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(source_space) == true", "Source color space is not extended");
  }

  return default_rwtm_settings(a3, 1.0, a4, a5);
}

uint64_t default_settings_hdr_to_edr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5, float a6)
{
  if (!CGColorSpaceUsesExtendedRange(a1))
  {
    _CGHandleAssert("default_settings_hdr_to_edr", 1088, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(target_space) == true", "Target color space is not extended");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("default_settings_hdr_to_edr", 1089, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  return default_settings_hdr_to_any(a2, a3, a4, a5, a6);
}

uint64_t default_settings_hdr_to_hdr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5, float a6)
{
  if (!CGColorSpaceUsesITUR_2100TF(a1))
  {
    _CGHandleAssert("default_settings_hdr_to_hdr", 1102, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(target_space) == true", "Target color space is not HDR");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("default_settings_hdr_to_hdr", 1103, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  return default_settings_hdr_to_any(a2, a3, a4, a5, a6);
}

uint64_t default_settings_hdr_to_sdr(CGColorSpace *a1, CGColorSpace *a2, __CFDictionary **a3, float a4, float a5)
{
  if (!CGColorSpaceIsSDR(a1))
  {
    _CGHandleAssert("default_settings_hdr_to_sdr", 1116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(target_space) == true", "Target color space is not SDR");
  }

  if (!CGColorSpaceUsesITUR_2100TF(a2))
  {
    _CGHandleAssert("default_settings_hdr_to_sdr", 1117, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesITUR_2100TF(source_space) == true", "Source color space is not HDR");
  }

  return default_settings_hdr_to_any(a2, a3, 1.0, a4, a5);
}

BOOL default_settings_sdr_to_edr(CGColorSpace *a1, CGColorSpace *a2)
{
  if (!CGColorSpaceUsesExtendedRange(a1))
  {
    _CGHandleAssert("default_settings_sdr_to_edr", 1131, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceUsesExtendedRange(target_space) == true", "Target color space is not extended");
  }

  result = CGColorSpaceIsSDR(a2);
  if (!result)
  {
    _CGHandleAssert("default_settings_sdr_to_edr", 1132, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfo.c", "CGColorSpaceIsSDR(source_space) == true", "Source color space is not DDR");
  }

  return result;
}

uint64_t profile_set_checker(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"ColorSyncProfile");
  if (profile_set_checker_cglibrarypredicate != -1)
  {
    dispatch_once(&profile_set_checker_cglibrarypredicate, &__block_literal_global_82);
  }

  if (profile_set_checker_f(Value))
  {
    result = 1;
  }

  else
  {
    if (profile_set_checker_cglibrarypredicate_85 != -1)
    {
      dispatch_once(&profile_set_checker_cglibrarypredicate_85, &__block_literal_global_88);
    }

    result = profile_set_checker_f_84(Value);
  }

  *(a2 + 8) = (*(a2 + 8) | result) & 1;
  return result;
}

uint64_t (*__profile_set_checker_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileIsHLGBased");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1207;
  }

  profile_set_checker_f_84 = v1;
  return result;
}

uint64_t (*__profile_set_checker_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileIsPQBased");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1207;
  }

  profile_set_checker_f = v1;
  return result;
}

uint64_t CGColorConversionInfoCreateWithColorSyncCodeFragment(const void *a1, const __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFArrayGetTypeID()) && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0)) != 0)
  {
    Value = CFDictionaryGetValue(ValueAtIndex, @"com.apple.cmm.ProfileSequnce");
    v14 = Value;
    v15 = 0;
    v17.length = CFArrayGetCount(Value);
    v17.location = 0;
    CFArrayApplyFunction(Value, v17, profile_set_checker, &v14);
    v7 = v15;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (v7)
    {
      if (create_3DLUT_for_PQEETF_predicate != -1)
      {
        dispatch_once(&create_3DLUT_for_PQEETF_predicate, &__block_literal_global_98);
      }

      if (create_3DLUT_for_PQEETF_status)
      {
        goto LABEL_13;
      }

      if (create_3DLUT_for_HLG_SceneReferredMapping_predicate != -1)
      {
        dispatch_once(&create_3DLUT_for_HLG_SceneReferredMapping_predicate, &__block_literal_global_102_1199);
      }

      if (create_3DLUT_for_HLG_SceneReferredMapping_status == 1)
      {
LABEL_13:
        new_transform_options = create_new_transform_options(a2);
LABEL_21:
        v11 = new_transform_options;
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v9 = Value;
  }

  else
  {
    v9 = 0;
  }

  if ((linked_on_golden_gate_or_later() & 1) != 0 || (Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])) == 0)
  {
    Value = v9;
    if (a2)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  Value = Mutable;
  v18.length = CFArrayGetCount(v9);
  v18.location = 0;
  CFArrayApplyFunction(v9, v18, modify, Value);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_19:
  if (a2)
  {
LABEL_20:
    new_transform_options = CFRetain(a2);
    goto LABEL_21;
  }

LABEL_23:
  v11 = 0;
LABEL_24:
  Retained = CGColorSyncTransformCacheGetRetained(Value, v11);
  if (Value)
  {
    CFRelease(Value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return create_conversion_info(Retained, a2);
}

CFDictionaryRef CGColorConversionInfoCreateResolvedOptions(CGColorSpace *a1, __int16 a2, CFDictionaryRef theDict)
{
  Value = theDict;
  if (!theDict)
  {
    return Value;
  }

  if (CFDictionaryContainsKey(theDict, @"kCGColorConversionInfoOptions") == 1)
  {
    Value = CFDictionaryGetValue(Value, @"kCGColorConversionInfoOptions");
  }

  if (CFDictionaryContainsKey(Value, @"kCGApplyReferenceWhiteToneMapping") || CFDictionaryContainsKey(Value, @"kCGImageExtendedRangeToneMappingInfo") || CFDictionaryContainsKey(Value, @"kCGApplyFlexLumaScaling") || CFDictionaryContainsKey(Value, @"kCGApplyFlexTRC"))
  {
    v6 = CFDictionaryGetValue(Value, @"kCGApplyReferenceWhiteToneMapping");
    v7 = CFDictionaryGetValue(Value, @"kCGApplyFlexTRC");
    v8 = CFDictionaryGetValue(Value, @"kCGApplyFlexLumaScaling");
    if (v6)
    {
      if (!CGColorSpaceUsesITUR_2100TF(a1))
      {
        v9 = CGColorSpaceUsesExtendedRange(a1);
        Value = 0;
        if ((a2 & 0xF00) != 0x100 || !v9)
        {
          return Value;
        }
      }

      ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveReferenceWhiteToneMappingOptions(v6);
      if (CFEqual(ResolveReferenceWhiteToneMappingOptions, v6) == 1)
      {
        v11 = v6;
LABEL_21:
        Value = CFRetain(v11);
        goto LABEL_22;
      }

      return ResolveReferenceWhiteToneMappingOptions;
    }

    v12 = v8;
    if (v8)
    {
      ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveFlexLumaOptions(v8);
      if (CFEqual(ResolveReferenceWhiteToneMappingOptions, v12) == 1)
      {
        if (!v7)
        {
          Value = 0;
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      return ResolveReferenceWhiteToneMappingOptions;
    }

    if (v7)
    {
      ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveFlexTRCOptions(v7);
      if (CFEqual(ResolveReferenceWhiteToneMappingOptions, v7) == 1)
      {
LABEL_20:
        v11 = v7;
        goto LABEL_21;
      }

      return ResolveReferenceWhiteToneMappingOptions;
    }

    if (CGColorSpaceUsesExtendedRange(a1))
    {
      v14 = CFDictionaryGetValue(Value, @"kCGImageExtendedRangeToneMappingInfo");
      if (v14)
      {
        v15 = v14;
        ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveExtendedRangeToneMappingOptions(v14);
        if (CFEqual(ResolveReferenceWhiteToneMappingOptions, v15))
        {
          if (Value)
          {
            v11 = Value;
            goto LABEL_21;
          }
        }

        else
        {
          Count = CFDictionaryGetCount(Value);
          Value = CFDictionaryCreateMutableCopy(0, Count, Value);
          CFDictionarySetValue(Value, @"kCGImageExtendedRangeToneMappingInfo", ResolveReferenceWhiteToneMappingOptions);
        }

LABEL_22:
        if (ResolveReferenceWhiteToneMappingOptions)
        {
          CFRelease(ResolveReferenceWhiteToneMappingOptions);
        }

        return Value;
      }

      return 0;
    }
  }

  if (!Value)
  {
    return Value;
  }

  return CFRetain(Value);
}

CFDictionaryRef CGCreatePayloadForToneMapping(unsigned int a1, void *a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGToneMappingMethod";
  keys[1] = @"kCGHDRMediaReferenceWhite";
  keys[2] = @"kCGToneMappingMethodOptions";
  if (a1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E6E318A8[a1];
  }

  values[0] = v3;
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  values[1] = CGImageDefaultReferenceWhite_media_white;
  values[2] = a2;
  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

void low_memory_notification_callback(__CFNotificationCenter *a1, os_unfair_lock_s *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (a2)
  {
    os_unfair_lock_lock(a2 + 52);
    v6 = *&a2[50]._os_unfair_lock_opaque;
    if (v6 && *(v6 + 16) >= 2uLL)
    {
      do
      {
        LRUCache::pop_back(v6);
      }

      while (*(v6 + 16) > 1uLL);
    }

    os_unfair_lock_unlock(a2 + 52);
  }
}

void LRUCache::pop_back(uint64_t **this)
{
  v1 = this[2];
  if (v1 && ((v3 = (*this)[2], *(this + 72) != 1) || (!v3 ? (v4 = 0) : (v4 = *(*(v3 + 40) + 8)), printf("LRUCache: removing page: %lu\n", v4), (v1 = this[2]) != 0)))
  {
    v5 = *this;
    v7 = **this;
    v6 = (*this)[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    this[2] = (v1 - 1);
    operator delete(v5);
    v8 = std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::find<CGPDFPage *>(this + 3, v3);
    if (v8)
    {
      std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::erase(this + 3, v8);
    }

    CGPDFPagePurgeResources(v3);
  }

  else
  {
    __break(1u);
  }
}

void std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void __CGPDFDocumentCreateWithProvider_block_invoke_2()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"CGPDFDocumentLowMemoryNotificationName", 0, 0, 1u);
}

CFTypeID CGPDFDocumentGetTypeID(void)
{
  if (CGPDFDocumentGetTypeID::onceToken != -1)
  {
    dispatch_once(&CGPDFDocumentGetTypeID::onceToken, &__block_literal_global_25);
  }

  return CGPDFDocumentGetTypeID::id;
}

void CGPDFDocumentRelease(CGPDFDocumentRef document)
{
  if (document)
  {
    CFRelease(document);
  }
}

BOOL CGPDFDocumentIsLinearized(_BOOL8 result)
{
  if (result)
  {
    return *(**(*(result + 16) + 16) + 24) != 0;
  }

  return result;
}

BOOL CGPDFDocumentIsEncrypted(CGPDFDocumentRef document)
{
  if (document)
  {
    LOBYTE(document) = *(**(*(document + 2) + 16) + 40) != 0;
  }

  return document;
}

CGPDFDocumentRef CGPDFDocumentCreateWithURL(CFURLRef url)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (!url)
  {
    return 0;
  }

  v2 = CGDataProviderCreateWithURL(url);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CGDataProviderSetProperty(v2, @"from_url", *MEMORY[0x1E695E4D0]);
  v4 = CGPDFDocumentCreateWithProvider(v3);
  v5 = *(v3 + 34);
  if (v5)
  {
    Property = CGPropertiesGetProperty(v5, @"CGDataProviderTrustToken");
    CGDataProviderRelease(v3);
    if (Property)
    {
      LODWORD(valuePtr[0]) = 0;
      if (CFNumberGetValue(Property, kCFNumberIntType, valuePtr))
      {
        v7 = rootless_verify_trusted_by_self_token();
        goto LABEL_9;
      }
    }
  }

  else
  {
    CGDataProviderRelease(v3);
  }

  v7 = 0;
LABEL_9:
  v8 = objc_autoreleasePoolPush();
  v10 = @"isTrustedURL";
  valuePtr[0] = [MEMORY[0x1E696AD98] numberWithBool:v7];
  send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentCreateWithURL", [MEMORY[0x1E695DF20] dictionaryWithObjects:valuePtr forKeys:&v10 count:1]);
  objc_autoreleasePoolPop(v8);
  if (v4)
  {
    if (*(**(*(v4 + 2) + 16) + 40) || CGPDFDocumentGetPage(v4, 1uLL))
    {
      *(v4 + 5) = url;
      CFRetain(url);
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

CGPDFDocumentRef CGPDFDocumentRetain(CGPDFDocumentRef document)
{
  if (document)
  {
    CFRetain(document);
  }

  return document;
}

void CGPDFDocumentGetVersion(CGPDFDocumentRef document, int *majorVersion, int *minorVersion)
{
  *&v18[45] = *MEMORY[0x1E69E9840];
  if (!document)
  {
    *minorVersion = 0;
    *majorVersion = 0;
    return;
  }

  v5 = *(*(document + 2) + 16);
  v6 = **v5;
  CGPDFSourceSetPosition(v6, 0);
  for (i = 0; i != 63; ++i)
  {
    v8 = CGPDFSourceGetc(v6);
    if ((v8 + 1) <= 0xE && ((1 << (v8 + 1)) & 0x4801) != 0)
    {
      break;
    }

    value[i] = v8;
  }

  v16 = 0;
  value[i] = 0;
  if (*value == 1178882085 && value[4] == 45)
  {
    v12 = &value[5];
  }

  else
  {
    if (*value != 0x6F64412D53502125 || *&value[3] != 0x2D65626F64412D53)
    {
      return;
    }

    v12 = v18;
  }

  if (convert_version(v12, majorVersion, minorVersion))
  {
    *value = 0;
    trailer = pdf_xref_get_trailer(*v5);
    if (CGPDFDictionaryGetDictionary(trailer, "Root", value))
    {
      if (*value)
      {
        if (CGPDFDictionaryGetName(*value, "Version", &v16))
        {
          *value = 0;
          v15 = 0;
          if (convert_version(v16, value, &v15))
          {
            if (*value <= *majorVersion)
            {
              if (*value != *majorVersion)
              {
                return;
              }

              v14 = v15;
              if (v15 <= *minorVersion)
              {
                return;
              }
            }

            else
            {
              *majorVersion = *value;
              v14 = v15;
            }

            *minorVersion = v14;
          }
        }
      }
    }
  }
}

BOOL CGPDFDocumentUnlockWithPassword(CGPDFDocumentRef document, const char *password)
{
  if (document)
  {
    LOBYTE(document) = pdf_document_unlock_with_password(*(**(*(document + 2) + 16) + 40), password);
  }

  return document;
}

uint64_t CGPDFDocumentUnlockAsOwnerWithPassword(uint64_t a1, char *__s)
{
  if (a1)
  {
    v2 = *(**(*(a1 + 16) + 16) + 40);
    if (v2)
    {
      v4 = strlen(__s);
      v5 = *(v2 + 16);
      if (v5 && ((v6 = v4, __s) || !v4))
      {
        pthread_mutex_lock(&lock);
        v9 = CGPDFSecurityHandlerAuthenticateOwnerPassword(v5, __s, v6, v8);
        *(v5 + 184) = v9;
        if (v9)
        {
          v10 = 4095;
        }

        else
        {
          v10 = 0;
        }

        *(v5 + 185) = v9;
        *(v5 + 188) = v10;
        pthread_mutex_unlock(&lock);
        v7 = *(v5 + 185);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL CGPDFDocumentIsUnlocked(CGPDFDocumentRef document)
{
  if (document && (v1 = *(**(*(document + 2) + 16) + 40)) != 0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 184);
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t CGPDFDocumentIsUnlockedAsOwner(uint64_t a1)
{
  if (a1 && (v1 = *(**(*(a1 + 16) + 16) + 40)) != 0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 185);
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t CGPDFDocumentGetPermissions(uint64_t result)
{
  if (result)
  {
    v1 = *(**(*(result + 16) + 16) + 40);
    if (v1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v2 + 188);
      }

      else
      {
        v3 = &CGPDFPermissionsNone;
      }

      v4 = *v3;
    }

    else
    {
      v4 = 4095;
    }

    return (v4 >> 1) & 4 | ((v4 << 31) >> 31) & (v4 >> 1) & 3;
  }

  return result;
}

size_t CGPDFDocumentGetNumberOfPages(size_t document)
{
  if (document)
  {
    v1 = document;
    CGAnalyticsSendPDFDocumentGetNumberOfPagesEvent();
    v2 = *(*(v1 + 16) + 16);

    return pdf_reader_get_number_of_pages(v2);
  }

  return document;
}

uint64_t CGPDFDocumentGetPageNoCreate(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(*(result + 16) + 16);
    v5 = *(*v4 + 40);
    if ((!v5 || (v6 = *(v5 + 16)) != 0 && *(v6 + 184) == 1) && a2 - 1 < pdf_reader_get_number_of_pages(v4) && (v7 = *(v3 + 24)) != 0)
    {
      return *(v7 + 8 * a2 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFDocumentCopyPage(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 16);
  v5 = *(*v4 + 40);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (!v6 || *(v6 + 184) != 1)
    {
      return 0;
    }
  }

  if (a2 - 1 >= pdf_reader_get_number_of_pages(v4))
  {
    return 0;
  }

  ensure_page_array_exists(a1);

  return CGPDFPageCreate2(a1, a2, 1);
}

CGPDFDictionaryRef CGPDFDocumentGetCatalog(CGPDFDictionaryRef document)
{
  if (document)
  {
    v1 = document;
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    v2 = **(*(v1 + 2) + 16);

    return pdf_document_get_catalog(v2);
  }

  return document;
}

CGPDFDictionaryRef CGPDFDocumentGetInfo(CGPDFDictionaryRef document)
{
  if (document)
  {
    v1 = document;
    v2 = objc_autoreleasePoolPush();
    send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentGetInfo", 0);
    objc_autoreleasePoolPop(v2);
    v3 = *(*(v1 + 2) + 16);
    value = 0;
    trailer = pdf_xref_get_trailer(*v3);
    if (CGPDFDictionaryGetDictionary(trailer, "Info", &value))
    {
      return value;
    }

    else
    {
      return 0;
    }
  }

  return document;
}

CGPDFArrayRef CGPDFDocumentGetID(CGPDFArrayRef document)
{
  if (document)
  {
    return *(**(*(document + 2) + 16) + 48);
  }

  return document;
}

uint64_t CGPDFDocumentGetDataProvider(uint64_t result)
{
  if (result)
  {
    v1 = ***(*(result + 16) + 16);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGPDFDocumentGetPageDictionary(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    pdf_document_get_page_dictionary(*(*(a1 + 16) + 16), a2);
  }
}

BOOL CGDataProviderContainsLinearizedPDF(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[4];
  if (v2 == -1)
  {
    CGPostError("Invalid data provider size. Sequential data providers are not supported for linearized PDF.\n", a2);
    return 0;
  }

  v4 = CGPDFSourceCreate(a1, 0, v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4[2];
  if (v6 >= 4096)
  {
    v7 = 4096;
  }

  else
  {
    v7 = v4[2];
  }

  if (v6 == -1)
  {
    v8 = 4096;
  }

  else
  {
    v8 = v7;
  }

  v4[12] = v8;
  free(v4[11]);
  v9 = malloc_type_calloc(1uLL, v8, 0x6AE56F5uLL);
  __CFSetLastAllocationEventName();
  v5[11] = v9;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[16] = v9;
  CGPDFSourceRead(v5, __dst, 4uLL);
  linearization_dictionary = xref_read_linearization_dictionary(v5);
  v11 = linearization_dictionary != 0;
  if (linearization_dictionary)
  {
    v12 = linearization_dictionary;
    if (a2)
    {
      CGPDFDictionaryGetOffset(linearization_dictionary, "L", a2);
    }

    CFRelease(v5);
    CFRelease(v12);
  }

  return v11;
}

uint64_t CGPDFDocumentGetLinearizedDictionary(uint64_t result)
{
  if (result)
  {
    return *(**(*(result + 16) + 16) + 24);
  }

  return result;
}

uint64_t CGPDFDocumentCreateLinearizedRangesForPage(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (result)
  {
    return pdf_reader_get_linearized_page_ranges(*(**(*(result + 16) + 16) + 32), a2, a3, a4);
  }

  return result;
}

uint64_t CGPDFDocumentPreloadLinearizedPageData(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  capacity = 0;
  v17 = 0;
  if (!pdf_reader_get_linearized_page_ranges(*(**(v2 + 16) + 32), a2, &v17, &capacity) || (v3 = ***(v2 + 16)) == 0 || (v4 = *(v3 + 40)) == 0 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0])) == 0)
  {
    free(v17);
    return 0;
  }

  v6 = Mutable;
  if (capacity)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695E738];
    do
    {
      CFArraySetValueAtIndex(v6, v7++, v8);
      v9 = capacity;
    }

    while (v7 < capacity);
  }

  else
  {
    v9 = 0;
  }

  CGDataProviderGetBytesInRanges(v4, v6, v17, v9);
  if (capacity)
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v12);
      v14 = CFGetTypeID(ValueAtIndex);
      v15 = v14 == CFDataGetTypeID();
      v10 = v15;
      if (!v15)
      {
        break;
      }

      if (++v12 >= capacity)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v10 = 1;
  }

  free(v17);
  CFRelease(v6);
  return v10;
}

uint64_t CGPDFDocumentGetLinearizedOutlineRange(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(**(*(result + 16) + 16) + 32);
    if (v2 && (v3 = *(v2 + 80)) != 0)
    {
      v4 = *(v3 + 4);
      v5 = *(v3 + 12);
      *a2 = v4;
      a2[1] = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFDocumentGetLinearizedNamedDestinationRange(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(**(*(result + 16) + 16) + 32);
    if (v2 && (v3 = *(v2 + 88)) != 0)
    {
      v4 = *(v3 + 4);
      v5 = *(v3 + 12);
      *a2 = v4;
      a2[1] = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGPDFDictionaryRef CGPDFDocumentGetDestination(CGPDFDictionaryRef result, uint64_t a2)
{
  if (result)
  {
    v3 = *(result + 2);
    v4 = *(v3 + 24);
    if (v4)
    {
LABEL_12:
      result = *v4;
      if (!*v4)
      {
        return result;
      }

      value = 0;
      if (*(v4 + 8) == 1)
      {
        if (a2 && *(a2 + 8) == 6)
        {
          return CGPDFNameTreeGetValue(result, *(a2 + 32));
        }

        return 0;
      }

      if (a2 && *(a2 + 8) == 5)
      {
        if (CGPDFDictionaryGetObject(result, *(a2 + 32), &value))
        {
          return value;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    os_unfair_lock_lock((v3 + 64));
    if (*(v3 + 24))
    {
LABEL_11:
      os_unfair_lock_unlock((v3 + 64));
      v4 = *(v3 + 24);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v8 = 0;
    value = 0;
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    __CFSetLastAllocationEventName();
    *v5 = 0;
    catalog = pdf_document_get_catalog(**(v3 + 16));
    if (CGPDFDictionaryGetDictionary(catalog, "Names", &value))
    {
      if (CGPDFDictionaryGetDictionary(value, "Dests", &v8))
      {
        v7 = 1;
LABEL_9:
        *v5 = v8;
        v5[8] = v7;
      }
    }

    else if (CGPDFDictionaryGetDictionary(catalog, "Dests", &v8))
    {
      v7 = 0;
      goto LABEL_9;
    }

    *(v3 + 24) = v5;
    goto LABEL_11;
  }

  return result;
}

const void *CGPDFDocumentGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(*(a1 + 16) + 32)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

void CGPDFDocumentSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 16);
    if (!*(v5 + 32))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((v5 + 32), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(v5 + 32);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

void CGPDFDocumentRemoveProperty(uint64_t result, const void *a2)
{
  if (result && a2)
  {
    v2 = *(*(result + 16) + 32);
    if (v2)
    {
      CGPropertiesRemoveProperty(v2, a2);
    }
  }
}

void CGPDFDocumentSetDeviceGrayColorSpace(uint64_t a1, CGColorSpace *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 40);
  if (v3 != a2)
  {
    CGColorSpaceRelease(v3);
    if (a2)
    {
      CFRetain(a2);
    }

    *(v2 + 40) = a2;
  }
}

void CGPDFDocumentSetDeviceRGBColorSpace(uint64_t a1, CGColorSpace *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 48);
  if (v3 != a2)
  {
    CGColorSpaceRelease(v3);
    if (a2)
    {
      CFRetain(a2);
    }

    *(v2 + 48) = a2;
  }
}

void CGPDFDocumentSetDeviceCMYKColorSpace(uint64_t a1, CGColorSpace *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 56);
  if (v3 != a2)
  {
    CGColorSpaceRelease(v3);
    if (a2)
    {
      CFRetain(a2);
    }

    *(v2 + 56) = a2;
  }
}

BOOL CGPDFDocumentAuthenticateUserPassword(_BOOL8 result, char *__s)
{
  if (result)
  {
    v2 = *(**(*(result + 16) + 16) + 40);
    if (v2)
    {
      v4 = strlen(__s);
      v5 = *(v2 + 16);

      return CGPDFSecurityHandlerAuthenticateUserPassword(v5, __s, v4);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL CGPDFDocumentAuthenticateOwnerPassword(_BOOL8 result, char *__s)
{
  if (result)
  {
    v2 = *(**(*(result + 16) + 16) + 40);
    if (v2)
    {
      v4 = strlen(__s);
      v6 = *(v2 + 16);

      return CGPDFSecurityHandlerAuthenticateOwnerPassword(v6, __s, v4, v5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CGPDFAccessPermissions CGPDFDocumentGetAccessPermissions(CGPDFDocumentRef document)
{
  if (document)
  {
    v1 = *(**(*(document + 2) + 16) + 40);
    if (v1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v2 + 188);
      }

      else
      {
        v3 = &CGPDFPermissionsNone;
      }

      v4 = *v3;
    }

    else
    {
      v4 = 4095;
    }

    v5 = (v4 & 3) != 0;
    if ((v4 & 3) != 0)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    if ((v4 & 5) != 0)
    {
      v5 = v6;
    }

    v7 = (v4 >> 4) & 4 | (16 * ((v4 >> 3) & 3)) | v5;
    if ((v4 & 0x80) != 0)
    {
      v7 |= 0xC0u;
    }

    LODWORD(document) = (v4 >> 2) & 0xC0 | (v4 >> 7) & 8 | v7;
  }

  return document;
}

uint64_t CGPDFDocumentGetRawPermissions(uint64_t result)
{
  if (result)
  {
    v1 = *(**(*(result + 16) + 16) + 40);
    if (v1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        return *(v2 + 16);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

CFDataRef CGPDFDocumentCopyHashedOwnerPassword(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(**(*(a1 + 16) + 16) + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = *v2;
  v3 = (v2 + 28);
  v4 = v5;
  v6 = 48;
  if ((v5 - 5) >= 2)
  {
    v6 = 0;
  }

  if (v4 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 32;
  }

  return CFDataCreate(*MEMORY[0x1E695E480], v3, v7);
}

CFDataRef CGPDFDocumentCopyHashedUserPassword(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(**(*(a1 + 16) + 16) + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = *v2;
  v3 = v2 + 33;
  v4 = v5;
  v6 = 48;
  if ((v5 - 5) >= 2)
  {
    v6 = 0;
  }

  if (v4 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 32;
  }

  return CFDataCreate(*MEMORY[0x1E695E480], v3, v7);
}

CFDataRef CGPDFDocumentCopyEncryptionKey(CFDataRef result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = *(**(*(result + 2) + 16) + 40);
    if (result)
    {
      length = 0;
      DecryptionKey = CGPDFSecurityManagerGetDecryptionKey(result, bytes, &length);
      result = 0;
      if (DecryptionKey)
      {
        return CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
      }
    }
  }

  return result;
}

unint64_t CGPDFDocumentGetEncryptMetadata(unint64_t result)
{
  if (result)
  {
    v1 = *(**(*(result + 16) + 16) + 40);
    if (v1)
    {
      result = *(v1 + 8);
      if (result)
      {
        value = 0;
        v2 = !CGPDFDictionaryGetBoolean(result, "EncryptMetadata", &value);
        return value || v2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFDocumentGetEncryptionVersion(uint64_t result)
{
  if (result)
  {
    v1 = *(**(*(result + 16) + 16) + 40);
    if (v1)
    {
      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFDocumentGetNumberOfObjects(uint64_t result)
{
  if (result)
  {
    return *(**(*(result + 16) + 16) + 160);
  }

  return result;
}

void *CGPDFDocumentGetObject(void *result, int a2, unsigned __int16 a3)
{
  if (result)
  {
    return pdf_xref_resolve(**(result[2] + 16), a2, a3);
  }

  return result;
}

void *CGPDFDocumentPrintObject(void *result, int a2, unsigned __int16 a3, FILE *a4)
{
  if (result)
  {
    result = pdf_xref_resolve(**(result[2] + 16), a2, a3);
    if (result)
    {
      if (*(result + 2) == 9)
      {
        v5 = result[4];

        return stream_print(v5, a4, 0, 1);
      }

      else
      {

        return CGPDFObjectPrintWithIndent(result, a4, 0);
      }
    }
  }

  return result;
}

BOOL CGPDFDocumentIsTaggedPDF(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGPDFDocumentCopyTaggedContext(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = **v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

CFTypeRef CGPDFDocumentCopyTaggedContext(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 224));
  v2 = *(a1 + 232);
  if (!v2 || (v3 = CFRetain(v2)) == 0)
  {
    if (CGPDFTaggedContextGetTypeID(void)::onceToken != -1)
    {
      dispatch_once(&CGPDFTaggedContextGetTypeID(void)::onceToken, &__block_literal_global_67);
    }

    _CFRuntimeCreateInstance();
    operator new();
  }

  os_unfair_lock_unlock((a1 + 224));
  return v3;
}

void sub_18401FFA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1865EE610](v16, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL CGPDFDocumentIsLayoutWithCTLDEnabled()
{
  if (_os_feature_enabled_impl())
  {
    v2 = 0;
    return !get_BOOLean_property("CGLayoutWithCTLD", copy_local_domain_value, &v2) || v2;
  }

  else
  {
    return 0;
  }
}

CGRect CGPDFDocumentGetMediaBox(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetMediaBox::warned & 1) == 0)
  {
    CGPDFDocumentGetMediaBox::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetBoxRect(v4, kCGPDFMediaBox);
}

CGRect CGPDFDocumentGetCropBox(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetCropBox::warned & 1) == 0)
  {
    CGPDFDocumentGetCropBox::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetBoxRect(v4, kCGPDFCropBox);
}

CGRect CGPDFDocumentGetBleedBox(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetBleedBox::warned & 1) == 0)
  {
    CGPDFDocumentGetBleedBox::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetBoxRect(v4, kCGPDFBleedBox);
}

CGRect CGPDFDocumentGetTrimBox(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetTrimBox::warned & 1) == 0)
  {
    CGPDFDocumentGetTrimBox::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetBoxRect(v4, kCGPDFTrimBox);
}

CGRect CGPDFDocumentGetArtBox(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetArtBox::warned & 1) == 0)
  {
    CGPDFDocumentGetArtBox::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetBoxRect(v4, kCGPDFArtBox);
}

int CGPDFDocumentGetRotationAngle(CGPDFDocumentRef document, int page)
{
  if ((CGPDFDocumentGetRotationAngle::warned & 1) == 0)
  {
    CGPDFDocumentGetRotationAngle::warned = 1;
  }

  v4 = CGPDFDocumentGetPage(document, page);

  return CGPDFPageGetRotationAngle(v4);
}

CGPDFPageRef CGPDFDocumentGetPageForPageDictionary(CGPDFDocument *a1, uint64_t a2)
{
  PageNumberForPageDictionary = CGPDFDocumentGetPageNumberForPageDictionary(a1, a2);
  if (PageNumberForPageDictionary == -1)
  {
    return 0;
  }

  return CGPDFDocumentGetPage(a1, PageNumberForPageDictionary);
}

unint64_t CGPDFDocumentGetPageNumberForPageDictionary(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v3 = *(a2 + 24), v4 = *(a2 + 32), v3 | v4))
  {
    return CGPDFDocumentGetPageNumberForPageReference(a1, v3, v4);
  }

  else
  {
    return -1;
  }
}

unint64_t CGPDFDocumentGetPageNumberForPageReference(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  pthread_mutex_lock((a1 + 128));
  if (!*(a1 + 192) || (valuePtr = a3 | (a2 << 36), v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr), Value = CFDictionaryGetValue(*(a1 + 192), v6), CFRelease(v6), !Value) || (v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()))
  {
    CGAnalyticsSendPDFDocumentGetNumberOfPagesEvent();
    number_of_pages = pdf_reader_get_number_of_pages(*(*(a1 + 16) + 16));
    v11 = **(*(a1 + 16) + 16);
    if (*(v11 + 24))
    {
      v12 = *(v11 + 32);
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *(v12 + 64);
      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      if (v14 == v15)
      {
        goto LABEL_23;
      }

      v16 = v14;
      while (*(v16 + 56) != a2)
      {
        v16 += 64;
        if (v16 == v15)
        {
          goto LABEL_23;
        }
      }

      v21 = (v16 - v14) >> 6;
      v9 = v21 + 1;
      if (v21 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = number_of_pages;
      if (!number_of_pages)
      {
LABEL_23:
        v9 = -1;
LABEL_24:
        pthread_mutex_unlock((a1 + 128));
        return v9;
      }

      v9 = 1;
      while (1)
      {
        pdf_document_get_page_dictionary(*(*(a1 + 16) + 16), v9);
        if (v18)
        {
          v20 = *(v18 + 24);
          v19 = *(v18 + 32);
        }

        else
        {
          v20 = 0;
          LOWORD(v19) = 0;
        }

        if (v20 | v19 && v20 == a2 && v19 == a3)
        {
          break;
        }

        if (++v9 > v17)
        {
          goto LABEL_23;
        }
      }
    }

    if (v9 != -1)
    {
      v23 = *MEMORY[0x1E695E480];
      if (!*(a1 + 192))
      {
        *(a1 + 192) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      valuePtr = a3 | (a2 << 36);
      v24 = CFNumberCreate(v23, kCFNumberSInt64Type, &valuePtr);
      valuePtr = v9;
      v25 = CFNumberCreate(v23, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(*(a1 + 192), v24, v25);
      CFRelease(v25);
      CFRelease(v24);
    }

    goto LABEL_24;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  pthread_mutex_unlock((a1 + 128));
  return valuePtr;
}

uint64_t CGPDFDocumentEnableTaggedStructureSerialization(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

CGPDFDictionaryRef CGPDFDocumentGetPageBoxes(CGPDFDictionaryRef result, CGRect *a2)
{
  if (result && a2)
  {
    v3 = result;
    number_of_pages = pdf_reader_get_number_of_pages(*(*(result + 2) + 16));
    result = pdf_document_get_catalog(**(*(v3 + 2) + 16));
    if (number_of_pages)
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      value = 0;
      result = CGPDFDictionaryGetDictionary(result, "Pages", &value);
      if (result)
      {
        v6 = 1;
        return parse_page_nodes(&v6, number_of_pages, a2, value);
      }
    }
  }

  return result;
}

uint64_t parse_page_nodes(uint64_t result, unint64_t a2, CGRect *a3, CGPDFDictionary *a4)
{
  if (*result <= a2)
  {
    value[7] = v4;
    value[8] = v5;
    v9 = result;
    value[0] = 0;
    result = CGPDFDictionaryGetName(a4, "Type", value);
    if (result)
    {
      v10 = value[0];
      if (!strcmp(value[0], "Page"))
      {
        v14 = &a3[5 * *v9];
        v15 = 0x7FFFFFFFFFFFFFBLL;
        do
        {
          p_x = &v14[v15].origin.x;
          *p_x = 0uLL;
          p_x[1] = 0uLL;
          ++v15;
        }

        while (v15 * 32);
        CGPDFDictionaryGetRect(a4, "MediaBox", &v14[-5].origin.x);
        CGPDFDictionaryGetRect(a4, "CropBox", &v14[-4].origin.x);
        CGPDFDictionaryGetRect(a4, "BleedBox", &v14[-3].origin.x);
        CGPDFDictionaryGetRect(a4, "TrimBox", &v14[-2].origin.x);
        result = CGPDFDictionaryGetRect(a4, "ArtBox", &v14[-1].origin.x);
        ++*v9;
      }

      else
      {
        result = strcmp(v10, "Pages");
        if (!result)
        {
          array = 0;
          result = CGPDFDictionaryGetArray(a4, "Kids", &array);
          if (result)
          {
            if (array)
            {
              v11 = *(array + 3) - *(array + 2);
              if (v11)
              {
                v12 = 0;
                v13 = v11 >> 3;
                do
                {
                  dict = 0;
                  result = CGPDFArrayGetDictionary(array, v12, &dict);
                  if (result)
                  {
                    result = parse_page_nodes(v9, a2, a3, dict);
                    if (*v9 > a2)
                    {
                      break;
                    }
                  }

                  ++v12;
                }

                while (v13 != v12);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__CFArray *CGPDFDocumentCopyIncrementalUpdatePositions(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = ***(*(a1 + 16) + 16);
  CGPDFSourceSetPosition(v3, 0);
  while (v3)
  {
    if (*(v3 + 208))
    {
      break;
    }

    v7 = 0;
    if ((CGPDFSourceForwardSearch(v3, "startxref", "\n\r", &v7) & 1) == 0)
    {
      break;
    }

    v4 = v7;
    CGPDFSourceSetPosition(v3, v7 + 9);
    v8 = 0;
    if (!read_integer(v3, &v8))
    {
      break;
    }

    if (v8 < 0)
    {
      break;
    }

    v8 = 0;
    if ((CGPDFSourceForwardSearch(v3, "%%EOF", 0, &v8) & 1) == 0)
    {
      break;
    }

    v5 = v8;
    CGPDFSourceSetPosition(v3, v8 + 5);
    if (v5 - v4 - 9 <= 16)
    {
      CGCFArrayAppendInteger(Mutable, v5 + 5);
    }
  }

  return Mutable;
}

uint64_t LRUCache::print(LRUCache *this)
{
  putchar(91);
  v2 = *(this + 1);
  if (v2 != this)
  {
    v3 = 1;
    do
    {
      v4 = *(v2 + 2);
      if (v4)
      {
        v4 = *(*(v4 + 40) + 8);
      }

      printf("%ld", v4);
      if (v3 < *(this + 2))
      {
        putchar(32);
      }

      v2 = *(v2 + 1);
      ++v3;
    }

    while (v2 != this);
  }

  return puts("]");
}

CFDictionaryRef CGPDFDocumentGetOutline(CGPDFDocumentRef document)
{
  if (!document)
  {
    return 0;
  }

  v2 = *(**(*(document + 2) + 16) + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (!v3 || *(v3 + 184) != 1)
    {
      return 0;
    }
  }

  pthread_mutex_lock((document + 56));
  v4 = *(document + 6);
  if (!v4)
  {
    __s1 = 0;
    value = 0;
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(document + 2) + 16));
    if (CGPDFDictionaryGetDictionary(catalog, "Outlines", &value) && (!CGPDFDictionaryGetName(value, "Type", &__s1) || !strcmp(__s1, "Outlines")))
    {
      dict = 0;
      if (CGPDFDictionaryGetDictionary(catalog, "Pages", &dict))
      {
        v6 = dict;
        v15 = 0;
        if (CGPDFDictionaryGetName(dict, "Type", &v15) && !strcmp(v15, "Pages"))
        {
          v14 = 0;
          if (CGPDFDictionaryGetInteger(v6, "Count", &v14) && v14 >= 1)
          {
            v8 = malloc_type_calloc(v14 + 1, 8uLL, 0x2004093837F09uLL);
            __CFSetLastAllocationEventName();
            if (v8)
            {
              *v8 = (v14 + 1);
              v13 = 1;
              populatePageMap(v6, v8, &v13);
              Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              v14 = Mutable;
              v15 = @"Children";
              v4 = CFDictionaryCreate(0, &v15, &v14, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFRelease(Mutable);
              v13 = 0;
              if (CGPDFDictionaryGetDictionary(value, "First", &v13))
              {
                do
                {
                  buildOutline(v13, Mutable, catalog, document);
                }

                while (CGPDFDictionaryGetDictionary(v13, "Next", &v13));
              }

              free(v8);
              goto LABEL_6;
            }
          }
        }
      }
    }

    pthread_mutex_unlock((document + 56));
    return 0;
  }

LABEL_6:
  pthread_mutex_unlock((document + 56));
  return v4;
}

uint64_t populatePageMap(CGPDFDictionary *a1, CGPDFDictionary **a2, unint64_t *a3)
{
  value = 0;
  if (CGPDFDictionaryGetName(a1, "Type", &value) || (result = strcmp(value, "Pages"), !result))
  {
    array = 0;
    result = CGPDFDictionaryGetArray(a1, "Kids", &array);
    if (result)
    {
      if (array)
      {
        v7 = *(array + 3) - *(array + 2);
        if (v7)
        {
          v8 = 0;
          v9 = v7 >> 3;
          do
          {
            dict = 0;
            result = CGPDFArrayGetDictionary(array, v8, &dict);
            if (result)
            {
              result = CGPDFDictionaryGetName(dict, "Type", &value);
              if (result)
              {
                v10 = value;
                if (!strcmp(value, "Pages"))
                {
                  result = populatePageMap(dict, a2, a3);
                }

                else
                {
                  result = strcmp(v10, "Page");
                  if (!result)
                  {
                    v11 = *a3;
                    if (*a3 >= *a2)
                    {
                      return result;
                    }

                    v12 = dict;
                    *a3 = v11 + 1;
                    a2[v11] = v12;
                  }
                }
              }
            }

            ++v8;
          }

          while (v9 != v8);
        }
      }
    }
  }

  return result;
}

void buildOutline(CGPDFDictionary *a1, __CFArray *a2, CGPDFDictionary *a3, CGPDFDocument *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  value = 0;
  if (!CGPDFDictionaryGetString(a1, "Title", &value))
  {
    return;
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!CGPDFDictionaryGetObject(a1, "Dest", &v41) && !CGPDFDictionaryGetDictionary(a1, "A", &v40))
  {
    return;
  }

  v8 = v41;
  if (!v41)
  {
    dict[0] = 0;
    if (!CGPDFDictionaryGetName(v40, "S", dict))
    {
      return;
    }

    v12 = dict[0];
    if (!strcmp(dict[0], "GoTo"))
    {
      if (!CGPDFDictionaryGetObject(v40, "D", &v41))
      {
        return;
      }
    }

    else if (strcmp(v12, "URI") || !CGPDFDictionaryGetString(v40, "URI", &v39))
    {
      return;
    }

    v8 = v41;
    if (!v41)
    {
      v17 = v39;
      if (v39)
      {
        if (!*(v39 + 3))
        {
          v18 = v39 + 80;
          goto LABEL_53;
        }

        decrypt_string(v39);
        v18 = v17 + 80;
        if (v39)
        {
          v17 = v39;
LABEL_53:
          if (*(v17 + 3))
          {
            decrypt_string(v17);
          }

          v24 = *(v17 + 9);
          goto LABEL_56;
        }
      }

      else
      {
        v18 = 0;
      }

      v24 = 0;
LABEL_56:
      v25 = CFURLCreateWithBytes(0, v18, v24, 0x8000100u, 0);
      if (!v25)
      {
        return;
      }

      v16 = v25;
      v13 = 0;
      DictionaryRepresentation = 0;
      v34 = 1;
      goto LABEL_58;
    }
  }

  array[0] = 0;
  v9 = *(v8 + 2);
  switch(v9)
  {
    case 7:
      v11 = *(v8 + 4);
      array[0] = v11;
      break;
    case 6:
      dict[0] = 0;
      v38 = 0;
      if (!CGPDFDictionaryGetDictionary(a3, "Names", dict))
      {
        return;
      }

      if (!CGPDFDictionaryGetDictionary(dict[0], "Dests", &v38))
      {
        return;
      }

      if (!v41)
      {
        return;
      }

      if (*(v41 + 2) != 6)
      {
        return;
      }

      v11 = nameTreeSearch(v38, *(v41 + 4));
      array[0] = v11;
      if (!v11)
      {
        return;
      }

      break;
    case 5:
      dict[0] = 0;
      v10 = *(v8 + 4);
      if (!CGPDFDictionaryGetDictionary(a3, "Dests", dict) || !CGPDFDictionaryGetArray(dict[0], v10, array))
      {
        return;
      }

      v11 = array[0];
      break;
    default:
      return;
  }

  __s1 = 0;
  v38 = 0;
  if (!CGPDFArrayGetDictionary(v11, 0, &v38))
  {
    return;
  }

  if (!CGPDFArrayGetName(array[0], 1uLL, &__s1))
  {
    return;
  }

  valuePtr = CGPDFDocumentGetPageNumberForPageDictionary(a4, v38);
  if (!valuePtr)
  {
    return;
  }

  v13 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  v14 = __s1;
  if (!strcmp(__s1, "FitR") && array[0] && *(array[0] + 3) - *(array[0] + 2) == 48)
  {
    v19 = 0;
    *dict = 0u;
    *v47 = 0u;
    while (CGPDFArrayGetNumber(array[0], 0, &dict[v19]))
    {
      if (++v19 == 4)
      {
        v20 = dict[0];
        v21 = *&dict[1];
        v22 = v47[0] - *dict;
        v23 = v47[1] - *&dict[1];
        goto LABEL_47;
      }
    }
  }

  else if (!strcmp(v14, "XYZ"))
  {
    if (array[0])
    {
      if (*(array[0] + 3) - *(array[0] + 2) == 40)
      {
        dict[0] = 0;
        v35 = 0.0;
        if (CGPDFArrayGetNumber(array[0], 2uLL, dict) && CGPDFArrayGetNumber(array[0], 3uLL, &v35))
        {
          v20 = dict[0];
          v21 = v35;
          v22 = 0.0;
          v23 = 0.0;
LABEL_47:
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v20);
          if (v13)
          {
            goto LABEL_29;
          }

LABEL_48:
          if (DictionaryRepresentation)
          {
            CFRelease(DictionaryRepresentation);
          }

          return;
        }
      }
    }
  }

  DictionaryRepresentation = 0;
  if (!v13)
  {
    goto LABEL_48;
  }

LABEL_29:
  v34 = 0;
  v16 = 0;
LABEL_58:
  v26 = &v44;
  v27 = v47;
  v28 = CGPDFStringCopyTextString(value);
  v38 = 0;
  Dictionary = CGPDFDictionaryGetDictionary(a1, "First", &v38);
  Mutable = 0;
  if (Dictionary)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v47[0] = 0.0;
  v47[1] = 0.0;
  v44 = 0;
  v45 = 0;
  dict[0] = @"Title";
  dict[1] = @"Destination";
  if (v34)
  {
    v31 = v16;
  }

  else
  {
    v31 = v13;
  }

  array[0] = v28;
  array[1] = v31;
  if (DictionaryRepresentation)
  {
    v26 = &v45;
    v27 = &v47[1];
    *&v47[0] = @"DestinationRect";
    v44 = DictionaryRepresentation;
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  if (Mutable)
  {
    *v27 = @"Children";
    ++v32;
    *v26 = Mutable;
  }

  v33 = CFDictionaryCreate(0, dict, array, v32, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFArrayAppendValue(a2, v33);
  CFRelease(v28);
  if ((v34 & 1) == 0)
  {
    CFRelease(v13);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v38)
  {
    do
    {
      buildOutline(v38, Mutable, a3, a4);
    }

    while (CGPDFDictionaryGetDictionary(v38, "Next", &v38));
  }
}

CGPDFArrayRef nameTreeSearch(CGPDFDictionary *a1, CGPDFString *a2)
{
  if (a2)
  {
    if (*(a2 + 3))
    {
      decrypt_string(a2);
    }

    v4 = a2 + 80;
  }

  else
  {
    v4 = 0;
  }

  value = 0;
  if (CGPDFDictionaryGetArray(a1, "Limits", &value) && value && *(value + 3) - *(value + 2) == 16)
  {
    v17 = 0;
    array = 0;
    if (!CGPDFArrayGetString(value, 0, &array) || !CGPDFArrayGetString(value, 1uLL, &v17))
    {
      return 0;
    }

    v5 = array;
    if (array)
    {
      if (*(array + 3))
      {
        decrypt_string(array);
      }

      v5 += 80;
    }

    v6 = v17;
    if (v17)
    {
      if (*(v17 + 3))
      {
        decrypt_string(v17);
      }

      v6 += 80;
    }

    if (!v5 || strcmp(v4, v5) < 0 || !v6 || strcmp(v4, v6) > 0)
    {
      return 0;
    }
  }

  array = 0;
  if (!CGPDFDictionaryGetArray(a1, "Names", &array) || !array || (v7 = *(array + 3) - *(array + 2)) == 0)
  {
LABEL_34:
    v17 = 0;
    if (CGPDFDictionaryGetArray(a1, "Kids", &v17))
    {
      if (v17)
      {
        v11 = *(v17 + 3) - *(v17 + 2);
        if (v11)
        {
          v12 = 0;
          v13 = v11 >> 3;
          while (1)
          {
            dict = 0;
            if (CGPDFArrayGetDictionary(v17, v12, &dict))
            {
              result = nameTreeSearch(dict, a2);
              if (result)
              {
                break;
              }
            }

            if (v13 == ++v12)
            {
              return 0;
            }
          }

          return result;
        }
      }
    }

    return 0;
  }

  v8 = 0;
  v9 = v7 >> 3;
  while (1)
  {
    dict = 0;
    v17 = 0;
    v15 = 0;
    if (CGPDFArrayGetString(array, v8, &v17) && CGPDFArrayGetDictionary(array, v8 + 1, &dict) && CGPDFDictionaryGetArray(dict, "D", &v15))
    {
      v10 = v17;
      if (*(v17 + 3))
      {
        decrypt_string(v17);
      }

      if (!strcmp(v4, v10 + 80))
      {
        return v15;
      }
    }

    v8 += 2;
    if (v8 >= v9)
    {
      goto LABEL_34;
    }
  }
}

BOOL CGPDFDocumentAppendChanges(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && *(**(*(a1 + 16) + 16) + 40))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2 || !CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024))
  {
    return 0;
  }

  if (_xpc_runtime_is_app_sandboxed())
  {
    v3 = _amkrtemp();
    if (v3 || (v5 = open(buffer, 512, 448), (v5 & 0x80000000) == 0) && (close(v5), (v3 = _amkrtemp()) != 0))
    {
      v4 = v3;
      goto LABEL_18;
    }

    v6 = __error();
    CGPostError(" _amkrtemp(%s) failed.  errno = %d\n", buffer, *v6);
  }

  v7 = strlen(buffer);
  v4 = malloc_type_malloc(v7 + 7, 0x100004077774924uLL);
  strncpy(v4, buffer, v7 + 1);
  if (_xpc_runtime_is_app_sandboxed())
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v9 = strrchr(v4, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v4;
    }

    v11 = strlen(v10);
    memmove(v10 + 1, v10, v11 + 1);
    *v10 = 46;
    strcat(v4, "-XXXX");
    mktemp(v4);
  }

LABEL_18:
  v12 = CGDataConsumerCreateWithFilename(v4);
  os_unfair_lock_lock((a1 + 212));
  v13 = CGPDFAppenderWrite(*(a1 + 216), v12);
  CFRelease(v12);
  os_unfair_lock_unlock((a1 + 212));
  if (v13)
  {
    rename(v4, buffer, v14);
    v8 = v15 == 0;
  }

  else
  {
    v8 = 0;
  }

  unlink(v4);
  free(v4);
  return v8;
}

CGDataProvider *CGPDFDocumentCopyToConsumerWithChanges(uint64_t a1, uint64_t a2)
{
  if (a1 && *(**(*(a1 + 16) + 16) + 40))
  {
    return 0;
  }

  else
  {
    return CGPDFAppenderWrite(*(a1 + 216), a2);
  }
}

void CGPDFDocumentAppendPage(uint64_t a1, CGPDFPage *a2)
{
  os_unfair_lock_lock((a1 + 212));
  theArray = 0;
  v11 = 0;
  AppendModeGetMutablePages(a1, &v11, &theArray);
  PageObject = CGPDFAppenderCreatePageObject(*(a1 + 216), a2);
  v6 = CGPDFReferenceCreate(PageObject, v5);
  v7 = theArray;
  CFArrayAppendValue(theArray, v6);
  CFRelease(v6);
  v8 = v11;
  Count = CFArrayGetCount(v7);
  CGPDFAppenderDictionarySetInt32(v8, "Count", Count);

  os_unfair_lock_unlock((a1 + 212));
}

void AppendModeGetMutablePages(CGPDFDocument *a1, CFDictionaryRef **a2, __CFArray **a3)
{
  catalog = pdf_document_get_catalog(**(*(a1 + 2) + 16));
  if (catalog)
  {
    value = 0;
    if (CGPDFDictionaryGetDictionary(catalog, "Pages", &value))
    {
      if (value)
      {
        v7 = *(value + 3);
        v8 = *(value + 4);
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *a2 = CGPDFAppenderGetMutableObject(*(a1 + 27), v7, v8);
      v36 = 0;
      if (CGPDFDictionaryGetArray(value, "Kids", &v36))
      {
        if (v36)
        {
          v9 = *(v36 + 6);
          v10 = *(v36 + 7);
        }

        else
        {
          v9 = 0;
          v10 = 0;
        }

        if (v9 | v10)
        {
          MutableObject = CGPDFAppenderGetMutableObject(*(a1 + 27), v9, v10);
        }

        else
        {
          v11 = *a2;
          v12 = CGPDFNameCreate("Kids");
          MutableObject = CFDictionaryGetValue(v11, v12);
          CFRelease(v12);
        }

        *a3 = MutableObject;
        Count = CFArrayGetCount(MutableObject);
        if (Count >= 1)
        {
          v15 = Count;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(MutableObject, v16);
            v18 = CFGetTypeID(ValueAtIndex);
            if (CGPDFReferenceTypeID_onceToken != -1)
            {
              dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
            }

            if (v18 == CGPDFReferenceTypeID_id)
            {
              if (ValueAtIndex)
              {
                v19 = ValueAtIndex[4];
                v20 = *(ValueAtIndex + 12);
              }

              else
              {
                v19 = 0;
                v20 = 0;
              }

              v21 = pdf_xref_resolve(**(*(a1 + 2) + 16), v19, v20);
              if (v21)
              {
                if (*(v21 + 2) == 8)
                {
                  v22 = v21[4];
                  __s1 = 0;
                  if (!CGPDFDictionaryGetName(v22, "Type", &__s1) || strcmp(__s1, "Page"))
                  {
                    break;
                  }
                }
              }
            }

            if (v15 == ++v16)
            {
              return;
            }
          }

          v23 = CFArrayGetCount(MutableObject);
          v24 = pdf_document_get_catalog(**(*(a1 + 2) + 16));
          __s1 = 0;
          if (CGPDFDictionaryGetDictionary(v24, "Pages", &__s1))
          {
            Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
            AppendModeExtractPagesTree(__s1, MutableObject, Mutable, v26);
            CFRelease(Mutable);
          }

          if (v23 >= 1)
          {
            do
            {
              CFArrayRemoveValueAtIndex(MutableObject, 0);
              --v23;
            }

            while (v23);
          }

          if (__s1)
          {
            v27 = *(__s1 + 3);
            v28 = *(__s1 + 4);
          }

          else
          {
            v27 = 0;
            v28 = 0;
          }

          v29 = CGPDFReferenceCreate(v27, v28);
          for (i = 0; i < CFArrayGetCount(MutableObject); ++i)
          {
            v31 = CFArrayGetValueAtIndex(MutableObject, i);
            v32 = CFGetTypeID(v31);
            if (CGPDFReferenceTypeID_onceToken != -1)
            {
              dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
            }

            if (v32 == CGPDFReferenceTypeID_id)
            {
              if (v31)
              {
                v33 = v31[2];
                v34 = v31[3];
              }

              else
              {
                v33 = 0;
                v34 = 0;
              }

              v35 = CGPDFAppenderGetMutableObject(*(a1 + 27), v33, v34);
              CGPDFAppenderDictionarySetValue(v35, "Parent", v29);
            }
          }
        }
      }

      else
      {
        pdf_error("Error: Failed to retrieve /Kids from pages dictionary");
      }
    }

    else
    {
      pdf_error("Error: Failed to retrieve /Pages from document catalog for append-mode");
    }
  }

  else
  {

    pdf_error("Error: Failed to retrieve document catalog for append-mode");
  }
}

void AppendModeExtractPagesTree(CGPDFDocument *a1, CGPDFDictionary *a2, __CFArray *a3, __CFSet *a4)
{
  v6 = a1;
  if (a1)
  {
    a1 = *(a1 + 3);
    v7 = *(v6 + 4);
  }

  else
  {
    v7 = 0;
  }

  v8 = CGPDFReferenceCreate(a1, v7);
  if (CFSetContainsValue(a3, v8))
  {

    CFRelease(v8);
  }

  else
  {
    CFSetAddValue(a3, v8);
    CFRelease(v8);
    value = 0;
    if (CGPDFDictionaryGetArray(v6, "Kids", &value))
    {
      if (value)
      {
        v9 = *(value + 3) - *(value + 2);
        if (v9)
        {
          v10 = 0;
          v11 = v9 >> 3;
          do
          {
            dict = 0;
            if (CGPDFArrayGetDictionary(value, v10, &dict))
            {
              __s1 = 0;
              if (CGPDFDictionaryGetName(dict, "Type", &__s1))
              {
                v12 = __s1;
                if (!strcmp(__s1, "Page"))
                {
                  if (dict)
                  {
                    v14 = *(dict + 3);
                    v15 = *(dict + 4);
                  }

                  else
                  {
                    v14 = 0;
                    v15 = 0;
                  }

                  v16 = CGPDFReferenceCreate(v14, v15);
                  CFArrayAppendValue(a2, v16);
                  CFRelease(v16);
                }

                else if (!strcmp(v12, "Pages"))
                {
                  AppendModeExtractPagesTree(dict, a2, a3, v13);
                }
              }
            }

            ++v10;
          }

          while (v11 != v10);
        }
      }
    }
  }
}

void CGPDFDocumentInsertPageAtIndex(uint64_t a1, CGPDFPage *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 212));
  theArray = 0;
  v16 = 0;
  AppendModeGetMutablePages(a1, &v16, &theArray);
  v6 = theArray;
  Count = CFArrayGetCount(theArray);
  v8 = a3 - 1;
  if (v8 < Count + 1)
  {
    v9 = Count;
    PageObject = CGPDFAppenderCreatePageObject(*(a1 + 216), a2);
    v12 = CGPDFReferenceCreate(PageObject, v11);
    if (v8 >= v9)
    {
      CFArrayAppendValue(v6, v12);
    }

    else
    {
      CFArrayInsertValueAtIndex(v6, v8, v12);
    }

    CFRelease(v12);
    v13 = v16;
    v14 = CFArrayGetCount(v6);
    CGPDFAppenderDictionarySetInt32(v13, "Count", v14);
  }

  os_unfair_lock_unlock((a1 + 212));
}

void CGPDFDocumentRemovePageAtIndex(os_unfair_lock_s *a1, CFIndex a2)
{
  os_unfair_lock_lock(a1 + 53);
  v9 = 0;
  v10 = 0;
  AppendModeGetMutablePages(a1, &v10, &v9);
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    v6 = v9 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a2 == 0;
  if (!v7 && CFArrayGetCount(v9) >= a2)
  {
    CFArrayRemoveValueAtIndex(v5, a2 - 1);
    Count = CFArrayGetCount(v5);
    CGPDFAppenderDictionarySetInt32(v4, "Count", Count);
  }

  os_unfair_lock_unlock(a1 + 53);
}

void CGPDFDocumentExchangePagesAtIndices(uint64_t a1, unint64_t a2, unint64_t a3)
{
  number_of_pages = pdf_reader_get_number_of_pages(*(*(a1 + 16) + 16));
  if (a2 && a2 != a3 && number_of_pages >= a2 && a3 - 1 < number_of_pages)
  {
    os_unfair_lock_lock((a1 + 212));
    v11 = 0;
    v12 = 0;
    AppendModeGetMutablePages(a1, &v12, &v11);
    v8 = v11;
    KidsArrayPageIndex = AppendModeGetKidsArrayPageIndex(a1, v11, a2);
    v10 = AppendModeGetKidsArrayPageIndex(a1, v8, a3);
    if (((v10 | KidsArrayPageIndex) & 0x8000000000000000) == 0)
    {
      CFArrayExchangeValuesAtIndices(v8, KidsArrayPageIndex, v10);
    }

    os_unfair_lock_unlock((a1 + 212));
  }
}

CFIndex AppendModeGetKidsArrayPageIndex(CGPDFDocument *a1, __CFArray *a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  pdf_document_get_page_dictionary(*(*(a1 + 2) + 16), a3);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  if (!(v6 | *(v5 + 32)))
  {
    return -1;
  }

  v9 = CGPDFReferenceCreate(v6, *(v5 + 32));
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
LABEL_10:
    v7 = -1;
  }

  else
  {
    v11 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      if (CFEqual(ValueAtIndex, v9))
      {
        break;
      }

      if (v11 == ++v7)
      {
        goto LABEL_10;
      }
    }
  }

  CFRelease(v9);
  return v7;
}

void CGPDFDocumentAppendMetadata(uint64_t a1, const __CFData *a2)
{
  os_unfair_lock_lock((a1 + 212));
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5 != a2)
    {
      if (v5)
      {
        CFRelease(v5);
      }

      if (a2)
      {
        MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
      }

      else
      {
        MutableCopy = 0;
      }

      *(v4 + 24) = MutableCopy;
    }
  }

  os_unfair_lock_unlock((a1 + 212));
}

void CGPDFDocumentAppendDocumentInfo(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 212));
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(v4 + 32);
    if (v6 != a2)
    {
      if (v6)
      {
        CFRelease(v6);
      }

      *(v4 + 32) = a2;
      CFRetain(a2);
    }
  }

  os_unfair_lock_unlock((a1 + 212));
}

CGDataConsumerRef CGDataConsumerCreate(void *info, const CGDataConsumerCallbacks *cbks)
{
  if (!cbks)
  {
    return 0;
  }

  if (_block_invoke_once_1417 != -1)
  {
    dispatch_once(&_block_invoke_once_1417, &__block_literal_global_8_1418);
  }

  result = CGTypeCreateInstance(CGDataConsumerGetTypeID_data_consumer_type_id, 96);
  if (result)
  {
    *(result + 2) = info;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    putBytes = cbks->putBytes;
    if (cbks->putBytes == 1)
    {
      v6 = *cbks;
      v7 = cbks[2];
      *(result + 5) = cbks[1];
      *(result + 6) = v7;
      *(result + 4) = v6;
    }

    else
    {
      *(result + 8) = 0;
      if (putBytes)
      {
        *(result + 9) = putBytes;
        *(result + 11) = 0;
        *(result + 12) = 0;
        *(result + 10) = 0;
        *(result + 13) = cbks->releaseConsumer;
      }

      else
      {
        *(result + 72) = *&cbks->releaseConsumer;
        *(result + 11) = 0;
        *(result + 6) = *(cbks + 24);
      }
    }
  }

  return result;
}

uint64_t __CGDataConsumerGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGDataConsumerGetTypeID_class);
  CGDataConsumerGetTypeID_data_consumer_type_id = result;
  return result;
}

void data_consumer_reclaim(uint64_t a1)
{
  CGDataConsumerClose(a1);
  v2 = *(a1 + 104);
  if (v2)
  {
    v2(*(a1 + 16));
    *(a1 + 104) = 0;
  }

  free(*(a1 + 24));
  *(a1 + 24) = 0;
}

uint64_t CGDataConsumerClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 56) & 1) == 0)
    {
      v2 = *(result + 96);
      if (v2)
      {
        v3 = *(result + 80);
        if (v3)
        {
          v3(*(result + 16));
          v2 = *(v1 + 96);
        }

        result = v2(*(v1 + 16));
        *(v1 + 56) = 1;
      }
    }
  }

  return result;
}

CFTypeID CGDataConsumerGetTypeID(void)
{
  if (_block_invoke_once_1417 != -1)
  {
    dispatch_once(&_block_invoke_once_1417, &__block_literal_global_8_1418);
  }

  return CGDataConsumerGetTypeID_data_consumer_type_id;
}

const char *CGDataConsumerCreateWithFilename(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = fopen(result, "wb");
    if (v2)
    {
      cbks.putBytes = 1;
      cbks.releaseConsumer = file_put_bytes;
      v6 = file_flush_bytes;
      v7 = file_set_position;
      v8 = file_close;
      v9 = 0;
      return CGDataConsumerCreate(v2, &cbks);
    }

    else
    {
      v3 = __error();
      v4 = strerror(*v3);
      return 0;
    }
  }

  return result;
}

void file_close(FILE *a1)
{
  if (fclose(a1))
  {
    v1 = __error();
    v2 = strerror(*v1);
    CGPostError("CGDataConsumer(%s): fclose failed: %s.", "file_close", v2);
  }
}

BOOL file_set_position(FILE *a1, uint64_t a2)
{
  v2 = fseek(a1, a2, 0);
  if (v2)
  {
    v3 = __error();
    v4 = strerror(*v3);
    CGPostError("CGDataConsumer(%s): fseek failed: %s.", "file_set_position", v4);
  }

  return v2 == 0;
}

void file_flush_bytes(FILE *a1)
{
  if (fflush(a1))
  {
    v1 = __error();
    v2 = strerror(*v1);
    CGPostError("CGDataConsumer(%s): fflush failed: %s.", "file_flush_bytes", v2);
  }
}

CGDataConsumerRef CGDataConsumerCreateWithFile(CGDataConsumerRef result)
{
  if (result)
  {
    v1.putBytes = 1;
    v1.releaseConsumer = file_put_bytes;
    v2 = file_flush_bytes;
    v3 = file_set_position;
    v4 = file_close;
    v5 = 0;
    return CGDataConsumerCreate(result, &v1);
  }

  return result;
}

CGDataConsumerRef CGDataConsumerCreateWithURL(CGDataConsumerRef url)
{
  v12 = *MEMORY[0x1E69E9840];
  if (url)
  {
    v1 = url;
    v2 = CFURLCopyScheme(url);
    if (v2 && (v3 = v2, v4 = CFStringCompare(v2, @"file", 0), CFRelease(v3), v4 == kCFCompareEqualTo))
    {
      if (CFURLGetFileSystemRepresentation(v1, 1u, &cbks, 1025))
      {
        return CGDataConsumerCreateWithFilename(&cbks);
      }

      CGPostError("%s: failed to get file system representation of url.", "CGDataConsumerCreateWithURL");
    }

    else
    {
      v5 = malloc_type_malloc(0x18uLL, 0x106004078230D8EuLL);
      Mutable = CFDataCreateMutable(0, 0);
      v5[1] = Mutable;
      if (Mutable)
      {
        *v5 = CFRetain(v1);
        v5[2] = 0;
        cbks.putBytes = 1;
        cbks.releaseConsumer = url_put_bytes;
        v8 = 0;
        v9 = url_set_position;
        v10 = url_close;
        v11 = 0;
        return CGDataConsumerCreate(v5, &cbks);
      }

      free(v5);
    }

    return 0;
  }

  return url;
}

void url_close(CFTypeRef *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v3 = a1[1];
  v4 = CFGetTypeID(*a1);
  v5 = CFURLGetTypeID();
  if (!v3 || v4 != v5)
  {
    goto LABEL_19;
  }

  v7 = CFGetTypeID(v3);
  if (v7 != CFDataGetTypeID() || CFDataGetLength(v3) < 1)
  {
    goto LABEL_19;
  }

  v8 = CGCFURLGetType(v2);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v9 = CFWriteStreamCreateWithFTPURL(0, v2);
      if (v9)
      {
        v10 = v9;
        if (CFWriteStreamOpen(v9) == 1)
        {
          Length = CFDataGetLength(v3);
          BytePtr = CFDataGetBytePtr(v3);
          v13 = CFWriteStreamWrite(v10, BytePtr, Length);
          CFWriteStreamClose(v10);
          CFRelease(v10);
          if (v13 == Length)
          {
            goto LABEL_20;
          }
        }

        else
        {
          CFRelease(v10);
        }
      }
    }

LABEL_19:
    CGPostError("CGDataConsumer(%s): write failed.", "url_close");
    goto LABEL_20;
  }

  v14 = CFGetAllocator(v2);
  Request = CFHTTPMessageCreateRequest(v14, @"PUT", v2, *MEMORY[0x1E695ADB0]);
  v16 = CFDataGetLength(v3);
  v17 = CFStringCreateWithFormat(v14, 0, @"%ld", v16);
  CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v17);
  CFRelease(v17);
  v18 = http_message_send_request(Request);
  CFRelease(Request);
  if (!v18)
  {
    goto LABEL_19;
  }

  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v18);
  CFRelease(v18);
  if ((ResponseStatusCode - 200) >= 0x64)
  {
    goto LABEL_19;
  }

LABEL_20:
  CFRelease(a1[1]);
  CFRelease(*a1);

  free(a1);
}