void sub_183F31908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24)
{
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(*(v25 - 120));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a15);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a16);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a17);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a18);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a19);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a20);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a21);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a22);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a23);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a24);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a9);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a10);
  v27 = *(v24 + 128);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v24 + 32));
  _Unwind_Resume(a1);
}

CFTypeRef CG::DisplayListResourcePattern::setPattern(CG::DisplayListResourcePattern *this, CFTypeRef cf)
{
  result = *(this + 2);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(this + 2) = result;
  }

  return result;
}

void sub_183F31B74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *CG::DisplayListEntryDisplayList::_hash(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 80);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    CG::DisplayList::getHash((v5 + 16));
  }

  else
  {
    v6 = 0;
  }

  __src = v6;
  XXH64_update(a2, &__src, 8uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  y = point.y;
  x = point.x;
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v6, c);
    v2 = vaddq_f64(*&v6.tx, vmlaq_n_f64(vmulq_n_f64(*&v6.c, y), *&v6.a, x));
  }

  else
  {
    handle_invalid_context("CGContextConvertPointToDeviceSpace", c);
    v2.f64[0] = x;
    v2.f64[1] = y;
  }

  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

CGAffineTransform *__cdecl CGContextGetUserSpaceToDeviceSpaceTransform(CGAffineTransform *__return_ptr retstr, CGContextRef c)
{
  memset(&v15, 0, sizeof(v15));
  if (!c)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGContextGetUserSpaceToDeviceSpaceTransform", v10);
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = *&CGAffineTransformIdentity.c;
    v11 = *&CGAffineTransformIdentity.tx;
    goto LABEL_11;
  }

  if (*(c + 4) != 1129601108)
  {
    v10 = c;
    goto LABEL_8;
  }

  result = *(c + 5);
  v5 = *(c + 12);
  if (!result || (ty = result->ty, ty == 0.0))
  {
    v15 = CGAffineTransformIdentity;
    v7 = xmmword_18439C630;
    v8 = xmmword_18439C780;
    v9 = 0uLL;
  }

  else
  {
    result = (*&ty)(&v15);
    v5 = *(c + 12);
    v7 = *&v15.a;
    v8 = *&v15.c;
    v9 = *&v15.tx;
  }

  v12 = v5[7];
  v13 = v5[8];
  v14 = vmlaq_n_f64(vmulq_n_f64(v8, v5[6]), v7, v5[5]);
  *&retstr->a = vmlaq_n_f64(vmulq_n_f64(v8, v5[4]), v7, v5[3]);
  *&retstr->c = v14;
  v11 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, v13), v7, v12));
LABEL_11:
  *&retstr->tx = v11;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  y = point.y;
  x = point.x;
  memset(&v8, 0, sizeof(v8));
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v8, c);
    v7 = v8;
    x = CGPointApplyInverseAffineTransform(&v7.a, x, y);
    y = v4;
  }

  else
  {
    handle_invalid_context("CGContextConvertPointToUserSpace", c);
  }

  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

double CGPointApplyInverseAffineTransform(double *a1, double a2, double a3)
{
  v4 = a2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a1 * v6 - a1[1] * v5;
  if (v7 != 0.0)
  {
    return (v6 * (a2 - a1[4]) - v5 * (a3 - a1[5])) / v7;
  }

  CGPostError("%s: singular matrix.", "CGPointApplyInverseAffineTransform");
  return v4;
}

void CGContextFillEllipseInRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v13 = *(c + 21);
        if (v13)
        {
          CFRelease(v13);
          *(c + 21) = 0;
        }

        v15.origin.x = x;
        v15.origin.y = y;
        v15.size.width = width;
        v15.size.height = height;
        CGContextAddEllipseInRect(c, v15);

        CGContextDrawPath(c, kCGPathFill);
      }

      return;
    }

    v12 = c;
  }

  else
  {
    v12 = 0;
  }

  handle_invalid_context("CGContextFillEllipseInRect", v12);
}

void CG::DisplayListResourceDisplayList::~DisplayListResourceDisplayList(CG::DisplayListResourceDisplayList *this)
{
  CG::DisplayListResourceDisplayList::~DisplayListResourceDisplayList(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F730;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceDisplayList *,std::shared_ptr<CG::DisplayListResourceDisplayList>::__shared_ptr_default_delete<CG::DisplayListResourceDisplayList,CG::DisplayListResourceDisplayList>,std::allocator<CG::DisplayListResourceDisplayList>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

CGFloat *CGClipCreateWithRect(CGAffineTransform *transform, char a2, CGFloat a3, CGFloat y, CGFloat width, CGFloat height)
{
  x = a3;
  if (!transform || transform->b == 0.0 && transform->c == 0.0 || transform->a == 0.0 && transform->d == 0.0)
  {
    v12 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    v13 = v12;
    if (v12)
    {
      *v12 = 1;
      *(v12 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(v12 + 4) = 0;
      v12[2] = 0.0;
      *(v12 + 10) = a2;
      if (transform)
      {
        v14 = *&transform->c;
        *&v23.a = *&transform->a;
        *&v23.c = v14;
        *&v23.tx = *&transform->tx;
        v15 = x;
        *&v14 = y;
        v16 = width;
        v17 = height;
        v24 = CGRectApplyAffineTransform(*(&v14 - 8), &v23);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
      }

      v13[3] = x;
      v13[4] = y;
      v13[5] = width;
      v13[6] = height;
    }
  }

  else
  {
    v19 = CGPathCreateWithRect(*&a3, transform);
    if (v19 && ((v20 = v19, (CGPathDisableTypeValidation & 1) != 0) || (v21 = CFGetTypeID(v19), v21 == CGPathGetTypeID())))
    {
      v22 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
      v13 = v22;
      if (v22)
      {
        *v22 = 1;
        *(v22 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
        *(v22 + 4) = 2;
        *(v22 + 10) = a2;
        *(v22 + 3) = v20;
        v22[4] = 1.0;
        v22[2] = 0.0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

CFDictionaryRef CGPointCreateDictionaryRepresentation(CGPoint point)
{
  y = point.y;
  x = point.x;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"X", x);
  add_number_to_dict(Mutable, @"Y", y);
  return Mutable;
}

BOOL CGPointMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGPoint *point)
{
  if (!dict || !point)
  {
    return 0;
  }

  get_point_from_dict(dict, &point->x);
  return result;
}

uint64_t dlRecorder_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, const CGPath *a5)
{
  if (a1 && (v6 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawPath(v6, a2, a3, a4, a5, 0, 0);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawPath");
    return 1000;
  }
}

CGFloat ripc_GetTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (v4 && (v7 = 0, v8 = 0, ((*(*v4 + 72))(v4, &v7) & 1) != 0))
  {
    (*(**(v3 + 48) + 88))(*(v3 + 48), v3 + 40);
    result = *(v3 + 40);
    v6 = SHIDWORD(v8);
    *a2 = result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = -result;
    *(a2 + 32) = 0;
    *(a2 + 40) = v6;
  }

  else
  {
    *a2 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  return result;
}

size_t CGImageGetBitsPerComponent(size_t image)
{
  if (image)
  {
    return *(image + 56);
  }

  return image;
}

uint64_t CGPDFContentStreamCreate(uint64_t a1)
{
  v14 = 0;
  value = 0;
  if (!CGPDFDictionaryGetObject(*(a1 + 16), "Contents", &value) || value == 0)
  {
    goto LABEL_6;
  }

  v4 = *(value + 2);
  if (v4 != 7)
  {
    if (v4 == 9)
    {
      v14 = *(value + 4);
      v3 = pdf_content_stream_create(1);
      CFArrayAppendValue(*(v3 + 24), v14);
      goto LABEL_10;
    }

    return 0;
  }

  v9 = *(value + 4);
  if (!v9)
  {
LABEL_6:
    v3 = pdf_content_stream_create(0);
LABEL_10:
    Property = *(a1 + 72);
    if (Property)
    {
      Property = CGPropertiesGetProperty(Property, @"kCGPDFPageShouldRenderExtraContentStream");
    }

    if (Property != *MEMORY[0x1E695E4C0])
    {
      os_unfair_lock_lock((a1 + 88));
      v6 = *(a1 + 40);
      os_unfair_lock_unlock((a1 + 88));
      v14 = v6;
      if (v6)
      {
        CFArrayAppendValue(*(v3 + 24), v6);
      }
    }

    *(v3 + 16) = a1;
    os_unfair_lock_lock((a1 + 32));
    v7 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 32));
    if (v7)
    {
      CFRetain(v7);
    }

    *(v3 + 32) = v7;
    set_default_color_spaces(v3);
    return v3;
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = (v10 - v11) >> 3;
  v3 = pdf_content_stream_create(v12);
  if (v10 == v11)
  {
    goto LABEL_10;
  }

  v13 = 0;
  while (CGPDFArrayGetStream(v9, v13, &v14))
  {
    CFArrayAppendValue(*(v3 + 24), v14);
    if (v12 == ++v13)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t CGPDFStreamCreate(uint64_t a1, CGPDFDictionaryRef dict, void *a3, uint64_t a4)
{
  value = 0;
  if (!CGPDFDictionaryGetInteger(dict, "Length", &value))
  {
    pdf_error("missing or invalid stream length.");
    v8 = 0;
    value = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = -1;
    goto LABEL_9;
  }

  v8 = value;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = a3[11];
  if (a3[18])
  {
    v10 = a3[24];
    v9 += a3[15];
  }

  else
  {
    v10 = a3[16];
  }

  v11 = v10 - v9 + a3[14];
LABEL_9:
  CGPDFSourceSetPosition(a3, v8 + a4);
  CGPDFSourceSkipWhitespace(a3);
  if (!CGPDFSourceMatch(a3, "endstream"))
  {
    v16 = 0;
    CGPDFSourceSetPosition(a3, a4);
    if (CGPDFSourceForwardSearch(a3, "endstream", "\n\r", &v16))
    {
      v12 = v16 - a4;
      pdf_error("invalid stream length %lld; should be %lld.", v8, v16 - a4);
      v8 = v12;
    }

    else
    {
    }
  }

  CGPDFSourceSetPosition(a3, v11);
  CGPDFSourcePreflightLargeRead(a3, v11, v8);
  if (CGPDFStreamGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamGetTypeID_onceToken, &__block_literal_global_22335);
  }

  cftype = pdf_create_cftype(CGPDFStreamGetTypeID_id, 88);
  v14 = cftype;
  if (cftype)
  {
    *(cftype + 24) = 0;
    *(cftype + 32) = 0;
    *(cftype + 16) = a1;
    *(cftype + 40) = 0;
    *(cftype + 48) = dict;
    *(cftype + 56) = a4;
    *(cftype + 64) = v8;
    if (a3)
    {
      CFRetain(a3);
    }

    *(v14 + 72) = a3;
    *(v14 + 80) = 0;
  }

  return v14;
}

CGColorSpace *CGPDFResourcesGetColorSpace(uint64_t a1, const char *a2)
{
  Value = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 24);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (Value = CFDictionaryGetValue(v6, v5)) == 0)
    {
      if (!strcmp(a2, "DeviceGray"))
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
      }

      else if (!strcmp(a2, "DeviceRGB"))
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
      }

      else if (!strcmp(a2, "DeviceCMYK"))
      {
        DeviceGray = CGColorSpaceCreateDeviceCMYK();
      }

      else if (!strcmp(a2, "Pattern"))
      {
        DeviceGray = CGColorSpaceCreatePattern(0);
      }

      else
      {
        resource = get_resource(a1, "ColorSpace", a2);
        DeviceGray = CGPDFCreateColorSpace(resource);
      }

      if (DeviceGray)
      {
        Value = table_set_value((a1 + 24), v5, DeviceGray);
        CGColorSpaceRelease(Value);
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(v5);
    os_unfair_lock_unlock((a1 + 80));
  }

  return Value;
}

CGPDFObjectRef get_resource(uint64_t a1, char *key, const char *a3)
{
  if (!key)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  dict = 0;
  value = 0;
  while (!CGPDFDictionaryGetDictionary(v3[1], key, &dict) || !CGPDFDictionaryGetObject(dict, a3, &value))
  {
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  return value;
}

CGColorSpaceRef CGPDFCreateColorSpace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 == 7)
  {
    v6 = *(a1 + 32);
    v4 = CGPDFObjectCopyAssociation(a1, "ColorSpace");
    if (v4)
    {
      return v4;
    }

    if (!v6 || *(v6 + 3) == *(v6 + 2))
    {
      pdf_error("invalid color space: no entries in color space array.");
      return 0;
    }

    value = 0;
    if (!CGPDFArrayGetName(v6, 0, &value))
    {
      pdf_error("invalid color space: first color space array entry must be a name.");
      return 0;
    }

    if (CGPDFCreateColorSpace_pred != -1)
    {
      dispatch_once(&CGPDFCreateColorSpace_pred, &__block_literal_global_16125);
    }

    v8 = pthread_getspecific(cg_colorspaces_key);
    if (v8)
    {
      Mutable = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        while (v6 != CFArrayGetValueAtIndex(Mutable, v12))
        {
          if (v11 == ++v12)
          {
            goto LABEL_27;
          }
        }

        pdf_error("invalid color space: color space cannot have a circular reference.");
        return 0;
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 100, 0);
    }

LABEL_27:
    CFArrayAppendValue(Mutable, v6);
    pthread_setspecific(cg_colorspaces_key, Mutable);
    device_space = create_device_space(value);
    if (!device_space)
    {
      v14 = value;
      if (!strcmp(value, "CalGray"))
      {
        CalGray = create_CalGray(v6);
      }

      else if (!strcmp(v14, "CalRGB"))
      {
        CalGray = create_CalRGB(v6);
      }

      else if (!strcmp(v14, "Lab"))
      {
        CalGray = create_Lab(v6);
      }

      else if (!strcmp(v14, "ICCBased"))
      {
        CalGray = create_ICCBased(v6);
      }

      else if (!strcmp(v14, "Separation"))
      {
        CalGray = create_Separation(v6);
      }

      else if (!strcmp(v14, "DeviceN"))
      {
        CalGray = create_DeviceN(v6);
      }

      else if (!strcmp(v14, "Indexed"))
      {
        CalGray = create_Indexed(v6);
      }

      else
      {
        if (strcmp(v14, "Pattern"))
        {
LABEL_49:
          v7 = 0;
          goto LABEL_48;
        }

        CalGray = create_Pattern(v6);
      }

      device_space = CalGray;
      if (!CalGray)
      {
        goto LABEL_49;
      }
    }

    v7 = CGPDFObjectSetAssociation(a1, device_space, "ColorSpace");
LABEL_48:
    v19.length = CFArrayGetCount(Mutable);
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v19, v6);
    CFArrayRemoveValueAtIndex(Mutable, FirstIndexOfValue);
    pthread_setspecific(cg_colorspaces_key, Mutable);
    return v7;
  }

  if (v2 != 5)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = create_device_space(v3);
  if (v4)
  {
    return v4;
  }

  if (strcmp(v3, "Pattern"))
  {
    return 0;
  }

  return CGColorSpaceCreatePattern(0);
}

char *CGPDFGStateCreate()
{
  v0 = malloc_type_malloc(0x128uLL, 0x10600405F0534CFuLL);
  __CFSetLastAllocationEventName();
  if (v0)
  {
    *v0 = CGAffineTransformIdentity;
    *(v0 + 24) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 14) = 0;
    *(v0 + 15) = 0;
    *(v0 + 13) = 0x4059000000000000;
    *(v0 + 32) = 0;
    *(v0 + 17) = 0;
    *(v0 + 18) = 0;
    v0[152] = 1;
    *(v0 + 20) = 0x3FF0000000000000;
    *(v0 + 21) = 0;
    *(v0 + 22) = 0x4024000000000000;
    *(v0 + 23) = 0;
    *(v0 + 48) = 2;
    v0[196] = 0;
    *(v0 + 50) = 0;
    *(v0 + 26) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v0 + 216) = _Q0;
    *(v0 + 116) = 0;
    v0[234] = 0;
    *(v0 + 244) = 0;
    *(v0 + 236) = 0;
    *(v0 + 65) = 0;
    *(v0 + 252) = 0;
    *(v0 + 33) = 0x3FF0000000000000;
    *(v0 + 34) = 0;
    *(v0 + 35) = 0;
    *(v0 + 36) = 0;
  }

  return v0;
}

void *CGPDFGStateCreateCopy(__int128 *a1)
{
  v2 = malloc_type_malloc(0x128uLL, 0x10600405F0534CFuLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    CGPDFGStateCopyProperties(v2, a1);
  }

  return v2;
}

CFTypeRef CGPDFGStateCopyProperties(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = *(a2 + 24);
  v6 = *(a2 + 7);
  if (v6)
  {
    CFRetain(*(a2 + 7));
  }

  *(a1 + 56) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    CFRetain(*(a2 + 8));
  }

  *(a1 + 64) = v7;
  v8 = *(a2 + 9);
  if (v8)
  {
    v9 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    if (v9)
    {
      *v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[4];
      v9[3] = v8[3];
      v9[4] = v12;
      v9[1] = v10;
      v9[2] = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 72) = v9;
  v13 = *(a2 + 10);
  if (v13)
  {
    v13 = CFRetain(v13);
  }

  *(a1 + 80) = v13;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  v14 = *(a2 + 17);
  if (v14)
  {
    CFRetain(*(a2 + 17));
  }

  *(a1 + 136) = v14;
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 152) = *(a2 + 152);
  v15 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 168) = v15;
  *(a1 + 176) = *(a2 + 22);
  v16 = *(a2 + 23);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
  }

  *(a1 + 184) = v16;
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 50);
  v17 = *(a2 + 26);
  if (v17)
  {
    CFRetain(*(a2 + 26));
  }

  *(a1 + 208) = v17;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 236) = *(a2 + 59);
  v18 = *(a2 + 30);
  if (v18)
  {
    CFRetain(*(a2 + 30));
  }

  *(a1 + 240) = v18;
  v19 = *(a2 + 31);
  if (v19)
  {
    CFRetain(*(a2 + 31));
  }

  *(a1 + 248) = v19;
  result = *(a2 + 32);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 256) = result;
  v21 = *(a2 + 34);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 272) = v21;
  v22 = *(a2 + 35);
  if (v22)
  {
    result = CFRetain(v22);
  }

  *(a1 + 280) = v22;
  *(a1 + 288) = 0;
  return result;
}

void *CGImageGetMatte(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[23];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGContextGetSoftMask(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 40);
  }

  handle_invalid_context("CGContextGetSoftMask", a1);
  return 0;
}

uint64_t CGContextGetStyle(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 16);
  }

  handle_invalid_context("CGContextGetStyle", a1);
  return 0;
}

double CGContextGetAlpha(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 8);
  }

  handle_invalid_context("CGContextGetAlpha", a1);
  return 0.0;
}

uint64_t CGPDFResourcesIterateCategory(uint64_t result, char *key, uint64_t a3)
{
  if (result)
  {
    if (key)
    {
      for (i = *(result + 16); i; i = *i)
      {
        value = 0;
        result = CGPDFDictionaryGetDictionary(i[1], key, &value);
        if (result)
        {
          result = (*(a3 + 16))(a3, value);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CGContextGetCompositeOperation(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (*(*(*(a1 + 96) + 120) + 4) >> 8);
  }

  handle_invalid_context("CGContextGetCompositeOperation", a1);
  return 0;
}

uint64_t CheckExtGStateForSpecialBlends(CGPDFDictionary *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CheckExtGStateForSpecialBlends_block_invoke;
  block[3] = &unk_1E6E315C8;
  block[4] = &v4;
  CGPDFDictionaryApplyBlock(a1, block, 0);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void CGPDFDictionaryApplyBlock(CGPDFDictionaryRef dict, CGPDFDictionaryApplierBlock block, void *info)
{
  if (dict && block)
  {
    v6 = (dict + 64);
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v7)
      {
        if (*(v7 + 2) == 10)
        {
          v7 = pdf_xref_resolve(*(dict + 2), v7[2], v7[3]);
        }
      }
    }

    while (((*(block + 2))(block, *(v8 + 32), v7, info) & 1) != 0);
  }
}

int CGFontGetXHeight(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[7];
  }

  return font_info;
}

atomic_ullong *retain_private_data(atomic_ullong *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __CheckExtGStateForSpecialBlends_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 8) == 8 && (v4 = *(a3 + 32), value = 0, CGPDFDictionaryGetObject(v4, "BM", &value)) && CGPDFBlendModeFromCGPDFObject(value) + 1 >= 2)
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  }

  return v5 & 1;
}

CGGradientRef CGGradientCreateWithColorComponents(CGColorSpaceRef space, const CGFloat *components, const CGFloat *locations, size_t count)
{
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(space, 0);

  return create_gradient(space, components, locations, count, 0, HeadroomInfo);
}

