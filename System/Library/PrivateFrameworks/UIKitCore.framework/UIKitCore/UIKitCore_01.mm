double sub_188A4D284()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090, &qword_18A669D10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [v1 layoutSubviews];
  }

  else
  {
    v46 = v12;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIView *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(2);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 layoutSubviews];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v15, &qword_1EA93E090, &qword_18A669D10);
    if ((*(v24 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090, &qword_18A669D10);
      sub_188A3F5FC(v15, &qword_1EA93E090, &qword_18A669D10);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v15, v6);
      v30 = sub_188ACEB88(v1, 2, &block_descriptor_149_4);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIView *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 2;
      *(v35 + 25) = v30;
      *(v35 + 32) = [NavigationBarContentView titleViewChangedMaximumBackButtonWidth:]_0;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098, &qword_18A669D18);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 2);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090, &qword_18A669D10);
    }
  }

  return result;
}

void sub_188A4DCDC()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(&v2->super.isa + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7[3];
    v16 = v7[2];
    v17 = v8;
    *v18 = v7[4];
    *&v18[10] = *(v7 + 74);
    v15 = v7[1];
    sub_188A74E4C(&v15, &v14);

    if (*&v18[16])
    {
      v9 = v15;
      v10 = v16;
      v11 = v17;
      v12 = *v18;
      if (_UIViewMaskingConfigurationSPIEnabled() && (v9 >> 62 == 3 && (v9 == 0xC000000000000008 || v9 == 0xC000000000000010) || v10 >> 62 == 3 && (v10 == 0xC000000000000008 || v10 == 0xC000000000000010) || v11 >> 62 == 3 && (v11 == 0xC000000000000008 || v11 == 0xC000000000000010) || v12 >> 62 == 3 && ((v12 + 0x3FFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFF7) == 0))
      {
        [(UIView *)v1 _invalidateMaskingConfiguration];
      }

      sub_188A3F5FC(&v15, &qword_1EA938E70, &qword_18A657580);
    }
  }

  else
  {
    swift_endAccess();
  }
}

double _UIScopedSignpostIntervalInit(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    memset(v6, 0, sizeof(v6));
    (*(a3 + 16))(v6, a3);
    if (LODWORD(v6[0]))
    {
      kdebug_trace();
    }

    result = *(&v6[2] + 1);
    v5 = *(&v6[3] + 8);
    *a1 = *(&v6[2] + 8);
    *(a1 + 16) = v5;
    *(a1 + 32) = *(&v6[4] + 1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t _UITraitTokenSetIsEqualToSet(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (v5)
    {
      if (v4 != v5)
      {

        return objc_msgSend_isEqual_(v4);
      }

      v7 = 1;
      return v7 & 1;
    }
  }

  else if (!v5)
  {
    v7 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24)))))) ^ 1;
    return v7 & 1;
  }

  if (!_UITraitTokenSetIsSubsetOfSet(a1, a2))
  {
    v7 = 0;
    return v7 & 1;
  }

  return _UITraitTokenSetIsSubsetOfSet(a2, a1);
}

void _UIImageDecorateFallbackImage(void *a1)
{
  v16 = a1;
  if (_UIGetUIKitDecorateFallbackImagesFromScale() != 0.0)
  {
    [v16 scale];
    if (v1 != _UIGetUIKitDecorateFallbackImagesFromScale())
    {
      [v16 size];
      v3 = v2;
      v5 = v4;
      [v16 scale];
      _UIGraphicsBeginImageContextWithOptions(0, 0, v3, v5, v6);
      v7 = *MEMORY[0x1E695EFF8];
      v8 = *(MEMORY[0x1E695EFF8] + 8);
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v11 = +[UIColor redColor];
      v12 = [v11 colorWithAlphaComponent:0.55];

      [v16 drawInRect:{v7, v8, v3, v5}];
      CGContextBeginTransparencyLayer(v10, 0);
      [v12 set];
      v18.origin.x = v7;
      v18.origin.y = v8;
      v18.size.width = v3;
      v18.size.height = v5;
      UIRectFillUsingBlendMode(v18, kCGBlendModeColor);
      CGContextEndTransparencyLayer(v10);
      v13 = _UIGraphicsGetImageFromCurrentImageContext(0);
      UIGraphicsEndImageContext();
      v14 = [v16 content];
      v15 = [v14 contentWithCGImage:{objc_msgSend(v13, "CGImage")}];
      [v16 _swizzleContent:v15];
    }
  }
}

void _UISharedImageDealloc(void *a1)
{
  key = a1;
  if ([key _isNamed])
  {
    v1 = [key _primitiveImageAsset];

    if (!v1)
    {
      os_unfair_lock_lock(&__tableLock);
      if (__imageTable)
      {
        v2 = CFDictionaryGetValue(__imageTable, key);
        if (v2)
        {
          CFDictionaryRemoveValue(__nameTable, v2);
          CFDictionaryRemoveValue(__imageTable, key);
        }
      }

      else
      {
        v2 = 0;
      }

      os_unfair_lock_unlock(&__tableLock);
    }
  }
}

uint64_t __preferredIdiomSubtypeForIdiom(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      v7 = [objc_opt_self() mainScreen];
      [v7 _pointsPerInch];
      if (v8 == 163.0)
      {
        v1 = 163;
      }

      else
      {
        v1 = 0;
      }

LABEL_17:

      return v1;
    }

    v9 = [objc_opt_self() mainScreen];
    [v9 _referenceBounds];
    Height = CGRectGetHeight(v14);

    if (Height <= 667.0)
    {
      if (Height <= 568.0)
      {
        if (Height <= 480.0)
        {
          return 0;
        }

        else
        {
          return 568;
        }
      }

      else
      {
        return 569;
      }
    }

    else
    {
      return 570;
    }
  }

  else
  {
    if (a1 == 2)
    {
LABEL_5:
      v2 = [objc_opt_self() mainScreen];
      [v2 _referenceBounds];
      v3 = CGRectGetHeight(v12);
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v3 * v5;

      if (v6 >= 1080.0)
      {
        return 0;
      }

      else
      {
        return 720;
      }
    }

    if (a1 != 4)
    {
      if (a1 != 8)
      {
        return v1;
      }

      goto LABEL_5;
    }

    if (+[UIDevice _isWatchCompanion])
    {
      v7 = [getWKInterfaceDeviceClass() currentDevice];
      [v7 screenBounds];
      if (CGRectGetHeight(v13) <= 170.0)
      {
        v1 = 320;
      }

      else
      {
        v1 = 384;
      }

      goto LABEL_17;
    }

    if (qword_1ED4A26B8 != -1)
    {
      dispatch_once(&qword_1ED4A26B8, &__block_literal_global_268_0);
    }

    return qword_1ED4A26C0;
  }
}

void __Block_byref_object_dispose__42(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__57(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__109(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__126(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
}

void __Block_byref_object_dispose__163(uint64_t a1)
{
}

{
  objc_destroyWeak((a1 + 40));
}

void __Block_byref_object_dispose__182(uint64_t a1)
{
}

{
  objc_destroyWeak((a1 + 40));
}

void _UIVisualEffectViewUpgradeLegacyEffect(void *a1, void **a2, void **a3)
{
  v5 = a1;
  if (!v5 || (+[UIVisualEffect emptyEffect], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    v12 = *a2;
    v13 = MEMORY[0x1E695E0F0];
    *a2 = MEMORY[0x1E695E0F0];

    v14 = *a3;
    *a3 = v13;
  }

  else
  {
    v7 = [v5 _expectedUsage];
    v8 = objc_opt_new();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___UIVisualEffectViewUpgradeLegacyEffect_block_invoke;
    v18[3] = &unk_1E70F6C58;
    v19 = v8;
    v9 = v8;
    [v5 _enumerateEffects:v18];
    if (v7 == 2)
    {
      v10 = *a2;
      *a2 = MEMORY[0x1E695E0F0];

      v11 = [v9 copy];
    }

    else
    {
      v15 = [v9 copy];
      v16 = *a2;
      *a2 = v15;

      v11 = MEMORY[0x1E695E0F0];
    }

    v17 = *a3;
    *a3 = v11;
  }
}

void _UIViewVisitorRecursivelyEntertainDescendingVisitors(void **a1, uint64_t a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](8 * (a2 + 1));
  v11 = (&v20 - v10);
  if (v9 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v12 = (&v20 - v10);
  }

  else
  {
    v12 = 0;
  }

  if (v9 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000042)
  {
    v12 = malloc_type_malloc(v8, 0xB0C0DE8DuLL);
  }

  v13 = _UIViewVisitorEntertainVisitors(a1, v12, a3, a4);
  if (v13)
  {
    v14 = v13;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v20 = 0u;
    v15 = [a3 subviews];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          _UIViewVisitorRecursivelyEntertainDescendingVisitors(v12, v14, *(*(&v20 + 1) + 8 * i), 0);
        }

        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }

  if ([a3 _maskView])
  {
    _UIViewVisitorRecursivelyEntertainDescendingVisitors(a1, a2, [a3 _maskView], 1);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

__CFString *_NSStringFromUIContentSizeCategory(uint64_t a1)
{
  if (a1 > 6)
  {
    if (a1 > 65537)
    {
      switch(a1)
      {
        case 65538:
          return @"UICTContentSizeCategoryAccessibilityXL";
        case 65539:
          return @"UICTContentSizeCategoryAccessibilityXXL";
        case 65540:
          return @"UICTContentSizeCategoryAccessibilityXXXL";
      }
    }

    else
    {
      switch(a1)
      {
        case 7:
          return @"UICTContentSizeCategoryXXXL";
        case 65536:
          return @"UICTContentSizeCategoryAccessibilityM";
        case 65537:
          return @"UICTContentSizeCategoryAccessibilityL";
      }
    }

    return @"_UICTContentSizeCategoryUnspecified";
  }

  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        return @"UICTContentSizeCategoryXS";
      case 2:
        return @"UICTContentSizeCategoryS";
      case 3:
        return @"UICTContentSizeCategoryM";
    }

    return @"_UICTContentSizeCategoryUnspecified";
  }

  if (a1 == 4)
  {
    return @"UICTContentSizeCategoryL";
  }

  if (a1 == 5)
  {
    return @"UICTContentSizeCategoryXL";
  }

  return @"UICTContentSizeCategoryXXL";
}

id _UITraitCollectionReplacingStyleForBackgroundColorIfNeccessary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 accessibilityContrast] == 1)
  {
    v5 = objc_opt_self();
    if ([v3 valueForNSIntegerTrait:v5] == 1 && (objc_msgSend(v4, "_systemColorName"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [&unk_1EFE342C0 objectForKey:v6];

      if (v8)
      {
        v9 = [v3 _traitCollectionByReplacingNSIntegerValue:1 forTraitToken:0x1EFE323B0];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v9 = v3;
LABEL_8:
  v10 = v9;

  return v10;
}

id UIColorPlaceholder()
{
  v0 = UIColorPlaceholder___placeholder;
  if (!UIColorPlaceholder___placeholder)
  {
    v1 = objc_opt_new();
    v2 = UIColorPlaceholder___placeholder;
    UIColorPlaceholder___placeholder = v1;

    v0 = UIColorPlaceholder___placeholder;
  }

  return v0;
}

id _WrapCGColorWithUIColor(CGColor *a1)
{
  CGColorGetContentHeadroom();
  v2 = off_1E70E9530;
  if (v3 <= 1.0)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    if (qword_1ED49BED0 != -1)
    {
      dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
    }

    if (ColorSpace == qword_1ED49BEC8)
    {
      v2 = off_1E70E97B0;
    }

    else
    {
      if (qword_1ED49BEC0 != -1)
      {
        dispatch_once(&qword_1ED49BEC0, &__block_literal_global_2243);
      }

      if (ColorSpace == qword_1ED49BEB8)
      {
        v2 = off_1E70E97B8;
      }

      else if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelPattern)
      {
        v2 = off_1E70EA378;
      }
    }
  }

  v5 = [objc_allocWithZone(*v2) initWithCGColor:a1];

  return v5;
}

void UILabelCommonInit(void *a1)
{
  v14 = a1;
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v1 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v13 = _UIInternalPreference_LabelDisableDefaultClipping, _UIInternalPreferencesRevisionVar == _UIInternalPreference_LabelDisableDefaultClipping))
  {
LABEL_4:
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  while (v1 >= v13)
  {
    _UIInternalPreferenceSync(v1, &_UIInternalPreference_LabelDisableDefaultClipping, @"LabelDisableDefaultClipping", _UIInternalPreferenceUpdateBool);
    v13 = _UIInternalPreference_LabelDisableDefaultClipping;
    if (v1 == _UIInternalPreference_LabelDisableDefaultClipping)
    {
      goto LABEL_4;
    }
  }

  if (byte_1ED48A904)
  {
LABEL_5:
    [v14 setClipsToBounds:0];
  }

LABEL_6:
  if (qword_1ED497538 != -1)
  {
    dispatch_once(&qword_1ED497538, &__block_literal_global_165_2);
  }

  [v14 _setDrawsDebugGlyphPathBoundsClipping:_MergedGlobals_58_0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v14[86] = [v2 _addObserver:v14 selector:sel__accessibilityButtonShapesChangedNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0 options:0];

  v3 = [v14 _visualStyle];
  [v3 actionsForInitializationOfLabel:v14];

  v4 = [v14 layer];
  [v4 setContentsMultiplyColor:0];
  v5 = [objc_opt_class() layerClass];
  v6 = [v5 instancesRespondToSelector:sel_invalidateContentInsets];
  v7 = 0;
  if (v6)
  {
    v8 = [v5 instancesRespondToSelector:sel__clearContents];
    v7 = 0x10000000;
    if (!v8)
    {
      v7 = 0;
    }
  }

  v14[93] = v14[93] & 0xFFFFFFFFEFFFFFFFLL | v7;
  v14[91] = 0x4044000000000000;
  if (dyld_program_sdk_at_least())
  {
    v9 = objc_alloc_init(MEMORY[0x1E6999430]);
    v10 = [v14 traitCollection];
    v11 = [(UITraitCollection *)v10 _styleEffectAppearanceName];
    [v9 setAppearanceName:v11];

    v12 = v14[82];
    v14[82] = v9;
  }
}

id _StatusBar_UIAttributedStringForIsolatedNumericStringIfNecessary(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 languageCode];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if (isEqualToString)
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = *MEMORY[0x1E696A518];
    v10[0] = @"ur-Arab";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 initWithString:v1 attributes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _NSStringIsWidthVariant(void *a1)
{
  v1 = a1;
  if (_MergedGlobals_1_32 != -1)
  {
    dispatch_once(&_MergedGlobals_1_32, &__block_literal_global_692);
  }

  if (qword_1ED499518)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_188A52E38(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_188A53044(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    if (!a3 || !a4)
    {
      return 0;
    }

    v7 = result;
    v8 = a4;
    v9 = v7;
    v10 = v8;
    v11 = v9;

    v12 = sub_188A534B0(v10, v11);
    if (v12 == 2)
    {
      goto LABEL_11;
    }

    v13 = v12;
    if (qword_1ED48EE58 != -1)
    {
      swift_once();
    }

    if (sub_188A551E4(a2, a3, qword_1ED48EE60) & 1) == 0 || (v14 = [(UIView *)v10 __swiftAnimationInfo]) != 0 && (v15 = v14, swift_beginAccess(), v16 = v15[9], , , LOBYTE(v15) = sub_188A5FDC0(v13 & 1, a2, a3, v16), , (v15) || (, v17 = sub_188A5548C(a2, a3), v17 == 13))
    {
LABEL_11:

      return 0;
    }

    v18 = v17;
    v19 = sub_18A4A7258();
    v20 = [v11 valueForKeyPath_];

    if (v20)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A55538(v40, &aBlock);
      sub_188A55538(&aBlock, v40);
    }

    else
    {
      aBlock = 0u;
      v36 = 0u;
      v21 = sub_188A59768(v18);
      v23 = v22;
      v33[1] = v33;
      v33[0] = v21[-1].Description;
      MEMORY[0x1EEE9AC00](v21);
      v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v4;
      sub_18A4A8408();
      (*(v23 + 80))(v40, v21, v23);
      v4 = v34;
      (*(v33[0] + 8))(v25, v21);
      if (*(&v36 + 1))
      {
        sub_188A3F5FC(&aBlock, &qword_1EA934050, qword_18A64CA10);
      }
    }

    sub_188A55598(v40, v39);
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    *(v26 + 24) = v4;
    *(v26 + 32) = v11;
    *(v26 + 40) = v13 & 1;
    *(v26 + 48) = a2;
    *(v26 + 56) = a3;
    *(v26 + 64) = v10;
    sub_188A55538(v39, (v26 + 72));
    v27 = objc_allocWithZone(UIViewBlockBasedCAAction);
    v37 = sub_188A55FEC;
    v38 = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_188A55BE8;
    *(&v36 + 1) = &block_descriptor_1396;
    v28 = _Block_copy(&aBlock);
    v29 = v10;
    v30 = v11;
    v31 = v4;

    v32 = [v27 initWithActionBlock_];
    _Block_release(v28);

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    return v32;
  }

  return result;
}

uint64_t sub_188A53458()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_188A534B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 layer];
  sub_188A553A0();
  v5 = sub_18A4A7C88();

  if (v5)
  {

    return 0;
  }

  else
  {
    v7 = [(UIView *)a1 _backing_outermostLayer];
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

double __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

unint64_t sub_188A53698(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = *(v4 + 48);
    v12 = a1 & 1;
    do
    {
      v13 = (v11 + 24 * v7);
      if (*v13 == v12)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

id _UIPerformVoidSelector2(void *a1, const char *a2, const char *a3, const char *a4)
{
  if (dyld_program_sdk_at_least())
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
  }

  else
  {
    v9 = sel_performSelector_withObject_withObject_;
    v8 = a1;
    v10 = a2;
    v11 = a3;
  }

  return [v8 v9];
}

uint64_t sub_188A53994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double _UIGetUIKitDecorateFallbackImagesFromScale()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  result = 0.0;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_UIKitDecorateFallbackImagesFromScale;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UIKitDecorateFallbackImagesFromScale)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIKitDecorateFallbackImagesFromScale, @"UIKitDecorateFallbackImagesFromScale", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference_UIKitDecorateFallbackImagesFromScale;
        if (v0 == _UIInternalPreference_UIKitDecorateFallbackImagesFromScale)
        {
          return 0.0;
        }
      }

      return *&qword_1ED48BA90;
    }
  }

  return result;
}

uint64_t _UIViewDirtiesDelegateContentInsetsForGeometryChange()
{
  if (qword_1EA994810 != -1)
  {
    dispatch_once(&qword_1EA994810, &__block_literal_global_1476);
  }

  return byte_1EA9946DD;
}

BOOL _transformIsSupportedForSimpleContainment(double *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = fabs(*a1);
  if (v1 == *(MEMORY[0x1E695EFD0] + 8) && v3 == *(MEMORY[0x1E695EFD0] + 16) && v4 == *MEMORY[0x1E695EFD0])
  {
    v7 = fabs(v2);
    if (v7 == *(MEMORY[0x1E695EFD0] + 24))
    {
      return 1;
    }
  }

  else
  {
    v7 = fabs(v2);
  }

  v8 = fabs(v1);
  v9 = fabs(v3);
  if (v8 + -1.0 < 0.00000011920929 && v4 < 0.00000011920929 && v7 < 0.00000011920929 && v9 + -1.0 < 0.00000011920929)
  {
    return 1;
  }

  return v4 + -1.0 < 0.00000011920929 && v8 < 0.00000011920929 && v9 < 0.00000011920929 && v7 + -1.0 < 0.00000011920929;
}

