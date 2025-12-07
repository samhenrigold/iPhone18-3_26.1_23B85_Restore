uint64_t (**cg_font_library_link_symbol())()
{
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x1080040BF00B4C8uLL);
  *v0 = 1;
  v0[1] = 0;
  v1 = unk_1EF243090;
  *(v0 + 1) = cg_font_library_link_symbol_font_finder_callbacks;
  *(v0 + 2) = v1;
  v0[6] = qword_1EF2430A0;
  font_finder = v0;
  return xt_vtable;
}

const void *get_BOOLean_property(const char *a1, const void *(*a2)(const char *), BOOL *a3)
{
  result = a2(a1);
  if (result)
  {
    v5 = result;
    v6 = get_BOOL(result, a3);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t CGFontCreate()
{
  VTable = CGFontGetVTable();
  if (!VTable)
  {
    return 0;
  }

  v1 = VTable;
  if (_block_invoke_once_3400 != -1)
  {
    dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
  }

  Instance = CGTypeCreateInstance(CGFontGetTypeID_font_type_id, 104);
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = v1;
    *(Instance + 24) = 0;
    *(Instance + 104) = -1;
    initialize_font_database_once();
  }

  return v3;
}

uint64_t initialize_font_database_once()
{
  if (initialize_font_database_once_predicate != -1)
  {
    dispatch_once(&initialize_font_database_once_predicate, &__block_literal_global_11_3402);
  }

  v0 = pthread_mutex_lock(&initialize_font_database_once_mutex);
  if ((initialize_font_database_once_fontDBInitializer_initialized & 1) == 0)
  {
    if (fontDBInitializer)
    {
      fontDBInitializer(v0);
    }

    initialize_font_database_once_fontDBInitializer_initialized = 1;
  }

  return pthread_mutex_unlock(&initialize_font_database_once_mutex);
}

uint64_t __initialize_font_database_once_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1.__sig = 0;
  *v1.__opaque = 0;
  pthread_mutexattr_init(&v1);
  pthread_mutexattr_settype(&v1, 2);
  pthread_mutex_init(&initialize_font_database_once_mutex, &v1);
  return pthread_mutexattr_destroy(&v1);
}

void *create_private_data_with_path_and_name()
{
  result = FPFontCreateWithPathAndName();
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
    *result = 1;
    result[1] = v1;
  }

  return result;
}

CFArrayRef CGFontCopyTableTags(CFArrayRef font)
{
  if (font)
  {
    return (*(*(font + 2) + 424))(*(font + 14));
  }

  return font;
}

uint64_t __CGFontGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGFontGetTypeID_class);
  CGFontGetTypeID_font_type_id = result;
  return result;
}

void __CGColorSpaceCreateGenericGrayGamma22_block_invoke()
{
  CGColorSpaceCreateGenericGrayGamma22_space = create_singleton(color_space_state_create_generic_gray_gamma_22);
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateGenericGrayGamma22_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceCreateGenericGrayGamma22_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedGray");
  v0 = CGColorSpaceCreateGenericGrayGamma22_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

char *color_space_state_create_generic_gray_gamma_22()
{
  if (color_space_state_create_generic_gray_gamma_22_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_gamma_22_cglibrarypredicate, &__block_literal_global_92_1777);
  }

  v0 = color_space_state_create_generic_gray_gamma_22_f;
  if (color_space_state_create_generic_gray_gamma_22_cglibrarypredicate_93 != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_gamma_22_cglibrarypredicate_93, &__block_literal_global_96);
  }

  v1 = v0(color_space_state_create_generic_gray_gamma_22_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericGrayGamma2_2";
    *(icc_with_profile + 5) = 1;
    *(*(icc_with_profile + 12) + 40) = @"Generic Gray Gamma 2.2 Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_gray_gamma_22_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_gray_gamma_22_f = v1;
  return result;
}

uint64_t *__color_space_state_create_generic_gray_gamma_22_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericGrayGamma22Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_gray_gamma_22_s = v1;
  return result;
}

uint64_t __CGColorTransformGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformGetTypeID_class);
  CGColorTransformGetTypeID_type_id = result;
  return result;
}

uint64_t __CGColorTransformBaseGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformBaseGetTypeID_class);
  CGColorTransformBaseGetTypeID_type_id = result;
  return result;
}

uint64_t __CGColorTransformCacheGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorTransformCacheGetTypeID_class);
  CGColorTransformCacheGetTypeID_type_id = result;
  return result;
}

char *color_space_state_create_generic_cmyk()
{
  if (color_space_state_create_generic_cmyk_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_cmyk_cglibrarypredicate, &__block_literal_global_21);
  }

  v0 = color_space_state_create_generic_cmyk_f;
  if (color_space_state_create_generic_cmyk_cglibrarypredicate_22 != -1)
  {
    dispatch_once(&color_space_state_create_generic_cmyk_cglibrarypredicate_22, &__block_literal_global_25_1738);
  }

  v1 = v0(color_space_state_create_generic_cmyk_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericCMYK";
    *(*(icc_with_profile + 12) + 40) = @"Generic CMYK Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_cmyk_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_cmyk_f = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceCMYK(void)
{
  if (CGColorSpaceCreateDeviceCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceCMYK_predicate, &__block_literal_global_148);
  }

  v0 = CGColorSpaceCreateDeviceCMYK_space;
  if (CGColorSpaceCreateDeviceCMYK_space)
  {
    CFRetain(CGColorSpaceCreateDeviceCMYK_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_cmyk);
  CGColorSpaceCreateGenericCMYK_space = result;
  return result;
}

uint64_t *__color_space_state_create_generic_cmyk_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericCMYKProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_cmyk_s = v1;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_device_cmyk);
  CGColorSpaceCreateDeviceCMYK_space = result;
  return result;
}

double color_space_state_create_device_cmyk()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0xC9D67C26uLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 0;
    *(v0 + 6) = 2;
    *(v0 + 14) = &device_cmyk_vtable;
    *(v0 + 28) = 0x200000002;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceCMYK";
    *(v0 + 5) = &device_cmyk_get_default_color_components_default_cmyk;
    *(v0 + 6) = 4;
    result = -2.24810663e216;
    *(v0 + 4) = xmmword_18439CA50;
  }

  return result;
}

uint64_t __CGPathGetTypeID_block_invoke()
{
  if (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least())
  {
    result = 1;
  }

  else
  {
    result = dyld_program_sdk_at_least();
  }

  CGPathDisableTypeValidation = result;
  return result;
}

void CG::Path::move_to_point(int *this, float64x2_t *a2, const CGAffineTransform *a3, __n128 a4)
{
  if (a2)
  {
    a4 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], a4, 1), *a2, a4.n128_f64[0]));
  }

  v5 = *this;
  v19 = a4;
  if (*this == 9)
  {
    goto LABEL_13;
  }

  if (v5 == 8)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    *this = 8;
LABEL_7:
    v6 = *(this + 4);
    if (v6 <= 6)
    {
      v7 = *(this + 5);
      if (*(this + 4) && *(this + 5) && !(this[3] >> (3 * v7 - 3)))
      {
        *&this[4 * (v6 - 1) + 4] = a4;
      }

      else
      {
        *(this + 4) = v6 + 1;
        *&this[4 * v6 + 4] = a4;
        *(this + 5) = v7 + 1;
      }

      return;
    }
  }

  CG::Path::convert_to_huge_(this);
  a4 = v19;
LABEL_13:
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v11 = *(this + 4), *(v11->f64 + *(this + 3) - v9)))
  {
    *(this + 9) = v8;
    *(this + 10) = vbslq_s8(vcgtq_f64(*(this + 10), a4), a4, *(this + 10));
    *(this + 14) = vbslq_s8(vcgtq_f64(a4, *(this + 14)), a4, *(this + 14));
    CG::Path::reserve_space(this, 1, 1);
    v13 = *(this + 3);
    v12 = *(this + 4);
    v14 = vaddq_s64(*(this + 2), vdupq_n_s64(1uLL));
    *(v12 + 16 * *(this + 1)) = v19;
    *(this + 2) = v14;
    *(v12 + v13 - v14.i64[1]) = 0;
  }

  else
  {
    v11[v8 - 1] = a4;
    v15 = vdupq_n_s64(0x7FF0000000000000uLL);
    *(this + 10) = v15;
    v16 = vdupq_n_s64(0xFFF0000000000000);
    *(this + 14) = v16;
    for (i = *(this + 1); i; --i)
    {
      v18 = *v11++;
      v15 = vbslq_s8(vcgtq_f64(v15, v18), v18, v15);
      *(this + 10) = v15;
      v16 = vbslq_s8(vcgtq_f64(v18, v16), v18, v16);
      *(this + 14) = v16;
    }
  }
}

uint64_t anonymous namespace::transform_is_valid(_anonymous_namespace_ *this, const CGAffineTransform *a2)
{
  if (!this || (*this & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 4) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 5) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1;
  }

  CGFloatPostError();
  return 0;
}

CFTypeID CGPathGetTypeID(void)
{
  if (CGPathGetTypeID::disableTypeValidationOnce != -1)
  {
    dispatch_once(&CGPathGetTypeID::disableTypeValidationOnce, &__block_literal_global_18158);
  }

  if (_ZZZ15CGPathGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ15CGPathGetTypeIDEUb_E4once, &__block_literal_global_18_18159);
  }

  return CGPathGetTypeID::path_type_id;
}

uint64_t __CGPathGetTypeID_block_invoke_3()
{
  result = __CGTypeRegisterInternal(CGPathGetTypeID::path_class);
  CGPathGetTypeID::path_type_id = result;
  return result;
}

uint64_t CG::Path::Path(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v14 = *(a2 + 8);
        v15 = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 24) = v15;
        *(a1 + 8) = v14;
        v7 = *(a2 + 56);
        v16 = *(a2 + 72);
        v17 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v17;
        *(a1 + 72) = v16;
        goto LABEL_18;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    else if (v4 == 1)
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
    }

    else
    {
      if (v4 != 2)
      {
        return a1;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 40) = v10;
LABEL_23:
    *(a1 + 24) = v9;
    *(a1 + 8) = v8;
    return a1;
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      *(a1 + 8) = *(a2 + 8);
      v11 = *(a2 + 24);
      v12 = *(a2 + 40);
      v13 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v13;
      *(a1 + 40) = v12;
      *(a1 + 24) = v11;
      return a1;
    }

    v8 = *(a2 + 8);
    v9 = *(a2 + 24);
    goto LABEL_23;
  }

  switch(v4)
  {
    case 7:
      v18 = *(a2 + 8);
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      *(a1 + 8) = v18;
      break;
    case 8:
      v20 = *(a2 + 8);
      v21 = *(a2 + 24);
      v22 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v22;
      *(a1 + 24) = v21;
      *(a1 + 8) = v20;
      v23 = *(a2 + 72);
      v24 = *(a2 + 88);
      v25 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v25;
      *(a1 + 88) = v24;
      *(a1 + 72) = v23;
      return a1;
    case 9:
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
      *(a1 + 32) = v6;
      memcpy(v6, *(a2 + 32), 16 * *(a1 + 8));
      memcpy((*(a1 + 32) + *(a1 + 24) - *(a1 + 16)), (*(a2 + 32) + *(a1 + 24) - *(a1 + 16)), *(a1 + 16));
      *(a1 + 40) = *(a2 + 40);
      v7 = *(a2 + 56);
LABEL_18:
      *(a1 + 56) = v7;
      break;
  }

  return a1;
}

void CG::Path::~Path(void **this)
{
  if (*this == 9)
  {
    free(this[4]);
  }

  else if (*this == 7)
  {
    v1 = this[1];
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

CGMutablePathRef CGPathCreateMutable(void)
{
  TypeID = CGPathGetTypeID();

  return CGTypeCreateInstance(TypeID, 128);
}

void CGPathMoveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y)
{
  if (path)
  {
    v11 = y;
    v12 = x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v6 = CFGetTypeID(path), TypeID = CGPathGetTypeID(), y = v11, x = v12, v6 == TypeID))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError();
      }

      else
      {
        v10.n128_f64[0] = v12;
        if (is_valid)
        {
          v10.n128_f64[1] = v11;

          CG::Path::move_to_point(path + 4, m, v9, v10);
        }
      }
    }
  }
}

CGMutablePathRef CGPathCreateMutableCopyByTransformingPath(CGPathRef path, const CGAffineTransform *transform)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128);
  v7 = Instance;
  if (Instance)
  {
    CG::Path::Path(Instance + 16, path + 16);
    if (transform)
    {
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&transform->a, xmmword_18439C630), vceqq_f64(*&transform->c, xmmword_18439C780))))) & 1) != 0 || transform->tx != 0.0 || transform->ty != 0.0)
      {
        CG::Path::apply_transform((v7 + 16), transform);
      }
    }
  }

  return v7;
}

void CGPathAddCurveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y)
{
  if (path)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v14 = CFGetTypeID(path), v14 == CGPathGetTypeID()))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError();
      }

      {
        v17 = *(path + 4);
        v16 = (path + 16);
        if ((v17 - 10) > 0xFFFFFFF6)
        {
          v18.f64[0] = cp1x;
          v18.f64[1] = cp1y;
          v22.x = cp2x;
          v22.y = cp2y;
          v21.x = x;
          v21.y = y;
          CG::Path::add_curve_to_point(v16, &v22, &v21, m, v15, v18);
        }

        else
        {
          CGPostError("%s: no current point.", "CGPathAddCurveToPoint");
        }
      }
    }
  }
}

float64x2_t CG::Path::add_curve_to_point(CG::Path *this, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, const CGAffineTransform *a5, float64x2_t result)
{
  if (a4)
  {
    v7 = a4[1];
    v8 = a4[2];
    result = vaddq_f64(v8, vmlaq_n_f64(vmulq_laneq_f64(v7, result, 1), *a4, result.f64[0]));
    v9 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, a2->f64[1]), *a4, a2->f64[0]));
    v10 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, a3->f64[1]), *a4, a3->f64[0]));
  }

  else
  {
    v9 = *a2;
    v10 = *a3;
  }

  v11 = *this;
  v24 = v9;
  v25 = result;
  v23 = v10;
  if (*this == 9)
  {
    goto LABEL_11;
  }

  if (v11 == 8)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    *this = 8;
LABEL_8:
    v12 = *(this + 4);
    if (v12 <= 4)
    {
      *(this + v12 + 1) = result;
      v13 = (this + 16 * v12 + 16);
      *(this + 4) = v12 + 3;
      v13[1] = v9;
      v13[2] = v10;
      v14 = *(this + 5);
      *(this + 3) |= 3 << (3 * v14);
      *(this + 5) = v14 + 1;
      return result;
    }
  }

  CG::Path::convert_to_huge_(this);
  v10 = v23;
  v9 = v24;
  result = v25;
LABEL_11:
  v15 = vbslq_s8(vcgtq_f64(*(this + 40), result), result, *(this + 40));
  v16 = vbslq_s8(vcgtq_f64(v15, v9), v9, v15);
  *(this + 40) = vbslq_s8(vcgtq_f64(v16, v10), v10, v16);
  v17 = vbslq_s8(vcgtq_f64(result, *(this + 56)), result, *(this + 56));
  v18 = vbslq_s8(vcgtq_f64(v9, v17), v9, v17);
  *(this + 56) = vbslq_s8(vcgtq_f64(v10, v18), v10, v18);
  CG::Path::reserve_space(this, 3, 1);
  v19 = vaddq_s64(*(this + 8), xmmword_18439CD00);
  v21 = *(this + 3);
  v20 = *(this + 4);
  v22 = (v20 + 16 * *(this + 1));
  *v22 = v25;
  v22[1] = v24;
  result = v23;
  v22[2] = v23;
  *(this + 8) = v19;
  *(v20 + v21 - v19.i64[1]) = 3;
  return result;
}

void CG::Path::convert_to_huge_(CG::Path *this)
{
  CG::Path::Path(&v3, this);
  if (*this == 7)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 40) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(this + 56) = vdupq_n_s64(0xFFF0000000000000);
  *this = 9;
  CG::Path::reserve_space(this, 24, 12);
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        CG::Path::append_region(this, *&cf.a, 0);
      }

      else if (v3 == 8)
      {
        CG::Path::append_tiny(this, &cf.b, LOWORD(cf.a), HIDWORD(cf.a), WORD1(cf.a));
      }
    }

    else if (v3 == 5)
    {
      CG::Path::append_line_segment(this, &cf, &cf.c, 0);
    }

    else
    {
      CG::Path::add_arc_relative(this, &CGPointZero, 1.0, 0.0, v5[0].width, &cf, 1);
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      CG::Path::append_uneven_rounded_rect(this, &unit_rect, v5, &cf);
    }

    else
    {
      CG::Path::append_ellipse(this, &unit_rect, BYTE1(v5[0].width), LOBYTE(v5[0].width), &cf);
    }
  }

  else if (v3 == 1)
  {
    CG::Path::append_rect(this, &unit_rect, &cf);
  }

  else if (v3 == 2)
  {
    CG::Path::append_rounded_rect(this, &unit_rect, v5[0], &cf);
  }

  CG::Path::recalculate_subpath_start(this);
  CG::Path::~Path(&v3);
}

void CG::Path::reserve_space(CG::Path *this, uint64_t a2, uint64_t a3)
{
  if (*this != 9)
  {
    CG::Path::convert_to_huge_(this);
  }

  v6 = *(this + 1);
  v7 = __CFADD__(a2, v6);
  v8 = a2 + v6;
  if (v7 || (v9 = *(this + 2), v7 = __CFADD__(a3, v9), v10 = a3 + v9, v7) || v8 >> 60 || (v7 = __CFADD__(v10, 16 * v8), v11 = v10 + 16 * v8, v7) || (v12 = *(this + 3), v12 >= 0x7FFFFFFFFFFFFFFFLL))
  {
    abort();
  }

  if (v11 > v12)
  {
    if (v11 <= 2 * v12)
    {
      v11 = 2 * v12;
    }

    if (v11 <= 0x110)
    {
      v13 = 272;
    }

    else
    {
      v13 = v11;
    }

    v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
    memcpy(v14, *(this + 4), 16 * *(this + 1));
    memcpy(&v14[v13 - *(this + 2)], (*(this + 4) + *(this + 3) - *(this + 2)), *(this + 2));
    free(*(this + 4));
    *(this + 3) = v13;
    *(this + 4) = v14;
  }
}

int8x16_t CG::Path::append_tiny(CG::Path *this, const CGPoint *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a5;
  CG::Path::reserve_space(this, a3, a5);
  if (!v5)
  {
    return result;
  }

  v10 = 0;
  v11 = *(this + 1);
  do
  {
    v12 = *(this + 3);
    v13 = *(this + 4);
    v14 = *(this + 2) + 1;
    *(this + 2) = v14;
    v15 = v12 - v14;
    v16 = a4 & 7;
    *(v13 + v15) = a4 & 7;
    if (v16 <= 2)
    {
      if (v16 >= 2)
      {
        if (v16 == 2)
        {
          v17 = &a2[v10];
          v18 = *(this + 1);
          v19 = *(this + 4) + 16 * v18;
          *v19 = *v17;
          v10 += 2;
          *(this + 1) = v18 + 2;
          result = v17[1];
          *(v19 + 16) = result;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

LABEL_9:
      result = a2[v10++];
      v20 = *(this + 4);
      v21 = *(this + 1);
      *(this + 1) = v21 + 1;
      *(v20 + 16 * v21) = result;
      goto LABEL_10;
    }

    if (v16 == 3)
    {
      v22 = &a2[v10];
      v23 = *(this + 1);
      v24 = *(this + 4) + 16 * v23;
      *v24 = *v22;
      *(v24 + 16) = v22[1];
      v10 += 3;
      *(this + 1) = v23 + 3;
      result = v22[2];
      *(v24 + 32) = result;
      goto LABEL_13;
    }

    if (v16 == 4)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v16 == 4)
    {
      ++*(this + 10);
    }

LABEL_13:
    a4 >>= 3;
    --v5;
  }

  while (v5);
  v25 = *(this + 1);
  v26 = v25 > v11;
  v27 = v25 - v11;
  if (v26)
  {
    result = *(this + 40);
    v28 = *(this + 56);
    v29 = (*(this + 4) + 16 * v11);
    do
    {
      v30 = *v29++;
      result = vbslq_s8(vcgtq_f64(result, v30), v30, result);
      *(this + 40) = result;
      v28 = vbslq_s8(vcgtq_f64(v30, v28), v30, v28);
      *(this + 56) = v28;
      --v27;
    }

    while (v27);
  }

  return result;
}

void *CG::Path::recalculate_subpath_start(void *this)
{
  v2 = this[2];
  v1 = this[3];
  if (v1 >= v2)
  {
    v3 = this[1];
    v4 = this[4] + v1;
    v5 = -v2;
    while (1)
    {
      v3 -= point_counts[*(v4 + v5)];
      if (!*(v4 + v5))
      {
        break;
      }

      if (!++v5)
      {
        return this;
      }
    }

    this[9] = v3;
  }

  return this;
}

uint64_t CGImageProviderCreateWithImageProviderInRect(uint64_t a1, const void *a2, double a3, double a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v21 = CGRectIntegral(*&a3);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v9;
  v19.size.height = v8;
  v20 = CGRectIntersection(v19, v21);
  x = v20.origin.x;
  if (v20.origin.x == INFINITY || v20.origin.y == INFINITY)
  {
    return 0;
  }

  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v9;
  v22.size.height = v8;
  if (CGRectEqualToRect(v20, v22))
  {
    CFRetain(a1);
    return a1;
  }

  else
  {
    if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
    {
      dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
    }

    Instance = CGTypeCreateInstance(CGImageProviderGetTypeID_image_provider_type_id, 176);
    if (Instance)
    {
      v18 = *(a1 + 40);
      if (a2 && !CGColorSpaceEqualToColorSpace(a2, *(a1 + 40)))
      {
        CGLog(1, "%s: Given colorspace does not match source colorspace.", "CGImageProviderRef CGImageProviderCreateWithImageProviderInRect(CGImageProviderRef, CGRect, CGColorSpaceRef)");
        v18 = a2;
      }

      *(Instance + 16) = width;
      *(Instance + 24) = height;
      *(Instance + 48) = *(a1 + 48);
      *(Instance + 56) = Instance;
      *(Instance + 32) = *(a1 + 32);
      if (v18)
      {
        CFRetain(v18);
      }

      *(Instance + 40) = v18;
      *(Instance + 64) = subImageProviderCallbacks;
      *(Instance + 80) = off_1EF238AC8;
      *(Instance + 112) = 0;
      *(Instance + 128) = 256;
      CFRetain(a1);
      *(Instance + 152) = a1;
      *(Instance + 160) = x;
      *(Instance + 168) = y;
      *(Instance + 176) = width;
      *(Instance + 184) = height;
      *(Instance + 132) = *(a1 + 132);
      *(Instance + 136) = *(a1 + 136);
      *(Instance + 144) = create_debug_string(Instance);
    }
  }

  return Instance;
}

uint64_t __CGImageProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageProviderGetTypeID_class);
  CGImageProviderGetTypeID_image_provider_type_id = result;
  return result;
}

uint64_t __CGImageGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageGetTypeID_class);
  CGImageGetTypeID_image_type_id = result;
  return result;
}

uint64_t __CGContextGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGContextGetTypeID_class);
  CGContextGetTypeID_type_id = result;
  return result;
}

uint64_t get_integer_property(const char *a1, const void *(*a2)(const char *), int *a3)
{
  v4 = a2(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
      {
        if (a3)
        {
          IntValue = valuePtr;
LABEL_10:
          *a3 = IntValue;
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else if (v6 == CFStringGetTypeID())
    {
      if (a3)
      {
        IntValue = CFStringGetIntValue(v5);
        goto LABEL_10;
      }

LABEL_11:
      v8 = 1;
LABEL_13:
      CFRelease(v5);
      return v8;
    }

    v8 = 0;
    goto LABEL_13;
  }

  return 0;
}

const void *get_font_rendering_defaults()
{
  v5 = 0;
  if (get_integer_property("CGFontAntialiasingStyle", copy_local_domain_value, &v5))
  {
    if (v5 <= 4)
    {
      if (v5 <= 1)
      {
        if (!v5)
        {
          default_antialiasing_style = 0;
          goto LABEL_23;
        }

        if (v5 != 1)
        {
          goto LABEL_48;
        }

LABEL_18:
        v0 = &unk_1EA867000;
        v1 = 128;
        goto LABEL_22;
      }

      if (v5 == 2)
      {
LABEL_21:
        v0 = &unk_1EA867000;
        v1 = 256;
        goto LABEL_22;
      }

      if (v5 != 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v5 <= 383)
      {
        if (v5 != 5)
        {
          if (v5 != 128)
          {
            if (v5 != 256)
            {
              goto LABEL_48;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_20:
        v0 = &unk_1EA867000;
        v1 = 1024;
        goto LABEL_22;
      }

      if (v5 != 384)
      {
        if (v5 == 1024)
        {
          goto LABEL_20;
        }

        if (v5 != 1152)
        {
LABEL_48:
          CGPostError("unrecognized font antialiasing style: %d.", v5);
          goto LABEL_23;
        }

LABEL_15:
        v0 = &unk_1EA867000;
        v1 = 1152;
LABEL_22:
        v0[851] = v1;
        goto LABEL_23;
      }
    }

    v0 = &unk_1EA867000;
    v1 = 384;
    goto LABEL_22;
  }

LABEL_23:
  v6 = 0;
  if (get_integer_property("CGFontSmoothingStyle", copy_local_domain_value, &v6))
  {
    if (v6 <= 4)
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          allows_font_smoothing = 0;
          goto LABEL_45;
        }

        if (v6 == 1)
        {
LABEL_40:
          allows_font_smoothing = 1;
          v2 = &unk_1EA860000;
          v3 = 16;
          goto LABEL_44;
        }

        goto LABEL_49;
      }

      if (v6 == 2)
      {
LABEL_43:
        allows_font_smoothing = 1;
        v2 = &unk_1EA860000;
        v3 = 32;
        goto LABEL_44;
      }

      if (v6 != 3)
      {
LABEL_41:
        allows_font_smoothing = 1;
        v2 = &unk_1EA860000;
        v3 = 64;
        goto LABEL_44;
      }
    }

    else
    {
      if (v6 <= 47)
      {
        if (v6 != 5)
        {
          if (v6 != 16)
          {
            if (v6 != 32)
            {
              goto LABEL_49;
            }

            goto LABEL_43;
          }

          goto LABEL_40;
        }

LABEL_37:
        allows_font_smoothing = 1;
        v2 = &unk_1EA860000;
        v3 = 112;
LABEL_44:
        v2[448] = v3;
        goto LABEL_45;
      }

      if (v6 != 48)
      {
        if (v6 != 64)
        {
          if (v6 == 112)
          {
            goto LABEL_37;
          }

LABEL_49:
          CGPostError("unrecognized font smoothing style: %d.", v6);
          goto LABEL_45;
        }

        goto LABEL_41;
      }
    }

    allows_font_smoothing = 1;
    v2 = &unk_1EA860000;
    v3 = 48;
    goto LABEL_44;
  }

LABEL_45:
  get_BOOLean_property("CGFontDebugGlyphBitmaps", copy_local_domain_value, &default_glyph_bitmap_debugging);
  return get_BOOLean_property("CGFontDebugGlyphs", copy_local_domain_value, &default_glyph_debugging);
}

char *__device_state_create_root_block_invoke()
{
  result = malloc_type_malloc(0x30uLL, 0x1020040AD984FB8uLL);
  *(result + 1) = 1;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 12) = 0;
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 11) = 0;
  device_state_create_root_root = result;
  *result = 1;
  return result;
}

double __text_state_create_root_block_invoke()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1020040FD5D42BBuLL);
  v1 = *v0;
  *(v0 + 1) = 1;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *v0 = v1 & 0xFC | 2;
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  *(v0 + 12) = default_antialiasing_style;
  *(v0 + 13) = default_smoothing_style;
  *(v0 + 14) = 0;
  v2 = *v0 & 0xFF02 | 0x3D;
  *(v0 + 5) = 0x4000000000000000;
  result = 0.0;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  text_state_create_root_root = v0;
  *v0 = v2;
  return result;
}

void __stroke_state_create_root_block_invoke()
{
  v0 = malloc_type_malloc(0x30uLL, 0x10200406F43DBA9uLL);
  *v0 = 0;
  *(v0 + 1) = 1;
  *(v0 + 8) = xmmword_18439CEA0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  *(v0 + 5) = CGColorSpaceCopyDefaultColor(v1);
  CGColorSpaceRelease(v1);
  stroke_state_create_root_root = v0;
  *v0 = 1;
}

uint64_t __CGContextDelegateGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGContextDelegateGetTypeID_class);
  CGContextDelegateGetTypeID_context_delegate_id = result;
  return result;
}