uint64_t argb32_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = argb32_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = argb32_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = argb32_shade_axial_RGB;
    }

    else
    {
      v12 = argb32_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 2, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 2, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x8C254358uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  argb32_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void argb32_shade_axial_RGB(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 = (v28 + 4);
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    v28->i32[0] = (v40 + v39[1]) & 0xFF00 | (((v40 + *v39) >> 8) << 16) & 0xFFFFFF | ((v40 + v39[2]) >> 8) | (((v40 + v39[3]) >> 8) << 24);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 < 0)
    {
      v41 = v30;
    }

    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v46, v52), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v47, v52), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v49, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v50, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v46, v54), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v47, v54), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v49, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v50, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        v28[1] = a12;
        *v27++ = -1;
        v28 += 2;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32(v43 & 0xFF00 | (BYTE1(v42) << 16) & 0xFFFFFF | (v44 >> 8) | (BYTE1(v45) << 24));
      v56 = a4 + 4;
      do
      {
        *v28->i8 = v55;
        v28 += 2;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

__CFArray *create_private_data_array_with_parser_fonts(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, &xt_font_cfarray_callbacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(a1, i);
      v5 = FPFontRetain();
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
      *v6 = 1;
      v6[1] = v5;
      CFArrayAppendValue(Mutable, v6);
      xt_font_release(v6);
    }
  }

  return Mutable;
}

atomic_ullong *xt_font_cfarray_retain(uint64_t a1, atomic_ullong *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1uLL, memory_order_relaxed);
  }

  return result;
}

__CFArray *create_fonts_with_private_data_array(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (!Count && !a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  if (Mutable && Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v7 = CGFontCreate();
      if (v7)
      {
        v8 = v7;
        *(v7 + 112) = CFArrayGetValueAtIndex(a1, i);
        (*(v8[2] + 88))();
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v8);
      }
    }
  }

  return Mutable;
}

CFTypeRef CGFontCopyName(uint64_t a1, __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  name_id_for_key = get_name_id_for_key(a2);
  if (name_id_for_key == -1)
  {
    return 0;
  }

  v4 = name_id_for_key;
  name_table = get_name_table(a1);
  if (!name_table)
  {
    return 0;
  }

  v6 = name_table;
  System = CFLocaleGetSystem();

  return copy_localized_value(v6, System, v4);
}

os_unfair_lock_s *get_name_table(uint64_t a1)
{
  v2 = (a1 + 80);
  result = atomic_load_explicit((a1 + 80), memory_order_acquire);
  if (!result)
  {
    result = CGFontNameTableCreate(a1);
    v4 = 0;
    atomic_compare_exchange_strong(v2, &v4, result);
    if (v4)
    {
      CGFontNameTableRelease(result);
      return v4;
    }
  }

  return result;
}

uint64_t get_name_id_for_key(__CFString *a1)
{
  if (a1 == @"kCGFontNameKeyCopyright")
  {
    return 0;
  }

  if (a1 == @"kCGFontNameKeyFontFamily")
  {
    return 1;
  }

  if (a1 == @"kCGFontNameKeyFontSubfamily")
  {
    return 2;
  }

  if (a1 == @"kCGFontNameKeyUniqueID")
  {
    return 3;
  }

  if (a1 == @"kCGFontNameKeyFullName")
  {
    return 4;
  }

  if (a1 == @"kCGFontNameKeyVersion")
  {
    return 5;
  }

  if (a1 == @"kCGFontNameKeyPostScriptName")
  {
    return 6;
  }

  if (a1 == @"kCGFontNameKeyTrademark")
  {
    return 7;
  }

  if (a1 == @"kCGFontNameKeyManufacturer")
  {
    return 8;
  }

  if (a1 == @"kCGFontNameKeyDesigner")
  {
    return 9;
  }

  if (a1 == @"kCGFontNameKeyDescription")
  {
    return 10;
  }

  if (a1 == @"kCGFontNameKeyVendorURL")
  {
    return 11;
  }

  if (a1 == @"kCGFontNameKeyDesignerURL")
  {
    return 12;
  }

  if (a1 == @"kCGFontNameKeyLicense")
  {
    return 13;
  }

  if (a1 == @"kCGFontNameKeyLicenseURL")
  {
    return 14;
  }

  if (a1 == @"kCGFontNameKeyPreferredFamily")
  {
    return 16;
  }

  if (a1 == @"kCGFontNameKeyPreferredSubfamily")
  {
    return 17;
  }

  if (a1 == @"kCGFontNameKeySampleText")
  {
    return 19;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CGFontCopyFamilyName(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 184))(*(result + 112));
  }

  return result;
}

CFStringRef CGFontCopyFullName(CFStringRef font)
{
  if (font)
  {
    return (*(font->data + 22))(font[3].data);
  }

  return font;
}

uint64_t CGFontDBAddFontsAtPath(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    add_fonts_at_path_locked(v3, a2, 0);

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

void add_fonts_at_path_locked(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a1 && a2)
  {
    if (a3 && (v6 = CGFontCreateWithPathAndName(a2, a3)) != 0)
    {
      v7 = v6;
      CFDictionarySetValue(*(a1 + 8), a3, v6);
    }

    else
    {
      FontsWithPath = CGFontCreateFontsWithPath(a2);
      if (!FontsWithPath)
      {
        return;
      }

      v7 = FontsWithPath;
      Count = CFArrayGetCount(FontsWithPath);
      if (Count)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          if (ValueAtIndex)
          {
            v13 = ValueAtIndex;
            v14 = (*(ValueAtIndex[2] + 160))(ValueAtIndex[14]);
            if (v14)
            {
              v15 = v14;
              CFDictionarySetValue(*(a1 + 8), v14, v13);
              CFRelease(v15);
            }

            v16 = (*(v13[2] + 176))(v13[14]);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(*(a1 + 8), v16, v13);
              CFRelease(v17);
            }
          }
        }
      }
    }

    CFRelease(v7);
  }
}

uint64_t argb32_sample_argb32(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v102 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 4 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 4 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = *v47;
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_8888_21865[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (v98 & *v97) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 4 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_8888_21865[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v49 >> 28) & 3] & *v91) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 4 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = *v74;
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = *v77;
        v79 = (v76 + 4 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_8888_21865[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((v80 & *v79) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_8888_21865[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 4) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -4;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 4 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = *v60;
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 4 * v50 + 8) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 4;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void argb32_mark_pixelshape_template(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return;
  }

  v51 = vec::template_mark_pixelshape_row<(CGCompositeOperation)0,_rgba8_t>;
  if (a2 <= 0x17)
  {
    v51 = *(&vec::MethodList<_rgba8_t>::shapeMethods + a2);
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = v2;
  v57 = v3;
  v58 = v2;
  v5 = *(a1 + 28);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v55 = v9;
  v10 = *(a1 + 136);
  v11 = *(a1 + 1) << 8;
  v12 = v5 >> 2;
  v50 = v7 != 0;
  v13 = v6 + 4 * (v5 >> 2) * *(a1 + 16) + 4 * *(a1 + 12);
  v56 = v13;
  v14 = *(a1 + 104);
  v15 = *(a1 + 108);
  v16 = *(a1 + 56);
  v17 = *(a1 + 60);
  v18 = *(a1 + 76);
  if (v11 != 256)
  {
    v52 = *(a1 + 64);
    v24 = v18 >> 2;
    v25 = (v18 >> 2) * *(a1 + 68);
    v44 = *(a1 + 68);
    v54 = v9;
    v26 = v9 + 4 * v25;
    v27 = v8 != 0;
    if (v10)
    {
      v23 = 1;
      v20 = v9;
      goto LABEL_21;
    }

    v47 = v13;
    if (v9)
    {
      v45 = 0;
      v46 = v9;
      v28 = v9 + 4 * v24 * (v17 % v44);
      v20 = v28 + 4 * (v16 % v52);
      v29 = v28 + 4 * v52;
      v54 = v29;
      v55 = v20;
      v23 = 1;
      v9 = v20;
      goto LABEL_25;
    }

    v29 = 0;
    v20 = 0;
    v23 = 1;
LABEL_24:
    v26 = 0;
    v45 = 0;
    v46 = v20;
    v9 = 0;
    v24 -= v4;
    goto LABEL_25;
  }

  v19 = v18 >> 2;
  v20 = v9 + 4 * v19 * v17 + 4 * v16;
  v54 = -1;
  v55 = v20;
  v52 = v19;
  if (v19 != v12)
  {
    v23 = 1;
    goto LABEL_19;
  }

  v21 = (v13 - v20) >> 2;
  if (v21 >= 1)
  {
    if (v21 <= v2)
    {
      v13 = v13 + 4 * v2 - 4;
      v56 = v13;
      v20 = v20 + 4 * v2 - 4;
      v55 = v20;
      v23 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v22 = v12 * (v3 - 1);
    if (v13 <= v20 + 4 * v22 + 4 * v2 - 4)
    {
      v13 += 4 * v22;
      v56 = v13;
      v12 = -v12;
      v55 = v20 + 4 * v22;
      v23 = 1;
      v20 = v55;
      goto LABEL_18;
    }
  }

  v23 = 1;
LABEL_18:
  v52 = v12;
LABEL_19:
  v27 = v8 != 0;
  if (!v10)
  {
    v47 = v13;
    v44 = 0;
    v4 = v23 * v2;
    v29 = -1;
    v24 = v52;
    goto LABEL_24;
  }

  v44 = 0;
  v26 = 0;
  v9 = 0;
  v24 = v52;
LABEL_21:
  shape_enum_clip_alloc(a1, a2, v10, v23, v12, 1, v14, v15, v2, v3);
  v31 = v30;
  if (v30)
  {
    while (shape_enum_clip_next(v31, &v53 + 1, &v53, &v58, &v57))
    {
      v46 = v20;
      v47 = v13;
      v45 = v31;
      if (v26)
      {
        v41 = v13 + 4 * v12 * v53 + 4 * SHIDWORD(v53);
        v2 = v58;
        v42 = v20 + 4 * v24 * ((v53 + *(a1 + 60)) % v44);
        v20 = v42 + 4 * ((HIDWORD(v53) + *(a1 + 56)) % v52);
        v29 = v42 + 4 * v52;
        v54 = v29;
        LODWORD(v4) = v58;
        v9 = v20;
      }

      else
      {
        v2 = v58;
        LODWORD(v4) = v58 * v23;
        v41 = v13 + 4 * v12 * v53 + 4 * HIDWORD(v53) * v23;
        v20 += 4 * v53 * v52 + 4 * HIDWORD(v53) * v23;
        v24 = v52 - v58 * v23;
        v29 = v54;
      }

      v56 = v41;
      v55 = v20;
      v4 = v4;
      v3 = v57;
LABEL_25:
      v49 = v12;
      v32 = v12 - v4;
      v33 = v2 & ~(v2 >> 31);
      if ((v29 - v20) >> 2 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = (v29 - v20) >> 2;
      }

      v35 = v33 - v34;
      if (v3 >= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v3;
      }

      v48 = v36;
      v37 = v3 + 1;
      do
      {
        v51(&v55, &v56, &v54, v52, v23, v27, v50, v35, v34);
        v56 += 4 * v32;
        if (v26)
        {
          v38 = v9 + 4 * v24;
          if (v38 >= v26)
          {
            v39 = -(v24 * v44);
          }

          else
          {
            v39 = 0;
          }

          v40 = v38 + 4 * v39;
          v54 += 4 * v39 + 4 * v24;
          v9 = v40;
        }

        else
        {
          v40 = v55 + 4 * v24;
        }

        v55 = v40;
        --v37;
      }

      while (v37 > 1);
      v57 = v48 - 1;
      v12 = v49;
      v20 = v46;
      v13 = v47;
      v31 = v45;
      if (!v45)
      {
        return;
      }

      v53 = 0;
    }

    free(v31);
  }
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)7,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, uint16x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v12 = a12;
  v13 = *result;
  v14 = *a3;
  v15 = *a2;
  if (a12 >= 4)
  {
    v16 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v17 = vdupq_n_s16(0xFE01u);
    do
    {
      v18 = vqtbl1q_s8(*v13, xmmword_18439C790);
      v19 = vminq_u16(vmull_u8(*v15, *v18.i8), v17);
      v20 = vminq_u16(vmull_high_u8(*v15->i8, v18), v17);
      a8 = vrsraq_n_u16(v20, v20, 8uLL);
      *v15->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v19, v19, 8uLL), 8uLL), a8, 8uLL);
      v12 -= 4;
      v15 = (v15 + v16);
      v13 = (v13 + v16);
    }

    while (v12 > 3);
  }

  v21 = v12 + a11;
  if (v21)
  {
    a6.i64[0] = -4244438269;
    v22 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = v15->i32[0];
      v23 = vmovl_u8(*a8.i8);
      LOBYTE(v24) = v23.i8[0];
      BYTE1(v24) = v23.i8[2];
      BYTE2(v24) = v23.i8[4];
      HIBYTE(v24) = v23.i8[6];
      v23.i32[0] = v13->i32[0];
      v23.i64[1] = v23.i64[0];
      v25 = vminq_u16(vmull_u8(v24, vqtbl1_s8(v23, -4244438269)), v22);
      a8 = vrsraq_n_u16(v25, v25, 8uLL);
      *a8.i8 = vqrshrn_n_u16(a8, 8uLL);
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, a6));
      v15->i32[0] = a8.i32[0];
      v26 = &v13->i8[4 * a5];
      if (v26 >= v14)
      {
        v27 = -a4;
      }

      else
      {
        v27 = 0;
      }

      v13 = &v26[4 * v27];
      v15 = (v15 + 4 * a5);
      --v21;
    }

    while (v21);
  }

  *result = v13;
  *a3 = v14;
  *a2 = v15;
  return result;
}

CGColorSpace *get_default_space(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  while (1)
  {
    ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), a2);
    if (ColorSpace)
    {
      break;
    }

    v5 = *(v5 + 40);
    if (!v5)
    {
      return 0;
    }
  }

  v7 = ColorSpace;
  if (*(*(ColorSpace + 3) + 48) != a3)
  {
    return 0;
  }

  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model <= kCGColorSpaceModelPattern && ((1 << Model) & 0x68) != 0)
  {
    return 0;
  }

  return v7;
}

BOOL CGRectIsEmpty(CGRect rect)
{
  if (rect.origin.x == INFINITY || rect.origin.y == INFINITY)
  {
    return 1;
  }

  if (rect.size.height == 0.0)
  {
    return 1;
  }

  return rect.size.width == 0.0;
}

void CGContextSetTextMatrix(CGContextRef c, CGAffineTransform *t)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v2 = *&t->a;
      v3 = *&t->c;
      *(c + 152) = *&t->tx;
      *(c + 136) = v3;
      *(c + 120) = v2;
    }

    else
    {
      handle_invalid_context("CGContextSetTextMatrix", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetTextMatrix", 0);
  }
}

void CGContextTranslateCTM(CGContextRef c, CGFloat tx, CGFloat ty)
{
  if (c && *(c + 4) == 1129601108)
  {
    *(*(c + 12) + 56) = vmlaq_n_f64(vmlaq_n_f64(*(*(c + 12) + 56), *(*(c + 12) + 24), tx), *(*(c + 12) + 40), ty);
  }

  else
  {
    handle_invalid_context("CGContextTranslateCTM", c);
  }
}

void CGContextScaleCTM(CGContextRef c, CGFloat sx, CGFloat sy)
{
  if (c && *(c + 4) == 1129601108)
  {
    v3 = *(c + 12);
    v4 = vmulq_n_f64(*(v3 + 40), sy);
    *(v3 + 24) = vmulq_n_f64(*(v3 + 24), sx);
    *(v3 + 40) = v4;
  }

  else
  {
    handle_invalid_context("CGContextScaleCTM", c);
  }
}

void CGContextSetTextPosition(CGContextRef c, CGFloat x, CGFloat y)
{
  if (c && *(c + 4) == 1129601108)
  {
    *(c + 19) = x;
    *(c + 20) = y;
  }

  else
  {
    handle_invalid_context("CGContextSetTextPosition", c);
  }
}

Swift::Void __swiftcall CGContextRef.draw(_:in:byTiling:)(CGImageRef _, __C::CGRect in, Swift::Bool byTiling)
{
  if (byTiling)
  {
    CGContextDrawTiledImage(v3, in, _);
  }

  else
  {
    CGContextDrawImage(v3, in, _);
  }
}

CGImageRef CGImageCreateCopy(CGImageRef image)
{
  if (!image)
  {
    return 0;
  }

  v2 = *(image + 9);
  if ((v2 & 0x2000000) != 0)
  {
    v5 = mask_create(*(image + 5), *(image + 6), *(image + 7), *(image + 8), *(image + 9), *(image + 19), *(image + 20), HIBYTE(v2) & 1, 4);
    if (!v5)
    {
      return v5;
    }

    goto LABEL_35;
  }

  v3 = *(image + 26);
  if (v3)
  {
    v4 = CGImageCreateWithImageProvider(v3, *(image + 20), HIBYTE(v2) & 1, (v2 >> 8));
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    v6 = *(v4 + 144);
    if (v6 != *(image + 18))
    {
      CGColorSpaceRelease(v6);
      v7 = *(image + 18);
      if (v7)
      {
        CFRetain(*(image + 18));
      }

      *(v5 + 144) = v7;
    }
  }

  else
  {
    v5 = CGImageCreate(*(image + 5), *(image + 6), *(image + 7), *(image + 8), *(image + 9), *(image + 18), *(image + 8), *(image + 19), *(image + 20), v2 & 0x1000000, (v2 >> 8));
    if (!v5)
    {
      return v5;
    }
  }

  if (*(image + 21))
  {
    v8 = *(v5 + 144);
    if (v8)
    {
      v9 = *(*(v8 + 24) + 48);
    }

    else
    {
      v9 = 0;
    }

    v10 = malloc_type_malloc(16 * v9, 0x100004000313F17uLL);
    *(v5 + 168) = v10;
    if (!v10)
    {
LABEL_38:
      CFRelease(v5);
      return 0;
    }

    v11 = 2 * v9;
    if (2 * v9)
    {
      v12 = *(image + 21);
      do
      {
        v13 = *v12++;
        *v10++ = v13;
        --v11;
      }

      while (v11);
    }
  }

  *(v5 + 36) = *(v5 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v14 = *(image + 22);
  if (v14)
  {
    CFRetain(*(image + 22));
  }

  *(v5 + 176) = v14;
  if (!*(image + 23))
  {
    goto LABEL_30;
  }

  v15 = *(v5 + 144);
  if (v15)
  {
    v16 = *(*(v15 + 24) + 48);
  }

  else
  {
    v16 = 0;
  }

  v17 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
  *(v5 + 184) = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

  if (v16)
  {
    v18 = *(image + 23);
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v16;
    }

    while (v16);
  }

LABEL_30:
  v20 = *(image + 24);
  if (v20)
  {
    CFRetain(*(image + 24));
  }

  *(v5 + 192) = v20;
  v21 = *(image + 25);
  if (v21)
  {
    CFRetain(*(image + 25));
  }

  *(v5 + 200) = v21;
LABEL_35:
  v22 = *(image + 30);
  if (v22)
  {
    CFRetain(*(image + 30));
  }

  *(v5 + 240) = v22;
  *(v5 + 248) = *(image + 248);
  CGPropertiesRelease(*(v5 + 216));
  *(v5 + 216) = CGPropertiesCreateCopy(*(image + 27));
  CGPropertiesRelease(*(v5 + 224));
  *(v5 + 224) = CGPropertiesCreateCopy(*(image + 28));
  return v5;
}

CFTypeRef *CGPropertiesCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CGPropertiesCreate();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2[1]);
    v3[1] = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 8));
  }

  return v3;
}