uint64_t sub_188A551E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_18A4A8888();
  sub_18A4A7348();
  v6 = sub_18A4A88E8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_18A4A86C8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_188A553A0()
{
  result = qword_1ED48E970;
  if (!qword_1ED48E970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48E970);
  }

  return result;
}

uint64_t sub_188A553EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188A5548C(uint64_t a1, uint64_t a2)
{
  if (qword_1EA931CE8 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_1EA935148;
  if (*(off_1EA935148 + 2))
  {
    v3 = sub_188B0944C(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + v3);
    }
  }

  else
  {
  }

  return 13;
}

_OWORD *sub_188A55538(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_188A55598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_188A55B8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_188A55BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    memset(v13, 0, sizeof(v13));
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  *&v11 = a3;
  sub_188A55538(&v11, v13);
  if (a4)
  {
LABEL_4:
    a4 = sub_18A4A70A8();
  }

LABEL_5:

  swift_unknownObjectRetain();
  v6(v7, v9, v13, a4);

  return sub_188A3F5FC(v13, &qword_1EA934050, qword_18A64CA10);
}

double sub_188A55CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, void (*a9)(void, void, void, void, void, void, void, void, void, void), uint64_t a10, id *a11, uint64_t a12)
{
  if (!a2)
  {
    return result;
  }

  v13 = a5;
  HIDWORD(v32) = a8;
  v34 = a6;
  sub_188A3F29C(a3, &v38, &qword_1EA934050, qword_18A64CA10);
  v35 = a12;
  v33 = a9;
  if (!*(&v39 + 1))
  {
    sub_188A3F5FC(&v38, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_7;
  }

  sub_188A34624(0, &qword_1ED48E970, 0x1E6979398);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_8;
  }

  v14 = sub_18A4A7258();
  v15 = [v36 valueForKeyPath_];

  if (v15)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v36 = v38;
  v37 = v39;
  if (!*(&v39 + 1))
  {
LABEL_8:
    v16 = v13;
    v17 = sub_188A59768(v13);
    v19 = v18;
    Description = v17[-1].Description;
    MEMORY[0x1EEE9AC00](v17);
    v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18A4A8408();
    (*(v19 + 80))(&v38, v17, v19);
    Description[1](v22, v17);
    if (*(&v37 + 1))
    {
      sub_188A3F5FC(&v36, &qword_1EA934050, qword_18A64CA10);
    }

    goto LABEL_13;
  }

  v16 = v13;
  sub_188A55538(&v36, &v38);
LABEL_13:
  v23 = BYTE4(v32);
  v24 = a7;
  v25 = a7;
  v26 = v33;
  v27 = v35;
  if ((sub_188A5602C(v25, BYTE4(v32) & 1, v33, a10, a11, v35, &v38) & 1) == 0)
  {
    v28 = sub_188A59768(v16);
    sub_188A598C0(v24, v23 & 1, v26, a10, a11, v27, &v38, v30, 1, v28, v29);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(&v38);
}

uint64_t sub_188A5602C(void *a1, char a2, uint64_t a3, uint64_t a4, id *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = [v7 shouldDecomposeGeometricTypes];
  if (result)
  {
    if ([(UIView *)a5 __swiftAnimationInfo])
    {
      v17 = sub_188ABDCC8(a2 & 1, a3, a4);

      if (v17)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }

    v473 = a2;
    if (a3 == 0x6E6F697469736F70 && a4 == 0xE800000000000000 || (sub_18A4A86C8() & 1) != 0)
    {
      sub_188A55598(a6, &v477);
      sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
      swift_dynamicCast();
      v18 = v494[0];
      [v494[0] CGPointValue];
      v20 = v19;
      v22 = v21;

      sub_188A55598(a7, &v477);
      swift_dynamicCast();
      v23 = v494[0];
      [v494[0] CGPointValue];
      v25 = v24;
      v27 = v26;

      v28 = MEMORY[0x1E69E7DE0];
      v480 = MEMORY[0x1E69E7DE0];
      v477 = v20;
      sub_188A55598(&v477, v494);
      sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
      swift_dynamicCast();
      v29 = v493;
      [v493 doubleValue];
      v31 = v30;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v28;
      v477 = v25;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v32 = v493;
      [v493 doubleValue];
      v34 = v33;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v31;
      v494[0] = v34;
      if (vabdd_f64(v31, *&v34) > 0.001)
      {
        [v8 preferredFrameRateRange];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = a2;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v43 = a5;
          v44 = sub_188A5DF40(v43, sub_188ABE008, v42);

          v41 = v473;

          [(UIView *)v43 set__swiftAnimationInfo:v44];
        }

        v45 = v41 & 1;
        sub_188A6D6CC(v41 & 1, 0x6E6F697469736F70, 0xEA0000000000782ELL);
        v463 = v46;

        v47 = [a1 context];
        v48 = a5;
        if (v47)
        {

          v454 = 0;
          v49 = sub_188AB3830;
        }

        else
        {
          v92 = swift_allocObject();
          *(v92 + 16) = 1;
          v93 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v94 = swift_allocObject();
          *(v94 + 16) = v92;
          *(v94 + 24) = v93;
          v454 = v94;
          v49 = sub_188F0E070;
        }

        v446 = v49;
        v95 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        v471 = v8;
        if (sub_18A4A86C8())
        {
          v96 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v96 = sub_188D39390;
        }

        else
        {
          v96 = 0;
        }

        ObjectType = swift_getObjectType();
        v98 = swift_allocObject();
        *(v98 + 16) = v96;
        *(v98 + 24) = 0;
        *(v98 + 32) = v48;
        *(v98 + 40) = v36;
        *(v98 + 44) = v38;
        *(v98 + 48) = v40;
        *(v98 + 52) = v95 == 2;
        *(v98 + 56) = v45;
        *(v98 + 64) = 0x6E6F697469736F70;
        *(v98 + 72) = 0xEA0000000000782ELL;
        v99 = swift_allocObject();
        *(v99 + 16) = v48;
        *(v99 + 24) = v45;
        *(v99 + 32) = 0x6E6F697469736F70;
        *(v99 + 40) = 0xEA0000000000782ELL;
        v100 = *(v463 + 200);
        v101 = v48;
        sub_188A52E38(v96, 0);
        v100(&v477, v494, v446, v454, sub_188F0DFF8, v98, sub_188F0E0BC, v99, ObjectType, v463);
        v102 = v96;
        a5 = v48;
        sub_188A55B8C(v102, 0);

        swift_unknownObjectRelease();

        v8 = v471;
        v28 = MEMORY[0x1E69E7DE0];
      }

      v480 = v28;
      v477 = v22;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v103 = v493;
      [v493 doubleValue];
      v105 = v104;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v28;
      v477 = v27;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v106 = v493;
      [v493 doubleValue];
      v108 = v107;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v105;
      v494[0] = v108;
      v109 = v473;
      if (vabdd_f64(v105, *&v108) <= 0.001)
      {
        return 1;
      }

      [v8 preferredFrameRateRange];
      v111 = v110;
      v113 = v112;
      v115 = v114;
      if (![(UIView *)a5 __swiftAnimationInfo])
      {
        v116 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v117 = a5;
        v118 = sub_188A5DF40(v117, sub_188ABE008, v116);

        v109 = v473;

        [(UIView *)v117 set__swiftAnimationInfo:v118];
      }

      v119 = v109 & 1;
      sub_188A6D6CC(v109 & 1, 0x6E6F697469736F70, 0xEA0000000000792ELL);
      v474 = v120;

      v121 = [a1 context];
      if (v121)
      {

        v122 = 0;
        v123 = sub_188AB3830;
      }

      else
      {
        v124 = swift_allocObject();
        *(v124 + 16) = 1;
        v125 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v122 = swift_allocObject();
        *(v122 + 16) = v124;
        *(v122 + 24) = v125;
        v123 = sub_188F0E070;
      }

      v466 = v123;
      v126 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      if (sub_18A4A86C8())
      {
        v127 = sub_188AA977C;
      }

      else if (sub_18A4A86C8())
      {
        v127 = sub_188D39390;
      }

      else
      {
        v127 = 0;
      }

      v128 = swift_getObjectType();
      v129 = swift_allocObject();
      *(v129 + 16) = v127;
      *(v129 + 24) = 0;
      *(v129 + 32) = a5;
      *(v129 + 40) = v111;
      *(v129 + 44) = v113;
      *(v129 + 48) = v115;
      *(v129 + 52) = v126 == 2;
      *(v129 + 56) = v119;
      *(v129 + 64) = 0x6E6F697469736F70;
      *(v129 + 72) = 0xEA0000000000792ELL;
      v130 = swift_allocObject();
      *(v130 + 16) = a5;
      *(v130 + 24) = v119;
      *(v130 + 32) = 0x6E6F697469736F70;
      *(v130 + 40) = 0xEA0000000000792ELL;
      v131 = *(v474 + 200);
      v132 = a5;
      sub_188A52E38(v127, 0);
      v131(&v477, v494, v466, v122, sub_188F0DFF8, v129, sub_188F0E0BC, v130, v128, v474);
      sub_188A55B8C(v127, 0);

      swift_unknownObjectRelease();

LABEL_96:

      return 1;
    }

    if (a3 == 0x73646E756F62 && a4 == 0xE600000000000000 || (sub_18A4A86C8() & 1) != 0)
    {
      v470 = v7;
      sub_188A55598(a6, &v477);
      sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
      swift_dynamicCast();
      v50 = v494[0];
      [v494[0] CGRectValue];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;

      sub_188A55598(a7, &v477);
      swift_dynamicCast();
      v59 = v494[0];
      [v494[0] CGRectValue];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;

      v68 = MEMORY[0x1E69E7DE0];
      v480 = MEMORY[0x1E69E7DE0];
      v477 = v52;
      sub_188A55598(&v477, v494);
      sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
      swift_dynamicCast();
      v69 = v493;
      [v493 doubleValue];
      v71 = v70;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v68;
      v477 = v61;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v72 = v493;
      [v493 doubleValue];
      v74 = v73;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v71;
      v494[0] = v74;
      v465 = a1;
      if (vabdd_f64(v71, *&v74) > 0.001)
      {
        v445 = v56;
        v455 = v65;
        v75 = v58;
        v76 = v67;
        [v8 preferredFrameRateRange];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v83 = v473;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v85 = a5;
          v86 = sub_188A5DF40(v85, sub_188ABE008, v84);

          v83 = v473;

          [(UIView *)v85 set__swiftAnimationInfo:v86];
        }

        v87 = v83 & 1;
        sub_188A6D6CC(v83 & 1, 0x6F2E73646E756F62, 0xEF782E6E69676972);
        v443 = v88;

        v89 = [v465 context];
        if (v89)
        {

          v90 = 0;
          v91 = sub_188AB3830;
        }

        else
        {
          v168 = swift_allocObject();
          *(v168 + 16) = 1;
          v169 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v90 = swift_allocObject();
          *(v90 + 16) = v168;
          *(v90 + 24) = v169;
          v91 = sub_188F0E070;
        }

        v442 = v91;
        v170 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v171 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v171 = sub_188D39390;
        }

        else
        {
          v171 = 0;
        }

        v172 = v170 == 2;
        v173 = swift_getObjectType();
        v174 = swift_allocObject();
        *(v174 + 16) = v171;
        *(v174 + 24) = 0;
        *(v174 + 32) = a5;
        *(v174 + 40) = v78;
        *(v174 + 44) = v80;
        *(v174 + 48) = v82;
        *(v174 + 52) = v172;
        *(v174 + 56) = v87;
        *(v174 + 64) = 0x6F2E73646E756F62;
        *(v174 + 72) = 0xEF782E6E69676972;
        v175 = swift_allocObject();
        *(v175 + 16) = a5;
        *(v175 + 24) = v87;
        *(v175 + 32) = 0x6F2E73646E756F62;
        *(v175 + 40) = 0xEF782E6E69676972;
        v176 = *(v443 + 200);
        v177 = a5;
        sub_188A52E38(v171, 0);
        v176(&v477, v494, v442, v90, sub_188F0DFF8, v174, sub_188F0E0BC, v175, v173, v443);
        sub_188A55B8C(v171, 0);

        swift_unknownObjectRelease();

        a1 = v465;
        v67 = v76;
        v58 = v75;
        v68 = MEMORY[0x1E69E7DE0];
        v65 = v455;
        v56 = v445;
      }

      v480 = v68;
      v477 = v54;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v178 = v493;
      [v493 doubleValue];
      v180 = v179;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v68;
      v477 = v63;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v181 = v493;
      [v493 doubleValue];
      v183 = v182;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v180;
      v494[0] = v183;
      v184 = v473;
      if (vabdd_f64(v180, *&v183) > 0.001)
      {
        [v470 preferredFrameRateRange];
        v186 = v185;
        v188 = v187;
        v190 = v189;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v191 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v192 = a5;
          v193 = sub_188A5DF40(v192, sub_188ABE008, v191);

          v184 = v473;

          [(UIView *)v192 set__swiftAnimationInfo:v193];
        }

        v194 = v184 & 1;
        sub_188A6D6CC(v184 & 1, 0x6F2E73646E756F62, 0xEF792E6E69676972);
        v457 = v195;

        v196 = [v465 context];
        if (v196)
        {

          v447 = 0;
          v197 = sub_188AB3830;
        }

        else
        {
          v198 = swift_allocObject();
          *(v198 + 16) = 1;
          v199 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v200 = swift_allocObject();
          *(v200 + 16) = v198;
          *(v200 + 24) = v199;
          v447 = v200;
          v197 = sub_188F0E070;
        }

        v444 = v197;
        v201 = v470[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v202 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v202 = sub_188D39390;
        }

        else
        {
          v202 = 0;
        }

        v203 = v201 == 2;
        v204 = swift_getObjectType();
        v205 = swift_allocObject();
        *(v205 + 16) = v202;
        *(v205 + 24) = 0;
        *(v205 + 32) = a5;
        *(v205 + 40) = v186;
        *(v205 + 44) = v188;
        *(v205 + 48) = v190;
        *(v205 + 52) = v203;
        *(v205 + 56) = v194;
        *(v205 + 64) = 0x6F2E73646E756F62;
        *(v205 + 72) = 0xEF792E6E69676972;
        v206 = swift_allocObject();
        *(v206 + 16) = a5;
        *(v206 + 24) = v194;
        *(v206 + 32) = 0x6F2E73646E756F62;
        *(v206 + 40) = 0xEF792E6E69676972;
        v207 = *(v457 + 200);
        v208 = a5;
        sub_188A52E38(v202, 0);
        v207(&v477, v494, v444, v447, sub_188F0DFF8, v205, sub_188F0E0BC, v206, v204, v457);
        sub_188A55B8C(v202, 0);

        swift_unknownObjectRelease();

        a1 = v465;
        v184 = v473;
        v68 = MEMORY[0x1E69E7DE0];
      }

      v480 = v68;
      v477 = v56;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v209 = v493;
      [v493 doubleValue];
      v211 = v210;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v68;
      v477 = v65;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v212 = v493;
      [v493 doubleValue];
      v214 = v213;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v211;
      v494[0] = v214;
      if (vabdd_f64(v211, *&v214) > 0.001)
      {
        [v470 preferredFrameRateRange];
        v216 = v215;
        v218 = v217;
        v220 = v219;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v221 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v222 = a5;
          v223 = sub_188A5DF40(v222, sub_188ABE008, v221);

          v184 = v473;

          [(UIView *)v222 set__swiftAnimationInfo:v223];
        }

        v224 = v184 & 1;
        sub_188A6D6CC(v184 & 1, 0xD000000000000011, 0x800000018A689200);
        v458 = v225;

        v226 = [a1 context];
        if (v226)
        {

          v227 = 0;
          v228 = sub_188AB3830;
        }

        else
        {
          v229 = swift_allocObject();
          *(v229 + 16) = 1;
          v230 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v227 = swift_allocObject();
          *(v227 + 16) = v229;
          *(v227 + 24) = v230;
          v228 = sub_188F0E070;
        }

        v448 = v228;
        v231 = v470[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v232 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v232 = sub_188D39390;
        }

        else
        {
          v232 = 0;
        }

        v233 = v231 == 2;
        v234 = swift_getObjectType();
        v235 = swift_allocObject();
        *(v235 + 16) = v232;
        *(v235 + 24) = 0;
        *(v235 + 32) = a5;
        *(v235 + 40) = v216;
        *(v235 + 44) = v218;
        *(v235 + 48) = v220;
        *(v235 + 52) = v233;
        *(v235 + 56) = v224;
        *(v235 + 64) = 0xD000000000000011;
        *(v235 + 72) = 0x800000018A689200;
        v236 = swift_allocObject();
        *(v236 + 16) = a5;
        *(v236 + 24) = v224;
        *(v236 + 32) = 0xD000000000000011;
        *(v236 + 40) = 0x800000018A689200;
        v237 = *(v458 + 200);
        v238 = a5;
        sub_188A52E38(v232, 0);
        v237(&v477, v494, v448, v227, sub_188F0DFF8, v235, sub_188F0E0BC, v236, v234, v458);
        sub_188A55B8C(v232, 0);

        swift_unknownObjectRelease();

        a1 = v465;
        v184 = v473;
        v68 = MEMORY[0x1E69E7DE0];
      }

      v480 = v68;
      v477 = v58;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v239 = v493;
      [v493 doubleValue];
      v241 = v240;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v68;
      v477 = v67;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v242 = v493;
      [v493 doubleValue];
      v244 = v243;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v241;
      v494[0] = v244;
      if (vabdd_f64(v241, *&v244) <= 0.001)
      {
        return 1;
      }

      [v470 preferredFrameRateRange];
      v246 = v245;
      v248 = v247;
      v250 = v249;
      if (![(UIView *)a5 __swiftAnimationInfo])
      {
        v251 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v252 = a5;
        v253 = sub_188A5DF40(v252, sub_188ABE008, v251);

        v184 = v473;

        [(UIView *)v252 set__swiftAnimationInfo:v253];
      }

      v254 = v184 & 1;
      sub_188A6D6CC(v184 & 1, 0xD000000000000012, 0x800000018A689220);
      v475 = v255;

      v256 = [a1 context];
      if (v256)
      {

        v257 = 0;
        v258 = sub_188AB3830;
      }

      else
      {
        v259 = swift_allocObject();
        *(v259 + 16) = 1;
        v260 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v257 = swift_allocObject();
        *(v257 + 16) = v259;
        *(v257 + 24) = v260;
        v258 = sub_188F0E070;
      }

      v468 = v258;
      v261 = v470[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      if (sub_18A4A86C8())
      {
        v262 = sub_188AA977C;
      }

      else if (sub_18A4A86C8())
      {
        v262 = sub_188D39390;
      }

      else
      {
        v262 = 0;
      }

      v263 = v261 == 2;
      v264 = swift_getObjectType();
      v265 = swift_allocObject();
      *(v265 + 16) = v262;
      *(v265 + 24) = 0;
      *(v265 + 32) = a5;
      *(v265 + 40) = v246;
      *(v265 + 44) = v248;
      *(v265 + 48) = v250;
      *(v265 + 52) = v263;
      *(v265 + 56) = v254;
      *(v265 + 64) = 0xD000000000000012;
      *(v265 + 72) = 0x800000018A689220;
      v266 = swift_allocObject();
      *(v266 + 16) = a5;
      *(v266 + 24) = v254;
      *(v266 + 32) = 0xD000000000000012;
      *(v266 + 40) = 0x800000018A689220;
      v267 = *(v475 + 200);
      v268 = a5;
      sub_188A52E38(v262, 0);
      v267(&v477, v494, v468, v257, sub_188F0DFF8, v265, sub_188F0E0BC, v266, v264, v475);
      goto LABEL_95;
    }

    if ((a3 != 0x726F66736E617274 || a4 != 0xE90000000000006DLL) && (sub_18A4A86C8() & 1) == 0)
    {
      return 0;
    }

    sub_188A55598(a6, v494);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    [v493 CATransform3DValue];
    v133 = v482;
    v435 = v487;
    v437 = v489;
    v439 = v490;
    v441 = v491;

    sub_188A55598(a7, v494);
    swift_dynamicCast();
    [v493 CATransform3DValue];
    v134 = v477;
    v135 = v482;
    v434 = v487;
    v436 = v489;
    v438 = v490;
    v440 = v491;
    v136.f64[0] = v478;
    v136.f64[1] = v478;
    v464 = v136;

    result = 0;
    v137.f64[0] = v479;
    v137.f64[1] = v479;
    v138.f64[0] = v480;
    v138.f64[1] = v480;
    v139.f64[0] = v481;
    v139.f64[1] = v481;
    v140.f64[0] = v483;
    v140.f64[1] = v483;
    v141.f64[0] = v484;
    v141.f64[1] = v484;
    v142.f64[0] = v485;
    v142.f64[1] = v485;
    v143.f64[0] = v486;
    v143.f64[1] = v486;
    v144 = vdupq_n_s64(0x3F747AE147AE147BuLL);
    if ((vmaxvq_u8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vabsq_f64(v464)), vcgeq_f64(v144, vabsq_f64(v137))), vuzp1q_s32(vcgeq_f64(v144, vabsq_f64(v138)), vcgeq_f64(v144, vabsq_f64(v139))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vabsq_f64(v140)), vcgeq_f64(v144, vabsq_f64(v141))), vuzp1q_s32(vcgeq_f64(v144, vabsq_f64(v142)), vcgeq_f64(v144, vabsq_f64(v143))))))) & 1) == 0 && fabs(v488) <= 0.005)
    {
      if (fabs(v492 + -1.0) > 0.005)
      {
        return 0;
      }

      v145 = MEMORY[0x1E69E7DE0];
      v480 = MEMORY[0x1E69E7DE0];
      sub_188A55598(&v477, v494);
      sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
      swift_dynamicCast();
      v146 = v493;
      [v493 doubleValue];
      v148 = v147;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v134;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v149 = v493;
      [v493 doubleValue];
      v151 = v150;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v148;
      v494[0] = v151;
      v467 = a1;
      v472 = v7;
      if (vabdd_f64(v148, *&v151) > 0.001)
      {
        [v7 preferredFrameRateRange];
        v153 = v152;
        v155 = v154;
        v157 = v156;
        v158 = v473;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v159 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v160 = a5;
          v161 = sub_188A5DF40(v160, sub_188ABE000, v159);

          v158 = v473;

          [(UIView *)v160 set__swiftAnimationInfo:v161];
        }

        v162 = v158 & 1;
        sub_188A6D6CC(v158 & 1, 0xD000000000000011, 0x800000018A690D90);
        v456 = v163;

        v164 = [a1 context];
        v165 = a5;
        if (v164)
        {

          v166 = 0;
          v167 = sub_188AB3830;
        }

        else
        {
          v269 = swift_allocObject();
          *(v269 + 16) = 1;
          v270 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v166 = swift_allocObject();
          *(v166 + 16) = v269;
          *(v166 + 24) = v270;
          v167 = sub_188C3DEF8;
        }

        v449 = v167;
        v271 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v272 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v272 = sub_188D39390;
        }

        else
        {
          v272 = 0;
        }

        v273 = v271 == 2;
        v274 = swift_getObjectType();
        v275 = swift_allocObject();
        *(v275 + 16) = v272;
        *(v275 + 24) = 0;
        *(v275 + 32) = v165;
        *(v275 + 40) = v153;
        *(v275 + 44) = v155;
        *(v275 + 48) = v157;
        *(v275 + 52) = v273;
        *(v275 + 56) = v162;
        *(v275 + 64) = 0xD000000000000011;
        *(v275 + 72) = 0x800000018A690D90;
        v276 = swift_allocObject();
        *(v276 + 16) = v165;
        *(v276 + 24) = v162;
        *(v276 + 32) = 0xD000000000000011;
        *(v276 + 40) = 0x800000018A690D90;
        v277 = *(v456 + 200);
        v278 = v165;
        sub_188A52E38(v272, 0);
        v277(&v477, v494, v449, v166, sub_188F0DFF8, v275, sub_188AB79D0, v276, v274, v456);
        v279 = v272;
        a5 = v165;
        sub_188A55B8C(v279, 0);

        swift_unknownObjectRelease();

        a1 = v467;
        v8 = v472;
        v145 = MEMORY[0x1E69E7DE0];
      }

      v480 = v145;
      v477 = v133;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v280 = v493;
      [v493 doubleValue];
      v282 = v281;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v135;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v283 = v493;
      [v493 doubleValue];
      v285 = v284;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v282;
      v494[0] = v285;
      v286 = v473;
      if (vabdd_f64(v282, *&v285) > 0.001)
      {
        [v8 preferredFrameRateRange];
        v288 = v287;
        v290 = v289;
        v292 = v291;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v293 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v294 = a5;
          v295 = sub_188A5DF40(v294, sub_188ABE008, v293);

          v286 = v473;

          [(UIView *)v294 set__swiftAnimationInfo:v295];
        }

        v296 = v286 & 1;
        sub_188A6D6CC(v286 & 1, 0xD000000000000011, 0x800000018A690DB0);
        v459 = v297;

        v298 = [a1 context];
        v299 = a5;
        if (v298)
        {

          v300 = 0;
          v301 = sub_188AB3830;
        }

        else
        {
          v302 = swift_allocObject();
          *(v302 + 16) = 1;
          v303 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v300 = swift_allocObject();
          *(v300 + 16) = v302;
          *(v300 + 24) = v303;
          v301 = sub_188F0E070;
        }

        v450 = v301;
        v304 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v305 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v305 = sub_188D39390;
        }

        else
        {
          v305 = 0;
        }

        v306 = v304 == 2;
        v307 = swift_getObjectType();
        v308 = swift_allocObject();
        *(v308 + 16) = v305;
        *(v308 + 24) = 0;
        *(v308 + 32) = v299;
        *(v308 + 40) = v288;
        *(v308 + 44) = v290;
        *(v308 + 48) = v292;
        *(v308 + 52) = v306;
        *(v308 + 56) = v296;
        *(v308 + 64) = 0xD000000000000011;
        *(v308 + 72) = 0x800000018A690DB0;
        v309 = swift_allocObject();
        *(v309 + 16) = v299;
        *(v309 + 24) = v296;
        *(v309 + 32) = 0xD000000000000011;
        *(v309 + 40) = 0x800000018A690DB0;
        v310 = *(v459 + 200);
        v311 = v299;
        sub_188A52E38(v305, 0);
        v310(&v477, v494, v450, v300, sub_188F0DFF8, v308, sub_188F0E0BC, v309, v307, v459);
        v312 = v305;
        a5 = v299;
        sub_188A55B8C(v312, 0);

        swift_unknownObjectRelease();

        a1 = v467;
        v8 = v472;
        v286 = v473;
        v145 = MEMORY[0x1E69E7DE0];
      }

      v480 = v145;
      v477 = v435;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v313 = v493;
      [v493 doubleValue];
      v315 = v314;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v434;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v316 = v493;
      [v493 doubleValue];
      v318 = v317;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v315;
      v494[0] = v318;
      if (vabdd_f64(v315, *&v318) > 0.001)
      {
        [v8 preferredFrameRateRange];
        v320 = v319;
        v322 = v321;
        v324 = v323;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v325 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v326 = a5;
          v327 = sub_188A5DF40(v326, sub_188ABE008, v325);

          v286 = v473;

          [(UIView *)v326 set__swiftAnimationInfo:v327];
        }

        v328 = v286 & 1;
        sub_188A6D6CC(v286 & 1, 0xD000000000000011, 0x800000018A690DD0);
        v460 = v329;

        v330 = [a1 context];
        v331 = a5;
        if (v330)
        {

          v332 = 0;
          v333 = sub_188AB3830;
        }

        else
        {
          v334 = swift_allocObject();
          *(v334 + 16) = 1;
          v335 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v332 = swift_allocObject();
          *(v332 + 16) = v334;
          *(v332 + 24) = v335;
          v333 = sub_188F0E070;
        }

        v451 = v333;
        v336 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v337 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v337 = sub_188D39390;
        }

        else
        {
          v337 = 0;
        }

        v338 = v336 == 2;
        v339 = swift_getObjectType();
        v340 = swift_allocObject();
        *(v340 + 16) = v337;
        *(v340 + 24) = 0;
        *(v340 + 32) = v331;
        *(v340 + 40) = v320;
        *(v340 + 44) = v322;
        *(v340 + 48) = v324;
        *(v340 + 52) = v338;
        *(v340 + 56) = v328;
        *(v340 + 64) = 0xD000000000000011;
        *(v340 + 72) = 0x800000018A690DD0;
        v341 = swift_allocObject();
        *(v341 + 16) = v331;
        *(v341 + 24) = v328;
        *(v341 + 32) = 0xD000000000000011;
        *(v341 + 40) = 0x800000018A690DD0;
        v342 = *(v460 + 200);
        v343 = v331;
        sub_188A52E38(v337, 0);
        v342(&v477, v494, v451, v332, sub_188F0DFF8, v340, sub_188F0E0BC, v341, v339, v460);
        v344 = v337;
        a5 = v331;
        sub_188A55B8C(v344, 0);

        swift_unknownObjectRelease();

        a1 = v467;
        v8 = v472;
        v286 = v473;
        v145 = MEMORY[0x1E69E7DE0];
      }

      v480 = v145;
      v477 = v437;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v345 = v493;
      [v493 doubleValue];
      v347 = v346;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v436;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v348 = v493;
      [v493 doubleValue];
      v350 = v349;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v347;
      v494[0] = v350;
      if (vabdd_f64(v347, *&v350) > 0.001)
      {
        [v8 preferredFrameRateRange];
        v352 = v351;
        v354 = v353;
        v356 = v355;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v357 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v358 = a5;
          v359 = sub_188A5DF40(v358, sub_188ABE008, v357);

          v286 = v473;

          [(UIView *)v358 set__swiftAnimationInfo:v359];
        }

        v360 = v286 & 1;
        sub_188A6D6CC(v286 & 1, 0xD000000000000017, 0x800000018A690DF0);
        v461 = v361;

        v362 = [a1 context];
        if (v362)
        {

          v363 = 0;
          v364 = sub_188AB3830;
        }

        else
        {
          v365 = swift_allocObject();
          *(v365 + 16) = 1;
          v366 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v363 = swift_allocObject();
          *(v363 + 16) = v365;
          *(v363 + 24) = v366;
          v364 = sub_188F0E070;
        }

        v452 = v364;
        v367 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v368 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v368 = sub_188D39390;
        }

        else
        {
          v368 = 0;
        }

        v369 = v367 == 2;
        v370 = swift_getObjectType();
        v371 = swift_allocObject();
        *(v371 + 16) = v368;
        *(v371 + 24) = 0;
        *(v371 + 32) = a5;
        *(v371 + 40) = v352;
        *(v371 + 44) = v354;
        *(v371 + 48) = v356;
        *(v371 + 52) = v369;
        *(v371 + 56) = v360;
        *(v371 + 64) = 0xD000000000000017;
        *(v371 + 72) = 0x800000018A690DF0;
        v372 = swift_allocObject();
        *(v372 + 16) = a5;
        *(v372 + 24) = v360;
        *(v372 + 32) = 0xD000000000000017;
        *(v372 + 40) = 0x800000018A690DF0;
        v373 = *(v461 + 200);
        v374 = a5;
        sub_188A52E38(v368, 0);
        v373(&v477, v494, v452, v363, sub_188F0DFF8, v371, sub_188F0E0BC, v372, v370, v461);
        sub_188A55B8C(v368, 0);

        swift_unknownObjectRelease();

        a1 = v467;
        v8 = v472;
        v286 = v473;
        v145 = MEMORY[0x1E69E7DE0];
      }

      v480 = v145;
      v477 = v439;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v375 = v493;
      [v493 doubleValue];
      v377 = v376;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v438;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v378 = v493;
      [v493 doubleValue];
      v380 = v379;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v377;
      v494[0] = v380;
      if (vabdd_f64(v377, *&v380) > 0.001)
      {
        [v8 preferredFrameRateRange];
        v382 = v381;
        v384 = v383;
        v386 = v385;
        if (![(UIView *)a5 __swiftAnimationInfo])
        {
          v387 = swift_allocObject();
          swift_unknownObjectWeakInit();
          _s13AnimationInfoCMa();
          swift_allocObject();
          v388 = a5;
          v389 = sub_188A5DF40(v388, sub_188ABE008, v387);

          v286 = v473;

          [(UIView *)v388 set__swiftAnimationInfo:v389];
        }

        v390 = v286 & 1;
        sub_188A6D6CC(v286 & 1, 0xD000000000000017, 0x800000018A690E10);
        v462 = v391;

        v392 = [a1 context];
        if (v392)
        {

          v393 = 0;
          v394 = sub_188AB3830;
        }

        else
        {
          v395 = swift_allocObject();
          *(v395 + 16) = 1;
          v396 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v393 = swift_allocObject();
          *(v393 + 16) = v395;
          *(v393 + 24) = v396;
          v394 = sub_188F0E070;
        }

        v453 = v394;
        v397 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
        if (sub_18A4A86C8())
        {
          v398 = sub_188AA977C;
        }

        else if (sub_18A4A86C8())
        {
          v398 = sub_188D39390;
        }

        else
        {
          v398 = 0;
        }

        v399 = v397 == 2;
        v400 = swift_getObjectType();
        v401 = swift_allocObject();
        *(v401 + 16) = v398;
        *(v401 + 24) = 0;
        *(v401 + 32) = a5;
        *(v401 + 40) = v382;
        *(v401 + 44) = v384;
        *(v401 + 48) = v386;
        *(v401 + 52) = v399;
        *(v401 + 56) = v390;
        *(v401 + 64) = 0xD000000000000017;
        *(v401 + 72) = 0x800000018A690E10;
        v402 = swift_allocObject();
        *(v402 + 16) = a5;
        *(v402 + 24) = v390;
        *(v402 + 32) = 0xD000000000000017;
        *(v402 + 40) = 0x800000018A690E10;
        v403 = *(v462 + 200);
        v404 = a5;
        sub_188A52E38(v398, 0);
        v403(&v477, v494, v453, v393, sub_188F0DFF8, v401, sub_188F0E0BC, v402, v400, v462);
        sub_188A55B8C(v398, 0);

        swift_unknownObjectRelease();

        a1 = v467;
        v8 = v472;
        v286 = v473;
        v145 = MEMORY[0x1E69E7DE0];
      }

      v480 = v145;
      v477 = v441;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v405 = v493;
      [v493 doubleValue];
      v407 = v406;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v480 = v145;
      v477 = v440;
      sub_188A55598(&v477, v494);
      swift_dynamicCast();
      v408 = v493;
      [v493 doubleValue];
      v410 = v409;

      __swift_destroy_boxed_opaque_existential_0Tm(&v477);
      v477 = v407;
      v494[0] = v410;
      if (vabdd_f64(v407, *&v410) <= 0.001)
      {
        return 1;
      }

      [v8 preferredFrameRateRange];
      v412 = v411;
      v414 = v413;
      v416 = v415;
      if (![(UIView *)a5 __swiftAnimationInfo])
      {
        v417 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v418 = a5;
        v419 = sub_188A5DF40(v418, sub_188ABE008, v417);

        v286 = v473;

        [(UIView *)v418 set__swiftAnimationInfo:v419];
      }

      v420 = v286 & 1;
      sub_188A6D6CC(v286 & 1, 0xD000000000000017, 0x800000018A690E30);
      v476 = v421;

      v422 = [a1 context];
      if (v422)
      {

        v423 = 0;
        v424 = sub_188AB3830;
      }

      else
      {
        v425 = swift_allocObject();
        *(v425 + 16) = 1;
        v426 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v423 = swift_allocObject();
        *(v423 + 16) = v425;
        *(v423 + 24) = v426;
        v424 = sub_188F0E070;
      }

      v469 = v424;
      v427 = v8[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      if (sub_18A4A86C8())
      {
        v262 = sub_188AA977C;
      }

      else if (sub_18A4A86C8())
      {
        v262 = sub_188D39390;
      }

      else
      {
        v262 = 0;
      }

      v428 = v427 == 2;
      v429 = swift_getObjectType();
      v430 = swift_allocObject();
      *(v430 + 16) = v262;
      *(v430 + 24) = 0;
      *(v430 + 32) = a5;
      *(v430 + 40) = v412;
      *(v430 + 44) = v414;
      *(v430 + 48) = v416;
      *(v430 + 52) = v428;
      *(v430 + 56) = v420;
      *(v430 + 64) = 0xD000000000000017;
      *(v430 + 72) = 0x800000018A690E30;
      v431 = swift_allocObject();
      *(v431 + 16) = a5;
      *(v431 + 24) = v420;
      *(v431 + 32) = 0xD000000000000017;
      *(v431 + 40) = 0x800000018A690E30;
      v432 = *(v476 + 200);
      v433 = a5;
      sub_188A52E38(v262, 0);
      v432(&v477, v494, v469, v423, sub_188F0DFF8, v430, sub_188F0E0BC, v431, v429, v476);
LABEL_95:
      sub_188A55B8C(v262, 0);

      swift_unknownObjectRelease();

      goto LABEL_96;
    }
  }

  return result;
}