void load_bitmap_context_delegate_create()
{
  v0 = &links;
  v1 = 6;
  while (strcmp("__CGBitmapContextDelegateCreate", *v0))
  {
    v0 += 2;
    if (!--v1)
    {
      goto LABEL_7;
    }
  }

  if (v0[1])
  {
    creator = v0[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load bitmap context.");
}

const char **CGBlt_depth(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(&blt_depth + v2);
    if (has_matching_encoding(v3[1], __s2))
    {
      break;
    }

    v2 += 8;
    if (v2 == 216)
    {
      v3 = &blt_image_depth;
      v4 = 12;
      while (!has_matching_encoding(v3[1], __s2))
      {
        v3 += 9;
        if (!--v4)
        {
          return 0;
        }
      }

      return v3;
    }
  }

  return v3;
}

const char *has_matching_encoding(const char *result, char *__s2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v4 = (v2 + 8);
      do
      {
        v5 = strcmp(result, __s2);
        result = (v5 == 0);
        if (!v5)
        {
          break;
        }

        v6 = *v4++;
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

void __create_default_transform_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  create_default_transform_transform = color_transform_create(v0, 0);

  CGColorSpaceRelease(v0);
}

CFDataRef CGColorSpaceICCCopyData(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 24);
  if (v3 == 6)
  {
    if (CGColorSpaceICCCopyData_cglibrarypredicate_41 != -1)
    {
      dispatch_once(&CGColorSpaceICCCopyData_cglibrarypredicate_41, &__block_literal_global_44_7581);
    }

    v5 = CGColorSpaceICCCopyData_f_40;
    v6 = *(*(*(a1 + 24) + 96) + 8);
    goto LABEL_13;
  }

  if (v3 != 10)
  {
    if (v3 != 11)
    {
      _CGHandleAssert("CGColorSpaceICCCopyData", 579, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased || s->state->type == kCGColorSpaceProfileSets || s->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not ICC. type = %d", *(v2 + 24));
    }

    FlexGTCProfile = CGColorSpaceFlexGTCProxyGetFlexGTCProfile(a1);
    if (CGColorSpaceICCCopyData_cglibrarypredicate != -1)
    {
      dispatch_once(&CGColorSpaceICCCopyData_cglibrarypredicate, &__block_literal_global_38);
    }

    v5 = CGColorSpaceICCCopyData_f;
    v6 = FlexGTCProfile;
LABEL_13:

    return v5(v6, 0);
  }

  v7 = **(v2 + 96);

  return CGDataProviderCopyData(v7);
}

CFDataRef CGDataProviderCopyData(CGDataProviderRef provider)
{
  if (!provider)
  {
    return 0;
  }

  v2 = CGDataProviderRetainBytePtr(provider);
  if (v2)
  {
    v3 = v2;
    CGDataProviderRetainBytePtr(provider);
    v18.version = 0;
    memset(&v18.retain, 0, 40);
    v18.info = provider;
    v18.deallocate = provider_allocator_deallocate;
    v18.preferredSize = 0;
    v4 = CFAllocatorCreate(0, &v18);
    Mutable = CFDataCreateWithBytesNoCopy(0, v3, *(provider + 4), v4);
    CGDataProviderReleaseBytePtr(provider);
    CFRelease(v4);
    return Mutable;
  }

  v6 = CGAccessSessionCreate(provider);
  CGDataProviderReleaseBytePtr(provider);
  if (!v6)
  {
    return 0;
  }

  if (*v6)
  {
    v7 = *(*v6 + 4);
    v8 = v7;
    if (v7 != -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = 0x10000;
LABEL_10:
  Mutable = CFDataCreateMutable(0, 0);
  if ((CGCFDataIncreaseLength(Mutable, v8) & 1) == 0)
  {
LABEL_35:
    CGAccessSessionRelease(v6);
    CFRelease(Mutable);
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v10 = 0;
  for (i = 0; ; v8 = i)
  {
    Bytes = CGAccessSessionGetBytes(v6, MutableBytePtr, v8);
    if (!Bytes)
    {
      break;
    }

    v13 = Bytes;
    if ((v8 & 0x8000000000000000) == 0 && v8 > Bytes)
    {
      v19.location = CFDataGetLength(Mutable) - (v8 - Bytes);
      v19.length = v8 - v13;
      CFDataDeleteBytes(Mutable, v19);
      v10 += v13;
LABEL_19:
      if (v8 == v13 && i <= v8)
      {
        v13 = 2 * v8;
      }

      goto LABEL_24;
    }

    if ((v7 & 0x8000000000000000) == 0 && Bytes == v7)
    {
      goto LABEL_42;
    }

    v10 += Bytes;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (v13 >= 0x4000000)
    {
      v15 = 0x4000000;
    }

    else
    {
      v15 = v13;
    }

    if (v15 <= 0x4000)
    {
      i = 0x4000;
    }

    else
    {
      i = v15;
    }

    if ((CGCFDataIncreaseLength(Mutable, i) & 1) == 0)
    {
      goto LABEL_35;
    }

    v16 = CFDataGetMutableBytePtr(Mutable);
    if (v16)
    {
      MutableBytePtr = &v16[v10];
    }

    else
    {
      CFRelease(Mutable);
      Mutable = 0;
      MutableBytePtr = 0;
    }
  }

  if (CGAccessSessionHasError(v6) || v10 < 1)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  else
  {
    v20.location = CFDataGetLength(Mutable) - v8;
    v20.length = v8;
    CFDataDeleteBytes(Mutable, v20);
  }

LABEL_42:
  CGAccessSessionRelease(v6);
  return Mutable;
}

void CGContextDrawImage(CGContextRef c, CGRect rect, CGImageRef image)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (*(c + 6) == 4)
      {
        ColorSpace = CGImageGetColorSpace(image);
        if (CGColorSpaceIsPQBased(ColorSpace))
        {
          if (*(c + 4) == 1129601108 && *(c + 6) == 4)
          {
            v10 = *(*(c + 4) + 32);
          }

          else
          {
            handle_invalid_context("CGBitmapContextGetColorSpace", c);
            v10 = 0;
          }

          if (CGColorSpaceIsPQBased(v10))
          {
            if (*(c + 4) == 1129601108 && *(c + 6) == 4)
            {
              if (*(*(c + 4) + 40) == 4353)
              {
                v22 = *(*(c + 14) + 72);
                InterpolationQuality = CGContextGetInterpolationQuality(c);
                if (*(c + 4) == 1129601108)
                {
                  *(*(c + 14) + 72) = 0x100000001;
                }

                else
                {
                  handle_invalid_context("CGContextSetInterpolationQualityRange", c);
                }

                v13 = 1;
                CGContextSetInterpolationQuality(c, kCGInterpolationNone);
                goto LABEL_22;
              }
            }

            else
            {
              handle_invalid_context("CGBitmapContextGetBitmapInfo", c);
            }
          }
        }
      }

      InterpolationQuality = kCGInterpolationDefault;
      v13 = 0;
      v22 = 0;
LABEL_22:
      CGImageGetHeadroomInfo(image, 0);
      if (*(c + 4) == 1129601108)
      {
        v14 = *(*(*(c + 12) + 120) + 48);
      }

      else
      {
        handle_invalid_context("CGContextGetEDRTargetHeadroom", c);
        v14 = 0.0;
      }

      v15 = 1.0;
      if (v14 >= 1.0 || v14 <= 0.0)
      {
        v15 = v14;
      }

      if (v14 >= 0.0)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0.0;
      }

      v18 = CGContextGetColorSpace(c);
      ContentToneMappingInfo = CGContextGetContentToneMappingInfo(c);
      OptionsForDrawingImage = CGToneMappingCreateOptionsForDrawingImage(v18, image, ContentToneMappingInfo, v20, v17);
      CGContextDrawImageWithOptions(c, image, OptionsForDrawingImage, x, y, width, height);
      if (OptionsForDrawingImage)
      {
        CFRelease(OptionsForDrawingImage);
      }

      if (v13)
      {
        if (*(c + 4) == 1129601108)
        {
          *(*(c + 14) + 72) = v22;
        }

        else
        {
          handle_invalid_context("CGContextSetInterpolationQualityRange", c);
        }

        CGContextSetInterpolationQuality(c, InterpolationQuality);
      }

      return;
    }

    v11 = c;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("CGContextDrawImage", v11);
}

uint64_t CGContextDrawImageWithOptions(uint64_t a1, CGImage *cf, const __CFDictionary *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (cf)
  {
    v8 = cf;
    CFRetain(cf);
    v14 = CFGetTypeID(v8);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v14 != CGImageGetTypeID_image_type_id)
    {
      goto LABEL_35;
    }

    v15 = *(v8 + 7);
    if (v15 == 57005)
    {
      CGLog(3, "Image %p is over released");
    }

    else
    {
      if (v15 == 48879)
      {
        if (!CGImageGetImageProvider(v8) && !CGImageGetEPSRep(v8))
        {
          DataProviderInternal = CGImageGetDataProviderInternal(v8, 0);
          if (CGDataProviderIsZombie(DataProviderInternal))
          {
            goto LABEL_35;
          }
        }

        if (a1)
        {
          if (*(a1 + 16) == 1129601108)
          {
            v17 = CFGetTypeID(v8);
            if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
            {
              dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
            }

            if (v17 == CGImageGetTypeID_image_type_id)
            {
              v18 = 0;
              if (a4 == INFINITY)
              {
                goto LABEL_36;
              }

              if (a5 == INFINITY)
              {
                goto LABEL_36;
              }

              v18 = 0;
              if (a6 == 0.0 || a7 == 0.0)
              {
                goto LABEL_36;
              }

              CopyWithProtectedDataProvider = CGImageCreateCopyWithProtectedDataProvider(v8);
              if (CopyWithProtectedDataProvider)
              {
                v20 = CopyWithProtectedDataProvider;
                CFRelease(v8);
                v8 = v20;
              }

              CopyWithResolvedOptions = CGImageCreateCopyWithResolvedOptions(v8, a3);
              v22 = CopyWithResolvedOptions;
              if (!a3 || CopyWithResolvedOptions)
              {
                if (CopyWithResolvedOptions)
                {
                  CFRelease(v8);
                }

                else
                {
                  v22 = v8;
                }

                ClipPath = CGImageGetClipPath(v22);
                if (ClipPath)
                {
                  CGContextSaveGState(a1);
                  CGContextSaveGState(a1);
                  CGContextTranslateCTM(a1, a4, a5);
                  CGContextScaleCTM(a1, a6, a7);
                  CGContextBeginPath(a1);
                  CGContextAddPath(a1, ClipPath);
                  CGContextRestoreGState(a1);
                  clip(a1, 1);
                }

                if (*(a1 + 64))
                {
                  CGContextSaveGState(a1);
                  v26 = (*(a1 + 64))(a1, v22, *(a1 + 72), a4, a5, a6, a7);
                  if (v26)
                  {
                    v27 = v26;
                    v28 = *(a1 + 40);
                    if (v28)
                    {
                      v29 = *(v28 + 80);
                      if (v29)
                      {
                        v29(a4, a5, a6, a7);
                      }
                    }

                    CFRelease(v27);
                  }

                  CGContextRestoreGState(a1);
                }

                else
                {
                  v32 = *(a1 + 40);
                  if (v32)
                  {
                    v33 = *(v32 + 80);
                    if (v33)
                    {
                      v33(a4, a5, a6, a7);
                    }
                  }
                }

                if (should_highlight_2x_scaled_images_once != -1)
                {
                  dispatch_once(&should_highlight_2x_scaled_images_once, &__block_literal_global_12592);
                }

                if (should_highlight_2x_scaled_images_highlight_2x_scaled_images == 1 && is_2x_scale(a1, v22, a4, a5, a6, a7))
                {
                  CGContextSaveGState(a1);
                  CGContextSetBlendMode(a1, kCGBlendModeNormal);
                  CGContextSetRGBFillColor(a1, 1.0, 0.0, 0.0, 0.2);
                  v34.origin.x = a4;
                  v34.origin.y = a5;
                  v34.size.width = a6;
                  v34.size.height = a7;
                  CGContextFillRect(a1, v34);
                  CGContextRestoreGState(a1);
                }

                if (should_track_image_drawing_once != -1)
                {
                  dispatch_once(&should_track_image_drawing_once, &__block_literal_global_23_12593);
                }

                if (should_track_image_drawing_should_track == 1)
                {
                  CGContextSaveGState(a1);
                  CGContextSetBlendMode(a1, kCGBlendModeNormal);
                  v30 = a7 * 0.5;
                  DelegateName = CGContextGetDelegateName(a1);
                  if (DelegateName && !strcmp(DelegateName, "RIPContextDelegate"))
                  {
                    CGContextSetRGBFillColor(a1, 0.0, 1.0, 0.0, 0.2);
                  }

                  else
                  {
                    CGContextSetRGBFillColor(a1, 0.0, 0.0, 1.0, 0.2);
                    a5 = v30;
                  }

                  v35.origin.x = a4;
                  v35.origin.y = a5;
                  v35.size.width = a6;
                  v35.size.height = v30;
                  CGContextFillRect(a1, v35);
                  CGContextRestoreGState(a1);
                }

                if (ClipPath)
                {
                  CGContextRestoreGState(a1);
                }

                v18 = 1;
                v8 = v22;
                goto LABEL_36;
              }
            }

LABEL_35:
            v18 = 0;
LABEL_36:
            CFRelease(v8);
            return v18;
          }

          v23 = a1;
        }

        else
        {
          v23 = 0;
        }

        handle_invalid_context("CGContextDrawImageWithOptions", v23);
        goto LABEL_35;
      }

      CGLog(3, "Object %p is not a CGImageRef");
    }

    if (CGOSAppleInternalBuild_predicate != -1)
    {
      dispatch_once(&CGOSAppleInternalBuild_predicate, &__block_literal_global_18682);
    }

    if (CGOSAppleInternalBuild_is_internal == 1)
    {
      _CGHandleAssert("CGImageIsZombie", 4690, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "0", "-");
    }

    goto LABEL_35;
  }

  return 0;
}

CGImage *CGImageCreateCopyWithResolvedOptions(CGImage *a1, const __CFDictionary *cf)
{
  v2 = cf;
  if (!cf)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v8 = 0;
    v9 = 0;
    v2 = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v2, @"kCGImageDestinationLossyCompressionQuality");
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    v7 = v6 == CFNumberGetTypeID();
  }

  else
  {
    v7 = 0;
  }

  v13 = CFDictionaryGetValue(v2, @"kCGImageForceConversion");
  v16 = v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFBooleanGetTypeID()) && v14 == *MEMORY[0x1E695E4D0];
  v17 = CFDictionaryGetValue(v2, @"kCGImagePreferGPUForColorConversion");
  if (!v17 || (v18 = v17, v19 = CFGetTypeID(v17), v19 != CFBooleanGetTypeID()))
  {
    v37 = 0;
    CopyWithImageProvider = 0;
    goto LABEL_47;
  }

  ImageProvider = CGImageGetImageProvider(a1);
  if (v18 == *MEMORY[0x1E695E4C0])
  {
    v21 = ImageProvider;
    if (ImageProvider)
    {
      v22 = *(ImageProvider + 15);
      if (v22)
      {
        if (CGPropertiesGetProperty(v22, @"kCGImagePreferGPUForColorConversion"))
        {
          if (get_disable_GPU_provider_options_predicate != -1)
          {
            dispatch_once(&get_disable_GPU_provider_options_predicate, &__block_literal_global_357);
          }

          v23 = get_disable_GPU_provider_options_options_singleton;
          v24 = CFGetTypeID(v21);
          if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
          {
            dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
          }

          if (v24 != CGImageProviderGetTypeID_image_provider_type_id)
          {
            return 0;
          }

          Instance = CGTypeCreateInstance(CGImageProviderGetTypeID_image_provider_type_id, 160);
          if (!Instance)
          {
            return 0;
          }

          v26 = Instance;
          *(Instance + 56) = Instance;
          *(Instance + 16) = *(v21 + 1);
          *(Instance + 32) = *(v21 + 4);
          v27 = *(v21 + 5);
          if (v27)
          {
            CFRetain(*(v21 + 5));
          }

          v28 = 0;
          v29 = 0;
          v30 = *(v21 + 6);
          *(v26 + 40) = v27;
          *(v26 + 48) = v30;
          v31 = v21[16];
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              v35 = 0;
              v36 = 0;
              v32 = v21[17];
              v33 = *(v21 + 10);
              v34 = copy_with_options_release_info;
              v28 = copy_with_options_copy_block_set_with_options;
              v29 = 2;
            }

            else
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              if (v31 == 3)
              {
                v32 = v21[17];
                v33 = *(v21 + 10);
                v34 = *(v21 + 11);
                v35 = *(v21 + 12);
                v36 = copy_with_options_release_info;
                v28 = copy_with_options_copy_block_set_with_options;
                v29 = 3;
              }
            }
          }

          else if (v31)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            if (v31 == 1)
            {
              v32 = 0;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v33 = copy_with_options_release_info;
              v28 = copy_with_options_copy_block_set_with_options;
              v29 = 1;
            }
          }

          else
          {
            CGPostError("We should not need CGImageProviderCreateCopyWithOptions with version 0");
            v29 = 0;
            v32 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v33 = copy_with_options_release_info;
            v28 = copy_with_options_copy_block_set;
          }

          *(v26 + 64) = v29;
          *(v26 + 68) = v32;
          *(v26 + 72) = v28;
          *(v26 + 80) = v33;
          *(v26 + 88) = v34;
          *(v26 + 96) = v35;
          *(v26 + 104) = v36;
          if (v23)
          {
            v53 = CFRetain(v23);
          }

          else
          {
            v53 = 0;
          }

          *(v26 + 112) = v53;
          v54 = *(v21 + 15);
          if (v54)
          {
            atomic_fetch_add_explicit(v54, 1u, memory_order_relaxed);
          }

          *(v26 + 120) = v54;
          *(v26 + 128) = *(v21 + 64);
          CFRetain(v21);
          *(v26 + 152) = v21;
          *(v26 + 132) = v21[33];
          *(v26 + 136) = v21[34];
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v26 + 168) = Mutable;
          context[0] = 0;
          context[1] = v21;
          context[2] = Mutable;
          if (v23)
          {
            CFDictionaryApplyFunction(v23, find_supported_options, context);
            v56 = context[0];
          }

          else
          {
            v56 = 0;
          }

          *(v26 + 160) = v56;
          *(v26 + 144) = create_debug_string(v26);
          CopyWithImageProvider = CGImageCreateCopyWithImageProvider(a1, v26);
          v37 = 1;
          CGImageSetCachingFlags(CopyWithImageProvider, 1);
          CFRelease(v26);
          a1 = CopyWithImageProvider;
LABEL_47:
          v8 = CFDictionaryGetValue(v2, @"kCGColorConversionInfoOptions");
          v9 = CFDictionaryGetValue(v2, @"kCGColorConversionInfoPayload");
          v39 = *(a1 + 24);
          if (v39 != 0 && !v16 && v37)
          {
            if (CopyWithImageProvider)
            {
              CFRelease(CopyWithImageProvider);
            }

            return 0;
          }

          if (!v7 || !v16 && v39 != 0)
          {
            v2 = 0;
            goto LABEL_91;
          }

          v40 = CFDataCreateMutable(0, 0);
          if (CGImageCreateCopyWithResolvedOptions_predicate != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate, &__block_literal_global_75_5241);
          }

          CopyWithResolvedOptions_f = CGImageCreateCopyWithResolvedOptions_f(v40, @"public.jpeg", 1, 0);
          if (!CopyWithResolvedOptions_f)
          {
            v2 = 0;
            goto LABEL_88;
          }

          v42 = CopyWithResolvedOptions_f;
          v43 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v43)
          {
            v2 = 0;
LABEL_87:
            CFRelease(v42);
LABEL_88:
            if (v40)
            {
              CFRelease(v40);
              if ((v37 & 1) == 0)
              {
                goto LABEL_7;
              }

LABEL_92:
              if (v2)
              {
                if (CopyWithImageProvider)
                {
                  CFRelease(CopyWithImageProvider);
                }
              }

              else
              {
                v2 = CopyWithImageProvider;
              }

LABEL_7:
              if (!(v8 | v9))
              {
                a1 = v2;
LABEL_21:
                CGImageSetCachingFlags(a1, 1);
                return a1;
              }

              if (v2)
              {
                v10 = v2;
              }

              else
              {
                v10 = a1;
              }

              Copy = CGImageCreateCopy(v10);
              a1 = Copy;
              if (v8)
              {
                if (CGImageSetColorConversionInfoOptions(Copy, v8))
                {
LABEL_19:
                  if (v2)
                  {
                    CFRelease(v2);
                  }

                  goto LABEL_21;
                }
              }

              else if (CGImageSetColorConversionInfoPayload(Copy, v9))
              {
                goto LABEL_19;
              }

              if (a1)
              {
                CFRelease(a1);
              }

              a1 = 0;
              goto LABEL_19;
            }

LABEL_91:
            if (!v37)
            {
              goto LABEL_7;
            }

            goto LABEL_92;
          }

          v59 = v40;
          v44 = v43;
          v45 = CFDictionaryGetValue(v2, @"kCGImageDestinationLossyCompressionQuality");
          v60 = v44;
          CFDictionarySetValue(v44, @"kCGImageDestinationLossyCompressionQuality", v45);
          if (CGImageCreateCopyWithResolvedOptions_predicate_81 != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_81, &__block_literal_global_84_5243);
          }

          v46 = v44;
          CGImageCreateCopyWithResolvedOptions_f_80(v42, a1, v44);
          v40 = v59;
          if (CGImageCreateCopyWithResolvedOptions_predicate_87 != -1)
          {
            dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_87, &__block_literal_global_90_5244);
          }

          if (!CGImageCreateCopyWithResolvedOptions_f_86(v42) || (v47 = CGDataProviderCreateWithCFData(v59)) == 0)
          {
            v2 = 0;
LABEL_86:
            CFRelease(v46);
            goto LABEL_87;
          }

          provider = v47;
          v2 = CGImageCreateWithJPEGDataProvider2(v47, 0, 0, 1, 0);
          if (v2)
          {
            if (is_jpg_image(a1))
            {
              if (CGImageCreateCopyWithResolvedOptions_predicate_93 != -1)
              {
                dispatch_once(&CGImageCreateCopyWithResolvedOptions_predicate_93, &__block_literal_global_96_5245);
              }

              CopyWithResolvedOptions_f_92 = CGImageCreateCopyWithResolvedOptions_f_92(a1);
            }

            else
            {
              DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
              CopyWithResolvedOptions_f_92 = CGDataProviderCopyData(DataProviderInternal);
            }

            v50 = CopyWithResolvedOptions_f_92;
            if (!CopyWithResolvedOptions_f_92 || (Length = CFDataGetLength(CopyWithResolvedOptions_f_92), LODWORD(Length) = Length > CFDataGetLength(v59), CFRelease(v50), ((Length | v16) & 1) != 0))
            {
              copy_image_mask_and_matte(v2, a1);
              v51 = *(a1 + 25);
              if (v51)
              {
                v51 = CFRetain(v51);
              }

              v46 = v60;
              v52 = provider;
              *(v2 + 25) = v51;
              goto LABEL_85;
            }

            CFRelease(v2);
            v2 = 0;
            v46 = v60;
          }

          v52 = provider;
LABEL_85:
          CGDataProviderRelease(v52);
          goto LABEL_86;
        }
      }
    }
  }

  if (a1)
  {
    CFRetain(a1);
  }

  return a1;
}