uint64_t rgba64_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v41, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v24, v41) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 269497256;
  v11 = *a3;
  *(&v24 + 1) = __PAIR64__(*v6, *a3);
  if (v11 == 269497256)
  {
    if (!v35 && (~DWORD1(v25) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v25) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      rgba64_mark(a1);
      return 1;
    }

    *&v24 = rgba64_sample_rgba64;
    goto LABEL_44;
  }

  v12 = SAMPLEINDEX(v11);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 > 0xB)
  {
    if (v12 <= 0x13)
    {
      if ((v12 - 14) >= 4)
      {
        if (v12 == 13 || v12 == 12)
        {
          v14 = *(a2 + 12);
          if (!v14)
          {
            v13 = 0;
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (v12 > 6)
  {
    switch(v12)
    {
      case 7:
        v13 = 0;
        LODWORD(v14) = 32;
        break;
      case 9:
        v13 = 0;
        LODWORD(v14) = 40;
        break;
      case 8:
        v13 = 0;
        LODWORD(v14) = 8;
        goto LABEL_36;
      default:
        goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12 == 2)
  {
    if (!*(a2 + 12))
    {
      v13 = 0;
      LODWORD(v14) = 16;
      goto LABEL_36;
    }

LABEL_35:
    LODWORD(v14) = 255;
    v13 = 1;
    goto LABEL_36;
  }

  if (v12 != 5)
  {
    if (v12 != 6)
    {
      goto LABEL_35;
    }

LABEL_25:
    v13 = 0;
    LODWORD(v14) = 0;
    goto LABEL_36;
  }

  v13 = 0;
  LODWORD(v14) = 24;
LABEL_36:
  *&v24 = *&RGB16_image_sample[2 * v12 + 2];
  if (!v24)
  {
    if ((HIWORD(*a3) & 0x3Fu) <= 8)
    {
      *&v24 = *&RGB8_image_sample[2 * v12 + 2];
      if (v24)
      {
        v10 = 134755224;
        v15 = 4;
LABEL_42:
        LODWORD(v25) = v15;
        goto LABEL_43;
      }
    }

    *&v24 = *&RGBF_image_sample[2 * v12 + 2];
    if (v24)
    {
      v10 = 538981289;
      v15 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_43:
  DWORD2(v24) = v10;
  if ((v13 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v25) & 7) != 3 || a2[2] != 5 && a2[2])
  {
    goto LABEL_44;
  }

  if (v12 <= 0xB)
  {
    HIDWORD(v17) = v14;
    LODWORD(v17) = v14;
    v16 = v17 >> 3;
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_RGB24;
        goto LABEL_85;
      }

      if (v16 == 4)
      {
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_rgb32;
        goto LABEL_85;
      }

      if (v16 != 5)
      {
        goto LABEL_44;
      }

      *(&v24 + 2) = *a3;
      v19 = rgba64_image_mark_rgb32;
    }

    else
    {
      if (!v16)
      {
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_RGB32;
        goto LABEL_85;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          *(&v24 + 2) = *a3;
          v18 = rgba64_image_mark_W8;
LABEL_85:
          v20 = v18;
          v21 = a2;
          v22 = v8;
          v23 = 0;
          goto LABEL_86;
        }

        goto LABEL_44;
      }

      *(&v24 + 2) = *a3;
      v19 = rgba64_image_mark_RGB32;
    }

    v20 = v19;
    v21 = a2;
    v22 = v8;
    v23 = 8;
LABEL_86:
    rgba64_image_mark_image(v21, &v24, v22, v23, v20);
    return 1;
  }

  if (v12 <= 0x13)
  {
    if (v12 <= 14)
    {
      if (v12 == 12)
      {
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_W16;
      }

      else
      {
        *(&v24 + 2) = *a3;
        if (v12 == 13)
        {
          v18 = rgba64_image_mark_w16;
        }

        else
        {
          v18 = rgba64_image_mark_RGB48;
        }
      }

      goto LABEL_85;
    }

    switch(v12)
    {
      case 15:
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_rgb48;
        goto LABEL_85;
      case 16:
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_RGBA64;
        goto LABEL_85;
      case 17:
        *(&v24 + 2) = *a3;
        v18 = rgba64_image_mark_rgba64;
        goto LABEL_85;
    }
  }

LABEL_44:
  rgba64_image_mark(a2, &v24, v8);
  return 1;
}

uint64_t rgba64_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v712 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  if (*(v2 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v6 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v4;
  v8 = *(v4 + 96);
  v699 = *(v4 + 48);
  v9 = *(*(v5 + 7) + 16 * *v4 + 8 * (v8 == 0) + 4 * (v699 == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(v4 + 4);
  v12 = v11 - 1;
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v4 + 8);
  if (v13 < 1)
  {
    return 0;
  }

  v14 = *(v4 + 136);
  if ((v7 & 0xFF0000) != 0x50000 && v14)
  {
    v15 = *(v4 + 128);
    if ((v15 | 8) == 8)
    {
      if ((*v4 & 0xFF00) == 0x400)
      {
        rgba64_mark_constmask(v4, v9);
      }

      else if ((v6 & 1) != 0 && ((1 << v9) & 0xFFFFFE) != 0)
      {
        rgba16_template_image_mask_method(*v5, v4, v9);
      }

      else
      {
        rgba64_mark_pixelmask(v4, v9);
      }
    }

    else
    {
      v32 = *(v4 + 112);
      v33 = *(v4 + 116);
      v34 = (v32 + 15) & 0xFFFFFFF0;
      v35 = v34 * v33;
      if (v35 <= 4096)
      {
        v37 = v711;
      }

      else
      {
        v36 = malloc_type_malloc(v35, 0x97CEE3C3uLL);
        if (!v36)
        {
          return 1;
        }

        v37 = v36;
        v14 = *(v4 + 136);
        v15 = *(v4 + 128);
      }

      CGSConvertBitsToMask(v14, *(v4 + 124), v37, v34, v32, v33, v15);
      v41 = *(v4 + 112);
      v707 = *(v4 + 96);
      v708 = v41;
      v42 = *(v4 + 144);
      v709 = *(v4 + 128);
      v710 = v42;
      v43 = *(v4 + 48);
      v703 = *(v4 + 32);
      v704 = v43;
      v44 = *(v4 + 80);
      v705 = *(v4 + 64);
      v706 = v44;
      v45 = *(v4 + 16);
      *v701 = *v4;
      v702 = v45;
      HIDWORD(v708) = (v32 + 15) & 0xFFFFFFF0;
      *(&v709 + 1) = v37;
      if (BYTE1(v701[0]) << 8 == 1024)
      {
        rgba64_mark_constmask(v701, v9);
      }

      else
      {
        rgba64_mark_pixelmask(v701, v9);
      }

      if (v37 != v711)
      {
        v46 = v37;
        goto LABEL_982;
      }
    }

    return 1;
  }

  v640 = v4;
  v641 = *(*(v5 + 7) + 16 * *v4 + 8 * (v8 == 0) + 4 * (v699 == 0));
  if (BYTE1(v7) == 1)
  {
    if ((v6 & 1) != 0 && ((1 << v9) & 0xFFFFFE) != 0)
    {
      rgba16_template_image_mark_method(*v5, v4, v9);
      return 1;
    }

LABEL_24:
    v711[0] = *(v4 + 4);
    v701[0] = v13;
    v22 = *(v4 + 88);
    v23 = *(v4 + 28) >> 3;
    v24 = *(v4 + 40) + 8 * v23 * *(v4 + 16) + 8 * *(v4 + 12);
    v25 = *(v4 + 56);
    v26 = *(v4 + 60);
    v27 = *(v4 + 76) >> 3;
    if ((v7 & 0xFF00) != 0x100)
    {
      v31 = *(v4 + 64);
      v642 = *(v4 + 68);
      v694 = v22 + 8 * v27 * v642;
      v38 = v8 != 0;
      if (v14)
      {
        v695 = *(v4 + 76) >> 3;
        v697 = *(v4 + 88);
        v638 = *(v4 + 60);
        v639 = *(v4 + 56);
        v30 = 1;
        v39 = v697;
        v40 = v697;
LABEL_54:
        v668 = v30;
        v647 = v23;
        shape_enum_clip_alloc(v1, v2, v14, v30, v23, 1, *(v4 + 104), *(v4 + 108), v11, v13);
        v54 = v53;
        if (!v53)
        {
          return 1;
        }

        while (2)
        {
          if (!shape_enum_clip_next(v54, &v700 + 1, &v700, v711, v701))
          {
            v46 = v54;
            goto LABEL_982;
          }

          v646 = v54;
          if (v694)
          {
            v23 = v647;
            v50 = v24;
            v51 = (v24 + 8 * v647 * v700 + 8 * SHIDWORD(v700));
            LODWORD(v11) = v711[0];
            v22 = v39;
            v473 = v39 + 8 * v695 * ((v700 + *(v4 + 60)) % v642);
            v49 = v473 + 8 * ((HIDWORD(v700) + *(v4 + 56)) % v31);
            v40 = v473 + 8 * v31;
            v697 = v49;
            v474 = v711[0];
            v638 = (v700 + *(v4 + 60)) % v642;
            v639 = (HIDWORD(v700) + *(v4 + 56)) % v31;
          }

          else
          {
            LODWORD(v11) = v711[0];
            v474 = v711[0] * v668;
            v23 = v647;
            v50 = v24;
            v51 = (v24 + 8 * v647 * v700 + 8 * HIDWORD(v700) * v668);
            v22 = v39;
            v49 = v39 + 8 * v700 * v31 + 8 * HIDWORD(v700) * v668;
            v695 = v31 - v711[0] * v668;
          }

          v692 = v23 - v474;
          v30 = v668;
LABEL_58:
          v647 = v23;
          v668 = v30;
          switch(v641)
          {
            case 0:
              v39 = v22;
              v55 = &v51[-v11 + 1];
              v56 = v692 + v11;
              if (v30 < 0)
              {
                v56 = v692 - v11;
              }

              else
              {
                v55 = v51;
              }

              v57 = (v55 + 8 * ((v56 * (v701[0] - 1)) & (v56 >> 63)));
              if (v56 < 0)
              {
                v56 = -v56;
              }

              CGBlt_fillBytes(8 * v11, v701[0], 0, v57, 8 * v56);
              goto LABEL_634;
            case 1:
              v264 = *(v4 + 1);
              if (v264 == 2)
              {
                if (v11 < 4 || (8 * v31) > 0x40 || (v3.i32[0] = 8 * v31, v475 = vcnt_s8(v3), v475.i16[0] = vaddlv_u8(v475), v475.i32[0] > 1u))
                {
LABEL_671:
                  v476 = v701[0];
                  if (v699 == 0 || v38)
                  {
                    v24 = v50;
                    do
                    {
                      v477 = v11;
                      do
                      {
                        *v51 = *v49;
                        v478 = v49 + 8 * v30;
                        if (v478 >= v40)
                        {
                          v479 = -v31;
                        }

                        else
                        {
                          v479 = 0;
                        }

                        v49 = v478 + 8 * v479;
                        v51 += v30;
                        --v477;
                      }

                      while (v477);
                      v51 += v692;
                      v480 = v697;
                      v481 = v697 + 8 * v695;
                      if (v481 >= v694)
                      {
                        v482 = -(v695 * v642);
                      }

                      else
                      {
                        v482 = 0;
                      }

                      v483 = v481 + 8 * v482;
                      v484 = v40 + 8 * v482 + 8 * v695;
                      if (v694)
                      {
                        v40 = v484;
                        v480 = v483;
                      }

                      v697 = v480;
                      if (v694)
                      {
                        v49 = v483;
                      }

                      else
                      {
                        v49 += 8 * v695;
                      }

                      --v476;
                    }

                    while (v476);
                  }

                  else
                  {
                    v24 = v50;
                    do
                    {
                      v485 = v11;
                      do
                      {
                        *v51 = (*v49 | 0xFFFF000000000000);
                        v486 = v49 + 8 * v30;
                        if (v486 >= v40)
                        {
                          v487 = -v31;
                        }

                        else
                        {
                          v487 = 0;
                        }

                        v49 = v486 + 8 * v487;
                        v51 += v30;
                        --v485;
                      }

                      while (v485);
                      v51 += v692;
                      v488 = v697;
                      v489 = v697 + 8 * v695;
                      if (v489 >= v694)
                      {
                        v490 = -(v695 * v642);
                      }

                      else
                      {
                        v490 = 0;
                      }

                      v491 = v489 + 8 * v490;
                      v492 = v40 + 8 * v490 + 8 * v695;
                      if (v694)
                      {
                        v40 = v492;
                        v488 = v491;
                      }

                      v697 = v488;
                      if (v694)
                      {
                        v49 = v491;
                      }

                      else
                      {
                        v49 += 8 * v695;
                      }

                      --v476;
                    }

                    while (v476);
                  }

                  goto LABEL_719;
                }

                v39 = v22;
                CGSFillDRAM64(v51, 8 * (v11 + v692), 8 * v11, v701[0], v22, 8 * v695, 8 * v31, v642, 8 * v639, v638);
LABEL_634:
                v24 = v50;
              }

              else
              {
                if (v264 != 1)
                {
                  goto LABEL_671;
                }

                if (v699 != 0 && !v38)
                {
                  v493 = v701[0];
                  v24 = v50;
                  do
                  {
                    v494 = v11;
                    do
                    {
                      *v51 = (*v49 | 0xFFFF000000000000);
                      v495 = v49 + 8 * v30;
                      if (v495 >= v40)
                      {
                        v496 = -v31;
                      }

                      else
                      {
                        v496 = 0;
                      }

                      v49 = v495 + 8 * v496;
                      v51 += v30;
                      --v494;
                    }

                    while (v494);
                    v51 += v692;
                    v497 = v697;
                    v498 = v697 + 8 * v695;
                    if (v498 >= v694)
                    {
                      v499 = -(v695 * v642);
                    }

                    else
                    {
                      v499 = 0;
                    }

                    v500 = v498 + 8 * v499;
                    v501 = v40 + 8 * v499 + 8 * v695;
                    if (v694)
                    {
                      v40 = v501;
                      v497 = v500;
                    }

                    v697 = v497;
                    if (v694)
                    {
                      v49 = v500;
                    }

                    else
                    {
                      v49 += 8 * v695;
                    }

                    --v493;
                  }

                  while (v493);
LABEL_719:
                  v39 = v22;
                  v701[0] = 0;
                  goto LABEL_659;
                }

                v39 = v22;
                if ((v30 & 0x80000000) != 0)
                {
                  v265 = v695 - v11;
                  v502 = 8 * v11 - 8;
                  v49 -= v502;
                  v266 = v692 - v11;
                  v51 = (v51 - v502);
                }

                else
                {
                  v265 = v695 + v11;
                  v266 = v692 + v11;
                }

                v24 = v50;
                v503 = v701[0] - 1;
                v504 = (v49 + 8 * ((v265 * v503) & (v265 >> 63)));
                if (v265 >= 0)
                {
                  v505 = v265;
                }

                else
                {
                  v505 = -v265;
                }

                if (v266 >= 0)
                {
                  LODWORD(v506) = v266;
                }

                else
                {
                  v506 = -v266;
                }

                v695 = v505;
                CGBlt_copyBytes(8 * v11, v701[0], v504, &v51[(v266 * v503) & (v266 >> 63)], 8 * v505, 8 * v506);
              }

LABEL_659:
              v54 = v646;
              if (!v646)
              {
                return 1;
              }

              v700 = 0;
              continue;
            case 2:
              v644 = v22;
              v645 = v50;
              v201 = v30;
              v643 = v31;
              v202 = -v31;
              v203 = v701[0];
              v204 = 8 * v30;
              do
              {
                v654 = v203;
                v205 = v11;
                do
                {
                  v206 = *v49;
                  v207 = HIWORD(*v49);
                  if (v207)
                  {
                    if (v207 == 0xFFFF)
                    {
                      *v51 = v206;
                    }

                    else
                    {
                      rgba64_DplusDM(v51, v206, *v51, v207 ^ 0xFFFF);
                    }
                  }

                  v208 = v49 + 8 * v201;
                  if (v208 >= v40)
                  {
                    v209 = v202;
                  }

                  else
                  {
                    v209 = 0;
                  }

                  v49 = v208 + 8 * v209;
                  v51 = (v51 + v204);
                  --v205;
                }

                while (v205);
                v51 += v692;
                v210 = v697;
                v211 = v697 + 8 * v695;
                v212 = -(v695 * v642);
                if (v211 < v694)
                {
                  v212 = 0;
                }

                v213 = v211 + 8 * v212;
                v214 = v40 + 8 * v212 + 8 * v695;
                if (v694)
                {
                  v40 = v214;
                  v210 = v213;
                }

                v697 = v210;
                if (v694)
                {
                  v49 = v213;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v203 = v654 - 1;
              }

              while (v654 != 1);
              goto LABEL_658;
            case 3:
              v232 = v30;
              v233 = v701[0];
              v234 = 8 * v30;
              do
              {
                v235 = v11;
                do
                {
                  v236 = HIWORD(*v51);
                  if (v236 == 0xFFFF)
                  {
                    v237 = *v49 & 0xFFFF000000000000;
                    if (!v38)
                    {
                      v237 = 0xFFFF000000000000;
                    }

                    *v51 = (v237 & 0xFFFF000000000000 | *v49 & 0xFFFFFFFFFFFFLL);
                  }

                  else if (v236)
                  {
                    v238 = WORD1(*v49);
                    v239 = *v49;
                    if (v38)
                    {
                      v240 = HIWORD(*v49);
                    }

                    else
                    {
                      v240 = 0xFFFF;
                    }

                    v241 = vdup_n_s32(v236 ^ 0xFFFF);
                    v242 = vmla_s32(0x800000008000, vand_s8(v239, 0xFFFF0000FFFFLL), v241);
                    v243 = vmla_s32(0x800000008000, __PAIR64__(v240, v238), v241);
                    *v51 = vsli_n_s32(vsub_s32(v239, vshr_n_u32(vsra_n_u32(v242, v242, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v240, v238), vshr_n_u32(vsra_n_u32(v243, v243, 0x10uLL), 0x10uLL)), 0x10uLL);
                  }

                  else
                  {
                    *v51 = 0;
                  }

                  v244 = v49 + 8 * v232;
                  if (v244 >= v40)
                  {
                    v245 = -v31;
                  }

                  else
                  {
                    v245 = 0;
                  }

                  v49 = v244 + 8 * v245;
                  v51 = (v51 + v234);
                  --v235;
                }

                while (v235);
                v51 += v692;
                v246 = v697;
                v247 = v697 + 8 * v695;
                if (v247 >= v694)
                {
                  v248 = -(v695 * v642);
                }

                else
                {
                  v248 = 0;
                }

                v249 = v247 + 8 * v248;
                v250 = v40 + 8 * v248 + 8 * v695;
                if (v694)
                {
                  v40 = v250;
                  v246 = v249;
                }

                v697 = v246;
                if (v694)
                {
                  v49 = v249;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v233;
              }

              while (v233);
              goto LABEL_336;
            case 4:
              v123 = v30;
              v124 = v701[0];
              v125 = 8 * v30;
              do
              {
                v126 = v11;
                do
                {
                  v127 = HIWORD(*v51);
                  if (v127)
                  {
                    if (v127 != 0xFFFF)
                    {
                      v129 = WORD1(*v49);
                      v130 = *v49;
                      if (v38)
                      {
                        v131 = HIWORD(*v49);
                      }

                      else
                      {
                        v131 = 0xFFFF;
                      }

                      v132 = vdup_n_s32(v127);
                      v133 = vmla_s32(0x800000008000, vand_s8(v130, 0xFFFF0000FFFFLL), v132);
                      v134 = vmla_s32(0x800000008000, __PAIR64__(v131, v129), v132);
                      *v51 = vsli_n_s32(vsub_s32(v130, vshr_n_u32(vsra_n_u32(v133, v133, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v131, v129), vshr_n_u32(vsra_n_u32(v134, v134, 0x10uLL), 0x10uLL)), 0x10uLL);
                    }

                    else
                    {
                      *v51 = 0;
                    }
                  }

                  else
                  {
                    v128 = *v49 & 0xFFFF000000000000;
                    if (!v38)
                    {
                      v128 = 0xFFFF000000000000;
                    }

                    *v51 = (v128 & 0xFFFF000000000000 | *v49 & 0xFFFFFFFFFFFFLL);
                  }

                  v135 = v49 + 8 * v123;
                  if (v135 >= v40)
                  {
                    v136 = -v31;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v49 = v135 + 8 * v136;
                  v51 = (v51 + v125);
                  --v126;
                }

                while (v126);
                v51 += v692;
                v137 = v697;
                v138 = v697 + 8 * v695;
                if (v138 >= v694)
                {
                  v139 = -(v695 * v642);
                }

                else
                {
                  v139 = 0;
                }

                v140 = v138 + 8 * v139;
                v141 = v40 + 8 * v139 + 8 * v695;
                if (v694)
                {
                  v40 = v141;
                  v137 = v140;
                }

                v697 = v137;
                if (v694)
                {
                  v49 = v140;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v124;
              }

              while (v124);
LABEL_336:
              v39 = v22;
              v701[0] = 0;
              goto LABEL_634;
            case 5:
              v644 = v22;
              v645 = v50;
              v681 = v11;
              v301 = v30;
              v643 = v31;
              v302 = -v31;
              v303 = v701[0];
              v304 = 8 * v30;
              do
              {
                v305 = v681;
                do
                {
                  rgba64_DMplusDM(v51, *v49, HIWORD(*v51), *v51, HIWORD(*v49) ^ 0xFFFF);
                  v306 = v49 + 8 * v301;
                  if (v306 >= v40)
                  {
                    v307 = v302;
                  }

                  else
                  {
                    v307 = 0;
                  }

                  v49 = v306 + 8 * v307;
                  v51 = (v51 + v304);
                  --v305;
                }

                while (v305);
                v51 += v692;
                v308 = v697;
                v309 = v697 + 8 * v695;
                v310 = -(v695 * v642);
                if (v309 < v694)
                {
                  v310 = 0;
                }

                v311 = v309 + 8 * v310;
                v312 = v40 + 8 * v310 + 8 * v695;
                if (v694)
                {
                  v40 = v312;
                  v308 = v311;
                }

                v697 = v308;
                if (v694)
                {
                  v49 = v311;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v303;
              }

              while (v303);
              goto LABEL_658;
            case 6:
              v644 = v22;
              v645 = v50;
              v684 = v11;
              v347 = v30;
              v643 = v31;
              v348 = -v31;
              v349 = v701[0];
              v350 = 8 * v30;
              do
              {
                v661 = v349;
                v351 = v684;
                do
                {
                  v352 = HIWORD(*v51);
                  if (v352 != 0xFFFF)
                  {
                    if (~v352 == 0xFFFF)
                    {
                      v353 = *v49 & 0xFFFF000000000000;
                      if (!v38)
                      {
                        v353 = 0xFFFF000000000000;
                      }

                      *v51 = (v353 & 0xFFFF000000000000 | *v49 & 0xFFFFFFFFFFFFLL);
                    }

                    else
                    {
                      v354 = ~v352;
                      v355 = HIWORD(*v49);
                      if (!v38)
                      {
                        LOWORD(v355) = -1;
                      }

                      rgba64_DplusDAM(v51, *v51, *v49, v355, v354);
                    }
                  }

                  v356 = v49 + 8 * v347;
                  if (v356 >= v40)
                  {
                    v357 = v348;
                  }

                  else
                  {
                    v357 = 0;
                  }

                  v49 = v356 + 8 * v357;
                  v51 = (v51 + v350);
                  --v351;
                }

                while (v351);
                v51 += v692;
                v358 = v697;
                v359 = v697 + 8 * v695;
                v360 = -(v695 * v642);
                if (v359 < v694)
                {
                  v360 = 0;
                }

                v361 = v359 + 8 * v360;
                v362 = v40 + 8 * v360 + 8 * v695;
                if (v694)
                {
                  v40 = v362;
                  v358 = v361;
                }

                v697 = v358;
                if (v694)
                {
                  v49 = v361;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v349 = v661 - 1;
              }

              while (v661 != 1);
              goto LABEL_658;
            case 7:
              v644 = v22;
              v645 = v50;
              v251 = v30;
              v643 = v31;
              v252 = -v31;
              v253 = v701[0];
              v254 = 8 * v30;
              do
              {
                v656 = v253;
                v255 = v11;
                do
                {
                  v256 = *(v49 + 6);
                  if (v256 != 0xFFFF)
                  {
                    if (*(v49 + 6))
                    {
                      rgba64_DM(v51, *v51, v256);
                    }

                    else
                    {
                      *v51 = 0;
                    }
                  }

                  v257 = v49 + 8 * v251;
                  if (v257 >= v40)
                  {
                    v258 = v252;
                  }

                  else
                  {
                    v258 = 0;
                  }

                  v49 = v257 + 8 * v258;
                  v51 = (v51 + v254);
                  --v255;
                }

                while (v255);
                v51 += v692;
                v259 = v697;
                v260 = v697 + 8 * v695;
                v261 = -(v695 * v642);
                if (v260 < v694)
                {
                  v261 = 0;
                }

                v262 = v260 + 8 * v261;
                v263 = v40 + 8 * v261 + 8 * v695;
                if (v694)
                {
                  v40 = v263;
                  v259 = v262;
                }

                v697 = v259;
                if (v694)
                {
                  v49 = v262;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v253 = v656 - 1;
              }

              while (v656 != 1);
              goto LABEL_658;
            case 8:
              v644 = v22;
              v645 = v50;
              v392 = v30;
              v643 = v31;
              v393 = -v31;
              v394 = v701[0];
              v395 = 8 * v30;
              do
              {
                v663 = v394;
                v396 = v11;
                do
                {
                  v397 = *(v49 + 6);
                  if (~v397 != 0xFFFF)
                  {
                    if (v397 == -1)
                    {
                      *v51 = 0;
                    }

                    else
                    {
                      rgba64_DM(v51, *v51, ~v397);
                    }
                  }

                  v398 = v49 + 8 * v392;
                  if (v398 >= v40)
                  {
                    v399 = v393;
                  }

                  else
                  {
                    v399 = 0;
                  }

                  v49 = v398 + 8 * v399;
                  v51 = (v51 + v395);
                  --v396;
                }

                while (v396);
                v51 += v692;
                v400 = v697;
                v401 = v697 + 8 * v695;
                v402 = -(v695 * v642);
                if (v401 < v694)
                {
                  v402 = 0;
                }

                v403 = v401 + 8 * v402;
                v404 = v40 + 8 * v402 + 8 * v695;
                if (v694)
                {
                  v40 = v404;
                  v400 = v403;
                }

                v697 = v400;
                if (v694)
                {
                  v49 = v403;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v394 = v663 - 1;
              }

              while (v663 != 1);
              goto LABEL_658;
            case 9:
              v644 = v22;
              v645 = v50;
              v675 = v11;
              v155 = v30;
              v643 = v31;
              v156 = -v31;
              v157 = v701[0];
              v158 = 8 * v30;
              do
              {
                v159 = v675;
                do
                {
                  rgba64_DMplusDM(v51, *v49, HIWORD(*v51) ^ 0xFFFF, *v51, HIWORD(*v49));
                  v160 = v49 + 8 * v155;
                  if (v160 >= v40)
                  {
                    v161 = v156;
                  }

                  else
                  {
                    v161 = 0;
                  }

                  v49 = v160 + 8 * v161;
                  v51 = (v51 + v158);
                  --v159;
                }

                while (v159);
                v51 += v692;
                v162 = v697;
                v163 = v697 + 8 * v695;
                v164 = -(v695 * v642);
                if (v163 < v694)
                {
                  v164 = 0;
                }

                v165 = v163 + 8 * v164;
                v166 = v40 + 8 * v164 + 8 * v695;
                if (v694)
                {
                  v40 = v166;
                  v162 = v165;
                }

                v697 = v162;
                if (v694)
                {
                  v49 = v165;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v157;
              }

              while (v157);
              goto LABEL_658;
            case 10:
              v644 = v22;
              v645 = v50;
              v686 = v11;
              v380 = v30;
              v643 = v31;
              v381 = -v31;
              v382 = v701[0];
              v383 = 8 * v30;
              do
              {
                v384 = v686;
                do
                {
                  rgba64_DMplusDM(v51, *v49, HIWORD(*v51) ^ 0xFFFF, *v51, HIWORD(*v49) ^ 0xFFFF);
                  v385 = v49 + 8 * v380;
                  if (v385 >= v40)
                  {
                    v386 = v381;
                  }

                  else
                  {
                    v386 = 0;
                  }

                  v49 = v385 + 8 * v386;
                  v51 = (v51 + v383);
                  --v384;
                }

                while (v384);
                v51 += v692;
                v387 = v697;
                v388 = v697 + 8 * v695;
                v389 = -(v695 * v642);
                if (v388 < v694)
                {
                  v389 = 0;
                }

                v390 = v388 + 8 * v389;
                v391 = v40 + 8 * v389 + 8 * v695;
                if (v694)
                {
                  v40 = v391;
                  v387 = v390;
                }

                v697 = v387;
                if (v694)
                {
                  v49 = v390;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v382;
              }

              while (v382);
              goto LABEL_658;
            case 11:
              v644 = v22;
              v645 = v50;
              v109 = v30;
              v643 = v31;
              v110 = -v31;
              v111 = v701[0];
              v112 = 8 * v30;
              v673 = v11;
              do
              {
                v651 = v111;
                v113 = v11;
                do
                {
                  v114 = HIWORD(*v51);
                  if (!v699)
                  {
                    LOWORD(v114) = -1;
                  }

                  v115 = HIWORD(*v49);
                  if (!v38)
                  {
                    LOWORD(v115) = -1;
                  }

                  rgba64_DAplusdDA(v51, *v51, v114, *v49, v115);
                  v116 = v49 + 8 * v109;
                  if (v116 >= v40)
                  {
                    v117 = v110;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v49 = v116 + 8 * v117;
                  v51 = (v51 + v112);
                  --v113;
                }

                while (v113);
                v51 += v692;
                v118 = v697;
                v119 = v697 + 8 * v695;
                v120 = -(v695 * v642);
                if (v119 < v694)
                {
                  v120 = 0;
                }

                v121 = v119 + 8 * v120;
                v122 = v40 + 8 * v120 + 8 * v695;
                if (v694)
                {
                  v40 = v122;
                  v118 = v121;
                }

                v697 = v118;
                if (v694)
                {
                  v49 = v121;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v111 = v651 - 1;
                LODWORD(v11) = v673;
              }

              while (v651 != 1);
              goto LABEL_658;
            case 12:
              v644 = v22;
              v645 = v50;
              v674 = v11;
              v142 = v30;
              v643 = v31;
              v143 = -v31;
              v144 = v701[0];
              v145 = 8 * v30;
              do
              {
                v146 = v674;
                do
                {
                  v147 = HIWORD(*v49);
                  if (!v38)
                  {
                    LOWORD(v147) = -1;
                  }

                  rgba64_DpluslDA(v51, *v51, *v49, v147);
                  v148 = v49 + 8 * v142;
                  if (v148 >= v40)
                  {
                    v149 = v143;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  v49 = v148 + 8 * v149;
                  v51 = (v51 + v145);
                  --v146;
                }

                while (v146);
                v51 += v692;
                v150 = v697;
                v151 = v697 + 8 * v695;
                v152 = -(v695 * v642);
                if (v151 < v694)
                {
                  v152 = 0;
                }

                v153 = v151 + 8 * v152;
                v154 = v40 + 8 * v152 + 8 * v695;
                if (v694)
                {
                  v40 = v154;
                  v150 = v153;
                }

                v697 = v150;
                if (v694)
                {
                  v49 = v153;
                }

                else
                {
                  v49 += 8 * v695;
                }

                --v144;
              }

              while (v144);
              goto LABEL_658;
            case 13:
              v644 = v22;
              v645 = v50;
              v683 = v11;
              v330 = v30;
              v643 = v31;
              v331 = -v31;
              v332 = v701[0];
              v333 = 8 * v30;
              while (1)
              {
                v660 = v332;
                v334 = v683;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v335) = 0xFFFF;
LABEL_457:
                    v336 = *v51;
                    if (v699)
                    {
                      v337 = HIWORD(v336);
                      v338 = *v49;
                      if (!HIWORD(v336))
                      {
                        v339 = v338 & 0xFFFFFFFFFFFFLL | (v335 << 48);
LABEL_462:
                        *v51 = v339;
                        goto LABEL_463;
                      }
                    }

                    else
                    {
                      v338 = *v49;
                      LODWORD(v337) = 0xFFFF;
                    }

                    v339 = PDAmultiplyPDA_15236(v336, v337, v338, v335);
                    goto LABEL_462;
                  }

                  v335 = HIWORD(*v49);
                  if (v335)
                  {
                    goto LABEL_457;
                  }

LABEL_463:
                  v340 = v49 + 8 * v330;
                  if (v340 >= v40)
                  {
                    v341 = v331;
                  }

                  else
                  {
                    v341 = 0;
                  }

                  v49 = v340 + 8 * v341;
                  v51 = (v51 + v333);
                  --v334;
                }

                while (v334);
                v51 += v692;
                v342 = v697;
                v343 = v697 + 8 * v695;
                v344 = -(v695 * v642);
                if (v343 < v694)
                {
                  v344 = 0;
                }

                v345 = v343 + 8 * v344;
                v346 = v40 + 8 * v344 + 8 * v695;
                if (v694)
                {
                  v40 = v346;
                  v342 = v345;
                }

                v697 = v342;
                if (v694)
                {
                  v49 = v345;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v332 = v660 - 1;
                if (v660 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 14:
              v644 = v22;
              v645 = v50;
              v672 = v11;
              v92 = v30;
              v643 = v31;
              v93 = -v31;
              v94 = v701[0];
              v95 = 8 * v30;
              while (1)
              {
                v650 = v94;
                v96 = v672;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v97) = 0xFFFF;
LABEL_121:
                    v98 = *v51;
                    if (v699)
                    {
                      v99 = HIWORD(v98);
                      v100 = *v49;
                      if (!HIWORD(v98))
                      {
                        v101 = v100 & 0xFFFFFFFFFFFFLL | (v97 << 48);
LABEL_126:
                        *v51 = v101;
                        goto LABEL_127;
                      }
                    }

                    else
                    {
                      v100 = *v49;
                      LODWORD(v99) = 0xFFFF;
                    }

                    v101 = PDAscreenPDA_15237(v98, v99, v100, v97);
                    goto LABEL_126;
                  }

                  v97 = HIWORD(*v49);
                  if (v97)
                  {
                    goto LABEL_121;
                  }

LABEL_127:
                  v102 = v49 + 8 * v92;
                  if (v102 >= v40)
                  {
                    v103 = v93;
                  }

                  else
                  {
                    v103 = 0;
                  }

                  v49 = v102 + 8 * v103;
                  v51 = (v51 + v95);
                  --v96;
                }

                while (v96);
                v51 += v692;
                v104 = v697;
                v105 = v697 + 8 * v695;
                v106 = -(v695 * v642);
                if (v105 < v694)
                {
                  v106 = 0;
                }

                v107 = v105 + 8 * v106;
                v108 = v40 + 8 * v106 + 8 * v695;
                if (v694)
                {
                  v40 = v108;
                  v104 = v107;
                }

                v697 = v104;
                if (v694)
                {
                  v49 = v107;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v94 = v650 - 1;
                if (v650 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 15:
              v644 = v22;
              v645 = v50;
              v678 = v11;
              v215 = v30;
              v643 = v31;
              v216 = -v31;
              v217 = v701[0];
              v218 = 8 * v30;
              while (1)
              {
                v655 = v217;
                v219 = v678;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v220) = 0xFFFF;
LABEL_292:
                    v221 = *v51;
                    if (v699)
                    {
                      v222 = HIWORD(v221);
                      v223 = *v49;
                      if (!HIWORD(v221))
                      {
                        v224 = v223 & 0xFFFFFFFFFFFFLL | (v220 << 48);
LABEL_297:
                        *v51 = v224;
                        goto LABEL_298;
                      }
                    }

                    else
                    {
                      v223 = *v49;
                      LODWORD(v222) = 0xFFFF;
                    }

                    v224 = PDAoverlayPDA_15238(v221, v222, v223, v220);
                    goto LABEL_297;
                  }

                  v220 = HIWORD(*v49);
                  if (v220)
                  {
                    goto LABEL_292;
                  }

LABEL_298:
                  v225 = v49 + 8 * v215;
                  if (v225 >= v40)
                  {
                    v226 = v216;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  v49 = v225 + 8 * v226;
                  v51 = (v51 + v218);
                  --v219;
                }

                while (v219);
                v51 += v692;
                v227 = v697;
                v228 = v697 + 8 * v695;
                v229 = -(v695 * v642);
                if (v228 < v694)
                {
                  v229 = 0;
                }

                v230 = v228 + 8 * v229;
                v231 = v40 + 8 * v229 + 8 * v695;
                if (v694)
                {
                  v40 = v231;
                  v227 = v230;
                }

                v697 = v227;
                if (v694)
                {
                  v49 = v230;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v217 = v655 - 1;
                if (v655 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 16:
              v644 = v22;
              v645 = v50;
              v671 = v11;
              v75 = v30;
              v643 = v31;
              v76 = -v31;
              v77 = v701[0];
              v78 = 8 * v30;
              while (1)
              {
                v649 = v77;
                v79 = v671;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v80) = 0xFFFF;
LABEL_96:
                    v81 = *v51;
                    if (v699)
                    {
                      v82 = HIWORD(v81);
                      v83 = *v49;
                      if (!HIWORD(v81))
                      {
                        v84 = v83 & 0xFFFFFFFFFFFFLL | (v80 << 48);
LABEL_101:
                        *v51 = v84;
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v83 = *v49;
                      LODWORD(v82) = 0xFFFF;
                    }

                    v84 = PDAdarkenPDA_15240(v81, v82, v83, v80);
                    goto LABEL_101;
                  }

                  v80 = HIWORD(*v49);
                  if (v80)
                  {
                    goto LABEL_96;
                  }

LABEL_102:
                  v85 = v49 + 8 * v75;
                  if (v85 >= v40)
                  {
                    v86 = v76;
                  }

                  else
                  {
                    v86 = 0;
                  }

                  v49 = v85 + 8 * v86;
                  v51 = (v51 + v78);
                  --v79;
                }

                while (v79);
                v51 += v692;
                v87 = v697;
                v88 = v697 + 8 * v695;
                v89 = -(v695 * v642);
                if (v88 < v694)
                {
                  v89 = 0;
                }

                v90 = v88 + 8 * v89;
                v91 = v40 + 8 * v89 + 8 * v695;
                if (v694)
                {
                  v40 = v91;
                  v87 = v90;
                }

                v697 = v87;
                if (v694)
                {
                  v49 = v90;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v77 = v649 - 1;
                if (v649 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 17:
              v644 = v22;
              v645 = v50;
              v679 = v11;
              v267 = v30;
              v643 = v31;
              v268 = -v31;
              v269 = v701[0];
              v270 = 8 * v30;
              while (1)
              {
                v657 = v269;
                v271 = v679;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v272) = 0xFFFF;
LABEL_367:
                    v273 = *v51;
                    if (v699)
                    {
                      v274 = HIWORD(v273);
                      v275 = *v49;
                      if (!HIWORD(v273))
                      {
                        v276 = v275 & 0xFFFFFFFFFFFFLL | (v272 << 48);
LABEL_372:
                        *v51 = v276;
                        goto LABEL_373;
                      }
                    }

                    else
                    {
                      v275 = *v49;
                      LODWORD(v274) = 0xFFFF;
                    }

                    v276 = PDAlightenPDA_15239(v273, v274, v275, v272);
                    goto LABEL_372;
                  }

                  v272 = HIWORD(*v49);
                  if (v272)
                  {
                    goto LABEL_367;
                  }

LABEL_373:
                  v277 = v49 + 8 * v267;
                  if (v277 >= v40)
                  {
                    v278 = v268;
                  }

                  else
                  {
                    v278 = 0;
                  }

                  v49 = v277 + 8 * v278;
                  v51 = (v51 + v270);
                  --v271;
                }

                while (v271);
                v51 += v692;
                v279 = v697;
                v280 = v697 + 8 * v695;
                v281 = -(v695 * v642);
                if (v280 < v694)
                {
                  v281 = 0;
                }

                v282 = v280 + 8 * v281;
                v283 = v40 + 8 * v281 + 8 * v695;
                if (v694)
                {
                  v40 = v283;
                  v279 = v282;
                }

                v697 = v279;
                if (v694)
                {
                  v49 = v282;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v269 = v657 - 1;
                if (v657 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 18:
              v644 = v22;
              v645 = v50;
              v685 = v11;
              v363 = v30;
              v643 = v31;
              v364 = -v31;
              v365 = v701[0];
              v366 = 8 * v30;
              while (1)
              {
                v662 = v365;
                v367 = v685;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v368) = 0xFFFF;
LABEL_505:
                    v369 = *v51;
                    if (v699)
                    {
                      v370 = HIWORD(v369);
                      v371 = *v49;
                      if (!HIWORD(v369))
                      {
                        v372 = v371 & 0xFFFFFFFFFFFFLL | (v368 << 48);
LABEL_510:
                        *v51 = v372;
                        goto LABEL_511;
                      }
                    }

                    else
                    {
                      v371 = *v49;
                      LODWORD(v370) = 0xFFFF;
                    }

                    v372 = PDAcolordodgePDA_15241(v369, v370, v371, v368);
                    goto LABEL_510;
                  }

                  v368 = HIWORD(*v49);
                  if (v368)
                  {
                    goto LABEL_505;
                  }

LABEL_511:
                  v373 = v49 + 8 * v363;
                  if (v373 >= v40)
                  {
                    v374 = v364;
                  }

                  else
                  {
                    v374 = 0;
                  }

                  v49 = v373 + 8 * v374;
                  v51 = (v51 + v366);
                  --v367;
                }

                while (v367);
                v51 += v692;
                v375 = v697;
                v376 = v697 + 8 * v695;
                v377 = -(v695 * v642);
                if (v376 < v694)
                {
                  v377 = 0;
                }

                v378 = v376 + 8 * v377;
                v379 = v40 + 8 * v377 + 8 * v695;
                if (v694)
                {
                  v40 = v379;
                  v375 = v378;
                }

                v697 = v375;
                if (v694)
                {
                  v49 = v378;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v365 = v662 - 1;
                if (v662 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 19:
              v644 = v22;
              v645 = v50;
              v688 = v11;
              v422 = v30;
              v643 = v31;
              v423 = -v31;
              v424 = v701[0];
              v425 = 8 * v30;
              while (1)
              {
                v665 = v424;
                v426 = v688;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v427) = 0xFFFF;
LABEL_589:
                    v428 = *v51;
                    if (v699)
                    {
                      v429 = HIWORD(v428);
                      v430 = *v49;
                      if (!HIWORD(v428))
                      {
                        v431 = v430 & 0xFFFFFFFFFFFFLL | (v427 << 48);
LABEL_594:
                        *v51 = v431;
                        goto LABEL_595;
                      }
                    }

                    else
                    {
                      v430 = *v49;
                      LODWORD(v429) = 0xFFFF;
                    }

                    v431 = PDAcolorburnPDA_15242(v428, v429, v430, v427);
                    goto LABEL_594;
                  }

                  v427 = HIWORD(*v49);
                  if (v427)
                  {
                    goto LABEL_589;
                  }

LABEL_595:
                  v432 = v49 + 8 * v422;
                  if (v432 >= v40)
                  {
                    v433 = v423;
                  }

                  else
                  {
                    v433 = 0;
                  }

                  v49 = v432 + 8 * v433;
                  v51 = (v51 + v425);
                  --v426;
                }

                while (v426);
                v51 += v692;
                v434 = v697;
                v435 = v697 + 8 * v695;
                v436 = -(v695 * v642);
                if (v435 < v694)
                {
                  v436 = 0;
                }

                v437 = v435 + 8 * v436;
                v438 = v40 + 8 * v436 + 8 * v695;
                if (v694)
                {
                  v40 = v438;
                  v434 = v437;
                }

                v697 = v434;
                if (v694)
                {
                  v49 = v437;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v424 = v665 - 1;
                if (v665 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 20:
              v644 = v22;
              v645 = v50;
              v680 = v11;
              v284 = v30;
              v643 = v31;
              v285 = -v31;
              v286 = v701[0];
              v287 = 8 * v30;
              while (1)
              {
                v658 = v286;
                v288 = v680;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v289) = 0xFFFF;
LABEL_392:
                    v290 = *v51;
                    if (v699)
                    {
                      v291 = HIWORD(v290);
                      v292 = *v49;
                      if (!HIWORD(v290))
                      {
                        v293 = v292 & 0xFFFFFFFFFFFFLL | (v289 << 48);
LABEL_397:
                        *v51 = v293;
                        goto LABEL_398;
                      }
                    }

                    else
                    {
                      v292 = *v49;
                      LODWORD(v291) = 0xFFFF;
                    }

                    v293 = PDAsoftlightPDA_15244(v290, v291, v292, v289);
                    goto LABEL_397;
                  }

                  v289 = HIWORD(*v49);
                  if (v289)
                  {
                    goto LABEL_392;
                  }

LABEL_398:
                  v294 = v49 + 8 * v284;
                  if (v294 >= v40)
                  {
                    v295 = v285;
                  }

                  else
                  {
                    v295 = 0;
                  }

                  v49 = v294 + 8 * v295;
                  v51 = (v51 + v287);
                  --v288;
                }

                while (v288);
                v51 += v692;
                v296 = v697;
                v297 = v697 + 8 * v695;
                v298 = -(v695 * v642);
                if (v297 < v694)
                {
                  v298 = 0;
                }

                v299 = v297 + 8 * v298;
                v300 = v40 + 8 * v298 + 8 * v695;
                if (v694)
                {
                  v40 = v300;
                  v296 = v299;
                }

                v697 = v296;
                if (v694)
                {
                  v49 = v299;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v286 = v658 - 1;
                if (v658 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 21:
              v644 = v22;
              v645 = v50;
              v682 = v11;
              v313 = v30;
              v643 = v31;
              v314 = -v31;
              v315 = v701[0];
              v316 = 8 * v30;
              while (1)
              {
                v659 = v315;
                v317 = v682;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v318) = 0xFFFF;
LABEL_432:
                    v319 = *v51;
                    if (v699)
                    {
                      v320 = HIWORD(v319);
                      v321 = *v49;
                      if (!HIWORD(v319))
                      {
                        v322 = v321 & 0xFFFFFFFFFFFFLL | (v318 << 48);
LABEL_437:
                        *v51 = v322;
                        goto LABEL_438;
                      }
                    }

                    else
                    {
                      v321 = *v49;
                      LODWORD(v320) = 0xFFFF;
                    }

                    v322 = PDAhardlightPDA_15243(v319, v320, v321, v318);
                    goto LABEL_437;
                  }

                  v318 = HIWORD(*v49);
                  if (v318)
                  {
                    goto LABEL_432;
                  }

LABEL_438:
                  v323 = v49 + 8 * v313;
                  if (v323 >= v40)
                  {
                    v324 = v314;
                  }

                  else
                  {
                    v324 = 0;
                  }

                  v49 = v323 + 8 * v324;
                  v51 = (v51 + v316);
                  --v317;
                }

                while (v317);
                v51 += v692;
                v325 = v697;
                v326 = v697 + 8 * v695;
                v327 = -(v695 * v642);
                if (v326 < v694)
                {
                  v327 = 0;
                }

                v328 = v326 + 8 * v327;
                v329 = v40 + 8 * v327 + 8 * v695;
                if (v694)
                {
                  v40 = v329;
                  v325 = v328;
                }

                v697 = v325;
                if (v694)
                {
                  v49 = v328;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v315 = v659 - 1;
                if (v659 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 22:
              v644 = v22;
              v645 = v50;
              v687 = v11;
              v405 = v30;
              v643 = v31;
              v406 = -v31;
              v407 = v701[0];
              v408 = 8 * v30;
              while (1)
              {
                v664 = v407;
                v409 = v687;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v410) = 0xFFFF;
LABEL_564:
                    v411 = *v51;
                    if (v699)
                    {
                      v412 = HIWORD(v411);
                      v413 = *v49;
                      if (!HIWORD(v411))
                      {
                        v414 = v413 & 0xFFFFFFFFFFFFLL | (v410 << 48);
LABEL_569:
                        *v51 = v414;
                        goto LABEL_570;
                      }
                    }

                    else
                    {
                      v413 = *v49;
                      LODWORD(v412) = 0xFFFF;
                    }

                    v414 = PDAdifferencePDA_15245(v411, v412, v413, v410);
                    goto LABEL_569;
                  }

                  v410 = HIWORD(*v49);
                  if (v410)
                  {
                    goto LABEL_564;
                  }

LABEL_570:
                  v415 = v49 + 8 * v405;
                  if (v415 >= v40)
                  {
                    v416 = v406;
                  }

                  else
                  {
                    v416 = 0;
                  }

                  v49 = v415 + 8 * v416;
                  v51 = (v51 + v408);
                  --v409;
                }

                while (v409);
                v51 += v692;
                v417 = v697;
                v418 = v697 + 8 * v695;
                v419 = -(v695 * v642);
                if (v418 < v694)
                {
                  v419 = 0;
                }

                v420 = v418 + 8 * v419;
                v421 = v40 + 8 * v419 + 8 * v695;
                if (v694)
                {
                  v40 = v421;
                  v417 = v420;
                }

                v697 = v417;
                if (v694)
                {
                  v49 = v420;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v407 = v664 - 1;
                if (v664 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 23:
              v644 = v22;
              v645 = v50;
              v689 = v11;
              v439 = v30;
              v643 = v31;
              v440 = -v31;
              v441 = v701[0];
              v442 = 8 * v30;
              while (1)
              {
                v666 = v441;
                v443 = v689;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v444) = 0xFFFF;
LABEL_614:
                    v445 = *v51;
                    if (v699)
                    {
                      v446 = HIWORD(v445);
                      v447 = *v49;
                      if (!HIWORD(v445))
                      {
                        v448 = v447 & 0xFFFFFFFFFFFFLL | (v444 << 48);
LABEL_619:
                        *v51 = v448;
                        goto LABEL_620;
                      }
                    }

                    else
                    {
                      v447 = *v49;
                      LODWORD(v446) = 0xFFFF;
                    }

                    v448 = PDAexclusionPDA_15246(v445, v446, v447, v444);
                    goto LABEL_619;
                  }

                  v444 = HIWORD(*v49);
                  if (v444)
                  {
                    goto LABEL_614;
                  }

LABEL_620:
                  v449 = v49 + 8 * v439;
                  if (v449 >= v40)
                  {
                    v450 = v440;
                  }

                  else
                  {
                    v450 = 0;
                  }

                  v49 = v449 + 8 * v450;
                  v51 = (v51 + v442);
                  --v443;
                }

                while (v443);
                v51 += v692;
                v451 = v697;
                v452 = v697 + 8 * v695;
                v453 = -(v695 * v642);
                if (v452 < v694)
                {
                  v453 = 0;
                }

                v454 = v452 + 8 * v453;
                v455 = v40 + 8 * v453 + 8 * v695;
                if (v694)
                {
                  v40 = v455;
                  v451 = v454;
                }

                v697 = v451;
                if (v694)
                {
                  v49 = v454;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v441 = v666 - 1;
                if (v666 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 24:
              v644 = v22;
              v645 = v50;
              v677 = v11;
              v184 = v30;
              v643 = v31;
              v185 = -v31;
              v186 = v701[0];
              v187 = 8 * v30;
              while (1)
              {
                v653 = v186;
                v188 = v677;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v189) = 0xFFFF;
LABEL_248:
                    v190 = *v51;
                    if (v699)
                    {
                      v191 = HIWORD(v190);
                      v192 = *v49;
                      if (!HIWORD(v190))
                      {
                        v193 = v192 & 0xFFFFFFFFFFFFLL | (v189 << 48);
LABEL_253:
                        *v51 = v193;
                        goto LABEL_254;
                      }
                    }

                    else
                    {
                      v192 = *v49;
                      LODWORD(v191) = 0xFFFF;
                    }

                    v193 = PDAhuePDA_15247(v190, v191, v192, v189);
                    goto LABEL_253;
                  }

                  v189 = HIWORD(*v49);
                  if (v189)
                  {
                    goto LABEL_248;
                  }

LABEL_254:
                  v194 = v49 + 8 * v184;
                  if (v194 >= v40)
                  {
                    v195 = v185;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  v49 = v194 + 8 * v195;
                  v51 = (v51 + v187);
                  --v188;
                }

                while (v188);
                v51 += v692;
                v196 = v697;
                v197 = v697 + 8 * v695;
                v198 = -(v695 * v642);
                if (v197 < v694)
                {
                  v198 = 0;
                }

                v199 = v197 + 8 * v198;
                v200 = v40 + 8 * v198 + 8 * v695;
                if (v694)
                {
                  v40 = v200;
                  v196 = v199;
                }

                v697 = v196;
                if (v694)
                {
                  v49 = v199;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v186 = v653 - 1;
                if (v653 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 25:
              v644 = v22;
              v645 = v50;
              v676 = v11;
              v167 = v30;
              v643 = v31;
              v168 = -v31;
              v169 = v701[0];
              v170 = 8 * v30;
              while (1)
              {
                v652 = v169;
                v171 = v676;
                do
                {
                  if (!v38)
                  {
                    LODWORD(v172) = 0xFFFF;
LABEL_223:
                    v173 = *v51;
                    if (v699)
                    {
                      v174 = HIWORD(v173);
                      v175 = *v49;
                      if (!HIWORD(v173))
                      {
                        v176 = v175 & 0xFFFFFFFFFFFFLL | (v172 << 48);
LABEL_228:
                        *v51 = v176;
                        goto LABEL_229;
                      }
                    }

                    else
                    {
                      v175 = *v49;
                      LODWORD(v174) = 0xFFFF;
                    }

                    v176 = PDAsaturationPDA_15248(v173, v174, v175, v172);
                    goto LABEL_228;
                  }

                  v172 = HIWORD(*v49);
                  if (v172)
                  {
                    goto LABEL_223;
                  }

LABEL_229:
                  v177 = v49 + 8 * v167;
                  if (v177 >= v40)
                  {
                    v178 = v168;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v49 = v177 + 8 * v178;
                  v51 = (v51 + v170);
                  --v171;
                }

                while (v171);
                v51 += v692;
                v179 = v697;
                v180 = v697 + 8 * v695;
                v181 = -(v695 * v642);
                if (v180 < v694)
                {
                  v181 = 0;
                }

                v182 = v180 + 8 * v181;
                v183 = v40 + 8 * v181 + 8 * v695;
                if (v694)
                {
                  v40 = v183;
                  v179 = v182;
                }

                v697 = v179;
                if (v694)
                {
                  v49 = v182;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v169 = v652 - 1;
                if (v652 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 26:
              v644 = v22;
              v645 = v50;
              v690 = v11;
              v456 = v30;
              v643 = v31;
              v457 = -v31;
              v458 = v701[0];
              v459 = 8 * v30;
              while (1)
              {
                v667 = v458;
                v460 = v690;
                do
                {
                  if (v38)
                  {
                    v461 = HIWORD(*v49);
                    if (!v461)
                    {
                      goto LABEL_646;
                    }

                    if (!v699)
                    {
LABEL_643:
                      v464 = *v49;
                      v462 = *v51;
                      LODWORD(v463) = 0xFFFF;
LABEL_644:
                      v465 = PDAluminosityPDA_15249(v464, v461, v462, v463);
                      goto LABEL_645;
                    }
                  }

                  else
                  {
                    LODWORD(v461) = 0xFFFF;
                    if (!v699)
                    {
                      goto LABEL_643;
                    }
                  }

                  v462 = *v51;
                  v463 = HIWORD(*v51);
                  v464 = *v49;
                  if (v463)
                  {
                    goto LABEL_644;
                  }

                  v465 = v464 & 0xFFFFFFFFFFFFLL | (v461 << 48);
LABEL_645:
                  *v51 = v465;
LABEL_646:
                  v466 = v49 + 8 * v456;
                  if (v466 >= v40)
                  {
                    v467 = v457;
                  }

                  else
                  {
                    v467 = 0;
                  }

                  v49 = v466 + 8 * v467;
                  v51 = (v51 + v459);
                  --v460;
                }

                while (v460);
                v51 += v692;
                v468 = v697;
                v469 = v697 + 8 * v695;
                v470 = -(v695 * v642);
                if (v469 < v694)
                {
                  v470 = 0;
                }

                v471 = v469 + 8 * v470;
                v472 = v40 + 8 * v470 + 8 * v695;
                if (v694)
                {
                  v40 = v472;
                  v468 = v471;
                }

                v697 = v468;
                if (v694)
                {
                  v49 = v471;
                }

                else
                {
                  v49 += 8 * v695;
                }

                v458 = v667 - 1;
                if (v667 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 27:
              v644 = v22;
              v645 = v50;
              v670 = v11;
              v58 = v30;
              v643 = v31;
              v59 = -v31;
              v60 = v701[0];
              v61 = 8 * v30;
              break;
            default:
              v39 = v22;
              goto LABEL_634;
          }

          break;
        }

LABEL_66:
        v648 = v60;
        v62 = v670;
        while (1)
        {
          if (v38)
          {
            v63 = HIWORD(*v49);
            if (!v63)
            {
              goto LABEL_77;
            }
          }

          else
          {
            LODWORD(v63) = 0xFFFF;
          }

          v64 = *v51;
          if (!v699)
          {
            break;
          }

          v65 = HIWORD(v64);
          v66 = *v49;
          if (HIWORD(v64))
          {
            goto LABEL_75;
          }

          v67 = v66 & 0xFFFFFFFFFFFFLL | (v63 << 48);
LABEL_76:
          *v51 = v67;
LABEL_77:
          v68 = v49 + 8 * v58;
          if (v68 >= v40)
          {
            v69 = v59;
          }

          else
          {
            v69 = 0;
          }

          v49 = v68 + 8 * v69;
          v51 = (v51 + v61);
          if (!--v62)
          {
            v51 += v692;
            v70 = v697;
            v71 = v697 + 8 * v695;
            v72 = -(v695 * v642);
            if (v71 < v694)
            {
              v72 = 0;
            }

            v73 = v71 + 8 * v72;
            v74 = v40 + 8 * v72 + 8 * v695;
            if (v694)
            {
              v40 = v74;
              v70 = v73;
            }

            v697 = v70;
            if (v694)
            {
              v49 = v73;
            }

            else
            {
              v49 += 8 * v695;
            }

            v60 = v648 - 1;
            if (v648 == 1)
            {
LABEL_658:
              v701[0] = 0;
              v4 = v640;
              v39 = v644;
              v24 = v645;
              v31 = v643;
              goto LABEL_659;
            }

            goto LABEL_66;
          }
        }

        v66 = *v49;
        LODWORD(v65) = 0xFFFF;
LABEL_75:
        v67 = PDAluminosityPDA_15249(v64, v65, v66, v63);
        goto LABEL_76;
      }

      v692 = v23 - v11;
      if (v22)
      {
        v646 = 0;
        v47 = v25 % v31;
        v48 = v22 + 8 * v27 * (v26 % v642);
        v49 = v48 + 8 * v47;
        v40 = v48 + 8 * v31;
        v30 = 1;
        v695 = *(v4 + 76) >> 3;
        v697 = v49;
        v50 = *(v4 + 40) + 8 * v23 * *(v4 + 16) + 8 * *(v4 + 12);
        v51 = v50;
        v638 = v26 % v642;
        v639 = v47;
        goto LABEL_58;
      }

      v638 = *(v4 + 60);
      v639 = *(v4 + 56);
      v40 = 0;
      v30 = 1;
      v52 = v11;
LABEL_57:
      v646 = 0;
      v697 = 0;
      v694 = 0;
      v695 = v27 - v52;
      v49 = v22;
      v50 = v24;
      v51 = v24;
      goto LABEL_58;
    }

    v22 += 8 * v27 * v26 + 8 * v25;
    if (v27 == v23)
    {
      v28 = (v24 - v22) >> 3;
      if (v28 >= 1)
      {
        if (v28 <= v11)
        {
          v24 += 8 * v12;
          v31 = *(v4 + 28) >> 3;
          v22 += 8 * v12;
          v30 = 0xFFFFFFFFLL;
          goto LABEL_52;
        }

        v29 = v23 * (v13 - 1);
        if (v24 <= v22 + 8 * v29 + 8 * v11 - 8)
        {
          v24 += 8 * v29;
          v31 = -v23;
          v22 += 8 * v29;
          v30 = 1;
          v23 = -v23;
          goto LABEL_52;
        }
      }

      v30 = 1;
      v31 = *(v4 + 28) >> 3;
    }

    else
    {
      v30 = 1;
      v31 = *(v4 + 76) >> 3;
    }

LABEL_52:
    v638 = *(v4 + 60);
    v639 = *(v4 + 56);
    v38 = v8 != 0;
    if (v14)
    {
      v39 = v22;
      v642 = 0;
      v695 = v31;
      v697 = 0;
      v694 = 0;
      v40 = -1;
      goto LABEL_54;
    }

    v642 = 0;
    v52 = v30 * v11;
    v692 = v23 - v52;
    v40 = -1;
    v27 = v31;
    goto LABEL_57;
  }

  if (BYTE1(v7) != 4)
  {
    goto LABEL_24;
  }

  v711[0] = *(v4 + 4);
  v701[0] = v13;
  v16 = **(v4 + 88);
  v17 = HIWORD(v16);
  v18 = *(v4 + 28) >> 3;
  v19 = (*(v4 + 40) + 8 * v18 * *(v4 + 16) + 8 * *(v4 + 12));
  v693 = v19;
  v669 = *(v4 + 28);
  v691 = v18;
  if (v14)
  {
    shape_enum_clip_alloc(v1, v2, v14, 1, 1, 1, *(v4 + 104), *(v4 + 108), v11, v13);
    v21 = v20;
    if (v20)
    {
      goto LABEL_979;
    }

    return 1;
  }

  v696 = 0;
  while (2)
  {
    v698 = v18 - v11;
    v507 = v11;
    switch(v9)
    {
      case 0:
        v508 = v701[0];
        v509 = 8 * v11;
        goto LABEL_985;
      case 1:
        v577 = *(v4 + 88);
        if (v577)
        {
          CGSFillDRAM64(v19, v669 & 0xFFFFFFF8, 8 * v11, v701[0], v577, 8, 8, 1, 0, 0);
        }

        else
        {
          v509 = 8 * v11;
          v508 = v701[0];
LABEL_985:
          CGBlt_fillBytes(v509, v508, 0, v19, v669 & 0xFFFFFFF8);
        }

        goto LABEL_977;
      case 2:
        v554 = v11 >> 2;
        v555 = v11 & 3;
        v556 = v701[0];
        v557 = v554 + 1;
        do
        {
          v558 = v507;
          if (v507 >= 4)
          {
            v559 = v557;
            do
            {
              rgba64_DplusDM(v19, v16, *v19, ~HIWORD(v16));
              rgba64_DplusDM(v19 + 1, v16, *&v19[1], ~HIWORD(v16));
              rgba64_DplusDM(v19 + 2, v16, *&v19[2], ~HIWORD(v16));
              v561 = v19[3];
              v560 = v19 + 3;
              rgba64_DplusDM(v560, v16, v561, ~HIWORD(v16));
              v19 = v560 + 1;
              --v559;
            }

            while (v559 > 1);
            v558 = v555;
          }

          if (v558 < 1)
          {
            v563 = v19;
          }

          else
          {
            v562 = v558 + 1;
            v563 = v19;
            do
            {
              v564 = *v563++;
              rgba64_DplusDM(v19, v16, v564, ~HIWORD(v16));
              --v562;
              v19 = v563;
            }

            while (v562 > 1);
          }

          v19 = &v563[v698];
          --v556;
        }

        while (v556);
        v701[0] = 0;
        v4 = v640;
        goto LABEL_824;
      case 3:
        v532 = v9;
        v570 = v701[0];
        do
        {
          v571 = v11;
          do
          {
            v572 = v19->u16[3];
            if (v572 == 0xFFFF)
            {
              *v19 = v16;
            }

            else if (v19->i16[3])
            {
              rgba64_DM(v19, v16, v572);
            }

            else
            {
              *v19 = 0;
            }

            ++v19;
            --v571;
          }

          while (v571);
          v19 += v698;
          --v570;
        }

        while (v570);
        goto LABEL_931;
      case 4:
        v532 = v9;
        v533 = v701[0];
        do
        {
          v534 = v11;
          do
          {
            v535 = v19->i16[3];
            if (~v535 == 0xFFFF)
            {
              *v19 = v16;
            }

            else if (v535 == -1)
            {
              *v19 = 0;
            }

            else
            {
              rgba64_DM(v19, v16, ~v535);
            }

            ++v19;
            --v534;
          }

          while (v534);
          v19 += v698;
          --v533;
        }

        while (v533);
        goto LABEL_931;
      case 5:
        v532 = v9;
        v588 = v701[0];
        do
        {
          v589 = v11;
          v590 = v19;
          do
          {
            v591 = *v590++;
            rgba64_DMplusDM(v19, v16, HIWORD(v591), v591, ~HIWORD(v16));
            v19 = v590;
            --v589;
          }

          while (v589);
          v19 = &v590[v698];
          --v588;
        }

        while (v588);
        goto LABEL_931;
      case 6:
        v532 = v9;
        v602 = v701[0];
        do
        {
          v603 = v11;
          do
          {
            v604 = HIWORD(*v19);
            if (v604 != 0xFFFF)
            {
              if (~v604 == 0xFFFF)
              {
                *v19 = v16;
              }

              else
              {
                rgba64_DplusDM(v19, *v19, v16, ~v604);
              }
            }

            ++v19;
            --v603;
          }

          while (v603);
          v19 += v698;
          --v602;
        }

        while (v602);
        goto LABEL_931;
      case 7:
        v532 = v9;
        v573 = v701[0];
        do
        {
          v574 = v11;
          v575 = v19;
          do
          {
            v576 = *v575++;
            rgba64_DM(v19, v576, HIWORD(v16));
            v19 = v575;
            --v574;
          }

          while (v574);
          v19 = &v575[v698];
          --v573;
        }

        while (v573);
        goto LABEL_931;
      case 8:
        v532 = v9;
        v614 = v701[0];
        do
        {
          v615 = v11;
          v616 = v19;
          do
          {
            v617 = *v616++;
            rgba64_DM(v19, v617, ~HIWORD(v16));
            v19 = v616;
            --v615;
          }

          while (v615);
          v19 = &v616[v698];
          --v614;
        }

        while (v614);
        goto LABEL_931;
      case 9:
        v532 = v9;
        v540 = v701[0];
        do
        {
          v541 = v11;
          v542 = v19;
          do
          {
            v543 = *v542++;
            rgba64_DMplusDM(v19, v16, HIWORD(v543) ^ 0xFFFF, v543, HIWORD(v16));
            v19 = v542;
            --v541;
          }

          while (v541);
          v19 = &v542[v698];
          --v540;
        }

        while (v540);
        goto LABEL_931;
      case 10:
        v532 = v9;
        v610 = v701[0];
        do
        {
          v611 = v11;
          v612 = v19;
          do
          {
            v613 = *v612++;
            rgba64_DMplusDM(v19, v16, HIWORD(v613) ^ 0xFFFF, v613, ~HIWORD(v16));
            v19 = v612;
            --v611;
          }

          while (v611);
          v19 = &v612[v698];
          --v610;
        }

        while (v610);
        goto LABEL_931;
      case 11:
        v526 = v701[0];
        do
        {
          v527 = v11;
          v528 = v19;
          do
          {
            v530 = *v528++;
            v529 = v530;
            v531 = HIWORD(v530);
            if (!v699)
            {
              LOWORD(v531) = -1;
            }

            rgba64_DAplusdDA(v19, v529, v531, v16, HIWORD(v16));
            v19 = v528;
            --v527;
          }

          while (v527);
          v19 = &v528[v698];
          --v526;
          LODWORD(v11) = v507;
        }

        while (v526);
        v701[0] = 0;
LABEL_824:
        v9 = v641;
        goto LABEL_932;
      case 12:
        v532 = v9;
        v536 = v701[0];
        do
        {
          v537 = v11;
          v538 = v19;
          do
          {
            v539 = *v538++;
            rgba64_DpluslD(v19, v539, v16);
            v19 = v538;
            --v537;
          }

          while (v537);
          v19 = &v538[v698];
          --v536;
        }

        while (v536);
LABEL_931:
        v701[0] = 0;
        v9 = v532;
LABEL_932:
        v18 = v691;
        goto LABEL_977;
      case 13:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v597 = v701[0];
        while (1)
        {
          v598 = v11;
          do
          {
            v599 = *v19;
            if (!v699)
            {
              LODWORD(v600) = 0xFFFF;
LABEL_898:
              v601 = PDAmultiplyPDA_15236(v599, v600, v16, HIWORD(v16));
              goto LABEL_899;
            }

            v600 = HIWORD(v599);
            v601 = v16;
            if (HIWORD(v599))
            {
              goto LABEL_898;
            }

LABEL_899:
            *v19++ = v601;
            --v598;
          }

          while (v598);
          v19 += v698;
          if (!--v597)
          {
            goto LABEL_976;
          }
        }

      case 14:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v521 = v701[0];
        while (1)
        {
          v522 = v11;
          do
          {
            v523 = *v19;
            if (!v699)
            {
              LODWORD(v524) = 0xFFFF;
LABEL_759:
              v525 = PDAscreenPDA_15237(v523, v524, v16, HIWORD(v16));
              goto LABEL_760;
            }

            v524 = HIWORD(v523);
            v525 = v16;
            if (HIWORD(v523))
            {
              goto LABEL_759;
            }

LABEL_760:
            *v19++ = v525;
            --v522;
          }

          while (v522);
          v19 += v698;
          if (!--v521)
          {
            goto LABEL_976;
          }
        }

      case 15:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v565 = v701[0];
        while (1)
        {
          v566 = v11;
          do
          {
            v567 = *v19;
            if (!v699)
            {
              LODWORD(v568) = 0xFFFF;
LABEL_832:
              v569 = PDAoverlayPDA_15238(v567, v568, v16, HIWORD(v16));
              goto LABEL_833;
            }

            v568 = HIWORD(v567);
            v569 = v16;
            if (HIWORD(v567))
            {
              goto LABEL_832;
            }

LABEL_833:
            *v19++ = v569;
            --v566;
          }

          while (v566);
          v19 += v698;
          if (!--v565)
          {
            goto LABEL_976;
          }
        }

      case 16:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v516 = v701[0];
        while (1)
        {
          v517 = v11;
          do
          {
            v518 = *v19;
            if (!v699)
            {
              LODWORD(v519) = 0xFFFF;
LABEL_748:
              v520 = PDAdarkenPDA_15240(v518, v519, v16, HIWORD(v16));
              goto LABEL_749;
            }

            v519 = HIWORD(v518);
            v520 = v16;
            if (HIWORD(v518))
            {
              goto LABEL_748;
            }

LABEL_749:
            *v19++ = v520;
            --v517;
          }

          while (v517);
          v19 += v698;
          if (!--v516)
          {
            goto LABEL_976;
          }
        }

      case 17:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v578 = v701[0];
        while (1)
        {
          v579 = v11;
          do
          {
            v580 = *v19;
            if (!v699)
            {
              LODWORD(v581) = 0xFFFF;
LABEL_860:
              v582 = PDAlightenPDA_15239(v580, v581, v16, HIWORD(v16));
              goto LABEL_861;
            }

            v581 = HIWORD(v580);
            v582 = v16;
            if (HIWORD(v580))
            {
              goto LABEL_860;
            }

LABEL_861:
            *v19++ = v582;
            --v579;
          }

          while (v579);
          v19 += v698;
          if (!--v578)
          {
            goto LABEL_976;
          }
        }

      case 18:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v605 = v701[0];
        while (1)
        {
          v606 = v11;
          do
          {
            v607 = *v19;
            if (!v699)
            {
              LODWORD(v608) = 0xFFFF;
LABEL_918:
              v609 = PDAcolordodgePDA_15241(v607, v608, v16, HIWORD(v16));
              goto LABEL_919;
            }

            v608 = HIWORD(v607);
            v609 = v16;
            if (HIWORD(v607))
            {
              goto LABEL_918;
            }

LABEL_919:
            *v19++ = v609;
            --v606;
          }

          while (v606);
          v19 += v698;
          if (!--v605)
          {
            goto LABEL_976;
          }
        }

      case 19:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v623 = v701[0];
        while (1)
        {
          v624 = v11;
          do
          {
            v625 = *v19;
            if (!v699)
            {
              LODWORD(v626) = 0xFFFF;
LABEL_951:
              v627 = PDAcolorburnPDA_15242(v625, v626, v16, HIWORD(v16));
              goto LABEL_952;
            }

            v626 = HIWORD(v625);
            v627 = v16;
            if (HIWORD(v625))
            {
              goto LABEL_951;
            }

LABEL_952:
            *v19++ = v627;
            --v624;
          }

          while (v624);
          v19 += v698;
          if (!--v623)
          {
            goto LABEL_976;
          }
        }

      case 20:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v583 = v701[0];
        while (1)
        {
          v584 = v11;
          do
          {
            v585 = *v19;
            if (!v699)
            {
              LODWORD(v586) = 0xFFFF;
LABEL_871:
              v587 = PDAsoftlightPDA_15244(v585, v586, v16, HIWORD(v16));
              goto LABEL_872;
            }

            v586 = HIWORD(v585);
            v587 = v16;
            if (HIWORD(v585))
            {
              goto LABEL_871;
            }

LABEL_872:
            *v19++ = v587;
            --v584;
          }

          while (v584);
          v19 += v698;
          if (!--v583)
          {
            goto LABEL_976;
          }
        }

      case 21:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v592 = v701[0];
        while (1)
        {
          v593 = v11;
          do
          {
            v594 = *v19;
            if (!v699)
            {
              LODWORD(v595) = 0xFFFF;
LABEL_887:
              v596 = PDAhardlightPDA_15243(v594, v595, v16, HIWORD(v16));
              goto LABEL_888;
            }

            v595 = HIWORD(v594);
            v596 = v16;
            if (HIWORD(v594))
            {
              goto LABEL_887;
            }

LABEL_888:
            *v19++ = v596;
            --v593;
          }

          while (v593);
          v19 += v698;
          if (!--v592)
          {
            goto LABEL_976;
          }
        }

      case 22:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v618 = v701[0];
        while (1)
        {
          v619 = v11;
          do
          {
            v620 = *v19;
            if (!v699)
            {
              LODWORD(v621) = 0xFFFF;
LABEL_940:
              v622 = PDAdifferencePDA_15245(v620, v621, v16, HIWORD(v16));
              goto LABEL_941;
            }

            v621 = HIWORD(v620);
            v622 = v16;
            if (HIWORD(v620))
            {
              goto LABEL_940;
            }

LABEL_941:
            *v19++ = v622;
            --v619;
          }

          while (v619);
          v19 += v698;
          if (!--v618)
          {
            goto LABEL_976;
          }
        }

      case 23:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v628 = v701[0];
        while (1)
        {
          v629 = v11;
          do
          {
            v630 = *v19;
            if (!v699)
            {
              LODWORD(v631) = 0xFFFF;
LABEL_962:
              v632 = PDAexclusionPDA_15246(v630, v631, v16, HIWORD(v16));
              goto LABEL_963;
            }

            v631 = HIWORD(v630);
            v632 = v16;
            if (HIWORD(v630))
            {
              goto LABEL_962;
            }

LABEL_963:
            *v19++ = v632;
            --v629;
          }

          while (v629);
          v19 += v698;
          if (!--v628)
          {
            goto LABEL_976;
          }
        }

      case 24:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v549 = v701[0];
        while (1)
        {
          v550 = v11;
          do
          {
            v551 = *v19;
            if (!v699)
            {
              LODWORD(v552) = 0xFFFF;
LABEL_808:
              v553 = PDAhuePDA_15247(v551, v552, v16, HIWORD(v16));
              goto LABEL_809;
            }

            v552 = HIWORD(v551);
            v553 = v16;
            if (HIWORD(v551))
            {
              goto LABEL_808;
            }

LABEL_809:
            *v19++ = v553;
            --v550;
          }

          while (v550);
          v19 += v698;
          if (!--v549)
          {
            goto LABEL_976;
          }
        }

      case 25:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v544 = v701[0];
        while (1)
        {
          v545 = v11;
          do
          {
            v546 = *v19;
            if (!v699)
            {
              LODWORD(v547) = 0xFFFF;
LABEL_797:
              v548 = PDAsaturationPDA_15248(v546, v547, v16, HIWORD(v16));
              goto LABEL_798;
            }

            v547 = HIWORD(v546);
            v548 = v16;
            if (HIWORD(v546))
            {
              goto LABEL_797;
            }

LABEL_798:
            *v19++ = v548;
            --v545;
          }

          while (v545);
          v19 += v698;
          if (!--v544)
          {
            goto LABEL_976;
          }
        }

      case 26:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v633 = v701[0];
        do
        {
          v634 = v11;
          do
          {
            v635 = *v19;
            if (!v699)
            {
              LODWORD(v636) = 0xFFFF;
LABEL_973:
              v637 = PDAluminosityPDA_15249(v16, HIWORD(v16), v635, v636);
              goto LABEL_974;
            }

            v636 = HIWORD(v635);
            v637 = v16;
            if (HIWORD(v635))
            {
              goto LABEL_973;
            }

LABEL_974:
            *v19++ = v637;
            --v634;
          }

          while (v634);
          v19 += v698;
          --v633;
        }

        while (v633);
LABEL_976:
        v701[0] = 0;
        v18 = v510;
LABEL_977:
        v19 = v693;
        v21 = v696;
        if (!v696)
        {
          return 1;
        }

        v700 = 0;
LABEL_979:
        if (shape_enum_clip_next(v21, &v700 + 1, &v700, v711, v701))
        {
          v696 = v21;
          v19 += v18 * v700 + SHIDWORD(v700);
          LODWORD(v11) = v711[0];
          continue;
        }

        v46 = v21;
LABEL_982:
        free(v46);
        return 1;
      case 27:
        if (!v17)
        {
          goto LABEL_977;
        }

        v510 = v18;
        v511 = v701[0];
        break;
      default:
        goto LABEL_977;
    }

    break;
  }

LABEL_732:
  v512 = v11;
  while (1)
  {
    v513 = *v19;
    if (v699)
    {
      v514 = HIWORD(v513);
      v515 = v16;
      if (!HIWORD(v513))
      {
        goto LABEL_738;
      }
    }

    else
    {
      LODWORD(v514) = 0xFFFF;
    }

    v515 = PDAluminosityPDA_15249(v513, v514, v16, HIWORD(v16));
LABEL_738:
    *v19++ = v515;
    if (!--v512)
    {
      v19 += v698;
      if (!--v511)
      {
        goto LABEL_976;
      }

      goto LABEL_732;
    }
  }
}

void rgba16_template_image_mark_method(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a1 & 0x30) == 0x20)
  {
    if ((a3 & 0x80000000) != 0)
    {
      return;
    }

    v99 = VEC::template_mark_pixelshape_row<(CGCompositeOperation)0,_rgba16_t>;
    if (a3 <= 0x17)
    {
      v99 = *(&VEC::MethodList<_rgba16_t>::shapeMethods + a3);
    }

    v3 = *(a2 + 4);
    v4 = *(a2 + 8);
    v5 = v3;
    v107 = v4;
    v108 = v3;
    v6 = *(a2 + 28);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v10 = *(a2 + 88);
    v9 = *(a2 + 96);
    v105 = v10;
    v11 = *(a2 + 136);
    v12 = *(a2 + 1) << 8;
    v13 = v6 >> 3;
    v97 = v8 != 0;
    v14 = v7 + 8 * (v6 >> 3) * *(a2 + 16) + 8 * *(a2 + 12);
    v106 = v14;
    v15 = *(a2 + 104);
    v16 = *(a2 + 108);
    v17 = *(a2 + 56);
    v18 = *(a2 + 60);
    v19 = *(a2 + 76);
    if (v12 != 256)
    {
      v101 = *(a2 + 64);
      v47 = v19 >> 3;
      v48 = (v19 >> 3) * *(a2 + 68);
      v85 = *(a2 + 68);
      v104 = v10;
      v49 = v10 + 8 * v48;
      v50 = v9 != 0;
      if (v11)
      {
        v24 = 1;
        v21 = v10;
LABEL_38:
        shape_enum_clip_alloc(a1, a2, v11, v24, v13, 1, v15, v16, v3, v4);
        v60 = v59;
        if (!v59)
        {
          return;
        }

        while (shape_enum_clip_next(v60, &v103 + 1, &v103, &v108, &v107))
        {
          v89 = v21;
          v91 = v14;
          v87 = v60;
          if (v49)
          {
            v71 = v14 + 8 * v13 * v103 + 8 * SHIDWORD(v103);
            v3 = v108;
            v72 = v21 + 8 * v47 * ((v103 + *(a2 + 60)) % v85);
            v21 = v72 + 8 * ((HIDWORD(v103) + *(a2 + 56)) % v101);
            v56 = v72 + 8 * v101;
            v104 = v56;
            LODWORD(v5) = v108;
            v10 = v21;
          }

          else
          {
            v3 = v108;
            LODWORD(v5) = v108 * v24;
            v71 = v14 + 8 * v13 * v103 + 8 * HIDWORD(v103) * v24;
            v21 += 8 * v103 * v101 + 8 * HIDWORD(v103) * v24;
            v47 = v101 - v108 * v24;
            v56 = v104;
          }

          v106 = v71;
          v105 = v21;
          v5 = v5;
          v4 = v107;
LABEL_50:
          v95 = v13;
          v62 = v13 - v5;
          v63 = v3 & ~(v3 >> 31);
          if ((v56 - v21) >> 3 >= v63)
          {
            v64 = v63;
          }

          else
          {
            v64 = (v56 - v21) >> 3;
          }

          v65 = v63 - v64;
          if (v4 >= 1)
          {
            v66 = 1;
          }

          else
          {
            v66 = v4;
          }

          v93 = v66;
          v67 = v4 + 1;
          do
          {
            v99(&v105, &v106, &v104, v101, v24, v50, v97, v65, v64);
            v106 += 8 * v62;
            if (v49)
            {
              v68 = v10 + 8 * v47;
              if (v68 >= v49)
              {
                v69 = -(v47 * v85);
              }

              else
              {
                v69 = 0;
              }

              v70 = v68 + 8 * v69;
              v104 += 8 * v69 + 8 * v47;
              v10 = v70;
            }

            else
            {
              v70 = v105 + 8 * v47;
            }

            v105 = v70;
            --v67;
          }

          while (v67 > 1);
          v107 = v93 - 1;
          v13 = v95;
          v21 = v89;
          v14 = v91;
          v60 = v87;
          if (!v87)
          {
            return;
          }

          v103 = 0;
        }

LABEL_92:
        free(v60);
        return;
      }

      v91 = v14;
      if (v10)
      {
        v87 = 0;
        v89 = v10;
        v55 = v10 + 8 * v47 * (v18 % v85);
        v21 = v55 + 8 * (v17 % v101);
        v56 = v55 + 8 * v101;
        v104 = v56;
        v105 = v21;
        v24 = 1;
        v10 = v21;
        goto LABEL_50;
      }

      v56 = 0;
      v21 = 0;
      v24 = 1;
LABEL_41:
      v49 = 0;
      v87 = 0;
      v89 = v21;
      v10 = 0;
      v47 -= v5;
      goto LABEL_50;
    }

    v20 = v19 >> 3;
    v21 = v10 + 8 * v20 * v18 + 8 * v17;
    v104 = -1;
    v105 = v21;
    v101 = v20;
    if (v20 != v13)
    {
      v24 = 1;
LABEL_36:
      v50 = v9 != 0;
      if (v11)
      {
        v85 = 0;
        v49 = 0;
        v10 = 0;
        v47 = v101;
        goto LABEL_38;
      }

      v91 = v14;
      v85 = 0;
      v5 = v24 * v3;
      v56 = -1;
      v47 = v101;
      goto LABEL_41;
    }

    v22 = (v14 - v21) >> 3;
    if (v22 >= 1)
    {
      if (v22 <= v3)
      {
        v14 = v14 + 8 * v3 - 8;
        v106 = v14;
        v21 = v21 + 8 * v3 - 8;
        v105 = v21;
        v24 = 0xFFFFFFFFLL;
        goto LABEL_35;
      }

      v23 = v13 * (v4 - 1);
      if (v14 <= v21 + 8 * v23 + 8 * v3 - 8)
      {
        v14 += 8 * v23;
        v106 = v14;
        v13 = -v13;
        v105 = v21 + 8 * v23;
        v24 = 1;
        v21 = v105;
        goto LABEL_35;
      }
    }

    v24 = 1;
LABEL_35:
    v101 = v13;
    goto LABEL_36;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return;
  }

  v100 = VEC::template_mark_pixelshape_row<(CGCompositeOperation)0,_RGBA16_t>;
  if (a3 <= 0x17)
  {
    v100 = VEC::MethodList<_RGBA16_t>::shapeMethods[a3];
  }

  v25 = *(a2 + 4);
  v26 = *(a2 + 8);
  v27 = v25;
  v107 = v26;
  v108 = v25;
  v28 = *(a2 + 28);
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v32 = *(a2 + 88);
  v31 = *(a2 + 96);
  v105 = v32;
  v33 = *(a2 + 136);
  v34 = *(a2 + 1) << 8;
  v35 = v28 >> 3;
  v98 = v30 != 0;
  v36 = v29 + 8 * (v28 >> 3) * *(a2 + 16) + 8 * *(a2 + 12);
  v106 = v36;
  v37 = *(a2 + 104);
  v38 = *(a2 + 108);
  v39 = *(a2 + 56);
  v40 = *(a2 + 60);
  v41 = *(a2 + 76);
  if (v34 != 256)
  {
    v102 = *(a2 + 64);
    v51 = v41 >> 3;
    v52 = (v41 >> 3) * *(a2 + 68);
    v86 = *(a2 + 68);
    v104 = v32;
    v53 = v32 + 8 * v52;
    v54 = v31 != 0;
    if (v33)
    {
      v46 = 1;
      v43 = v32;
      goto LABEL_46;
    }

    v92 = v36;
    if (v32)
    {
      v88 = 0;
      v90 = v32;
      v57 = v32 + 8 * v51 * (v40 % v86);
      v43 = v57 + 8 * (v39 % v102);
      v58 = v57 + 8 * v102;
      v104 = v58;
      v105 = v43;
      v46 = 1;
      v32 = v43;
      goto LABEL_71;
    }

    v58 = 0;
    v43 = 0;
    v46 = 1;
LABEL_49:
    v53 = 0;
    v88 = 0;
    v90 = v43;
    v32 = 0;
    v51 -= v27;
    goto LABEL_71;
  }

  v42 = v41 >> 3;
  v43 = v32 + 8 * v42 * v40 + 8 * v39;
  v104 = -1;
  v105 = v43;
  v102 = v42;
  if (v42 != v35)
  {
    v46 = 1;
    goto LABEL_44;
  }

  v44 = (v36 - v43) >> 3;
  if (v44 >= 1)
  {
    if (v44 <= v25)
    {
      v36 = v36 + 8 * v25 - 8;
      v106 = v36;
      v43 = v43 + 8 * v25 - 8;
      v105 = v43;
      v46 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

    v45 = v35 * (v26 - 1);
    if (v36 <= v43 + 8 * v45 + 8 * v25 - 8)
    {
      v36 += 8 * v45;
      v106 = v36;
      v35 = -v35;
      v105 = v43 + 8 * v45;
      v46 = 1;
      v43 = v105;
      goto LABEL_43;
    }
  }

  v46 = 1;
LABEL_43:
  v102 = v35;
LABEL_44:
  v54 = v31 != 0;
  if (!v33)
  {
    v92 = v36;
    v86 = 0;
    v27 = v46 * v25;
    v58 = -1;
    v51 = v102;
    goto LABEL_49;
  }

  v86 = 0;
  v53 = 0;
  v32 = 0;
  v51 = v102;
LABEL_46:
  shape_enum_clip_alloc(a1, a2, v33, v46, v35, 1, v37, v38, v25, v26);
  v60 = v61;
  if (v61)
  {
    while (shape_enum_clip_next(v60, &v103 + 1, &v103, &v108, &v107))
    {
      v90 = v43;
      v92 = v36;
      v88 = v60;
      if (v53)
      {
        v82 = v36 + 8 * v35 * v103 + 8 * SHIDWORD(v103);
        v25 = v108;
        v83 = v43 + 8 * v51 * ((v103 + *(a2 + 60)) % v86);
        v43 = v83 + 8 * ((HIDWORD(v103) + *(a2 + 56)) % v102);
        v58 = v83 + 8 * v102;
        v104 = v58;
        LODWORD(v27) = v108;
        v32 = v43;
      }

      else
      {
        v25 = v108;
        LODWORD(v27) = v108 * v46;
        v82 = v36 + 8 * v35 * v103 + 8 * HIDWORD(v103) * v46;
        v43 += 8 * v103 * v102 + 8 * HIDWORD(v103) * v46;
        v51 = v102 - v108 * v46;
        v58 = v104;
      }

      v106 = v82;
      v105 = v43;
      v27 = v27;
      v26 = v107;
LABEL_71:
      v96 = v35;
      v73 = v35 - v27;
      v74 = v25 & ~(v25 >> 31);
      if ((v58 - v43) >> 3 >= v74)
      {
        v75 = v74;
      }

      else
      {
        v75 = (v58 - v43) >> 3;
      }

      v76 = v74 - v75;
      if (v26 >= 1)
      {
        v77 = 1;
      }

      else
      {
        v77 = v26;
      }

      v94 = v77;
      v78 = v26 + 1;
      do
      {
        v100(&v105, &v106, &v104, v102, v46, v54, v98, v76, v75);
        v106 += 8 * v73;
        if (v53)
        {
          v79 = v32 + 8 * v51;
          if (v79 >= v53)
          {
            v80 = -(v51 * v86);
          }

          else
          {
            v80 = 0;
          }

          v81 = v79 + 8 * v80;
          v104 += 8 * v80 + 8 * v51;
          v32 = v81;
        }

        else
        {
          v81 = v105 + 8 * v51;
        }

        v105 = v81;
        --v78;
      }

      while (v78 > 1);
      v107 = v94 - 1;
      v35 = v96;
      v43 = v90;
      v36 = v92;
      v60 = v88;
      if (!v88)
      {
        return;
      }

      v103 = 0;
    }

    goto LABEL_92;
  }
}

char **VEC::template_mark_pixelshape_row<(CGCompositeOperation)1,_rgba16_t>(char **result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = *v10;
      v9 -= 2;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 1);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = *v10;
    v15 = &v10[8 * a5];
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = &v15[8 * v16];
    v12 = (v12 + 8 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

uint64_t CGPDFSourceGetc(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    goto LABEL_4;
  }

  if (CGPDFSourceRefill(a1))
  {
    v2 = *(a1 + 120);
LABEL_4:
    v3 = *(a1 + 128);
    *(a1 + 120) = v2 - 1;
    *(a1 + 128) = v3 + 1;
    return *v3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t pdf_content_stream_create(CFIndex a1)
{
  if (CGPDFContentStreamGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFContentStreamGetTypeID_onceToken, &__block_literal_global_18789);
  }

  cftype = pdf_create_cftype(CGPDFContentStreamGetTypeID_id, 72);
  if (cftype)
  {
    *(cftype + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], a1, 0);
  }

  return cftype;
}

uint64_t __CGPDFContentStreamGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFContentStreamGetTypeID_class);
  CGPDFContentStreamGetTypeID_id = result;
  return result;
}

CGColorSpace *set_default_color_spaces(void *a1)
{
  a1[6] = get_default_space(a1, "DefaultGray", 1);
  a1[7] = get_default_space(a1, "DefaultRGB", 3);
  result = get_default_space(a1, "DefaultCMYK", 4);
  a1[8] = result;
  return result;
}

CGPDFDocumentRef CGPDFDocumentCreateWithProvider(CGDataProviderRef provider)
{
  v12 = *MEMORY[0x1E69E9840];
  if (sInLockdownModeForPDF)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForPDFEntitlement == 1)
  {
LABEL_5:
    pdf_error("Attempt to create CGPDFDocument in Lockdown Mode for PDF");
    return 0;
  }

  if (CGPDFDocumentCreateWithProvider::onceToken == -1)
  {
    if (provider)
    {
LABEL_9:
      v3 = *(provider + 34);
      if (v3 && CGPropertiesGetProperty(v3, @"from_url"))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    dispatch_once(&CGPDFDocumentCreateWithProvider::onceToken, &__block_literal_global_1334);
    if (provider)
    {
      goto LABEL_9;
    }
  }

  v4 = objc_autoreleasePoolPush();
  send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentCreateWithProvider", 0);
  objc_autoreleasePoolPop(v4);
LABEL_12:
  if (CGPDFDocumentGetTypeID::onceToken != -1)
  {
    dispatch_once(&CGPDFDocumentGetTypeID::onceToken, &__block_literal_global_25);
  }

  cftype = pdf_create_cftype(CGPDFDocumentGetTypeID::id, 240);
  if (!provider || (v6 = *(provider + 4), v6 == -1))
  {
    v7 = CGAccessSessionCreate(provider);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v6 = v9;
        Bytes = CGAccessSessionGetBytes(v8, &v11, 0x800uLL);
        v9 = Bytes + v6;
      }

      while (Bytes);
      if (CGAccessSessionSkipForward(v8, 1) >= 1)
      {
        CGLog(2, "Sequential data provider %p skips forward beyond available data", provider);
      }

      CGAccessSessionRelease(v8);
    }

    else
    {
      v6 = 0;
    }
  }

  if (CGPDFSourceCreate(provider, 0, v6))
  {
    operator new();
  }

  cftype[2] = 0;
  CFRelease(cftype);
  return 0;
}

void __CGPDFDocumentCreateWithProvider_block_invoke()
{
  _ZZZ31CGPDFDocumentCreateWithProviderEUb_E21memory_pressure_queue = dispatch_queue_create("com.apple.CoreGraphics.CGPDFDocumentMemoryPressureResponse", 0);
  _ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, _ZZZ31CGPDFDocumentCreateWithProviderEUb_E21memory_pressure_queue);
  dispatch_source_set_event_handler(_ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source, &__block_literal_global_15);
  v0 = _ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source;

  dispatch_resume(v0);
}

void *send_analytics_event(uint64_t a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  if (MEMORY[0x1EEE86510])
  {
    if ((send_analytics_event_sSendAnalytics & 1) == 0)
    {
      return AnalyticsSendEventLazy();
    }
  }

  return result;
}

uint64_t __send_analytics_event_block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  _block_invoke_appIdentifier = v0;
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    if (([v1 hasPrefix:@"com.apple"] & 1) == 0)
    {
      v3 = time(0);
      srandom(v3);
      if (vcvts_n_f32_s32(rand(), 0x1FuLL) > 0.005)
      {
        send_analytics_event_sSendAnalytics = 1;
      }
    }
  }

  else
  {
    _block_invoke_appIdentifier = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v4 = _block_invoke_appIdentifier;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    result = _dyld_image_count();
    if (v5 >= result || v6 >= 3)
    {
      return result;
    }

    image_header = _dyld_get_image_header(v5);
    image_name = _dyld_get_image_name(v5);
    v10 = string_ends_with(image_name, "PDFKit");
    v11 = &_block_invoke_pdfKit_uuid;
    if (v10 & 1) != 0 || (v12 = string_ends_with(image_name, "AppKit"), v11 = &_block_invoke_appKit_uuid, (v12) || (v13 = string_ends_with(image_name, "CoreUI"), v11 = &_block_invoke_coreUI_uuid, v13))
    {
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        if (image_header->magic == -805638658 || image_header->magic == -17958193)
        {
          v16 = 32;
        }

        else
        {
          v16 = 28;
        }

        v17 = image_header + v16;
        while (*v17 != 27)
        {
          v17 += *(v17 + 1);
          if (!--ncmds)
          {
            goto LABEL_24;
          }
        }

        *v11 = *(v17 + 8);
      }

LABEL_24:
      ++v6;
    }

    ++v5;
  }
}

uint64_t pdf_register_cftype(uint64_t a1)
{
  v2 = _CFRuntimeRegisterClass();
  if (!v2)
  {
    pdf_error("Failed to register CFRuntimeClass %s.", *(a1 + 8));
  }

  return v2;
}

uint64_t pdf_create_cftype(uint64_t a1, uint64_t a2)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    pdf_error("Unable to create CFRuntime object because _CFRuntimeCreateInstance(...) failed, likely due to an unknown object type ID.");
  }

  return Instance;
}

uint64_t __CGPDFSourceGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFSourceGetTypeID_class);
  CGPDFSourceGetTypeID_id = result;
  return result;
}

uint64_t CGPDFSourceForwardSearch(void *a1, char *__s, char *a3, uint64_t *a4)
{
  if (!__s)
  {
    return 0;
  }

  v7 = strlen(__s);
  v8 = v7;
  if (a1)
  {
    v9 = a1[11];
    if (a1[18])
    {
      v10 = a1[24];
      v9 += a1[15];
    }

    else
    {
      v10 = a1[16];
    }

    v13 = v10 - v9;
    v11 = a1[2];
    if (v11 == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow");
    }

    v12 = v13 + a1[14];
  }

  else
  {
    v11 = 0;
    v12 = -1;
  }

  if (v11 < (v12 + v7))
  {
    return 0;
  }

  v26 = a4;
  v15 = 64;
  do
  {
    v16 = v15;
    v15 *= 2;
  }

  while (v16 < v8);
  LOBYTE(__c) = 0;
  v17 = malloc_type_malloc(v15, 0x7F841B4FuLL);
  v18 = v17;
  if (v12 >= v11)
  {
LABEL_41:
    v14 = 0;
    goto LABEL_42;
  }

  v27 = v17;
  while (1)
  {
    if (v16 + v12 > v11)
    {
      v16 = v11 - v12;
    }

    CGPDFSourceSetPosition(a1, v12);
    if (CGPDFSourceRead(a1, v18, v16) != v16)
    {
      pdf_error("failed to read %zu bytes at offset %lld.", v16, v12);
      goto LABEL_41;
    }

    v19 = &v18[v16];
    v20 = v12;
    if (v16 >= 1)
    {
      break;
    }

LABEL_34:
    v12 += v16;
    v18 = v27;
    if (v12 >= v11)
    {
      goto LABEL_41;
    }
  }

  while (1)
  {
    v21 = v8 + v20;
    if (*v18 == *__s && v21 <= v11)
    {
      if (&v18[v8] > v19)
      {
        CGPDFSourceSetPosition(a1, v20);
        if (CGPDFSourceRead(a1, v18, v8) != v8)
        {
          pdf_error("failed to read %zu bytes at offset %lld.", v8, v20);
          goto LABEL_39;
        }
      }

      if (!strncmp(v18, __s, v8))
      {
        break;
      }
    }

LABEL_23:
    ++v18;
    ++v20;
    if (v18 >= v19)
    {
      goto LABEL_34;
    }
  }

  if (!a3 || v21 >= v11)
  {
LABEL_36:
    v18 = v27;
    *v26 = v20;
    v14 = 1;
    goto LABEL_42;
  }

  CGPDFSourceSetPosition(a1, v8 + v20);
  if (CGPDFSourceRead(a1, &__c, 1uLL) == 1)
  {
    v23 = __c;
    v24 = strchr(a3, __c);
    if (!v23 || v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  pdf_error("failed to read %zu bytes at offset %lld.", 1uLL, v8 + v20);
LABEL_39:
  v14 = 0;
  v18 = v27;
LABEL_42:
  free(v18);
  return v14;
}

uint64_t CGPDFSourceRead(uint64_t a1, char *__dst, size_t __n)
{
  result = 0;
  if (a1 && __n)
  {
    v7 = __n;
    while (1)
    {
      v8 = *(a1 + 120);
      if (v7 <= v8)
      {
        break;
      }

      if (__dst)
      {
        memmove(__dst, *(a1 + 128), v8);
        v8 = *(a1 + 120);
        __dst += v8;
      }

      v7 -= v8;
      v9 = *(a1 + 128) + v8;
      *(a1 + 120) = 0;
      *(a1 + 128) = v9;
      if ((CGPDFSourceRefill(a1) & 1) == 0)
      {
        return __n - v7;
      }
    }

    if (__dst)
    {
      memcpy(__dst, *(a1 + 128), v7);
      v8 = *(a1 + 120);
    }

    v10 = *(a1 + 128) + v7;
    *(a1 + 120) = v8 - v7;
    *(a1 + 128) = v10;
    return __n;
  }

  return result;
}

uint64_t CGPDFSourceRefill(uint64_t a1)
{
  if (!a1 || (*(a1 + 208) & 1) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 144);
  if (v2)
  {
    if (*(a1 + 152) == 1)
    {
      free(v2);
    }

    *(a1 + 144) = 0;
    v3 = *(a1 + 200);
    *(a1 + 120) = v3;
    if (v3)
    {
      v4 = *(a1 + 192);
      v5 = *(a1 + 88);
      if (v4 >= v5 && v4 < v5 + *(a1 + 104))
      {
        *(a1 + 128) = v4;
        return 1;
      }

      *(a1 + 120) = 0;
    }
  }

  *(a1 + 112) += *(a1 + 104);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 16);
    if (v8 + *(a1 + 96) >= v9)
    {
      v10 = v9 - v8;
    }

    else
    {
      v10 = *(a1 + 96);
    }

    BytesAtPosition = CGDataProviderGetBytesAtPosition(v7, *(a1 + 88), *(a1 + 24) + v8, v10);
    *(a1 + 32) += BytesAtPosition;
  }

  else
  {
    v12 = *(a1 + 56);
    if (!v12)
    {
      _CGHandleAssert("CGPDFSourceRefill", 473, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->filter_callbacks.read != NULL", "filter read callback is missing");
    }

    BytesAtPosition = v12(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  }

  *(a1 + 104) = BytesAtPosition;
  v13 = *(a1 + 88);
  *(a1 + 120) = BytesAtPosition;
  *(a1 + 128) = v13;
  v6 = 1;
  if (!BytesAtPosition)
  {
    *(a1 + 208) = 1;
    return 0;
  }

  return v6;
}

size_t CGDataProviderGetBytesAtPosition(uint64_t a1, char *a2, int64_t a3, size_t a4)
{
  v4 = 0;
  if (!a1 || a3 < 0)
  {
    return v4;
  }

  v9 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v9 != CGDataProviderGetTypeID_id)
  {
    return 0;
  }

  if (!*(a1 + 96) && !*(a1 + 112) && !*(a1 + 80))
  {
    if ((*(a1 + 20) & 0xFFFFFFFD) != 1 || !*(a1 + 64))
    {
      _CGHandleAssert("CGDataProviderGetBytesAtPosition", 769, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "is_sequential(provider) && is_rewindable(provider)", "provider type (%d) must be both sequential and rewindable", *(a1 + 20));
    }

    CGDataProviderLock(a1);
    v11 = *(a1 + 64);
    if (v11)
    {
      v11(*(a1 + 24));
    }

    *(a1 + 261) = 0;
    CGDataProviderSkipForwardInternal(a1, a3);
    if (a4 < 1 || (*(a1 + 261) & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      while (1)
      {
        v12 = (*(a1 + 40))(*(a1 + 24), a2, a4);
        if (!v12)
        {
          break;
        }

        if (v12 >= a4)
        {
          v13 = a4;
        }

        else
        {
          v13 = v12;
        }

        v4 += v13;
        a2 += v13;
        a4 -= v13;
        if (!a4)
        {
          goto LABEL_21;
        }
      }

      *(a1 + 261) = 1;
    }

LABEL_21:
    CGDataProviderUnlock(a1);
    return v4;
  }

  return CGDataProviderDirectGetBytesAtPositionInternal(a1, a2, a3, a4);
}

void *xref_read_linearization_dictionary(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[11];
    if (a1[18])
    {
      v3 = a1[24];
      v2 += a1[15];
    }

    else
    {
      v3 = a1[16];
    }

    v4 = v3 - v2 + a1[14];
  }

  else
  {
    v4 = -1;
  }

  value = 0.0;
  v18 = 0;
  v16 = 0;
  CGPDFSourceSetPosition(a1, 1024);
  v5 = CGPDFSourceReverseSearch(a1, "/Linearized", 0, 0, &v15);
  CGPDFSourceSetPosition(a1, v4);
  if (!v5)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x20uLL, 0x102004034AC6F07uLL);
  __CFSetLastAllocationEventName();
  if (!v6)
  {
    return 0;
  }

  *v6 = 0;
  v6[1] = a1;
  v6[2] = pdf_lexer_create(0, a1, 0);
  *(v6 + 24) = 0;
  CGPDFSourceSetPosition(v6[1], 0);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (pdf_lexer_scan(v6[2], v19) != 4 || pdf_lexer_scan(v6[2], v19) != 4 || pdf_lexer_scan(v6[2], v19) != 16)
  {
    v7 = DWORD2(v19[0]);
    goto LABEL_18;
  }

  if (!pdf_object_scanner_read_object(v6, v19))
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v7 = DWORD2(v19[0]);
  if (DWORD2(v19[0]) != 8)
  {
LABEL_18:
    if ((v7 - 5) <= 4)
    {
      pdf_object_release_compound_value(v19);
    }

    goto LABEL_20;
  }

  v8 = v20;
  if (pdf_lexer_scan(v6[2], v19) != 17 && v8)
  {
    CFRelease(v8);
    goto LABEL_20;
  }

LABEL_21:
  pdf_lexer_release(v6[2]);
  free(v6);
  if (v8)
  {
    if (!CGPDFDictionaryGetNumber(v8, "Linearized", &value))
    {
LABEL_45:
      CFRelease(v8);
      return 0;
    }

    if (value != 1.0)
    {
      pdf_log("unsupported linearization version.", value);
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetInteger(v8, "L", &v18))
    {
      pdf_log("missing or invalid linearization length.", v9);
      goto LABEL_45;
    }

    Length = CGPDFSourceGetLength(a1);
    if (Length == 0x7FFFFFFFFFFFFFFFLL && a1)
    {
      v11 = a1[5];
      if (v11)
      {
        BytesAtPosition = CGDataProviderGetBytesAtPosition(v11, v19, v18 - 1023, 0x400uLL);
        Length = 0x7FFFFFFFFFFFFFFFLL;
        if (BytesAtPosition == 1023)
        {
          Length = v18;
          if (a1[2] == 0x7FFFFFFFFFFFFFFFLL)
          {
            a1[2] = v18;
          }
        }
      }

      else
      {
        Length = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v18 != Length)
    {
      pdf_log("linearization length mismatch.");
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetArray(v8, "H", &v16))
    {
      goto LABEL_42;
    }

    if (!v16 || *(v16 + 3) - *(v16 + 2) != 16)
    {
      pdf_log("invalid hints array (size = %zu)", v13);
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetInteger(v8, "O", &v18) || !CGPDFDictionaryGetInteger(v8, "E", &v18) || !CGPDFDictionaryGetInteger(v8, "N", &v18) || !CGPDFDictionaryGetInteger(v8, "T", &v18))
    {
LABEL_42:
      pdf_log("missing a required parameter (%s) in Linearization dictionary.", v13);
      goto LABEL_45;
    }
  }

  return v8;
}

uint64_t CGPDFSourceReverseSearch(void *a1, char *__s, char *a3, char *a4, void *a5)
{
  if (!__s)
  {
    return 0;
  }

  v8 = strlen(__s);
  v9 = v8;
  if (a1)
  {
    v10 = a1[11];
    if (a1[18])
    {
      v11 = a1[24];
      v10 += a1[15];
    }

    else
    {
      v11 = a1[16];
    }

    v13 = v11 - v10;
    v34 = a1[2];
    if (v34 == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow");
    }

    v12 = v13 + a1[14];
  }

  else
  {
    v34 = 0;
    v12 = -1;
  }

  if (v12 < v8)
  {
    return 0;
  }

  v15 = 64;
  do
  {
    v16 = v15;
    v15 *= 2;
  }

  while (v16 < v9);
  __dst = 0;
  v17 = malloc_type_malloc(v15, 0x1927B63CuLL);
  v18 = v17;
  if (v12 < 1)
  {
    goto LABEL_44;
  }

  v28 = a5;
  v29 = &v17[v9 - 1];
  while (1)
  {
    if (v12 < v16)
    {
      v16 = v12;
    }

    CGPDFSourceSetPosition(a1, v12 - v16);
    if (CGPDFSourceRead(a1, v18, v16) != v16)
    {
      pdf_error("failed to read %zu bytes at offset %lld.", v16, v12 - v16);
      goto LABEL_44;
    }

    v30 = v12 - v16;
    v19 = &v18[v16 - 1];
    if (v19 >= v18)
    {
      break;
    }

LABEL_36:
    v12 -= v16;
    if (v30 < 1)
    {
      goto LABEL_44;
    }
  }

  v20 = 0;
  v33 = v9 - 1 + v12;
  while (1)
  {
    if (*(v19 + v20) != *__s)
    {
      goto LABEL_35;
    }

    v21 = v33 + v20;
    if ((v33 + v20) > v34)
    {
      goto LABEL_35;
    }

    if (&v29[v16 + v20] > &v18[v16])
    {
      CGPDFSourceSetPosition(a1, v12 + v20 - 1);
      if (CGPDFSourceRead(a1, (v19 + v20), v9) != v9)
      {
        pdf_error("failed to read %zu bytes at offset %lld.", v9, v12 + v20 - 1);
        goto LABEL_44;
      }
    }

    if (strncmp((v19 + v20), __s, v9))
    {
      goto LABEL_35;
    }

    if (a3 && v12 + v20 - 1 >= 1)
    {
      break;
    }

LABEL_30:
    if (!a4 || v21 >= v34)
    {
LABEL_38:
      *v28 = v12 + v20 - 1;
      v14 = 1;
      goto LABEL_45;
    }

    CGPDFSourceSetPosition(a1, v21);
    if (CGPDFSourceRead(a1, &__dst, 1uLL) != 1)
    {
      v27 = v33 + v20;
      goto LABEL_43;
    }

    v24 = __dst;
    v25 = strchr(a4, __dst);
    if (!v24 || v25)
    {
      goto LABEL_38;
    }

LABEL_35:
    --v20;
    if (v19 + v20 < v18)
    {
      goto LABEL_36;
    }
  }

  CGPDFSourceSetPosition(a1, v12 + v20 - 2);
  if (CGPDFSourceRead(a1, &__dst, 1uLL) == 1)
  {
    v22 = __dst;
    v23 = strchr(a3, __dst);
    if (v22 && !v23)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v27 = v12 + v20 - 2;
LABEL_43:
  pdf_error("failed to read %zu bytes at offset %lld.", 1uLL, v27);
LABEL_44:
  v14 = 0;
LABEL_45:
  free(v18);
  return v14;
}

uint64_t read_integer(uint64_t a1, unint64_t *a2)
{
  CGPDFSourceSkipWhitespace(a1);
  v4 = *(a1 + 120);
  if (!v4)
  {
    if (!CGPDFSourceRefill(a1))
    {
      v9 = 0;
      v8 = -1;
      goto LABEL_29;
    }

    v4 = *(a1 + 120);
  }

  v5 = v4 - 1;
  v6 = *(a1 + 128);
  v7 = v6 + 1;
  *(a1 + 120) = v5;
  *(a1 + 128) = v6 + 1;
  v8 = *v6;
  if (v8 - 58 < 0xFFFFFFF6)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_29;
  }

  while (v8 == 48)
  {
    if (!v5)
    {
      if (!CGPDFSourceRefill(a1))
      {
        v11 = 0;
        v8 = -1;
        goto LABEL_23;
      }

      v5 = *(a1 + 120);
      v7 = *(a1 + 128);
    }

    v10 = v7;
    --v5;
    ++v7;
    *(a1 + 120) = v5;
    *(a1 + 128) = v7;
    v8 = *v10;
  }

  if (v8 - 48 > 9)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v12 |= v11 > 0x1999999999999998;
    v11 = 10 * v11 + v8 - 48;
    if (!v5)
    {
      break;
    }

LABEL_16:
    *(a1 + 120) = --v5;
    *(a1 + 128) = v7 + 1;
    v8 = *v7++;
    if (v8 - 48 >= 0xA)
    {
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  if (CGPDFSourceRefill(a1))
  {
    v5 = *(a1 + 120);
    v7 = *(a1 + 128);
    goto LABEL_16;
  }

  v8 = -1;
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_23:
  if (a2)
  {
    *a2 = v11;
  }

  v9 = 1;
  if (v8 + 1 <= 0x3F && ((1 << (v8 + 1)) & 0xA001064200006C03) != 0 || (result = 0, v8 - 91 <= 0x22) && ((1 << (v8 - 91)) & 0x500000005) != 0)
  {
LABEL_29:
    CGPDFSourceUngetc(a1, v8);
    return v9;
  }

  return result;
}

void CGPDFSourceSkipWhitespace(uint64_t a1)
{
  v2 = *(a1 + 120);
  while (v2)
  {
LABEL_5:
    --v2;
    v3 = *(a1 + 128);
    *(a1 + 120) = v2;
    *(a1 + 128) = v3 + 1;
    v4 = *v3;
    if (v4 > 0x20 || ((1 << v4) & 0x100003601) == 0)
    {
      goto LABEL_12;
    }
  }

  if (CGPDFSourceRefill(a1))
  {
    v2 = *(a1 + 120);
    goto LABEL_5;
  }

  v4 = -1;
LABEL_12:

  CGPDFSourceUngetc(a1, v4);
}

void CGPDFSourceUngetc(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2 != -1)
    {
      v4 = *(a1 + 144);
      if (v4)
      {
        v5 = *(a1 + 136);
        if (*(a1 + 120) >= v5)
        {
          if (v4 == (a1 + 153))
          {
            v13 = malloc_type_malloc(0x80uLL, 0xDB6A5C21uLL);
            __CFSetLastAllocationEventName();
            if (!v13)
            {
              return;
            }

            v14 = 0;
            *(a1 + 136) = 128;
            *(a1 + 144) = v13;
            *(a1 + 152) = 1;
            v6 = v13 + 96;
            do
            {
              v6[v14] = *(a1 + 153 + v14);
              ++v14;
            }

            while (v14 != 32);
          }

          else
          {
            v9 = malloc_type_realloc(v4, 2 * v5, 0x4D7CA8DDuLL);
            if (!v9)
            {
              return;
            }

            v10 = v9;
            v6 = &v9[v5];
            memmove(&v9[v5], v9, v5);
            *(a1 + 136) = 2 * v5;
            *(a1 + 144) = v10;
          }
        }

        else
        {
          v6 = *(a1 + 128);
        }

        *(a1 + 128) = v6 - 1;
        *(v6 - 1) = v2;
        ++*(a1 + 120);
      }

      else
      {
        *(a1 + 208) = 0;
        v7 = *(a1 + 88);
        v8 = *(a1 + 128);
        if (v7 && v8 > v7 && *(v8 - 1) == a2)
        {
          ++*(a1 + 120);
          *(a1 + 128) = v8 - 1;
        }

        else
        {
          *(a1 + 184) = a2;
          v11 = a1 + 184;
          v12 = *(v11 - 64);
          *(v11 + 8) = v8;
          *(v11 + 16) = v12;
          *(v11 - 48) = 32;
          *(v11 - 40) = v11 - 31;
          *(v11 - 32) = 0;
          *(v11 - 64) = 1;
          *(v11 - 56) = v11;
        }
      }
    }
  }
}

BOOL CGPDFSourceMatch(uint64_t a1, _BYTE *a2)
{
  do
  {
    v4 = *a2;
    if (!*a2)
    {
      break;
    }

    v5 = *(a1 + 120);
    if (!v5)
    {
      if (!CGPDFSourceRefill(a1))
      {
        return v4 == 0;
      }

      v5 = *(a1 + 120);
    }

    ++a2;
    v6 = *(a1 + 128);
    *(a1 + 120) = v5 - 1;
    *(a1 + 128) = v6 + 1;
  }

  while (*v6 == v4);
  return v4 == 0;
}

void *pdf_object_scanner_create_with_xref(const void **a1, int a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004034AC6F07uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    v5 = *a1;
    *v4 = a1;
    v4[1] = v5;
    if (a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v4[2] = pdf_lexer_create(a1, v5, v6);
    *(v4 + 24) = a2;
  }

  return v4;
}

void *pdf_lexer_create(uint64_t a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(0x50uLL, 0x103004017559993uLL);
  __CFSetLastAllocationEventName();
  if (v6)
  {
    *v6 = 1;
    v6[1] = a1;
    if (a2)
    {
      CFRetain(a2);
    }

    v6[2] = a2;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    *(v6 + 14) = a3;
  }

  return v6;
}

void CGPDFSourcePreflightLargeRead(uint64_t a1, int64_t a2, size_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = a3;
      if (a3 > 2 * *(a1 + 96))
      {
        v6 = *(v4 + 272);
        if (v6)
        {
          if (CGPropertiesGetProperty(v6, @"kCGDataProviderHasHighLatency"))
          {
            if (v5 >= 0x1000000)
            {
              v5 = 0x1000000;
            }

            v8 = malloc_type_malloc(v5, 0x86D7F83CuLL);
            CGDataProviderGetBytesAtPosition(*(a1 + 40), v8, a2, v5);

            free(v8);
          }
        }
      }
    }
  }
}

uint64_t pdf_object_scanner_read_compound_object(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v7 = "missing or invalid generation number.";
  while (1)
  {
    while (1)
    {
      v8 = pdf_lexer_scan(a1[2], &v33);
      if (v8 <= 7)
      {
        if (v8 <= 1)
        {
          if (!v8)
          {
            goto LABEL_58;
          }

          if (v8 != 1)
          {
            goto LABEL_63;
          }

          handle_choke(&v33);
          if (v6)
          {
            do
            {
              v17 = *v6;
              if ((*(v6 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v6);
              }

              free(v6);
              v6 = v17;
            }

            while (v17);
          }

LABEL_46:
          if ((DWORD2(v33) - 5) <= 4)
          {
            pdf_object_release_compound_value(&v33);
          }

          return 0;
        }

        if ((v8 - 2) >= 5)
        {
          if (v8 != 7)
          {
            goto LABEL_63;
          }

          if (DWORD2(v33) == 5)
          {
            v19 = v35;
          }

          else
          {
            v19 = 0;
          }

          if (v6)
          {
            do
            {
              v20 = *v6;
              if ((*(v6 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v6);
              }

              free(v6);
              v6 = v20;
            }

            while (v20);
          }

          goto LABEL_46;
        }

        goto LABEL_16;
      }

      if (v8 > 11)
      {
        break;
      }

      if (v8 > 9)
      {
        if (v8 != 11)
        {
          if (v6)
          {
            v23 = 0;
            do
            {
              v24 = v6;
              v6 = *v6;
              *v24 = v23;
              v23 = v24;
            }

            while (v6);
          }

          else
          {
            v24 = 0;
          }

          v29 = CGPDFDictionaryCreateWithObjects(*a1, v24);
          if (v29)
          {
            v30 = 8;
LABEL_88:
            *(a2 + 8) = v30;
            *(a2 + 12) |= 1u;
            *(a2 + 16) = 0;
            *(a2 + 24) = 0;
            *(a2 + 32) = v29;
            return 1;
          }

          else
          {
            if (!v24)
            {
              return 0;
            }

            do
            {
              v32 = *v24;
              if ((*(v24 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v24);
              }

              free(v24);
              result = 0;
              v24 = v32;
            }

            while (v32);
          }

          return result;
        }
      }

      else if (v8 == 8)
      {
        goto LABEL_16;
      }

      if (a3 >= 512)
      {
        pdf_error("exceeded array or dictionary nesting limit.");
        return 0;
      }

      if ((pdf_object_scanner_read_compound_object(a1, &v33, a3 + 1) & 1) == 0)
      {
        if (v6)
        {
          do
          {
            v18 = *v6;
            if ((*(v6 + 8) - 5) <= 4)
            {
              pdf_object_release_compound_value(v6);
            }

            free(v6);
            v6 = v18;
          }

          while (v18);
        }

        return 0;
      }

LABEL_16:
      v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
      __CFSetLastAllocationEventName();
      *v9 = 0;
      v11 = v33;
      v10 = v34;
      v9[4] = v35;
      *v9 = v11;
      *(v9 + 1) = v10;
      *v9 = v6;
      v6 = v9;
    }

    if (v8 <= 14)
    {
      break;
    }

    if (v8 != 18)
    {
      if (v8 == 15)
      {
LABEL_58:
        if (v6)
        {
          do
          {
            v25 = *v6;
            if ((*(v6 + 8) - 5) <= 4)
            {
              pdf_object_release_compound_value(v6);
            }

            free(v6);
            v6 = v25;
          }

          while (v25);
        }

        return 0;
      }

LABEL_63:
      pdf_error("encountered unexpected object type: %d.", v8);
      if (v6)
      {
        do
        {
          v26 = *v6;
          if ((*(v6 + 8) - 5) <= 4)
          {
            pdf_object_release_compound_value(v6);
          }

          free(v6);
          v6 = v26;
        }

        while (v26);
      }

      return 0;
    }

    if (!v6)
    {
      goto LABEL_69;
    }

    v12 = *(v6 + 8);
    if (v12 != 12 && v12 != 3)
    {
      goto LABEL_72;
    }

    v13 = *(v6 + 32);
    v14 = *v6;
    free(v6);
    if (!v14)
    {
      v7 = "missing or invalid object number.";
LABEL_69:
      pdf_error(v7);
      return 0;
    }

    v15 = *(v14 + 8);
    if (v15 != 12 && v15 != 3)
    {
      v7 = "missing or invalid object number.";
      v6 = v14;
LABEL_72:
      pdf_error(v7);
      do
      {
        v28 = *v6;
        if ((*(v6 + 8) - 5) <= 4)
        {
          pdf_object_release_compound_value(v6);
        }

        free(v6);
        v6 = v28;
      }

      while (v28);
      return 0;
    }

    v16 = *(v14 + 32);
    *(v14 + 8) = 10;
    *(v14 + 12) &= ~1u;
    *(v14 + 16) = v16;
    *(v14 + 24) = v13;
    *(v14 + 26) = 0;
    *(v14 + 30) = 0;
    v6 = v14;
  }

  if (v8 == 13)
  {
    goto LABEL_16;
  }

  if (v8 != 12)
  {
    goto LABEL_63;
  }

  if (v6)
  {
    v21 = 0;
    do
    {
      v22 = v6;
      v6 = *v6;
      *v22 = v21;
      v21 = v22;
    }

    while (v6);
  }

  else
  {
    v22 = 0;
  }

  v29 = CGPDFArrayCreateWithObjects(*a1, v22);
  if (v29)
  {
    v30 = 7;
    goto LABEL_88;
  }

  if (!v22)
  {
    return 0;
  }

  do
  {
    v31 = *v22;
    if ((*(v22 + 8) - 5) <= 4)
    {
      pdf_object_release_compound_value(v22);
    }

    free(v22);
    result = 0;
    v22 = v31;
  }

  while (v31);
  return result;
}

uint64_t read_hex_string(uint64_t *a1, uint64_t a2)
{
  v3 = -1;
  while (1)
  {
    while (1)
    {
      if (a2 <= 11)
      {
        if ((a2 - 9) >= 2 && a2)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      if (a2 > 31)
      {
        break;
      }

      if ((a2 - 12) >= 2)
      {
        goto LABEL_41;
      }

LABEL_30:
      v4 = a1[2];
      v5 = *(v4 + 120);
      if (v5)
      {
        goto LABEL_33;
      }

      v13 = CGPDFSourceRefill(a1[2]);
      a2 = 0xFFFFFFFFLL;
      if (v13)
      {
LABEL_32:
        v5 = *(v4 + 120);
        goto LABEL_33;
      }
    }

    if (a2 <= 36)
    {
      if (a2 != 32)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (a2 > 47)
    {
      break;
    }

    if (a2 != 37)
    {
      goto LABEL_41;
    }

    pdf_error("illegal comment encountered in hex string.");
    skip_comment(a1);
    v4 = a1[2];
    v5 = *(v4 + 120);
    if (v5)
    {
LABEL_33:
      v14 = *(v4 + 128);
      *(v4 + 120) = v5 - 1;
      *(v4 + 128) = v14 + 1;
      a2 = *v14;
    }

    else
    {
      v6 = CGPDFSourceRefill(a1[2]);
      a2 = 0xFFFFFFFFLL;
      if (v6)
      {
        goto LABEL_32;
      }
    }
  }

  if (a2 > 64)
  {
    if ((a2 - 65) < 6)
    {
      v7 = -55;
    }

    else
    {
      if ((a2 - 97) >= 6)
      {
        goto LABEL_41;
      }

      v7 = -87;
    }

LABEL_24:
    v8 = a2 + v7;
    if (v3 < 0)
    {
      v3 = a2 + v7;
    }

    else
    {
      v9 = a1[3];
      v10 = a1[4];
      v11 = a1[5];
      if (v9 >= v10)
      {
        v12 = 2 * v10 + 128;
        a1[4] = v12;
        v11 = malloc_type_realloc(v11, v12, 0x9E65F011uLL);
        a1[5] = v11;
        if (!v11)
        {
          goto LABEL_42;
        }

        v9 = a1[3];
      }

      a1[3] = v9 + 1;
      *(v11 + v9) = v8 + 16 * v3;
      v3 = -1;
    }

    goto LABEL_30;
  }

  if ((a2 - 48) < 0xA)
  {
    v7 = -48;
    goto LABEL_24;
  }

  if (a2 != 62)
  {
LABEL_41:
    create_string_object(a1, 0);
    return 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v15 = a1[3];
    v16 = a1[4];
    v17 = a1[5];
    if (v15 >= v16)
    {
      v18 = 2 * v16 + 128;
      a1[4] = v18;
      v17 = malloc_type_realloc(v17, v18, 0x9E65F011uLL);
      a1[5] = v17;
      if (!v17)
      {
LABEL_42:
        _CGHandleAssert("lex_grow_buffer", 55, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFLexer.c", "lexer->buffer != NULL", "lexer buffer missing");
      }

      v15 = a1[3];
    }

    a1[3] = v15 + 1;
    *(v17 + v15) = 16 * v3;
  }

  create_string_object(a1, 1);
  return 8;
}

uint64_t CGPDFStringCreate(uint64_t a1, const void *a2, size_t a3, char a4, int a5)
{
  if (CGPDFStringGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStringGetTypeID_onceToken, &__block_literal_global_2295);
  }

  cftype = pdf_create_cftype(CGPDFStringGetTypeID_id, a3 + 81);
  v11 = cftype;
  if (cftype)
  {
    *(cftype + 16) = 0;
    *(cftype + 24) = a1;
    *(cftype + 32) = 0u;
    *(cftype + 48) = 0u;
    *(cftype + 72) = a3;
    if (a5)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(cftype + 64) = v12 | a4 | *(cftype + 64) & 0xFC;
    memcpy((cftype + 80), a2, a3);
    *(v11 + 80 + a3) = 0;
  }

  return v11;
}

uint64_t __CGPDFStringGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStringGetTypeID_class);
  CGPDFStringGetTypeID_id = result;
  return result;
}

void std::vector<CGPDFObject *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t CGPDFDictionaryCreateWithObjects(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = -1;
    v5 = a2;
    do
    {
      v5 = *v5;
      ++v4;
    }

    while (v5);
    if (v4)
    {
      v6 = "found non-name key while building dictionary.";
      v8 = a2;
      while (*(v8 + 2) == 5)
      {
        v8 = **v8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = "missing key or value while building dictionary.";
    }

    pdf_error(v6);
    return 0;
  }

LABEL_10:
  if (CGPDFDictionaryGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFDictionaryGetTypeID(void)::onceToken, &__block_literal_global_16194);
  }

  cftype = pdf_create_cftype(CGPDFDictionaryGetTypeID(void)::id, 152);
  v7 = cftype;
  if (cftype)
  {
    pthread_mutex_init((cftype + 88), 0);
    *(v7 + 16) = a1;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0;
    *(v7 + 80) = 1065353216;
    if (v2)
    {
LABEL_14:
      v10 = v2[4];
      v11 = strlen(v10);
      v12 = std::__string_view_hash<char>::operator()[abi:fe200100](v10, v11);
      v13 = v12;
      v14 = *(v7 + 56);
      if (!*&v14)
      {
        goto LABEL_30;
      }

      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = v12;
        if (v12 >= *&v14)
        {
          v17 = v12 % *&v14;
        }
      }

      else
      {
        v17 = (*&v14 - 1) & v12;
      }

      v18 = *(*(v7 + 48) + 8 * v17);
      if (!v18 || (v19 = *v18) == 0)
      {
LABEL_30:
        operator new();
      }

      while (1)
      {
        v20 = v19[1];
        if (v20 == v13)
        {
          if (!strcmp(*(v19[2] + 32), v10))
          {
            v21 = *v2;
            v19[3] = *v2;
            v2 = *v21;
            if (!*v21)
            {
              return v7;
            }

            goto LABEL_14;
          }
        }

        else
        {
          if (v16 > 1)
          {
            if (v20 >= *&v14)
            {
              v20 %= *&v14;
            }
          }

          else
          {
            v20 &= *&v14 - 1;
          }

          if (v20 != v17)
          {
            goto LABEL_30;
          }
        }

        v19 = *v19;
        if (!v19)
        {
          goto LABEL_30;
        }
      }
    }
  }

  return v7;
}