ValueMetadata *sub_188A59768(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = &type metadata for UIAnimatableScaledFloat;
      sub_188A919BC();
      break;
    case 2:
      v1 = &type metadata for UIAnimatablePoint;
      sub_188A5FEE8();
      break;
    case 3:
      v1 = &type metadata for UIAnimatableSize;
      sub_188C52734();
      break;
    case 4:
      v1 = &type metadata for UIAnimatableNormalizedPoint;
      sub_188D246D4();
      break;
    case 5:
      v1 = &type metadata for UIAnimatableColor;
      sub_188C520C4();
      break;
    case 6:
      v1 = &type metadata for UIAnimatableColorArray;
      sub_188CD24A4();
      break;
    case 7:
      v1 = &type metadata for UIAnimatableRect;
      sub_188A5ED24();
      break;
    case 8:
      v1 = &type metadata for UIAnimatableNormalizedRect;
      sub_188E9507C();
      break;
    case 9:
      v1 = &type metadata for UIAnimatableTransform;
      sub_188A91E48();
      break;
    case 10:
      v1 = &type metadata for UIAnimatableColorMatrix;
      sub_188C5268C();
      break;
    case 11:
      v1 = &type metadata for UIAnimatableMeshTransform;
      sub_188E95028();
      break;
    case 12:
      v1 = &type metadata for UIAnimatableCornerRadii;
      sub_188D85AE4();
      break;
    default:
      v1 = &type metadata for UIAnimatableFloat;
      sub_188A6D678();
      break;
  }

  return v1;
}