CGImage *CGImageCreateCopyWithProtectedDataProvider(CGImage *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 19);
    if (!v2 || *(v2 + 80) != data_get_byte_pointer || *(*(v2 + 24) + 24))
    {
      return 0;
    }

    if (use_protected_copy_predicate != -1)
    {
      dispatch_once(&use_protected_copy_predicate, &__block_literal_global_353);
    }

    if (use_protected_copy_status != 1)
    {
      return 0;
    }

    v3 = *(v1 + 19);
    v4 = CGDataProviderRetainBytePtr(v3);
    if (!v4)
    {
      return 0;
    }

    v5 = v3 ? *(v3 + 32) : -1;
    protected_copy = create_protected_copy(v4, v5);
    v7 = CGDataProviderCreateWithCFData(protected_copy);
    CGDataProviderReleaseBytePtr(v3);
    if (protected_copy)
    {
      CFRelease(protected_copy);
    }

    if (v7)
    {
      Copy = CGImageCreateCopy(v1);
      v1 = Copy;
      if (Copy)
      {
        CGDataProviderRelease(*(Copy + 19));
        *(v1 + 19) = v7;
      }

      else
      {
        CGDataProviderRelease(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void CGImageSetCachingFlags(_BYTE *a1, char a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      a1[36] = a2;
    }
  }
}

void *CGImageGetClipPath(void *result)
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
      return v1[25];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *CGImageCreateSubsampledImage(uint64_t a1, double a2, double a3)
{
  Mask = CGImageGetMask(a1);
  if (!Mask)
  {
    v8 = 1;
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (*(a1 + 40) != Mask[5])
    {
      v8 = 0;
      goto LABEL_11;
    }

    v7 = *(a1 + 48);
  }

  else
  {
    v7 = Mask[5];
    if (v7)
    {
      return 0;
    }
  }

  v8 = v7 == Mask[6];
  if (a1)
  {
LABEL_11:
    v10 = 0;
    v9 = (*(a1 + 39) >> 1) & 1;
    goto LABEL_12;
  }

LABEL_9:
  LOBYTE(v9) = 0;
  v10 = 1;
LABEL_12:
  v11 = 0;
  if (v9)
  {
    return v11;
  }

  if (!v8)
  {
    return v11;
  }

  ImageProvider = CGImageGetImageProvider(a1);
  v11 = ImageProvider;
  if (!ImageProvider)
  {
    return v11;
  }

  if (*(ImageProvider + 128) != 1 || (v10 & 1) != 0)
  {
    return 0;
  }

  v13 = fabs(round(a3));
  if (*(a1 + 40) <= 2 * fabs(round(a2)) || *(a1 + 48) <= 2 * v13)
  {
    return 0;
  }

  if (block_set_options_predicate != -1)
  {
    dispatch_once(&block_set_options_predicate, &__block_literal_global_368);
  }

  v15 = CGImageProviderCopyImageBlockSetWithOptions(v11, block_set_options_options_singleton);
  if (!v15)
  {
    v15 = CGImageProviderCopyImageBlockSetWithOptions(v11, 0);
    if (!v15)
    {
      return 0;
    }
  }

  v16 = v15;
  ComponentType = CGImageGetComponentType(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  subsampled_image_provider = create_subsampled_image_provider(v16, ComponentType, ColorSpace, v11);
  if (!subsampled_image_provider)
  {
    CGImageBlockSetRelease(v16);
    return 0;
  }

  v20 = subsampled_image_provider;
  Decode = CGImageGetDecode(a1);
  ShouldInterpolate = CGImageGetShouldInterpolate(a1);
  RenderingIntent = CGImageGetRenderingIntent(a1);
  v11 = CGImageCreateWithImageProvider(v20, Decode, ShouldInterpolate, RenderingIntent);
  CFRelease(v20);
  if (!v11 || !*(a1 + 176))
  {
    return v11;
  }

  v24 = CGImageGetMask(a1);
  SubsampledImage = CGImageCreateSubsampledImage(v24, a2, a3);
  if (!SubsampledImage)
  {
    CFRelease(v11);
    return 0;
  }

  v26 = SubsampledImage;
  v27 = CGImageCreateWithMaskAndMatte(v11, SubsampledImage, 0);
  if (v27)
  {
    v28 = v27;
    CFRelease(v11);
    v11 = v28;
  }

  CFRelease(v26);
  return v11;
}

void *CGImageGetEPSRep(void *result)
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
      return v1[24];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *create_alternate_image(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (!a2)
  {
    v6 = 0;
    if (CGColorSpaceGetModel(ColorSpace) || !a1)
    {
      return v6;
    }

    v6 = 0;
    v7 = *(a1 + 56);
    if (v7 > 3)
    {
      if (v7 != 4)
      {
        if (v7 != 8)
        {
          return v6;
        }

        v16 = CGImageGetColorSpace(a1);
        v6 = 0;
        if (CGColorSpaceGetType(v16) != 8 || !v16)
        {
          return v6;
        }

        if (*(*(v16 + 3) + 48) == 1)
        {
          v15 = CGImageCreate8BitIndexed(a1);
          goto LABEL_24;
        }

        return 0;
      }

      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 4)
      {
        _CGHandleAssert("CGImageCreate4BitIndexed", 409, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 4", "bpc %lu", *(a1 + 56));
      }

      v20 = CGImageGetColorSpace(a1);
      if (!v20 || *(*(v20 + 3) + 48) != 1)
      {
        return 0;
      }

      v21 = CGImageGetColorSpace(a1);
      if (!v21 || *(*(v21 + 3) + 48) != 1)
      {
        v36 = CGImageGetColorSpace(a1);
        if (v36)
        {
          v37 = *(*(v36 + 3) + 48);
        }

        else
        {
          v37 = 0;
        }

        _CGHandleAssert("create_4_bit_1_component_indexed_image", 389, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "colorspace components %zu", v37);
      }

      v11 = CGImageGetColorSpace(a1);
      v12 = &expand_4_to_8bpc_table;
      v13 = 15;
      goto LABEL_48;
    }

    if (v7 == 1)
    {
      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 1)
      {
        _CGHandleAssert("CGImageCreate1BitIndexed", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 1", "bpc %lu", *(a1 + 56));
      }

      v17 = CGImageGetColorSpace(a1);
      if (!v17)
      {
        return 0;
      }

      v18 = *(*(v17 + 3) + 48);
      switch(v18)
      {
        case 4:
          v34 = CGImageGetColorSpace(a1);
          if (!v34 || *(*(v34 + 3) + 48) != 4)
          {
            v44 = CGImageGetColorSpace(a1);
            if (v44)
            {
              v45 = *(*(v44 + 3) + 48);
            }

            else
            {
              v45 = 0;
            }

            _CGHandleAssert("create_1_bit_4_component_indexed_image", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 4", "ColorSpace color components: %zu", v45);
          }

          v35 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v35, 0xFuLL, create_1_bit_4_component_indexed_image_index_table);
          v27 = a1;
          v28 = Indexed;
          v29 = 4;
          break;
        case 3:
          v30 = CGImageGetColorSpace(a1);
          if (!v30 || *(*(v30 + 3) + 48) != 3)
          {
            v40 = CGImageGetColorSpace(a1);
            if (v40)
            {
              v41 = *(*(v40 + 3) + 48);
            }

            else
            {
              v41 = 0;
            }

            _CGHandleAssert("create_1_bit_3_component_indexed_image", 133, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 3", "ColorSpace color components:%zu", v41);
          }

          v31 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v31, 7uLL, create_1_bit_3_component_indexed_image_index_table);
          v27 = a1;
          v28 = Indexed;
          v29 = 3;
          break;
        case 1:
          v19 = CGImageGetColorSpace(a1);
          if (!v19 || *(*(v19 + 3) + 48) != 1)
          {
            v48 = CGImageGetColorSpace(a1);
            if (v48)
            {
              v49 = *(*(v48 + 3) + 48);
            }

            else
            {
              v49 = 0;
            }

            _CGHandleAssert("create_1_bit_1_component_indexed_image", 116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "ColorSpace color components: %zu", v49);
          }

          v11 = CGImageGetColorSpace(a1);
          v12 = expand_1_to_8bpc_table;
          v13 = 1;
LABEL_48:
          Indexed = CGColorSpaceCreateIndexed(v11, v13, v12);
          CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a1, Indexed);
          goto LABEL_64;
        default:
          return 0;
      }
    }

    else
    {
      if (v7 != 2)
      {
        return v6;
      }

      if (!image_can_be_converted_to_indexed(a1))
      {
        return 0;
      }

      if (*(a1 + 56) != 2)
      {
        _CGHandleAssert("CGImageCreate2BitIndexed", 363, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGImageGetBitsPerComponent(image) == 2", "bpc %zu", *(a1 + 56));
      }

      v8 = CGImageGetColorSpace(a1);
      if (!v8)
      {
        return 0;
      }

      v9 = *(*(v8 + 3) + 48);
      switch(v9)
      {
        case 4:
          v32 = CGImageGetColorSpace(a1);
          if (!v32 || *(*(v32 + 3) + 48) != 4)
          {
            v42 = CGImageGetColorSpace(a1);
            if (v42)
            {
              v43 = *(*(v42 + 3) + 48);
            }

            else
            {
              v43 = 0;
            }

            _CGHandleAssert("create_2_bit_4_component_indexed_image", 275, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 4", "colorspace components %zu", v43);
          }

          v33 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v33, 0xFFuLL, create_2_bit_4_component_indexed_image_index_table);
          v27 = a1;
          v28 = Indexed;
          v29 = 8;
          break;
        case 3:
          v25 = CGImageGetColorSpace(a1);
          if (!v25 || *(*(v25 + 3) + 48) != 3)
          {
            v38 = CGImageGetColorSpace(a1);
            if (v38)
            {
              v39 = *(*(v38 + 3) + 48);
            }

            else
            {
              v39 = 0;
            }

            _CGHandleAssert("create_2_bit_3_component_indexed_image", 239, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 3", "colorspace components %zu", v39);
          }

          v26 = CGImageGetColorSpace(a1);
          Indexed = CGColorSpaceCreateIndexed(v26, 0x3FuLL, create_2_bit_3_component_indexed_image_index_table);
          v27 = a1;
          v28 = Indexed;
          v29 = 6;
          break;
        case 1:
          v10 = CGImageGetColorSpace(a1);
          if (!v10 || *(*(v10 + 3) + 48) != 1)
          {
            v46 = CGImageGetColorSpace(a1);
            if (v46)
            {
              v47 = *(*(v46 + 3) + 48);
            }

            else
            {
              v47 = 0;
            }

            _CGHandleAssert("create_2_bit_1_component_indexed_image", 222, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageCreateIndexed.c", "CGColorSpaceGetNumberOfComponents(CGImageGetColorSpace(image)) == 1", "colorspace components %zu", v47);
          }

          v11 = CGImageGetColorSpace(a1);
          v12 = &expand_2_to_8bpc_table;
          v13 = 3;
          goto LABEL_48;
        default:
          return 0;
      }
    }

    CopyWithColorSpace = copy_image_with_color_space_and_one_component(v27, v28, v29);
LABEL_64:
    v6 = CopyWithColorSpace;
    CGColorSpaceRelease(Indexed);
    if (!v6)
    {
      return v6;
    }

    goto LABEL_25;
  }

  v5 = CGColorSpaceGetType(ColorSpace) - 7;
  if (a1)
  {
    if ((*(a1 + 39) & 8) != 0 || v5 < 3)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v5 > 2)
  {
    return 0;
  }

LABEL_21:
  RenderingIntent = CGImageGetRenderingIntent(a1);
  if (get_flattening_options_predicate != -1)
  {
    dispatch_once(&get_flattening_options_predicate, &__block_literal_global_14243);
  }

  v15 = CGColorTransformConvertImage(a1, RenderingIntent, get_flattening_options_options);
LABEL_24:
  v6 = v15;
  if (v15)
  {
LABEL_25:
    CGImageSetCachingFlags(v6, 1);
  }

  return v6;
}

uint64_t ripc_GetImageSize(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = *(result + 40);
    v4 = *(result + 48);
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      Mask = CGImageGetMask(result);
      if (Mask)
      {
        if (Mask[5] > v3)
        {
          v3 = Mask[5];
        }

        if (Mask[6] > v4)
        {
          v4 = Mask[6];
        }
      }

      *a2 = v3;
      *a3 = v4;
      return 1;
    }
  }

  return result;
}

void RIPImageDataRelease(uint64_t a1)
{
  if (a1)
  {
    CGSImageDataUnlock(*(a1 + 120));
    if (!pthread_mutex_destroy((a1 + 128)))
    {
      pthread_cond_destroy((a1 + 192));
    }

    free(a1);
  }
}

uint64_t ripc_DrawImage(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v8 = a4;
  if (a1)
  {
    v11 = *(a1 + 288);
  }

  else
  {
    v11 = 0;
  }

  v68 = 0;
  memset(v67, 0, sizeof(v67));
  EPSRep = CGImageGetEPSRep(a4);
  if (EPSRep)
  {
    v8 = EPSRep[3];
  }

  memset(v76, 0, 48);
  v13 = *(a3 + 56);
  v14 = *(a3 + 40);
  v64 = *(a3 + 24);
  v65 = v14;
  v66 = v13;
  v15 = v11[5];
  if (v15 == 1.0)
  {
    v17 = v64;
    v16 = v65;
  }

  else
  {
    v16 = vmulq_n_f64(v65, v15);
    v17 = vmulq_n_f64(v64, v15);
    v64 = v17;
    v65 = v16;
    v66 = vmulq_n_f64(v66, v15);
  }

  v75[0] = 0;
  v75[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  v56 = vmulq_n_f64(v16, a8);
  v57 = v16;
  v58 = v17;
  v18 = vmlaq_n_f64(v56, v17, a7);
  SubsampledImage = CGImageCreateSubsampledImage(v8, v18.f64[0], v18.f64[1]);
  v20 = SubsampledImage;
  if (SubsampledImage)
  {
    v21 = SubsampledImage;
  }

  else
  {
    v21 = v8;
  }

  v24 = *v11 && (v22 = *(*v11 + 248)) != 0 && (v23 = v22()) != 0 && *(v23 + 40) == 7;
  v71 = 0;
  v72 = 0;
  alternate_image = create_alternate_image(v21, v24);
  v26 = alternate_image;
  if (alternate_image)
  {
    v27 = alternate_image;
  }

  else
  {
    v27 = v21;
  }

  if ((ripc_GetImageSize(v27, &v72, &v71) & 1) == 0)
  {
    goto LABEL_53;
  }

  v29 = v71;
  v28 = v72;
  v69 = v71;
  v70 = v72;
  if ((ripc_GetRenderingState(v11, a2, a3, v76) & 1) == 0)
  {
    goto LABEL_53;
  }

  v74[0] = 0;
  v74[1] = 0;
  if (a7 < 0.0 || a8 < 0.0)
  {
    v77.origin.y = a6;
    v77.origin.x = a5;
    v77.size.height = a8;
    v77.size.width = a7;
    *&v31 = CGRectStandardize(v77);
    v30 = vdupq_lane_s64(v35, 0);
    v33 = v57;
    v34 = vmulq_n_f64(v57, v36);
  }

  else
  {
    v30 = vdupq_lane_s64(*&a7, 0);
    v32 = a6;
    v31 = a5;
    v34 = v56;
    v33 = v57;
  }

  v64 = vmlaq_f64(vmulq_f64(v33, 0), v58, v30);
  v65 = vmlaq_f64(v34, 0, v58);
  v66 = vaddq_f64(v66, vmlaq_n_f64(vmulq_n_f64(v33, v32), v58, v31));
  ImageTransformation = ripc_GetImageTransformation(v27, &v76[1] + 2, v28, v29, 0, v64.f64, v75, v74, v73);
  if (!ImageTransformation)
  {
    goto LABEL_53;
  }

  v38 = ImageTransformation;
  RenderingIntent = CGImageGetRenderingIntent(v27);
  if (!RenderingIntent)
  {
    v40 = *(*(a3 + 120) + 4);
    v41 = v40 << 12;
    if (((v40 >> 20) & 0xF) != 0)
    {
      v42 = v40 << 8;
    }

    else
    {
      v42 = v40 << 12;
    }

    if (!(v42 >> 28))
    {
      v42 = v41;
    }

    RenderingIntent = (v42 >> 28);
  }

  if (v38 >= 4)
  {
    ShouldInterpolate = CGImageGetShouldInterpolate(v27);
    ImageInterpolation = ripc_GetImageInterpolation(a2, *(*(a3 + 120) + 4), ShouldInterpolate);
    if (ImageInterpolation >= 3)
    {
      if ((v38 & 2) != 0)
      {
        v47 = 0;
      }

      else
      {
        v47 = v75;
      }

      if (ripc_GetImageInterpolationSize(v64.f64, &v70, &v69, v47))
      {
        v45 = ImageInterpolation;
      }

      else
      {
        v45 = 1;
      }

      v43 = v69;
      v44 = v70;
    }

    else
    {
      v45 = 1;
      v43 = v29;
      v44 = v28;
    }
  }

  else
  {
    ImageInterpolation = 1;
    v43 = v29;
    v44 = v28;
    v45 = 1;
  }

  if ((v38 & 2) != 0)
  {
    v48 = 0;
  }

  else
  {
    v48 = v75;
  }

  v49 = ripc_AcquireRIPImageData(v11, v27, v44, v43, v48, 0, v45, RenderingIntent);
  if (v49)
  {
    v53 = v49;
    if (v38 >= 4)
    {
      v54 = &v64;
    }

    else
    {
      v54 = 0;
    }

    ripc_InitializeImage(v67, v74, v49, ImageInterpolation, v28, v29, v54, 0, v50, v51, v52);
    ripc_RenderImage(v11, a2, a3, v76, v73, v67);
    ripc_ReleaseRIPImageData(v53);
LABEL_53:
    if (v26)
    {
      CFRelease(v26);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    return 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 1000;
}

unint64_t ripc_GetImageTransformation(void *a1, int *a2, unint64_t a3, unint64_t a4, double *a5, double *a6, uint64_t a7, int *a8, uint64_t a9)
{
  if (a1 && (Mask = CGImageGetMask(a1)) != 0 && (Mask[5] > a1[5] || Mask[6] > a1[6]))
  {
    v18 = 7;
  }

  else
  {
    v18 = 3;
  }

  v19 = a2[3];
  v20 = a2[1];
  v21 = *a2;
  v22 = a6[4];
  v23 = a6[5];
  v25 = *a6;
  v24 = a6[1];
  v27 = a6[2];
  v26 = a6[3];
  v28 = v22 + *a6;
  v29 = v23 + v24;
  if (v28 > v22)
  {
    v30 = v22 + *a6;
  }

  else
  {
    v30 = a6[4];
  }

  if (v28 >= v22)
  {
    v31 = a6[4];
  }

  else
  {
    v30 = a6[4];
    v31 = v22 + *a6;
  }

  if (v29 > v23)
  {
    v32 = v23 + v24;
  }

  else
  {
    v32 = a6[5];
  }

  if (v29 >= v23)
  {
    v33 = a6[5];
  }

  else
  {
    v32 = a6[5];
    v33 = v23 + v24;
  }

  v34 = v28 + v27;
  v35 = v29 + v26;
  if (v28 + v27 > v30)
  {
    v36 = v28 + v27;
  }

  else
  {
    v36 = v30;
  }

  if (v34 >= v31)
  {
    v37 = v36;
  }

  else
  {
    v37 = v30;
  }

  if (v34 >= v31)
  {
    v38 = v31;
  }

  else
  {
    v38 = v34;
  }

  if (v35 > v32)
  {
    v39 = v35;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v39 = v32;
    v40 = v35;
  }

  v41 = a2[2] + v21;
  v42 = v35 - v24;
  if (v34 - v25 >= v38)
  {
    if (v34 - v25 > v37)
    {
      v37 = v34 - v25;
    }
  }

  else
  {
    v38 = v34 - v25;
  }

  if (v42 > v39)
  {
    v43 = v35 - v24;
  }

  else
  {
    v43 = v39;
  }

  if (v42 >= v40)
  {
    v44 = v43;
  }

  else
  {
    v44 = v39;
  }

  if (v42 >= v40)
  {
    v45 = v40;
  }

  else
  {
    v45 = v35 - v24;
  }

  if (v38 >= v21)
  {
    v46 = v38;
  }

  else
  {
    v46 = *a2;
  }

  if (v37 <= v41)
  {
    v47 = v37;
  }

  else
  {
    v47 = a2[2] + v21;
  }

  if (v46 >= v47)
  {
    return 0;
  }

  v48 = v19 + v20;
  v49 = v45 >= v20 ? v45 : v20;
  v50 = v37 > v41 || v45 < v20;
  v51 = v50 || v38 < v21;
  v52 = !v51 && v44 <= v48;
  result = v52 ? v18 : v18 & 0xFFFFFFFFFFFFFFFDLL;
  v54 = v44 <= v48 ? v44 : v19 + v20;
  if (v49 >= v54)
  {
    return 0;
  }

  v55 = v38 + v37 - v38;
  v56 = v38 + 0.00390625;
  if (v56 <= 1073741820.0)
  {
    v58 = vcvtmd_s64_f64(v56);
    if (v56 >= -1073741820.0)
    {
      v57 = v58;
    }

    else
    {
      v57 = -1073741823;
    }
  }

  else
  {
    v57 = 0x3FFFFFFF;
  }

  *a8 = v57;
  v59 = v55 + -0.00390625;
  if (v59 <= 1073741820.0)
  {
    v61 = vcvtpd_s64_f64(v59);
    if (v59 >= -1073741820.0)
    {
      v60 = v61;
    }

    else
    {
      v60 = -1073741823;
    }
  }

  else
  {
    v60 = 0x3FFFFFFF;
  }

  v62 = v60 - v57;
  a8[2] = v62;
  v63 = v45 + v44 - v45;
  v64 = v45 + 0.00390625;
  if (v64 <= 1073741820.0)
  {
    v65 = vcvtmd_s64_f64(v64);
    if (v64 < -1073741820.0)
    {
      v65 = -1073741823;
    }
  }

  else
  {
    v65 = 0x3FFFFFFF;
  }

  v66 = a3;
  v67 = a4;
  a8[1] = v65;
  v68 = v63 + -0.00390625;
  if (v68 <= 1073741820.0)
  {
    v69 = vcvtpd_s64_f64(v68);
    if (v68 < -1073741820.0)
    {
      v69 = -1073741823;
    }
  }

  else
  {
    v69 = 0x3FFFFFFF;
  }

  v70 = 1.0 / v66;
  v71 = v69 - v65;
  a8[3] = v71;
  v72 = 1.0 / v67;
  if (v62 != a3 || v71 != a4 || fabs(v24) > 0.00390625 || vabdd_f64(v25, v66) > 0.00390625 || fabs(v27) > 0.00390625 || vabdd_f64(v26, v67) > 0.00390625)
  {
    result |= 4uLL;
  }

  v73 = v70 * v25;
  v74 = v70 * v24;
  *a6 = v73;
  a6[1] = v74;
  v75 = v72 * v27;
  v76 = v72 * v26;
  a6[2] = v75;
  a6[3] = v76;
  if (a5)
  {
    v77 = *a5 * v66;
    v78 = a5[1] * v67;
    v79 = a5[2] * v66;
    v80 = a5[3] * v67;
    v81 = v22 + v73 * v77 + v75 * v78;
    v82 = v23 + v74 * v77 + v76 * v78;
    v83 = v81 + v73 * v79;
    v84 = v82 + v74 * v79;
    if (v83 > v81)
    {
      v85 = v81 + v73 * v79;
    }

    else
    {
      v85 = v81;
    }

    if (v83 < v81)
    {
      v85 = v81;
      v81 = v81 + v73 * v79;
    }

    if (v84 > v82)
    {
      v86 = v82 + v74 * v79;
    }

    else
    {
      v86 = v82;
    }

    if (v84 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v86 = v82;
      v87 = v82 + v74 * v79;
    }

    v88 = v83 + v75 * v80;
    v89 = v84 + v76 * v80;
    if (v88 > v85)
    {
      v90 = v83 + v75 * v80;
    }

    else
    {
      v90 = v85;
    }

    if (v88 >= v81)
    {
      v91 = v81;
    }

    else
    {
      v90 = v85;
      v91 = v83 + v75 * v80;
    }

    if (v89 > v86)
    {
      v92 = v84 + v76 * v80;
    }

    else
    {
      v92 = v86;
    }

    if (v89 >= v87)
    {
      v93 = v87;
    }

    else
    {
      v92 = v86;
      v93 = v89;
    }

    v94 = v88 - v73 * v79;
    v95 = v89 - v74 * v79;
    if (v94 >= v91)
    {
      if (v94 > v90)
      {
        v90 = v94;
      }
    }

    else
    {
      v91 = v94;
    }

    if (v95 > v92)
    {
      v97 = v95;
    }

    else
    {
      v97 = v92;
    }

    if (v95 < v93)
    {
      v93 = v95;
    }

    else
    {
      v92 = v97;
    }

    if (v46 < v91)
    {
      v46 = v91;
    }

    if (v47 > v90)
    {
      v47 = v90;
    }

    if (v46 >= v47)
    {
      return 0;
    }

    if (v49 < v93)
    {
      v49 = v93;
    }

    if (v54 > v92)
    {
      v54 = v92;
    }

    if (v49 >= v54)
    {
      return 0;
    }

    result &= ~2uLL;
  }

  else if ((result & 2) != 0)
  {
    *a7 = 0;
    *(a7 + 8) = a3;
    *(a7 + 12) = a4;
    *a9 = *a8;
    v96 = a8[3];
    *(a9 + 8) = a8[2];
    a7 = a9;
LABEL_126:
    *(a7 + 12) = v96;
    return result;
  }

  v98 = v75 * -v74 + v73 * v76;
  if (v98 != 0.0)
  {
    v99 = v47 - v46;
    v100 = v46 + 0.00390625;
    if (v46 + 0.00390625 <= 1073741820.0)
    {
      v102 = vcvtmd_s64_f64(v100);
      if (v100 >= -1073741820.0)
      {
        v101 = v102;
      }

      else
      {
        v101 = -1073741823;
      }
    }

    else
    {
      v101 = 0x3FFFFFFF;
    }

    v103 = v54 - v49;
    *a9 = v101;
    v104 = v46 + v99 + -0.00390625;
    if (v104 <= 1073741820.0)
    {
      v106 = vcvtpd_s64_f64(v104);
      if (v104 >= -1073741820.0)
      {
        v105 = v106;
      }

      else
      {
        v105 = -1073741823;
      }
    }

    else
    {
      v105 = 0x3FFFFFFF;
    }

    *(a9 + 8) = v105 - v101;
    v107 = v49 + 0.00390625;
    if (v49 + 0.00390625 <= 1073741820.0)
    {
      v109 = vcvtmd_s64_f64(v107);
      if (v107 >= -1073741820.0)
      {
        v108 = v109;
      }

      else
      {
        v108 = -1073741823;
      }
    }

    else
    {
      v108 = 0x3FFFFFFF;
    }

    *(a9 + 4) = v108;
    v110 = v49 + v103 + -0.00390625;
    v111 = 1.0 / v98;
    if (v110 <= 1073741820.0)
    {
      v113 = vcvtpd_s64_f64(v110);
      if (v110 >= -1073741820.0)
      {
        v112 = v113;
      }

      else
      {
        v112 = -1073741823;
      }
    }

    else
    {
      v112 = 0x3FFFFFFF;
    }

    *(a9 + 12) = v112 - v108;
    v114 = v73 * v111;
    v115 = v74 * v111;
    v116 = v115 * v22 - v114 * v23;
    v117 = v76 * v111;
    v118 = -(v76 * v111);
    v119 = v75 * v111 * v23 - v117 * v22;
    v120 = -(v75 * v111);
    v121 = v119 + v117 * v46 - v75 * v111 * v49;
    v122 = v116 - v115 * v46 + v114 * v49;
    v123 = v121 + v117 * v99;
    v124 = v122 - v115 * v99;
    if (v123 > v121)
    {
      v125 = v121 + v117 * v99;
    }

    else
    {
      v125 = v121;
    }

    if (v123 < v121)
    {
      v125 = v121;
      v121 = v121 + v117 * v99;
    }

    if (v124 > v122)
    {
      v126 = v122 - v115 * v99;
    }

    else
    {
      v126 = v122;
    }

    if (v124 < v122)
    {
      v126 = v122;
      v122 = v122 - v115 * v99;
    }

    v127 = v123 + v120 * v103;
    v128 = v124 + v114 * v103;
    if (v127 > v125)
    {
      v129 = v127;
    }

    else
    {
      v129 = v125;
    }

    if (v127 >= v121)
    {
      v130 = v121;
    }

    else
    {
      v129 = v125;
      v130 = v127;
    }

    if (v128 > v126)
    {
      v131 = v128;
    }

    else
    {
      v131 = v126;
    }

    if (v128 < v122)
    {
      v131 = v126;
      v122 = v128;
    }

    v132 = v127 + v118 * v99;
    v133 = v128 + v115 * v99;
    if (v132 >= v130)
    {
      if (v132 > v129)
      {
        v129 = v132;
      }
    }

    else
    {
      v130 = v132;
    }

    if (v133 >= v122)
    {
      if (v133 > v131)
      {
        v131 = v133;
      }
    }

    else
    {
      v122 = v133;
    }

    if (a5)
    {
      v134 = a5[1];
      v135 = v134 * v67;
      v136 = (v134 + a5[3]) * v67;
      v137 = fmax(*a5 * v66, 0.0);
      v138 = fmax(v135, 0.0);
      if ((*a5 + a5[2]) * v66 < v66)
      {
        v66 = (*a5 + a5[2]) * v66;
      }

      if (v136 < v67)
      {
        v67 = v136;
      }
    }

    else
    {
      v138 = 0.0;
      v137 = 0.0;
    }

    if (v130 < v137)
    {
      v130 = v137;
    }

    if (v129 <= v66)
    {
      v66 = v129;
    }

    if (v66 > v130)
    {
      if (v122 >= v138)
      {
        v139 = v122;
      }

      else
      {
        v139 = v138;
      }

      if (v131 > v67)
      {
        v131 = v67;
      }

      if (v131 > v139)
      {
        v140 = v130 + v66 - v130;
        v141 = v130 + 0.00390625;
        if (v130 + 0.00390625 <= 1073741820.0)
        {
          v143 = vcvtmd_s64_f64(v141);
          if (v141 >= -1073741820.0)
          {
            v142 = v143;
          }

          else
          {
            v142 = -1073741823;
          }
        }

        else
        {
          v142 = 0x3FFFFFFF;
        }

        v144 = v131 - v139;
        *a7 = v142;
        v145 = v140 + -0.00390625;
        if (v145 <= 1073741820.0)
        {
          v147 = vcvtpd_s64_f64(v145);
          if (v145 >= -1073741820.0)
          {
            v146 = v147;
          }

          else
          {
            v146 = -1073741823;
          }
        }

        else
        {
          v146 = 0x3FFFFFFF;
        }

        *(a7 + 8) = v146 - v142;
        v148 = v139 + v144;
        v149 = v139 + 0.00390625;
        if (v149 <= 1073741820.0)
        {
          v151 = vcvtmd_s64_f64(v149);
          if (v149 >= -1073741820.0)
          {
            v150 = v151;
          }

          else
          {
            v150 = -1073741823;
          }
        }

        else
        {
          v150 = 0x3FFFFFFF;
        }

        *(a7 + 4) = v150;
        v152 = v148 + -0.00390625;
        if (v152 <= 1073741820.0)
        {
          if (v152 >= -1073741820.0)
          {
            v153 = vcvtpd_s64_f64(v152);
          }

          else
          {
            v153 = -1073741823;
          }
        }

        else
        {
          v153 = 0x3FFFFFFF;
        }

        v96 = v153 - v150;
        goto LABEL_126;
      }
    }
  }

  return 0;
}

CGColorRenderingIntent CGImageGetRenderingIntent(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 9) >> 8;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

_OWORD *ripc_AcquireRIPImageData(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v12 = a2;
  v13 = a1;
  v98 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = *(a2 + 36) == 1;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  v15 = *(*(a1 + 48) + 32);
  if (v15)
  {
    v16 = *v15 == 34082816;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (RIPShouldCacheImages_predicate != -1)
  {
    v75 = a8;
    v76 = a7;
    dispatch_once(&RIPShouldCacheImages_predicate, &__block_literal_global_13807);
    LODWORD(a7) = v76;
    LODWORD(a8) = v75;
  }

  v17 = (v13 == 0) | ~RIPShouldCacheImages_should_cache | (v14 || v16);
  v18 = a4 * a3;
  v19 = (v17 & 1) == 0 && a4 * a3 != -1;
  v20 = a6;
  if (v13)
  {
    v20 = a6;
    if (!a6)
    {
      v20 = *(*(v13 + 48) + 32);
    }
  }

  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = *v20;
  if (*v20 == 134886228)
  {
    v22 = 5;
    goto LABEL_25;
  }

  v23 = HIWORD(v21) & 0x3F;
  if (v23 != 32)
  {
    if (v23 == 16)
    {
      if (v21)
      {
        v22 = 5;
      }

      else
      {
        v22 = 2;
      }

      goto LABEL_25;
    }

LABEL_24:
    v22 = 1;
    goto LABEL_25;
  }

  if ((v21 & 1) == 0)
  {
    _CGHandleAssert("component_type_from_depth", 115, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImage.c", "", "Unimplemented");
  }

  v22 = 4;
LABEL_25:
  if (v19)
  {
    if (a5 && *(a5 + 8) >= a3 && *(a5 + 12) >= a4)
    {
      a5 = 0;
    }

    value_out = 0;
    v96 = 0uLL;
    v97 = 0;
    if (v13)
    {
      v96 = *(v13 + 132);
      v97 = *(v13 + 148);
    }

    if (v12)
    {
      v24 = *(v12 + 24);
      Property = *(v12 + 224);
      if (Property)
      {
        v26 = a8;
        v77 = v13;
        v27 = a4 * a3;
        v28 = a6;
        v29 = v12;
        v30 = a3;
        v31 = a5;
        v32 = a4;
        v33 = v22;
        v34 = a7;
        Property = CGPropertiesGetProperty(Property, @"kCGColorConversionInfoOptions");
        LODWORD(a7) = v34;
        v22 = v33;
        a4 = v32;
        a5 = v31;
        a3 = v30;
        v12 = v29;
        a6 = v28;
        v18 = v27;
        v13 = v77;
        LODWORD(a8) = v26;
      }
    }

    else
    {
      v24 = 0;
      Property = 0;
    }

    *&key[0] = __PAIR64__(a7, v24);
    v44 = a7;
    v79 = a8;
    DWORD2(key[0]) = a8;
    *(key + 12) = v96;
    *(&v82 + 1) = a3;
    HIDWORD(key[1]) = v97;
    *&v82 = v22;
    *&v83 = a4;
    *(&v83 + 1) = a6;
    *&v84 = Property;
    cache_lock();
    if (get_cache_predicate != -1)
    {
      dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
    }

    if (cache_get_and_retain(*(get_cache_image_cache + 64), key, &value_out))
    {
LABEL_67:
      v45 = value_out;
      if (value_out)
      {
        return v45;
      }

      v62 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10E00402B2D0641uLL);
      value_out = v62;
      if (v62)
      {
        CGConditionalVarInit(v62 + 128);
        if (get_cache_predicate != -1)
        {
          dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
        }

        cache_set_and_retain(*(get_cache_image_cache + 64), key, value_out, v18);
      }

      v63 = v22;
      cache_unlock();
      v64 = value_out;
      if (!value_out)
      {
        return 0;
      }

      if (v13)
      {
        v65 = *(v13 + 120);
        v66 = v79;
        v67 = v44;
        if (!a6)
        {
          if (v65)
          {
            a6 = *(*(v13 + 48) + 32);
          }

          else
          {
            a6 = 0;
          }
        }

        if (!*(v13 + 88))
        {
          v68 = *v13;
          if (!*v13)
          {
            goto LABEL_81;
          }

          v74 = *(v68 + 248);
          if (v74)
          {
            v68 = v74();
            v67 = v44;
            v66 = v79;
            goto LABEL_81;
          }
        }

        v68 = 0;
      }

      else
      {
        v65 = 0;
        v68 = 0;
        v66 = v79;
        v67 = v44;
      }

LABEL_81:
      v69 = CGSImageDataLock(v12, a3, a4, a5, v67, v66, v65, a6, v68, v63, 0);
      if (v69)
      {
        initialize_skipping_conditional_var(v64, v13, v12, v69);
        v70 = value_out;
        if (!value_out || (v71 = *(value_out + 15), (v72 = *(v71 + 72)) == 0) || *(v72 + 8) != 1 || *(v71 + 80))
        {
          if (get_cache_predicate != -1)
          {
            dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
          }

          cache_remove(*(get_cache_image_cache + 64), key);
          v70 = value_out;
        }

        CGConditionalVarPost(v70 + 128);
        return value_out;
      }

      CGConditionalVarPost(value_out + 128);
      release_and_remove(key, value_out);
      return 0;
    }

    cache_unlock();
    if (!value_out)
    {
      _CGHandleAssert("RIPImageCacheGetRetained", 238, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "data != NULL", "data is NULL");
    }

    CGConditionalVarWait(value_out + 128);
    v45 = value_out;
    if (!*(value_out + 10) && !*(value_out + 11))
    {
      goto LABEL_65;
    }

    v46 = *(value_out + 13);
    if (v46 && *(v46 + 8) == 1)
    {
      nonpurgeable = malloc_make_nonpurgeable(*(v46 + 16));
      v45 = value_out;
      if (nonpurgeable)
      {
        goto LABEL_65;
      }

      if (!value_out)
      {
LABEL_66:
        cache_lock();
        goto LABEL_67;
      }
    }

    if (*(v45 + 14) == *(v45 + 10))
    {
      if (*(v45 + 15) == *(v45 + 11))
      {
        return v45;
      }

LABEL_63:
      v96 = 0uLL;
      if (CGSBoundsIntersection(v45 + 12, a5, &v96) && *(&v96 + 1) == *(a5 + 8))
      {
        return v45;
      }

      goto LABEL_65;
    }

    if (a5 || *(v45 + 15) == *(v45 + 11))
    {
      goto LABEL_63;
    }

LABEL_65:
    release_and_remove(key, v45);
    value_out = 0;
    goto LABEL_66;
  }

  if (v13)
  {
    v35 = *(v13 + 120);
    if (!*(v13 + 88))
    {
      v36 = *v13;
      if (!*v13)
      {
        goto LABEL_56;
      }

      v37 = *(v36 + 248);
      if (v37)
      {
        v38 = a8;
        v78 = v12;
        v39 = a3;
        v40 = a5;
        v41 = a4;
        v42 = v22;
        v43 = a7;
        v36 = v37();
        LODWORD(a7) = v43;
        v22 = v42;
        a4 = v41;
        a5 = v40;
        a3 = v39;
        v12 = v78;
        LODWORD(a8) = v38;
        goto LABEL_56;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
LABEL_56:
  v48 = CGSImageDataLock(v12, a3, a4, a5, a7, a8, v35, v20, v36, v22, 1u);
  if (!v48)
  {
    return 0;
  }

  v49 = v48;
  v45 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10E00402B2D0641uLL);
  if (v45)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    memset(key, 0, sizeof(key));
    initialize_skipping_conditional_var(key, v13, v12, v49);
    v95 = 0;
    v92 = xmmword_1844DF7D0;
    v93 = unk_1844DF7E0;
    v94 = xmmword_1844DF7F0;
    v88 = CGConditionalVarInitializer;
    v89 = unk_1844DF7A0;
    v90 = xmmword_1844DF7B0;
    v91 = unk_1844DF7C0;
    CGConditionalVarPost(&v88);
    v50 = v83;
    v52 = key[0];
    v51 = key[1];
    v45[2] = v82;
    v45[3] = v50;
    *v45 = v52;
    v45[1] = v51;
    v53 = v87;
    v55 = v84;
    v54 = v85;
    v45[6] = v86;
    v45[7] = v53;
    v45[4] = v55;
    v45[5] = v54;
    v56 = v91;
    v58 = v88;
    v57 = v89;
    v45[10] = v90;
    v45[11] = v56;
    v45[8] = v58;
    v45[9] = v57;
    v60 = v93;
    v59 = v94;
    v61 = v92;
    *(v45 + 30) = v95;
    v45[13] = v60;
    v45[14] = v59;
    v45[12] = v61;
  }

  return v45;
}

unint64_t *CGSImageDataLock(CGImage *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7, int *a8, uint64_t a9, int a10, unsigned __int8 a11)
{
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  if (!a1)
  {
    CGPostError("%s: Bad image source", a2);
    return 0;
  }

  if (a8 && !*(a8 + 5))
  {
    CGPostError("%s: Bad image depth", a2);
    return 0;
  }

  memset(__src, 0, sizeof(__src));
  CGBitmapPixelInfoInitializeWithImage(__src, __src, a1);
  if (!a9)
  {
    if (a8)
    {
      v21 = *a8;
      if ((*a8 & 0xFFFFFFEF) == 0x4053344)
      {
        v19 = 0x10000;
      }

      else
      {
        v19 = (*a8 == 134886228) << 18;
      }

      v22 = (v21 >> 2) & 3;
      if (v22 <= 1)
      {
        if (v22)
        {
          v20 = 8;
        }

        else if ((v21 & 0xF00) != 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 7;
        }

        goto LABEL_33;
      }

      if (v22 == 2)
      {
        v24 = v21 >> 6;
        if (v24 == 1)
        {
          v20 = 2;
        }

        else
        {
          v20 = v24 == 2;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    goto LABEL_33;
  }

  v19 = *(a9 + 40) & 0xF0000;
  v20 = *(a9 + 40) & 0x1F;
  if (CGImageGetColorSpace(a1) && v20 <= 6 && ((1 << v20) & 0x61) != 0 && (*(a1 + 39) & 0xE) != 0)
  {
    if (v20 == 6)
    {
LABEL_12:
      v20 = 2;
      goto LABEL_33;
    }

    if (v20 != 5)
    {
      if (v20)
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }

    v20 = 1;
  }

LABEL_33:
  v42 = a10;
  if ((*(a1 + 39) & 8) != 0)
  {
    if (v20 == 7 || !v20)
    {
      if (a8 && *a8 == 134886228)
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }
    }
  }

  else if (v20 == 7)
  {
    ColorSpace = CGImageGetColorSpace(a1);
    if (CGColorSpaceGetType(ColorSpace) - 7 >= 3)
    {
      a7 = 0;
    }
  }

  v39 = a2;
  v40 = a3;
  v41 = a8;
  if (LODWORD(__src[2]) == 0x40000 && v19 == 0x40000)
  {
    if ((*(a1 + 39) & 8) == 0)
    {
      v42 = 0;
      v26 = 0x2000;
      v27 = 0x40000;
      v28 = 10;
      goto LABEL_54;
    }

LABEL_53:
    v27 = 0;
    v26 = 4096;
    v20 = 1;
    v28 = 16;
    goto LABEL_54;
  }

  if (v19 == 0x40000)
  {
    goto LABEL_53;
  }

  v28 = qword_1844E0BE8[a10];
  if (a9)
  {
    v29 = *(a9 + 40);
    if ((v29 & 0xF0000) == 0x10000)
    {
      v27 = 0;
      v26 = 0x4000;
    }

    else
    {
      v27 = 0;
      if ((v29 & 0xF0000) == 0x40000)
      {
        v26 = 4096;
      }

      else
      {
        v26 = *(a9 + 40) & 0x7000;
      }
    }
  }

  else if (v41)
  {
    if (v28 == 8)
    {
      v27 = 0;
      if ((*v41 & 0xFFFFFFEF) == 0x4053344)
      {
        v26 = 0x4000;
      }

      else
      {
        v26 = ((*v41 & 0x30) == 16) << 13;
      }

      v28 = 8;
    }

    else if (v28 == 16)
    {
      v27 = 0;
      v26 = ((*v41 & 0x30) == 32) << 12;
    }

    else
    {
      v27 = 0;
      if (v28 == 32)
      {
        v26 = ((*v41 & 0x30) == 32) << 13;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
    v26 = dword_1844E0BD0[a10];
  }

LABEL_54:
  if (a7)
  {
    Cache = CGColorTransformGetCache(a7);
    if (Cache && (v31 = Cache[2]) != 0)
    {
      v32 = *(*(v31 + 24) + 48);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 1;
  }

  if ((v28 - 33) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v28);
  }

  v44 = v42;
  v45 = 0;
  v46 = v28;
  v47 = v32;
  v48 = v20;
  v49 = v26;
  v50 = v27;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memcpy(__dst, __src, sizeof(__dst));
  v33 = data_conversion_required(a7, a1, &v44, __dst);
  v34 = a7;
  v35 = v33;
  v44 = v42;
  v45 = 0;
  v46 = v28;
  v47 = v32;
  v48 = v20;
  v49 = v26;
  v50 = v27;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v36 = a6;
  v37 = v34;
  result = img_image(v68, v41, v34, v33, &v44, a1, v36);
  if (result)
  {
    if (a9)
    {
      v38 = *(a9 + 96);
    }

    else
    {
      v38 = 3;
    }

    return img_data_lock("CGSImageDataLock", v68, v39, v40, a4, a5, v36, v37, v35, v41, v42, a11, v38);
  }

  return result;
}

uint64_t CGImageGetPixelComponentType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 > 7)
    {
      switch(v1)
      {
        case 8:
          return 1;
        case 16:
          if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
          {
            return 5;
          }

          else
          {
            return 2;
          }

        case 32:
          if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
          {
            return 4;
          }

          else
          {
            return 3;
          }

        default:
          return 0;
      }
    }

    else
    {
      if (v1 == 4)
      {
        v2 = 9;
      }

      else
      {
        v2 = 0;
      }

      if (v1 == 2)
      {
        v3 = 8;
      }

      else
      {
        v3 = v2;
      }

      if (v1 == 1)
      {
        return 7;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

void *CGBitmapPixelInfoInitializeWithImage(void *a1, char *a2, CGImage *a3)
{
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  *a2 = CGImageGetPixelComponentType(a3);
  if (a3)
  {
    v6 = *(a3 + 7);
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 1) = v6;
  *(a2 + 2) = CGImageGetNumberOfColorComponents(a3);
  *(a2 + 6) = CGImageGetAlphaInfo(a3);
  *(a2 + 7) = CGImageGetByteOrderInfo(a3);
  *(a2 + 8) = CGImageGetPixelFormatInfo(a3);
  if (CGImageGetDecode(a3))
  {
    NumberOfComponents = CGImageGetNumberOfComponents(a3);
    if (NumberOfComponents)
    {
      v8 = NumberOfComponents;
      v9 = 0;
      v10 = (a2 + 56);
      do
      {
        *(v10 - 1) = CGImageGetDecode(a3)[v9];
        *v10 = CGImageGetDecode(a3)[v9 + 1];
        v10 += 2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    *(a2 + 5) = a2 + 48;
  }

  return memcpy(a1, a2, 0x130uLL);
}

CGImagePixelFormatInfo CGImageGetPixelFormatInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8) & 0xF0000;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

BOOL data_conversion_required(void *a1, uint64_t *image, _DWORD *a3, const void *a4)
{
  if (image && (*(image + 39) & 8) != 0)
  {
    return 1;
  }

  if (a3[6] == 7)
  {
    ColorSpace = CGImageGetColorSpace(image);
    if (CGColorSpaceGetType(ColorSpace) - 7 > 2)
    {
      return 0;
    }
  }

  v9 = CGImageGetColorSpace(image);
  if (create_resolved_space_predicate != -1)
  {
    dispatch_once(&create_resolved_space_predicate, &__block_literal_global_76);
  }

  __dst[0] = MEMORY[0x1E69E9820];
  __dst[1] = 0x40000000;
  __dst[2] = __CGColorSpaceCreateResolved_block_invoke;
  __dst[3] = &__block_descriptor_tmp_39_23493;
  __dst[4] = create_resolved_space_gray;
  __dst[5] = create_resolved_space_sRGB;
  __dst[6] = create_resolved_space_cmyk;
  ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(v9, __dst);
  if (image && (v11 = image[28]) != 0 && CGPropertiesGetProperty(v11, @"kCGColorConversionInfoOptions"))
  {
    v12 = 1;
  }

  else
  {
    v12 = 1;
    if (a1 && ResolvedColorSpace && !CGColorTransformGetAttributes(a1))
    {
      Cache = CGColorTransformGetCache(a1);
      if (Cache)
      {
        Cache = Cache[2];
      }

      if (CGColorSpaceEqualToColorSpace(Cache, ResolvedColorSpace))
      {
        memcpy(__dst, a3, sizeof(__dst));
        memcpy(v15, a4, sizeof(v15));
        v12 = !CGBitmapPixelInfoIsEqualToBitmapPixelInfo(__dst, v15);
      }
    }
  }

  CGColorSpaceRelease(ResolvedColorSpace);
  return v12;
}

unint64_t CGImageGetSize(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[5];
  Mask = CGImageGetMask(a1);
  if (Mask && Mask[5] > v1)
  {
    return Mask[5];
  }

  return v1;
}

uint64_t CGDataProviderCreateForDestinationWithImage(void *a1, _DWORD *a2, uint64_t a3, CGDataProviderRef a4, uint64_t cf, int a6, int a7)
{
  v247 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v14 = CFGetTypeID(cf);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v14 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  v15 = *(cf + 40);
  v16 = *(cf + 48);
  if (!is_mul_ok(v15, v16))
  {
    return 0;
  }

  v17 = v15 * v16 <= 0x9C4 && (*(cf + 152) | *(cf + 240)) == 0;
  DataProviderInternal = CGImageGetDataProviderInternal(cf, v17);
  if (!DataProviderInternal)
  {
    return 0;
  }

  provider = DataProviderInternal;
  ColorSpace = CGImageGetColorSpace(cf);
  Decode = CGImageGetDecode(cf);
  ByteOrderInfo = CGImageGetByteOrderInfo(cf);
  AlphaInfo = CGImageGetAlphaInfo(cf);
  if ((*(cf + 39) & 2) != 0)
  {
    v21 = 1;
    goto LABEL_14;
  }

  v20 = CGImageGetColorSpace(cf);
  if (v20)
  {
    v21 = *(*(v20 + 3) + 48);
LABEL_14:
    v173 = v21;
    goto LABEL_15;
  }

  v173 = 0;
LABEL_15:
  PixelComponentType = CGImageGetPixelComponentType(cf);
  if (a7)
  {
    v23 = PixelComponentType;
    MaskingColors = CGImageGetMaskingColors(cf);
    PixelComponentType = v23;
  }

  else
  {
    MaskingColors = 0;
  }

  v25 = *(cf + 40);
  v186 = *(cf + 48);
  v26 = *(cf + 72);
  v199 = *(cf + 64);
  v27 = *(cf + 152);
  if (v27 && (*(v27 + 20) & 0xFFFFFFFD) == 1 || v199 * v25 != 8 * v26)
  {
    v28 = *(cf + 72);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(cf + 56);
  memset(v246, 0, sizeof(v246));
  v177 = ColorSpace;
  v200 = v25;
  v171 = a1;
  v172 = a6;
  if (PixelComponentType)
  {
    if (PixelComponentType != 3)
    {
      v30 = 0;
      if ((v29 & 7) == 0 || PixelComponentType == *a2)
      {
        goto LABEL_106;
      }
    }
  }

  v166 = v29;
  v164 = PixelComponentType;
  v188 = v26;
  UpscaledComponentType = CGImageGetUpscaledComponentType(cf);
  memset(v211, 0, sizeof(v211));
  CGBitmapPixelInfoInitializeWithImage(v211, v211, cf);
  PixelFormatInfo = CGImageGetPixelFormatInfo(cf);
  v32 = AlphaInfo;
  if (PixelFormatInfo == kCGImagePixelFormatRGBCIF10)
  {
    v32 = 6;
  }

  AlphaInfo = v32;
  Type = CGColorSpaceGetType(ColorSpace);
  v34 = CGColorSpaceGetType(ColorSpace);
  v35 = 0;
  if (v34 == 7 && Decode)
  {
    v35 = CGImageGetDecodeType(cf) == 2;
  }

  v36 = *&v211[24] - 1;
  v182 = *&v211[24];
  if ((*&v211[24] - 1) > 8)
  {
    v37 = 0;
  }

  else
  {
    v37 = qword_1844E0DE8[v36];
  }

  v170 = a3;
  v38 = UpscaledComponentType - 1;
  if (UpscaledComponentType - 1 >= 5 || ((0x1Bu >> v38) & 1) == 0)
  {
    _CGHandleAssert("bytes_per_upscaled_component", 94, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "", "Unimplemented");
  }

  v193 = *&v211[16];
  v167 = Type;
  v169 = Type == 7;
  v39 = qword_1844DF420[v38];
  v165 = v35;
  if (v35)
  {
    v40 = Decode;
  }

  else
  {
    v40 = 0;
  }

  v178 = *v211;
  v184 = *&v211[8];
  v180 = *&v211[28];
  v198 = *&v211[32];
  memcpy(__dst, &v211[36], sizeof(__dst));
  if (UpscaledComponentType > 5 || ((1 << UpscaledComponentType) & 0x36) == 0)
  {
    _CGHandleAssert("CGDataProviderCreateUpscalingProvider", 1377, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "dst_component_type == kCGImageComponent8BitInteger || dst_component_type == kCGImageComponent16BitInteger || dst_component_type == kCGImageComponent16BitFloat || dst_component_type == kCGImageComponent32BitFloat", "component type %u", UpscaledComponentType);
  }

  v41 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10A0040BD4CEAFDuLL);
  if (!v41)
  {
LABEL_151:
    CGPostError("%s: failed to create upscaling provider");
    return 0;
  }

  v42 = v41;
  v174 = a2;
  v163 = a4;
  v43 = v37 + v193;
  v44 = v188 - ((v199 * v200 + 7) >> 3);
  v45 = *(provider + 5);
  *srcFormat = v178;
  *&srcFormat[8] = v184;
  *&srcFormat[16] = v193;
  v46 = v44 + v43 * v200 * v39;
  v47 = v45 & 0xFFFFFFFD;
  *&srcFormat[24] = v182;
  *&srcFormat[28] = v180;
  *&srcFormat[32] = v198;
  memcpy(&srcFormat[36], __dst, 0x10CuLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
  v158 = v40;
  if (v36 > 8)
  {
    v48 = 0;
  }

  else
  {
    v48 = qword_1844E0DE8[v36];
  }

  v49 = v48 + v193;
  v50 = bits_per_component_type(UpscaledComponentType);
  v51 = v49;
  v52 = v50 * v49;
  v53 = v50 * v49 * v200 + 7;
  v54 = v53 >> 3;
  if (v46)
  {
    v55 = v46;
  }

  else
  {
    v55 = v53 >> 3;
  }

  if (v198 == 0x40000)
  {
    v56 = bits_per_component_type(UpscaledComponentType);
    v51 = (v49 + 1);
    v52 = v56 * (v49 + 1);
    v54 = (v52 * v200 + 7) >> 3;
    v55 = v44 + v54;
  }

  a2 = v174;
  v57 = provider;
  v160 = v55;
  v161 = v54;
  v159 = v51;
  if (!v47)
  {
    *(v42 + 8) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v42, v55 * v186, &direct_provider_upscale_callbacks);
    v30 = v59;
    if (v59)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

  SequentialWithInternalCallbacks = CGDataProviderCreateSequentialWithInternalCallbacks(v42, &sequential_provider_upscale_callbacks);
  if (!SequentialWithInternalCallbacks)
  {
LABEL_78:
    free(v42);
    goto LABEL_151;
  }

  v30 = SequentialWithInternalCallbacks;
  CGDataProviderLock(provider);
LABEL_55:
  *(v30 + 260) = *(provider + 260);
  v60 = v184;
  if (v184 <= 0xC && ((1 << v184) & 0x1016) != 0 && v167 != 7)
  {
    if (UpscaledComponentType == 2)
    {
      v61 = 16;
    }

    else
    {
      v61 = 8;
    }

    if (UpscaledComponentType == 5)
    {
      v62 = 4352;
    }

    else
    {
      v62 = 0;
    }

    if (UpscaledComponentType == 4)
    {
      v63 = 32;
    }

    else
    {
      v63 = v61;
    }

    if (UpscaledComponentType == 4)
    {
      v64 = 8448;
    }

    else
    {
      v64 = v62;
    }

    if (UpscaledComponentType == 2)
    {
      v65 = 4096;
    }

    else
    {
      v65 = v64;
    }

    DeviceGray = CGColorSpaceCreateDeviceGray();
    *srcFormat = v184;
    *&srcFormat[4] = v184;
    *&srcFormat[8] = DeviceGray;
    *&srcFormat[16] = *(v42 + 31);
    memset(&srcFormat[20], 0, 20);
    *destFormat = v63;
    *&destFormat[4] = v63;
    *&destFormat[8] = DeviceGray;
    memset(&destFormat[20], 0, 20);
    *&destFormat[16] = v65;
    v67 = vImageConverter_CreateWithCGImageFormat(srcFormat, destFormat, 0, 0x100u, 0);
    v42[17] = v67;
    if (!v67)
    {
      CGPostError("%s: failed to create vImageConverter", "CGDataProviderCreateUpscalingProvider");
      CGDataProviderRelease(v30);
      goto LABEL_151;
    }

    a2 = v174;
    v57 = provider;
    v60 = v184;
  }

  CGDataProviderRetain(v57);
  *v42 = v57;
  v42[2] = v200;
  v42[3] = v186;
  *(v42 + 8) = UpscaledComponentType;
  v42[5] = v52;
  v25 = v200;
  v42[6] = v160;
  v42[7] = v161;
  v42[10] = BitsPerPixel;
  v42[11] = v60;
  v42[12] = v188;
  *srcFormat = v178;
  *&srcFormat[8] = v60;
  *&srcFormat[16] = v193;
  *&srcFormat[24] = v182;
  *&srcFormat[28] = v180;
  *&srcFormat[32] = v198;
  memcpy(&srcFormat[36], __dst, 0x10CuLL);
  v42[13] = ((CGBitmapPixelInfoGetBitsPerPixel(srcFormat) * v200 + 7) >> 3);
  *(v42 + 30) = v198;
  *(v42 + 31) = v180;
  if (v182 == 9)
  {
    v68 = 3;
    a4 = v163;
    a3 = v170;
    ColorSpace = v177;
    v69 = v159;
  }

  else
  {
    v68 = v182;
    a4 = v163;
    a3 = v170;
    ColorSpace = v177;
    v69 = v159;
    if (v182 == 8)
    {
      v68 = 1;
    }
  }

  *(v42 + 32) = v68;
  v42[9] = v69;
  *(v42 + 9) = v169;
  v70 = v42[6];
  if (v70 <= v42[12])
  {
    v70 = v42[12];
  }

  v71 = ((v70 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v42[19] = v71;
  v72 = malloc_type_calloc(1uLL, v71, 0xB1FB49A9uLL);
  v42[18] = v72;
  if (!v72)
  {
    upscale_provider_release_info(v42);
    CGPostError("%s failed", "CGDataProviderCreateUpscalingProvider");
    goto LABEL_151;
  }

  if (v158)
  {
    *(v42 + 160) = 1;
    v42[21] = *v158;
    v42[22] = *(v158 + 1);
  }

  v73 = *(v30 + 160);
  if (v73)
  {
    v26 = v73(*(v30 + 24));
  }

  else
  {
    v26 = 0;
  }

  a6 = v172;
  if (v199 * v200 == 8 * v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v74 = Decode;
  PixelComponentType = UpscaledComponentType;
  if (v165)
  {
    v74 = 0;
  }

  Decode = v74;
  ByteOrderInfo = dword_1844DC588[v38];
  if (!MaskingColors || (v164 & 0xE) == 4)
  {
    provider = v30;
    a1 = v171;
  }

  else
  {
    if (ColorSpace)
    {
      v75 = 2 * *(*(v177 + 3) + 48);
      if (v75)
      {
        v189 = v26;
        v194 = v28;
        v76 = exp2(v166);
        v26 = v189;
        v28 = v194;
        PixelComponentType = UpscaledComponentType;
        v77 = v76 + -1.0;
        v78 = dbl_1844DC5A0[v38];
        v79 = v246;
        do
        {
          v80 = *MaskingColors++;
          v81 = v80 * v78 / v77;
          v82 = round(v81);
          if (v38 < 2)
          {
            v81 = v82;
          }

          *v79++ = v81;
          --v75;
        }

        while (v75);
      }
    }

    MaskingColors = v246;
    provider = v30;
    a1 = v171;
    ColorSpace = v177;
  }

LABEL_106:
  v207 = PixelComponentType;
  v168 = v30;
  if (v25 == a3 && v186 == a4)
  {
    v183 = 0;
    if (MaskingColors)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

  v196 = v28;
  v176 = a2;
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(PixelComponentType);
  if ((BitsPerComponent & 7) != 0)
  {
    _CGHandleAssert("CGDataProviderCreateForDestinationWithImage", 220, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "bits_per_component == ((bits_per_component >> 3) << 3)", "bits per component %zu", BitsPerComponent);
  }

  NumberOfComponents = CGImageGetNumberOfComponents(cf);
  v110 = *(cf + 64);
  v109 = *(cf + 72);
  v111 = *(cf + 40);
  v112 = CGImageGetNumberOfComponents(cf);
  if (BitsPerComponent > 0x20 || ((1 << BitsPerComponent) & 0x100010100) == 0)
  {
    _CGHandleAssert("CGDataProviderCreateUpsamplingProvider", 514, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "bits_per_component == 8 || bits_per_component == 16 || bits_per_component == 32", "bpc %zu", BitsPerComponent);
  }

  v113 = v112;
  v114 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A00405CE51268uLL);
  if (!v114)
  {
LABEL_167:
    if (v168)
    {
      CFRelease(v168);
    }

    CGPostError("%s: failed to create upsampling provider");
    return 0;
  }

  v115 = v114;
  v116 = v109 - ((v111 * v110 + 7) >> 3) + ((BitsPerComponent * a3 * NumberOfComponents) >> 3);
  v114[7] = v200;
  v114[8] = v186;
  v117 = v113 * BitsPerComponent;
  v118 = v196;
  if (!v196)
  {
    v118 = (v113 * BitsPerComponent * v200) >> 3;
  }

  v114[9] = v118;
  v114[10] = ((v113 * BitsPerComponent * v200) >> 3);
  v114[2] = a3;
  v114[3] = a4;
  v114[4] = v116;
  v114[5] = ((v117 * a3) >> 3);
  v114[12] = BitsPerComponent;
  v114[13] = v113;
  v114[14] = (v117 >> 3);
  v114[15] = ((v200 << 16) / a3);
  v114[16] = ((v186 << 16) / a4);
  v192 = v116;
  if ((*(provider + 5) & 0xFFFFFFFD) != 0)
  {
    a1 = v171;
    a6 = v172;
    a2 = v176;
    ColorSpace = v177;
    if (v186 != a4)
    {
      _CGHandleAssert("CGDataProviderCreateUpsamplingProvider", 554, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "data->src_height == data->dst_height", "src height %zu  dest height %zu", v186, a4);
    }

    CGDataProviderRetain(provider);
    *v115 = provider;
    v119 = CGDataProviderCreateSequentialWithInternalCallbacks(v115, &sequential_provider_upsample_callbacks);
    CGDataProviderLock(provider);
  }

  else
  {
    *v114 = CGDataProviderRetain(provider);
    *(v115 + 8) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v115, v116 * a4, &direct_provider_upsample_callbacks);
    v119 = v122;
    a1 = v171;
    a6 = v172;
    a2 = v176;
    ColorSpace = v177;
  }

  if (!v119)
  {
    free(v115);
    goto LABEL_167;
  }

  v123 = v115[4];
  if (v123 <= v115[9])
  {
    v123 = v115[9];
  }

  v124 = ((v123 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v115[18] = v124;
  v125 = malloc_type_calloc(1uLL, v124, 0xF1106622uLL);
  v115[17] = v125;
  if (!v125 || !*v115)
  {
    upsample_provider_release_info(v115);
    CGPostError("%s failed", "CGDataProviderCreateUpsamplingProvider");
    goto LABEL_167;
  }

  v25 = v200;
  v26 = v192;
  if (v199 * v200 == 8 * v192)
  {
    v28 = 0;
  }

  else
  {
    v28 = v192;
  }

  v183 = v119;
  provider = v119;
  PixelComponentType = v207;
  if (MaskingColors)
  {
LABEL_109:
    v190 = v26;
    v195 = v28;
    memset(destFormat, 0, sizeof(destFormat));
    v83 = PixelComponentType;
    v84 = CGPixelComponentGetBitsPerComponent(PixelComponentType);
    CGBitmapPixelInfoInitialize(destFormat, destFormat, v83, v84, v173, AlphaInfo, ByteOrderInfo, 0, Decode);
    if (AlphaInfo >= kCGImageAlphaOnly)
    {
      _CGHandleAssert("alpha_info_for_masking_colors", 39, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationWithImage.c", "", "Unimplemented");
    }

    v185 = dword_1844DC5C8[AlphaInfo];
    v85 = CGPixelComponentGetBitsPerComponent(v83);
    if (!v85)
    {
      _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", 0);
    }

    v86 = v85;
    v87 = v207;
    v88 = v173;
    if (!v195)
    {
      memcpy(srcFormat, destFormat, sizeof(srcFormat));
      v89 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
      v88 = v173;
      v87 = v207;
      v195 = (v89 * a3 + 7) >> 3;
    }

    if (AlphaInfo == kCGImageAlphaNone)
    {
      v90 = *(cf + 72) - ((v199 * v25 + 7) >> 3);
      *srcFormat = v87;
      *&srcFormat[4] = 0;
      *&srcFormat[8] = v86;
      *&srcFormat[16] = v173;
      *&srcFormat[24] = v185;
      *&srcFormat[28] = ByteOrderInfo;
      memset(&srcFormat[32], 0, 272);
      v91 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
      v87 = v207;
      v88 = v173;
      v190 = v90 + ((v91 * v25 + 7) >> 3);
    }

    v175 = a2;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    v233 = 0u;
    v232 = 0u;
    v231 = 0u;
    v230 = 0u;
    v229 = 0u;
    v208 = *destFormat;
    v228 = *&destFormat[288];
    v227 = *&destFormat[272];
    v226 = *&destFormat[256];
    v225 = *&destFormat[240];
    v224 = *&destFormat[224];
    v223 = *&destFormat[208];
    v222 = *&destFormat[192];
    v221 = *&destFormat[176];
    v220 = *&destFormat[160];
    v219 = *&destFormat[144];
    v218 = *&destFormat[128];
    v217 = *&destFormat[112];
    v216 = *&destFormat[96];
    v215 = *&destFormat[80];
    v214 = *&destFormat[64];
    v213 = *&destFormat[48];
    if (*&destFormat[32])
    {
      _CGHandleAssert("CGDataProviderCreateWithMaskingColors", 490, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "CGBitmapPixelInfoGetCGImagePixelFormatInfo(src_pixel_info) == kCGImagePixelFormatPacked", "source pixel info %u", *&destFormat[32]);
    }

    *srcFormat = v87;
    *&srcFormat[4] = 0;
    *&srcFormat[8] = v86;
    *&srcFormat[16] = v88;
    *&srcFormat[24] = v185;
    *&srcFormat[28] = ByteOrderInfo;
    memset(&srcFormat[32], 0, 272);
    *v211 = *destFormat;
    v205 = *&destFormat[16];
    *&v211[16] = *&destFormat[16];
    v181 = *&destFormat[24];
    *&v211[24] = *&destFormat[24];
    *&v211[32] = 0;
    v203 = *&destFormat[36];
    *&v211[36] = *&destFormat[36];
    v92 = *&destFormat[40];
    *&v211[40] = *&destFormat[40];
    *&v211[240] = *&destFormat[240];
    *&v211[256] = *&destFormat[256];
    *&v211[272] = *&destFormat[272];
    *&v211[288] = *&destFormat[288];
    *&v211[176] = *&destFormat[176];
    *&v211[192] = *&destFormat[192];
    *&v211[208] = *&destFormat[208];
    *&v211[224] = *&destFormat[224];
    *&v211[112] = *&destFormat[112];
    *&v211[128] = *&destFormat[128];
    *&v211[144] = *&destFormat[144];
    *&v211[160] = *&destFormat[160];
    *&v211[48] = *&destFormat[48];
    *&v211[64] = *&destFormat[64];
    *&v211[80] = *&destFormat[80];
    *&v211[96] = *&destFormat[96];
    v93 = v88;
    IsEqualToBitmapPixelInfo = CGBitmapPixelInfoIsEqualToBitmapPixelInfo(srcFormat, v211);
    v95 = malloc_type_calloc(1uLL, 0x3B8uLL, 0x10A0040D53BA96CuLL);
    if (!v95)
    {
      goto LABEL_194;
    }

    v96 = v95;
    v97 = 2 * v93;
    v98 = v207;
    v99 = v93;
    if (2 * v93)
    {
      v100 = v95 + 84;
      v101 = v95 + 84;
      v102 = v95 + 84;
      while (v207 <= 6)
      {
        if ((v207 - 4) >= 2)
        {
          if (v207 != 1)
          {
            if (v207 != 2)
            {
              goto LABEL_206;
            }

            *v101++ = fmax(fmin(*MaskingColors, 65535.0), 0.0);
            goto LABEL_133;
          }

          v103 = fmin(*MaskingColors, 255.0);
          goto LABEL_132;
        }

        *v100 = *MaskingColors;
LABEL_133:
        ++MaskingColors;
        ++v100;
        if (!--v97)
        {
          goto LABEL_134;
        }
      }

      switch(v207)
      {
        case 9:
          v103 = fmin(*MaskingColors, 15.0);
          break;
        case 8:
          v103 = fmin(*MaskingColors, 3.0);
          break;
        case 7:
          v103 = fmin(*MaskingColors, 1.0);
          break;
        default:
LABEL_206:
          _CGHandleAssert("copy_masking_colors", 453, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "", "Unimplemented", 255.0, 0.0, 65535.0, 15.0, 3.0, 1.0);
      }

LABEL_132:
      *v102++ = fmax(v103, 0.0);
      goto LABEL_133;
    }

LABEL_134:
    if (!IsEqualToBitmapPixelInfo)
    {
      if (v93 != v205)
      {
        _CGHandleAssert("CGDataProviderCreateWithMaskingColors", 506, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "CGBitmapPixelInfoGetColorantCount(dst_pixel_info) == CGBitmapPixelInfoGetColorantCount(src_pixel_info)", "src colors %zu  dest colors %zu", v93, v205);
      }

      memset(v211, 0, 40);
      *srcFormat = v208;
      *&srcFormat[16] = v93;
      *&srcFormat[24] = v181;
      *&srcFormat[32] = 0;
      *&srcFormat[36] = v203;
      *&srcFormat[40] = v92;
      *&srcFormat[240] = v225;
      *&srcFormat[256] = v226;
      *&srcFormat[272] = v227;
      *&srcFormat[288] = v228;
      *&srcFormat[176] = v221;
      *&srcFormat[192] = v222;
      *&srcFormat[208] = v223;
      *&srcFormat[224] = v224;
      *&srcFormat[112] = v217;
      *&srcFormat[128] = v218;
      *&srcFormat[144] = v219;
      *&srcFormat[160] = v220;
      *&srcFormat[48] = v213;
      *&srcFormat[64] = v214;
      *&srcFormat[80] = v215;
      *&srcFormat[96] = v216;
      CGBitmapPixelInfoGet_vImageFormat(v211, srcFormat);
      memset(&v210, 0, sizeof(v210));
      *srcFormat = v207;
      *&srcFormat[4] = 0;
      *&srcFormat[8] = v86;
      *&srcFormat[16] = v93;
      *&srcFormat[24] = v185;
      *&srcFormat[28] = ByteOrderInfo;
      *&srcFormat[40] = 0;
      *&srcFormat[32] = 0;
      *&srcFormat[240] = v241;
      *&srcFormat[256] = v242;
      *&srcFormat[272] = v243;
      *&srcFormat[288] = v244;
      *&srcFormat[176] = v237;
      *&srcFormat[192] = v238;
      *&srcFormat[208] = v239;
      *&srcFormat[224] = v240;
      *&srcFormat[112] = v233;
      *&srcFormat[128] = v234;
      *&srcFormat[144] = v235;
      *&srcFormat[160] = v236;
      *&srcFormat[48] = v229;
      *&srcFormat[64] = v230;
      *&srcFormat[80] = v231;
      *&srcFormat[96] = v232;
      CGBitmapPixelInfoGet_vImageFormat(&v210, srcFormat);
      v104 = vImageConverter_CreateWithCGImageFormat(v211, &v210, 0, 0x100u, 0);
      v96[116] = v104;
      if (!v104)
      {
LABEL_189:
        free(v96);
LABEL_194:
        if (v168)
        {
          CFRelease(v168);
        }

        if (v183)
        {
          CFRelease(v183);
        }

        CGPostError("%s: failed to create masking color provider");
        return 0;
      }

      v98 = v207;
      v99 = v93;
    }

    v105 = v86;
    v106 = *(provider + 5) & 0xFFFFFFFD;
    *srcFormat = v98;
    *&srcFormat[4] = 0;
    v179 = v105;
    *&srcFormat[8] = v105;
    *&srcFormat[16] = v99;
    *&srcFormat[24] = v185;
    *&srcFormat[28] = ByteOrderInfo;
    *&srcFormat[40] = 0;
    *&srcFormat[32] = 0;
    *&srcFormat[240] = v241;
    *&srcFormat[256] = v242;
    *&srcFormat[272] = v243;
    *&srcFormat[288] = v244;
    *&srcFormat[176] = v237;
    *&srcFormat[192] = v238;
    *&srcFormat[208] = v239;
    *&srcFormat[224] = v240;
    *&srcFormat[112] = v233;
    *&srcFormat[128] = v234;
    *&srcFormat[144] = v235;
    *&srcFormat[160] = v236;
    *&srcFormat[48] = v229;
    *&srcFormat[64] = v230;
    *&srcFormat[80] = v231;
    *&srcFormat[96] = v232;
    v107 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
    if (v106)
    {
      v187 = CGDataProviderCreateSequentialWithInternalCallbacks(v96, &sequential_provider_with_masking_colors_callbacks);
      if (v187)
      {
        CGDataProviderLock(provider);
LABEL_171:
        *v96 = CGDataProviderRetain(provider);
        *(v96 + 1) = v208;
        v96[4] = v205;
        v96[5] = v181;
        *(v96 + 12) = 0;
        *(v96 + 13) = v203;
        v96[7] = v92;
        v128 = v226;
        *(v96 + 16) = v225;
        *(v96 + 17) = v128;
        v129 = v228;
        *(v96 + 18) = v227;
        *(v96 + 19) = v129;
        v130 = v222;
        *(v96 + 12) = v221;
        *(v96 + 13) = v130;
        v131 = v224;
        *(v96 + 14) = v223;
        *(v96 + 15) = v131;
        v132 = v218;
        *(v96 + 8) = v217;
        *(v96 + 9) = v132;
        v133 = v220;
        *(v96 + 10) = v219;
        *(v96 + 11) = v133;
        v134 = v214;
        *(v96 + 4) = v213;
        *(v96 + 5) = v134;
        v135 = v216;
        *(v96 + 6) = v215;
        *(v96 + 7) = v135;
        if (v92)
        {
          v96[7] = (v96 + 8);
        }

        v136 = v195;
        v96[40] = v195;
        *srcFormat = v208;
        *&srcFormat[16] = v205;
        *&srcFormat[24] = v181;
        *&srcFormat[32] = 0;
        *&srcFormat[36] = v203;
        *&srcFormat[40] = v92;
        *&srcFormat[240] = v225;
        *&srcFormat[256] = v226;
        *&srcFormat[272] = v227;
        *&srcFormat[288] = v228;
        *&srcFormat[176] = v221;
        *&srcFormat[192] = v222;
        *&srcFormat[208] = v223;
        *&srcFormat[224] = v224;
        *&srcFormat[112] = v217;
        *&srcFormat[128] = v218;
        *&srcFormat[144] = v219;
        *&srcFormat[160] = v220;
        *&srcFormat[48] = v213;
        *&srcFormat[64] = v214;
        *&srcFormat[80] = v215;
        *&srcFormat[96] = v216;
        v96[41] = ((CGBitmapPixelInfoGetBitsPerPixel(srcFormat) * v200 + 7) >> 3);
        *(v96 + 86) = v207;
        *(v96 + 87) = 0;
        v96[44] = v179;
        v96[45] = v173;
        *(v96 + 92) = v185;
        *(v96 + 93) = ByteOrderInfo;
        v96[47] = 0;
        v96[48] = 0;
        v137 = v242;
        *(v96 + 73) = v241;
        *(v96 + 75) = v137;
        v138 = v244;
        *(v96 + 77) = v243;
        *(v96 + 79) = v138;
        v139 = v238;
        *(v96 + 65) = v237;
        *(v96 + 67) = v139;
        v140 = v240;
        *(v96 + 69) = v239;
        *(v96 + 71) = v140;
        v141 = v234;
        *(v96 + 57) = v233;
        *(v96 + 59) = v141;
        v142 = v236;
        *(v96 + 61) = v235;
        *(v96 + 63) = v142;
        v143 = v230;
        *(v96 + 49) = v229;
        *(v96 + 51) = v143;
        v144 = v232;
        *(v96 + 53) = v231;
        *(v96 + 55) = v144;
        v96[81] = v190;
        v96[82] = ((v107 * v200 + 7) >> 3);
        memcpy(srcFormat, v96 + 43, sizeof(srcFormat));
        v145 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
        memcpy(srcFormat, v96 + 2, sizeof(srcFormat));
        v146 = CGBitmapPixelInfoGetBitsPerPixel(srcFormat);
        if (!v195)
        {
          _CGHandleAssert("calculate_work_buffer_size", 464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "masking_colors_bytes_per_row != 0", "masking rowBytes = 0");
        }

        a6 = v172;
        ColorSpace = v177;
        if (v145 > v146)
        {
          v136 = v145 * v195 / v146;
        }

        v147 = ((v136 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
        v96[118] = v147;
        v148 = malloc_type_calloc(1uLL, v147, 0x91579F5BuLL);
        v96[117] = v148;
        if (v148)
        {
          Decode = 0;
          if (v199 * v200 == 8 * v190)
          {
            v126 = 0;
          }

          else
          {
            v126 = v190;
          }

          AlphaInfo = v185;
          provider = v187;
          a2 = v175;
          PixelComponentType = v207;
          goto LABEL_181;
        }

        provider_with_masking_colors_release_info(v96);
        CGPostError("%s failed", "CGDataProviderCreateWithMaskingColors");
        goto LABEL_194;
      }
    }

    else
    {
      *(v96 + 8) = 1;
      CGDataProviderCreateDirectWithInternalCallbacks(v96, v190 * v186, &direct_provider_with_masking_colors_callbacks);
      v187 = v127;
      if (v127)
      {
        goto LABEL_171;
      }
    }

    v157 = v96[116];
    if (v157)
    {
      vImageConverter_Release(v157);
    }

    goto LABEL_189;
  }

LABEL_164:
  v126 = v28;
  v187 = 0;
LABEL_181:
  memset(srcFormat, 0, sizeof(srcFormat));
  v149 = PixelComponentType;
  v150 = CGPixelComponentGetBitsPerComponent(PixelComponentType);
  CGBitmapPixelInfoInitialize(srcFormat, srcFormat, v149, v150, v173, AlphaInfo, ByteOrderInfo, 0, Decode);
  memcpy(v211, a2, sizeof(v211));
  ImageBytesPerRowForPixelInfo = CGImageGetImageBytesPerRowForPixelInfo(cf, a3, v211);
  v152 = *(cf + 224);
  if (v152)
  {
    Property = CGPropertiesGetProperty(v152, @"kCGColorConversionInfoOptions");
    v154 = v168;
    if (Property)
    {
      CopyWithAttribute = CGColorTransformCreateCopyWithAttribute(a1, Property);
      v156 = CopyWithAttribute;
      if (CopyWithAttribute)
      {
        a1 = CopyWithAttribute;
      }
    }

    else
    {
      v156 = 0;
    }
  }

  else
  {
    v156 = 0;
    v154 = v168;
  }

  memcpy(v211, a2, sizeof(v211));
  memcpy(destFormat, srcFormat, sizeof(destFormat));
  v120 = CGDataProviderCreateForDestination(a1, a3, a4, v211, ImageBytesPerRowForPixelInfo, provider, ColorSpace, destFormat, v126, a6);
  CGDataProviderRelease(v154);
  CGDataProviderRelease(v183);
  CGDataProviderRelease(v187);
  if (v156)
  {
    CFRelease(v156);
  }

  return v120;
}

void *CGBitmapPixelInfoInitialize(void *a1, char *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  if ((a4 - 33) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", a4);
  }

  *a2 = a3;
  *(a2 + 1) = a4;
  *(a2 + 2) = a5;
  *(a2 + 6) = a6;
  *(a2 + 7) = a7;
  *(a2 + 8) = a8;
  if (a9)
  {
    if (a6)
    {
      v9 = a5 + 1;
    }

    else
    {
      v9 = a5;
    }

    if (v9)
    {
      v10 = a2 + 56;
      v11 = (a9 + 8);
      do
      {
        *(v10 - 1) = *(v11 - 1);
        v12 = *v11;
        v11 += 2;
        *v10 = v12;
        v10 += 16;
        --v9;
      }

      while (v9);
    }

    *(a2 + 5) = a2 + 48;
  }

  return memcpy(a1, a2, 0x130uLL);
}

unint64_t CGImageGetImageBytesPerRowForPixelInfo(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = a3[6] - 1;
  if (v5 > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1844E0DE8[v5];
  }

  v7 = *(a3 + 2);
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(*a3);
  DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
  if (!DataProviderInternal)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL");
  }

  v10 = DataProviderInternal;
  result = ((v6 + v7) * a2 * BitsPerComponent + 7) >> 3;
  if (*(v10 + 5))
  {
    if (a1)
    {
      v12 = *(a1 + 9) - ((*(a1 + 5) * *(a1 + 8) + 7) >> 3);
    }

    else
    {
      v12 = 0;
    }

    result += v12;
  }

  if (!result)
  {
    _CGHandleAssert("CGImageGetImageBytesPerRowForPixelInfo", 4233, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bytes_per_row != 0", "zero rowBytes");
  }

  return result;
}

uint64_t CGDataProviderCreateForDestination(void *a1, vImagePixelCount a2, CGDataProvider *a3, uint64_t a4, size_t a5, uint64_t a6, void *a7, uint64_t *__src, uint64_t a9, int a10)
{
  memcpy(__dst, __src, 0x130uLL);
  if (!CGBitmapPixelInfoGetBitsPerPixel(__dst))
  {
    memcpy(__dst, __src, 0x130uLL);
    BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
    _CGHandleAssert("CGDataProviderCreateForDestination", 824, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "CGBitmapPixelInfoGetBitsPerPixel(src_pixel_info) != 0", "bpp %zu", BitsPerPixel);
  }

  if (*(a4 + 32))
  {
    _CGHandleAssert("CGDataProviderCreateForDestination", 826, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "CGBitmapPixelInfoGetCGImagePixelFormatInfo(dst_pixel_info) == kCGImagePixelFormatPacked", "format = %u", *(a4 + 32));
  }

  if (a1)
  {
    v15 = CGColorTransformConvertRequired(a1, a7, a10);
  }

  else
  {
    v15 = 0;
  }

  v44 = (*(a6 + 260) & 1) == 0 && (*(__src + 6) - 5) < 2;
  memcpy(__dst, a4, 0x130uLL);
  memcpy(srcFormat, __src, 0x130uLL);
  IsEqualToBitmapPixelInfo = CGBitmapPixelInfoIsEqualToBitmapPixelInfo(__dst, srcFormat);
  v17 = malloc_type_calloc(1uLL, 0x338uLL, 0x10F0040FFE4A660uLL);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  if (v15)
  {
    v17[87] = CGColorTransformCreateCGCMSConverter(a1, a7, a10);
    v19 = a9;
    if (!a9)
    {
      memcpy(__dst, __src, 0x130uLL);
      v19 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) * a2 + 7) >> 3;
    }

    __dst[0].data = 0;
    __dst[0].height = a2;
    __dst[0].width = 1;
    __dst[0].rowBytes = v19;
    __dst[1].data = a10;
    memcpy(&__dst[1].height, __src, 0x130uLL);
    if (__src[5])
    {
      __dst[2].width = &__dst[2].rowBytes;
    }

    *srcFormat = 0;
    *&srcFormat[8] = a2;
    *&srcFormat[16] = 1;
    *&srcFormat[24] = a5;
    *&srcFormat[36] = 0;
    *&srcFormat[32] = a10;
    memcpy(&srcFormat[40], a4, 0x130uLL);
    if (*(a4 + 40))
    {
      *&srcFormat[80] = &srcFormat[88];
    }

    destFormat_16 = 0u;
    memset(destFormat_32, 0, 56);
    destFormat = 0u;
    CGCMSConverterConvertGetConverterInfo(&destFormat, v18[87], __dst, srcFormat);
    v20 = destFormat_16;
    v18[88] = destFormat;
    if (v20 >= 0x401)
    {
      v18[94] = v20;
      v18[93] = malloc_type_calloc(1uLL, v20, 0xE121803uLL);
    }

    if (*(&destFormat_16 + 1))
    {
      v18[95] = *(&destFormat_16 + 1);
    }

    if (CGColorSpaceGetType(a7) == 7)
    {
      *(v18 + 192) = destFormat_32[0];
    }

    v21 = *(&destFormat_32[1] + 8);
    *(v18 + 97) = *(destFormat_32 + 8);
    *(v18 + 99) = v21;
    *(v18 + 101) = *(&destFormat_32[2] + 8);
    goto LABEL_38;
  }

  if (IsEqualToBitmapPixelInfo)
  {
    goto LABEL_38;
  }

  if (a7)
  {
    v22 = __src[2];
    if (*(a4 + 16) != v22)
    {
      _CGHandleAssert("CGDataProviderCreateForDestination", 893, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "src_space == NULL || CGBitmapPixelInfoGetColorantCount(dst_pixel_info) == CGBitmapPixelInfoGetColorantCount(src_pixel_info)", "colorSpace %p  dest colors %zu  src colors %zu", a7, *(a4 + 16), v22);
    }
  }

  memset(srcFormat, 0, 40);
  memcpy(__dst, __src, 0x130uLL);
  CGBitmapPixelInfoGet_vImageFormat(srcFormat, __dst);
  *&destFormat_32[0] = 0;
  destFormat = 0u;
  destFormat_16 = 0u;
  memcpy(__dst, a4, 0x130uLL);
  CGBitmapPixelInfoGet_vImageFormat(&destFormat, __dst);
  v23 = vImageConverter_CreateWithCGImageFormat(srcFormat, &destFormat, 0, 0x100u, 0);
  v18[89] = v23;
  if (!v23)
  {
    free(v18);
    return 0;
  }

  v24 = a9;
  memcpy(__dst, __src, 0x130uLL);
  if (a9)
  {
    LOBYTE(v15) = 0;
    v25 = (8 * a9 / CGBitmapPixelInfoGetBitsPerPixel(__dst) + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = (CGBitmapPixelInfoGetBitsPerPixel(__dst) * a2 + 7) >> 3;
    v25 = a2;
  }

  v26 = v18[89];
  if (!v26)
  {
LABEL_37:
    v18[94] = 0;
    goto LABEL_38;
  }

  __dst[0].data = v54;
  __dst[0].height = 1;
  __dst[0].width = v25;
  __dst[0].rowBytes = v24;
  dests.data = v54;
  dests.height = 1;
  dests.width = v25;
  dests.rowBytes = a5;
  v27 = vImageConvert_AnyToAny(v26, __dst, &dests, 0, 0x80u);
  if ((v27 & 0x8000000000000000) != 0)
  {
    CGPostError("vImageConvert_AnyToAny failed to return vImage buffer size");
    goto LABEL_37;
  }

  v18[94] = v27;
  if (v27 >= 0x401)
  {
    v18[93] = malloc_type_calloc(1uLL, v27, 0xCE0A55A1uLL);
  }

LABEL_38:
  memcpy(__dst, a4, 0x130uLL);
  v28 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  if ((*(a6 + 20) | 2) == 2)
  {
    *(v18 + 724) = 1;
    CGDataProviderCreateDirectWithInternalCallbacks(v18, a5 * a3, &direct_provider_for_destination_callbacks);
    v30 = v29;
    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
    SequentialWithInternalCallbacks = CGDataProviderCreateSequentialWithInternalCallbacks(v18, &sequential_provider_for_destination_callbacks);
    if (!SequentialWithInternalCallbacks)
    {
LABEL_51:
      v35 = v18[93];
      if (v35)
      {
        free(v35);
      }

      v36 = v18[89];
      if (v36)
      {
        vImageConverter_Release(v36);
      }

      v37 = v18[95];
      if (v37)
      {
        free(v37);
      }

      free(v18);
      CGPostError("%s failed to allocate");
      return 0;
    }

    v30 = SequentialWithInternalCallbacks;
    CGDataProviderLock(a6);
  }

  v32 = v28 * a2 + 7;
  *v18 = CGDataProviderRetain(a6);
  v18[1] = a2;
  v18[2] = a3;
  memcpy(v18 + 4, __src, 0x130uLL);
  if (__src[5])
  {
    v18[9] = (v18 + 10);
  }

  v33 = v32 >> 3;
  v18[42] = a9;
  memcpy(__dst, __src, 0x130uLL);
  v18[43] = ((CGBitmapPixelInfoGetBitsPerPixel(__dst) * a2 + 7) >> 3);
  memcpy(v18 + 45, a4, 0x130uLL);
  if (*(a4 + 40))
  {
    v18[50] = (v18 + 51);
  }

  v18[83] = a5;
  v18[84] = v33;
  v34 = !v15;
  if (!a1)
  {
    v34 = 1;
  }

  if (v34)
  {
    a1 = 0;
  }

  else
  {
    CFRetain(a1);
  }

  v18[86] = a1;
  if (a7)
  {
    CFRetain(a7);
  }

  v18[3] = a7;
  *(v18 + 180) = a10;
  *(v18 + 725) = v44;
  v38 = v18[83];
  v39 = v18[42];
  if (!v39)
  {
    v39 = v18[43];
  }

  if (v38 <= v39)
  {
    v38 = v39;
  }

  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v18[92] = v40;
  v41 = malloc_type_calloc(1uLL, v40, 0x3E9492D1uLL);
  v18[91] = v41;
  if (!v41)
  {
    provider_for_destination_release_info(v18);
    CGPostError("%s failed");
    return 0;
  }

  return v30;
}

uint64_t provider_for_destination_retain_data(uint64_t *a1)
{
  CGDataProviderRetainData(*a1);
  v2 = *a1;

  return CGDataProviderRetainBytePtr(v2);
}

uint64_t get_image_pointer(void *a1)
{
  if (a1[12] || a1[23])
  {
    return 0;
  }

  v2 = a1[24];
  if (!v2)
  {
    v4 = a1[18];
    v5 = CGDataProviderRetainBytePtr(v4);
    v2 = v5;
    if (v5)
    {
      a1[24] = v5;
    }

    else
    {
      CGDataProviderReleaseBytePtr(v4);
    }

    a1[11] = 0;
  }

  return v2;
}

uint64_t CGAccessSessionGetChunksAtPosition(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a1 || !a3 || !a6)
  {
    return 0;
  }

  v10 = *a1;
  if (!v10)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL");
  }

  v15 = *(v10 + 20);
  if (v15 > 1)
  {
    if (v15 == 3)
    {
LABEL_15:
      v17 = a1[2];
      v18 = a2 - v17;
      if (a2 != v17)
      {
        if (a2 <= v17)
        {
          CGDataProviderRewind(v10);
          v19 = CGDataProviderSkipForwardInternal(*a1, a2);
        }

        else
        {
          v19 = a1[2] + CGDataProviderSkipForwardInternal(v10, v18);
        }

        a1[2] = v19;
      }

      return get_chunks_sequential(a1, a3, a4, a5, a6, a7);
    }

    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15)
  {
    if (v15 != 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  a1[2] = a2;

  return get_chunks_direct(a1, a3, a4, a5, a6, a7);
}

unint64_t provider_for_destination_get_bytes_at_position(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  if ((*(a1 + 724) & 1) == 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_at_position", 611, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "info->src_provider_uses_random_access == true", "", v4, v5);
  }

  return provider_for_destination_get_bytes_at_position_inner(a1, a2, a3, a4, 0);
}

unint64_t destination_position_to_source_position(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("destination_position_to_source_position", 107, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationUtils.c", "destination_position >= 0", "position %lld", a6);
  }

  return byte_count_to_byte_count(a1, a2, a3, 0, a4, a5, a6);
}

void *create_image_data_handle(unint64_t a1, unint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = 0;
  if (!a1 || !a2)
  {
    return v5;
  }

  if (~a3 / a2 <= a1)
  {
    v13 = "NO";
    if (a4)
    {
      v13 = "YES";
    }

    CGPostError("%s overflow detected w = %zu h = %zu extra = %zu transient %s %s", "create_image_data_handle", a1, a2, a3, v13, a5);
    return 0;
  }

  v7 = a1 + a1 * a2 + a3;
  if ((v7 & 0xF) != 0)
  {
    v8 = 16 - (v7 & 0xF);
  }

  else
  {
    v8 = 0;
  }

  if (-25 - v8 <= v7)
  {
    return 0;
  }

  v5 = malloc_type_malloc(0x18uLL, 0x1080040CCC1B60FuLL);
  if (v5)
  {
    v9 = v7 + v8 + 24;
    if (a4)
    {
      v10 = malloc_default_zone();
      v11 = v9;
      v12 = 1423544017;
    }

    else
    {
      v10 = malloc_default_purgeable_zone();
      v11 = v9;
      v12 = 1806014493;
    }

    v15 = malloc_type_zone_calloc(v10, v11, 1uLL, v12);
    v5[2] = v15;
    if (v15)
    {
      __CFSetLastAllocationEventName();
      *v5 = v9;
      *(v5 + 8) = a4 ^ 1;
      return v5;
    }

    free(v5);
    return 0;
  }

  return v5;
}

void img_decode_end(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[23];
  if (v5 || a1[24])
  {
    v6 = a1[12];
    if (v6 == -1)
    {
      if (v5)
      {
        CGImageBlockSetRelease(*v5);

        free(v5);
      }
    }

    else
    {
      if (v6)
      {
        _CGHandleAssert("img_decode_end", 1581, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "stage->param[IMG_DECODE_NDATA] == 0", "param = %ld", a1[12]);
      }

      v7 = a1[24];
      if (v7 && v5)
      {
        _CGHandleAssert("img_decode_end", 1585, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "ptr == NULL || session == NULL", "ptr = %p, session = %p", a1[24], v5);
      }

      if (v7)
      {
        v8 = a1[18];

        CGDataProviderReleaseBytePtr(v8);
      }

      else if (v5)
      {
        v9 = a1[23];

        CGAccessSessionRelease(v9);
      }
    }
  }
}

void img_release_resources(uint64_t a1)
{
  v2 = *(a1 + 28);
  if ((v2 - 3) >= 3)
  {
    if (v2 == 1)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        CGColorSpaceRelease(v4);
      }
    }
  }

  else if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (!*(a1 + 128))
  {
    v5 = *(a1 + 136);

    CGDataProviderRelease(v5);
  }
}

const void *__RIPShouldCacheImages_block_invoke()
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  RIPShouldCacheImages_should_cache = *(RIPGetCacheState_cache_state + 34);
  v1 = 1;
  result = get_BOOLean_property("RIPIMAGECACHE", copy_local_domain_value, &v1);
  if (result)
  {
    RIPShouldCacheImages_should_cache = v1;
  }

  return result;
}

const char **__img_globals_block_invoke()
{
  v0 = 0;
  while (2)
  {
    result = &_block_invoke_matte_additive;
    switch(v0)
    {
      case 1:
        v2 = "WWWWWWWW";
        goto LABEL_41;
      case 2:
        v2 = "-RRRRRGGGGGBBBBB";
        goto LABEL_41;
      case 3:
        v2 = "-rrrrrgggggbbbbb";
        goto LABEL_41;
      case 4:
        v2 = "RRRRRRRRGGGGGGGGBBBBBBBB";
        goto LABEL_41;
      case 5:
        v2 = "RRRRRRRRGGGGGGGGBBBBBBBBAAAAAAAA";
        goto LABEL_41;
      case 6:
        v2 = "rrrrrrrrggggggggbbbbbbbbaaaaaaaa";
        goto LABEL_41;
      case 7:
        v2 = "AAAAAAAARRRRRRRRGGGGGGGGBBBBBBBB";
        goto LABEL_41;
      case 8:
        v2 = "aaaaaaaarrrrrrrrggggggggbbbbbbbb";
        goto LABEL_41;
      case 9:
        v2 = "CCCCCCCCMMMMMMMMYYYYYYYYKKKKKKKK";
        goto LABEL_41;
      case 10:
        v2 = "ccccccccmmmmmmmmyyyyyyyykkkkkkkk";
        goto LABEL_41;
      case 11:
        v2 = "WWWWWWWWWWWWWWWW";
        goto LABEL_41;
      case 12:
        v2 = "wwwwwwwwwwwwwwww";
        goto LABEL_41;
      case 13:
        v2 = "RRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBB";
        goto LABEL_41;
      case 14:
        v2 = "rrrrrrrrrrrrrrrrggggggggggggggggbbbbbbbbbbbbbbbb";
        goto LABEL_41;
      case 15:
        v2 = "RRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA";
        goto LABEL_41;
      case 16:
        v2 = "rrrrrrrrrrrrrrrrggggggggggggggggbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa";
        goto LABEL_41;
      case 17:
        v2 = "CCCCCCCCCCCCCCCCMMMMMMMMMMMMMMMMYYYYYYYYYYYYYYYYKKKKKKKKKKKKKKKK";
        goto LABEL_41;
      case 18:
        v2 = "ccccccccccccccccmmmmmmmmmmmmmmmmyyyyyyyyyyyyyyyykkkkkkkkkkkkkkkk";
        goto LABEL_41;
      case 19:
        v2 = "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
        goto LABEL_41;
      case 20:
        v2 = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrggggggggggggggggggggggggggggggggbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb";
        goto LABEL_41;
      case 21:
        v2 = "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
        goto LABEL_41;
      case 22:
        v2 = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrggggggggggggggggggggggggggggggggbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
        goto LABEL_41;
      case 23:
        v2 = "WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW";
        goto LABEL_41;
      case 24:
        v2 = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww";
        goto LABEL_41;
      case 25:
        v2 = "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK";
        goto LABEL_41;
      case 26:
        v2 = "ccccccccccccccccccccccccccccccccmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyykkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk";
        goto LABEL_41;
      case 27:
        goto LABEL_42;
      case 28:
        result = &_block_invoke_matte_lab;
        goto LABEL_42;
      case 29:
        v2 = "_Wf16_";
        goto LABEL_41;
      case 30:
        v2 = "_WF16_";
        goto LABEL_41;
      case 31:
        v2 = "_RGBf16_";
        goto LABEL_41;
      case 32:
        v2 = "_RGBF16_";
        goto LABEL_41;
      case 33:
        v2 = "_RGBAf16_";
        goto LABEL_41;
      case 34:
        v2 = "_RGBAF16_";
        goto LABEL_41;
      case 35:
        v2 = "_CMYKf16_";
        goto LABEL_41;
      case 36:
        v2 = "_CMYKF16_";
        goto LABEL_41;
      case 37:
        v2 = "_GRAYA8_";
        goto LABEL_41;
      case 38:
        v2 = "_CIF10_";
        goto LABEL_41;
      default:
        v2 = "AAAAAAAA";
LABEL_41:
        result = CGBlt_depth(v2);
LABEL_42:
        img_globals_globals[v0++] = result;
        if (v0 != 39)
        {
          continue;
        }

        return result;
    }
  }
}

uint64_t __get_cache_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  get_cache_image_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_image_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "image_cache != NULL", "NULL image cache");
  }

  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  pthread_mutexattr_settype(&v2, 2);
  pthread_mutex_init(get_cache_image_cache, &v2);
  pthread_mutexattr_destroy(&v2);
  v1 = *byte_1EF236F00;
  if (cache_create("com.apple.CoreGraphics.image_handle_cache", &v1, (get_cache_image_cache + 64)))
  {
    _CGHandleAssert("get_cache_block_invoke", 180, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPImageCache.c", "cache_create(com.apple.CoreGraphics.image_handle_cache, &attrs, &image_cache->cache) == 0", "cache creation failed");
  }

  return cache_set_count_hint();
}

CGColorSpaceRef CGImageGetNumberOfColorComponents(CGColorSpaceRef result)
{
  if (result)
  {
    if ((*(result + 39) & 2) != 0)
    {
      return 1;
    }

    else
    {
      result = CGImageGetColorSpace(result);
      if (result)
      {
        return *(*(result + 3) + 48);
      }
    }
  }

  return result;
}

CGImageByteOrderInfo CGImageGetByteOrderInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8) & 0x7000;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

unint64_t *img_image(unint64_t *a1, uint64_t a2, void *a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  Size = CGImageGetSize(a6);
  result = 0;
  if (Size - 0x4000000 >= 0xFFFFFFFFFC000001 && v14 - 0x4000000 >= 0xFFFFFFFFFC000001)
  {
    *a1 = Size;
    a1[1] = v14;
    a1[6] = Size;
    a1[7] = v14;
    ColorSpace = CGImageGetColorSpace(a6);
    Type = CGColorSpaceGetType(ColorSpace);
    switch(Type)
    {
      case 5:
        goto LABEL_7;
      case 9:
LABEL_8:
        CGPostError("%s: Invalid image parameters");
        return 0;
      case 7:
LABEL_7:
        if (CGImageGetAlphaInfo(a6) == kCGImageAlphaPremultipliedFirst || CGImageGetAlphaInfo(a6) == kCGImageAlphaPremultipliedLast)
        {
          goto LABEL_8;
        }

        break;
    }

    if (a3)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0;
    }

    if (v19 == 1 && (!a6 || (*(a6 + 39) & 2) == 0))
    {
      memcpy(__dst, a5, 0x130uLL);
      CGImageBitmapInfo = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst);
      v21 = CGImageBitmapInfo & 0x1F;
LABEL_25:
      if (!a6 || (*(a6 + 39) & 2) == 0)
      {
        Cache = CGColorTransformGetCache(a3);
        if (Cache)
        {
          Cache = Cache[2];
        }

        goto LABEL_30;
      }

LABEL_29:
      Cache = CGImageGetColorSpace(a6);
LABEL_30:
      v108 = CGImageBitmapInfo;
      if (Cache)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      a1[2] = Cache;
      *(a1 + 6) = v24;
      if (a6)
      {
        v25 = *(a6 + 72);
        if (v19)
        {
          if ((*(a6 + 39) & 2) != 0)
          {
            *(&__dst[17] + 4) = 0u;
            __dst[18] = 0u;
            v37 = *(a6 + 40);
            v38 = *(a6 + 48);
            *&__dst[0] = 1;
            *(__dst + 8) = xmmword_18439CC30;
            *(&__dst[1] + 1) = 0;
            memset(&__dst[2], 0, 244);
            v39 = CGDataProviderCreateForDestinationWithImage(0, __dst, v37, v38, a6, v7, 1);
            a1[17] = v39;
            *(a1 + 32) = 1;
            if (v39)
            {
              v40 = v39[20];
              if (!v40)
              {
                goto LABEL_62;
              }

              v41 = v40(v39[3]);
              v39 = a1[17];
              if (!v39)
              {
                goto LABEL_104;
              }

              if (!v41)
              {
LABEL_62:
                v41 = v25;
              }

              if (v39[12])
              {
                v42 = 4;
                v43 = v108;
              }

              else
              {
                v43 = v108;
                if (v39[14])
                {
                  v42 = 4;
                }

                else if (v39[10])
                {
                  v42 = 4;
                }

                else
                {
                  v42 = 3;
                }
              }

              *(a1 + 7) = v42;
              a1[16] = 0;
              v70 = 8;
              v61 = 8;
LABEL_160:
              v69 = 0;
              a1[15] = 0;
              a1[18] = v41;
              a1[5] = a6;
              goto LABEL_161;
            }

LABEL_104:
            CGPostError("%s: Bad image source");
            return 0;
          }

          if (*(a6 + 176))
          {
            v26 = a5[6] - 1;
            if (v26 > 8)
            {
              v105 = 0;
            }

            else
            {
              v105 = qword_1844E0DE8[v26];
            }

            v104 = *(a5 + 2);
            BitsPerComponent = CGPixelComponentGetBitsPerComponent(*a5);
            v53 = *a1;
            v54 = a1[1];
            memcpy(__dst, a5, 0x130uLL);
            v55 = CGDataProviderCreateWithSoftMaskAndMatte(a3, __dst, v53, v54, a6, v7);
            a1[17] = v55;
            *(a1 + 32) = 1;
            if (v55)
            {
              v56 = *(v55 + 160);
              if (!v56)
              {
                goto LABEL_86;
              }

              v57 = v56(*(v55 + 24));
              if (a1[17])
              {
                v41 = v57;
                if (v57)
                {
LABEL_87:
                  v58 = CGColorTransformGetCache(a3);
                  if (v58)
                  {
                    v50 = v58[2];
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v59 = v108;
                  v61 = BitsPerComponent;
                  v62 = v104;
                  v60 = v105;
LABEL_131:
                  v76 = v60 + v62;
                  a1[2] = v50;
                  v77 = a5[6];
                  if (v77 == 9)
                  {
                    v77 = 3;
                  }

                  else if (v77 == 8)
                  {
                    v77 = 1;
                  }

                  v70 = v61 * v76;
                  *(a1 + 6) = v77;
                  v78 = a1[17];
                  if (v78[12] || v78[14])
                  {
                    v79 = 4;
                  }

                  else if (v78[10])
                  {
                    v79 = 4;
                  }

                  else
                  {
                    v79 = 3;
                  }

                  *(a1 + 7) = v79;
                  a1[16] = 0;
                  v80 = v59 & 0xFFF080E0;
                  memcpy(__dst, a5, 0x130uLL);
                  v43 = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst) | v80;
                  goto LABEL_160;
                }

LABEL_86:
                v41 = v25;
                goto LABEL_87;
              }
            }

            goto LABEL_104;
          }

LABEL_40:
          v27 = a5[6] - 1;
          if (v27 > 8)
          {
            v103 = 0;
          }

          else
          {
            v103 = qword_1844E0DE8[v27];
          }

          v101 = *(a5 + 2);
          v107 = CGPixelComponentGetBitsPerComponent(*a5);
          if (a6)
          {
            v44 = *(a6 + 40);
            v45 = *(a6 + 48);
          }

          else
          {
            v44 = 0;
            v45 = 0;
          }

          memcpy(__dst, a5, 0x130uLL);
          v46 = CGDataProviderCreateForDestinationWithImage(a3, __dst, v44, v45, a6, v7, 1);
          a1[17] = v46;
          *(a1 + 32) = 1;
          if (!v46)
          {
            goto LABEL_104;
          }

          v47 = *(v46 + 160);
          if (!v47)
          {
            goto LABEL_73;
          }

          v48 = v47(*(v46 + 24));
          if (!a1[17])
          {
            goto LABEL_104;
          }

          v41 = v48;
          if (!v48)
          {
LABEL_73:
            v41 = v25;
          }

          v49 = CGColorTransformGetCache(a3);
          if (v49)
          {
            v50 = v49[2];
          }

          else
          {
            v50 = 0;
          }

          v59 = v108;
          v60 = v103;
          v61 = v107;
          v62 = v101;
          goto LABEL_131;
        }

        v102 = *(a6 + 64);
        v106 = *(a6 + 56);
      }

      else
      {
        v25 = 0;
        v102 = 0;
        v106 = 0;
        if (v19)
        {
          goto LABEL_40;
        }
      }

      v28 = CFGetTypeID(a6);
      if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
      {
        dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
      }

      if (v28 != CGImageGetTypeID_image_type_id)
      {
        goto LABEL_93;
      }

      v29 = *(a6 + 208);
      if (!v29)
      {
        goto LABEL_93;
      }

      v30 = *(a6 + 40);
      v31 = *(a6 + 48);
      if (!is_mul_ok(v30, v31) || v30 * v31 > 0x9C4 || *(a6 + 152) | *(a6 + 240))
      {
        a1[17] = v29;
LABEL_51:
        v32 = -1;
        v33 = 5;
        goto LABEL_98;
      }

      if (!CGImageGetDataProviderInternal(a6, 1))
      {
        v81 = *(a6 + 208);
        a1[17] = v81;
        v64 = a1 + 17;
        if (v81)
        {
          goto LABEL_51;
        }
      }

      else
      {
LABEL_93:
        a1[17] = 0;
        v64 = a1 + 17;
      }

      DataProviderInternal = CGImageGetDataProviderInternal(a6, 0);
      v66 = CGDataProviderRetain(DataProviderInternal);
      *v64 = v66;
      if (!v66)
      {
        goto LABEL_104;
      }

      v32 = 0;
      if (*(v66 + 4) == -1)
      {
        v33 = 3;
      }

      else
      {
        v33 = 4;
      }

LABEL_98:
      *(a1 + 7) = v33;
      a1[15] = 0;
      a1[16] = v32;
      a1[18] = v25;
      a1[5] = a6;
      v67 = a1[2];
      Decode = CGImageGetDecode(a6);
      v69 = Decode;
      if (!Decode)
      {
LABEL_102:
        v43 = v108;
        v70 = v102;
LABEL_103:
        v61 = v106;
        goto LABEL_161;
      }

      if (v24 == 4 || v24 == 2)
      {
        if (*Decode != 0.0)
        {
          goto LABEL_102;
        }

        v43 = v108;
        v61 = v106;
        if (Decode[1] != 1.0)
        {
          v70 = v102;
          goto LABEL_161;
        }

        v71 = 1;
      }

      else
      {
        v71 = 0;
      }

      if (v67)
      {
        v72 = *(v67[3] + 48);
        v73 = CGColorSpaceGetType(v67);
        if (v73 <= 5)
        {
          if (v73 >= 5)
          {
            if (v73 != 5)
            {
              goto LABEL_102;
            }

            memset(__dst, 0, 96);
            CGColorSpaceGetLabData(v67, __dst);
            v94 = (v69 + 16 * v71);
            if (*v94 != 0.0)
            {
              goto LABEL_102;
            }

            v95 = (v69 + 16 * v71);
            if (v95[1] != 100.0 || v94[2] != *&__dst[3] || v94[3] != *(&__dst[3] + 1) || v95[4] != *&__dst[4] || v95[5] != *(&__dst[4] + 1))
            {
              goto LABEL_102;
            }

            v71 += 3;
LABEL_249:
            v70 = v102;
LABEL_250:
            if ((v24 & 0xFFFFFFFD) != 1 || *(v69 + 16 * v71) == 0.0 && *(v69 + 16 * v71 + 8) == 1.0)
            {
              v69 = 0;
            }

            goto LABEL_254;
          }

LABEL_115:
          if (v72)
          {
            v74 = v72 + v71;
            v75 = (v69 + 16 * v71 + 8);
            v43 = v108;
            v70 = v102;
            v61 = v106;
            while (*(v75 - 1) == 0.0 && *v75 == 1.0)
            {
              v75 += 2;
              if (!--v72)
              {
                goto LABEL_155;
              }
            }

            goto LABEL_161;
          }

          goto LABEL_249;
        }

        if (v73 > 9)
        {
          if ((v73 - 10) >= 2)
          {
            goto LABEL_102;
          }
        }

        else if (v73 != 6)
        {
          if (v73 != 7)
          {
            if (v73 != 8)
            {
              goto LABEL_102;
            }

            goto LABEL_115;
          }

          if (*(v69 + 16 * v71) != 0.0)
          {
            goto LABEL_102;
          }

          v98 = v67[3];
          if (*(v98 + 28) == 5)
          {
            v99 = *(*(v98 + 96) + 8);
          }

          else
          {
            v99 = 1.84467441e19;
          }

          v70 = v102;
          if (*(v69 + 16 * v71 + 8) == v99)
          {
            ++v71;
            goto LABEL_250;
          }

LABEL_254:
          v43 = v108;
          goto LABEL_103;
        }

        v82 = CGColorSpaceICCGetRange(v67);
        if (!v82)
        {
          goto LABEL_102;
        }

        if (v72)
        {
          v74 = v72 + v71;
          v83 = (v69 + 16 * v71 + 8);
          v84 = (v82 + 8);
          v43 = v108;
          v70 = v102;
          v61 = v106;
          while (*(v83 - 1) == *(v84 - 1) && *v83 == *v84)
          {
            v83 += 2;
            v84 += 2;
            if (!--v72)
            {
LABEL_155:
              v71 = v74;
              goto LABEL_250;
            }
          }

LABEL_161:
          v85 = 0;
          a1[11] = v69;
          a1[8] = v61;
          a1[9] = v70;
          *(a1 + 20) = v43;
          if (!v69 && *(a1 + 7) == 5 && v61 == 8 && v70 == 32)
          {
            v85 = a1[17];
            if (v85)
            {
              if ((*(v85 + 36) & 0x1F) != 0)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v85 = qword_1ED4E1E30;
              }

              else
              {
                v85 = 0;
              }
            }
          }

          a1[12] = v85;
          v87 = a1[2];
          if (!v87)
          {
            if (v70 != 8)
            {
              goto LABEL_176;
            }

            if (v61 != 8)
            {
              goto LABEL_176;
            }

            v88 = a1[11];
            if (!v88 || *v88 != 1.0 || v88[1] != 0.0)
            {
              goto LABEL_176;
            }

            if (img_globals_once != -1)
            {
              dispatch_once(&img_globals_once, &__block_literal_global_12116);
            }

            v89 = img_globals_globals[0];
LABEL_448:
            a1[14] = v89;
            return a1;
          }

          if (a1[11])
          {
LABEL_176:
            a1[14] = 0;
            return a1;
          }

          Model = CGColorSpaceGetModel(a1[2]);
          if ((Model - 3) <= 1)
          {
            v91 = CGColorSpaceGetType(v87);
            if (v91 <= 0xB && ((1 << v91) & 0xC40) != 0)
            {
              v92 = *(v87[3] + 48);
              switch(v92)
              {
                case 4:
                  Model = kCGColorSpaceModelCMYK;
                  break;
                case 3:
                  Model = kCGColorSpaceModelRGB;
                  break;
                case 1:
                  Model = kCGColorSpaceModelMonochrome;
                  break;
              }
            }
          }

          v93 = v43 & 0xF711F;
          if (v61 > 9)
          {
            if (v61 == 10)
            {
              if (v93 == 270336 && Model == kCGColorSpaceModelRGB)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1F20;
                goto LABEL_448;
              }

              goto LABEL_447;
            }

            if (v61 != 16)
            {
              if (v61 == 32)
              {
                if ((v43 & 0xF711Fu) > 0x2100)
                {
                  if ((v43 & 0xF711Fu) > 0x40FF)
                  {
                    if (v93 != 16645 && v93 != 16641)
                    {
                      if (v93 != 16640)
                      {
                        goto LABEL_447;
                      }

LABEL_303:
                      if (Model == kCGColorSpaceModelCMYK)
                      {
                        if (v70 == 128)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v89 = qword_1ED4E1EB8;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (Model != kCGColorSpaceModelRGB)
                      {
                        if (Model == kCGColorSpaceModelMonochrome && v70 == 32)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v89 = qword_1ED4E1EA8;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (v70 != 128)
                      {
                        if (v70 == 96)
                        {
                          if (img_globals_once != -1)
                          {
                            dispatch_once(&img_globals_once, &__block_literal_global_12116);
                          }

                          v89 = qword_1ED4E1E88;
                          goto LABEL_448;
                        }

                        goto LABEL_447;
                      }

                      if (img_globals_once == -1)
                      {
                        goto LABEL_293;
                      }

                      goto LABEL_462;
                    }

LABEL_290:
                    if (v70 != 128 || Model != kCGColorSpaceModelRGB)
                    {
                      goto LABEL_447;
                    }

                    if (img_globals_once == -1)
                    {
                      goto LABEL_293;
                    }

LABEL_462:
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
LABEL_293:
                    v89 = qword_1ED4E1E98;
                    goto LABEL_448;
                  }

                  if (v93 != 8449 && v93 != 8453 || v70 != 128 || Model != kCGColorSpaceModelRGB)
                  {
                    goto LABEL_447;
                  }

                  if (img_globals_once == -1)
                  {
LABEL_299:
                    v89 = qword_1ED4E1EA0;
                    goto LABEL_448;
                  }

LABEL_463:
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  goto LABEL_299;
                }

                if ((v43 & 0xF711Fu) <= 0x104)
                {
                  if (v93 == 256)
                  {
                    goto LABEL_303;
                  }

                  if (v93 != 257)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_290;
                }

                if (v93 == 261)
                {
                  goto LABEL_290;
                }

                if (v93 == 8448)
                {
                  if (Model == kCGColorSpaceModelCMYK)
                  {
                    if (v70 == 128)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v89 = qword_1ED4E1EC0;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (Model != kCGColorSpaceModelRGB)
                  {
                    if (Model == kCGColorSpaceModelMonochrome && v70 == 32)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v89 = qword_1ED4E1EB0;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (v70 != 128)
                  {
                    if (v70 == 96)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v89 = qword_1ED4E1E90;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  if (img_globals_once == -1)
                  {
                    goto LABEL_299;
                  }

                  goto LABEL_463;
                }
              }

LABEL_447:
              v89 = 0;
              goto LABEL_448;
            }

            if (Model != kCGColorSpaceModelCMYK)
            {
              if (Model != kCGColorSpaceModelRGB)
              {
                if (Model || v70 != 16)
                {
                  goto LABEL_447;
                }

                if ((v43 & 0xF711Fu) > 0x10FF)
                {
                  if (v93 == 4352)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v89 = qword_1ED4E1ED8;
                    goto LABEL_448;
                  }

                  if (v93 != 12288)
                  {
                    if (v93 != 12544)
                    {
                      goto LABEL_447;
                    }

LABEL_464:
                    _CGHandleAssert("img_depth", 3279, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
                  }
                }

                else if (v93)
                {
                  if (v93 == 4096)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v89 = qword_1ED4E1E50;
                    goto LABEL_448;
                  }

                  if (v93 != 256)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_464;
                }

                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1E48;
                goto LABEL_448;
              }

              if ((v43 & 0xF711Fu) <= 0x10FF)
              {
                if ((v43 & 0xF711Fu) > 0x100)
                {
                  if ((v43 & 0xF711Fu) > 0x1000)
                  {
                    if (v93 != 4097 && v93 != 4101 || v70 != 64)
                    {
                      goto LABEL_447;
                    }

LABEL_417:
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v89 = qword_1ED4E1E70;
                    goto LABEL_448;
                  }

                  if (v93 == 4096)
                  {
                    if (v70 != 64)
                    {
                      if (v70 == 48)
                      {
                        if (img_globals_once != -1)
                        {
                          dispatch_once(&img_globals_once, &__block_literal_global_12116);
                        }

                        v89 = qword_1ED4E1E60;
                        goto LABEL_448;
                      }

                      goto LABEL_447;
                    }

                    goto LABEL_417;
                  }

                  if (v93 != 257 && v93 != 261)
                  {
                    goto LABEL_447;
                  }

LABEL_461:
                  _CGHandleAssert("img_depth", 3319, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
                }

                if ((v43 & 0xF711Fu) <= 4)
                {
                  if (v93)
                  {
                    if (v93 != 1)
                    {
                      goto LABEL_447;
                    }

LABEL_421:
                    if (v70 != 64)
                    {
                      goto LABEL_447;
                    }

LABEL_422:
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v89 = qword_1ED4E1E68;
                    goto LABEL_448;
                  }

LABEL_373:
                  if (v70 != 64)
                  {
                    if (v70 == 48)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v89 = qword_1ED4E1E58;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }

                  goto LABEL_422;
                }

                if (v93 == 5)
                {
                  goto LABEL_421;
                }

                if (v93 != 256)
                {
                  goto LABEL_447;
                }

LABEL_465:
                _CGHandleAssert("img_depth", 3312, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
              }

              if ((v43 & 0xF711Fu) < 0x3000)
              {
                if (v93 == 4352)
                {
                  if (v70 != 64)
                  {
                    if (v70 == 48)
                    {
                      if (img_globals_once != -1)
                      {
                        dispatch_once(&img_globals_once, &__block_literal_global_12116);
                      }

                      v89 = qword_1ED4E1EE8;
                      goto LABEL_448;
                    }

                    goto LABEL_447;
                  }
                }

                else if (v93 != 4353 && v93 != 4357 || v70 != 64)
                {
                  goto LABEL_447;
                }

                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1EF8;
                goto LABEL_448;
              }

              if ((v43 & 0xF711Fu) > 0x3004)
              {
                if ((v43 & 0xF711Fu) > 0x30FF)
                {
                  if (v93 != 12544)
                  {
                    if (v93 != 12545 && v93 != 12549)
                    {
                      goto LABEL_447;
                    }

                    goto LABEL_461;
                  }

                  goto LABEL_465;
                }

                v100 = 12293;
              }

              else
              {
                if (v93 == 12288)
                {
                  goto LABEL_373;
                }

                v100 = 12289;
              }

              if (v93 != v100)
              {
                goto LABEL_447;
              }

              goto LABEL_421;
            }

            if (v70 != 64)
            {
              goto LABEL_447;
            }

            if ((v43 & 0xF711Fu) > 0x10FF)
            {
              if (v93 == 4352)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1F08;
                goto LABEL_448;
              }

              if (v93 != 12288)
              {
                if (v93 != 12544)
                {
                  goto LABEL_447;
                }

LABEL_443:
                _CGHandleAssert("img_depth", 3349, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
              }
            }

            else if (v93)
            {
              if (v93 == 4096)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1E80;
                goto LABEL_448;
              }

              if (v93 != 256)
              {
                goto LABEL_447;
              }

              goto LABEL_443;
            }

            if (img_globals_once != -1)
            {
              dispatch_once(&img_globals_once, &__block_literal_global_12116);
            }

            v89 = qword_1ED4E1E78;
            goto LABEL_448;
          }

          if (v61 == 5)
          {
            if (v70 == 16 && Model == kCGColorSpaceModelRGB)
            {
              switch(v93)
              {
                case 12294:
                  goto LABEL_234;
                case 4102:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v89 = qword_1ED4E1E08;
                  goto LABEL_448;
                case 6:
LABEL_234:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v89 = qword_1ED4E1E00;
                  goto LABEL_448;
              }
            }

            goto LABEL_447;
          }

          if (v61 != 8)
          {
            goto LABEL_447;
          }

          if (Model == kCGColorSpaceModelCMYK)
          {
            if (v70 == 32)
            {
              switch(v93)
              {
                case 0x4000:
                  goto LABEL_278;
                case 0x2000:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v89 = qword_1ED4E1E40;
                  goto LABEL_448;
                case 0:
LABEL_278:
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v89 = qword_1ED4E1E38;
                  goto LABEL_448;
              }
            }

            goto LABEL_447;
          }

          if (Model != kCGColorSpaceModelRGB)
          {
            if (Model == kCGColorSpaceModelMonochrome)
            {
              if (!v93 && v70 == 8)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1DF8;
                goto LABEL_448;
              }

              if ((v43 & 0xF711B) == 1 && v70 == 16)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1F18;
                if (qword_1ED4E1F18 == a2)
                {
                  goto LABEL_448;
                }
              }
            }

            goto LABEL_447;
          }

          if ((v43 & 0xF711Fu) > 0x2001)
          {
            if ((v43 & 0xF711Fu) > 0x4000)
            {
              if ((v43 & 0xF711Fu) > 0x4004)
              {
                v96 = v70;
                if (v93 != 16389)
                {
                  v97 = 16390;
LABEL_380:
                  if (v93 != v97)
                  {
                    goto LABEL_447;
                  }

LABEL_381:
                  if (v70 == 32)
                  {
                    if (img_globals_once != -1)
                    {
                      dispatch_once(&img_globals_once, &__block_literal_global_12116);
                    }

                    v89 = qword_1ED4E1E28;
                    goto LABEL_448;
                  }

                  goto LABEL_447;
                }
              }

              else
              {
                v96 = v70;
                if (v93 != 16385)
                {
                  v97 = 16386;
                  goto LABEL_380;
                }
              }

              goto LABEL_385;
            }

            if (v93 == 8194)
            {
LABEL_350:
              if (v70 == 32)
              {
                if (img_globals_once != -1)
                {
                  dispatch_once(&img_globals_once, &__block_literal_global_12116);
                }

                v89 = qword_1ED4E1E30;
                goto LABEL_448;
              }

              goto LABEL_447;
            }

            if (v93 != 8197)
            {
              if (v93 != 8198)
              {
                goto LABEL_447;
              }

              goto LABEL_350;
            }

LABEL_357:
            if (v70 == 32)
            {
              if (img_globals_once != -1)
              {
                dispatch_once(&img_globals_once, &__block_literal_global_12116);
              }

              v89 = qword_1ED4E1E20;
              goto LABEL_448;
            }

            goto LABEL_447;
          }

          v96 = v70;
          if ((v43 & 0xF711Fu) > 4)
          {
            if (v93 != 5)
            {
              if (v93 == 6)
              {
                goto LABEL_381;
              }

              if (v93 != 8193)
              {
                goto LABEL_447;
              }

              goto LABEL_357;
            }
          }

          else
          {
            if (!v93)
            {
              if (v70 != 32)
              {
                if (v70 == 24)
                {
                  if (img_globals_once != -1)
                  {
                    dispatch_once(&img_globals_once, &__block_literal_global_12116);
                  }

                  v89 = qword_1ED4E1E10;
                  goto LABEL_448;
                }

                goto LABEL_447;
              }

              goto LABEL_386;
            }

            if (v93 != 1)
            {
              if (v93 != 2)
              {
                goto LABEL_447;
              }

              goto LABEL_381;
            }
          }

LABEL_385:
          if (v96 != 32)
          {
            goto LABEL_447;
          }

LABEL_386:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v89 = qword_1ED4E1E18;
          goto LABEL_448;
        }

        goto LABEL_249;
      }

      if (Decode[2 * v71] != 0.0)
      {
        goto LABEL_102;
      }

      v70 = v102;
      if (Decode[2 * v71 + 1] == 1.0)
      {
        goto LABEL_250;
      }

      goto LABEL_254;
    }

    CGImageBitmapInfo = CGImageGetBitmapInfo(a6);
    if ((CGImageBitmapInfo & 0x7000) != 0)
    {
LABEL_18:
      if ((CGImageBitmapInfo & 0x1Fu) - 1 < 4)
      {
        v22 = 1;
      }

      else
      {
        v22 = v19;
      }

      if (v22)
      {
        v21 = CGImageBitmapInfo & 0x1F;
      }

      else
      {
        v21 = 0;
      }

      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v34 = CGImageGetColorSpace(a6);
    v35 = CGColorSpaceGetModel(v34);
    if (v35 != kCGColorSpaceModelRGB)
    {
      if (v35 || !a6)
      {
        goto LABEL_18;
      }

      v36 = *(a6 + 56);
      if (v36 != 16)
      {
        if (v36 != 32)
        {
          goto LABEL_18;
        }

LABEL_80:
        CGImageBitmapInfo |= 0x4000u;
        goto LABEL_18;
      }

LABEL_108:
      CGImageBitmapInfo |= 0x3000u;
      goto LABEL_18;
    }

    if (a6)
    {
      v51 = *(a6 + 56);
      switch(v51)
      {
        case 8:
          v63 = 1;
LABEL_145:
          if ((((CGImageBitmapInfo & 0x1F) != 0) & v63) != 0)
          {
            CGImageBitmapInfo |= 0x4000u;
          }

          goto LABEL_18;
        case 16:
          goto LABEL_108;
        case 32:
          goto LABEL_80;
      }
    }

    v63 = 0;
    goto LABEL_145;
  }

  return result;
}

void *CGImageGetMaskingColors(void *result)
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
      return v1[21];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGBitmapPixelInfoIsEqualToBitmapPixelInfo(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a1 + 16);
    if (v2 == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28))
    {
      v3 = *(a1 + 40);
      v4 = *(a2 + 40);
      if (!v3)
      {
        if (!v4)
        {
          return 1;
        }

        v3 = &standard_decode;
      }

      if (!v4)
      {
        v4 = &standard_decode;
      }

      if (v2)
      {
        v5 = *v3;
        v6 = *v4;
        v7 = 1;
        while (v5 == v6)
        {
          v5 = v3[v7];
          v6 = v4[v7];
          result = v5 == v6;
          if (v7 < v2)
          {
            ++v7;
            if (v5 == v6)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

void *img_data_lock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned __int8 a12, unsigned int a13)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v16 = v15;
  v287 = v17;
  v19 = v18;
  v21 = v20;
  v297 = v22;
  v24 = v23;
  v25 = v14;
  v322 = *MEMORY[0x1E69E9840];
  v291 = v13;
  if (a10)
  {
    v26 = *(a10 + 2) & 0x3FLL;
    v27 = v26;
  }

  else if ((a11 - 2) > 3)
  {
    v26 = 8;
    v27 = 8;
  }

  else
  {
    v27 = qword_1844F1B88[a11 - 2];
    v26 = 8;
  }

  v28 = a9;
  if (v15)
  {
    v29 = a10;
    if (a10)
    {
      v30 = *(v14 + 128) == 0;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      v31 = a9;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v29 = a10;
    v31 = 0;
  }

  v298 = 0;
  v299 = 0;
  bzero(&v301, 0xB40uLL);
  v33 = *v25;
  v32 = *(v25 + 8);
  v293 = v24;
  if (v24 == *v25)
  {
    v34 = 0;
    v35 = v297;
    if ((v19 - 3) <= 1)
    {
      v36 = *(v25 + 8);
      v296 = *v25;
      if (v32 == v297)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v36 = *(v25 + 8);
    v296 = *v25;
    goto LABEL_22;
  }

  v35 = v297;
  if ((v19 - 3) > 1)
  {
    v34 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v34 = 2;
  LODWORD(v36) = v35;
  LODWORD(v296) = v293;
LABEL_22:
  v37 = *(v25 + 28);
  if ((v37 - 3) <= 2 && (v33 != *(v25 + 48) || v32 != *(v25 + 56)))
  {
    v34 |= 0x80u;
  }

  if (!v21)
  {
    v286 = 0;
    goto LABEL_34;
  }

  v38 = *(v21 + 4);
  v39 = v38 & ~(v38 >> 31);
  if (*(v21 + 12) + v38 <= v35)
  {
    v40 = *(v21 + 12) + v38;
  }

  else
  {
    v40 = v35;
  }

  if (v40 <= v39)
  {
    goto LABEL_609;
  }

  if (v40 - v39 == v35)
  {
    v286 = v39;
LABEL_34:
    v41 = 1;
    v289 = v36;
    goto LABEL_54;
  }

  if (v35 != v36)
  {
    v42 = v36 / v35;
    v40 = vcvtpd_s64_f64(v42 * v40);
    v39 = vcvtmd_s64_f64(v42 * v39);
    if (v40 >= v36)
    {
      v40 = v36;
    }
  }

  if (v39 >= 17)
  {
    v43 = 16;
  }

  else
  {
    v43 = 16 - v39;
  }

  if (v39 >= 17)
  {
    v44 = v39;
  }

  else
  {
    v44 = 0;
  }

  v45 = v43 + v40;
  if (v40 - v44 + 15 >= v35)
  {
    v40 = v35;
  }

  if (v45 >= v35)
  {
    v40 = v35;
  }

  v46 = v40 - v44;
  v41 = v46 >= v35;
  if (v46 >= v35)
  {
    v40 = v35;
  }

  v289 = v40;
  if (v46 < v35)
  {
    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  v286 = v47;
LABEL_54:
  v48 = *(v25 + 120);
  if (v48)
  {
    if (!v41)
    {
      if (*v48 > v33 || v48[2] + *v48 < 0)
      {
        goto LABEL_609;
      }

      v50 = v286;
      v51 = v289;
      if (v32 != v36)
      {
        if (v289 - v286 == v36)
        {
          v50 = 0;
          v51 = *(v25 + 8);
        }

        else
        {
          v63 = v32 / v36;
          v51 = vcvtpd_s64_f64(v63 * v289);
          v50 = vcvtmd_s64_f64(v63 * v286);
          if (v51 >= v32)
          {
            v51 = *(v25 + 8);
          }
        }
      }

      v64 = v32 - v50;
      v65 = v48[1];
      if (v64 < v65 || v32 - v51 > v48[3] + v65)
      {
        goto LABEL_609;
      }
    }

    v34 |= 1u;
  }

  if (v37 < 3)
  {
    v49 = 1;
  }

  else
  {
    v49 = v31;
  }

  v294 = v36;
  if ((v49 & 1) == 0)
  {
    if (CGImageGetMaskingColors(*(v25 + 40)))
    {
      v34 |= 0x10u;
    }

    else if (CGImageGetMask(*(v25 + 40)))
    {
      Matte = CGImageGetMatte(*(v25 + 40));
      v53 = 48;
      if (!Matte)
      {
        v53 = 16;
      }

      v34 |= v53;
    }

    LODWORD(v36) = v294;
  }

  v54 = *(v25 + 16);
  v285 = v19;
  v282 = v54;
  if (!v54)
  {
    if (img_globals_once != -1)
    {
      dispatch_once(&img_globals_once, &__block_literal_global_12116);
      LODWORD(v36) = v294;
    }

    v59 = 0;
    v60 = img_globals_globals[0];
    v284 = img_globals_globals[0];
    if (!v29)
    {
      v60 = 0;
    }

    v281 = v60;
    goto LABEL_130;
  }

  BaseColorSpace = *(v25 + 16);
  v56 = v41;
  v57 = *(v25 + 24);
  v284 = *(v25 + 112);
  if ((v34 & 0xA2) != 0)
  {
    if (CGColorSpaceGetType(v54) == 7)
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
      v34 |= 8u;
      v27 = 8;
    }

    LODWORD(v36) = v294;
  }

  if (!v16 || (*(v25 + 32) & 1) != 0)
  {
    goto LABEL_105;
  }

  if (CGColorTransformConvertNeedsCMS(v16, BaseColorSpace, v287))
  {
    goto LABEL_81;
  }

  Type = CGColorSpaceGetType(BaseColorSpace);
  if (Type > 0xB)
  {
LABEL_102:
    if ((v31 & 1) == 0)
    {
      goto LABEL_81;
    }

    BaseColorSpace = v282;
    goto LABEL_104;
  }

  if (((1 << Type) & 0x1F) == 0)
  {
    if (((1 << Type) & 0xC40) != 0)
    {
      if (!BaseColorSpace || (v62 = *(*(BaseColorSpace + 3) + 48), v62 > 4) || ((1 << v62) & 0x1A) == 0)
      {
LABEL_81:
        Cache = CGColorTransformGetCache(v16);
        if (Cache)
        {
          BaseColorSpace = Cache[2];
        }

        else
        {
          BaseColorSpace = 0;
        }

        LODWORD(v36) = v294;
        v59 = v57;
        v34 |= 4u;
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    goto LABEL_102;
  }

LABEL_104:
  LODWORD(v36) = v294;
LABEL_105:
  v59 = v57;
LABEL_106:
  v41 = v56;
  v28 = a9;
  if (v29)
  {
    v66 = *v29 != 67637640;
    v67 = *v29 != 134886228;
  }

  else
  {
    v66 = 1;
    v67 = 1;
  }

  v26 = v27;
  if (!BaseColorSpace)
  {
    goto LABEL_117;
  }

  v68 = *(*(BaseColorSpace + 3) + 48);
  if (v68 == 4)
  {
    v281 = v29;
    v70 = (v34 & 0x10) == 0 && *(v25 + 24) == 0;
    v69 = 8;
LABEL_128:
    if (!v70)
    {
      v59 = v69;
    }

    goto LABEL_130;
  }

  if (v68 != 3)
  {
    if (v68 == 1)
    {
      v281 = v29;
      v30 = !v66;
      v69 = 8;
      if (v30)
      {
        v69 = v59;
      }

      v70 = *(v25 + 24) == 0;
      goto LABEL_128;
    }

LABEL_117:
    img_release_resources(v25);
    CGPostError("%s: Cannot convert to destination");
    return 0;
  }

  v71 = *(v25 + 24);
  v281 = v29;
  if (v71 == 0 || v67)
  {
    if (v71 > 7)
    {
      if ((v71 - 8) >= 2)
      {
        goto LABEL_130;
      }
    }

    else if (v71)
    {
      if (v71 == 3)
      {
        v59 = 1;
        goto LABEL_130;
      }

      if (v71 != 4)
      {
        goto LABEL_130;
      }
    }

    else if ((v34 & 0x10) == 0)
    {
      goto LABEL_130;
    }

    v59 = 2;
    goto LABEL_130;
  }

  v59 = 8;
LABEL_130:
  v72 = a12;
  v73 = *(v25 + 112);
  v74 = *(v25 + 28);
  v75 = v74 - 3;
  if (v74 != 3 && (v34 & 0x96) == 0)
  {
    if (v74 == 2)
    {
      if (*(v25 + 128) && v73)
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v74 == 5)
      {
        v76 = *(v25 + 96);
        if (v76)
        {
LABEL_139:
          v279 = v59;
          LODWORD(v298) = 0;
          HIDWORD(v298) = v36 - v289;
          LODWORD(v299) = v296;
          HIDWORD(v299) = v289 - v286;
          if (v41)
          {
            v77 = 0;
          }

          else
          {
            v77 = &v298;
          }

          v78 = img_blocks_create(*(v25 + 136), 0, v77, v76);
          if (!v78)
          {
            goto LABEL_609;
          }

          v79 = v78;
          v73 = v78->i64[1];
          if (v73 || (v73 = *(v25 + 112)) != 0)
          {
            v81 = v293;
            v80 = v294;
            v82 = a11;
            if (v78[2].i64[1] == 1)
            {
              v83 = *v78[5].i64[0];
              if (v83)
              {
                v84 = v289;
                v85 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
                v86 = v85;
                if (v85)
                {
                  *(v85 + 22) = v287;
                  *(v85 + 23) = v285;
                  *(v85 + 24) = a11;
                  v85[14] = 0;
                  v85[15] = v79;
                  v85[13] = 0;
                  v85[10] = 0;
                  v85[2] = v79[2];
                  v87 = v79[3];
                  v85[3] = v87;
                  *(v85 + 8) = *(v79 + 14);
                  v88 = *(v79 + 17);
                  *(v85 + 9) = v87 - (*(v79 + 15) + v88);
                  *(v85 + 10) = *(v79 + 16);
                  *(v85 + 11) = v88;
                  v89 = *v79[10];
                  v85[7] = v89;
                  v90 = *v79[11];
                  *(v85 + 12) = v90;
                  if (*(v25 + 24) && (v91 = (*v73 >> 2) & 3, v91 >= 2))
                  {
                    v92 = v281;
                    if (v91 != 2)
                    {
                      goto LABEL_291;
                    }

                    *v85 = *(*(v73 + 1) + 8);
                    v85[8] = v89;
                  }

                  else
                  {
                    v90 = 0;
                    *v85 = **(v73 + 1);
                    v85[8] = 0;
                    v92 = v281;
                  }

                  goto LABEL_290;
                }

                CGImageBlockSetRelease(*v79);
                free(v79);
LABEL_301:
                img_release_resources(v25);
                CGPostError("%s: Cannot allocate memory", v291);
                return v86;
              }
            }

            else
            {
              LOBYTE(v83) = 0;
            }
          }

          else
          {
            LOBYTE(v83) = 1;
            v80 = v294;
            v82 = a11;
          }

          v316 = 0u;
          v317 = 0u;
          v314 = 0u;
          v315 = 0u;
          v312 = 0u;
          v313 = 0u;
          v310 = 0u;
          v311 = 0u;
          memset(v309, 0, sizeof(v309));
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          *&v302 = 0;
          *(&v302 + 1) = img_decode_end;
          *&v304 = vmovn_s64(v78[1]);
          v148 = *(v25 + 16);
          if (v148)
          {
            v149 = *(*(v148 + 24) + 48);
          }

          else
          {
            v149 = 1;
          }

          *(&v303 + 4) = __PAIR64__(*(v25 + 64), v149);
          HIDWORD(v303) = *(v25 + 24);
          if (v78[2].i64[1] != 1 || v78[3].i64[0] != 1 || (v150 = img_raw_read, !*v78[5].i64[0]))
          {
            v150 = img_blocks_read;
          }

          v278 = a12;
          v151 = *(v25 + 128);
          *&v302 = v150;
          *&v307 = v151;
          *(&v308 + 1) = v78[1].i64[0];
          *&v309[0] = v149;
          v144 = vextq_s8(*(v25 + 136), *(v25 + 136), 8uLL);
          *(v309 + 8) = v144;
          *(&v309[1] + 1) = v78 + 56;
          *(&v311 + 1) = v78;
          *(&v307 + 1) = (v78[1].i64[0] * *(v25 + 72) + 7) >> 3;
          if (v41)
          {
            v145 = 0;
            v146 = v296;
            v152 = v281;
            v134 = v279;
            v147 = v289;
          }

          else
          {
            v153 = v78[3].i32[3];
            v145 = v78[3].i32[2];
            v146 = v78[4].i32[0] + v145;
            v147 = v80 - v153;
            v286 = v80 - (v153 + v78[4].i32[1]);
            v152 = v281;
            v134 = v279;
          }

          if (v83)
          {
            v154 = &v301;
            v155 = v282;
            v156 = v145;
            goto LABEL_424;
          }

          v72 = a12;
LABEL_285:
          v275 = v145;
          v283 = v146 - v145;
          v277 = v147 - v286;
          v154 = &v301;
          v284 = v73;
          goto LABEL_482;
        }
      }

      if (v73)
      {
        if (v74 != 4)
        {
          if (v74 == 5)
          {
            v76 = *(v25 + 96);
            goto LABEL_139;
          }

LABEL_153:
          v84 = v289;
          v93 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
          v86 = v93;
          if (!v93)
          {
            goto LABEL_301;
          }

          *(v93 + 22) = v287;
          *(v93 + 23) = v285;
          *(v93 + 24) = a11;
          v93[14] = 0;
          v93[15] = 0;
          v93[13] = *(v25 + 40);
          v93[10] = 0;
          v94 = *v25;
          v93[2] = *v25;
          v95 = *(v25 + 8);
          v93[3] = v95;
          if (v34)
          {
            v94 = *(v25 + 120);
            v96 = *v94;
            v124 = v94[1];
            v125 = v94 + 2;
            LODWORD(v94) = v94[2];
            v98 = v125[1];
            v97 = v95 - (v124 + v98);
          }

          else
          {
            v96 = 0;
            v97 = 0;
            v98 = v95;
          }

          v92 = v281;
          *(v93 + 8) = v96;
          *(v93 + 9) = v97;
          *(v93 + 10) = v94;
          *(v93 + 11) = v98;
          v93[7] = **(v25 + 136);
          *(v93 + 12) = **(v25 + 144);
          v81 = v293;
          if (*(v25 + 24))
          {
            v126 = (*v73 >> 2) & 3;
            if (v126 > 1)
            {
              if (v126 != 2)
              {
LABEL_291:
                v86[9] = 0;
                v86[1] = v73;
                if (!v92)
                {
                  return v86;
                }

                v157 = v285;
                if ((v28 & 1) == 0)
                {
                  return v86;
                }

                goto LABEL_603;
              }

              *v93 = *(*(v73 + 1) + 8);
              v93[8] = **(v25 + 136);
              v90 = **(v25 + 144);
LABEL_290:
              *(v86 + 13) = v90;
              goto LABEL_291;
            }

            if (v126)
            {
              *v93 = *(*(v73 + 1) + 8);
              v93[8] = *(*(v25 + 136) + 8);
              v90 = *(*(v25 + 144) + 4);
              goto LABEL_290;
            }
          }

          v90 = 0;
          *v93 = **(v73 + 1);
          v93[8] = 0;
          goto LABEL_290;
        }

        v279 = v59;
        v113 = CGAccessSessionCreate(*(v25 + 136));
        if (!v113)
        {
          img_release_resources(v25);
          CGPostError("%s: Cannot create session");
          return 0;
        }

        v114 = v113;
        if ((v28 & 1) != 0 || (v115 = v113[1]) == 0)
        {
          v144 = img_stream_stage(&v301, v25, v113);
          v145 = 0;
          v80 = v294;
          v146 = v296;
          v147 = v289;
          goto LABEL_285;
        }

        v116 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F00409D9D9E87uLL);
        v86 = v116;
        if (!v116)
        {
          CGAccessSessionRelease(v114);
          goto LABEL_301;
        }

        v117 = *(v25 + 136);
        *(v116 + 22) = v287;
        *(v116 + 23) = v285;
        *(v116 + 24) = a11;
        v116[15] = 0;
        v116[16] = v117;
        v116[13] = 0;
        v116[14] = v114;
        v116[10] = 0;
        v118 = *v25;
        v116[2] = *v25;
        v119 = *(v25 + 8);
        v116[3] = v119;
        if (v34)
        {
          v118 = *(v25 + 120);
          v120 = *v118;
          v269 = v118[1];
          v270 = v118 + 2;
          LODWORD(v118) = v118[2];
          v122 = v270[1];
          v121 = v119 - (v269 + v122);
        }

        else
        {
          v120 = 0;
          v121 = 0;
          v122 = v119;
        }

        *(v116 + 8) = v120;
        *(v116 + 9) = v121;
        *(v116 + 10) = v118;
        *(v116 + 11) = v122;
        v116[7] = v115;
        v271 = *(v25 + 144);
        *(v116 + 12) = v271;
        if (*(v25 + 24) && (v272 = (*v73 >> 2) & 3, v272 >= 2))
        {
          if (v272 != 2)
          {
            goto LABEL_627;
          }

          v273 = (*(v73 + 1) + 8);
        }

        else
        {
          v115 = 0;
          v271 = 0;
          v273 = *(v73 + 1);
        }

        *v116 = *v273;
        v116[8] = v115;
        *(v116 + 13) = v271;
LABEL_627:
        v116[9] = 0;
        v116[1] = v73;
        return v86;
      }
    }
  }

  v280 = v41;
  v301 = 0u;
  v302 = 0u;
  if (v59 <= 7 && (v34 & 0xC) == 0)
  {
    v100 = v34;
  }

  else
  {
    v100 = v34 | 0x100;
  }

  v303 = 0uLL;
  v304 = 0uLL;
  v305 = 0uLL;
  v306 = 0uLL;
  v307 = 0uLL;
  v308 = 0uLL;
  memset(v309, 0, sizeof(v309));
  v310 = 0uLL;
  v311 = 0uLL;
  v312 = 0uLL;
  v313 = 0uLL;
  v314 = 0uLL;
  v315 = 0uLL;
  v316 = 0uLL;
  v317 = 0uLL;
  LODWORD(v303) = 1024;
  *(&v302 + 1) = img_decode_end;
  v101 = 48;
  if (v75 >= 3)
  {
    v101 = 0;
  }

  v102 = 8;
  if (v75 < 3)
  {
    v102 = 56;
  }

  v103 = *(v25 + v101);
  v104 = *(v25 + v102);
  *&v304 = __PAIR64__(v104, v103);
  v105 = *(v25 + 16);
  if (v105)
  {
    v106 = *(*(v105 + 24) + 48);
  }

  else
  {
    v106 = 1;
  }

  v107 = *(v25 + 120);
  *&v307 = *(v25 + 128);
  *(&v308 + 1) = v103;
  v108 = *(v25 + 24);
  DWORD1(v303) = v106;
  HIDWORD(v303) = v108;
  v109 = *(v25 + 136);
  *(v309 + 8) = vextq_s8(v109, v109, 8uLL);
  *&v309[0] = v106;
  *(&v309[1] + 1) = v107;
  *&v313 = a11;
  if (!v105)
  {
    v111 = 0;
    v110 = 0;
    goto LABEL_211;
  }

  v110 = 0;
  v111 = 0;
  if (v108 <= 2)
  {
    if (!v108)
    {
      goto LABEL_211;
    }

    if (v108 != 1)
    {
      if (v108 == 2)
      {
        if ((v100 & 0x100) != 0)
        {
          v112 = 8;
          goto LABEL_206;
        }

LABEL_182:
        v110 = 0;
LABEL_207:
        v106 = (v106 + 1);
        v111 = 0x200000;
        goto LABEL_211;
      }

LABEL_194:
      CGPostError("%s: Assertion failed - unknown alpha", "img_decode_stage");
      goto LABEL_224;
    }

    if ((v100 & 0x100) == 0)
    {
      goto LABEL_193;
    }

    v123 = 8;
LABEL_209:
    HIDWORD(v303) = v123;
    v110 = -1;
    goto LABEL_210;
  }

  if (v108 > 9)
  {
    goto LABEL_194;
  }

  if (((1 << v108) & 0x360) != 0)
  {
    goto LABEL_211;
  }

  if (v108 != 3)
  {
    if (v108 == 4)
    {
      if ((v100 & 0x100) != 0)
      {
        v112 = 9;
LABEL_206:
        HIDWORD(v303) = v112;
        v110 = -1;
        goto LABEL_207;
      }

      goto LABEL_182;
    }

    goto LABEL_194;
  }

  if ((v100 & 0x100) != 0)
  {
    v123 = 9;
    goto LABEL_209;
  }

LABEL_193:
  v110 = 0;
LABEL_210:
  v106 = (v106 + 1);
  v111 = 0x400000;
LABEL_211:
  v127 = v296;
  v128 = v36;
  if ((v74 - 1) < 2)
  {
    v274 = v36;
    v276 = v296;
    v131 = *v73;
    v132 = v131 >> 22;
    *(&v307 + 1) = ((v131 >> 22) * v103 + 7) >> 3;
    v133 = (v131 >> 16) & 0x3F;
    v278 = a12;
    v134 = v59;
    if (v133 == 32)
    {
      if (v26 <= 8)
      {
        v135 = v111 | 0x81;
        LODWORD(v136) = 8;
LABEL_241:
        v110 = -1;
        goto LABEL_243;
      }

      if (v26 <= 0x10)
      {
        v135 = v111 | 0x82;
        LODWORD(v136) = 16;
        goto LABEL_241;
      }

      v135 = v111 | 0x80;
      LODWORD(v136) = 32;
    }

    else
    {
      v138 = v26 < 9 || v133 < 9;
      v139 = !v138;
      if (v138)
      {
        v140 = 1;
      }

      else
      {
        v140 = 2;
      }

      v135 = v140 | v111;
      v136 = 16;
      if (!v139)
      {
        v136 = 8;
      }

      if (v136 != v133)
      {
        v110 = -1;
      }
    }

LABEL_243:
    v82 = a11;
    DWORD2(v303) = v136;
    if (v133 * v106 == v132)
    {
      v141 = v110;
    }

    else
    {
      if (v110)
      {
        v141 = v110;
      }

      else
      {
        v141 = -1;
      }

      if ((v131 & 0xC0) != 0x80)
      {
        v135 |= 0x100000u;
      }
    }

    v142 = (v131 >> 4) & 3;
    if (v142 == 2)
    {
      if (v133 == 32)
      {
        if (v141)
        {
          v135 |= 0x200u;
          LODWORD(v133) = 32;
          goto LABEL_400;
        }
      }

      else
      {
        if (v133 != 16)
        {
          goto LABEL_265;
        }

        if (v141)
        {
          v135 |= 0x100u;
          LODWORD(v133) = 16;
          goto LABEL_400;
        }
      }
    }

    else
    {
      if (v142 == 1)
      {
        if (v132 == 16)
        {
          v143 = 0;
          v135 |= 0x100u;
          *&v308 = 4096;
          v132 = 16;
LABEL_267:
          if (v141)
          {
            goto LABEL_391;
          }

          goto LABEL_399;
        }

        if (v132 == 32)
        {
          if (v141)
          {
            v135 |= 0x200u;
            v132 = 32;
LABEL_400:
            *&v302 = img_decode_read;
            v177 = v106;
            v178 = v132;
            v179 = 0;
LABEL_401:
            *&v310 = decode_create(v177, v133, v178, v179, v135);
LABEL_402:
            v176 = v285;
            LODWORD(v36) = v294;
            goto LABEL_403;
          }

          goto LABEL_261;
        }

LABEL_265:
        v143 = 0;
        goto LABEL_267;
      }

      if (v141)
      {
        goto LABEL_400;
      }

      if (v133 == 32)
      {
LABEL_261:
        v141 = 0x2000;
        goto LABEL_288;
      }

      if (v133 != 16)
      {
        goto LABEL_399;
      }

      v141 = 0;
    }

LABEL_288:
    *&v308 = v141;
    goto LABEL_399;
  }

  if (v75 < 2)
  {
    goto LABEL_304;
  }

  if (v74 != 5)
  {
LABEL_224:
    img_release_resources(v25);
    CGPostError("%s: Cannot read image");
    return 0;
  }

  if ((v100 & 2) != 0 && (v296 < v103 || v36 < v104) && v109.i64[0] && *(v109.i64[0] + 128) == 1)
  {
    v129 = v36;
    v320 = v296;
    v321 = v36;
    v130 = img_blocks_create(v109.i64[0], &v320, 0, 0);
    if (v130)
    {
      *(&v311 + 1) = v130;
      *(&v309[1] + 1) = v130 + 7;
      v103 = v130[2];
      *(&v308 + 1) = v103;
      LODWORD(v304) = v103;
      DWORD1(v304) = v130[3];
      v127 = v296;
      v128 = v129;
      goto LABEL_304;
    }

    LODWORD(v103) = v304;
    v127 = v296;
    v128 = v129;
  }

  *(&v301 + 1) = img_blocks_extent;
LABEL_304:
  v132 = *(v25 + 72);
  *(&v307 + 1) = (v103 * v132 + 7) >> 3;
  v158 = *(v25 + 88);
  v274 = v128;
  v276 = v127;
  if (!v158)
  {
    v162 = *(v25 + 16);
    if (v162)
    {
      v143 = 0;
      goto LABEL_312;
    }

    v164 = 1065353216;
LABEL_321:
    *v319 = v164;
    v143 = v319;
    v110 = -1;
LABEL_322:
    LODWORD(v36) = v294;
    goto LABEL_323;
  }

  if (v106 >= 1)
  {
    v159 = v106;
    v160 = v319;
    do
    {
      v161 = *v158++;
      *v160++ = vcvt_f32_f64(v161);
      --v159;
    }

    while (v159);
  }

  v162 = *(v25 + 16);
  if (v162)
  {
    v143 = v319;
LABEL_312:
    if ((CGColorSpaceGetType(v162) & 0xFFFFFFFD) == 5)
    {
      v111 |= 0x400u;
    }

    if (v143)
    {
      v110 = -1;
    }

    goto LABEL_322;
  }

  v163 = v319[0];
  if (*v319 == 1.0 && *&v319[1] == 0.0)
  {
    v164 = 0x3F80000000000000;
    goto LABEL_321;
  }

  LODWORD(v36) = v294;
  if (*v319 != 1.0 || *&v319[1] == 0.0)
  {
    v319[0] = v319[1];
    v319[1] = v163;
    v143 = v319;
    v110 = -1;
  }

  else
  {
    v143 = v319;
  }

LABEL_323:
  v133 = *(v25 + 64);
  v165 = *(v25 + 80);
  v166 = v165 & 0x100;
  v278 = a12;
  if ((v165 & 0x100) != 0 && v133 == 32)
  {
    v134 = v59;
    if (v26 <= 8)
    {
      v135 = v111 | 0x81;
      LODWORD(v167) = 8;
LABEL_346:
      v110 = -1;
      goto LABEL_348;
    }

    if (v26 <= 0x10)
    {
      v135 = v111 | 0x82;
      LODWORD(v167) = 16;
      goto LABEL_346;
    }

    v135 = v111 | 0x80;
    LODWORD(v167) = 32;
  }

  else
  {
    v134 = v59;
    if ((v165 & 0x100) != 0 && v133 == 16)
    {
      v135 = v111 | 4;
      LODWORD(v167) = 16;
    }

    else
    {
      v169 = v26 < 9 || v133 < 9;
      v170 = !v169;
      if (v169)
      {
        v171 = 1;
      }

      else
      {
        v171 = 2;
      }

      v135 = v171 | v111;
      v167 = 16;
      if (!v170)
      {
        v167 = 8;
      }

      if (v167 != v133)
      {
        v110 = -1;
      }
    }
  }

LABEL_348:
  v82 = a11;
  DWORD2(v303) = v167;
  if (v106 * v133 != v132)
  {
    if (!v110)
    {
      v110 = -1;
    }

    if ((v165 & 0x1Fu) <= 6 && ((1 << (v165 & 0x1F)) & 0x54) != 0)
    {
      v135 |= 0x100000u;
    }
  }

  v172 = ((v165 & 0x7000u) - 4096) >> 12;
  if (v172 <= 1)
  {
    if (v172)
    {
      if (v172 == 1)
      {
        v135 |= 0x200u;
        if (!v110)
        {
          v173 = (v133 == 8) << 13;
          if (v133 != 8 && v133 != 32)
          {
            goto LABEL_387;
          }

          goto LABEL_386;
        }

        goto LABEL_380;
      }

LABEL_369:
      if (!v110)
      {
        v173 = 4096;
        if (v133 != 16)
        {
          v173 = 0x2000;
        }

        if (v133 != 32 && v133 != 16)
        {
          v174 = 0;
          goto LABEL_388;
        }

LABEL_386:
        v174 = 0;
        *&v308 = v173;
        goto LABEL_388;
      }

LABEL_380:
      v174 = v110;
      goto LABEL_388;
    }

    v135 |= v166 ^ 0x100;
    if (v110)
    {
      goto LABEL_380;
    }

    if (v133 != 8)
    {
      if (v133 == 16)
      {
        v173 = 0;
        goto LABEL_386;
      }

      goto LABEL_387;
    }

    goto LABEL_385;
  }

  if (v172 == 2)
  {
    if (v110)
    {
      goto LABEL_380;
    }

    if (v133 != 16)
    {
LABEL_387:
      v174 = -1;
      goto LABEL_388;
    }

LABEL_385:
    v173 = 4096;
    goto LABEL_386;
  }

  if (v172 != 3)
  {
    goto LABEL_369;
  }

  if (v110)
  {
    v174 = v110;
  }

  else
  {
    v174 = -1;
  }

  if (!v110 && v133 == 32)
  {
    v173 = 0x2000;
    goto LABEL_386;
  }

LABEL_388:
  if (*(&v309[0] + 1) < 1 || *(&v309[0] + 1) > ((*(&v307 + 1) + 63) & 0xFFFFFFFFFFFFFFBFLL))
  {
    DWORD2(v304) = DWORD2(v307);
    if (v174)
    {
      goto LABEL_391;
    }

LABEL_399:
    *&v302 = img_raw_read;
    v176 = v285;
LABEL_403:
    v155 = v282;
    goto LABEL_404;
  }

  DWORD2(v304) = DWORD2(v309[0]);
  if (!v174)
  {
    goto LABEL_399;
  }

LABEL_391:
  if (!v143)
  {
    goto LABEL_400;
  }

  if (HIDWORD(v303) == 1)
  {
    HIDWORD(v303) = 3;
    *&v302 = img_decode_read_alpha;
    *&v310 = decode_create(v106, v133, v132, 0, v135);
    v199 = v135 & 0x400487;
    if (DWORD2(v303) == 16)
    {
      v199 = v135 & 0x400487 | 0x100;
    }

    if (DWORD2(v303) == 32)
    {
      v200 = v135 & 0x400487 | 0x200;
    }

    else
    {
      v200 = v199;
    }

    *(&v310 + 1) = decode_create(v106, SDWORD2(v303), DWORD2(v303) * v106, v143, v200);
    goto LABEL_402;
  }

  if (HIDWORD(v303) == 8)
  {
    HIDWORD(v303) = 9;
    *&v302 = img_decode_read_alpha;
    *&v310 = decode_create(v106, v133, v132, 0, v135);
    v197 = v135 & 0x487;
    if (DWORD2(v303) == 16)
    {
      v197 = v135 & 0x487 | 0x100;
    }

    if (DWORD2(v303) == 32)
    {
      v198 = v135 & 0x487 | 0x200;
    }

    else
    {
      v198 = v197;
    }

    *(&v310 + 1) = decode_create(DWORD1(v303), SDWORD2(v303), DWORD1(v303) * DWORD2(v303), v143 + ((v135 >> 18) & 8), v198);
    *&v311 = decode_create(1, SDWORD2(v303), SDWORD2(v303), &v143[((v135 << 9) >> 31) & (2 * DWORD1(v303))], v198);
    goto LABEL_402;
  }

  if (HIDWORD(v303) != 2)
  {
    *&v302 = img_decode_read;
    v177 = v106;
    v178 = v132;
    v179 = v143;
    goto LABEL_401;
  }

  HIDWORD(v303) = 4;
  *&v302 = img_decode_read_alpha;
  *&v310 = decode_create(v106, v133, v132, 0, v135);
  v175 = v135 & 0x200487;
  if (DWORD2(v303) == 32)
  {
    v175 |= 0x200u;
    v176 = v285;
    v155 = v282;
  }

  else
  {
    v176 = v285;
    v155 = v282;
    if (DWORD2(v303) == 16)
    {
      v175 |= 0x100u;
    }
  }

  *(&v310 + 1) = decode_create(v106, SDWORD2(v303), DWORD2(v303) * v106, v143, v175);
  LODWORD(v36) = v294;
LABEL_404:
  if ((v100 & 0x28) == 0x28)
  {
    goto LABEL_630;
  }

  v154 = &v301;
  if ((v100 & 0x80) != 0)
  {
    v154 = img_interpolate_stage(&v318, &v301, v25, 1, *v25, *(v25 + 8), v82, a13);
    LODWORD(v36) = v294;
  }

  if ((v100 & 0x10) != 0)
  {
    _CGHandleAssert("img_colormask_stage", 2270, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
  }

  if ((v100 & 0x28) == 8)
  {
LABEL_630:
    _CGHandleAssert("img_colorindex_stage", 2380, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
  }

  v152 = v281;
  if ((v100 & 2) == 0)
  {
    v180 = v36;
    v146 = v296;
    if ((v100 & 4) == 0)
    {
      goto LABEL_411;
    }

LABEL_415:
    _CGHandleAssert("img_colormatch_stage", 2796, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "", "Unimplemented");
  }

  v181 = img_interpolate_stage((v154 + 18), v154, v25, v176, v276, v274, v82, a13);
  if (v181 == v154)
  {
    v146 = *(v154 + 12);
    v180 = *(v154 + 13);
    if (v289 - v286 == v294)
    {
      v189 = *(v154 + 13);
    }

    else
    {
      v196 = v180 / v294;
      v189 = vcvtpd_s64_f64(v196 * v289);
      v286 = vcvtmd_s64_f64(v196 * v286);
      if (v180 < v189)
      {
        v189 = *(v154 + 13);
      }
    }

    v289 = v189;
    if ((v100 & 4) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_415;
  }

  v180 = v294;
  v146 = v296;
  v154 = v181;
  if ((v100 & 4) != 0)
  {
    goto LABEL_415;
  }

LABEL_411:
  if (v280)
  {
    v156 = 0;
    v80 = v180;
    LODWORD(v296) = v146;
    v147 = v289;
  }

  else
  {
    v147 = v289;
    v156 = 0;
    if (!*(v25 + 120))
    {
      v182 = (v180 - v289) & 0xFFFFFFF0;
      v183 = v180 - v286 + 15;
      if ((v183 | 0xF) >= v180)
      {
        v184 = v180;
      }

      else
      {
        v184 = v183 & 0xFFFFFFF0;
      }

      v185 = v184 - v182 + 32;
      v186 = v180 - v184;
      if (v185 >= v180)
      {
        v182 = 0;
        v186 = 0;
      }

      v286 = v186;
      v147 = v180 - v182;
    }

    v80 = v180;
    LODWORD(v296) = v146;
  }

LABEL_424:
  v187 = v80;
  if (!v134)
  {
    goto LABEL_469;
  }

  v188 = *(v154 + 10);
  if (v188 >= 9)
  {
    if (v134 == 4)
    {
      v134 = 3;
    }

    else if (v134 == 2)
    {
      v134 = 1;
    }
  }

  v190 = *(v154 + 11);
  if (v134 == v190)
  {
    goto LABEL_469;
  }

  *(v154 + 71) = 0;
  *(v154 + 536) = 0u;
  *(v154 + 552) = 0u;
  *(v154 + 504) = 0u;
  *(v154 + 520) = 0u;
  *(v154 + 472) = 0u;
  *(v154 + 488) = 0u;
  *(v154 + 440) = 0u;
  *(v154 + 456) = 0u;
  *(v154 + 408) = 0u;
  *(v154 + 424) = 0u;
  *(v154 + 376) = 0u;
  *(v154 + 392) = 0u;
  *(v154 + 344) = 0u;
  *(v154 + 360) = 0u;
  *(v154 + 312) = 0u;
  *(v154 + 328) = 0u;
  *(v154 + 296) = 0u;
  *(v154 + 36) = v154;
  if (*(v154 + 1))
  {
    *(v154 + 37) = img_extent;
  }

  *(v154 + 38) = img_alphamerge_read;
  *(v154 + 39) = img_alphamerge_end;
  *(v154 + 80) = 512;
  v191 = *(v154 + 6);
  *(v154 + 42) = v191;
  v192 = *(v154 + 9);
  *(v154 + 81) = v192;
  *(v154 + 82) = v188;
  *(v154 + 83) = v134;
  if (v190 > 9)
  {
    goto LABEL_453;
  }

  v193 = 1;
  if (((1 << v190) & 0x1E) == 0)
  {
    v194 = 1 << v190;
    if ((v194 & 0x301) != 0)
    {
      v193 = 0;
      goto LABEL_439;
    }

    if ((v194 & 0x60) != 0)
    {
      goto LABEL_469;
    }

LABEL_453:
    CGPostError("%s: Assertion failed - unknown source alpha");
    goto LABEL_469;
  }

LABEL_439:
  if (v134 <= 9)
  {
    if (((1 << v134) & 0x1E) != 0)
    {
      if ((v193 & 1) == 0)
      {
        *(v154 + 47) = 2;
        v195 = v188 / 8;
        *(v154 + 86) = v192 * v191 * v195;
        *(v154 + 87) = v195 * v191;
LABEL_447:
        *(v154 + 50) = v82;
        v154 += 18;
        goto LABEL_469;
      }

      goto LABEL_446;
    }

    if (((1 << v134) & 0x301) != 0)
    {
      if (v193)
      {
        *(v154 + 47) = 1;
        *(v154 + 86) = (v191 + v191 * v192) * (v188 / 8);
        goto LABEL_447;
      }

LABEL_446:
      *(v154 + 47) = 0;
      goto LABEL_447;
    }
  }

  CGPostError("%s: Assertion failed - unknown destination alpha");
LABEL_469:
  if (v152)
  {
    v201 = *v152;
    ComponentType = CGImageGetComponentType(*(v25 + 40));
    v203 = v201 == 34082816;
    if (v201 == 34082816)
    {
      v204 = ComponentType;
    }

    else
    {
      v204 = v82;
    }

    if (v201 == 34082816 && v204 == 5)
    {
      v204 = 5;
      *(v154 + 14) = 5;
      v203 = 1;
    }

    if (!v155)
    {
      goto LABEL_480;
    }

    goto LABEL_479;
  }

  CGImageGetComponentType(*(v25 + 40));
  v203 = 0;
  v204 = v82;
  if (v155)
  {
LABEL_479:
    v284 = img_data_depth(v154, v204, v203);
    if (v284)
    {
      goto LABEL_480;
    }

    (*(v154 + 3))(v154);
    img_release_resources(v25);
    CGPostError("%s: Cannot process image");
    return 0;
  }

LABEL_480:
  v279 = v134;
  v275 = v156;
  v283 = v146 - v156;
  v277 = v147 - v286;
  if (!v154)
  {
    v206 = 0;
    v205 = 0;
    v212 = 16;
    v211 = 1;
    v80 = v187;
    v72 = v278;
    goto LABEL_491;
  }

  v80 = v187;
  v72 = v278;
LABEL_482:
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v208 = v154;
  do
  {
    v209 = *(v208 + 14);
    if (v209)
    {
      v205 += v209;
      ++v207;
      v206 |= *(v208 + 8);
    }

    v210 = *(v208 + 15);
    if (v210)
    {
      v205 += v210;
      ++v207;
      v206 |= *(v208 + 8);
    }

    v208 = *v208;
  }

  while (v208 && (v205 & 0x80000000) == 0);
  v211 = 0;
  v212 = 16 * v207 + 16;
LABEL_491:
  v295 = v80;
  if (*(v25 + 128))
  {
    v213 = 0;
LABEL_493:
    v214 = 0;
    goto LABEL_494;
  }

  v213 = *(v25 + 136);
  if (!v213)
  {
    goto LABEL_493;
  }

  v218 = *(v213 + 168);
  if (!v218)
  {
    goto LABEL_493;
  }

  v214 = v218(*(v213 + 24), v144);
LABEL_494:
  v215 = v72;
  v290 = v147;
  v216 = (v205 + v214);
  if (v216 < 1)
  {
    LODWORD(v217) = 1;
    if ((v216 & 0x80000000) != 0)
    {
LABEL_578:
      (*(v154 + 3))(v154, v144);
      img_release_resources(v25);
      CGPostError("%s: Cannot allocate memory");
      return 0;
    }
  }

  else
  {
    v217 = (4096 - v212) / v216;
    if (!v217)
    {
      LODWORD(v216) = v216 + v212;
      if ((v216 & 0x80000000) != 0)
      {
        goto LABEL_578;
      }
    }
  }

  if (v217)
  {
    v219 = 136;
  }

  else
  {
    v219 = (v216 + 136);
  }

  v220 = malloc_type_calloc(1uLL, v219, 0x10F00409D9D9E87uLL);
  if (!v220)
  {
    goto LABEL_578;
  }

  v86 = v220;
  v220[22] = v287;
  v220[23] = v285;
  v220[24] = a11;
  if (v216)
  {
    v221 = v217 <= 1 ? 1 : v217;
    if ((v211 & 1) == 0)
    {
      v222 = v220 + 34;
      if (v217)
      {
        v222 = v319;
      }

      v223 = (v222 + 15) & 0xFFFFFFFFFFFFFFF0;
      v224 = v154;
      do
      {
        v225 = *(v224 + 14);
        if (v225)
        {
          *(v224 + 16) = v221;
          *(v224 + 9) = v223;
          v223 += (v225 * v221 + 15) & 0xFFFFFFFFFFFFFFF0;
        }

        v226 = *(v224 + 15);
        if (v226)
        {
          *(v224 + 16) = v221;
          *(v224 + 10) = v223;
          v223 += (v226 * v221 + 15) & 0xFFFFFFFFFFFFFFF0;
        }

        v224 = *v224;
      }

      while (v224);
    }
  }

  v227 = *v284;
  v228 = ((((*v284 >> 22) * v283) >> 3) + 15) & 0x3FFFFFF0;
  if (v279)
  {
    v229 = (v227 >> 2) & 3;
    v230 = ((((((BYTE2(v227) & 0x3F) + 7) & 0x78) * v283) >> 3) + 15) & 0x3FFFFFF0;
    v231 = v230 + v228;
    if (v229 != 1)
    {
      v230 = 0;
      v231 = ((((*v284 >> 22) * v283) >> 3) + 15) & 0x3FFFFFF0;
    }

    if (v229 == 2)
    {
      v230 = ((((*v284 >> 22) * v283) >> 3) + 15) & 0x3FFFFFF0;
    }

    v292 = v230;
    v232 = v229 != 2 && v229 == 1;
    v233 = v229 != 2 && v229 != 1;
    v288 = v233;
    if (v229 == 2)
    {
      v234 = ((((*v284 >> 22) * v283) >> 3) + 15) & 0x3FFFFFF0;
    }

    else
    {
      v234 = v231;
    }
  }

  else
  {
    v292 = 0;
    v232 = 0;
    v288 = 1;
    v234 = ((((*v284 >> 22) * v283) >> 3) + 15) & 0x3FFFFFF0;
  }

  v72 = v215;
  if (v206 && *MEMORY[0x1E695E0C0] == 1)
  {
    v235 = "";
    v236 = "DECODE";
    if ((v206 & 0x400) == 0)
    {
      v236 = "";
    }

    v237 = "|";
    if ((((v206 & 0x3FF) != 0) & (v206 >> 10)) != 0)
    {
      v238 = "|";
    }

    else
    {
      v238 = "";
    }

    v239 = "ALPHAM";
    if ((v206 & 0x200) == 0)
    {
      v239 = "";
    }

    if ((((v206 & 0x1FF) != 0) & (v206 >> 9)) != 0)
    {
      v240 = "|";
    }

    else
    {
      v240 = "";
    }

    v241 = "ALPHA";
    if ((v206 & 0x100) == 0)
    {
      v241 = "";
    }

    if (((v206 != 0) & (v206 >> 8)) != 0)
    {
      v242 = "|";
    }

    else
    {
      v242 = "";
    }

    v243 = "COLORMASK";
    if ((v206 & 0x10) == 0)
    {
      v243 = "";
    }

    if ((((v206 & 0xF) != 0) & (v206 >> 4)) != 0)
    {
      v244 = "|";
    }

    else
    {
      v244 = "";
    }

    v245 = "COLORINDEX";
    if ((v206 & 8) == 0)
    {
      v245 = "";
    }

    if ((((v206 & 7) != 0) & (v206 >> 3)) != 0)
    {
      v246 = "|";
    }

    else
    {
      v246 = "";
    }

    v247 = "COLORSPACE";
    if ((v206 & 4) == 0)
    {
      v247 = "";
    }

    if ((((v206 & 3) != 0) & (v206 >> 2)) == 0)
    {
      v237 = "";
    }

    if ((v206 & 2) != 0)
    {
      v235 = "INTERP";
    }

    v248 = __str;
    snprintf(__str, 0x100uLL, "CGSImageData (%s%s%s%s%s%s%s%s%s%s%s%s%s)", v236, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v237, v235);
  }

  else
  {
    v248 = 0;
  }

  if (v213 && (v249 = *(v213 + 168)) != 0)
  {
    v250 = v249(*(v213 + 24)) + 15;
  }

  else
  {
    v250 = 15;
  }

  image_data_handle = create_image_data_handle(v234, v277, v250, v215, v248);
  v86[9] = image_data_handle;
  if (!image_data_handle)
  {
    free(v86);
    goto LABEL_578;
  }

  *(v86 + 12) = v228;
  v86[10] = 0;
  v252 = image_data_handle[2];
  v86[7] = v252;
  if (v232)
  {
    v253 = v277;
    v86[8] = v252 + (v228 * v277);
    *(v86 + 13) = v292;
    v254 = v284;
    v255 = (*(v284 + 8) + 8);
    v157 = v285;
    v256 = v295;
    v257 = v275;
    v258 = v283;
  }

  else
  {
    v256 = v295;
    v258 = v283;
    if (v288)
    {
      v86[8] = 0;
      *(v86 + 13) = 0;
      v254 = v284;
      v255 = *(v284 + 8);
    }

    else
    {
      v86[8] = v252;
      *(v86 + 13) = v292;
      v254 = v284;
      v255 = (*(v284 + 8) + 8);
    }

    v157 = v285;
    v257 = v275;
    v253 = v277;
  }

  *v86 = *v255;
  v86[1] = v254;
  v86[2] = v296;
  v86[3] = v256;
  *(v86 + 8) = v257;
  *(v86 + 9) = v286;
  *(v86 + 10) = v258;
  *(v86 + 11) = v253;
  v259 = v256 - v290;
  v260 = *(v154 + 1);
  if (v260)
  {
    LODWORD(v298) = v257;
    HIDWORD(v298) = v256 - v290;
    v299 = __PAIR64__(v253, v258);
    if ((v260(v154, &v298) & 0x80000000) != 0)
    {
      CGSImageDataHandleRelease(v86[9]);
      free(v86);
      (*(v154 + 3))(v154);
LABEL_609:
      img_release_resources(v25);
      return 0;
    }
  }

  if (v253 >= 1 && *(v86 + 12) <= (0x7FFFFFFFu / v253) && *(v86 + 13) <= (0x7FFFFFFFu / v253))
  {
    v265 = 0;
    do
    {
      v261 = v265;
      v266 = (v253 - v265);
      if (v253 <= v265)
      {
        break;
      }

      v267 = *(v86 + 8);
      *&v320 = v86[7] + *(v86 + 12) * v261;
      if (v267 != 0.0)
      {
        *&v267 += *(v86 + 13) * v261;
      }

      v321 = v267;
      v268 = (*(v154 + 2))(v154, (v261 + v259), v266, &v320, v86 + 6, a13);
      v265 = v268 + v261;
    }

    while (v268 > 0);
  }

  else
  {
    v261 = 0;
  }

  if (v281)
  {
    if ((*(v281 + 1) & 0xF) == 0)
    {
      v262 = v86[1];
      if (!v262 || (*(v262 + 1) & 0xF) != 0)
      {
        if (CGImageGetComponentType(*(v25 + 40)) == 5)
        {
          v263 = 5;
        }

        else
        {
          v263 = 1;
        }

        v86[1] = img_data_depth(v154, v263, 1);
      }
    }
  }

  (*(v154 + 3))(v154);
  img_release_resources(v25);
  v86[13] = 0;
  v86[14] = 0;
  v86[15] = 0;
  v84 = v253 - v261;
  v81 = v293;
  if (v253 <= v261)
  {
    v84 = 0;
  }

  else
  {
    if (v253 != *(v86 + 11))
    {
      *(v86 + 11) = 0;
LABEL_613:
      CGSImageDataHandleRelease(v86[9]);
      free(v86);
      return 0;
    }

    *(v86 + 9) += v84;
    *(v86 + 11) = v261;
    if (!v261)
    {
      goto LABEL_613;
    }
  }

  v92 = v281;
  if (!v281)
  {
    return v86;
  }

LABEL_603:
  if (*v92 != 134886228 && (v86[1] != v92 || v86[2] != v81 || v86[3] != v297))
  {
    return img_data_lock_depth(v86, v81, v297, v84, v92, v157, v72);
  }

  return v86;
}