void sub_188A598C0(void *a1, uint64_t a2, void (*a3)(void, void, void, void, void, void, void, void, void, void), uint64_t a4, id *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, ValueMetadata *a10, uint64_t a11)
{
  v595 = a5;
  v597 = a3;
  v594 = a1;
  Description = a10[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v15 = (&v585 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v585 - v19);
  if (a10 == &type metadata for UIAnimatableColorMatrix)
  {
    v23 = v17;
    sub_188A55598(v18, &v639);
    sub_188A55598(&v639, &v625);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v24 = v616;
    [v616 CAColorMatrixValue];
    v592 = v652;
    v593 = v651;
    v590 = v654;
    v591 = v653;
    v25 = v655;

    __swift_destroy_boxed_opaque_existential_0Tm(&v639);
    sub_188A55598(a7, &v639);
    sub_188A55598(&v639, &v625);
    swift_dynamicCast();
    v26 = v616;
    [v616 CAColorMatrixValue];
    v588 = v652;
    v589 = v651;
    v586 = v654;
    v587 = v653;
    v585 = v655;

    __swift_destroy_boxed_opaque_existential_0Tm(&v639);
    v625 = v593;
    v626 = v592;
    v627 = v591;
    v628 = v590;
    v629 = v25;
    v616 = v589;
    v617 = v588;
    v618 = v587;
    v619 = v586;
    v620 = v585;
    if ((a9 & 1) == 0)
    {
      v641 = v618;
      v642 = v619;
      v643 = v620;
      v639 = v616;
      v640 = v617;
      v653 = v627;
      v654 = v628;
      v655 = v629;
      v651 = v625;
      v652 = v626;
      if (sub_188F7BDB0(&v639, 0.01))
      {
        return;
      }
    }

    v27 = ObjectType;
    [ObjectType preferredFrameRateRange];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v595;
    if (![(UIView *)v595 __swiftAnimationInfo])
    {
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v36 = v34;
      v37 = sub_188A5DF40(v36, sub_188ABE008, v35);

      [(UIView *)v36 set__swiftAnimationInfo:v37];
    }

    v38 = v23 & 1;
    v39 = v597;
    sub_188C53068(v38, v597, a4);
    *&v593 = v40;

    v41 = [v594 context];
    if (v41)
    {

      v594 = 0;
      v42 = sub_188AB3830;
    }

    else
    {
      v96 = swift_allocObject();
      *(v96 + 16) = 1;
      v97 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v98 = swift_allocObject();
      v98[2] = v96;
      v98[3] = v97;
      v594 = v98;
      v42 = sub_188F0E070;
    }

    *&v592 = v42;
    v99 = v27[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v100 = sub_188AA977C;
    if (v39 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v101 = sub_18A4A86C8(), v100 = sub_188AA977C, (v101 & 1) != 0) || (v100 = sub_188D39390, v39 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
    {
      v102 = v100;
    }

    else if (sub_18A4A86C8())
    {
      v102 = sub_188D39390;
    }

    else
    {
      v102 = 0;
    }

    v103 = v99 == 2;
    ObjectType = swift_getObjectType();
    v104 = swift_allocObject();
    *(v104 + 16) = v102;
    *(v104 + 24) = 0;
    *(v104 + 32) = v34;
    *(v104 + 40) = v29;
    *(v104 + 44) = v31;
    *(v104 + 48) = v33;
    *(v104 + 52) = v103;
    *(v104 + 56) = v38;
    v105 = v597;
    *(v104 + 64) = v597;
    *(v104 + 72) = a4;
    v106 = swift_allocObject();
    *(v106 + 16) = v34;
    *(v106 + 24) = v38;
    *(v106 + 32) = v105;
    *(v106 + 40) = a4;
    v107 = v34;
    v108 = v593;
    v109 = *(v593 + 200);
    v110 = v107;
    swift_bridgeObjectRetain_n();
    v111 = v110;
    sub_188A52E38(v102, 0);
    v109(&v625, &v616, v592, v594, sub_188F0E020, v104, sub_188F0E0BC, v106, ObjectType, v108);
    goto LABEL_68;
  }

  if (a10 == &type metadata for UIAnimatableSize)
  {
    v43 = v17;
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v44 = v625;
    [v625 CGSizeValue];
    v46 = v45;
    v48 = v47;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v49 = v625;
    [v625 CGSizeValue];
    v51 = v50;
    v53 = v52;

    v54 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v46;
    *(&v651 + 1) = v48;
    *&v639 = v51;
    *(&v639 + 1) = v53;
    if ((a9 & 1) == 0)
    {
      v55 = objc_opt_self();
      v56 = +[(UIScreen *)v55];
      [v56 scale];
      v58 = v57;

      v54 = 1.0 / v58;
      v59 = vabdd_f64(v48, v53);
      if (vabdd_f64(v46, v51) <= 1.0 / v58 && v59 <= v54)
      {
        return;
      }
    }

    v61 = ObjectType;
    [ObjectType preferredFrameRateRange];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v595;
    if (![(UIView *)v595 __swiftAnimationInfo])
    {
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v70 = v68;
      v71 = sub_188A5DF40(v70, sub_188ABE008, v69);

      [(UIView *)v70 set__swiftAnimationInfo:v71];
    }

    v72 = v43 & 1;
    v73 = v597;
    sub_188C527DC(v72, v597, a4);
    *&v593 = v74;

    v75 = [v594 context];
    if (v75)
    {

      v594 = 0;
      v76 = sub_188AB3830;
    }

    else
    {
      v137 = swift_allocObject();
      *(v137 + 16) = 1;
      v138 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v139 = swift_allocObject();
      v139[2] = v137;
      v139[3] = v138;
      v594 = v139;
      v76 = sub_188F0E070;
    }

    *&v592 = v76;
    v140 = v61[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v141 = sub_188AA977C;
    if (v73 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v142 = sub_18A4A86C8(), v141 = sub_188AA977C, (v142 & 1) != 0) || (v141 = sub_188D39390, v73 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
    {
      v102 = v141;
    }

    else if (sub_18A4A86C8())
    {
      v102 = sub_188D39390;
    }

    else
    {
      v102 = 0;
    }

    v143 = v140 == 2;
    ObjectType = swift_getObjectType();
    v144 = swift_allocObject();
    *(v144 + 16) = v102;
    *(v144 + 24) = 0;
    *(v144 + 32) = v68;
    *(v144 + 40) = v63;
    *(v144 + 44) = v65;
    *(v144 + 48) = v67;
    *(v144 + 52) = v143;
    *(v144 + 56) = v72;
    v145 = v597;
    *(v144 + 64) = v597;
    *(v144 + 72) = a4;
    v146 = swift_allocObject();
    *(v146 + 16) = v68;
    *(v146 + 24) = v72;
    *(v146 + 32) = v145;
    *(v146 + 40) = a4;
    v147 = v68;
    v148 = v593;
    v149 = *(v593 + 200);
    v150 = v147;
    swift_bridgeObjectRetain_n();
    v151 = v150;
    sub_188A52E38(v102, 0);
    v149(&v651, &v639, v592, v594, sub_188F0E01C, v144, sub_188F0E0BC, v146, ObjectType, v148);
LABEL_68:
    sub_188A55B8C(v102, 0);

    swift_unknownObjectRelease();

LABEL_120:

    return;
  }

  if (a10 == &type metadata for UIAnimatableColorArray)
  {
    v77 = v17;
    sub_188A55598(v18, &v651);
    v78 = sub_188CCF580(&v651);
    sub_188A55598(a7, &v651);
    v79 = sub_188CCF580(&v651);
    v80 = v79;
    *&v651 = v78;
    *&v639 = v79;
    if ((a9 & 1) != 0 || !sub_189149EF0(v79, v78, 0.01))
    {
      *&v592 = v80;
      *&v593 = v78;
      [ObjectType preferredFrameRateRange];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v87 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v88 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v89 = v87;
        v90 = sub_188A5DF40(v89, sub_188ABE008, v88);

        [(UIView *)v89 set__swiftAnimationInfo:v90];
      }

      v91 = v77 & 1;
      v92 = v597;
      sub_188CCF924(v77 & 1, v597, a4);
      *&v591 = v93;

      v94 = [v594 context];
      if (v94)
      {

        v594 = 0;
        v95 = sub_188AB3830;
      }

      else
      {
        v172 = swift_allocObject();
        *(v172 + 16) = 1;
        v173 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v174 = swift_allocObject();
        v174[2] = v172;
        v174[3] = v173;
        v594 = v174;
        v95 = sub_188F0E070;
      }

      *&v590 = v95;
      v175 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v176 = sub_188AA977C;
      if (v92 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v177 = sub_18A4A86C8(), v176 = sub_188AA977C, (v177 & 1) != 0) || (v176 = sub_188D39390, v92 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v178 = v176;
      }

      else if (sub_18A4A86C8())
      {
        v178 = sub_188D39390;
      }

      else
      {
        v178 = 0;
      }

      v179 = v175 == 2;
      ObjectType = swift_getObjectType();
      v180 = swift_allocObject();
      *(v180 + 16) = v178;
      *(v180 + 24) = 0;
      *(v180 + 32) = v87;
      *(v180 + 40) = v82;
      *(v180 + 44) = v84;
      *(v180 + 48) = v86;
      *(v180 + 52) = v179;
      *(v180 + 56) = v91;
      v181 = v597;
      *(v180 + 64) = v597;
      *(v180 + 72) = a4;
      v182 = swift_allocObject();
      *(v182 + 16) = v87;
      *(v182 + 24) = v91;
      *(v182 + 32) = v181;
      *(v182 + 40) = a4;
      v183 = v87;
      v184 = v591;
      v185 = *(v591 + 200);
      v186 = v183;
      swift_bridgeObjectRetain_n();
      v187 = v186;
      sub_188A52E38(v178, 0);
      v185(&v651, &v639, v590, v594, sub_188F0E018, v180, sub_188F0E0BC, v182, ObjectType, v184);

      sub_188A55B8C(v178, 0);

      swift_unknownObjectRelease();

      goto LABEL_120;
    }

    goto LABEL_34;
  }

  if (a10 == &type metadata for UIAnimatableCornerRadii)
  {
    v112 = v17;
    sub_188A55598(v18, &v639);
    sub_188A55598(&v639, &v625);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v113 = v616;
    [v616 CACornerRadiiValue];
    *&v592 = *(&v651 + 1);
    *&v593 = v651;
    *&v588 = *(&v652 + 1);
    *&v590 = v652;
    *&v591 = *(&v653 + 1);
    *&v587 = v653;
    *&v586 = *(&v654 + 1);
    *&v589 = v654;

    __swift_destroy_boxed_opaque_existential_0Tm(&v639);
    sub_188A55598(a7, &v639);
    sub_188A55598(&v639, &v625);
    swift_dynamicCast();
    v114 = v616;
    [v616 CACornerRadiiValue];
    v115 = v651;
    v116 = v652;
    v117 = v653;
    v118 = v654;

    __swift_destroy_boxed_opaque_existential_0Tm(&v639);
    *&v651 = v593;
    *(&v651 + 1) = v592;
    *&v652 = v590;
    *(&v652 + 1) = v588;
    *&v653 = v587;
    *(&v653 + 1) = v591;
    *&v654 = v589;
    *(&v654 + 1) = v586;
    v639 = v115;
    v640 = v116;
    v641 = v117;
    v642 = v118;
    if ((a9 & 1) != 0 || vabdd_f64(*&v593, *&v115) > 0.001 || vabdd_f64(*&v592, *(&v115 + 1)) > 0.001 || vabdd_f64(*&v590, *&v116) > 0.001 || vabdd_f64(*&v588, *(&v116 + 1)) > 0.001 || vabdd_f64(*&v587, *&v117) > 0.001 || vabdd_f64(*&v591, *(&v117 + 1)) > 0.001 || vabdd_f64(*&v589, *&v118) > 0.001 || vabdd_f64(*&v586, *(&v118 + 1)) > 0.001)
    {
      v119 = a4;
      [ObjectType preferredFrameRateRange];
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v126 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v128 = v126;
        v129 = sub_188A5DF40(v128, sub_188ABE008, v127);

        [(UIView *)v128 set__swiftAnimationInfo:v129];
      }

      v130 = v112 & 1;
      v131 = v112 & 1;
      v132 = v597;
      sub_188ECD198(v131, v597, v119);
      v134 = v133;

      v135 = [v594 context];
      if (v135)
      {

        v594 = 0;
        v136 = sub_188AB3830;
      }

      else
      {
        v195 = swift_allocObject();
        *(v195 + 16) = 1;
        v196 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v197 = swift_allocObject();
        v197[2] = v195;
        v197[3] = v196;
        v594 = v197;
        v136 = sub_188F0E070;
      }

      *&v593 = v136;
      v198 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v199 = sub_188AA977C;
      if (v132 == 0xD000000000000020 && 0x800000018A689070 == v119 || (v200 = sub_18A4A86C8(), v199 = sub_188AA977C, (v200 & 1) != 0) || (v199 = sub_188D39390, v132 == 0xD000000000000021) && 0x800000018A6890A0 == v119)
      {
        v201 = v199;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v202 = v198 == 2;
      ObjectType = swift_getObjectType();
      v203 = swift_allocObject();
      *(v203 + 16) = v201;
      *(v203 + 24) = 0;
      *(v203 + 32) = v126;
      *(v203 + 40) = v121;
      *(v203 + 44) = v123;
      *(v203 + 48) = v125;
      *(v203 + 52) = v202;
      *(v203 + 56) = v130;
      v204 = v597;
      *(v203 + 64) = v597;
      *(v203 + 72) = v119;
      v205 = swift_allocObject();
      *(v205 + 16) = v126;
      *(v205 + 24) = v130;
      *(v205 + 32) = v204;
      *(v205 + 40) = v119;
      v206 = *(v134 + 200);
      v207 = v126;
      swift_bridgeObjectRetain_n();
      v208 = v207;
      sub_188A52E38(v201, 0);
      v206(&v651, &v639, v593, v594, sub_188F0E014, v203, sub_188F0E0BC, v205, ObjectType, v134);
      goto LABEL_97;
    }

    return;
  }

  if (a10 == &type metadata for UIAnimatableVector)
  {
    v152 = v17;
    sub_188A55598(v18, &v651);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368, &qword_18A650800);
    swift_dynamicCast();
    v153 = v639;
    sub_188A55598(a7, &v651);
    swift_dynamicCast();
    v154 = v639;
    *&v651 = v153;
    if ((a9 & 1) != 0 || (sub_188BD69E4(v639, v153, 0.001) & 1) == 0)
    {
      *&v592 = v154;
      *&v593 = v153;
      v155 = ObjectType;
      [ObjectType preferredFrameRateRange];
      v157 = v156;
      v159 = v158;
      v161 = v160;
      v162 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v163 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v164 = v162;
        v165 = sub_188A5DF40(v164, sub_188ABE008, v163);

        [(UIView *)v164 set__swiftAnimationInfo:v165];
      }

      v166 = v152 & 1;
      v167 = sub_188ECD5C8(v152 & 1, v597, a4);
      v169 = v168;

      v170 = [v594 context];
      if (v170)
      {

        v594 = 0;
        v171 = sub_188AB3830;
      }

      else
      {
        v251 = swift_allocObject();
        *(v251 + 16) = 1;
        v252 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v253 = swift_allocObject();
        v253[2] = v251;
        v253[3] = v252;
        v594 = v253;
        v171 = sub_188F0E070;
      }

      *&v591 = v171;
      v254 = v155[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v255 = sub_188AA977C;
      if (v597 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v256 = v597, v257 = sub_18A4A86C8(), v255 = sub_188AA977C, (v257 & 1) != 0) || (v255 = sub_188D39390, v256 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v258 = v255;
      }

      else if (sub_18A4A86C8())
      {
        v258 = sub_188D39390;
      }

      else
      {
        v258 = 0;
      }

      ObjectType = swift_getObjectType();
      v259 = swift_allocObject();
      *(v259 + 16) = v258;
      *(v259 + 24) = 0;
      v260 = v595;
      *(v259 + 32) = v595;
      *(v259 + 40) = v157;
      *(v259 + 44) = v159;
      *(v259 + 48) = v161;
      *(v259 + 52) = v254 == 2;
      *(v259 + 56) = v166;
      *&v590 = v167;
      v261 = v597;
      *(v259 + 64) = v597;
      *(v259 + 72) = a4;
      v262 = swift_allocObject();
      *(v262 + 16) = v260;
      *(v262 + 24) = v166;
      *(v262 + 32) = v261;
      *(v262 + 40) = a4;
      v263 = *(v169 + 200);
      v264 = v260;
      swift_bridgeObjectRetain_n();
      v265 = v264;
      sub_188A52E38(v258, 0);
      v263(&v651, &v639, v591, v594, sub_188F0E010, v259, sub_188F0E0BC, v262, ObjectType, v169);

      sub_188A55B8C(v258, 0);

      swift_unknownObjectRelease();

      goto LABEL_120;
    }

LABEL_34:

    return;
  }

  if (a10 == &type metadata for UIAnimatableMeshTransform)
  {
    LODWORD(v593) = v17;
    *&v588 = a4;
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v625);
    sub_188A34624(0, &qword_1EA92E860, 0x1E69793D8);
    swift_dynamicCast();
    v188 = v616;
    sub_1890908B0(v616, &v639);
    v589 = v639;
    *&v590 = *(&v640 + 1);
    *&v591 = v640;
    *&v592 = v641;
    v189 = BYTE4(v641);

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v625);
    sub_188A55598(&v625, &v616);
    swift_dynamicCast();
    v190 = v607;
    sub_1890908B0(v607, &v651);
    v191 = v651;
    v192 = v652;
    v193 = v653;
    v194 = BYTE4(v653);

    __swift_destroy_boxed_opaque_existential_0Tm(&v625);
    v625 = v589;
    *&v626 = v591;
    *(&v626 + 1) = v590;
    BYTE4(v627) = v189 != 0;
    LODWORD(v627) = v592;
    v616 = v191;
    v617 = v192;
    BYTE4(v618) = v194 != 0;
    LODWORD(v618) = v193;
    if ((a9 & 1) == 0)
    {
      *&v648 = v191;
      v638 = v639;
      if (sub_189090B30(v191, v639, 0.00000001))
      {
        sub_188A3F5FC(&v648, &qword_1EA936508, &qword_18A650CB0);
        v637 = *(&v191 + 1);
        sub_188A3F5FC(&v637, &qword_1EA936510, &qword_18A650CB8);
        v607 = v652;
        sub_188ECC874(&v607);
        sub_188A3F5FC(&v638, &qword_1EA936508, &qword_18A650CB0);
        v636 = *(&v639 + 1);
        sub_188A3F5FC(&v636, &qword_1EA936510, &qword_18A650CB8);
        v598 = v640;
        sub_188ECC874(&v598);
        return;
      }
    }

    [ObjectType preferredFrameRateRange];
    v210 = v209;
    v212 = v211;
    v214 = v213;
    v215 = v595;
    if (![(UIView *)v595 __swiftAnimationInfo])
    {
      v216 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v217 = v215;
      v218 = sub_188A5DF40(v217, sub_188ABE008, v216);

      [(UIView *)v217 set__swiftAnimationInfo:v218];
    }

    v219 = v593 & 1;
    v220 = v597;
    v221 = v588;
    v222 = sub_188ECD978(v593 & 1, v597, v588);
    *&v592 = v223;

    v224 = [v594 context];
    if (v224)
    {

      v594 = 0;
      v225 = sub_188AB3830;
    }

    else
    {
      v293 = swift_allocObject();
      *(v293 + 16) = 1;
      v294 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v295 = swift_allocObject();
      v295[2] = v293;
      v295[3] = v294;
      v594 = v295;
      v225 = sub_188F0E070;
    }

    *&v593 = v225;
    v296 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v297 = sub_188AA977C;
    if (v220 == 0xD000000000000020 && 0x800000018A689070 == v221 || (v298 = sub_18A4A86C8(), v297 = sub_188AA977C, (v298 & 1) != 0) || (v297 = sub_188D39390, v220 == 0xD000000000000021) && 0x800000018A6890A0 == v221)
    {
      v299 = v297;
    }

    else if (sub_18A4A86C8())
    {
      v299 = sub_188D39390;
    }

    else
    {
      v299 = 0;
    }

    *&v591 = v222;
    v300 = swift_getObjectType();
    v301 = swift_allocObject();
    *(v301 + 16) = v299;
    *(v301 + 24) = 0;
    v302 = v595;
    *(v301 + 32) = v595;
    *(v301 + 40) = v210;
    *(v301 + 44) = v212;
    *(v301 + 48) = v214;
    *(v301 + 52) = v296 == 2;
    *(v301 + 56) = v219;
    v303 = v597;
    *(v301 + 64) = v597;
    *(v301 + 72) = v221;
    v304 = swift_allocObject();
    *(v304 + 16) = v302;
    *(v304 + 24) = v219;
    *(v304 + 32) = v303;
    *(v304 + 40) = v221;
    v305 = v592;
    v306 = *(v592 + 200);
    ObjectType = v299;
    v597 = v306;
    v307 = v302;
    swift_bridgeObjectRetain_n();
    v308 = v307;
    sub_188A52E38(v299, 0);
    v597(&v625, &v616, v593, v594, sub_188F0E00C, v301, sub_188F0E0BC, v304, v300, v305);
    v637 = v651;
    sub_188A3F5FC(&v637, &qword_1EA936508, &qword_18A650CB0);
    v636 = *(&v651 + 1);
    sub_188A3F5FC(&v636, &qword_1EA936510, &qword_18A650CB8);
    v607 = v652;
    sub_188ECC874(&v607);
    v635 = v639;
    sub_188A3F5FC(&v635, &qword_1EA936508, &qword_18A650CB0);
    v634 = *(&v639 + 1);
    sub_188A3F5FC(&v634, &qword_1EA936510, &qword_18A650CB8);
    v598 = v640;
    sub_188ECC874(&v598);
    sub_188A55B8C(ObjectType, 0);

    swift_unknownObjectRelease();
    goto LABEL_98;
  }

  if (a10 == &type metadata for UIAnimatableFloat)
  {
    v226 = v17;
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
    swift_dynamicCast();
    v227 = v625;
    [v625 doubleValue];
    v229 = v228;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v230 = v625;
    [v625 doubleValue];
    v232 = v231;

    v233 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v229;
    *&v639 = v232;
    if ((a9 & 1) == 0)
    {
      v233 = vabdd_f64(v229, v232);
      if (v233 <= 0.001)
      {
        return;
      }
    }

    [ObjectType preferredFrameRateRange];
    v235 = v234;
    v237 = v236;
    v239 = v238;
    v240 = v595;
    if (![(UIView *)v595 __swiftAnimationInfo])
    {
      v241 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v242 = v240;
      v243 = sub_188A5DF40(v242, sub_188ABE008, v241);

      [(UIView *)v242 set__swiftAnimationInfo:v243];
    }

    v244 = v226 & 1;
    v245 = v226 & 1;
    v246 = v597;
    sub_188A6D6CC(v245, v597, a4);
    v248 = v247;

    v249 = [v594 context];
    if (v249)
    {

      v594 = 0;
      v250 = sub_188AB3830;
    }

    else
    {
      v336 = swift_allocObject();
      *(v336 + 16) = 1;
      v337 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v338 = swift_allocObject();
      v338[2] = v336;
      v338[3] = v337;
      v594 = v338;
      v250 = sub_188F0E070;
    }

    *&v593 = v250;
    v339 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v340 = sub_188AA977C;
    if (v246 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v341 = sub_18A4A86C8(), v340 = sub_188AA977C, (v341 & 1) != 0) || (v340 = sub_188D39390, v246 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
    {
      v201 = v340;
    }

    else if (sub_18A4A86C8())
    {
      v201 = sub_188D39390;
    }

    else
    {
      v201 = 0;
    }

    goto LABEL_159;
  }

  LODWORD(v593) = v17;
  if (a10 == &type metadata for UIAnimatableNormalizedPoint)
  {
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v266 = v625;
    [v625 CGPointValue];
    v268 = v267;
    v270 = v269;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v271 = v625;
    [v625 CGPointValue];
    v273 = v272;
    v275 = v274;

    v276 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v268;
    *(&v651 + 1) = v270;
    *&v639 = v273;
    *(&v639 + 1) = v275;
    if ((a9 & 1) != 0 || (v276 = 0.001, vabdd_f64(v268, v273) > 0.001) || vabdd_f64(v270, v275) > 0.001)
    {
      [ObjectType preferredFrameRateRange];
      v278 = v277;
      v280 = v279;
      v282 = v281;
      v283 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v284 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v285 = v283;
        v286 = sub_188A5DF40(v285, sub_188ABE008, v284);

        [(UIView *)v285 set__swiftAnimationInfo:v286];
      }

      v287 = v593 & 1;
      v288 = v597;
      sub_188D248D0(v593 & 1, v597, a4);
      v290 = v289;

      v291 = [v594 context];
      if (v291)
      {

        v594 = 0;
        v292 = sub_188AB3830;
      }

      else
      {
        v369 = swift_allocObject();
        *(v369 + 16) = 1;
        v370 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v371 = swift_allocObject();
        v371[2] = v369;
        v371[3] = v370;
        v594 = v371;
        v292 = sub_188F0E070;
      }

      *&v593 = v292;
      v372 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v373 = sub_188AA977C;
      if (v288 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v374 = sub_18A4A86C8(), v373 = sub_188AA977C, (v374 & 1) != 0) || (v373 = sub_188D39390, v288 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v373;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v375 = v372 == 2;
      ObjectType = swift_getObjectType();
      v376 = swift_allocObject();
      *(v376 + 16) = v201;
      *(v376 + 24) = 0;
      *(v376 + 32) = v283;
      *(v376 + 40) = v278;
      *(v376 + 44) = v280;
      *(v376 + 48) = v282;
      *(v376 + 52) = v375;
      *(v376 + 56) = v287;
      v377 = v597;
      *(v376 + 64) = v597;
      *(v376 + 72) = a4;
      v378 = swift_allocObject();
      *(v378 + 16) = v283;
      *(v378 + 24) = v287;
      *(v378 + 32) = v377;
      *(v378 + 40) = a4;
      v379 = *(v290 + 200);
      v380 = v283;
      swift_bridgeObjectRetain_n();
      v381 = v380;
      sub_188A52E38(v201, 0);
      v379(&v651, &v639, v593, v594, sub_188F0E000, v376, sub_188F0E0BC, v378, ObjectType, v290);
      goto LABEL_97;
    }

    return;
  }

  if (a10 == &type metadata for UIAnimatableColor)
  {
    sub_188A55598(v18, &v651);
    v309 = sub_188C52118(&v651);
    v311 = v310;
    v313 = v312;
    v315 = v314;
    sub_188A55598(a7, &v651);
    v316 = sub_188C52118(&v651);
    *&v651 = v309;
    *(&v651 + 1) = v311;
    *&v652 = v313;
    *(&v652 + 1) = v315;
    *&v639 = v316;
    *(&v639 + 1) = v317;
    *&v640 = v318;
    *(&v640 + 1) = v319;
    if ((a9 & 1) != 0 || vabdd_f64(v309, v316) > 0.01 || vabdd_f64(v311, v317) > 0.01 || vabdd_f64(v313, v318) > 0.01 || vabdd_f64(v315, v319) > 0.01)
    {
      [ObjectType preferredFrameRateRange];
      v321 = v320;
      v323 = v322;
      v325 = v324;
      v326 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v327 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v328 = v326;
        v329 = sub_188A5DF40(v328, sub_188ABE008, v327);

        [(UIView *)v328 set__swiftAnimationInfo:v329];
      }

      v330 = v593 & 1;
      v331 = v597;
      sub_188C52214(v593 & 1, v597, a4);
      v333 = v332;

      v334 = [v594 context];
      if (v334)
      {

        v594 = 0;
        v335 = sub_188AB3830;
      }

      else
      {
        v420 = swift_allocObject();
        *(v420 + 16) = 1;
        v421 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v422 = swift_allocObject();
        v422[2] = v420;
        v422[3] = v421;
        v594 = v422;
        v335 = sub_188F0E070;
      }

      *&v593 = v335;
      v423 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v424 = sub_188AA977C;
      if (v331 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v425 = sub_18A4A86C8(), v424 = sub_188AA977C, (v425 & 1) != 0) || (v424 = sub_188D39390, v331 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v424;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v426 = v423 == 2;
      ObjectType = swift_getObjectType();
      v427 = swift_allocObject();
      *(v427 + 16) = v201;
      *(v427 + 24) = 0;
      *(v427 + 32) = v326;
      *(v427 + 40) = v321;
      *(v427 + 44) = v323;
      *(v427 + 48) = v325;
      *(v427 + 52) = v426;
      *(v427 + 56) = v330;
      v428 = v597;
      *(v427 + 64) = v597;
      *(v427 + 72) = a4;
      v429 = swift_allocObject();
      *(v429 + 16) = v326;
      *(v429 + 24) = v330;
      *(v429 + 32) = v428;
      *(v429 + 40) = a4;
      v430 = *(v333 + 200);
      v431 = v326;
      swift_bridgeObjectRetain_n();
      v432 = v431;
      sub_188A52E38(v201, 0);
      v430(&v651, &v639, v593, v594, sub_188F0E008, v427, sub_188F0E0BC, v429, ObjectType, v333);
      goto LABEL_97;
    }

    return;
  }

  if (a10 == &type metadata for UIAnimatableScaledFloat)
  {
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
    swift_dynamicCast();
    v349 = v625;
    [v625 doubleValue];
    v351 = v350;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v352 = v625;
    [v625 doubleValue];
    v354 = v353;

    v355 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v351;
    *&v639 = v354;
    v240 = v595;
    v356 = ObjectType;
    v357 = v597;
    v358 = v593;
    if ((a9 & 1) == 0)
    {
      if (qword_1EA931200 != -1)
      {
        v582 = ObjectType;
        swift_once();
        v356 = v582;
        v358 = v593;
      }

      v355 = *&qword_1EA994F30;
      if (vabdd_f64(v351, v354) <= *&qword_1EA994F30)
      {
        return;
      }
    }

    [v356 preferredFrameRateRange];
    v235 = v359;
    v237 = v360;
    v239 = v361;
    if (![(UIView *)v240 __swiftAnimationInfo])
    {
      v362 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v363 = v240;
      v364 = sub_188A5DF40(v363, sub_188ABE008, v362);
      v358 = v593;
      v365 = v364;

      [(UIView *)v363 set__swiftAnimationInfo:v365];
    }

    v244 = v358 & 1;
    sub_188A91A10(v358 & 1, v357, a4);
    v248 = v366;

    v367 = [v594 context];
    if (v367)
    {

      v594 = 0;
      v368 = sub_188AB3830;
    }

    else
    {
      v471 = swift_allocObject();
      *(v471 + 16) = 1;
      v472 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v473 = swift_allocObject();
      v473[2] = v471;
      v473[3] = v472;
      v594 = v473;
      v368 = sub_188F0E070;
    }

    *&v593 = v368;
    v339 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v474 = sub_188AA977C;
    if (v357 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v475 = sub_18A4A86C8(), v474 = sub_188AA977C, (v475 & 1) != 0) || (v474 = sub_188D39390, v357 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
    {
      v201 = v474;
    }

    else if (sub_18A4A86C8())
    {
      v201 = sub_188D39390;
    }

    else
    {
      v201 = 0;
    }

LABEL_159:
    v342 = v339 == 2;
    ObjectType = swift_getObjectType();
    v343 = swift_allocObject();
    *(v343 + 16) = v201;
    *(v343 + 24) = 0;
    *(v343 + 32) = v240;
    *(v343 + 40) = v235;
    *(v343 + 44) = v237;
    *(v343 + 48) = v239;
    *(v343 + 52) = v342;
    *(v343 + 56) = v244;
    v344 = v597;
    *(v343 + 64) = v597;
    *(v343 + 72) = a4;
    v345 = swift_allocObject();
    *(v345 + 16) = v240;
    *(v345 + 24) = v244;
    *(v345 + 32) = v344;
    *(v345 + 40) = a4;
    v346 = *(v248 + 200);
    v347 = v240;
    swift_bridgeObjectRetain_n();
    v348 = v347;
    sub_188A52E38(v201, 0);
    v346(&v651, &v639, v593, v594, sub_188F0DFF8, v343, sub_188F0E0BC, v345, ObjectType, v248);
LABEL_97:
    sub_188A55B8C(v201, 0);

    swift_unknownObjectRelease();
LABEL_98:

    goto LABEL_120;
  }

  if (a10 == &type metadata for UIAnimatableRect)
  {
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v382 = v625;
    [v625 CGRectValue];
    v384 = v383;
    v386 = v385;
    v388 = v387;
    v390 = v389;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v391 = v625;
    [v625 CGRectValue];
    v393 = v392;
    v395 = v394;
    v397 = v396;
    v399 = v398;

    v400 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v384;
    *(&v651 + 1) = v386;
    *&v652 = v388;
    *(&v652 + 1) = v390;
    *&v639 = v393;
    *(&v639 + 1) = v395;
    *&v640 = v397;
    *(&v640 + 1) = v399;
    v402 = v595;
    v401 = ObjectType;
    v403 = v597;
    v404 = v593;
    if (a9)
    {
      goto LABEL_186;
    }

    if (qword_1ED48C638 != -1)
    {
      v583 = ObjectType;
      swift_once();
      v401 = v583;
      v404 = v593;
    }

    v400 = *&xmmword_1ED4A3470;
    if (vabdd_f64(v384, v393) > *&xmmword_1ED4A3470 || vabdd_f64(v386, v395) > *&xmmword_1ED4A3470 || (v400 = *(&xmmword_1ED4A3470 + 1), vabdd_f64(v388, v397) > *(&xmmword_1ED4A3470 + 1)) || vabdd_f64(v390, v399) > *(&xmmword_1ED4A3470 + 1))
    {
LABEL_186:
      [v401 preferredFrameRateRange];
      v406 = v405;
      v408 = v407;
      v410 = v409;
      if (![(UIView *)v402 __swiftAnimationInfo])
      {
        v411 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v412 = v402;
        v413 = sub_188A5DF40(v412, sub_188ABE008, v411);
        v404 = v593;
        v414 = v413;

        [(UIView *)v412 set__swiftAnimationInfo:v414];
      }

      v415 = v404 & 1;
      sub_188A5EF10(v404 & 1, v403, a4);
      v417 = v416;

      v418 = [v594 context];
      if (v418)
      {

        v594 = 0;
        v419 = sub_188AB3830;
      }

      else
      {
        v496 = swift_allocObject();
        *(v496 + 16) = 1;
        v497 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v498 = swift_allocObject();
        v498[2] = v496;
        v498[3] = v497;
        v594 = v498;
        v419 = sub_188F0E070;
      }

      *&v592 = v419;
      v499 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v500 = sub_188AA977C;
      *&v593 = v417;
      if (v403 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v501 = sub_18A4A86C8(), v500 = sub_188AA977C, (v501 & 1) != 0) || (v500 = sub_188D39390, v403 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v500;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v502 = v499 == 2;
      ObjectType = swift_getObjectType();
      v503 = swift_allocObject();
      *(v503 + 16) = v201;
      *(v503 + 24) = 0;
      *(v503 + 32) = v402;
      *(v503 + 40) = v406;
      *(v503 + 44) = v408;
      *(v503 + 48) = v410;
      *(v503 + 52) = v502;
      *(v503 + 56) = v415;
      v504 = v597;
      *(v503 + 64) = v597;
      *(v503 + 72) = a4;
      v505 = swift_allocObject();
      *(v505 + 16) = v402;
      *(v505 + 24) = v415;
      *(v505 + 32) = v504;
      *(v505 + 40) = a4;
      v506 = v402;
      v507 = v593;
      v508 = *(v593 + 200);
      v509 = v506;
      swift_bridgeObjectRetain_n();
      v510 = v509;
      sub_188A52E38(v201, 0);
      v508(&v651, &v639, v592, v594, sub_188F0DFFC, v503, sub_188F0E0BC, v505, ObjectType, v507);
      goto LABEL_97;
    }
  }

  else if (a10 == &type metadata for UIAnimatableNormalizedRect)
  {
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v433 = v625;
    [v625 CGRectValue];
    v435 = v434;
    v437 = v436;
    v439 = v438;
    v441 = v440;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v442 = v625;
    [v625 CGRectValue];
    v444 = v443;
    v446 = v445;
    v448 = v447;
    v450 = v449;

    v451 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v435;
    *(&v651 + 1) = v437;
    *&v652 = v439;
    *(&v652 + 1) = v441;
    *&v639 = v444;
    *(&v639 + 1) = v446;
    *&v640 = v448;
    *(&v640 + 1) = v450;
    if ((a9 & 1) != 0 || (v451 = 0.001, vabdd_f64(v435, v444) > 0.001) || vabdd_f64(v437, v446) > 0.001 || vabdd_f64(v439, v448) > 0.001 || vabdd_f64(v441, v450) > 0.001)
    {
      [ObjectType preferredFrameRateRange];
      v453 = v452;
      v455 = v454;
      v457 = v456;
      v458 = v595;
      v459 = [(UIView *)v595 __swiftAnimationInfo];
      v460 = v597;
      v461 = v593;
      if (!v459)
      {
        v462 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v463 = v458;
        v464 = sub_188A5DF40(v463, sub_188ABE008, v462);
        v461 = v593;
        v465 = v464;

        [(UIView *)v463 set__swiftAnimationInfo:v465];
      }

      v466 = v461 & 1;
      sub_188ECDE44(v461 & 1, v460, a4);
      v468 = v467;

      v469 = [v594 context];
      if (v469)
      {

        v594 = 0;
        v470 = sub_188AB3830;
      }

      else
      {
        v541 = swift_allocObject();
        *(v541 + 16) = 1;
        v542 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v543 = swift_allocObject();
        v543[2] = v541;
        v543[3] = v542;
        v594 = v543;
        v470 = sub_188F0E070;
      }

      *&v593 = v470;
      v544 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v545 = sub_188AA977C;
      if (v460 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v546 = sub_18A4A86C8(), v545 = sub_188AA977C, (v546 & 1) != 0) || (v545 = sub_188D39390, v460 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v545;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v547 = v544 == 2;
      ObjectType = swift_getObjectType();
      v548 = swift_allocObject();
      *(v548 + 16) = v201;
      *(v548 + 24) = 0;
      *(v548 + 32) = v458;
      *(v548 + 40) = v453;
      *(v548 + 44) = v455;
      *(v548 + 48) = v457;
      *(v548 + 52) = v547;
      *(v548 + 56) = v466;
      v549 = v597;
      *(v548 + 64) = v597;
      *(v548 + 72) = a4;
      v550 = swift_allocObject();
      *(v550 + 16) = v458;
      *(v550 + 24) = v466;
      *(v550 + 32) = v549;
      *(v550 + 40) = a4;
      v551 = *(v468 + 200);
      v552 = v458;
      swift_bridgeObjectRetain_n();
      v553 = v552;
      sub_188A52E38(v201, 0);
      v551(&v651, &v639, v593, v594, sub_188F0DFFC, v548, sub_188F0E0BC, v550, ObjectType, v468);
      goto LABEL_97;
    }
  }

  else if (a10 == &type metadata for UIAnimatableTransform)
  {
    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A91E9C(&v639, 0, &v616);
    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A91E9C(&v639, 0, &v625);
    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    v613 = v622;
    v614 = v623;
    v615 = v624;
    v609 = v618;
    v610 = v619;
    v611 = v620;
    v612 = v621;
    v607 = v616;
    v608 = v617;
    v604 = v631;
    v605 = v632;
    v606 = v633;
    v600 = v627;
    v601 = v628;
    v602 = v629;
    v603 = v630;
    v598 = v625;
    v599 = v626;
    if ((a9 & 1) != 0 || (v476 = objc_opt_self(), v477 = +[UIScreen _mainScreen](v476), [v477 scale], v479 = v478, v477, v645 = v604, v646 = v605, v647 = v606, v641 = v600, v642 = v601, v643 = v602, v644 = v603, v639 = v598, v640 = v599, v648 = xmmword_18A650B70, v649 = 1.0 / v479, v650 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL), v657 = v613, v658 = v614, v659 = v615, v653 = v609, v654 = v610, v656 = v612, v655 = v611, v651 = v607, v652 = v608, !sub_189179CE0(&v639, &v648)))
    {
      [ObjectType preferredFrameRateRange];
      v481 = v480;
      v483 = v482;
      v485 = v484;
      v486 = v595;
      if (![(UIView *)v595 __swiftAnimationInfo])
      {
        v487 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v488 = v486;
        v489 = sub_188A5DF40(v488, sub_188ABE008, v487);

        [(UIView *)v488 set__swiftAnimationInfo:v489];
      }

      v490 = v593 & 1;
      v491 = v597;
      sub_188A92230(v593 & 1, v597, a4);
      v493 = v492;

      v494 = [v594 context];
      if (v494)
      {

        v594 = 0;
        v495 = sub_188AB3830;
      }

      else
      {
        v554 = swift_allocObject();
        *(v554 + 16) = 1;
        v555 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v556 = swift_allocObject();
        v556[2] = v554;
        v556[3] = v555;
        v594 = v556;
        v495 = sub_188F0E070;
      }

      *&v593 = v495;
      v557 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v558 = sub_188AA977C;
      if (v491 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v559 = sub_18A4A86C8(), v558 = sub_188AA977C, (v559 & 1) != 0) || (v558 = sub_188D39390, v491 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v558;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v560 = v557 == 2;
      ObjectType = swift_getObjectType();
      v561 = swift_allocObject();
      *(v561 + 16) = v201;
      *(v561 + 24) = 0;
      *(v561 + 32) = v486;
      *(v561 + 40) = v481;
      *(v561 + 44) = v483;
      *(v561 + 48) = v485;
      *(v561 + 52) = v560;
      *(v561 + 56) = v490;
      v562 = v597;
      *(v561 + 64) = v597;
      *(v561 + 72) = a4;
      v563 = swift_allocObject();
      *(v563 + 16) = v486;
      *(v563 + 24) = v490;
      *(v563 + 32) = v562;
      *(v563 + 40) = a4;
      v564 = *(v493 + 200);
      v565 = v486;
      swift_bridgeObjectRetain_n();
      v566 = v565;
      sub_188A52E38(v201, 0);
      v564(&v607, &v598, v593, v594, sub_188F0E004, v561, sub_188F0E0BC, v563, ObjectType, v493);
      goto LABEL_97;
    }
  }

  else
  {
    if (a10 != &type metadata for UIAnimatablePoint)
    {
      sub_188A55598(v18, &v651);
      *&v591 = a11;
      *&v592 = *(a11 + 64);
      (v592)(&v651, a10, a11);
      sub_188A55598(a7, &v651);
      v21 = v591;
      (v592)(&v651, a10, v591);
      sub_188EDE7AC(v594, v593 & 1, v597, a4, v595, v20, v15, a9 & 1, a10, v21);
      v22 = Description[1];
      v22(v15, a10);
      v22(v20, a10);
      return;
    }

    sub_188A55598(v18, &v651);
    sub_188A55598(&v651, &v639);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    swift_dynamicCast();
    v511 = v625;
    [v625 CGPointValue];
    v513 = v512;
    v515 = v514;

    __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    sub_188A55598(a7, &v651);
    sub_188A55598(&v651, &v639);
    swift_dynamicCast();
    v516 = v625;
    [v625 CGPointValue];
    v518 = v517;
    v520 = v519;

    v521 = __swift_destroy_boxed_opaque_existential_0Tm(&v651);
    *&v651 = v513;
    *(&v651 + 1) = v515;
    *&v639 = v518;
    *(&v639 + 1) = v520;
    v523 = v595;
    v522 = ObjectType;
    v524 = v597;
    v525 = v593;
    if (a9)
    {
      goto LABEL_245;
    }

    if (qword_1ED48D080 != -1)
    {
      v584 = ObjectType;
      swift_once();
      v522 = v584;
      v525 = v593;
    }

    v521 = *&qword_1ED4A3498;
    if (vabdd_f64(v513, v518) > *&qword_1ED4A3498 || vabdd_f64(v515, v520) > *&qword_1ED4A3498)
    {
LABEL_245:
      [v522 preferredFrameRateRange];
      v527 = v526;
      v529 = v528;
      v531 = v530;
      if (![(UIView *)v523 __swiftAnimationInfo])
      {
        v532 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v533 = v523;
        v534 = sub_188A5DF40(v533, sub_188ABE008, v532);
        v525 = v593;
        v535 = v534;

        [(UIView *)v533 set__swiftAnimationInfo:v535];
      }

      v536 = v525 & 1;
      sub_188A5FF74(v525 & 1, v524, a4);
      v538 = v537;

      v539 = [v594 context];
      if (v539)
      {

        v594 = 0;
        v540 = sub_188AB3830;
      }

      else
      {
        v567 = swift_allocObject();
        *(v567 + 16) = 1;
        v568 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v569 = swift_allocObject();
        v569[2] = v567;
        v569[3] = v568;
        v594 = v569;
        v540 = sub_188F0E070;
      }

      *&v593 = v540;
      v570 = ObjectType[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v571 = sub_188AA977C;
      *&v592 = v538;
      if (v524 == 0xD000000000000020 && 0x800000018A689070 == a4 || (v572 = sub_18A4A86C8(), v571 = sub_188AA977C, (v572 & 1) != 0) || (v571 = sub_188D39390, v524 == 0xD000000000000021) && 0x800000018A6890A0 == a4)
      {
        v201 = v571;
      }

      else if (sub_18A4A86C8())
      {
        v201 = sub_188D39390;
      }

      else
      {
        v201 = 0;
      }

      v573 = v570 == 2;
      ObjectType = swift_getObjectType();
      v574 = swift_allocObject();
      *(v574 + 16) = v201;
      *(v574 + 24) = 0;
      *(v574 + 32) = v523;
      *(v574 + 40) = v527;
      *(v574 + 44) = v529;
      *(v574 + 48) = v531;
      *(v574 + 52) = v573;
      *(v574 + 56) = v536;
      v575 = v597;
      *(v574 + 64) = v597;
      *(v574 + 72) = a4;
      v576 = swift_allocObject();
      *(v576 + 16) = v523;
      *(v576 + 24) = v536;
      *(v576 + 32) = v575;
      *(v576 + 40) = a4;
      v577 = v523;
      v578 = v592;
      v579 = *(v592 + 200);
      v580 = v577;
      swift_bridgeObjectRetain_n();
      v581 = v580;
      sub_188A52E38(v201, 0);
      v579(&v651, &v639, v593, v594, sub_188F0E000, v574, sub_188F0E0BC, v576, ObjectType, v578);
      goto LABEL_97;
    }
  }
}

uint64_t sub_188A5DCF8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_188A5DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[4] = 0;
  v3[5] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v3[6] = sub_188A5E25C(MEMORY[0x1E69E7CC0]);
  v3[7] = sub_188A5E010(v6);
  v7 = sub_188A5E148(v6);
  v8 = MEMORY[0x1E69E7CD0];
  v3[8] = v7;
  v3[9] = v8;
  swift_unknownObjectWeakAssign();
  v9 = v3[4];
  v10 = v3[5];
  v3[4] = a2;
  v3[5] = a3;

  sub_188A55B8C(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0, &qword_18A650D00);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v3[2] = v11;
  return v3;
}

unint64_t sub_188A5E010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B00, &unk_18A656F70);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_188A5E664(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188A5E148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1B0, &unk_18A64E990);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_188A5E664(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188A5E25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EA8, &qword_18A64E9A0);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v14 = *i;

      swift_unknownObjectRetain();
      result = sub_188A5E664(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = a1;
  [v1 topInset];
  v3 = v2;
  [v1 leftInset];
  [v1 bottomInset];
  [v1 rightInset];

  return v3;
}

unint64_t sub_188A5E418()
{
  result = qword_1ED490540;
  if (!qword_1ED490540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED490540);
  }

  return result;
}

uint64_t sub_188A5E4B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, void *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v15 = *a6;
  v17 = sub_188A5E664(a2 & 1, a3, a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_188FA23AC();
      goto LABEL_7;
    }

    sub_188A5E734(v20, a5 & 1);
    v28 = sub_188A5E664(a2 & 1, a3, a4);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v24 = a8;
      v23 = a7;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = a8;
  v23 = a7;
  if (v21)
  {
LABEL_8:
    v25 = sub_188A34360(v23, v24, a9, &unk_18A662940);
    v26 = (*(*a6 + 56) + 16 * v17);
    *v26 = a1;
    v26[1] = v25;

    return swift_unknownObjectRelease();
  }

LABEL_13:
  sub_188A5EA8C(v17, a2 & 1, a3, a4, a1, *a6, v23, v24, a9);
}

unint64_t sub_188A5E664(char a1, uint64_t a2, uint64_t a3)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1 & 1);
  sub_18A4A7348();
  v6 = sub_18A4A88E8();

  return sub_188A53698(a1 & 1, a2, a3, v6);
}

void sub_188A5E734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EA8, &qword_18A64E9A0);
  v36 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *(v22 + 2);
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v23);
      sub_18A4A7348();
      v26 = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 16 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_188A5EA8C(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  result = sub_188A34360(a7, a8, a9, &unk_18A662940);
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v16 = a6[6] + 24 * a1;
  *v16 = a2 & 1;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4;
  v17 = (a6[7] + 16 * a1);
  *v17 = a5;
  v17[1] = result;
  v18 = a6[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v20;
  }

  return result;
}

uint64_t sub_188A5EB48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188A5EBAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void _UIGestureRecognizerUnregisterFromContainer(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = [v6 container];

  if (v4 == v3)
  {
    [v6 setContainer:0];
    v5 = [UIApp _gestureEnvironment];
    [v5 removeGestureRecognizer:v6];

    [(UICollectionViewLayoutAttributes *)v6 _setPreferredSizingData:?];
  }
}

unint64_t sub_188A5ED24()
{
  result = qword_1ED48CEB0;
  if (!qword_1ED48CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEB0);
  }

  return result;
}

uint64_t sub_188A5EF10(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v36, 0, 32);
      }

      sub_188A3F29C(v36, &v34, &qword_1EA934050, qword_18A64CA10);
      if (v35)
      {
        sub_188A55538(&v34, v33);
        sub_188A55598(v33, v32);
        sub_188A55598(v32, v31);
        sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
        swift_dynamicCast();
        [v30 CGRectValue];
        v12 = v18;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        sub_188A3F5FC(v36, &qword_1EA934050, qword_18A64CA10);
LABEL_15:
        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = a1 & 1;
        *(v27 + 32) = a2;
        *(v27 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364E8, &qword_18A650C90);
        swift_allocObject();

        v10 = sub_188A5F408(v25, sub_188F0E03C, v27, v12, v20, v22, v24);

        *(v10 + 272) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v34, qword_1ED48C6D0, &qword_1EA9364E8, &qword_18A650C90);

        *(v4 + 48) = v34;
        swift_endAccess();
        sub_188A34360(qword_1ED48C6D0, &qword_1EA9364E8, &qword_18A650C90, &unk_18A662940);
        goto LABEL_16;
      }

      sub_188A3F5FC(v36, &qword_1EA934050, qword_18A64CA10);
    }

    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364E8, &qword_18A650C90);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(qword_1ED48C6D0, &qword_1EA9364E8, &qword_18A650C90, &unk_18A662940);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

id _UIMainBundleIdentifier()
{
  if (qword_1ED4A26D8 != -1)
  {
    dispatch_once(&qword_1ED4A26D8, &__block_literal_global_653);
  }

  v1 = qword_1ED4A26E0;

  return v1;
}

uint64_t _UIApplicationIsKeyboardExtension()
{
  if (qword_1EA992EB8 != -1)
  {
    dispatch_once(&qword_1EA992EB8, &__block_literal_global_1253_0);
  }

  return byte_1EA992DB0;
}

uint64_t _UIApplicationIsUniversalControl()
{
  if (qword_1EA992ED0 != -1)
  {
    dispatch_once(&qword_1EA992ED0, &__block_literal_global_1262);
  }

  return byte_1EA992DB3;
}

uint64_t sub_188A5F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, double a8, double a9, double a10, double a11)
{
  v33 = a6;
  v34 = a7;
  v14 = v11;
  v35 = a1;
  v21 = sub_18A4A7A58();
  v31 = *(v21 - 8);
  v32 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v25 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v25 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = 0;
  *(v14 + 32) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0, &unk_18A662960);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  *(v14 + 40) = v27;
  *(v14 + 64) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 80) = 1;
  *(v14 + 104) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 120) = 1;
  swift_unknownObjectWeakInit();
  *(v14 + 168) = 0;
  *(v14 + 152) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 176) = 1;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 216) = 1;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0u;
  *(v14 + 256) = 1;
  swift_unknownObjectWeakInit();
  *(v14 + 288) = 0;
  *(v14 + 296) = a2;
  *(v14 + 304) = a3;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v31 + 104))(v23, *MEMORY[0x1E69E8090], v32);
  *(v14 + 16) = sub_18A4A7A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  v28 = swift_allocObject();
  *(v28 + 80) = 0;
  *(v28 + 16) = a8;
  *(v28 + 24) = a9;
  *(v28 + 32) = a10;
  *(v28 + 40) = a11;
  *(v28 + 48) = a8;
  *(v28 + 56) = a9;
  *(v28 + 64) = a10;
  *(v28 + 72) = a11;
  *(v14 + 24) = v28;
  swift_beginAccess();
  *(v14 + 104) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 120) = 1;
  swift_beginAccess();
  *(v14 + 64) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 80) = 1;
  *(v14 + 272) = 0;
  *(v14 + 280) = 0;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t _UIApplicationIsApplicationWidgetExtension()
{
  if (qword_1EA992EA0 != -1)
  {
    dispatch_once(&qword_1EA992EA0, &__block_literal_global_1246);
  }

  return byte_1EA992DAD;
}

uint64_t _UIApplicationIsWidgetServer()
{
  if (qword_1EA992EB0 != -1)
  {
    dispatch_once(&qword_1EA992EB0, &__block_literal_global_1251);
  }

  return byte_1EA992DAF;
}

id _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3 || [a3 _hasInvalidated] && (!objc_msgSend(a3, "_hasInvalidated") || (objc_msgSend(*(a1 + 136), "containsObject:", a3) & 1) != 0))
  {
    v6 = 0;
    goto LABEL_61;
  }

  v7 = [*(a1 + 128) objectForKey:a3];
  if (!v7)
  {
    v7 = objc_opt_new();
    [*(a1 + 128) setObject:v7 forKey:a3];
  }

  v8 = 0;
  if (a2 <= 7)
  {
    if (a2 <= 3)
    {
      if (a2)
      {
        if (a2 != 3)
        {
          goto LABEL_60;
        }

        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EA470;
      }

      else
      {
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EABA0;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
          if (v9)
          {
            goto LABEL_43;
          }

          v10 = off_1E70EA3B8;
          break;
        case 5:
          v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
          if (v9)
          {
            goto LABEL_43;
          }

          v10 = off_1E70EA1B0;
          break;
        case 7:
          v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
          if (v9)
          {
            goto LABEL_43;
          }

          v10 = off_1E70EAEA8;
          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a2 > 12)
  {
    switch(a2)
    {
      case 13:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EBDE0;
        break;
      case 14:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EACE8;
        break;
      case 16:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EB5D0;
        break;
      default:
        goto LABEL_60;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EB868;
        break;
      case 10:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (v9)
        {
          goto LABEL_43;
        }

        v10 = off_1E70EA600;
        break;
      case 11:
        v9 = [(_UISceneEventRegistry *)v7 eventForType:?];
        if (!v9)
        {
          v10 = off_1E70E9A30;
          break;
        }

LABEL_43:
        v8 = v9;
        goto LABEL_60;
      default:
        goto LABEL_60;
    }
  }

  v11 = [objc_alloc(*v10) _initWithEnvironment:a1];
  v8 = v11;
  if (v7)
  {
    if (!v11)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel_setEvent_forType_ object:v7 file:@"UIEventEnvironment.m" lineNumber:1260 description:{@"Invalid parameter not satisfying: %@", @"event"}];
    }

    if (!v7[1])
    {
      v12 = objc_opt_new();
      v13 = v7[1];
      v7[1] = v12;
    }

    v14 = [(_UISceneEventRegistry *)v7 eventForType:a2];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (v8)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (has_internal_diagnostics)
    {
      if ((v17 & 1) == 0)
      {
        v22 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v25 = a2;
          _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Adding an event of type %lu when we already have one", buf, 0xCu);
        }

        goto LABEL_59;
      }
    }

    else if ((v17 & 1) == 0)
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &setEvent_forType____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = a2;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Adding an event of type %lu when we already have one", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v18 = v7[1];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v18 setObject:v8 forKey:v19];

LABEL_59:
  }

LABEL_60:
  v6 = v8;

LABEL_61:

  return v6;
}

uint64_t sub_188A5FDC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1 & 1);
  sub_18A4A7348();
  v8 = sub_18A4A88E8();
  v9 = a4 + 56;
  v10 = -1 << *(a4 + 32);
  v11 = v8 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(a4 + 48);
  while (1)
  {
    v14 = v13 + 24 * v11;
    if (*v14 == (a1 & 1))
    {
      v15 = *(v14 + 8) == a2 && *(v14 + 16) == a3;
      if (v15 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }
    }

    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_188A5FEE8()
{
  result = qword_1ED48DD60;
  if (!qword_1ED48DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DD60);
  }

  return result;
}

uint64_t sub_188A5FF74(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v32, 0, 32);
      }

      sub_188A3F29C(v32, &v30, &qword_1EA934050, qword_18A64CA10);
      if (v31)
      {
        sub_188A55538(&v30, v29);
        sub_188A55598(v29, v28);
        sub_188A55598(v28, v27);
        sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
        swift_dynamicCast();
        [v26 CGPointValue];
        v12 = v18;
        v20 = v19;

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        sub_188A3F5FC(v32, &qword_1EA934050, qword_18A64CA10);
LABEL_15:
        v21 = swift_unknownObjectWeakLoadStrong();
        v22 = swift_allocObject();
        swift_weakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = a1 & 1;
        *(v23 + 32) = a2;
        *(v23 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936500, &qword_18A650CA8);
        swift_allocObject();

        v10 = sub_188A603B0(v21, sub_188F0E03C, v23, v12, v20);

        *(v10 + 192) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v30 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v30, &qword_1ED48D3E0, &qword_1EA936500, &qword_18A650CA8);

        *(v4 + 48) = v30;
        swift_endAccess();
        sub_188A34360(&qword_1ED48D3E0, &qword_1EA936500, &qword_18A650CA8, &unk_18A662940);
        goto LABEL_16;
      }

      sub_188A3F5FC(v32, &qword_1EA934050, qword_18A64CA10);
    }

    v20 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936500, &qword_18A650CA8);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1ED48D3E0, &qword_1EA936500, &qword_18A650CA8, &unk_18A662940);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188A603D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, double a8, double a9)
{
  v29 = a6;
  v30 = a7;
  v12 = v9;
  v31 = a1;
  v17 = sub_18A4A7A58();
  v27 = *(v17 - 8);
  v28 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v21 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = 0;
  *(v12 + 32) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0, &unk_18A662960);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = 0;
  *(v12 + 40) = v23;
  *(v12 + 56) = 0;
  *(v12 + 48) = 0;
  *(v12 + 64) = 1;
  *(v12 + 80) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = 1;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = 1;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 1;
  *(v12 + 160) = 0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 1;
  swift_unknownObjectWeakInit();
  *(v12 + 208) = 0;
  *(v12 + 216) = a2;
  *(v12 + 224) = a3;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v27 + 104))(v19, *MEMORY[0x1E69E8090], v28);
  *(v12 + 16) = sub_18A4A7A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v24 = swift_allocObject();
  *(v24 + 48) = 0;
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  *(v24 + 32) = a8;
  *(v24 + 40) = a9;
  *(v12 + 24) = v24;
  swift_beginAccess();
  *(v12 + 80) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = 1;
  swift_beginAccess();
  *(v12 + 56) = 0;
  *(v12 + 48) = 0;
  *(v12 + 64) = 1;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  swift_unknownObjectWeakAssign();
  return v12;
}

float UIAnimationDragCoefficient()
{
  v0 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_949, @"UIAnimationDragCoefficient", _UIInternalPreferenceUpdateDouble);
  v1 = *&qword_1ED48B4A8;
  if (v0)
  {
    v1 = 1.0;
  }

  if (v1 <= 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = v1;
  }

  v3 = _UIInternalPreferenceUsesDefault(&unk_1ED48B4B0, @"UIAnimationShiftKeySlowAnimationDragCoefficient", _UIInternalPreferenceUpdateDouble);
  v4 = *&qword_1ED48B4B8;
  if (v3)
  {
    v4 = 1.0;
  }

  if (v4 <= 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4;
  }

  if (v5 != 1.0)
  {
    v6 = [UIApp _event];
    v7 = [v6 _modifierFlags];

    if ((*&v7 & 0x20000) != 0)
    {
      return v5;
    }
  }

  return v2;
}

id _UIFocusEnvironmentContainingView(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__81;
  v9 = __Block_byref_object_dispose__81;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UIFocusEnvironmentContainingView_block_invoke;
  v4[3] = &unk_1E71080D8;
  v4[4] = &v5;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_188A612DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIFocusEnvironmentEnumerateAncestorEnvironments(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v11 = 0;
    v6 = [v3 allowsWeakReference] ? v3 : 0;
    if (v6)
    {
      v7 = v3;
      while (1)
      {
        (v5)[2](v5, v7, &v11);
        v8 = _UIFocusEnvironmentParentEnvironment(v7);
        v9 = [v8 allowsWeakReference];

        if (!v9)
        {
          break;
        }

        v10 = _UIFocusEnvironmentParentEnvironment(v7);

        if (v10)
        {
          v7 = v10;
          if ((v11 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v10 = v7;
LABEL_13:
    }
  }
}

id _UIFocusEnvironmentParentEnvironment(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 parentFocusEnvironment];
  v3 = [v2 allowsWeakReference];

  if (v3)
  {
    v4 = [v1 parentFocusEnvironment];
    v5 = v4;
    if (v4)
    {
      _UIHostedFocusSystemsForHostEnvironment(v4);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = v17 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 containsChildOfHostEnvironment:{v1, v14}])
            {
              v12 = v11;

              v5 = v12;
              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _UIHostedFocusSystemsForHostEnvironment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSHashTable<_UIHostedFocusSystem *> * _Nullable _UIHostedFocusSystemsForHostEnvironment(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"_UIHostedFocusSystem.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
  }

  v2 = [_MergedGlobals_1_11 objectForKey:v1];

  return v2;
}

uint64_t sub_188A61B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s24_GlassBackgroundStyleKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7 + *(*v7 + 96);
  }

  else
  {
    swift_endAccess();
    if (qword_1ED490160 != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
    v8 = __swift_project_value_buffer(v9, qword_1ED490168);
  }

  return sub_188A3F29C(v8, a1, &qword_1EA937038, &unk_18A6521E0);
}

uint64_t sub_188A61C50()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

void *_UIWindowFromRootLayer(void *result)
{
  if (result)
  {
    v1 = result;
    if (!_UIWindowFromRootLayer_windowLayerClass)
    {
      _UIWindowFromRootLayer_windowLayerClass = objc_opt_class();
    }

    if (object_getClass(v1) == _UIWindowFromRootLayer_windowLayerClass)
    {
      result = v1[6];
      if (!result)
      {
        return [v1 delegate];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _UIShouldLogTraitCollectionChangeForInstanceAndMethod(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED49EC10 != -1)
  {
    dispatch_once(&qword_1ED49EC10, &__block_literal_global_798_0);
  }

  if (qword_1ED49EC08 == 2)
  {
    return 1;
  }

  if (qword_1ED49EC08 != 1)
  {
    return 0;
  }

  v5 = objc_opt_class();
  [a1 instanceMethodForSelector:a3];
  v6 = dyld_image_header_containing_address();
  [v5 instanceMethodForSelector:a3];
  return v6 != dyld_image_header_containing_address();
}

uint64_t _UITraitTokenSetIntersectsSet(void (*a1)(void, void, void), void (*a2)(void, void, void))
{
  if (_UITraitTokenSetCount(a1) && _UITraitTokenSetCount(a2))
  {
    if (a2 == a1)
    {
      v8 = 1;
    }

    else
    {
      v4 = _UITraitTokenSetCount(a1);
      v5 = _UITraitTokenSetCount(a2);
      if (v4 >= v5)
      {
        v6 = a1;
      }

      else
      {
        v6 = a2;
      }

      if (v4 >= v5)
      {
        v7 = a2;
      }

      else
      {
        v7 = a1;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___UITraitTokenSetIntersectsSet_block_invoke;
      v10[3] = &unk_1E71015B8;
      v10[4] = &v11;
      v10[5] = v6;
      _UITraitTokenSetEnumerate(v7, v10);
      v8 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_188A623E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_188A62444()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6];
  v8 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(&v20);

  if (!*(&v21 + 1))
  {
    sub_188A3F5FC(&v20, &unk_1EA933EC0, &qword_18A65E090);
    return result;
  }

  v27[0] = v22;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  v26[0] = v20;
  v26[1] = v21;
  sub_188A53994(v26, &v20);
  sub_188A3F29C(v27 + 8, &v17, &unk_1EA93C9A0, qword_18A6513A0);
  if (v18)
  {
    sub_188A5EBAC(&v17, v19);
  }

  else
  {
    v10 = *(&v21 + 1);
    v11 = v22;
    __swift_project_boxed_opaque_existential_0(&v20, *(&v21 + 1));
    v12 = [v1 traitCollection];
    [v1 bounds];
    sub_188AF4F9C(v12, v10, v11, v19, v13, v14);

    if (v18)
    {
      sub_188A3F5FC(&v17, &unk_1EA93C9A0, qword_18A6513A0);
    }
  }

  sub_188A53994(&v20, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (swift_dynamicCast())
  {
    v15 = v7;
  }

  else
  {
    sub_188A53994(&v20, &v17);
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }

    sub_188A53994(v19, &v17);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    v15 = v4;
  }

  sub_188A828FC(v15, type metadata accessor for _Glass);
LABEL_11:
  [v1 _invalidateBackground];
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  sub_188ACE668(v26);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v20);
}

uint64_t sub_188A6271C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t existingAppearancesNodeInNodeForClass(void *a1, void *a2)
{
  v2 = a2;
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    goto LABEL_6;
  }

  v5 = [v2 _guideClass];
  if (v5 == [v2 _customizableViewClass])
  {
    v4 = 0;
    goto LABEL_6;
  }

  v6 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", [v2 _customizableViewClass], 0);
  v7 = a1;
  while (1)
  {
    v4 = [v7 objectForKey:v6];
LABEL_6:
    v8 = [v2 _superClassInfo];
    if (v4)
    {
      break;
    }

    v2 = v8;
    if (!v8)
    {
      break;
    }

    v7 = a1;
    v6 = v2;
  }

  return v4;
}

void *UIAccessibilityUpdateInvertColorsFilters(void *a1, char a2, uint64_t a3)
{
  v6 = _AXSInvertColorsEnabled();
  if (a3 == 1 && !v6)
  {
    return 0;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 && !a3)
  {
    do
    {
      v8 = [a1 filters];
      v7 = [v8 indexOfObjectPassingTest:&__block_literal_global_454];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        break;
      }

      a1 = [a1 superlayer];
    }

    while (a1);
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v10 = [objc_msgSend(a1 "filters")];
    if ([a1 filters])
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }
    }

    if ([a1 filters])
    {
      v14 = [objc_msgSend(a1 "filters")];
    }

    else
    {
      v14 = [MEMORY[0x1E695DF70] array];
    }

    v13 = v14;
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979870]];
    [v15 setName:@"InvertColorsDoubleInvert"];
    [v15 setAccessibility:1];
    [v13 addObject:v15];
LABEL_25:
    [a1 setFilters:v13];
    return a1;
  }

  v12 = [a1 filters];
  result = 0;
  if (v12 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [objc_msgSend(a1 "filters")];
    [v13 removeObjectAtIndex:v7];
    goto LABEL_25;
  }

  return result;
}

double _UIRectTransformByTransformingCorners(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = 0;
  v10[8] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a2;
  v10[3] = a3 + a5;
  v10[4] = a2 + a4;
  v10[5] = a3 + a5;
  v10[6] = a2 + a4;
  v10[7] = a3;
  do
  {
    v7 = &v10[v6];
    *v7 = (*(a1 + 16))(a1, v10[v6], v10[v6 + 1]);
    *(v7 + 1) = v8;
    v6 += 2;
  }

  while (v6 != 8);
  return UIRectMakeWithPoints(v10);
}

uint64_t _UIDeviceNativeUserInterfaceIdiom()
{
  if (qword_1ED49E788 != -1)
  {
    dispatch_once(&qword_1ED49E788, &__block_literal_global_55_2);
  }

  return qword_1ED49E780;
}

void UIRoundToViewScale(void *a1)
{
  [a1 _currentScreenScale];
  if (v1 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

uint64_t _UISafelyGetOrientationMask(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

void sub_188A638B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, void (*a12)(uint64_t a1), void *a13, id a14)
{
  v14 = objc_begin_catch(a1);
  block = MEMORY[0x1E69E9820];
  a11 = 3221225472;
  a12 = ___UISafelyGetOrientationMask_block_invoke;
  a13 = &unk_1E70F3590;
  a14 = v14;
  v15 = _UISafelyGetOrientationMask_once;
  v16 = v14;
  if (v15 != -1)
  {
    dispatch_once(&_UISafelyGetOrientationMask_once, &block);
  }

  objc_end_catch();
  [(UIApplication *)UIApp _defaultSupportedInterfaceOrientations];
  JUMPOUT(0x188A63890);
}

BOOL _UIInterfaceOrientationMaskContainsOrientation(char a1, uint64_t a2)
{
  v2 = a1 & 4;
  v3 = 4;
  v4 = a1 & 8;
  v5 = 8;
  v6 = a1 & 0x10;
  v7 = 16;
  if (a2 != 4)
  {
    v6 = 0;
    v7 = 0;
  }

  if (a2 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  if (a2 != 2)
  {
    v2 = v4;
    v3 = v5;
  }

  v8 = a1 & 1;
  v9 = 1;
  v10 = a1 & 2;
  v11 = 2;
  if (a2 != 1)
  {
    v10 = 0;
    v11 = 0;
  }

  if (a2)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a2 <= 1)
  {
    v2 = v8;
    v3 = v9;
  }

  return v2 == v3;
}

void sub_188A644A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _UIEmitSignpostEvent(va);
  _Unwind_Resume(a1);
}

double sub_188A6452C()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090, &qword_18A669D10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [v1 updateConstraints];
  }

  else
  {
    v46 = v12;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIView *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(1);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 updateConstraints];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v15, &qword_1EA93E090, &qword_18A669D10);
    if ((*(v24 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090, &qword_18A669D10);
      sub_188A3F5FC(v15, &qword_1EA93E090, &qword_18A669D10);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v15, v6);
      v30 = sub_188ACEB88(v1, 1, &block_descriptor_149_4);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIView *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 1;
      *(v35 + 25) = v30;
      *(v35 + 32) = sub_188C01C00;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098, &qword_18A669D18);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 1);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090, &qword_18A669D10);
    }
  }

  return result;
}

void *extractContentSizeConstraints(void *result, void *a2, void *a3, void *a4)
{
  v7 = result;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a2)
  {
    result = [a2 count];
    if (result)
    {
      if (result == 2)
      {
        if (a3)
        {
          result = [a2 objectAtIndex:0];
          *a3 = result;
        }

        if (a4)
        {
          result = [a2 objectAtIndex:1];
          *a4 = result;
        }
      }

      else if (result == 1)
      {
        v8 = [a2 objectAtIndex:0];
        result = [v8 firstAttribute];
        if (result == 8)
        {
          if (a4)
          {
            *a4 = v8;
          }
        }

        else if (result == 7)
        {
          if (a3)
          {
            *a3 = v8;
          }
        }

        else
        {
          return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unexpected content size constraint %@ on view %@", v8, v7}];
        }
      }

      else
      {
        return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unexpected content size constraints %@ on view %@", a2, v7}];
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ui_size_cache_value>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void sub_188A65FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIViewSetInteractionTintColor(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  v4 = object;
  v5 = object[11];
  if (v3)
  {
    v6 = 128;
  }

  else
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    v6 = 0;
    v4 = object;
  }

  v4[11] = v6 | v5 & 0xFFFFFFFFFFFFFF7FLL;
  objc_setAssociatedObject(v4, &_UIViewInteractionTintColorKey, v3, 1);
LABEL_6:
}

uint64_t _UIBarsUseDynamicType()
{
  if (qword_1ED49BF70 != -1)
  {
    dispatch_once(&qword_1ED49BF70, &__block_literal_global_74);
  }

  return byte_1ED49BF61;
}

uint64_t HasAttributeDifferenceDefaults(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 objectForKey:v6];
  v8 = [v5 objectForKey:v6];

  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
    if (v9 && v10)
    {
      v12 = objc_msgSend_isEqual_(v9) ^ 1;
    }
  }

  return v12;
}

uint64_t GetShadowAttributeDifferenceDefaults(void *a1, void *a2)
{
  v3 = *off_1E70EC9B0;
  v4 = a2;
  v5 = [a1 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5 | v6)
    {
      if (v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6;
      }

      [v8 shadowOffset];
      if (v10 == *(MEMORY[0x1E695F060] + 8) && v9 == *MEMORY[0x1E695F060])
      {
        v12 = 393216;
      }

      else
      {
        v12 = 409600;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [v5 shadowColor];
    v14 = [v6 shadowColor];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
      v19 = 0;
    }

    else
    {
      if (v15)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = 393216;
      }

      else if (objc_msgSend_isEqual_(v15))
      {
        v19 = 0;
      }

      else
      {
        v19 = 393216;
      }
    }

    [v5 shadowOffset];
    v21 = v20;
    v23 = v22;
    [v6 shadowOffset];
    if (v23 == v25 && v21 == v24)
    {
      v12 = v19;
    }

    else
    {
      v12 = v19 | 0x44000;
    }
  }

  return v12;
}

__CFString *UIApplicationSceneDeactivationReasonDescription(unint64_t a1)
{
  if (a1 < 0x1F && ((0x400C3FFFu >> a1) & 1) != 0)
  {
    v2 = off_1E710A860[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown reason %d", a1];
  }

  return v2;
}

char *sub_188A668E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934088, &qword_18A64BD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *__windowForView(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    [MEMORY[0x1E6979518] lock];
    v2 = CALayerGetContext();
    [MEMORY[0x1E6979518] unlock];
    result = _UIWindowFromRootLayer([v2 layer]);
    if (!result)
    {
      do
      {
        v4 = v1;
        v1 = [v1 superlayer];
      }

      while (v1);

      return _UIWindowFromRootLayer(v4);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting the window of a view (%@) with a nil layer. This view probably hasn't received initWithFrame: or initWithCoder:.", a1];
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v5}];

    return 0;
  }

  return result;
}

_BYTE *_UICreateTraitCollectionChangeDescription@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  memset(v32, 0, 40);
  if (a1 && a2)
  {
    [(UITraitCollection *)a2 _createTraitTokenSetForChangesFromTraitCollection:a1, v32];
    goto LABEL_9;
  }

  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    a1 = a2;
  }

  v6 = [(UITraitCollection *)a1 _specifiedTraitTokens];
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v32[0] = *v6;
  v32[1] = v8;
  *&v32[2] = v7;
  if (*&v32[0])
  {
    v9 = *&v32[0];
  }

LABEL_9:
  *a3 = v4;
  *(a3 + 8) = a2;
  v10 = v32[1];
  *(a3 + 16) = v32[0];
  *(a3 + 32) = v10;
  *(a3 + 48) = *&v32[2];
  *(a3 + 56) = 0;
  if (v4 == a2)
  {
    isEqual = 1;
  }

  else
  {
    if (*&v32[0])
    {
      if ([(_UIFastIndexSet *)*&v32[0] count])
      {
LABEL_12:
        isEqual = 0;
        goto LABEL_16;
      }
    }

    else if (vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v32 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(&v32[1] + 8)))))))
    {
      goto LABEL_12;
    }

    isEqual = objc_msgSend_isEqual_(v4, *&v32[0]);
  }

LABEL_16:
  *(a3 + 56) = isEqual;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v13 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  if (v4)
  {
    v14 = 1;
  }

  else
  {
    v14 = a2 == 0;
  }

  v15 = v14;
  v16 = dyld_program_sdk_at_least();
  if (v15 & 1) != 0 || (v16)
  {
    v24 = 0x10000;
    v23 = 0x1000000;
    if (v15)
    {
      [v4 displayScale];
      v27 = v26;
      [a2 displayScale];
      v21 = v27 != v28;
      v29 = [v4 displayGamut];
      v25 = v29 != [a2 displayGamut];
      if ([a2 hasDifferentColorAppearanceComparedToTraitCollection:v4])
      {
        v24 = 0x10000;
      }

      else
      {
        v24 = 0;
      }

      if (_UITraitCollectionUserInterfaceRenderingModeDidChange(a2, v4))
      {
        v23 = 0x1000000;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v25 = 1;
      v21 = 1;
    }
  }

  else
  {
    v17 = +[UITraitCollection _defaultTraitCollection];
    [v17 displayScale];
    v19 = v18;
    [a2 displayScale];
    v21 = v19 != v20;
    v22 = [v17 displayGamut];
    v23 = 0;
    v24 = 0;
    v25 = v22 != [a2 displayGamut];
  }

  result = GetTraitCollectionTSD();
  result[9] = v13;
  if (v25)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  *(a3 + 57) = v24 | v23 | v21 | v31;
  return result;
}

uint64_t _colorAppearanceTraitChanged(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v2 = 1;
    if (a1 && a2)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      TraitCollectionTSD = GetTraitCollectionTSD();
      v6 = TraitCollectionTSD[9];
      TraitCollectionTSD[9] = 1;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___colorAppearanceTraitChanged_block_invoke;
      v8[3] = &unk_1E710D3A0;
      v8[4] = a1;
      v8[5] = a2;
      v8[6] = &v9;
      _UIPerformWithTraitLock(v8);
      *(GetTraitCollectionTSD() + 9) = v6;
      v2 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_188A67028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___colorAppearanceTraitChanged_block_invoke_2(void *a1, unint64_t a2, _BYTE *a3)
{
  memset(v9, 0, sizeof(v9));
  _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, v9);
  v5 = [(UITraitCollection *)a1[4] _valueForTraitWithMetadata:v9];
  result = [(UITraitCollection *)a1[5] _valueForTraitWithMetadata:v9];
  if (v5 != result)
  {
    v8 = *(&v9[0] + 1) != 1 || v5 == 0 || result == 0;
    if (v8 || (result = objc_msgSend_isEqual_(v5), (result & 1) == 0))
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void ___colorAppearanceTraitChanged_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ___colorAppearanceTraitChanged_block_invoke_2;
  v1[3] = &unk_1E710D6F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  _UITraitTokenSetEnumerate(_allTraitTokensAffectingColorAppearance, v1);
}

uint64_t _UIPresentationControllersInheritTraitsFromViewHierarchy()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_PresentationControllersInheritTraitsFromViewHierarchy, @"PresentationControllersInheritTraitsFromViewHierarchy");
    if (byte_1ED48AB54)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void _UIInlinePointerSetEnumerate(void *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[2];
    if (v5)
    {
      memset(&enumerator, 0, sizeof(enumerator));
      NSEnumerateHashTable(&enumerator, v5);
      do
      {
        v6 = NSNextHashEnumeratorItem(&enumerator);
        if (!v6)
        {
          break;
        }

        v10 = 0;
        v3[2](v3, v6, &v10);
      }

      while ((v10 & 1) == 0);
      NSEndHashTableEnumeration(&enumerator);
    }

    else
    {
      v7 = (a1 + 3);
      v8 = v4 - 1;
      do
      {
        v9 = v8;
        LOBYTE(enumerator._pi) = 0;
        (v3)[2](v3, *v7, &enumerator);
        if (enumerator._pi)
        {
          break;
        }

        v8 = v9 - 1;
        ++v7;
      }

      while (v9);
    }
  }
}

uint64_t sub_188A672B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AXInvertFilterSearch_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isEqualToString_([a2 name]);
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void UIViewDidSetNeedsDisplay(void *a1)
{
  v3 = a1;
  objc_opt_self();
  if (byte_1EA9946D5 == 1 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    if (qword_1EA994740)
    {
      [qword_1EA994740 addObject:v3];
    }

    else
    {
      v1 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v3, 0}];
      v2 = qword_1EA994740;
      qword_1EA994740 = v1;
    }
  }
}

uint64_t _UITraitTokenSetIsSubsetOfSet(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1 || !_UITraitTokenSetCount(a1))
  {
    v5 = 1;
  }

  else
  {
    v4 = _UITraitTokenSetCount(a1);
    if (v4 <= _UITraitTokenSetCount(a2))
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___UITraitTokenSetIsSubsetOfSet_block_invoke;
      v7[3] = &unk_1E71015B8;
      v7[4] = &v8;
      v7[5] = a2;
      _UITraitTokenSetEnumerate(a1, v7);
      v5 = *(v9 + 24);
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

void sub_188A68158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188A6852C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s24_UIViewBackgroundDataKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = (v7 + 16);
  }

  else
  {
    swift_endAccess();
    if (qword_1ED4906C0 != -1)
    {
      swift_once();
    }

    v8 = &xmmword_1ED48CF70;
  }

  return sub_188A3F29C(v8, a1, &unk_1EA933EC0, &qword_18A65E090);
}

double _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (+[UIWindow _transformLayerRotationsAreEnabled])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace_block_invoke;
    v15[3] = &__block_descriptor_56_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v15[4] = a6;
    *&v15[5] = a7;
    v15[6] = a1;
    return _UIRectTransformByTransformingCorners(v15, a2, a3, a4, a5);
  }

  return a2;
}

double UIRectMakeWithPoints(double *a1)
{
  if (a1[4] >= a1[6])
  {
    v1 = a1[6];
  }

  else
  {
    v1 = a1[4];
  }

  if (*a1 >= a1[2])
  {
    v2 = a1[2];
  }

  else
  {
    v2 = *a1;
  }

  if (v2 >= v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _UIBuiltinTraitStorageEnumeratePairWithBlock(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = (a4 + 16);
  (*(a4 + 16))(a4, a1, a2, @"_UITraitNameUserInterfaceIdiom", -1);
  (*(a6 + 16))(a6, a1 + 8, a2 + 8, @"_UITraitNameDisplayScale", 0.0);
  (*v19)(a4, a1 + 16, a2 + 16, @"_UITraitNameDisplayGamut", -1);
  (*v19)(a4, a1 + 56, a2 + 56, @"_UITraitNameHorizontalSizeClass", 0);
  (*v19)(a4, a1 + 64, a2 + 64, @"_UITraitNameVerticalSizeClass", 0);
  if (a3)
  {
    (*(a4 + 16))(a4, a1 + 24, a2 + 24, @"_UITraitNameTouchLevel", -1);
    (*(a5 + 16))(a5, a1 + 32, a2 + 32, @"_UITraitNameInteractionModel", 0);
    (*(a5 + 16))(a5, a1 + 40, a2 + 40, @"_UITraitNamePrimaryInteractionModel", 0);
    (*(a4 + 16))(a4, a1 + 48, a2 + 48, @"_UITraitNameArtworkSubtype", 0);
  }

  (*(a4 + 16))(a4, a1 + 72, a2 + 72, @"_UITraitNameUserInterfaceStyle", 0);
  (*(a4 + 16))(a4, a1 + 80, a2 + 80, @"_UITraitNameUserInterfaceLayoutDirection", -1);
  (*(a4 + 16))(a4, a1 + 88, a2 + 88, @"_UITraitNameForceTouchCapability", 0);
  (*(a4 + 16))(a4, a1 + 96, a2 + 96, @"_UITraitNamePreferredContentSizeCategory", 0);
  (*(a4 + 16))(a4, a1 + 208, a2 + 208, @"_UITraitNameToolbarItemPresentationSize", -1);
  v12 = _UITraitNameUserInterfaceLevel;
  v13 = _UITraitNameAccessibilityContrast;
  if (a3)
  {
    (*(a6 + 16))(a6, a1 + 104, a2 + 104, @"_UITraitNameDisplayCornerRadius", -1.0);
    (*(a4 + 16))(a4, a1 + 112, a2 + 112, @"_UITraitNameLegibilityWeight", -1);
    (*(a4 + 16))(a4, a1 + 120, a2 + 120, @"_UITraitNameSemanticContext", 0);
    (*(a4 + 16))(a4, a1 + 128, a2 + 128, @"_UITraitNamePresentationSemanticContext", 0);
    (*(a4 + 16))(a4, a1 + 136, a2 + 136, @"_UITraitNameSplitViewControllerContext", -1);
    (*(a4 + 16))(a4, a1 + 144, a2 + 144, @"_UITraitNameAccessibilityContrast", -1);
    (*(a4 + 16))(a4, a1 + 152, a2 + 152, @"_UITraitNameUserInterfaceLevel", -1);
    (*(a4 + 16))(a4, a1 + 160, a2 + 160, @"_UITraitNameVibrancy", -1);
    (*(a4 + 16))(a4, a1 + 168, a2 + 168, @"_UITraitNameUserInterfaceRenderingMode", 0);
    (*(a4 + 16))(a4, a1 + 176, a2 + 176, @"_UITraitNameActiveAppearance", -1);
    (*(a4 + 16))(a4, a1 + 184, a2 + 184, @"_UITraitNameFocusSystemState", -1);
    v12 = _UITraitNameBacklightLuminance;
    v13 = _UITraitNameSelectionIsKey;
    v14 = 200;
    v15 = 192;
  }

  else
  {
    v14 = 152;
    v15 = 144;
  }

  (*(a4 + 16))(a4, a1 + v15, a2 + v15, *v13, -1);
  v16 = *v12;
  v17 = *(a4 + 16);

  return v17(a4, a1 + v14, a2 + v14, v16, -1);
}

double _UIComputedSizeForLabel(void *a1, void *a2, void *a3, unint64_t a4, uint64_t *a5, void *a6, void *a7, double a8, double a9)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = [v15 _stringDrawingContext];
  [v18 setMaximumNumberOfLines:a4];
  if (a5)
  {
    [v18 setWantsNumberOfLineFragments:1];
  }

  [v18 setWantsBaselineOffset:1];
  if (a8 < 0.0 || a9 < 0.0)
  {
    a8 = *MEMORY[0x1E695F060];
    goto LABEL_60;
  }

  if (a8 == 0.0)
  {
    a8 = 3.40282347e38;
  }

  if (a9 == 0.0)
  {
    a9 = 3.40282347e38;
  }

  v69 = [v15 _content];
  if (v16)
  {
    v19 = [v69 contentWithString:v16];
  }

  else
  {
    if (!v17)
    {
      v20 = v69;
      v49 = *MEMORY[0x1E695EFF8];
      v50 = *(MEMORY[0x1E695EFF8] + 8);
      v68 = [v15 _synthesizedAttributedText];
      if ([(UILabel *)v15 _updateScaledMetricsForRect:v49, v50, a8, a9])
      {
        [v18 setLayout:0];
      }

      v24 = *(v15 + 76);
      v21 = 0;
      if (!v15)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v19 = [v69 contentWithAttributedString:v17];
  }

  v20 = v19;
  v21 = (v16 | v17) != 0;
  v22 = *MEMORY[0x1E695EFF8];
  v23 = *(MEMORY[0x1E695EFF8] + 8);
  v68 = [(UILabel *)v15 _synthesizedAttributedTextForContent:v19];
  v24 = [(UILabel *)v15 _scaledMetricsForText:v68 inRect:v22, v23, a8, a9];
  [v18 setCachesLayout:0];
  [v18 setLayout:0];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v24 && (v15[744] & 4) != 0)
  {
    v27 = v24[8];
    v32 = *(v24 + 5);
    v29 = *(v24 + 3);
    v31 = *(v24 + 7);
    goto LABEL_23;
  }

LABEL_17:
  if ([v20 isAttributed])
  {
    if (v68)
    {
      v25 = -[UILabel _boundingRectWithAttributedString:size:options:context:](v15, v68, [v15 _stringDrawingOptions], v18, a8, 3.40282347e38);
      v27 = v26;
      v66 = [v18 numberOfLineFragments];
      [v18 baselineOffset];
      v29 = v28;
      [v18 firstBaselineOffset];
      v31 = v30;
    }

    else
    {
      v66 = 0;
      v27 = *MEMORY[0x1E695F060];
      v31 = 0;
      v29 = 0;
    }

    v43 = [v20 paragraphStyle];
    if (dyld_program_sdk_at_least())
    {
      v65 = v43;
      [v43 firstLineHeadIndent];
      if (v44 <= 0.0)
      {
        goto LABEL_46;
      }

      if ([v18 numberOfLineFragments] == 1)
      {
        goto LABEL_43;
      }

      v45 = [v68 string];
      v62 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v64 = v45;
      v46 = [v45 componentsSeparatedByCharactersInSet:v62];

      v63 = [v46 count];
      v61 = v46;
      if ([v46 count])
      {
        v60 = [v46 lastObject];
        v47 = [v60 length] == 0;

        v48 = v63 - v47;
      }

      else
      {
        v48 = v63;
      }

      v51 = 0x7FFFFFFFLL;
      if (a4)
      {
        v51 = a4;
      }

      v52 = v51 >= v48 ? v48 : v51;
      v53 = [v18 numberOfLineFragments];

      if (v52 == v53)
      {
LABEL_43:
        v43 = v65;
        [v65 firstLineHeadIndent];
        v55 = v27 + v54;
        if (v55 >= a8)
        {
          v27 = a8;
        }

        else
        {
          v27 = v55;
        }
      }

      else
      {
LABEL_46:
        v43 = v65;
      }
    }

    v33 = v68;
    v32 = v66;
    goto LABEL_48;
  }

  if ([v20 isNil])
  {
    v32 = 0;
    v27 = *MEMORY[0x1E695F060];
    v31 = 0;
    v29 = 0;
LABEL_23:
    v33 = v68;
LABEL_48:
    v38 = a6;
    goto LABEL_49;
  }

  v34 = [v20 string];
  v35 = [v15 _stringDrawingOptions];
  [(UILabel *)v15 _synthesizedTextAttributes];
  v36 = v67 = v21;
  v37 = v35;
  v38 = a6;
  [(UILabel *)v15 _boundingRectWithString:v34 size:v37 options:v36 attributes:v18 context:a8, 3.40282347e38];
  v27 = v39;

  v21 = v67;
  v40 = [v18 numberOfLineFragments];
  [v18 baselineOffset];
  v29 = v41;
  [v18 firstBaselineOffset];
  v32 = v40;
  v31 = v42;
  v33 = v68;
LABEL_49:
  v56 = v27 - a8;
  if (v27 - a8 < 0.0001)
  {
    a8 = v27;
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (v38)
  {
    *v38 = v29;
  }

  if (a7)
  {
    *a7 = v31;
  }

  if (!v21)
  {
    v57 = [v18 layout];
    v58 = *(v15 + 75);
    *(v15 + 75) = v57;
  }

LABEL_60:
  return a8;
}

void sub_188A69E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t _UIThemeKeyValueFromTraitCollection(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSUInteger _UIThemeKeyValueFromTraitCollection(UITraitCollection *)") description:{@"UITraitCollection_NonARC.m", 3397, @"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];
  }

  v15[0] = xmmword_18A64C520;
  v15[1] = xmmword_18A653370;
  v16 = 10;
  TraitCollectionTSD = GetTraitCollectionTSD();
  if ((*(TraitCollectionTSD + 9) & 1) == 0)
  {
    v3 = TraitCollectionTSD;
    if (TraitCollectionTSD[18] && _UIInlinePointerSetContainsElement(TraitCollectionTSD + 2, a1))
    {
      for (i = 0; i != 40; i += 8)
      {
        _UITraitTokenSetInsert(v3 + 19, *(v15 + i), v4);
      }
    }

    else if (v3[41] && _UIInlinePointerSetContainsElement(v3 + 25, a1))
    {
      for (j = 0; j != 40; j += 8)
      {
        _UITraitTokenSetInsert(v3 + 42, *(v15 + j), v6);
      }
    }
  }

  v8 = objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v9 = _UITraitTokenForTraitLocked(3, v8);
  os_unfair_lock_unlock(&_UITraitLock);
  v10 = [a1 _valueForNSIntegerTraitToken:v9];
  v11 = a1[10];
  if (v11 == 2)
  {
    v12 = (a1[20] == 1) << 8;
  }

  else
  {
    v12 = 0;
  }

  if (v11 == 1000)
  {
    v11 = 2;
  }

  if (v11 != 2)
  {
    v12 = 0;
  }

  return (4 * a1[1] + 4) & 0x3C | ((v10 == 1) << 9) | ((a1[19] == 1) << 6) | v11 & 3 | ((a1[3] == 1) << 7) | v12;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__61(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__107(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__112(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__121(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__127(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__131(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__132(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__133(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__136(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__137(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__139(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__143(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__145(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__146(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__149(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__151(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__152(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__153(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__155(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__156(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__157(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__158(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__159(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__160(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__161(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__162(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__163(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__165(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__166(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__167(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__169(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__171(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__172(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__173(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__174(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__175(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__176(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__178(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__179(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__181(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__182(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__183(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__185(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__189(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__192(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__193(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__195(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__196(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__199(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__201(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__202(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__203(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__206(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__207(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__208(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__209(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__210(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__212(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__213(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__214(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__215(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__216(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__217(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__219(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__220(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__221(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__222(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__223(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__225(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__226(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__227(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__228(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__229(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__230(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__231(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__233(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__235(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__236(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__239(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__241(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__242(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__245(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__246(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__247(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__251(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__252(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__253(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _StatusBar_NSLocaleNumberingSystemNeedsReducedFontForStatusBar()
{
  if (qword_1ED4A06F0 != -1)
  {
    dispatch_once(&qword_1ED4A06F0, &__block_literal_global_498);
  }

  v0 = _MergedGlobals_1264;
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 _numberingSystem];
  v3 = [v0 containsObject:v2];

  return v3;
}

uint64_t _UIContentSizeCategoryFromStringInternal(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && v3 != @"_UICTContentSizeCategoryUnspecified")
  {
    if (v3 == @"UICTContentSizeCategoryL")
    {
      v5 = 4;
    }

    else if (v3 == @"UICTContentSizeCategoryXS")
    {
      v5 = 1;
    }

    else if (v3 == @"UICTContentSizeCategoryS")
    {
      v5 = 2;
    }

    else if (v3 == @"UICTContentSizeCategoryM")
    {
      v5 = 3;
    }

    else if (v3 == @"UICTContentSizeCategoryXL")
    {
      v5 = 5;
    }

    else if (v3 == @"UICTContentSizeCategoryXXL")
    {
      v5 = 6;
    }

    else if (v3 == @"UICTContentSizeCategoryXXXL")
    {
      v5 = 7;
    }

    else if (v3 == @"UICTContentSizeCategoryAccessibilityM")
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 65537;
      if (v3 != @"UICTContentSizeCategoryAccessibilityL")
      {
        if (v3 == @"UICTContentSizeCategoryAccessibilityXL")
        {
          v5 = 65538;
        }

        else if (v3 == @"UICTContentSizeCategoryAccessibilityXXL")
        {
          v5 = 65539;
        }

        else if (v3 == @"UICTContentSizeCategoryAccessibilityXXXL")
        {
          v5 = 65540;
        }

        else
        {
          if (_MergedGlobals_1318 != -1)
          {
            dispatch_once(&_MergedGlobals_1318, &__block_literal_global_585);
          }

          v6 = [qword_1ED4A2150 indexOfObject:v4];
          if (v6 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v5 = 0;
            if (a2)
            {
              *a2 = 1;
            }
          }

          else if (v6 >= 8)
          {
            v5 = v6 + 65528;
          }

          else
          {
            v5 = v6;
          }
        }
      }
    }
  }

  return v5;
}