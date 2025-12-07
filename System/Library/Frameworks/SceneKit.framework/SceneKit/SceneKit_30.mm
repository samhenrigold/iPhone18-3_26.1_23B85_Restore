CFStringRef _C3DModelTargetCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelTarget>");
}

CFStringRef _C3DModelTargetCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelTarget>");
}

uint64_t __C3DModelTargetGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelTargetGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelTargetCreate(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (C3DModelTargetGetTypeID_onceToken != -1)
  {
    C3DModelTargetCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelTargetGetTypeID_typeID, 24);
  v10 = Instance;
  if (a1)
  {
    C3DModelTargetSetTarget(Instance, a1);
  }

  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 34) = a4;
  *(v10 + 36) = C3DSizeOfBaseType(a3, v9);
  return v10;
}

CFTypeRef C3DModelTargetSetTarget(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DModelTargetCreateCopy(uint64_t a1)
{
  if (C3DModelTargetGetTypeID_onceToken != -1)
  {
    C3DModelTargetCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelTargetGetTypeID_typeID, 24);
  C3DModelTargetSetTarget(Instance, *(a1 + 16));
  *(Instance + 24) = *(a1 + 24);
  *(Instance + 37) = *(a1 + 37);
  *(Instance + 32) = *(a1 + 32);
  *(Instance + 34) = *(a1 + 34);
  *(Instance + 35) = *(a1 + 35);
  return Instance;
}

uint64_t C3DModelTargetGetTarget(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DModelTargetGetTargetAddress(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void *C3DModelTargetGetValue(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelTargetGetValue_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = *(v3 + 36);
  TypeSemantic = C3DModelTargetGetTypeSemantic(v3, a2);
  ComponentIndex = C3DModelTargetGetComponentIndex(v3, v22);
  return C3DGetValue(v18, v19, a2, v20, TypeSemantic, ComponentIndex);
}

uint64_t C3DModelTargetGetTypeSemantic(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 34);
}

uint64_t C3DModelTargetGetComponentIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 35);
}

uint64_t C3DModelTargetGetBaseType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DPreferencesGetInteger(int a1)
{
  if (C3DPreferencesGetInteger_onceToken != -1)
  {
    C3DPreferencesGetInteger_cold_1();
  }

  return C3DPreferencesGetInteger_prefs[a1];
}

void SCNVideoTextureSourceDiscardVideoData(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = [*(a1 + 16) iosurface];
  if (v3)
  {
    IOSurfaceDecrementUseCount(v3);
  }

  *(a1 + 16) = 0;
}

void SCNVideoTextureSourceRelease(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  SCNVideoTextureSourceDiscardVideoData(a1);
}

void SCNVideoTextureSourceCreateMetalTexture(uint64_t a1, uint64_t a2, __CVMetalTextureCache *a3)
{
  v6 = *(a1 + 8);
  v7 = [(SCNMTLRenderContext *)a2 disableLinearRendering];
  v8 = [(SCNMTLRenderContext *)a2 wantsWideGamut];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType == 875836534)
      {
LABEL_38:
        if (v8)
        {
          v42 = 552;
          if (v7)
          {
            v12 = 552;
          }

          else
          {
            v12 = 553;
          }

          v13 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
LABEL_61:
          v16 = C3DColorSpaceExtendedSRGB(PixelFormatType, v10);
          goto LABEL_62;
        }

        v42 = 70;
        if (v7)
        {
          v12 = 70;
        }

        else
        {
          v12 = 71;
        }

        v13 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
        goto LABEL_55;
      }

      if (PixelFormatType == 1111970369)
      {
        if (!v8)
        {
          v42 = 80;
          if (v7)
          {
            v12 = 80;
          }

          else
          {
            v12 = 81;
          }

          v43 = C3DColorSpaceSRGB(PixelFormatType, v10);
          v13 = MTLPixelFormatBGRA8Unorm;
          goto LABEL_63;
        }

        v42 = 552;
        if (v7)
        {
          v12 = 552;
        }

        else
        {
          v12 = 553;
        }

        v13 = MTLPixelFormatBGRA8Unorm;
        goto LABEL_61;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 0x52474241:
          if (!v8)
          {
            v42 = 70;
            if (v7)
            {
              v12 = 70;
            }

            else
            {
              v12 = 71;
            }

            v43 = C3DColorSpaceSRGB(PixelFormatType, v10);
            v13 = MTLPixelFormatRGBA8Unorm;
            goto LABEL_63;
          }

          v42 = 552;
          if (v7)
          {
            v12 = 552;
          }

          else
          {
            v12 = 553;
          }

          v13 = MTLPixelFormatRGBA8Unorm;
          goto LABEL_61;
        case 0x52476641:
          if (v8)
          {
            v42 = 125;
            if (v7)
            {
              v40 = C3DColorSpaceExtendedSRGB(PixelFormatType, v10);
            }

            else
            {
              v40 = C3DColorSpaceExtendedLinearSRGB(PixelFormatType, v10);
            }
          }

          else
          {
            v42 = 125;
            if (v7)
            {
              v40 = C3DColorSpaceSRGB(PixelFormatType, v10);
            }

            else
            {
              v40 = C3DColorSpaceLinearSRGB();
            }
          }

          v43 = v40;
          v12 = 125;
          v13 = MTLPixelFormatRGBA32Float;
          goto LABEL_63;
        case 0x52476841:
          if (v8)
          {
            v42 = 115;
            if (v7)
            {
              v14 = C3DColorSpaceExtendedSRGB(PixelFormatType, v10);
            }

            else
            {
              v14 = C3DColorSpaceExtendedLinearSRGB(PixelFormatType, v10);
            }
          }

          else
          {
            v42 = 115;
            if (v7)
            {
              v14 = C3DColorSpaceSRGB(PixelFormatType, v10);
            }

            else
            {
              v14 = C3DColorSpaceLinearSRGB();
            }
          }

          v43 = v14;
          v12 = 115;
          v13 = MTLPixelFormatRGBA16Float;
          goto LABEL_63;
      }
    }

LABEL_98:
    LOBYTE(image) = BYTE3(PixelFormatType);
    BYTE1(image) = BYTE2(PixelFormatType);
    BYTE2(image) = BYTE1(PixelFormatType);
    *(&image + 3) = PixelFormatType;
    v41 = scn_default_log(PixelFormatType, v10);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      SCNVideoTextureSourceCreateMetalTexture_cold_3();
    }

    return;
  }

  if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      if (v8)
      {
        v42 = 552;
        if (v7)
        {
          v12 = 552;
        }

        else
        {
          v12 = 553;
        }

        v13 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
        goto LABEL_61;
      }

      v42 = 70;
      if (v7)
      {
        v12 = 70;
      }

      else
      {
        v12 = 71;
      }

      v13 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
      goto LABEL_55;
    }

    goto LABEL_98;
  }

  if (PixelFormatType != 875704934 && PixelFormatType != 875704950)
  {
    if (PixelFormatType == 875836518)
    {
      goto LABEL_38;
    }

    goto LABEL_98;
  }

  if (v8)
  {
    v42 = 552;
    if (v7)
    {
      v12 = 552;
    }

    else
    {
      v12 = 553;
    }

    v13 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
    goto LABEL_61;
  }

  v42 = 70;
  if (v7)
  {
    v12 = 70;
  }

  else
  {
    v12 = 71;
  }

  v13 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
LABEL_55:
  v16 = C3DColorSpaceSRGB(PixelFormatType, v10);
LABEL_62:
  v43 = v16;
LABEL_63:
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 40) = 0;
  }

  v20 = CVBufferCopyAttachments(v6, kCVAttachmentMode_ShouldPropagate);
  if (v20)
  {
    v21 = v20;
    v22 = a3;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v20);
    if (ColorSpaceFromAttachments)
    {
      v24 = ColorSpaceFromAttachments;
      v25 = *(a1 + 40);
      if (v25 != v24)
      {
        if (v25)
        {
          CFRelease(v25);
          *(a1 + 40) = 0;
        }

        *(a1 + 40) = CFRetain(v24);
      }

      CFRelease(v24);
    }

    CFRelease(v21);
    a3 = v22;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_76;
  }

  if ((CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) == 0)
  {
    image = 0;
    v29 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a3, v6, 0, v13, Width, Height, 0, &image);
    if (v29)
    {
      v31 = scn_default_log(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      return;
    }

    Texture = CVMetalTextureGetTexture(image);
    v35 = *(a1 + 24);
    v36 = *(a1 + 32);
    if (!v35 || [*(a1 + 24) pixelFormat] != v12 || objc_msgSend(v35, "width") != Width || objc_msgSend(v35, "height") != Height)
    {

      v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v12 width:Width height:Height mipmapped:0];
      [v37 setStorageMode:2];
      [v37 setUsage:3];
      if (v12 != v42)
      {
        [v37 setUsage:{objc_msgSend(v37, "usage") | 0x10}];
      }

      v38 = [-[SCNMTLRenderContext device](a2) newTextureWithDescriptor:v37];
      v35 = v38;
      *(a1 + 24) = v38;
      if (v12 == v42)
      {
        v39 = v38;
      }

      else
      {
        v39 = [v38 newTextureViewWithPixelFormat:v42];
      }

      v36 = v39;
      *(a1 + 32) = v39;
    }

    [-[SCNMTLRenderContext resourceManager](a2) colorMatchSourceTexture:Texture sourceColorSpace:*(a1 + 40) destinationColorSpace:v43 destinationTexture:v36 renderContext:a2];
    *(a1 + 16) = v35;
LABEL_103:
    CFRelease(image);
    return;
  }

  if (!*(a1 + 40))
  {
LABEL_76:
    if (([(SCNMTLRenderContext *)a2 disableLinearRendering]& 1) == 0)
    {
      v13 = SCNMTLPixelFormatSRGBVariant(v13);
    }
  }

  image = 0;
  v26 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a3, v6, 0, v13, Width, Height, 0, &image);
  if (!v26)
  {
    v32 = CVMetalTextureGetTexture(image);
    v33 = [v32 iosurface];
    if (v33)
    {
      IOSurfaceIncrementUseCount(v33);
    }

    *(a1 + 16) = v32;

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    goto LABEL_103;
  }

  v28 = scn_default_log(v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
LABEL_80:
    SCNVideoTextureSourceCreateMetalTexture_cold_1();
  }
}

uint64_t kSCNGenericVideoSourceCallbackCreateTextureProxy(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6[0] = xmmword_282DC8118;
  v6[1] = *&off_282DC8128;
  v4 = C3DTextureProxyCreate();
  C3DTextureProxySetCallbacks(v4, v6);
  C3DTextureProxySetSource(v4, a3);
  return v4;
}

uint64_t kSCNCaptureDeviceSourceCallbackGetCaptureDeviceInfo(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 104);
  *a3 = *(result + 112);
  *a4 = *(result + 120);
  return result;
}

uint64_t kSCNCaptureDeviceOutputConsumerSourceCallbackGetCaptureDeviceInfo(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 88);
  *a3 = *(result + 96);
  *a4 = *(result + 104);
  return result;
}

void _C3DModelValueStorageItemCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t __C3DModelValueStorageItemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelValueStorageItemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelValueStorageCreateItem(const void *a1)
{
  if (C3DModelValueStorageItemGetTypeID_onceToken != -1)
  {
    C3DModelValueStorageCreateItem_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelValueStorageItemGetTypeID_typeID, 144);
  if (Instance)
  {
    *(Instance + 24) = CFRetain(a1);
    *(Instance + 16) = 1;
    BaseType = C3DModelTargetGetBaseType(a1, v3);
    *(Instance + 128) = BaseType;
    *(Instance + 130) = C3DSizeOfBaseType(BaseType, v5);
  }

  return Instance;
}

uint64_t C3DModelValueStorageItemRelease(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageItemRelease_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 16) - 1;
  *(a1 + 16) = v11;
  return v11;
}

void _C3DModelValueStorageCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DModelValueStorageCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelValueStorage>");
}

CFStringRef _C3DModelValueStorageCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelValueStorage>");
}

uint64_t __C3DModelValueStorageGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelValueStorageGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelValueStorageCreate()
{
  if (C3DModelValueStorageGetTypeID_onceToken != -1)
  {
    C3DModelValueStorageCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelValueStorageGetTypeID_typeID, 32);
  if (Instance)
  {
    *(Instance + 16) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  }

  return Instance;
}

uint64_t C3DModelValueStorageAddAndRetainModelValue(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(a2, a2);
  v19 = TargetAddress;
  if (*(v3 + 24) == TargetAddress)
  {
    Item = *(v3 + 32);
    if (Item)
    {
      goto LABEL_8;
    }

LABEL_10:
    Item = C3DModelValueStorageCreateItem(a2);
    Target = C3DModelTargetGetTarget(a2, v21);
    CFDictionaryAddValue(*(v3 + 16), v19, Item);
    *(Item + 136) = C3DGetValueGetter(Target);
    v23 = C3DGetValueSetter(Target);
    *(Item + 144) = v23;
    if (*(Item + 136))
    {
      if (v23)
      {
LABEL_18:
        C3DModelValueStorageUpdateModelValueFromPresentationValue(v3, Item);
        CFRelease(Item);
        *(v3 + 24) = v19;
        *(v3 + 32) = Item;
        return Item;
      }
    }

    else
    {
      v25 = scn_default_log(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        C3DModelValueStorageAddAndRetainModelValue_cold_3(v25, v24, v26, v27, v28, v29, v30, v31);
      }

      v23 = *(Item + 144);
      if (v23)
      {
        goto LABEL_18;
      }
    }

    v32 = scn_default_log(v23, v24);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageAddAndRetainModelValue_cold_4(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    goto LABEL_18;
  }

  *(v3 + 24) = TargetAddress;
  Item = CFDictionaryGetValue(*(v3 + 16), TargetAddress);
  *(v3 + 32) = Item;
  if (!Item)
  {
    goto LABEL_10;
  }

LABEL_8:
  ++*(Item + 16);
  return Item;
}

void C3DModelValueStorageUpdateModelValueFromPresentationValue(_BOOL8 a1, uint64_t a2)
{
  if (!a1 && (v3 = scn_default_log(0, a2), a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    if (a2)
    {
LABEL_4:
      v10 = *(a2 + 24);
      if (*(v10 + 37) == 1)
      {
        v11 = CFGetTypeID(*(v10 + 16));
        TypeID = C3DNodeGetTypeID(v11, v12);
        if (v11 != TypeID)
        {
          v15 = scn_default_log(TypeID, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            C3DModelValueStorageUpdateModelValueFromPresentationValue_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
          }
        }

        Transform = C3DNodeGetTransform(*(v10 + 16));
        v24 = Transform[1];
        *(a2 + 32) = *Transform;
        *(a2 + 48) = v24;
        v25 = Transform[5];
        v27 = Transform[2];
        v26 = Transform[3];
        *(a2 + 96) = Transform[4];
        *(a2 + 112) = v25;
        *(a2 + 64) = v27;
        *(a2 + 80) = v26;
      }

      else
      {
        v28 = *(a2 + 136);
        Target = C3DModelTargetGetTarget(*(a2 + 24), a2);
        TargetAddress = C3DModelTargetGetTargetAddress(v10, v30);
        v28(Target, TargetAddress, a2 + 32, *(a2 + 130), *(v10 + 34), *(v10 + 35));
      }

      return;
    }
  }

  else if (a2)
  {
    goto LABEL_4;
  }

  v32 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

void C3DModelValueStorageReleaseModelValueAndRestorePresentationValueIfNeeded(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  if (*(a2 + 16) == 1)
  {
    C3DModelValueStorageUpdatePresentationValueFromModelValue(v3, a2);
  }

  C3DModelValueStorageReleaseModelValue(v3, a2);
}

uint64_t C3DModelValueStorageUpdatePresentationValueFromModelValue(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24), a2);
  *(a2 + 152) = *(v3 + 40);
  v19 = *(a2 + 24);
  v20 = *(v19 + 37);
  v21 = *(a2 + 144);
  Target = C3DModelTargetGetTarget(v19, v22);
  if (v20 == 1)
  {
    v24 = a2 + 32;
    v25 = TargetAddress;
    v26 = 96;
    v27 = 8;
    v28 = 0;
  }

  else
  {
    v26 = *(a2 + 130);
    v29 = *(a2 + 24);
    v27 = *(v29 + 34);
    v28 = *(v29 + 35);
    v24 = a2 + 32;
    v25 = TargetAddress;
  }

  return v21(Target, v25, v24, v26, v27, v28);
}

void C3DModelValueStorageReleaseModelValue(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24), a2);
  if (!C3DModelValueStorageItemRelease(a2, v19))
  {
    CFDictionaryRemoveValue(*(v3 + 16), TargetAddress);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
  }
}

const void *C3DModelValueStorageGetModelValueIfAny(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(a2, a2);
  if (*(v3 + 24) == TargetAddress)
  {
    return *(v3 + 32);
  }

  *(v3 + 24) = TargetAddress;
  result = CFDictionaryGetValue(*(v3 + 16), TargetAddress);
  *(v3 + 32) = result;
  return result;
}

const void *C3DModelValueStorageGetModelValueForAddressIfAny(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageGetModelValueForAddressIfAny_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  if (*(v3 + 24) == key)
  {
    return *(v3 + 32);
  }

  *(v3 + 24) = key;
  result = CFDictionaryGetValue(*(v3 + 16), key);
  *(v3 + 32) = result;
  return result;
}

void C3DModelValueStorageUpdateItemModelValueWithValue(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DModelValueStorageItemRelease_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageUpdateItemModelValueWithValue_cold_3(v20, a2, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = *(*(v5 + 24) + 37);
  Bytes = C3DValueGetBytes(a3, a2);
  if (v27 == 1)
  {
    v30 = C3DSizeOfBaseType(*(a2 + 32), v28);
    C3DTransformSetValue(v5 + 32, Bytes, v30, *(a2 + 34), *(a2 + 35), v31);
  }

  else
  {
    memcpy((v5 + 32), Bytes, *(v5 + 130));
  }
}

void C3DModelValueStorageUpdateModelValueWithValue(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  ModelValueIfAny = C3DModelValueStorageGetModelValueIfAny(v5, a2);
  if (ModelValueIfAny)
  {
    C3DModelValueStorageUpdateItemModelValueWithValue(ModelValueIfAny, a2, a3);
  }
}

void *C3DModelValueStorageUpdateTimestampOfNode(uint64_t a1, uint64_t a2)
{
  Transform = C3DNodeGetTransform(a2);
  if (*(a1 + 24) == Transform)
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = Transform;
    result = CFDictionaryGetValue(*(a1 + 16), Transform);
    *(a1 + 32) = result;
    if (!result)
    {
      return result;
    }
  }

  result[19] = *(a1 + 40);
  return result;
}

void C3DModelValueStorageUpdateNodePresentationValueInNeeded(uint64_t a1, uint64_t a2)
{
  Transform = C3DNodeGetTransform(a2);
  if (*(a1 + 24) == Transform)
  {
    Value = *(a1 + 32);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = Transform;
    Value = CFDictionaryGetValue(*(a1 + 16), Transform);
    *(a1 + 32) = Value;
    if (!Value)
    {
      return;
    }
  }

  C3DModelValueStorageUpdatePresentationValueInNeeded(a1, Value);
}

void C3DModelValueStorageUpdatePresentationValueInNeeded(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  if (!result && (v4 = scn_default_log(0, a2), result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(result, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 40);
  if (*(a2 + 152) != v18)
  {
    *(a2 + 152) = v18;
    TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24), a2);
    v21 = *(a2 + 24);
    if (*(v21 + 37) == 1)
    {
      memset(v27, 0, sizeof(v27));
      C3DTransformGetMatrix(a2 + 32, v27, v19);
      v22 = *(a2 + 144);
      Target = C3DModelTargetGetTarget(*(a2 + 24), v23);
      v22(Target, TargetAddress, v27, 64, 8, 0);
    }

    else
    {
      v25 = *(a2 + 144);
      v26 = C3DModelTargetGetTarget(v21, v19);
      v25(v26, TargetAddress, a2 + 32, *(a2 + 130), *(*(a2 + 24) + 34), *(*(a2 + 24) + 35));
    }
  }
}

uint64_t C3DModelValueStorageUpdatePresentationValueWithBytes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TargetAddress = C3DModelTargetGetTargetAddress(a2[3], a2);
  a2[19] = *(a1 + 40);
  v16 = a2[18];
  Target = C3DModelTargetGetTarget(a2[3], v13);

  return v16(Target, TargetAddress, a5, a6, a3, a4);
}

uint64_t C3DModelValueStorageUpdatePresentationValueWithTransform(uint64_t a1, uint64_t *a2, __n128 *a3, int a4)
{
  result = a2[3];
  v8 = *(result + 24);
  a2[19] = *(a1 + 40);
  if (a4 == 7)
  {
    v29 = a2[18];
    Target = C3DModelTargetGetTarget(result, v29);

    return v29(Target, v8, a3, 96, 8, 0);
  }

  v10 = a4;
  if (a4)
  {
    Position = C3DTransformGetPosition(a3);
    v11 = a2[18];
    v13 = C3DModelTargetGetTarget(a2[3], v12);
    result = v11(v13, v8, &Position, 16, 6, 0);
    if ((v10 & 4) == 0)
    {
LABEL_7:
      if ((v10 & 2) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_7;
  }

  Position = C3DTransformGetScale(a3, a2);
  v14 = a2[18];
  v16 = C3DModelTargetGetTarget(a2[3], v15);
  result = v14(v16, v8, &Position, 16, 7, 0);
  if ((v10 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  result = C3DTransformGetRotationType(a3);
  switch(result)
  {
    case 2:
      C3DTransformGetAxisAngle(a3, v17);
      Position = v26;
      v27 = a2[18];
      v28 = C3DModelTargetGetTarget(a2[3], v25);
      return v27(v28, v8, &Position, 16, 4, 0);
    case 1:
      Position = C3DTransformGetEuler(a3, v17);
      v22 = a2[18];
      v24 = C3DModelTargetGetTarget(a2[3], v23);
      return v22(v24, v8, &Position, 16, 5, 0);
    case 0:
      C3DTransformGetQuaternion(a3, v17);
      Position = v18;
      v19 = a2[18];
      v21 = C3DModelTargetGetTarget(a2[3], v20);
      return v19(v21, v8, &Position, 16, 3, 0);
  }

  return result;
}

void C3DModelValueStoragePrepareNextFrame(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintApplyIK_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 40);
}

uint64_t __C3DAvoidOccluderConstraintDelegateShouldAvoidOccluderCallback(void *a1, id *a2, id *a3)
{
  v6 = [a1 delegate];
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);
  v8 = C3DEntityGetObjCWrapper(a3);
  if (!ObjCWrapper || !v8)
  {
    return 1;
  }

  return [v6 avoidOccluderConstraint:a1 shouldAvoidOccluder:ObjCWrapper forNode:v8];
}

uint64_t ___Z25C3DTransformTreeGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTransformTreeGetTypeID(void)::typeID = result;
  return result;
}

uint64_t C3DTransformTreeCreate(uint64_t a1)
{
  if (C3DTransformTreeGetTypeID(void)::onceToken != -1)
  {
    C3DTransformTreeCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTransformTreeGetTypeID(void)::typeID, 64);
  *(Instance + 16) = a1;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = -1;
  *(Instance + 56) = 0;
  *(Instance + 64) = 0;
  *(Instance + 72) = 0;
  __C3DTransformTree::_setLevelCount(Instance, 1);
  return Instance;
}

uint64_t C3DTransformTreeAddNode(__C3DTransformTree *this, __C3DNode *a2, int a3)
{
  if (!this)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return __C3DTransformTree::add(this, a2, a3);
}

uint64_t __C3DTransformTree::add(__C3DTransformTree *this, __C3DNode *a2, int a3)
{
  if (a3 == -1)
  {
    v6 = -1;
    v7 = -1;
  }

  else
  {
    v5 = (*(this + 3) + 8 * a3);
    v6 = *v5;
    v7 = v5[1];
  }

  v8 = v6;
  v9 = v6 + 1;
  if (v9 >= *(this + 16))
  {
    __C3DTransformTree::_setLevelCount(this, v6 + 2);
  }

  v10 = *(this + 7) + 80 * v9;
  v11 = *(v10 + 72);
  if (v11 == *(v10 + 76))
  {
    C3DTransformLevel::allocateData((*(this + 7) + 80 * v9), 2 * v11, 0);
    v11 = *(v10 + 72);
  }

  v12 = *(v10 + 24);
  v13 = v11;
  v14 = (v12 + 4 * v11);
  if (v11)
  {
    v15 = v11;
    v16 = *(v10 + 24);
    do
    {
      v17 = v15 >> 1;
      v18 = &v16[v15 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v15 += ~(v15 >> 1);
      if (v7 < v20)
      {
        v15 = v17;
      }

      else
      {
        v16 = v19;
      }
    }

    while (v15);
  }

  else
  {
    v16 = *(v10 + 24);
  }

  if (v16 == v14)
  {
    v21 = 4 * v13;
  }

  else
  {
    v21 = v16 - v12;
    __C3DTransformTree::_offset(this, v9 | (((v16 - v12) >> 2) << 32), v8 | (v7 << 32), 1);
  }

  v22 = v21 >> 2;
  if ((v21 >> 2) == -1)
  {
    v23 = scn_default_log(this, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::add(v23, a2, v24, v25, v26, v27, v28, v29);
    }
  }

  ++*(v10 + 72);
  *(*(v10 + 40) + 8 * v22) = a2;
  *(*(v10 + 56) + 4 * v22) = *(a2 + 54);
  v30 = *(v10 + 32);
  *(*(v10 + 24) + 4 * v22) = v7;
  *(v30 + 4 * v22) = -1;
  C3DNodeGetMatrix(a2, a2, v38);
  v31 = v38[1];
  v32 = v38[2];
  v33 = v38[3];
  v34 = (*(v10 + 16) + ((v21 >> 2) << 6));
  *v34 = v38[0];
  v34[1] = v31;
  v34[2] = v32;
  v34[3] = v33;
  __C3DTransformTree::updateWorldTransformOnInsertion(this, v9 | (v22 << 32));
  v35 = __C3DTransformTree::_newHandle(this, v9 | (v22 << 32));
  *(*(v10 + 48) + 4 * v22) = v35;
  if (v8 != -1)
  {
    v36 = *(*(this + 7) + 80 * v8 + 32);
    if (*(v36 + 4 * v7) == -1)
    {
      *(v36 + 4 * v7) = v22;
    }
  }

  __C3DTransformTree::_fixupParentAndSiblings(this, v9 | (v22 << 32), v8 | (v7 << 32), -1);
  ++*(this + 18);
  return v35;
}

void C3DTransformTreeRemoveNode(__C3DTransformTree *this, uint64_t a2)
{
  if (!this)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  __C3DTransformTree::remove(this, a2);
}

void __C3DTransformTree::remove(__C3DTransformTree *this, uint64_t a2)
{
  v2 = a2;
  *(&v98[1] + 4) = *MEMORY[0x277D85DE8];
  if (a2 == -1)
  {
    v4 = scn_default_log(this, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v5 = (*(this + 3) + 8 * v2);
  v6 = *v5;
  v7 = v5[1];
  ++*(this + 18);
  if (v7 == -1)
  {
    v37 = *(this + 12);
    *v5 = -1;
    v5[1] = v37;
    *(this + 12) = v2;
    return;
  }

  os_unfair_lock_lock(this + 19);
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - ((v9 + 15) & 0x7FFFFFFF0);
  v11 = *(this + 16);
  MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  if (v11 >= 1)
  {
    memset_pattern16(v10, &unk_21C2A3F30, 4 * v11);
    memset_pattern16(v16, &unk_21C2A3F40, 4 * v11);
  }

  v83 = v10;
  v84 = v16;
  *&v10[4 * v6] = v7;
  *&v16[4 * v6] = v7;
  v17 = v6 + 1;
  LODWORD(v18) = v11;
  if ((v6 + 1) < v11)
  {
    LODWORD(FirstChildInRange) = v6;
    v20 = v7;
    while (1)
    {
      v21 = FirstChildInRange | (v7 << 32);
      v22 = v6 | (v20 << 32);
      FirstChildInRange = __C3DTransformTree::_findFirstChildInRange(this, v21, v22);
      v7 = HIDWORD(FirstChildInRange);
      LastChildInRange = __C3DTransformTree::_findLastChildInRange(this, v21, v22);
      v20 = HIDWORD(LastChildInRange);
      if (HIDWORD(FirstChildInRange) == 0xFFFFFFFF && v20 == 0xFFFFFFFF)
      {
        break;
      }

      v6 = LastChildInRange;
      if (v7 == 0xFFFFFFFF)
      {
        v24 = scn_default_log(LastChildInRange, v14);
        LastChildInRange = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
        if (LastChildInRange)
        {
          __C3DTransformTree::remove(v97, v98, v24);
        }
      }

      if (v20 == 0xFFFFFFFF)
      {
        v25 = scn_default_log(LastChildInRange, v14);
        LastChildInRange = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
        if (LastChildInRange)
        {
          __C3DTransformTree::remove(v95, &v96, v25);
        }
      }

      if (v6 != FirstChildInRange)
      {
        v26 = scn_default_log(LastChildInRange, v14);
        LastChildInRange = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
        if (LastChildInRange)
        {
          __C3DTransformTree::remove(v93, &v94, v26);
        }
      }

      if (v20 < SHIDWORD(FirstChildInRange))
      {
        v27 = scn_default_log(LastChildInRange, v14);
        LastChildInRange = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
        if (LastChildInRange)
        {
          __C3DTransformTree::remove(v91, &v92, v27);
        }
      }

      v28 = v84;
      v29 = *&v83[4 * FirstChildInRange];
      if (v29 >= SHIDWORD(FirstChildInRange))
      {
        v30 = HIDWORD(FirstChildInRange);
      }

      else
      {
        v30 = *&v83[4 * FirstChildInRange];
      }

      *&v83[4 * FirstChildInRange] = v30;
      v31 = *&v28[4 * v6];
      if (v31 <= v20)
      {
        v31 = v20;
      }

      *&v28[4 * v6] = v31;
      v32 = *&v28[4 * FirstChildInRange];
      if (v30 <= v32)
      {
        v33 = *(this + 3);
        if (v29 >= FirstChildInRange >> 32)
        {
          v29 = FirstChildInRange >> 32;
        }

        v34 = (*(*(this + 7) + 80 * FirstChildInRange + 40) + 8 * v29);
        v35 = v32 - v30 + 1;
        do
        {
          v36 = *v34++;
          *(v33 + 8 * *(v36 + 88)) = -1;
          --v35;
        }

        while (v35);
      }

      ++v17;
      LODWORD(v18) = *(this + 16);
      if (v17 >= v18)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v18) = *(this + 16);
  }

LABEL_39:
  if (v18 < 1)
  {
    v75 = 0;
    goto LABEL_98;
  }

  v81 = &v81;
  v82 = v2;
  v38 = 0;
  do
  {
    v39 = v38;
    v40 = *(this + 7) + 80 * v38;
    v41 = v83;
    v42 = *&v84[4 * v38];
    v43 = *&v83[4 * v38];
    if (v42 >= v43)
    {
      v44 = v42 - v43 + 1;
      C3DTransformLevel::moveData(*(this + 7) + 80 * v38, (v42 + 1), ~(v42 - v43));
      v45 = (v40 + 72);
      v46 = *(v40 + 72) - v44;
      *(v40 + 72) = v46;
      if (v42 - v43 == -1)
      {
        v44 = 0;
      }

      else
      {
        v47 = *(v40 + 64);
        if (v47.i32[0] <= v47.i32[1])
        {
          if (v43 <= *(v40 + 64))
          {
            *(v40 + 64) = vmax_s32(vsub_s32(v47, vdup_n_s32(v44)), 0);
          }

          else if (v42 <= v47.i32[1])
          {
            v48 = v46 - 1;
            if (v47.i32[1] < v48)
            {
              v48 = HIDWORD(*(v40 + 64));
            }

            *(v40 + 68) = v48;
          }
        }
      }
    }

    else
    {
      v44 = 0;
      v45 = (v40 + 72);
    }

    v49 = v84;
    ++v38;
    if (v39 + 1 < *(this + 16))
    {
      v50 = *&v84[4 * v38];
      v51 = *&v41[4 * v38];
      if (v50 >= v51 && *v45 >= 1)
      {
        v52 = 0;
        v53 = *(this + 7) + 80 * v38;
        v54 = *(v40 + 32);
        v55 = v50 + 1;
        while (1)
        {
          v56 = *(v54 + 4 * v52);
          if (v56 > v50)
          {
            break;
          }

          if (v56 >= v51)
          {
            if (v55 >= *(v53 + 72) || (v57 = v51, v52 != *(*(v53 + 24) + 4 * v55)))
            {
              v57 = -1;
            }

            goto LABEL_62;
          }

LABEL_63:
          if (++v52 >= *v45)
          {
            goto LABEL_64;
          }
        }

        v57 = v51 + ~v50 + v56;
LABEL_62:
        *(v54 + 4 * v52) = v57;
        goto LABEL_63;
      }
    }

LABEL_64:
    if (v39)
    {
      v58 = 4 * v39 - 4;
      v59 = *&v49[v58];
      v60 = *&v41[v58];
      if (v59 >= v60)
      {
        LODWORD(v61) = v43 == 0x7FFFFFFF ? 0 : v43;
        v62 = *v45;
        if (v61 < *v45)
        {
          v63 = v60 + ~v59;
          v64 = *(v40 + 24);
          v61 = v61;
          do
          {
            v65 = *(v64 + 4 * v61);
            if (v65 >= v60)
            {
              *(v64 + 4 * v61) = v63 + v65;
              v62 = *v45;
            }

            ++v61;
          }

          while (v61 < v62);
        }
      }
    }

    if (v44 >= 1)
    {
      if (v43 == 0x7FFFFFFF)
      {
        v66 = scn_default_log(LastChildInRange, v14);
        LastChildInRange = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);
        if (LastChildInRange)
        {
          __C3DTransformTree::remove(v89, &v90, v66);
        }
      }

      v67 = *v45;
      if (v43 < *v45)
      {
        v68 = *(this + 3);
        v69 = v43;
        do
        {
          v70 = *(*(v40 + 40) + 8 * v69);
          v71 = (v68 + 8 * *(v70 + 88));
          if (*v71 != -1)
          {
            if (v39 != *v71)
            {
              v72 = scn_default_log(LastChildInRange, v14);
              LastChildInRange = os_log_type_enabled(v72, OS_LOG_TYPE_FAULT);
              if (LastChildInRange)
              {
                __C3DTransformTree::remove(v87, &v88, v72);
              }
            }

            if (*(*(this + 3) + 8 * *(v70 + 88) + 4) < v43)
            {
              v73 = scn_default_log(LastChildInRange, v14);
              LastChildInRange = os_log_type_enabled(v73, OS_LOG_TYPE_FAULT);
              if (LastChildInRange)
              {
                __C3DTransformTree::remove(v85, &v86, v73);
              }
            }

            v68 = *(this + 3);
            v74 = v68 + 8 * *(v70 + 88);
            *(v74 + 4) -= v44;
            v67 = *v45;
          }

          ++v69;
        }

        while (v69 < v67);
      }
    }

    v18 = *(this + 16);
  }

  while (v38 < v18);
  if (v18 < 1)
  {
    v75 = 0;
    LODWORD(v2) = v82;
  }

  else
  {
    v75 = 0;
    v76 = (*(this + 7) + 72);
    v77 = *(this + 16);
    LODWORD(v2) = v82;
    do
    {
      v78 = *v76;
      v76 += 20;
      if (v78)
      {
        ++v75;
      }

      --v77;
    }

    while (v77);
  }

LABEL_98:
  if (v75 < v18)
  {
    __C3DTransformTree::_setLevelCount(this, v75);
  }

  v79 = (*(this + 3) + 8 * v2);
  v80 = *(this + 12);
  *v79 = -1;
  v79[1] = v80;
  *(this + 12) = v2;
  os_unfair_lock_unlock(this + 19);
}

void C3DTransformTreeUpdateNodeTransform(__C3DTransformTree *this, uint64_t a2, simd_float4x4 *a3)
{
  if (!this)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  __C3DTransformTree::update(this, a2, a3);
}

void __C3DTransformTree::update(__C3DTransformTree *this, uint64_t a2, const simd_float4x4 *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v6 = scn_default_log(this, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v7 = (*(this + 3) + 8 * v4);
  v8 = v7[1];
  if (v8 != -1)
  {
    v9 = *v7;
    os_unfair_lock_lock(this + 19);
    *(this + 68) = 1;
    if (v9 >= *(this + 16))
    {
      v12 = scn_default_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __C3DTransformTree::update(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(this + 7) + 80 * v9;
    v21 = a3->columns[1];
    v22 = a3->columns[2];
    v23 = a3->columns[3];
    v24 = *(v20 + 16) + (v8 << 6);
    *v24 = a3->columns[0];
    *(v24 + 16) = v21;
    *(v24 + 32) = v22;
    *(v24 + 48) = v23;
    if (v8 < *(v20 + 64))
    {
      *(v20 + 64) = v8;
    }

    if (v8 > *(v20 + 68))
    {
      *(v20 + 68) = v8;
    }

    os_unfair_lock_unlock(this + 19);
  }
}

void C3DTransformTreeUpdateCullingHandle(_BOOL8 result, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = result;
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DTransformTreeAddNode_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v4 == -1)
  {
    v13 = scn_default_log(result, a2);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (result)
    {
      __C3DTransformTree::remove();
    }
  }

  v14 = (*(v5 + 24) + 8 * v4);
  v15 = v14[1];
  if (v15 != -1)
  {
    v16 = *v14;
    if (*v14 >= *(v5 + 64))
    {
      v17 = scn_default_log(result, a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        C3DTransformTreeUpdateCullingHandle_cold_3(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    *(*(*(v5 + 56) + 80 * v16 + 56) + 4 * v15) = a3;
  }
}

uint64_t C3DTransformTreeGetWorldTransformPtr(__C3DTransformTree *this, uint64_t a2)
{
  v2 = a2;
  v3 = this;
  if (!this)
  {
    v4 = scn_default_log(0, a2);
    this = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (this)
    {
      C3DTransformTreeAddNode_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == -1)
  {
    v11 = scn_default_log(this, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v12 = *(*(v3 + 3) + 8 * v2);
  if (*(v3 + 68) == 1)
  {
    __C3DTransformTree::updateWorldTransforms(v3);
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = HIDWORD(v12);
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    LODWORD(v15) = v13;
  }

  else
  {
    v15 = HIDWORD(v12);
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  return *(*(v3 + 7) + 80 * v16) + (v15 << 6);
}

uint64_t C3DTransformTreeGetLastFrameWorldTransformPtr(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DTransformTreeAddNode_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == -1)
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v12 = *(*(v3 + 24) + 8 * v2);
  v13 = HIDWORD(v12);
  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = HIDWORD(v12);
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    LODWORD(v12) = v14;
    LODWORD(v13) = v15;
  }

  return *(*(v3 + 56) + 80 * v12 + 8) + (v13 << 6);
}

void C3DTransformTreeNextFrame(__C3DTransformTree *this, uint64_t a2)
{
  if (!this)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  __C3DTransformTree::nextFrame(this);
}

void __C3DTransformTree::nextFrame(__C3DTransformTree *this)
{
  __C3DTransformTree::updateWorldTransforms(this);
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      memcpy(*(*(this + 7) + v2 + 8), *(*(this + 7) + v2), *(*(this + 7) + v2 + 72) << 6);
      ++v3;
      v2 += 80;
    }

    while (v3 < *(this + 16));
  }
}

void __C3DTransformTree::updateWorldTransforms(__C3DTransformTree *this)
{
  os_unfair_lock_lock(this + 19);
  *(this + 68) = 0;
  if (*(this + 16))
  {
    v3 = C3DGetScene(**(*(this + 7) + 40), v2);
    if (v3)
    {
      CullingSystem = C3DSceneGetCullingSystem(v3, v4);
      v6 = *(this + 16);
      if (v6 >= 1)
      {
        v7 = CullingSystem;
        v8 = 0;
        v9 = *(this + 7);
        v10 = vneg_f32(0xFFFFFFFFLL);
        while (1)
        {
          v11 = *(this + 7) + 80 * v8;
          v12 = *(v11 + 68);
          v13 = *(v11 + 64);
          if (v12 >= v13)
          {
            break;
          }

LABEL_23:
          ++v8;
          v9 = v11;
          if (v8 >= v6)
          {
            goto LABEL_27;
          }
        }

        if (v8)
        {
          v14 = *v9;
          v15 = *(v11 + 24);
          v16 = v12 + 1;
          v17 = *v11 + (v13 << 6);
          v18 = *(v11 + 16) + (v13 << 6);
          v19 = 0uLL;
          v20 = -1;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = *(v15 + 4 * v13);
            if (v20 != v24)
            {
              v25 = (v14 + (v24 << 6));
              v19 = *v25;
              v21 = v25[1];
              v22 = v25[2];
              v23 = v25[3];
              v20 = *(v15 + 4 * v13);
            }

            for (i = 0; i != 64; i += 16)
            {
              *(v17 + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21, *(v18 + i), 1), v19, COERCE_FLOAT(*(v18 + i))), v22, *(v18 + i), 2), v23, *(v18 + i), 3);
            }

            ++v13;
            v17 += 64;
            v18 += 64;
          }

          while (v16 != v13);
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        else
        {
          memcpy((*v11 + (v13 << 6)), (*(v11 + 16) + (v13 << 6)), (v12 - v13 + 1) << 6);
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        C3DCullingSystemUpdateWorldTransforms(v7, (*(v11 + 56) + 4 * *(v11 + 64)), (*v11 + (*(v11 + 64) << 6)), *(v11 + 68) - *(v11 + 64) + 1);
LABEL_15:
        if (v8 != *(this + 16) - 1)
        {
          v27 = *(this + 7) + 80 * v8;
          v28 = v8 | (*(v11 + 64) << 32);
          v29 = v8 | (*(v11 + 68) << 32);
          v30 = __C3DTransformTree::_findFirstChildInRange(this, v28, v29) >> 32;
          if (v30 != 0xFFFFFFFF && *(v27 + 144) > v30)
          {
            *(v27 + 144) = v30;
          }

          v31 = __C3DTransformTree::_findLastChildInRange(this, v28, v29) >> 32;
          if (v31 != 0xFFFFFFFF && *(v27 + 148) < v31)
          {
            *(v27 + 148) = v31;
          }
        }

        *(v11 + 64) = v10;
        v6 = *(this + 16);
        goto LABEL_23;
      }
    }
  }

LABEL_27:

  os_unfair_lock_unlock(this + 19);
}

void __C3DTransformTree::~__C3DTransformTree(__C3DTransformTree *this)
{
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      C3DTransformLevel::deallocateData((*(this + 7) + v2));
      ++v3;
      v2 += 80;
    }

    while (v3 < *(this + 16));
  }

  free(*(this + 7));
  *(this + 7) = 0;
  *(this + 16) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void C3DTransformLevel::deallocateData(void **this)
{
  free(*this);
  free(this[1]);
  free(this[2]);
  free(this[3]);
  free(this[4]);
  free(this[5]);
  free(this[6]);
  v2 = this[7];

  free(v2);
}

void __C3DTransformTree::_setLevelCount(__C3DTransformTree *this, int a2)
{
  if (*(this + 16) != a2)
  {
    v4 = malloc_type_calloc(0x50uLL, a2, 0x10B00402DE868D6uLL);
    v5 = v4;
    v6 = *(this + 16);
    if (v6 >= a2)
    {
      if (a2 < 1)
      {
        v20 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = &v4[v14];
          v16 = (*(this + 7) + v14);
          *v15 = *v16;
          v17 = v16[1];
          v18 = v16[2];
          v19 = v16[4];
          *(v15 + 3) = v16[3];
          *(v15 + 4) = v19;
          *(v15 + 1) = v17;
          *(v15 + 2) = v18;
          v14 += 80;
        }

        while (80 * a2 != v14);
        v6 = *(this + 16);
        v20 = a2;
      }

      if (v20 < v6)
      {
        v23 = 80 * v20;
        do
        {
          C3DTransformLevel::deallocateData((*(this + 7) + v23));
          v23 += 80;
          ++v20;
        }

        while (*(this + 16) > v20);
      }
    }

    else
    {
      if (v6 < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = &v4[v7];
          v10 = (*(this + 7) + v7);
          *v9 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          *(v9 + 3) = v10[3];
          *(v9 + 4) = v13;
          *(v9 + 1) = v11;
          *(v9 + 2) = v12;
          ++v8;
          v7 += 80;
        }

        while (v8 < *(this + 16));
      }

      if (v8 < a2)
      {
        v21 = &v4[80 * v8];
        v22 = a2 - v8;
        do
        {
          C3DTransformLevel::allocateData(v21, 128, 1);
          v21 += 10;
          --v22;
        }

        while (v22);
      }
    }

    free(*(this + 7));
    *(this + 7) = v5;
    *(this + 16) = a2;
  }
}

void C3DTransformLevel::allocateData(float32x2_t *this, __int32 a2, int a3)
{
  v5 = a2 << 6;
  v6 = this[9].i32[1];
  v7 = v6 << 6;
  v8 = *this;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = memptr;
  }

  if (v6)
  {
    memcpy(v9, v8, v6 << 6);
  }

  v10 = (v5 - v7);
  if (v10 >= 1)
  {
    bzero(&v9[v7], (v5 - v7));
  }

  if (v8)
  {
    free(v8);
  }

  *this = v9;
  v11 = this[1];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v12 = 0;
  }

  else
  {
    v12 = memptr;
  }

  if (v6)
  {
    memcpy(v12, v11, v6 << 6);
  }

  if (v10 >= 1)
  {
    bzero(&v12[v7], (v5 - v7));
  }

  if (v11)
  {
    free(v11);
  }

  this[1] = v12;
  v13 = this[2];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v14 = 0;
  }

  else
  {
    v14 = memptr;
  }

  if (v6)
  {
    memcpy(v14, v13, v6 << 6);
  }

  v15 = 4 * a2;
  if (v10 >= 1)
  {
    bzero(&v14[v7], v10);
  }

  v16 = 4 * v6;
  if (v13)
  {
    free(v13);
  }

  this[2] = v14;
  v17 = this[3];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v18 = 0;
  }

  else
  {
    v18 = memptr;
  }

  if (v6)
  {
    memcpy(v18, v17, 4 * v6);
  }

  v19 = v15 - v16;
  if ((v15 - v16) >= 1)
  {
    bzero(&v18[v16], v15 - v16);
  }

  if (v17)
  {
    free(v17);
  }

  this[3] = v18;
  v20 = this[4];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v21 = 0;
  }

  else
  {
    v21 = memptr;
  }

  if (v6)
  {
    memcpy(v21, v20, 4 * v6);
  }

  if (v19 >= 1)
  {
    bzero(&v21[v16], v15 - v16);
  }

  v22 = 8 * v6;
  if (v20)
  {
    free(v20);
  }

  this[4] = v21;
  v23 = this[5];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2, 0xF60F032AuLL))
  {
    v24 = 0;
  }

  else
  {
    v24 = memptr;
  }

  if (v6)
  {
    memcpy(v24, v23, 8 * v6);
  }

  v25 = (8 * a2 - v22);
  if (v25 >= 1)
  {
    bzero(&v24[v22], v25);
  }

  if (v23)
  {
    free(v23);
  }

  this[5] = v24;
  v26 = this[6];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v27 = 0;
  }

  else
  {
    v27 = memptr;
  }

  if (v6)
  {
    memcpy(v27, v26, 4 * v6);
  }

  if (v19 >= 1)
  {
    bzero(&v27[v16], v15 - v16);
  }

  if (v26)
  {
    free(v26);
  }

  this[6] = v27;
  v28 = this[7];
  v29 = this[9].i32[1];
  v30 = 4 * v29;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v31 = 0;
  }

  else
  {
    v31 = memptr;
  }

  if (v29)
  {
    memcpy(v31, v28, 4 * v29);
  }

  v32 = v15 - v30;
  if (v32 >= 1)
  {
    bzero(&v31[v30], v32);
  }

  if (v28)
  {
    free(v28);
  }

  this[7] = v31;
  v33 = (a2 - 1);
  v34 = this[9].u32[1];
  v35 = this[3];
  if (v34 < v33)
  {
    v36 = 0;
    v37 = (v33 - v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = vdupq_n_s64(v34);
    v39 = vaddq_s64(v38, xmmword_21C27F630);
    v40 = vaddq_s64(v38, xmmword_21C27F640);
    v41 = vdupq_n_s64(v33 - v34 - 1);
    v42 = (*&v35 + 4 * v34 + 8);
    v43 = vdupq_n_s64(1uLL);
    v44 = vdupq_n_s64(4uLL);
    do
    {
      v45 = vdupq_n_s64(v36);
      v46 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_21C27F640)));
      v47 = vaddq_s64(v40, v43);
      if (vuzp1_s16(v46, 2).u8[0])
      {
        *(v42 - 2) = v47.i32[0];
      }

      if (vuzp1_s16(v46, 2).i8[2])
      {
        *(v42 - 1) = v47.i32[2];
      }

      v48 = vorrq_s8(v45, xmmword_21C27F630);
      v49 = vaddq_s64(v39, v43);
      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, v48))).i32[1])
      {
        *v42 = v49.i32[0];
        v42[1] = v49.i32[2];
      }

      v36 += 4;
      v39 = vaddq_s64(v39, v44);
      v40 = vaddq_s64(v40, v44);
      v42 += 4;
    }

    while (v37 != v36);
  }

  *(*&v35 + 4 * v33) = -1;
  if (a3)
  {
    this[8] = vneg_f32(0xFFFFFFFFLL);
  }

  this[9].i32[1] = a2;
}

void __C3DTransformTree::_offset(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = *(a1 + 56) + 80 * a2;
  v10 = *(v9 + 72);
  if (v10 > SHIDWORD(a2))
  {
    v11 = *(a1 + 24);
    v12 = (*(v9 + 48) + 4 * (a2 >> 32));
    v13 = v10 - (a2 >> 32);
    do
    {
      v14 = *v12++;
      v15 = v11 + 8 * v14;
      LODWORD(v14) = *(v15 + 4);
      v16 = (v15 + 4);
      v17 = v14;
      if (v14 >= SHIDWORD(a2))
      {
        *v16 = v17 + a4;
      }

      --v13;
    }

    while (v13);
  }

  C3DTransformLevel::moveData(v9, HIDWORD(a2), a4);
  v18 = *(v9 + 68);
  if (v18 >= v8)
  {
    v19 = *(v9 + 64);
    if (v19 > v8)
    {
      *(v9 + 64) = v19 + a4;
    }

    *(v9 + 68) = v18 + a4;
  }

  if (a3 != -1)
  {
    C3DTransformLevel::offsetChildIndices(*(a1 + 56) + 80 * a3, HIDWORD(a3), v8, a4);
  }

  if (v6 + 1 < *(a1 + 64))
  {
    v20 = v8;
    while (v20 >= 2)
    {
      v21 = *(v9 + 32) + 4 * v20--;
      LODWORD(v22) = *(v21 - 4);
      if (v22 != -1)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v22) = 0;
LABEL_18:
    v23 = *(a1 + 56) + 80 * (v6 + 1);
    v24 = *(v23 + 72);
    if (v22 < v24)
    {
      v25 = *(v23 + 24);
      v22 = v22;
      do
      {
        v26 = *(v25 + 4 * v22);
        if (v26 >= v8)
        {
          *(v25 + 4 * v22) = v26 + a4;
          v24 = *(v23 + 72);
        }

        ++v22;
      }

      while (v22 < v24);
    }
  }
}

__n128 __C3DTransformTree::updateWorldTransformOnInsertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = (v2 + 80 * a2);
  v4 = a2 >> 32;
  v5 = a2 - 1;
  v6 = (a2 - 1);
  if (v6 == 0xFFFFFFFFLL)
  {
    v7 = (v3[2] + (v4 << 6));
    v8 = (*v3 + (v4 << 6));
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[3];
    v8[2] = v7[2];
    v8[3] = v11;
    *v8 = v9;
    v8[1] = v10;
  }

  else
  {
    v13 = *(*(v2 + 80 * a2 + 24) + 4 * v4);
    __C3DTransformTree::updateWorldTransformOnInsertion(a1, v6 | (v13 << 32));
    v14 = 0;
    v15 = (*(*(a1 + 56) + 80 * v5) + (v13 << 6));
    v16 = *v3 + (v4 << 6);
    v17 = v3[2] + (v4 << 6);
    do
    {
      *(v16 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15[1], *(v17 + v14), 1), *v15, COERCE_FLOAT(*(v17 + v14))), v15[2], *(v17 + v14), 2), v15[3], *(v17 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
  }

  v18 = *v3 + (v4 << 6);
  v19 = v3[1] + (v4 << 6);
  result = *v18;
  v21 = *(v18 + 16);
  v22 = *(v18 + 48);
  *(v19 + 32) = *(v18 + 32);
  *(v19 + 48) = v22;
  *v19 = result;
  *(v19 + 16) = v21;
  return result;
}

uint64_t __C3DTransformTree::_newHandle(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result == -1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v7 >= v6)
    {
      v9 = *(a1 + 24);
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1 + 24, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32) - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = *(a1 + 24);
      *(a1 + 24) = v17;
      *(a1 + 32) = v8;
      *(a1 + 40) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    *(a1 + 32) = v8;
    return ((v8 - *(a1 + 24)) >> 3) - 1;
  }

  else
  {
    v5 = *(a1 + 24) + 8 * result;
    *(a1 + 48) = *(v5 + 4);
    *v5 = a2;
  }

  return result;
}

void __C3DTransformTree::_fixupParentAndSiblings(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = HIDWORD(a2);
  if (a3 + 1 != a2)
  {
    v8 = scn_default_log(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_fixupParentAndSiblings(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a3 != -1)
  {
    v16 = *(result + 56);
    if (v16)
    {
      v17 = *(v16 + 80 * a3 + 32);
      if (*(v17 + 4 * (a3 >> 32)) == a4)
      {
        *(v17 + 4 * (a3 >> 32)) = v6;
      }
    }
  }
}

void C3DTransformLevel::moveData(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 72);
  v4 = v3 - a2;
  if (v3 - a2 < 0)
  {
    v23 = scn_default_log(this, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DTransformLevel::moveData(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else if (v3 != a2)
  {
    v6 = a2;
    if (v3 + a3 > *(this + 76))
    {
      v8 = scn_default_log(this, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        C3DTransformLevel::moveData(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = (*(this + 24) + 4 * v6);
    memmove(&v16[4 * a3], v16, 4 * v4);
    v17 = (*(this + 32) + 4 * v6);
    memmove(&v17[4 * a3], v17, 4 * v4);
    v18 = (*(this + 40) + 8 * v6);
    memmove(&v18[8 * a3], v18, 8 * v4);
    v19 = (*(this + 48) + 4 * v6);
    memmove(&v19[4 * a3], v19, 4 * v4);
    v20 = (*(this + 56) + 4 * v6);
    memmove(&v20[4 * a3], v20, 4 * v4);
    memmove((*this + (v6 << 6) + (a3 << 6)), (*this + (v6 << 6)), v4 << 6);
    v21 = (*(this + 8) + (v6 << 6));
    memmove(&v21[64 * a3], v21, v4 << 6);
    v22 = (*(this + 16) + (v6 << 6));
    memmove(&v22[64 * a3], v22, v4 << 6);
  }
}

void C3DTransformLevel::offsetChildIndices(uint64_t this, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  if (*(this + 72) <= a2)
  {
    v8 = scn_default_log(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DTransformLevel::offsetChildIndices(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(this + 72);
  if (v16 > v6)
  {
    v17 = *(this + 32);
    v18 = v6;
    do
    {
      v19 = *(v17 + 4 * v18);
      if (v19 >= a3)
      {
        *(v17 + 4 * v18) = v19 + a4;
        v16 = *(this + 72);
      }

      ++v18;
    }

    while (v18 < v16);
  }
}

unint64_t __C3DTransformTree::_findFirstChildInRange(_BOOL8 FirstChildInRange, uint64_t a2, unint64_t a3)
{
  v4 = FirstChildInRange;
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  if (a2 != a3)
  {
    v7 = scn_default_log(FirstChildInRange, a2);
    FirstChildInRange = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (FirstChildInRange)
    {
      __C3DTransformTree::_findFirstChildInRange(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v5 > v6)
  {
    v14 = scn_default_log(FirstChildInRange, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return -1;
  }

  v22 = a2 + 1;
  if (a2 + 1 == *(v4 + 64))
  {
    return -1;
  }

  v24 = (*(*(v4 + 56) + 80 * a2 + 32) + 4 * (a2 >> 32));
  v25 = v6 - HIDWORD(a2) + 1;
  while (1)
  {
    v27 = *v24++;
    v26 = v27;
    if (v27 != -1)
    {
      break;
    }

    if (!--v25)
    {
      v22 = -1;
      return v22 | (v26 << 32);
    }
  }

  return v22 | (v26 << 32);
}

unint64_t __C3DTransformTree::_findLastChildInRange(_BOOL8 FirstChildInRange, uint64_t a2, uint64_t a3)
{
  v5 = FirstChildInRange;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  if (a2 != a3)
  {
    v8 = scn_default_log(FirstChildInRange, a2);
    FirstChildInRange = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (FirstChildInRange)
    {
      __C3DTransformTree::_findFirstChildInRange(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (v6 > v7)
  {
    v15 = scn_default_log(FirstChildInRange, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return -1;
  }

  if (a2 + 1 == *(v5 + 64))
  {
    return -1;
  }

  v23 = (a3 + 1);
  v24 = (a3 >> 32) + 1;
  v25 = (*(*(v5 + 56) + 80 * a2 + 32) + 4 * (a3 >> 32));
  while (1)
  {
    v27 = *v25--;
    v26 = v27;
    if (v27 != -1)
    {
      break;
    }

    if (--v24 <= a2 >> 32)
    {
      return -1;
    }
  }

  Sibling = __C3DTransformTree::_nextSibling(v5, v23 | (v26 << 32));
  v30 = HIDWORD(Sibling);
  if (HIDWORD(Sibling) != 0xFFFFFFFF)
  {
    do
    {
      v31 = Sibling;
      v23 = v30;
      Sibling = __C3DTransformTree::_nextSibling(v5, Sibling);
      v30 = HIDWORD(Sibling);
    }

    while (HIDWORD(Sibling) != 0xFFFFFFFF);
    v26 = v23;
    LODWORD(v23) = v31;
  }

  return v23 | (v26 << 32);
}

unint64_t __C3DTransformTree::_nextSibling(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56) + 80 * a2;
  v3 = HIDWORD(a2) + 1;
  if (HIDWORD(a2) + 1 < *(v2 + 72) && *(*(v2 + 24) + 4 * v3) == *(*(v2 + 24) + 4 * (a2 >> 32)))
  {
    return a2 | (v3 << 32);
  }

  else
  {
    return -1;
  }
}

C3D::RenderPass *C3D::RenderPass::RenderPass(C3D::RenderPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  C3D::Pass::Pass(this, a2, a3);
  *v4 = &unk_282DC81C8;
  *(v4 + 112) = 256;
  *(v4 + 224) = 0;
  *(v4 + 114) = 0;
  *(v4 + 32) = 2;
  memset_pattern16((v4 + 128), &unk_21C2A3F50, 0x60uLL);
  return this;
}

unsigned __int8 *C3D::RenderPass::setStates(unsigned __int8 *result, void *a2)
{
  v2 = *a2;
  v3 = result[112];
  **a2 = result[112] != 0;
  if (v3)
  {
    v4 = *(v2 + 1);
    v5 = *(&xmmword_21C2816A0 + v4);
    if (v4 != v5)
    {
      *(v2 + 1) = v5;
      v2[40] = 1;
      v4 = v5;
    }

    v6 = *(&xmmword_21C2816A0 + result[113]);
  }

  else
  {
    v6 = result[113];
    v4 = *(v2 + 1);
  }

  if (v4 != v6)
  {
    *(v2 + 1) = v6;
    v2[40] = 1;
  }

  if ((v2[74] & 1) == 0)
  {
    v7 = result[114];
    if (*(v2 + 3) != v7)
    {
      *(v2 + 3) = v7;
      v2[42] = 1;
    }
  }

  v8 = result[115];
  if (*(v2 + 4) != v8)
  {
    *(v2 + 4) = v8;
    v2[43] = 1;
  }

  if ((v2[73] & 1) == 0)
  {
    v9 = result[116];
    if (*(v2 + 2) != v9)
    {
      *(v2 + 2) = v9;
      v2[41] = 1;
    }
  }

  return result;
}

unint64_t C3D::RenderPass::programHashCodeStoreKey(C3D::RenderPass *this)
{
  v2 = (*(*this + 72))(this);
  v3 = strlen(v2);
  v4 = (0xC6A4A7935BD1E995 * v3) ^ *(this + 117);
  if (v3 >= 8)
  {
    v5 = v3 >> 3;
    v6 = &v2[8 * v5];
    v7 = 8 * v5;
    do
    {
      v8 = *v2;
      v2 += 8;
      v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ v4);
      v7 -= 8;
    }

    while (v7);
    v2 = v6;
  }

  v9 = v3 & 7;
  if (v9 > 3)
  {
    if ((v3 & 7) > 5)
    {
      if (v9 != 6)
      {
        v4 ^= *(v2 + 6) << 48;
      }

      v4 ^= *(v2 + 5) << 40;
    }

    else if (v9 == 4)
    {
      goto LABEL_18;
    }

    v4 ^= *(v2 + 4) << 32;
LABEL_18:
    v4 ^= *(v2 + 3) << 24;
LABEL_19:
    v4 ^= *(v2 + 2) << 16;
    goto LABEL_20;
  }

  if ((v3 & 7) <= 1)
  {
    if ((v3 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v9 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v4 ^= *(v2 + 1) << 8;
LABEL_21:
  v4 = 0xC6A4A7935BD1E995 * (v4 ^ *v2);
  return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
}

unint64_t C3D::RenderPass::hashName(C3D::RenderPass *this)
{
  v2 = C3D::Pass::hashName(this);
  if (C3D::PassDescriptor::outputCount((this + 32)))
  {
    v3 = 0;
    do
    {
      v4 = C3D::PassDescriptor::outputAtIndex((this + 32), v3);
      if (*v4 == 1 && *(v4 + 65) != 255)
      {
        v5 = *(v4 + 31);
        v6 = 0xC6A4A7935BD1E995 * (v2 ^ 0x8D494F26B7A3D32ALL ^ *(v4 + 28));
        v2 = (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47);
        if (v5 >= 2)
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v2 ^ v5 ^ 0xC6A4A7935BD1E995)) ^ ((0xC6A4A7935BD1E995 * (v2 ^ v5 ^ 0xC6A4A7935BD1E995)) >> 47));
          v2 = v7 ^ (v7 >> 47);
        }
      }

      ++v3;
    }

    while (v3 < C3D::PassDescriptor::outputCount((this + 32)));
  }

  return v2;
}

double skipSpaceAndLineEnd(std::string *__str, uint64_t a2, int a3)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = size;
  v7 = 0;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = __str;
    }

    while (1)
    {
      v9 = v8->__r_.__value_.__s.__data_[v7];
      v10 = v9 == 10 || v9 == 13;
      if (!v10 && v9 > 32)
      {
        break;
      }

      if (size == ++v7)
      {
LABEL_21:
        v7 = size;
        goto LABEL_22;
      }
    }
  }

  if (v7 < size && a3 != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v12 = __str;
    }

    while (v12->__r_.__value_.__s.__data_[v7] == 44)
    {
      if (size == ++v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  std::string::basic_string(&v14, __str, v7, size - v7, &v15);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v14.__r_.__value_.__l.__data_;
  *a2 = v14;
  return result;
}

double getLineContent(std::string *a1, std::string *a2, std::string *a3, char a4, int a5)
{
  skipSpaceAndLineEnd(a1, a2, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v12 = (v11 + size);
  v13 = v11;
  if (size >= 1)
  {
    do
    {
      v14 = v13->__r_.__value_.__s.__data_[0];
      if (v14 == 10 || v14 == 13)
      {
        break;
      }

      v16 = v14 < 33 ? a4 : 0;
      v17 = v14 == 44 ? a5 : 0;
      if (v16)
      {
        break;
      }

      if (v17)
      {
        break;
      }

      v13 = (v13 + 1);
    }

    while (v13 < v12);
  }

  std::string::assign(a3, a1, 0, v13 - v11);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::assign(a2, a1, v13 - v18, v12 - v13);

  return skipSpaceAndLineEnd(a2, a2, a5);
}

float getFloat(std::string *a1, std::string *a2, float *a3, char a4, int a5)
{
  memset(&v20, 0, sizeof(v20));
  getLineContent(a1, a2, &v20, a4, a5);
  size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v9 = scn_default_log(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      getFloat(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v20.__r_.__value_.__r.__words[0];
    v19 = atof(v20.__r_.__value_.__l.__data_);
    *a3 = v19;
    operator delete(v18);
  }

  else
  {
    result = atof(&v20);
    *a3 = result;
  }

  return result;
}

void sub_21C192990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getInt(std::string *a1, std::string *a2, int *a3, char a4, int a5)
{
  memset(&v18, 0, sizeof(v18));
  getLineContent(a1, a2, &v18, a4, a5);
  size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v9 = scn_default_log(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      getFloat(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = v18.__r_.__value_.__r.__words[0];
    *a3 = atoi(v18.__r_.__value_.__l.__data_);
    operator delete(v17);
  }

  else
  {
    *a3 = atoi(&v18);
  }
}

void sub_21C192A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DIESInfoLoadFromString(_BYTE *__src, size_t __n, _OWORD *a3, int a4)
{
  if (__n < 5)
  {
    return 0;
  }

  if (a4)
  {
    if (*__src != 1314080073 || __src[4] != 65)
    {
      return 0;
    }
  }

  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __n;
  memcpy(&__dst, __src, __n);
  __dst.__r_.__value_.__s.__data_[__n] = 0;
  memset(&__str, 0, sizeof(__str));
  memset(&v71, 0, sizeof(v71));
  getLineContent(&__dst, &__str, &v71, 0, 0);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_149;
  }

  if ((*(&v71.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 16)
      {
LABEL_45:
        v11 = &v71;
        goto LABEL_53;
      }

      if (v71.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v71.__r_.__value_.__l.__size_ != 0x353939312D33362DLL)
      {
        if (v71.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v71.__r_.__value_.__l.__size_ != 0x323030322D33362DLL)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (LODWORD(v71.__r_.__value_.__l.__data_) != 1314080073 || *(v71.__r_.__value_.__r.__words + 3) != 825835854)
    {
      goto LABEL_45;
    }

LABEL_52:
    v11 = "IESNA91";
    goto LABEL_53;
  }

  v11 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__l.__size_ == 7)
  {
    if (*v71.__r_.__value_.__l.__data_ != 1314080073 || *(v71.__r_.__value_.__r.__words[0] + 3) != 825835854)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v71.__r_.__value_.__l.__size_ == 16)
  {
    if (*v71.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v71.__r_.__value_.__r.__words[0] + 8) != 0x353939312D33362DLL)
    {
      if (*v71.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v71.__r_.__value_.__r.__words[0] + 8) != 0x323030322D33362DLL)
      {
        goto LABEL_53;
      }

LABEL_40:
      v11 = "IESNA:LM-63-2002";
      goto LABEL_53;
    }

LABEL_46:
    v11 = "IESNA:LM-63-1995";
  }

LABEL_53:
  *&v69 = v11;
  while (1)
  {
    v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __str.__r_.__value_.__l.__size_;
    }

    if (!v16)
    {
      break;
    }

    memset(&__p, 0, sizeof(__p));
    getLineContent(&__str, &__str, &__p, 0, 0);
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      p_p = &__p;
    }

    v20 = memcmp(p_p, "TILT=NONE", v18);
    v21 = v18 >= 9 && v20 == 0;
    if (!v21 && ((v17 & 0x80000000) != 0 ? ((v23 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xA) ? (v22 = 10) : (v22 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xA ? (v22 = 10) : (v22 = v17), v23 = &__p), ((v24 = memcmp(v23, "TILT= NONE", v22), v22 < 0xA) || v24) && ((v17 & 0x80000000) != 0 ? ((v26 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xA) ? (v25 = 10) : (v25 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xA ? (v25 = 10) : (v25 = v17), v26 = &__p), ((v27 = memcmp(v26, "TILT =NONE", v25), v25 < 0xA) || v27) && ((v17 & 0x80000000) != 0 ? ((v29 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xB) ? (v28 = 11) : (v28 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xB ? (v28 = 11) : (v28 = v17), v29 = &__p), (v30 = memcmp(v29, "TILT = NONE", v28), v28 < 0xB) || v30))))
    {
      if ((v17 & 0x80000000) != 0)
      {
        v33 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ >= 5)
        {
          v32 = 5;
        }

        else
        {
          v32 = __p.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v17 >= 5)
        {
          v32 = 5;
        }

        else
        {
          v32 = v17;
        }

        v33 = &__p;
      }

      v34 = memcmp(v33, "TILT=", v32);
      if (v32 < 5 || v34)
      {
        if ((v17 & 0x80000000) != 0)
        {
          v36 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ >= 5)
          {
            v35 = 5;
          }

          else
          {
            v35 = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (v17 >= 5)
          {
            v35 = 5;
          }

          else
          {
            v35 = v17;
          }

          v36 = &__p;
        }

        v37 = memcmp(v36, "TILT =", v35);
        v31 = v35 > 4 && v37 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {
      v31 = 3;
    }

    if ((v17 & 0x80000000) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v31)
      {
LABEL_130:
        if (v31 != 3)
        {
          goto LABEL_149;
        }

        break;
      }
    }

    else if (v31)
    {
      goto LABEL_130;
    }
  }

  getFloat(&__str, &__str, &v64, 1, 0);
  v7 = 0;
  if (*&v64 < 0.0 || *&v64 > 32767.0)
  {
    goto LABEL_150;
  }

  getFloat(&__str, &__str, &v64 + 1, 1, 0);
  if (*(&v64 + 1) < 0.0)
  {
    goto LABEL_149;
  }

  getFloat(&__str, &__str, &v64 + 2, 1, 0);
  if (*(&v64 + 2) < 0.0)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &count[1], 1, 0);
  if (LODWORD(count[1]) >> 15)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &v66[1], 1, 0);
  if (LODWORD(v66[1]) >> 15)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &v65 + 2, 1, 0);
  getInt(&__str, &__str, &v65 + 3, 1, 0);
  getFloat(&__str, &__str, &v69 + 2, 1, 0);
  getFloat(&__str, &__str, &v69 + 3, 1, 0);
  getFloat(&__str, &__str, &v70, 1, 0);
  getFloat(&__str, &__str, &v70 + 1, 1, 0);
  getFloat(&__str, &__str, &v70 + 2, 1, 0);
  getFloat(&__str, &__str, &v70 + 3, 1, 0);
  v39 = count[1];
  v40 = malloc_type_calloc(SLODWORD(count[1]), 4uLL, 0x100004052888210uLL);
  count[0] = v40;
  v41 = SLODWORD(v66[1]);
  v42 = malloc_type_calloc(SLODWORD(v66[1]), 4uLL, 0x100004052888210uLL);
  v43 = v39;
  v66[0] = v42;
  if (v39 < 1)
  {
    v46 = -8388609;
LABEL_143:
    if (v41 < 1)
    {
      data = -8388609;
LABEL_158:
      LODWORD(v65) = data;
      DWORD2(v68) = v41 * v43;
      v51 = malloc_type_calloc(v41 * v43, 4uLL, 0x100004052888210uLL);
      *&v68 = v51;
      v52 = *(&v64 + 2);
      if (v41 < 1)
      {
        v55 = 0.0;
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0.0;
        do
        {
          v56 = v43;
          if (v43 >= 1)
          {
            do
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              getFloat(&__str, &__str, &__p, 1, 1);
              v57 = *&__p.__r_.__value_.__l.__data_;
              v51[v54++] = *&__p.__r_.__value_.__l.__data_ * v52;
              if (v57 >= v55)
              {
                v55 = v57;
              }

              --v56;
            }

            while (v56);
          }

          ++v53;
        }

        while (v53 != v41);
      }

      *(&v64 + 3) = v55 * v52;
      DWORD1(v65) = v46;
      skipSpaceAndLineEnd(&__str, &__str, 0);
      v58 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = __str.__r_.__value_.__l.__size_;
      }

      if (v58)
      {
        memset(&__p, 0, sizeof(__p));
        getLineContent(&__str, &__str, &__p, 1, 0);
        if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "END"))
        {
          skipSpaceAndLineEnd(&__str, &__str, 0);
        }

        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v59 = __str.__r_.__value_.__l.__size_;
        }

        if (v59)
        {
          free(v40);
          free(v42);
          free(v51);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_149;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v60 = v69;
      a3[4] = v68;
      a3[5] = v60;
      a3[6] = v70;
      v61 = v65;
      *a3 = v64;
      a3[1] = v61;
      v62 = *count;
      a3[2] = *v66;
      a3[3] = v62;
      v7 = 1;
      goto LABEL_150;
    }

    v47 = 0;
    v48 = -3.4028e38;
    while (1)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      getFloat(&__str, &__str, &__p, 1, 1);
      data = __p.__r_.__value_.__l.__data_;
      if (*&__p.__r_.__value_.__l.__data_ < v48)
      {
        break;
      }

      *&v42[v47] = __p.__r_.__value_.__l.__data_;
      v47 += 4;
      v48 = *&data;
      if (4 * v41 == v47)
      {
        goto LABEL_158;
      }
    }
  }

  else
  {
    v44 = 0;
    v45 = -3.4028e38;
    while (1)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      getFloat(&__str, &__str, &__p, 1, 1);
      v46 = __p.__r_.__value_.__l.__data_;
      if (*&__p.__r_.__value_.__l.__data_ < v45)
      {
        break;
      }

      *&v40[v44] = __p.__r_.__value_.__l.__data_;
      v44 += 4;
      v45 = *&v46;
      if (4 * v43 == v44)
      {
        goto LABEL_143;
      }
    }
  }

  free(v40);
  free(v42);
LABEL_149:
  v7 = 0;
LABEL_150:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_21C1933A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  _Unwind_Resume(exception_object);
}

void *C3DIESInfoLoad(void *a1, _OWORD *a2)
{
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  result = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1];
  if (result)
  {
    v5 = result;
    isEqualToString = objc_msgSend_isEqualToString_([objc_msgSend(objc_msgSend(a1 "path")]);
    v7 = [v5 bytes];
    v8 = [v5 length];

    return C3DIESInfoLoadFromString(v7, v8, a2, isEqualToString ^ 1u);
  }

  return result;
}

void computeFilterPos(float a1, _BOOL8 result, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  *&v22[5] = *MEMORY[0x277D85DE8];
  if (a3 <= 0)
  {
    v6 = scn_default_log(result, a3);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (result)
    {
      computeFilterPos(v6, a3, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*v4 <= a1)
  {
    v13 = v3 - 1;
    if (v4[v13] >= a1)
    {
      v14 = 0;
      if (v3 != 1)
      {
        do
        {
          v15 = (v14 + v13 + 1) >> 1;
          if (v4[v15] <= a1)
          {
            if (v14 == v15)
            {
              v18 = scn_default_log(result, a3);
              result = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
              if (result)
              {
                computeFilterPos(buf, v22, v18);
              }
            }

            else
            {
              v14 = (v14 + v13 + 1) >> 1;
            }
          }

          else
          {
            v16 = v15 - 1;
            if (v13 == v16)
            {
              v17 = scn_default_log(result, a3);
              result = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
              if (result)
              {
                computeFilterPos(v19, &v20, v17);
              }
            }

            else
            {
              v13 = v16;
            }
          }
        }

        while (v14 < v13);
      }
    }
  }
}

float getCandelaValue(uint64_t CandelaValue, uint64_t a2, int a3)
{
  v3 = CandelaValue;
  v4 = *(CandelaValue + 40);
  v5 = *(CandelaValue + 56);
  v6 = v4 - 1;
  if (v4 - 1 >= a2)
  {
    v6 = a2;
  }

  v7 = v6 & ~(v6 >> 31);
  v8 = v5 - 1;
  if (v5 - 1 >= a3)
  {
    v8 = a3;
  }

  v9 = v8 & ~(v8 >> 31);
  if (v7 >= v4)
  {
    v10 = scn_default_log(CandelaValue, a2);
    CandelaValue = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (CandelaValue)
    {
      getCandelaValue(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if (v9 >= v5)
  {
    v17 = scn_default_log(CandelaValue, a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      getCandelaValue(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return *(*(v3 + 64) + 4 * (v9 + v7 * v5));
}

float interpolateBicubic(uint64_t a1, float a2, float a3)
{
  LODWORD(v3) = vcvtms_s32_f32(a2);
  v5 = vcvtms_s32_f32(a3);
  v6 = a2 - floorf(a2);
  v36 = a3 - floorf(a3);
  CandelaValue = getCandelaValue(a1, (v3 - 1), v5 - 1);
  v41 = getCandelaValue(a1, v3, v5 - 1);
  v37 = getCandelaValue(a1, (v3 + 1), v5 - 1);
  v7 = getCandelaValue(a1, (v3 + 2), v5 - 1);
  v8.i64[0] = __PAIR64__(LODWORD(v41), LODWORD(CandelaValue));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v37));
  v45 = v8;
  v42 = getCandelaValue(a1, (v3 - 1), v5);
  v38 = getCandelaValue(a1, v3, v5);
  v33 = getCandelaValue(a1, (v3 + 1), v5);
  v9 = getCandelaValue(a1, (v3 + 2), v5);
  v10.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v42));
  v10.i64[1] = __PAIR64__(LODWORD(v9), LODWORD(v33));
  v43 = v10;
  v39 = getCandelaValue(a1, (v3 - 1), v5 + 1);
  v34 = getCandelaValue(a1, v3, v5 + 1);
  v31 = getCandelaValue(a1, (v3 + 1), v5 + 1);
  v11 = getCandelaValue(a1, (v3 + 2), v5 + 1);
  v12.i64[0] = __PAIR64__(LODWORD(v34), LODWORD(v39));
  v12.i64[1] = __PAIR64__(LODWORD(v11), LODWORD(v31));
  v40 = v12;
  v35 = getCandelaValue(a1, (v3 - 1), v5 + 2);
  v32 = getCandelaValue(a1, v3, v5 + 2);
  v30 = getCandelaValue(a1, (v3 + 1), v5 + 2);
  v13 = getCandelaValue(a1, (v3 + 2), v5 + 2);
  v14.i64[0] = __PAIR64__(LODWORD(v32), LODWORD(v35));
  v14.i64[1] = __PAIR64__(LODWORD(v13), LODWORD(v30));
  _Q5 = v14;
  __asm { FMOV            V0.4S, #3.0 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V2.4S, #-3.0 }

  v22 = vmlaq_f32(vmlaq_f32(vmlsq_f32(vmulq_f32(vmulq_f32(v43, _Q0), v14), v14, v45), v14, vmulq_f32(v40, _Q2)), v14, _Q5);
  __asm { FMOV            V2.4S, #5.0 }

  _Q6 = vmlaq_n_f32(v43, vmlaq_n_f32(vmulq_f32(vsubq_f32(v40, v45), v14), vmlaq_n_f32(vaddq_f32(v40, vaddq_f32(v40, vmlsq_f32(v45, v14, vmlaq_f32(_Q5, _Q2, v43)))), v22, v36), v36), v36);
  _S4 = 3.0;
  __asm { FMLA            S3, S4, V6.S[1] }

  _S4 = -3.0;
  __asm { FMLA            S3, S4, V6.S[2] }

  _Q5.i32[0] = 5.0;
  __asm { FMLA            S2, S5, V6.S[1] }

  return _Q6.f32[1] + ((((_Q6.f32[2] - _Q6.f32[0]) * 0.5) + (((_Q6.f32[2] + (_Q6.f32[2] + (_Q6.f32[0] - (_Q2.f32[0] * 0.5)))) + (((_Q6.f32[3] + _S3) * 0.5) * v6)) * v6)) * v6);
}

uint64_t C3DIESInfoGenerateTexture2D(_BOOL8 Texture2D_cold_2, int32x4_t *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6)
{
  v10 = a2;
  v11 = Texture2D_cold_2;
  v89 = *MEMORY[0x277D85DE8];
  if (!a2 && (v12 = scn_default_log(Texture2D_cold_2, 0), Texture2D_cold_2 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    C3DMeshSourceCreateWithData_cold_1(v12, a2, v13, v14, v15, v16, v17, v18);
    if (a3)
    {
LABEL_4:
      if (a4)
      {
        goto LABEL_7;
      }
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v19 = scn_default_log(Texture2D_cold_2, a2);
  Texture2D_cold_2 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (Texture2D_cold_2)
  {
    C3DIESInfoGenerateTexture2D_cold_2(v19, a2, v20, v21, v22, v23, v24, v25);
  }

LABEL_7:
  if (a5 != 1 && a5 != 4)
  {
    v26 = scn_default_log(Texture2D_cold_2, a2);
    Texture2D_cold_2 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
    if (Texture2D_cold_2)
    {
      C3DIESInfoGenerateTexture2D_cold_3(v26, a2, v27, v28, v29, v30, v31, v32);
    }
  }

  if (a6 > 4 || ((1 << a6) & 0x16) == 0)
  {
    v33 = scn_default_log(Texture2D_cold_2, a2);
    Texture2D_cold_2 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);
    if (Texture2D_cold_2)
    {
      C3DIESInfoGenerateTexture2D_cold_4(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  v41 = *(v11 + 12);
  v43 = MEMORY[0x28223BE20](Texture2D_cold_2);
  v45 = &v82[-v44];
  if (a3)
  {
    v46 = 0;
    v47 = *&v43 / 180.0;
    do
    {
      v48 = acosf(((v46 * -2.0) * (1.0 / a3)) + 1.0) / 3.14159265 * 180.0;
      computeFilterPos(v47 * v48, *(v11 + 48), *(v11 + 56));
      v45[v46++] = v49;
    }

    while (a3 != v46);
  }

  MEMORY[0x28223BE20](v42);
  v51 = &v82[-v50];
  if (a4)
  {
    v84 = v45;
    v85 = a3;
    v52 = 0;
    v53 = 1.0 / v41;
    do
    {
      computeFilterPos(((1.0 / a4) * v52) * 180.0, *(v11 + 32), *(v11 + 40));
      *&v51[4 * v52++] = v54;
    }

    while (a4 != v52);
    v55 = 0;
    v56 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v88 = _Q0;
    v62 = v10;
    v63 = v10;
    v86 = a3;
    do
    {
      v87 = v55;
      if (a3)
      {
        v83 = v56;
        v64 = *&v51[4 * v55];
        v66 = v84;
        for (i = v85; i; --i)
        {
          v67 = v53 * interpolateBicubic(v11, v64, *v66);
          switch(a6)
          {
            case 1u:
              v77 = ((v67 * 255.0) + 0.5);
              if (a5 == 4)
              {
                v62->i8[0] = v77;
                v62->i8[1] = v77;
                v62->i8[2] = v77;
                v62->i8[3] = -1;
                v62 = (v62 + 4);
              }

              else
              {
                if (a5 != 1)
                {
LABEL_52:
                  v80 = v83;
                  return v80 & 1;
                }

                v62->i8[0] = v77;
                v62 = (v62 + 1);
              }

              break;
            case 2u:
              v68 = HIWORD(LODWORD(v67)) & 0x8000;
              v69 = (LODWORD(v67) >> 23);
              v70 = v69 - 112;
              v71 = v69 - 113;
              v72 = v68 | 0x7BFF;
              if ((LODWORD(v67) & 0x7FFFFF) != 0)
              {
                LOWORD(v73) = v68 + 1;
              }

              else
              {
                v73 = HIWORD(LODWORD(v67)) & 0x8000;
              }

              v74 = v73 | 0x7C00;
              if (v69 == 255)
              {
                v72 = v74;
              }

              if (v69 >= 0x71)
              {
                v75 = v72;
              }

              else
              {
                v75 = HIWORD(v67) & 0x8000;
              }

              v76 = HIWORD(LODWORD(v67)) & 0x8000 | (LODWORD(v67) >> 13) & 0x3FF | (v70 << 10);
              if (v71 > 0x1D)
              {
                LOWORD(v76) = v75;
              }

              if (a5 == 4)
              {
                v10->i16[0] = v76;
                v10->i16[1] = v76;
                v10->i16[2] = v76;
                v10->i16[3] = -1;
                v10 = (v10 + 8);
              }

              else
              {
                if (a5 != 1)
                {
                  goto LABEL_52;
                }

                v10->i16[0] = v76;
                v10 = (v10 + 2);
              }

              break;
            case 4u:
              if (a5 == 4)
              {
                v78 = v88;
                *v78.i32 = v67;
                v79 = vzip1q_s32(v78, v78);
                *&v79.i32[2] = v67;
                *v63++ = v79;
              }

              else
              {
                if (a5 != 1)
                {
                  goto LABEL_52;
                }

                *v63->i32 = v67;
                v63 = (v63 + 4);
              }

              break;
            default:
              goto LABEL_52;
          }

          ++v66;
        }
      }

      LODWORD(a3) = v86;
      v55 = v87 + 1;
      v56 = v87 + 1 >= a4;
    }

    while (v87 + 1 != a4);
  }

  v80 = 1;
  return v80 & 1;
}

void C3DIESInfoDestroy(void **a1)
{
  free(a1[4]);
  a1[4] = 0;
  free(a1[6]);
  a1[6] = 0;
  free(a1[8]);
  a1[8] = 0;
}

void _C3DAnimationEventsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(*(a1 + 16) + v4);
      if (v5)
      {
        _Block_release(v5);
        v2 = *(a1 + 32);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {

    free(v6);
  }
}

CFStringRef _C3DAnimationEventsCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimationEvents>");
}

CFStringRef _C3DAnimationEventsCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimationEvents>");
}

uint64_t __C3DAnimationEventsGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAnimationEventsGetTypeID_typeID = result;
  return result;
}

uint64_t C3DAnimationEventsCreateWithEventCount(size_t a1)
{
  if (C3DAnimationEventsGetTypeID_onceToken != -1)
  {
    C3DAnimationEventsCreateWithEventCount_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationEventsGetTypeID_typeID, 24);
  *(Instance + 16) = malloc_type_calloc(0x10uLL, a1, 0x2DD58A0DuLL);
  *(Instance + 24) = a1;
  return Instance;
}

void *C3DAnimationEventsAddEvent(_BOOL8 a1, void *aBlock, double a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = scn_default_log(0, aBlock);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DAnimationEventsAddEvent_cold_1(v6, aBlock, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v5[4] >= v5[3])
  {
    v13 = scn_default_log(a1, aBlock);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  *(v5[2] + 16 * v5[4]) = a3;
  result = _Block_copy(aBlock);
  v22 = v5[4];
  *(v5[2] + 16 * v22 + 8) = result;
  v5[4] = v22 + 1;
  return result;
}

void C3DAnimationEventsTriggerEventsWithTimeChanges(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  if (!a2)
  {
    v14 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == a4)
  {
    if (!a4)
    {
      if (a7 >= a6)
      {
        v28 = a1;
        v29 = a2;
        v30 = a6;
        goto LABEL_17;
      }

      v25 = 1.0;
      v23 = a1;
      v24 = a2;
      v22 = a6;
      v26 = 0;
LABEL_13:
      _C3DAnimationEventsTriggerEventsWithTimeChanges(v23, v24, v26, a5, v22, v25);
      v30 = 0.0;
      v28 = a1;
      v29 = a2;
LABEL_17:
      v27 = a7;
      goto LABEL_18;
    }

    if (a6 < a7)
    {
      _C3DAnimationEventsTriggerEventsWithTimeChanges(a1, a2, 0, a5, 0.0, a6);
      v27 = 1.0;
      v28 = a1;
      v29 = a2;
      v30 = a7;
LABEL_18:
      v31 = 0;
      goto LABEL_19;
    }

    v28 = a1;
    v29 = a2;
    v30 = a7;
    v27 = a6;
  }

  else
  {
    if (a3)
    {
      v22 = 0.0;
      v23 = a1;
      v24 = a2;
      v25 = a6;
      v26 = 1;
      goto LABEL_13;
    }

    _C3DAnimationEventsTriggerEventsWithTimeChanges(a1, a2, 0, a5, a6, 1.0);
    v27 = 1.0;
    v28 = a1;
    v29 = a2;
    v30 = a7;
  }

  v31 = 1;
LABEL_19:
  _C3DAnimationEventsTriggerEventsWithTimeChanges(v28, v29, v31, a5, v30, v27);
}

void _C3DAnimationEventsTriggerEventsWithTimeChanges(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = result;
  *&v35[5] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = scn_default_log(result, 0);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DAnimationEventsAddEvent_cold_1(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a5 > a6)
  {
    v19 = scn_default_log(result, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  if (a5 != a6)
  {
    EventIndexForTime = _C3DAnimationEventGetEventIndexForTime(a2, a3, a5);
    v28 = _C3DAnimationEventGetEventIndexForTime(a2, a3, a6);
    v30 = EventIndexForTime & ~(EventIndexForTime >> 63);
    v31 = v28 >= *(a2 + 32) ? *(a2 + 32) : v28;
    if (v30 < v31)
    {
      v32 = (16 * v30) | 8;
      do
      {
        if (*(a2 + 32) <= v30)
        {
          v33 = scn_default_log(v28, v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_3(v34, v35, v33);
          }
        }

        v28 = C3DAnimationManagerPushEvent(v11, *(*(a2 + 16) + v32), a4, a3);
        ++v30;
        v32 += 16;
      }

      while (v31 != v30);
    }
  }
}

uint64_t C3DAnimationEventsGetCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DAnimationEventsGetEventBlockAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2 + 8);
}

double C3DAnimationEventsGetEventTimeAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2);
}

uint64_t _C3DAnimationEventGetEventIndexForTime(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  if (v14 < 2)
  {
    v16 = 0;
    result = 1;
  }

  else
  {
    v16 = 0;
    do
    {
      if (*(v15 + 16 * (v16 + (v14 - v16) * 0.5)) > a3)
      {
        v14 = (v16 + (v14 - v16) * 0.5);
      }

      else
      {
        v16 = (v16 + (v14 - v16) * 0.5);
      }

      result = v16 + 1;
    }

    while (v14 > v16 + 1);
  }

  v18 = *(v15 + 16 * v16);
  if (v18 >= a3)
  {
    v19 = a3 != 1.0;
    if (v18 != a3)
    {
      v19 = 1;
    }

    if (v19 | v3)
    {
      return v16;
    }
  }

  return result;
}

uint64_t C3DParticleEmitStandard(uint64_t a1, float *a2, double a3, float a4)
{
  v42 = *MEMORY[0x277D85DE8];
  System = C3DParticleSystemInstanceGetSystem(a1);
  BirthRate = C3DParticleSystemGetBirthRate(System, v9);
  BirthRateVariation = C3DParticleSystemGetBirthRateVariation(System, v11);
  if (BirthRateVariation != 0.0)
  {
    v13 = 214013 * *(a1 + 1116) + 2531011;
    *(a1 + 1116) = v13;
    BirthRate = BirthRate + (((HIWORD(v13) * 0.000015259) + -0.5) * BirthRateVariation);
  }

  if (*a2 > 0.0)
  {
    BirthRate = BirthRate * (a4 / *a2);
  }

  v14 = BirthRate + a2[3];
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  a2[3] = v14 - v14;
  v16 = *(a1 + 1104);
  result = C3DParticleSystemInstanceCheckParticlesCount(a1, (v16 + v15));
  if (result)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    memcpy(__dst, (a1 + 80), 0x404uLL);
    v19 = *(a1 + 48);
    v36 = *(a1 + 40);
    v20 = *(a1 + 64);
    v35 = *(a1 + 56);
    *v33 = v19;
    v37 = *(a1 + 1152);
    v38 = *(a1 + 1168);
    v34 = v20;
    v21 = *(a1 + 1116);
    v39 = v21;
    *&__dst[257] = a4;
    *&v22 = a3 - *(a1 + 72);
    __dst[259] = v22;
    if (C3DParticleSystemGetIsLocal(v19, v23))
    {
      v24 = 0;
    }

    else
    {
      v24 = a2 + 8;
      v41 = a2 + 24;
    }

    v40 = v24;
    v25 = *(a1 + 1056);
    if (v25)
    {
      for (i = 0; i < v25; ++i)
      {
        v27 = *(a1 + 800 + 8 * i);
        if (v27)
        {
          v27(__dst, v16, (v16 + v15));
          v25 = *(a1 + 1056);
        }
      }

      v21 = v39;
      v19 = *v33;
    }

    *(a1 + 1116) = v21;
    theArray = 0;
    result = C3DParticleSystemGetEventBlock(v19, 0, &theArray);
    if (result)
    {
      v28 = result;
      memset(v31, 0, sizeof(v31));
      memset(v30, 0, sizeof(v30));
      C3DParticleSystemInstanceFillUserData(*v33, __dst, theArray, v31, v30, v16);
      result = (*(v28 + 16))(v28, v31, v30, 0, v15);
    }

    *(a1 + 1104) = v16 + v15;
  }

  return result;
}

void C3DParticleEmitTrail(uint64_t a1, float32x4_t *a2, double a3, float a4)
{
  System = C3DParticleSystemInstanceGetSystem(a1);
  v35 = a2[4];
  v36 = a2[5];
  C3DParticleSystemGetIsLocal(System, v9);
  v10 = vsubq_f32(a2[9], v36);
  v11 = vmulq_f32(v10, v10);
  if ((v11.f32[2] + vaddv_f32(*v11.f32)) >= 0.0001)
  {
    v12 = (*(a1 + 1104) + 1);
    if (C3DParticleSystemInstanceCheckParticlesCount(a1, v12))
    {
      v15 = *(a1 + 336);
      v14 = *(a1 + 344);
      v17 = *(a1 + 352);
      v16 = *(a1 + 360);
      v18 = *(a1 + 368);
      ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(System, v13);
      ParticleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(System, v20);
      if (ParticleLifeSpanVariation != 0.0)
      {
        v22 = 214013 * *(a1 + 1116) + 2531011;
        *(a1 + 1116) = v22;
        ParticleLifeSpan = ParticleLifeSpan + (((HIWORD(v22) * 0.000015259) + -0.5) * ParticleLifeSpanVariation);
      }

      v23 = *(a1 + 1104);
      v24 = v36;
      if (v23 < v12)
      {
        v25 = vmulq_f32(v35, v35);
        *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
        *v25.f32 = vrsqrte_f32(v26);
        *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
        v27 = vmulq_n_f32(v35, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
        v24.i32[3] = 0;
        v27.i32[3] = 0;
        v28 = a3 - *(a1 + 72);
        v29 = (v15 + 16 * v23);
        v30 = (v14 + 16 * v23);
        v31 = (v16 + 4 * v23);
        v32 = (v17 + 4 * v23);
        v33 = (v18 + 4 * v23);
        v34 = v12 - v23;
        do
        {
          *v29 = v24;
          *v30 = v27;
          if (v16)
          {
            *v31 = 1.0 / ParticleLifeSpan;
          }

          *v32 = ParticleLifeSpan;
          if (v18)
          {
            *v33 = v28;
            v28 = v28 + a4;
          }

          ++v29;
          ++v30;
          ++v31;
          ++v32;
          ++v33;
          --v34;
        }

        while (v34);
      }

      *(a1 + 1104) = v12;
    }
  }
}

void _C3DRendererElementStoreCFFinalize(void *a1)
{
  v2 = a1[2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __C3DRendererElementStoreApplyForAllRendererElements_block_invoke;
  v6[3] = &__block_descriptor_tmp_11_1;
  v6[4] = __FinalizeRendererElement;
  v6[5] = a1;
  C3DSpanAllocatorEnumerate(v2, v6);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
    a1[2] = 0;
  }
}

uint64_t __C3DRendererElementStoreGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererElementStoreGetTypeID_typeID = result;
  return result;
}

void *C3DRendererElementStoreCreate()
{
  if (C3DRendererElementStoreGetTypeID_onceToken != -1)
  {
    C3DRendererElementStoreCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererElementStoreGetTypeID_typeID, 24);
  Instance[3] = C3DIndexStoreCreateWithCapacity(0x7FFFFFFFLL);
  Instance[4] = C3DIndexStoreCreateWithCapacity(0x7FFFFFFFLL);
  Instance[2] = C3DSpanAllocatorCreate(80, 4096);
  return Instance;
}

void C3DRendererElementStoreSyncRendererElement(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if ((*(a2 + 72) & 0x20) != 0)
    {
      if ((a3 & 4) != 0)
      {
        C3DIndexStoreRemoveIndexForKey(*(a1 + 24), *(a2 + 64));
      }

      if (a3)
      {
        C3DIndexStoreRemoveIndexForKey(*(a1 + 32), *(a2 + 32));
      }
    }

    _C3DRendererElementSync(a2, a3);
    if ((a3 & 4) != 0)
    {
      C3DIndexStoreAddIndexForKey(*(a1 + 24), *(a2 + 64));
    }

    if (a3)
    {
      C3DIndexStoreAddIndexForKey(*(a1 + 32), *(a2 + 32));
    }

    *(a2 + 72) |= 0x20u;
  }
}

void __C3DRendererElementStoreDeallocateSpan(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __C3DRendererElementStoreDeallocateSpan_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  URL = C3DSceneSourceGetURL(a3);
  if (URL)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = ____C3DRendererElementStoreDeallocateSpan_block_invoke;
    v18[3] = &__block_descriptor_tmp_5_5;
    v19 = a2;
    v20 = v6;
    C3DSceneEnumerateEngineContexts(URL, v18);
  }

  ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), a2, 0);
  if (v6)
  {
    v17 = ElementInSpanAtIndex;
    do
    {
      __FinalizeRendererElement(v17, a1);
      v17 += 80;
      --v6;
    }

    while (v6);
  }

  C3DSpanAllocatorDeallocateSpan(*(a1 + 16), a2);
}

unint64_t C3DRendererElementStoreAllocateSpanForNode(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a4 & 4;
  if (!a3 && (a4 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if ((a4 & 4) == 0)
    {
      if (*(a3 + 228))
      {
        v9 = scn_default_log(a1, a2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          C3DRendererElementStoreAllocateSpanForNode_cold_1(v9, a2, v10, v11, v12, v13, v14, v15);
        }
      }
    }

    Light = C3DNodeGetLight(a3, a2);
    cf = C3DNodeGetGeometry(a3, v17);
    if (Light)
    {
      AreaVisualisationGeometry = C3DLightGetAreaVisualisationGeometry(Light, a2);
      v19 = 1;
      goto LABEL_13;
    }

    v19 = 0;
  }

  else
  {
    v19 = 0;
    cf = 0;
  }

  AreaVisualisationGeometry = 0;
LABEL_13:
  v20 = a4 & 2;
  if (a4)
  {
    v21 = __SpanCountForGeometryAttribute(a2, a3, cf);
  }

  else
  {
    v21 = 0;
  }

  v52 = v21;
  v50 = a4 & 2;
  v22 = v21 + (v20 >> 1) + (v8 >> 2);
  v47 = v21 + (v20 >> 1);
  if ((a4 & 8) != 0)
  {
    Geometry = C3DNodeGetGeometry(a3, a2);
    v23 = __SpanCountForGeometryAttribute(a2, a3, Geometry) + 1;
  }

  else
  {
    v23 = 0;
  }

  v25 = v23 + v22;
  v26 = v19 ^ 1;
  if ((a4 & 0x10) == 0)
  {
    v26 = 1;
  }

  v49 = AreaVisualisationGeometry;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v27 = __SpanCountForGeometryAttribute(a2, a3, AreaVisualisationGeometry);
    v25 = v23 + v22;
    v28 = v27;
  }

  v29 = (v28 + v25);
  v51 = a4 & 0x21;
  v48 = v25;
  if (v51 == 33)
  {
    v30 = __SpanCountForGeometryAttribute(a2, a3, cf);
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 + v29);
  if (!(v30 + v29))
  {
    return 0xFFFFFFFFLL;
  }

  RendererElementStore = C3DEnginePipelineGetRendererElementStore(a1, a2);
  Span = C3DSpanAllocatorAllocateSpan(*(RendererElementStore + 16), v31);
  result = 0xFFFFFFFFLL;
  if (Span == 0xFFFFFFFF)
  {
    return result;
  }

  if ((a4 & 8) != 0)
  {
    if (cf)
    {
      __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v22, cf, a3, 0);
      if (C3DNodeHasGeometryLOD(a3))
      {
        __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(a2, RendererElementStore, a3);
      }
    }

    v36 = C3DGetScene(a3, v33);
    RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v36, a3);
    if (!RegisteredCIFilterTechniqueForNode)
    {
      RegisteredCIFilterTechniqueForNode = C3DFXTechniqueGetNullTechnique(0, v37);
    }

    __InitializeRendererElementWithNode(RendererElementStore, Span, (v22 + v23 - 1), a3, 3, 0, 0, RegisteredCIFilterTechniqueForNode, 0, 0);
  }

  if (a4)
  {
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, 0, cf, a3, 0);
    if (C3DNodeHasGeometryLOD(a3))
    {
      __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(a2, RendererElementStore, a3);
    }

    v39 = CFGetTypeID(cf);
    if (v39 == C3DFloorGetTypeID(v39, v40))
    {
      Floor = C3DFXTechniqueCreateFloor(a2, a3);
      ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(RendererElementStore + 16), Span, 0);
      v43 = *(ElementInSpanAtIndex + 40);
      if (v43 != Floor)
      {
        if (v43)
        {
          CFRelease(v43);
          *(ElementInSpanAtIndex + 40) = 0;
        }

        if (Floor)
        {
          v44 = CFRetain(Floor);
        }

        else
        {
          v44 = 0;
        }

        *(ElementInSpanAtIndex + 40) = v44;
      }

      CFRelease(Floor);
      _C3DRendererElementSync(ElementInSpanAtIndex, 2);
      *(ElementInSpanAtIndex + 72) |= 0x20u;
    }
  }

  if (v50)
  {
    __InitializeRendererElementWithNode(RendererElementStore, Span, v52, a3, 1, 0, 0, 0, 0, 0);
    if (!v8)
    {
LABEL_51:
      if (!v28)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if (!v8)
  {
    goto LABEL_51;
  }

  __InitializeRendererElementWithNode(RendererElementStore, Span, v47, a3, 2, 0, 0, 0, 0, 0);
  if (v28)
  {
LABEL_52:
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v48, v49, a3, 0);
  }

LABEL_53:
  if (v51 == 33)
  {
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v29, cf, a3, 5);
    if (v52)
    {
      v45 = v52;
      do
      {
        v46 = C3DSpanAllocatorGetElementInSpanAtIndex(*(RendererElementStore + 16), Span, v29);
        *(v46 + 72) = *(v46 + 72) & 0xBFA7 | 0x4008;
        ++v29;
        --v45;
      }

      while (v45);
    }
  }

  return Span;
}

uint64_t __SpanCountForGeometryAttribute(uint64_t a1, uint64_t a2, __C3DGeometry *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    if (C3DEngineContextGetRendererContextGL(a1, v6))
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRenderLegacy(a2, a3);
    }

    else
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRender(a2, a3);
    }

    v10 = MeshToRenderLegacy;
    if (MeshToRenderLegacy)
    {
      ElementsCount = C3DMeshGetElementsCount(MeshToRenderLegacy, v9);
      if (ElementsCount >= 1)
      {
        v12 = ElementsCount;
        v13 = 0;
        v14 = 0;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(v10, v13, 0);
          if (C3DMeshElementGetPrimitiveCount(ElementAtIndex))
          {
            ++v14;
          }

          ++v13;
        }

        while (v12 != v13);
        if (v14 && C3DGeometryOpenSubdivGPUIsActive(a3, v16))
        {
          v17 = 0;
          v18 = 1;
          do
          {
            C3DGeometryOpenSubdivGetGPUContext(a3, 1, a1);
            v19 = v18;
            v17 += C3DGeometryOpenSubdivGetGPUHasPatchOfType(a3, v18++);
          }

          while (v19 < 6);
          v14 *= v17;
        }

        return v14;
      }
    }

    return 0;
  }

  return C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(a3);
}

void __InitializeRendererElementsForGeometryAttribute(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, __C3DGeometry *a5, uint64_t a6, char a7)
{
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a5))
  {
    MeshElementCountForDeformerBasedDynamicMesh = C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(a5);
    if (MeshElementCountForDeformerBasedDynamicMesh)
    {
      v14 = MeshElementCountForDeformerBasedDynamicMesh;
      v15 = a4;
      do
      {
        __InitializeRendererElementWithNode(a2, a3, v15++, a6, a7, a5, 0, 0, 0, 0);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    if (C3DEngineContextGetRendererContextGL(a1, v12))
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRenderLegacy(a6, a5);
    }

    else
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRender(a6, a5);
    }

    v18 = MeshToRenderLegacy;
    ElementsCount = C3DMeshGetElementsCount(MeshToRenderLegacy, v17);
    if (ElementsCount >= 1)
    {
      v20 = ElementsCount;
      v21 = 0;
      v22 = 0;
      v23 = a3;
      v24 = a4;
      v29 = ElementsCount;
      do
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v18, v21, 0);
        if (C3DMeshElementGetPrimitiveCount(ElementAtIndex))
        {
          if (C3DGeometryOpenSubdivGPUIsActive(a5, v26))
          {
            v27 = 1;
            do
            {
              v28 = v27;
              if (C3DGeometryOpenSubdivGetGPUHasPatchOfType(a5, v27))
              {
                a3 = a3 & 0xFFFFFFFF00000000 | v23;
                __InitializeRendererElementWithNode(a2, a3, v22 + v24, a6, a7, a5, v18, 0, v21, v27);
                ++v22;
              }

              ++v27;
            }

            while (v28 < 6);
            v20 = v29;
          }

          else
          {
            v30 = v30 & 0xFFFFFFFF00000000 | v23;
            __InitializeRendererElementWithNode(a2, v23, v22 + v24, a6, a7, a5, v18, 0, v21, 0);
            ++v22;
          }
        }

        ++v21;
      }

      while (v21 != v20);
    }
  }
}

void __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Geometry = C3DNodeGetGeometry(a3, a2);
  if (!Geometry)
  {
    v9 = scn_default_log(0, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v9, v7, v10, v11, v12, v13, v14, v15);
    }
  }

  LOD = C3DGeometryGetLOD(Geometry, v7);
  Count = CFArrayGetCount(LOD);
  v19 = Count;
  if (Count != **(a3 + 232))
  {
    v20 = scn_default_log(Count, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (v19 >= 1)
  {
    v28 = 0;
    for (i = 0; i != v19; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(LOD, i);
      v32 = C3DLODGetEntity(ValueAtIndex, v31);
      if (v32)
      {
        v33 = v32;
        v34 = __SpanCountForGeometryAttribute(a1, a3, v32);
        Span = C3DSpanAllocatorAllocateSpan(*(a2 + 16), v34);
        *(*(a3 + 232) + v28 + 12) = Span;
        v3 = v3 & 0xFFFFFFFF00000000 | Span;
        __InitializeRendererElementsForGeometryAttribute(a1, a2, v3, 0, v33, a3, 0);
      }

      else
      {
        *(*(a3 + 232) + v28 + 12) = 0xFFFFFFFFLL;
      }

      v28 += 12;
    }
  }
}

void __InitializeRendererElementWithNode(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, __C3DGeometry *a6, const void *a7, const void *a8, CFIndex a9, char a10)
{
  v15 = a3;
  v17 = a9;
  v18 = a10;
  ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), a2, a3);
  *ElementInSpanAtIndex = 0u;
  *(ElementInSpanAtIndex + 16) = 0u;
  *(ElementInSpanAtIndex + 32) = 0u;
  *(ElementInSpanAtIndex + 48) = 0u;
  *(ElementInSpanAtIndex + 64) = 0u;
  _C3DRendererElementInitialize(ElementInSpanAtIndex);
  *ElementInSpanAtIndex = (a2 << 12) + (v15 + HIWORD(a2));
  v21 = *(ElementInSpanAtIndex + 72) & 0xC7F8 | ((v18 & 7) << 11);
  *(ElementInSpanAtIndex + 8) = a4;
  *(ElementInSpanAtIndex + 72) = v21 & 0xFFF8 | a5 & 7;
  v22 = *(ElementInSpanAtIndex + 16);
  if (v22 != a6)
  {
    if (v22)
    {
      CFRelease(v22);
      *(ElementInSpanAtIndex + 16) = 0;
    }

    if (a6)
    {
      v23 = CFRetain(a6);
    }

    else
    {
      v23 = 0;
    }

    *(ElementInSpanAtIndex + 16) = v23;
  }

  v24 = *(ElementInSpanAtIndex + 24);
  if (v24 != a7)
  {
    if (v24)
    {
      CFRelease(v24);
      *(ElementInSpanAtIndex + 24) = 0;
    }

    if (a7)
    {
      v25 = CFRetain(a7);
    }

    else
    {
      v25 = 0;
    }

    *(ElementInSpanAtIndex + 24) = v25;
  }

  v26 = *(ElementInSpanAtIndex + 32);
  if (v26)
  {
    CFRelease(v26);
    *(ElementInSpanAtIndex + 32) = 0;
  }

  v27 = *(ElementInSpanAtIndex + 40);
  if (v27 != a8)
  {
    if (v27)
    {
      CFRelease(v27);
      *(ElementInSpanAtIndex + 40) = 0;
    }

    if (a8)
    {
      v28 = CFRetain(a8);
    }

    else
    {
      v28 = 0;
    }

    *(ElementInSpanAtIndex + 40) = v28;
  }

  if (!a7)
  {
    if (!a6)
    {
      goto LABEL_69;
    }

    if (C3DGeometryUsesDeformerBasedDynamicMesh(a6))
    {
      v31 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &a9);
      v32 = *(ElementInSpanAtIndex + 48);
      if (v32 != v31)
      {
        if (v32)
        {
          CFRelease(v32);
          *(ElementInSpanAtIndex + 48) = 0;
        }

        if (v31)
        {
          v33 = CFRetain(v31);
        }

        else
        {
          v33 = 0;
        }

        *(ElementInSpanAtIndex + 48) = v33;
      }

      CFRelease(v31);
    }

LABEL_47:
    MaterialsCount = C3DGeometryGetMaterialsCount(a6, v30);
    if (!MaterialsCount)
    {
      Default = C3DMaterialCreateDefault(0, v38);
      v46 = *(ElementInSpanAtIndex + 32);
      if (v46 != Default)
      {
        if (v46)
        {
          CFRelease(v46);
          *(ElementInSpanAtIndex + 32) = 0;
        }

        if (Default)
        {
          v47 = CFRetain(Default);
        }

        else
        {
          v47 = 0;
        }

        *(ElementInSpanAtIndex + 32) = v47;
      }

      if (Default)
      {
        CFRelease(Default);
      }

      goto LABEL_69;
    }

    v39 = MaterialsCount;
    v40 = a9;
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a6);
    if (OverrideMaterial)
    {
      v42 = OverrideMaterial;
      v43 = *(ElementInSpanAtIndex + 32);
      if (v43 == v42)
      {
        goto LABEL_69;
      }

      if (v43)
      {
        CFRelease(v43);
        *(ElementInSpanAtIndex + 32) = 0;
      }

      v44 = v42;
    }

    else
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a6, v40 % v39);
      v49 = *(ElementInSpanAtIndex + 32);
      if (v49 == MaterialAtIndex)
      {
        goto LABEL_69;
      }

      if (v49)
      {
        CFRelease(v49);
        *(ElementInSpanAtIndex + 32) = 0;
      }

      if (!MaterialAtIndex)
      {
        v50 = 0;
        goto LABEL_64;
      }

      v44 = MaterialAtIndex;
    }

    v50 = CFRetain(v44);
LABEL_64:
    *(ElementInSpanAtIndex + 32) = v50;
    goto LABEL_69;
  }

  if (a6)
  {
    EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a6, v20);
  }

  else
  {
    EffectiveDataKindForRendering = 1;
  }

  ElementAtIndex = C3DMeshGetElementAtIndex(a7, v17, EffectiveDataKindForRendering);
  v35 = *(ElementInSpanAtIndex + 48);
  if (v35 != ElementAtIndex)
  {
    if (v35)
    {
      CFRelease(v35);
      *(ElementInSpanAtIndex + 48) = 0;
    }

    if (ElementAtIndex)
    {
      v36 = CFRetain(ElementAtIndex);
    }

    else
    {
      v36 = 0;
    }

    *(ElementInSpanAtIndex + 48) = v36;
  }

  if (a6)
  {
    goto LABEL_47;
  }

LABEL_69:
  C3DRendererElementStoreSyncRendererElement(a1, ElementInSpanAtIndex, 0xFFFFFFFF);
}

void __FinalizeRendererElement(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 0x20) != 0)
  {
    C3DIndexStoreRemoveIndexForKey(*(a2 + 24), *(a1 + 64));
    C3DIndexStoreRemoveIndexForKey(*(a2 + 32), *(a1 + 32));
  }

  *(a1 + 8) = 0;

  _C3DRendererElementFinalize(a1, a2);
}

void C3DRendererElementStoreDeallocateSpanForNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  RendererElementStore = C3DEnginePipelineGetRendererElementStore(a1, a2);
  if (!RendererElementStore)
  {
    v13 = scn_default_log(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if (*(a2 + 228))
  {
    __C3DRendererElementStoreDeallocateSpan(RendererElementStore, *(a2 + 224), a1);
    *(a2 + 224) = 0xFFFFFFFFLL;
  }

  if (C3DNodeHasGeometryLOD(a2))
  {
    Geometry = C3DNodeGetGeometry(a2, v21);
    if (Geometry)
    {
      LOD = C3DGeometryGetLOD(Geometry, v23);
      Count = CFArrayGetCount(LOD);
      v27 = Count;
      if (Count != **(a2 + 232))
      {
        v28 = scn_default_log(Count, v26);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          C3DRendererElementStoreDeallocateSpanForNode_cold_3(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      if (v27 >= 1)
      {
        v36 = 0;
        v37 = *(a2 + 232);
        do
        {
          if (*(v37 + v36 + 16))
          {
            __C3DRendererElementStoreDeallocateSpan(RendererElementStore, *(v37 + v36 + 12), a1);
            v37 = *(a2 + 232);
          }

          *(v37 + v36 + 12) = 0xFFFFFFFFLL;
          v36 += 12;
          --v27;
        }

        while (v27);
      }
    }
  }
}

void C3DRendererElementStoreClear(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  C3DSpanAllocatorFree(a1[2]);
  C3DIndexStoreRemoveAllIndexes(a1[3], v11);
  C3DIndexStoreRemoveAllIndexes(a1[4], v12);
}

uint64_t C3DRendererElementStoreGetElementCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return C3DSpanAllocatorGetCount(*(a1 + 16));
}

uint64_t C3DRendererElementStoreGetCapacity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return C3DSpanAllocatorGetCapacity(*(a1 + 16));
}

uint64_t C3DRendererElementStoreGetElement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), v2, 0);
}

uint64_t C3DRendererElementStoreGetElementInSpanAtIndex(_BOOL8 a1, unint64_t a2, int64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a2);
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v6 <= a3)
  {
    v14 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreGetElementInSpanAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return C3DSpanAllocatorGetElementInSpanAtIndex(*(v5 + 16), v4, a3);
}

uint64_t C3DRendererElementStoreApplyForAllRendererElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __C3DRendererElementStoreApplyForAllRendererElements_block_invoke;
  v5[3] = &__block_descriptor_tmp_11_1;
  v5[4] = a2;
  v5[5] = a3;
  return C3DSpanAllocatorEnumerate(v3, v5);
}

__C3DMesh *_C3DNodeGetMeshToRenderLegacy(uint64_t a1, __C3DGeometry *a2)
{
  if (C3DNodeGetGeometry(a1, a2) == a2)
  {

    return C3DNodeGetPresentationMeshLegacy(a1, v4);
  }

  else
  {

    return C3DGeometryGetRenderingMesh(a2, v4);
  }
}

__C3DMesh *_C3DNodeGetMeshToRender(uint64_t a1, __C3DGeometry *a2)
{
  if (C3DNodeGetGeometry(a1, a2) == a2)
  {

    return C3DNodeGetPresentationMesh(a1, v4);
  }

  else
  {

    return C3DGeometryGetRenderingMesh(a2, v4);
  }
}

void _C3DIndexStoreCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[8];

  free(v5);
}

CFStringRef _C3DIndexStoreCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DIndexStore>");
}

CFStringRef _C3DIndexStoreCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DIndexStore>");
}

uint64_t C3DIndexStoreGetIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return *Value;
  }

  else
  {
    return -1;
  }
}

uint64_t C3DIndexStoreAddIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v14 = Value;
    result = *Value;
  }

  else
  {
    v14 = C3DAllocatorNew(*(a1 + 48), v13);
    CFDictionaryAddValue(*(a1 + 16), key, v14);
    *(v14 + 1) = 0;
    result = _getNextFreeIndex(a1);
    *v14 = result;
    ++*(a1 + 72);
  }

  ++*(v14 + 1);
  return result;
}

uint64_t _getNextFreeIndex(uint64_t a1)
{
  FirstIndex = C3DIndexSetGetFirstIndex(*(a1 + 24));
  if (FirstIndex == -1)
  {
    v5 = scn_default_log(-1, v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _getNextFreeIndex_cold_1(v5);
    }
  }

  else
  {
    C3DIndexSetRemoveIndex(*(a1 + 24), FirstIndex);
    v4 = *(a1 + 32);
    if (v4 <= FirstIndex)
    {
      v4 = FirstIndex;
    }

    *(a1 + 32) = v4;
    *(a1 + 56) = 0;
  }

  return FirstIndex;
}

void C3DIndexStoreRemoveIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    v14 = Value[1] - 1;
    Value[1] = v14;
    if (!v14)
    {
      v15 = *Value;
      CFDictionaryRemoveValue(*(a1 + 16), key);
      C3DAllocatorDelete(*(a1 + 48), v13, v16);
      *(a1 + 56) = 0;
      C3DIndexSetAddIndex(*(a1 + 24), v15, v17);
      if (*(a1 + 32) == v15)
      {
        LastRange = C3DIndexSetGetLastRange(*(a1 + 24));
        if (LastRange <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = LastRange;
        }

        *(a1 + 32) = v19 - 1;
      }

      ++*(a1 + 72);
    }
  }
}

CFIndex C3DIndexStoreGetCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return CFDictionaryGetCount(*(a1 + 16));
}

void C3DIndexStoreRemoveAllIndexes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  C3DIndexSetRemoveAllIndexes(*(a1 + 24));
  C3DIndexSetAddIndexesInRange(*(a1 + 24), 0, *(a1 + 40), v11);
  CFDictionaryRemoveAllValues(*(a1 + 16));
}

uint64_t C3DIndexStoreGetOrderedIndexForKey(uint64_t a1, void *key)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 56) & 1) == 0)
  {
    Count = CFDictionaryGetCount(*(a1 + 16));
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
      *(a1 + 64) = 0;
    }

    if (Count >= 1)
    {
      v6 = *(a1 + 32);
      *(a1 + 64) = malloc_type_malloc(8 * v6 + 8, 0x100004000313F17uLL);
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 16), v7, 0);
      qsort(v7, Count, 8uLL, _sortKeys);
      v8 = 0;
      while (1)
      {
        Value = CFDictionaryGetValue(*(a1 + 16), v7[v8]);
        if (!Value)
        {
          break;
        }

        v11 = *Value;
        if (*Value < 0 || v11 > v6)
        {
          goto LABEL_11;
        }

LABEL_13:
        *(*(a1 + 64) + 8 * v11) = v8++;
        if (Count == v8)
        {
          free(v7);
          goto LABEL_15;
        }
      }

      v11 = -1;
LABEL_11:
      v12 = scn_default_log(Value, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DIndexStoreGetOrderedIndexForKey_cold_1(v15, v16, v12);
      }

      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 56) = 1;
  }

  result = C3DIndexStoreGetIndexForKey(a1, key);
  if (result != -1)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      return *(v14 + 8 * result);
    }
  }

  return result;
}

uint64_t _sortKeys(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void _C3DAllocatorCFFinalize(uint64_t a1, uint64_t a2)
{
  C3DAllocatorFree(a1, a2);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }
}

CFStringRef _C3DAllocatorCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAllocator>");
}

CFStringRef _C3DAllocatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAllocator>");
}

void C3DAllocatorFree(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAllocatorNew_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a1 + 32);
      free(*(v13 + v11));
      *(v13 + v11) = 0;
      ++v12;
      v11 += 16;
    }

    while (v12 < *(a1 + 48));
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  C3DIndexSetRemoveAllIndexes(*(a1 + 40));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

void sub_21C196B70(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Unwind_Resume(a1);
}

id _pipelineDescriptorForPipelineDesc(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v26 = 0;
    v3 = [*(a1 + 120) newFunctionWithName:*(a1 + 312) constantValues:v2 error:&v26];
    if (!v3)
    {
      v13 = scn_default_log(0, v4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_2();
      }

      return 0;
    }

    v5 = v3;
    v6 = [*(a1 + 120) newFunctionWithName:*(a1 + 320) constantValues:*(a1 + 296) error:&v26];
    if (!v6)
    {
      v8 = scn_default_log(0, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_1();
      }

LABEL_35:

      return 0;
    }
  }

  else
  {
    v9 = [*(a1 + 120) newFunctionWithName:*(a1 + 312)];
    if (!v9)
    {
      v14 = scn_default_log(0, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_4();
      }

      return 0;
    }

    v5 = v9;
    if (!*(a1 + 320))
    {
      v12 = 0;
      goto LABEL_15;
    }

    v6 = [*(a1 + 120) newFunctionWithName:?];
    if (!v6)
    {
      v23 = scn_default_log(0, v11);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_3();
      }

      goto LABEL_35;
    }
  }

  v12 = v6;
LABEL_15:
  v15 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v15 setVertexFunction:v5];

  [v15 setFragmentFunction:v12];
  [v15 setFragmentLinkedFunctions:*(a1 + 336)];
  [v15 setVertexLinkedFunctions:*(a1 + 328)];
  for (i = 0; i != 8; ++i)
  {
    [objc_msgSend(objc_msgSend(v15 "colorAttachments")];
  }

  if (*(a1 + 355) == 1)
  {
    for (j = 0; j != 8; ++j)
    {
      [objc_msgSend(objc_msgSend(v15 "colorAttachments")];
    }
  }

  v18 = *(a1 + 216);
  if (v18)
  {
    C3DApplyBlendStatesToRenderPipelineDescriptor(v18, v15);
  }

  [v15 setVertexDescriptor:*(a1 + 304)];
  if (*(a1 + 208) <= 1u)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a1 + 208);
  }

  [v15 setRasterSampleCount:v19];
  [v15 setDepthAttachmentPixelFormat:*(a1 + 192)];
  [v15 setStencilAttachmentPixelFormat:*(a1 + 200)];
  if (*(a1 + 59) >= 2uLL)
  {
    [v15 setMaxVertexAmplificationCount:?];
  }

  v20 = *(a1 + 344);
  if (v20)
  {
    (*(v20 + 16))(v20, v15);
  }

  if (![v15 vertexFunction])
  {
    v22 = scn_default_log(0, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_INFO, "Info: Shaders without a vertex function are not allowed", v25, 2u);
    }

    return 0;
  }

  [v15 setInputPrimitiveTopology:*(a1 + 288)];
  return v15;
}

C3D::RenderPass *C3D::MainPassCustomPostProcessPass::MainPassCustomPostProcessPass(C3D::MainPassCustomPostProcessPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC82B8;
  return result;
}

double C3D::MainPassCustomPostProcessPass::setup(C3D::MainPassCustomPostProcessPass *this, uint64_t a2)
{
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(this + 2), a2);
  v12 = 0;
  *(this + 240) = (*(RenderCallbacks + 48))(*(this + 2), &v12);
  *(this + 31) = v12;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 272) = (*(RenderCallbacks + 56))(*(this + 2), this + 256);
  if (*(this + 240))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  C3D::Pass::setInputCount(this, v4);
  v5 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v5 + 8) = "COLOR";
  *(v5 + 65) = 0;
  C3D::Pass::parentColorDesc(&v10, this);
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  *(v5 + 26) = 1;
  *(v5 + 66) = *(v5 + 66) & 0xFFFC | 1;
  if (*(this + 240) == 1)
  {
    v6 = C3D::PassDescriptor::inputAtIndex((this + 32), 1);
    *(v6 + 8) = "COLOR1";
    *(v6 + 65) = 1;
    C3D::Pass::parentColorDesc(&v10, this);
    *(v6 + 16) = v10;
    *(v6 + 32) = v11;
    *(v6 + 26) = 1;
    *(v6 + 66) = *(v6 + 66) & 0xFFFC | 1;
    v7 = *(this + 31);
    if (v7)
    {
      *(v6 + 28) = v7;
    }
  }

  C3D::Pass::setOutputCount(this, 1u);
  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v8 + 8) = "COLOR";
  *(v8 + 65) = 0;
  C3D::Pass::parentColorDesc(&v10, this);
  result = *&v10;
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  *(v8 + 26) = 6;
  *(v8 + 66) &= 0xFFFCu;
  *(this + 119) = 1;
  return result;
}

uint64_t C3D::MainPassCustomPostProcessPass::compile(C3D::MainPassCustomPostProcessPass *this)
{
  v2 = (*(*this + 64))(this);
  v4 = *(this + 3);
  v3 = this + 24;
  v5 = *(v4 + 128);
  result = C3D::RenderGraphResourceManager::get(v5, v2);
  *(v3 + 32) = result;
  if (!result)
  {
    C3D::MainPassCustomPostProcessPass::compile((v3 + 256), v5, v2, v3);
  }

  return result;
}

uint64_t C3D::MainPassCustomPostProcessPass::execute(uint64_t a1)
{
  v2 = *(*(a1 + 280) + 16);
  [v2 setCurrrentPass:a1];
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(a1 + 16), v3);
  (*(RenderCallbacks + 64))(*(a1 + 16), v2);

  return [v2 setCurrrentPass:0];
}

void C3D::MainPassCustomPostProcessPassResource::~MainPassCustomPostProcessPassResource(C3D::MainPassCustomPostProcessPassResource *this)
{
  *this = &unk_282DC8328;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC8328;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3DMeshBuildRenderableData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v129 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshBuildRenderableData_cold_1();
    }
  }

  v5 = *(v3 + 112);
  if (v5)
  {
    if (*(v3 + 144))
    {
      return;
    }

    CFRelease(v5);
    *(v3 + 112) = 0;
  }

  v103 = v2;
  v6 = *(v3 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 144) = 0;
  }

  free(*(v3 + 168));
  *(v3 + 168) = 0;
  *(v3 + 160) = 0;
  free(*(v3 + 176));
  *(v3 + 176) = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  __C3DMeshDeindex(v3, &v116, &v115, &v114, &v113, &v112);
  v9 = v116;
  if (v116)
  {
    v10 = v115;
    if (!v115)
    {
      v24 = scn_default_log(v7, v8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        C3DMeshBuildRenderableData_cold_7(v3, v24, v25, v26, v27, v28, v29, v30);
      }

      v23 = v9;
      goto LABEL_83;
    }

    Count = CFArrayGetCount(v116);
    if (Count < 1)
    {
LABEL_15:
      v101 = 0;
    }

    else
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
        if (!C3DMeshSourceGetSemantic(ValueAtIndex, v15))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_15;
        }
      }

      v101 = ValueAtIndex;
    }

    v31 = CFArrayGetCount(v10);
    allocator = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v31, MEMORY[0x277CBF128]);
    v33 = Mutable;
    if (v31 < 1)
    {
LABEL_72:
      CFRelease(v10);
      v80 = CFArrayGetCount(v33);
      if (v31 != v80)
      {
        v82 = scn_default_log(v80, v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          C3DMeshBuildRenderableData_cold_5();
        }
      }

      *(v3 + 112) = v116;
      *(v3 + 144) = v33;
      v83 = v114;
      *(v3 + 160) = v113;
      v84 = v112;
      *(v3 + 168) = v83;
      *(v3 + 176) = v84;
      __BuildRenderableSourceChannelsAndSemanticInfos(v3);
      if ((v103 & 1) == 0)
      {
        __DropOriginalTopology(v3, v85);
      }

      return;
    }

    v34 = 0;
    bytesDeallocator = *MEMORY[0x277CBECF0];
    theArray = Mutable;
    v95 = v31;
LABEL_26:
    idx = v34;
    IndexInBuffer = CFArrayGetValueAtIndex(v115, v34);
    v37 = IndexInBuffer;
    if (*(IndexInBuffer + 88) != 4)
    {
      IndexInBuffer = CFRetain(IndexInBuffer);
      v53 = IndexInBuffer;
      if (IndexInBuffer)
      {
        goto LABEL_68;
      }

      goto LABEL_80;
    }

    if (!*(IndexInBuffer + 96))
    {
      goto LABEL_80;
    }

    IndicesChannelCount = C3DMeshElementGetIndicesChannelCount(IndexInBuffer);
    if (IndicesChannelCount != 1)
    {
      v88 = scn_default_log(IndicesChannelCount, v39);
      IndexInBuffer = os_log_type_enabled(v88, OS_LOG_TYPE_FAULT);
      if (IndexInBuffer)
      {
        C3DMeshBuildRenderableData_cold_2();
      }

      goto LABEL_80;
    }

    v40 = *(v37 + 80);
    Length = CFDataGetLength(*(v37 + 96));
    BytePtr = CFDataGetBytePtr(*(v37 + 96));
    v44 = *(v37 + 104);
    if (v44)
    {
      v45 = BytePtr;
      v46 = 0;
      v47 = 0;
      LOBYTE(v48) = 1;
      do
      {
        IndexInBuffer = __readIndexInBuffer(v45, v47, v40, Length);
        v49 = IndexInBuffer;
        if (IndexInBuffer <= 2)
        {
          if ((__C3DMeshElementCreateRenderablePrimitiveTypeCopy(__C3DMeshElement *,__C3DMeshSource const*)::done & 1) == 0)
          {
            __C3DMeshElementCreateRenderablePrimitiveTypeCopy(__C3DMeshElement *,__C3DMeshSource const*)::done = 1;
            v86 = scn_default_log(IndexInBuffer, v36);
            IndexInBuffer = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
            if (IndexInBuffer)
            {
              C3DMeshBuildRenderableData_cold_3(v49, v86);
            }
          }

          goto LABEL_80;
        }

        v48 = (IndexInBuffer == 3) & v48;
        v46 += (IndexInBuffer - 2);
        v47 = (v47 + 1);
      }

      while (v44 != v47);
      if (v48)
      {
        v50 = CFDataGetLength(*(v37 + 96));
        v51 = CFDataCreate(allocator, &v45[v44 * v40], v50 - v44 * v40);
        v53 = C3DMeshElementCreate(v51, v52);
        C3DMeshElementInit(v53, 0, *(v37 + 104), v51, v40);
        v54 = v51;
        goto LABEL_67;
      }

      IndexInBuffer = malloc_type_malloc(v46 * 3 * v40, 0x100004077774924uLL);
      if (!IndexInBuffer)
      {
        goto LABEL_80;
      }

      v100 = IndexInBuffer;
      v98 = v46 * 3 * v40;
      v55 = 0;
      v102 = 0;
      v56 = 0;
      v96 = v44 + 2;
      v97 = v44 + 1;
      v89 = v44 + 3;
      v94 = v3;
      v107 = v44;
      while (1)
      {
        v57 = __readIndexInBuffer(v45, v56, v40, Length);
        if (v57 >= 3)
        {
          break;
        }

LABEL_65:
        v56 = (v56 + 1);
        if (v56 == v44)
        {
          v77 = CFDataCreateWithBytesNoCopy(allocator, v100, v46 * 3 * v40, bytesDeallocator);
          v53 = C3DMeshElementCreate(v77, v78);
          C3DMeshElementInit(v53, 0, v46, v77, v40);
          v54 = v77;
LABEL_67:
          CFRelease(v54);
          v31 = v95;
          if (!v53)
          {
            goto LABEL_80;
          }

LABEL_68:
          ElementAtIndex = C3DMeshGetElementAtIndex(v3, idx, 0);
          if (ElementAtIndex)
          {
            v53[11] = ElementAtIndex[11];
            v53[12] = ElementAtIndex[12];
          }

          v33 = theArray;
          CFArrayAppendValue(theArray, v53);
          CFRelease(v53);
          v34 = idx + 1;
          if (idx + 1 == v31)
          {
            v10 = v115;
            goto LABEL_72;
          }

          goto LABEL_26;
        }
      }

      v59 = v57;
      v60 = v55 + v44;
      v61 = v60 + v57 - 1;
      if (v40 * v61 > Length)
      {
        v108 = v55;
        v62 = scn_default_log(v57, v58);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          v120 = v56;
          v121 = 1024;
          v122 = v59;
          v123 = 1024;
          v124 = v60;
          v125 = 1024;
          v126 = v61;
          v127 = 1024;
          v128 = Length / v40;
          _os_log_error_impl(&dword_21BEF7000, v62, OS_LOG_TYPE_ERROR, "Error: __C3DMeshElementCreateRenderablePrimitiveTypeCopy - polygon %u (%u vertices, indices [%u, %u]) does not fit in index buffer (%u elements)", buf, 0x20u);
        }

        v46 -= v59 - 2;
        v44 = v107;
        v55 = v108;
        goto LABEL_65;
      }

      if (v57 == 4)
      {
        v64 = __readIndexInBuffer(v45, v60, v40, Length);
        v92 = __readIndexInBuffer(v45, v55 + v97, v40, Length);
        v65 = __readIndexInBuffer(v45, v55 + v96, v40, Length);
        v66 = v55;
        v67 = v65;
        v109 = v66 + 4;
        v105 = __readIndexInBuffer(v45, v89 + v66, v40, Length);
        __writeIndexInBuffer(v100, v102, v64, v40, v98);
        __writeIndexInBuffer(v100, v102 + 1, v92, v40, v98);
        __writeIndexInBuffer(v100, v102 + 2, v67, v40, v98);
        __writeIndexInBuffer(v100, v102 + 3, v64, v40, v98);
        __writeIndexInBuffer(v100, v102 + 4, v67, v40, v98);
        v3 = v94;
        __writeIndexInBuffer(v100, v102 + 5, v105, v40, v98);
        v102 += 6;
        goto LABEL_50;
      }

      if (v57 == 3)
      {
        v63 = __readIndexInBuffer(v45, v60, v40, Length);
        v104 = __readIndexInBuffer(v45, v55 + v97, v40, Length);
        v109 = v55 + 3;
        v91 = __readIndexInBuffer(v45, v55 + v96, v40, Length);
        __writeIndexInBuffer(v100, v102, v63, v40, v98);
        __writeIndexInBuffer(v100, v102 + 1, v104, v40, v98);
        __writeIndexInBuffer(v100, v102 + 2, v91, v40, v98);
        v102 += 3;
LABEL_50:
        v55 = v109;
LABEL_64:
        v44 = v107;
        goto LABEL_65;
      }

      if (!v101)
      {
        goto LABEL_64;
      }

      v68 = malloc_type_malloc(4 * v57, 0x100004052888210uLL);
      v69 = 0;
      v110 = v55;
      do
      {
        v68[v69] = __readIndexInBuffer(v45, v107 + v55 + v69, v40, Length);
        ++v69;
      }

      while (v59 != v69);
      *buf = 0;
      v70 = C3DDelaunayTriangulationForSimplePlanarPolygon(v101, v68, v59, buf);
      v72 = v70;
      v73 = v59 - 2;
      if (*buf)
      {
        if (*buf == 3 * v73)
        {
          *v93 = v45;
          v74 = 0;
          v75 = v70;
          do
          {
            __writeIndexInBuffer(v100, v102 + v74, v75[v74], v40, v98);
            ++v74;
          }

          while (v74 < *buf);
          v102 += v74;
          v72 = v75;
          v45 = *v93;
          v3 = v94;
          goto LABEL_62;
        }

        v76 = scn_default_log(v70, v71);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          C3DMeshBuildRenderableData_cold_4(&v117, v118, v76);
        }
      }

      v46 -= v73;
      v3 = v94;
      if (!v72)
      {
LABEL_63:
        free(v68);
        v55 = v59 + v110;
        goto LABEL_64;
      }

LABEL_62:
      free(v72);
      goto LABEL_63;
    }

    v53 = C3DMeshElementCreate(BytePtr, v43);
    C3DMeshElementInit(v53, 0, 0, 0, 0);
    if (v53)
    {
      goto LABEL_68;
    }

LABEL_80:
    v87 = scn_default_log(IndexInBuffer, v36);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
    {
      C3DMeshBuildRenderableData_cold_6();
    }

    v23 = theArray;
LABEL_83:
    CFRelease(v23);
  }

  else
  {
    v16 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DMeshBuildRenderableData_cold_7(v3, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = v115;
    if (v115)
    {
      goto LABEL_83;
    }
  }
}

void __C3DMeshDeindex(__C3DMesh *a1, __CFArray **a2, __CFArray **a3, unsigned int **a4, unsigned int *a5, unsigned int **a6)
{
  v263 = *MEMORY[0x277D85DE8];
  v211 = a2;
  *a2 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v222 = a1;
  *&v238 = C3DMeshGetPositionSource(a1, 0);
  if (!v238)
  {
    v18 = scn_default_log(0, v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __C3DMeshDeindex(v222, v18, v19, v20, v21, v22, v23, v24);
    }

    return;
  }

  Count = CFArrayGetCount(*(a1 + 8));
  v218 = CFArrayGetCount(*(a1 + 12));
  v239 = Count;
  if (Count < 1)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    ChannelForSourceAtIndex = C3DMeshGetChannelForSourceAtIndex(v222, v15);
    v17 = ChannelForSourceAtIndex;
    if (v15)
    {
      break;
    }

LABEL_7:
    v15 = (v15 + 1);
    v14 = v17;
    if (v239 == v15)
    {
      goto LABEL_12;
    }
  }

  if (v14 == ChannelForSourceAtIndex)
  {
    v17 = v14;
    goto LABEL_7;
  }

  if (v218 < 1)
  {
    v17 = v14;
    goto LABEL_12;
  }

  ElementAtIndex = C3DMeshGetElementAtIndex(v222, 0, 0);
  v205 = a5;
  v206 = a6;
  v204 = a4;
  if (!C3DMeshElementGetAllChannelsDefineSameTopology(ElementAtIndex, v35))
  {
    goto LABEL_44;
  }

  v37 = a3;
  *&v36 = 134218496;
  v237 = v36;
  v38 = 1;
  do
  {
    v39 = v38;
    IndicesChannelCount = C3DMeshElementGetIndicesChannelCount(ElementAtIndex);
    if (IndicesChannelCount >= 2 && (__C3DMeshDeindex(__C3DMesh *,__CFArray **,__CFArray **,unsigned int **,unsigned int *,unsigned int **)::done & 1) == 0)
    {
      v41 = IndicesChannelCount;
      __C3DMeshDeindex(__C3DMesh *,__CFArray **,__CFArray **,unsigned int **,unsigned int *,unsigned int **)::done = 1;
      v42 = scn_default_log(IndicesChannelCount, v13);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v254[0]) = v237;
        *(v254 + 4) = ElementAtIndex;
        WORD6(v254[0]) = 2048;
        *(v254 + 14) = v222;
        WORD3(v254[1]) = 1024;
        DWORD2(v254[1]) = v41;
        _os_log_error_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_ERROR, "Warning: Mesh element %p of mesh %p has %d channels but they all define the same topology", v254, 0x1Cu);
      }
    }

    if (v218 == v39)
    {
      break;
    }

    ElementAtIndex = C3DMeshGetElementAtIndex(v222, v39, 0);
    AllChannelsDefineSameTopology = C3DMeshElementGetAllChannelsDefineSameTopology(ElementAtIndex, v43);
    v38 = v39 + 1;
  }

  while (AllChannelsDefineSameTopology);
  v17 = v14;
  v62 = v39 < v218;
  a3 = v37;
  if (v62)
  {
LABEL_44:
    v208 = a3;
    v63 = *MEMORY[0x277CBECE8];
    v64 = MEMORY[0x277CBF128];
    v65 = v239;
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v239, MEMORY[0x277CBF128]);
    v216 = v63;
    v217 = CFArrayCreateMutable(v63, v218, v64);
    v203[1] = v203;
    MEMORY[0x28223BE20](v217);
    v232 = 0;
    LODWORD(v66) = 0;
    v67 = 0;
    v207 = &v203[-8 * v65];
    v68 = v207 + 15;
    do
    {
      v69 = v222;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v222 + 8), v67);
      Accessor = C3DMeshSourceGetAccessor(ValueAtIndex, v71, v72, v73, v74, v75, v76, v77);
      v79 = C3DMeshGetChannelForSourceAtIndex(v69, v67);
      v80 = C3DSourceAccessorGetCount(Accessor);
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
      v84 = C3DSizeOfBaseType(ComponentsValueType, v83);
      if (ComponentsValueType == 15 && ComponentsCountPerValue == 3)
      {
        v87 = 4 * C3DSizeOfBaseType(15, v85);
        ComponentsCountPerValue = 4;
      }

      else
      {
        v87 = v84 * ComponentsCountPerValue;
      }

      *(v68 - 15) = ValueAtIndex;
      *(v68 - 13) = Accessor;
      *(v68 - 44) = v79;
      *(v68 - 9) = v87;
      *(v68 - 14) = ComponentsValueType;
      *(v68 - 5) = ComponentsCountPerValue;
      *(v68 - 1) = 0;
      *v68 = v80;
      *(v68 - 3) = malloc_type_malloc(v87 * v80, 0x6EF1DDA2uLL);
      if (ValueAtIndex == v238)
      {
        v66 = v80;
      }

      else
      {
        v66 = v66;
      }

      if (ValueAtIndex == v238)
      {
        v88 = v79;
      }

      else
      {
        v88 = v232;
      }

      v232 = v88;
      v67 = (v67 + 1);
      v68 += 16;
    }

    while (v239 != v67);
    v240 = 0uLL;
    *&v241 = 0;
    v210 = v66;
    v231 = malloc_type_calloc(v66, 4uLL, 0x100004052888210uLL);
    MEMORY[0x28223BE20](v231);
    v215 = v203 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    v230 = 0;
    v90 = 0;
    v245 = 0;
    v246 = 0;
    v244 = &v245;
    v214 = *MEMORY[0x277CBECF0];
    v225 = (v207 + 2);
    v233 = (v207 + 6);
    *&v91 = 134218498;
    v213 = v91;
    *&v91 = 67109632;
    v212 = v91;
    do
    {
      v92 = C3DMeshGetElementAtIndex(v222, v90, 0);
      Type = C3DMeshElementGetType(v92, v93);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(v92);
      LODWORD(v238) = C3DMeshElementGetBytesPerIndex(v92, v95);
      IndexCount = C3DMeshElementGetIndexCount(v92, v96);
      v255 = 0;
      v226 = IndexCount;
      memset(v254, 0, sizeof(v254));
      v229 = v92;
      C3DMeshElementGetFastIndexLookupInfo(v92, v98, v254);
      v220 = v90;
      v99 = &v215[40 * v90];
      v100 = v254[1];
      *v99 = v254[0];
      *(v99 + 1) = v100;
      v235 = v99;
      *(v99 + 4) = v255;
      v228 = PrimitiveCount;
      v101 = 0;
      if (PrimitiveCount < 1)
      {
        v103 = PrimitiveCount;
      }

      else
      {
        v102 = 0;
        v103 = PrimitiveCount;
        do
        {
          VertexCountForPrimitiveAtIndex = C3DMeshElementGetVertexCountForPrimitiveAtIndex(v229, v102);
          if (VertexCountForPrimitiveAtIndex >= 1)
          {
            v105 = VertexCountForPrimitiveAtIndex;
            v106 = 0;
            while (2)
            {
              v107 = v225;
              v108 = v239;
              do
              {
                v109 = C3DSourceAccessorGetCount(*(v107 - 1));
                *buf = v254[0];
                *&buf[16] = v254[1];
                v261.n128_u64[0] = v255;
                IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v102, v106, *v107);
                if (IndexUsingFastIndexLookupInfo >= v109)
                {
                  v112 = IndexUsingFastIndexLookupInfo;
                  v113 = scn_default_log(IndexUsingFastIndexLookupInfo, v111);
                  v114 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
                  if (v114)
                  {
                    v117 = *(v107 - 2);
                    Semantic = C3DMeshSourceGetSemantic(v117, v115);
                    v119 = C3DMeshSourceSemanticToSemanticString(Semantic);
                    *buf = v213;
                    *&buf[4] = v117;
                    *&buf[12] = 2112;
                    *&buf[14] = v119;
                    *&buf[22] = 1024;
                    *&buf[24] = v112;
                    _os_log_error_impl(&dword_21BEF7000, v113, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - source %p (%@) has no original data at index %u", buf, 0x1Cu);
                  }

                  v116 = scn_default_log(v114, v115);
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v212;
                    *&buf[4] = v102;
                    *&buf[8] = 1024;
                    *&buf[10] = v220;
                    *&buf[14] = 2048;
                    *&buf[16] = v229;
                    _os_log_error_impl(&dword_21BEF7000, v116, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - will discard face #%u of element at index %d (%p)", buf, 0x18u);
                  }

                  PrimitiveCount = v228;
                  if (!v101)
                  {
                    v101 = malloc_type_calloc(v228, 1uLL, 0x100004077774924uLL);
                  }

                  --v103;
                  v226 -= v105;
                  v101[v102] = 1;
                  goto LABEL_75;
                }

                v107 += 64;
                v108 = (v108 - 1);
              }

              while (v108);
              if (++v106 != v105)
              {
                continue;
              }

              break;
            }

            PrimitiveCount = v228;
          }

LABEL_75:
          ++v102;
        }

        while (v102 != PrimitiveCount);
      }

      v224 = v101;
      v120 = v238;
      v219 = v103;
      if (Type == 4)
      {
        v236 = (v103 + v226) * v238;
        v121 = malloc_type_malloc(v236, 0x100004077774924uLL);
        v123 = v121;
        v124 = v224;
        if (v224)
        {
          if (PrimitiveCount < 1)
          {
            v126 = 0;
          }

          else
          {
            v125 = 0;
            v126 = 0;
            do
            {
              v127 = *v124++;
              if ((v127 & 1) == 0)
              {
                BytePtr = CFDataGetBytePtr(v229[12]);
                v121 = memcpy(v123 + v126, &BytePtr[v125], v120);
                v126 += v120;
              }

              v125 += v120;
              --PrimitiveCount;
            }

            while (PrimitiveCount);
          }

          if (v126 == v103 * v120)
          {
            v223 = v219;
            PrimitiveCount = v228;
          }

          else
          {
            v130 = scn_default_log(v121, v122);
            v131 = os_log_type_enabled(v130, OS_LOG_TYPE_FAULT);
            v132 = v219;
            PrimitiveCount = v228;
            if (v131)
            {
              __C3DMeshDeindex(v252, &v253, v130);
            }

            v223 = v132;
          }
        }

        else
        {
          v129 = CFDataGetBytePtr(v229[12]);
          memcpy(v123, v129, v103 * v120);
          v223 = v103;
        }
      }

      else
      {
        v236 = v226 * v238;
        v123 = malloc_type_malloc(v236, 0x100004077774924uLL);
        v223 = 0;
      }

      if (PrimitiveCount < 1)
      {
        v133 = 0;
        v135 = v224;
      }

      else
      {
        v133 = 0;
        v134 = 0;
        v135 = v224;
        v234 = v123;
        do
        {
          if (!v135 || (v135[v134] & 1) == 0)
          {
            *&v238 = C3DMeshElementGetVertexCountForPrimitiveAtIndex(v229, v134);
            v227 = v133;
            if (v238 >= 1)
            {
              v136 = 0;
              *&v237 = v133 + v223;
              do
              {
                v137 = v246;
                *buf = v235;
                *&buf[8] = v134;
                *&buf[16] = v136;
                *&buf[24] = v246;
                v138 = std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__emplace_unique_key_args<__C3DMeshDeindexerKey,std::pair<__C3DMeshDeindexerKey,unsigned int>>(&v244, buf, buf);
                v140 = v139;
                v141 = v120;
                __writeIndexInBuffer(v123, (v237 + v136), *(v138 + 56), v120, v236);
                v142 = v233;
                v143 = v239;
                if (v140)
                {
                  do
                  {
                    v145 = *(v142 + 2);
                    v144 = *(v142 + 3);
                    if (v144 == v145)
                    {
                      v146 = (2 * v144);
                      *(v142 + 3) = v146;
                      v147 = *(v142 - 3);
                      v148 = malloc_type_realloc(*v142, v147 * v146, 0x7E876ECCuLL);
                      *v142 = v148;
                    }

                    else
                    {
                      v148 = *v142;
                      v147 = *(v142 - 3);
                    }

                    v149 = &v148[v147 * v145];
                    *buf = v254[0];
                    *&buf[16] = v254[1];
                    v261.n128_u64[0] = v255;
                    v150 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v134, v136, *(v142 - 32));
                    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(*(v142 - 5), v150);
                    v152 = memcpy(v149, ValuePtrAtIndex, v147);
                    if (v145 != v137)
                    {
                      v154 = scn_default_log(v152, v153);
                      if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
                      {
                        __C3DMeshDeindex(v250, &v251, v154);
                      }
                    }

                    *(v142 + 2) = v145 + 1;
                    v142 += 8;
                    v143 = (v143 - 1);
                  }

                  while (v143);
                  *buf = v254[0];
                  *&buf[16] = v254[1];
                  v261.n128_u64[0] = v255;
                  *buf = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v134, v136, v232);
                  std::vector<int>::push_back[abi:nn200100](&v240, buf);
                  if (!v231[*buf])
                  {
                    v231[*buf] = (*(&v240 + 1) - v240) >> 2;
                  }
                }

                else
                {
                  v230 = 1;
                }

                v120 = v141;
                ++v136;
                v123 = v234;
              }

              while (v136 != v238);
            }

            v133 = v238 + v227;
            v135 = v224;
          }

          ++v134;
        }

        while (v134 != v228);
      }

      free(v135);
      if (v133 != v226)
      {
        v157 = scn_default_log(v155, v156);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
        {
          __C3DMeshDeindex(v248, &v249, v157);
        }
      }

      v158 = CFDataCreateWithBytesNoCopy(v216, v123, v236, v214);
      v160 = C3DMeshElementCreate(v158, v159);
      C3DMeshElementInit(v160, Type, v219, v158, v120);
      CFArrayAppendValue(v217, v160);
      CFRelease(v160);
      CFRelease(v158);
      v90 = v220 + 1;
    }

    while (v220 + 1 != v218);
    if ((v230 & 1) == 0)
    {
      v164 = scn_default_log(v161, v162);
      v161 = os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT);
      if (v161)
      {
        LODWORD(v254[0]) = 134217984;
        *(v254 + 4) = v222;
        _os_log_impl(&dword_21BEF7000, v164, OS_LOG_TYPE_DEFAULT, "Warning: Mesh %p has multiple channels but deindexing didn't have any effect", v254, 0xCu);
      }
    }

    *buf = 0;
    v166 = Mutable;
    v165 = v210;
    if (v210)
    {
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v170 = (v207 + 6);
      *&v163 = 67109376;
      v238 = v163;
      do
      {
        v171 = v231[v169];
        if (v171)
        {
          v231[v169] = v171 - 1;
        }

        else
        {
          v172 = scn_default_log(v161, v162);
          v161 = os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
          if (v161)
          {
            *&v254[0] = __PAIR64__(*buf, v238);
            WORD4(v254[0]) = 1024;
            *(v254 + 10) = v210;
            _os_log_impl(&dword_21BEF7000, v172, OS_LOG_TYPE_DEFAULT, "Warning: Deindexing - Vertex at index %u of %u is not used by any geometry element", v254, 0xEu);
          }

          v173 = v170;
          v174 = v239;
          if ((v167 & 1) == 0)
          {
            do
            {
              v176 = *(v173 + 2);
              v175 = *(v173 + 3);
              if (v175 == v176)
              {
                v177 = (v175 + 1);
                *(v173 + 3) = v177;
                v178 = *(v173 - 3);
                v179 = malloc_type_realloc(*v173, v178 * v177, 0x1FD9F342uLL);
                *v173 = v179;
              }

              else
              {
                v179 = *v173;
                v178 = *(v173 - 3);
              }

              bzero(&v179[v178 * v176], v178);
              *(v173 + 2) = v176 + 1;
              v173 += 8;
              v174 = (v174 - 1);
            }

            while (v174);
            std::vector<int>::push_back[abi:nn200100](&v240, buf);
            v168 = ((*(&v240 + 1) - v240) >> 2) - 1;
          }

          v231[*buf] = v168;
          v167 = 1;
          v166 = Mutable;
          v165 = v210;
        }

        v169 = *buf + 1;
        *buf = v169;
      }

      while (v169 < v165);
    }

    v180 = *(&v240 + 1) - v240;
    *&v238 = (*(&v240 + 1) - v240) >> 2;
    v181 = malloc_type_malloc((*(&v240 + 1) - v240) & 0x3FFFFFFFCLL, 0x100004052888210uLL);
    memcpy(v181, v240, v180 & 0x3FFFFFFFCLL);
    v183 = (v207 + 4);
    v184 = v239;
    v185 = v216;
    do
    {
      v186 = *(v183 + 6);
      v187 = C3DMeshSourceGetSemantic(*(v183 - 4), v182);
      v188 = *(v183 - 1);
      v189 = CFDataCreate(v185, *(v183 + 2), v188 * v186);
      v190 = C3DMeshSourceCreateWithData(v187, v189, *v183, *(v183 + 1), v186, v188, 0);
      CFArrayAppendValue(v166, v190);
      CFRelease(v190);
      CFRelease(v189);
      v183 += 32;
      v184 = (v184 - 1);
    }

    while (v184);
    v191 = (v207 + 6);
    v192 = v239;
    do
    {
      v193 = *v191;
      v191 += 8;
      free(v193);
      v192 = (v192 - 1);
    }

    while (v192);
    v194 = CFArrayGetCount(v166);
    v196 = v208;
    v197 = v204;
    if (v239 != v194)
    {
      v198 = scn_default_log(v194, v195);
      if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshDeindex();
      }
    }

    v199 = CFArrayGetCount(v217);
    if (v218 != v199)
    {
      v201 = scn_default_log(v199, v200);
      if (os_log_type_enabled(v201, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshDeindex();
      }
    }

    *v211 = v166;
    *v196 = v217;
    *v197 = v181;
    v202 = v206;
    *v205 = v238;
    *v202 = v231;
    std::__tree<char>::destroy(&v244, v245);
    if (v240)
    {
      *(&v240 + 1) = v240;
      operator delete(v240);
    }
  }

  else
  {
LABEL_12:
    v25 = v222;
    ElementsCount = C3DMeshGetElementsCount(v222, v13);
    v27 = ElementsCount;
    if (ElementsCount)
    {
      v28 = 0;
      while (1)
      {
        v29 = C3DMeshGetElementAtIndex(v222, v28, 0);
        v30 = C3DMeshElementGetIndicesChannelCount(v29);
        if (v30 <= v17)
        {
          v45 = scn_default_log(v30, v31);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            __C3DMeshDeindex(v17, v29, v45);
          }

          return;
        }

        if (v30 >= 2)
        {
          break;
        }

        if (v27 == ++v28)
        {
          goto LABEL_17;
        }
      }

      v208 = a3;
      v239 = *MEMORY[0x277CBECE8];
      MutableCopy = CFArrayCreateMutable(v239, v27, MEMORY[0x277CBF128]);
      v46 = 0;
      v235 = &v254[1];
      v236 = v17;
      v234 = *MEMORY[0x277CBECF0];
      *&v238 = v27;
      *&v237 = MutableCopy;
      do
      {
        v47 = C3DMeshGetElementAtIndex(v25, v46, 0);
        if (C3DMeshElementGetIndicesChannelCount(v47) == 1)
        {
          CFArrayAppendValue(MutableCopy, v47);
        }

        else
        {
          v49 = C3DMeshElementGetType(v47, v48);
          v50 = C3DMeshElementGetPrimitiveCount(v47);
          BytesPerIndex = C3DMeshElementGetBytesPerIndex(v47, v51);
          v54 = C3DMeshElementGetIndexCount(v47, v53);
          if (v49 == 4)
          {
            v55 = BytesPerIndex * (v54 + v50);
            v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
            v57 = v50;
            v58 = CFDataGetBytePtr(v47[12]);
            memcpy(v56, v58, v50 * BytesPerIndex);
          }

          else
          {
            v55 = v54 * BytesPerIndex;
            v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
            v57 = v50;
            v50 = 0;
          }

          v244 = 0;
          v245 = &v244;
          v246 = 0x2000000000;
          v247 = 0;
          v261 = 0u;
          v262 = 0u;
          memset(buf, 0, sizeof(buf));
          C3DMeshElementGetContent(v47, v236, buf);
          v240 = *buf;
          v241 = *&buf[16];
          v242 = v261;
          v243 = v262;
          *&v254[0] = MEMORY[0x277D85DD0];
          *(&v254[0] + 1) = 0x40000000;
          *&v254[1] = ___ZL40__C3DMeshCopyDeindexedElementsForChannelP9__C3DMeshh_block_invoke;
          *(&v254[1] + 1) = &unk_278301D00;
          v259 = v50;
          v256 = v56;
          v255 = &v244;
          v257 = BytesPerIndex;
          v258 = v55;
          C3DIndicesContentEnumeratePrimitives(&v240, v254, v261);
          v59 = CFDataCreateWithBytesNoCopy(v239, v56, v55, v234);
          v61 = C3DMeshElementCreate(v59, v60);
          C3DMeshElementInit(v61, v49, v57, v59, BytesPerIndex);
          MutableCopy = v237;
          CFArrayAppendValue(v237, v61);
          CFRelease(v59);
          CFRelease(v61);
          _Block_object_dispose(&v244, 8);
          v25 = v222;
          v27 = v238;
        }

        ++v46;
      }

      while (v27 != v46);
      a3 = v208;
      if (!MutableCopy)
      {
        return;
      }

LABEL_40:
      *v211 = CFArrayCreateMutableCopy(v239, 0, *(v222 + 8));
      *a3 = MutableCopy;
    }

    else
    {
LABEL_17:
      v32 = *(v222 + 12);
      v239 = *MEMORY[0x277CBECE8];
      MutableCopy = CFArrayCreateMutableCopy(v239, 0, v32);
      if (MutableCopy)
      {
        goto LABEL_40;
      }
    }
  }
}

void __writeIndexInBuffer(unsigned __int8 *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  v6 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a4 <= a5)
  {
    switch(a4)
    {
      case 4uLL:
        *&a1[4 * a2] = a3;
        break;
      case 2uLL:
        *&a1[2 * a2] = a3;
        break;
      case 1uLL:
        a1[a2] = a3;
        break;
      default:
        v9 = scn_default_log(a1, a2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          __writeIndexInBuffer();
        }

        break;
    }
  }

  else
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 2048;
      v12 = a5 / a4;
      _os_log_error_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_ERROR, "Error: __writeIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
    }
  }
}

void ___ZL40__C3DMeshCopyDeindexedElementsForChannelP9__C3DMeshh_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      __writeIndexInBuffer(*(a1 + 40), (i + *(a1 + 64) + *(*(*(a1 + 32) + 8) + 24)), *(a3 + 4 * i), *(a1 + 48), *(a1 + 56));
    }
  }

  *(*(*(a1 + 32) + 8) + 24) += a4;
}

uint64_t std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__emplace_unique_key_args<__C3DMeshDeindexerKey,std::pair<__C3DMeshDeindexerKey,unsigned int>>(uint64_t **a1, __int128 **a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__find_equal<__C3DMeshDeindexerKey>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__find_equal<__C3DMeshDeindexerKey>(uint64_t a1, __int128 ***a2, __int128 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!__C3DMeshDeindexerKeyComparator::operator()(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!__C3DMeshDeindexerKeyComparator::operator()(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL __C3DMeshDeindexerKeyComparator::operator()(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v5 = *(*a2 + 37);
  if (v5 == *(*a3 + 37) || (v6 = scn_default_log(a1, a2), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  __C3DMeshDeindexerKeyComparator::operator()();
  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v5 - 1;
  do
  {
    v9 = a2[1];
    v10 = *(*a2 + 4);
    v11 = (*a2)[1];
    v19 = **a2;
    v20 = v11;
    v21 = v10;
    IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v19, v9, a2[2], v7);
    v13 = a3[1];
    v14 = *(*a3 + 4);
    v15 = (*a3)[1];
    v19 = **a3;
    v20 = v15;
    v21 = v14;
    v16 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v19, v13, a3[2], v7);
    result = IndexUsingFastIndexLookupInfo < v16;
    if (IndexUsingFastIndexLookupInfo < v16)
    {
      break;
    }

    if (IndexUsingFastIndexLookupInfo > v16)
    {
      break;
    }
  }

  while (v8 != v7++);
  return result;
}

uint64_t __readIndexInBuffer(const unsigned __int8 *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *&a1[4 * a2];
      case 2uLL:
        return *&a1[2 * a2];
      case 1uLL:
        return a1[a2];
      default:
        v9 = scn_default_log(a1, a2);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          __readIndexInBuffer();
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = scn_default_log(a1, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

C3D::ConvertCubeComputePass *C3D::ConvertCubeComputePass::ConvertCubeComputePass(C3D::ConvertCubeComputePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v6 = &unk_282DC8348;
  *(v6 + 108) = *&a4->var0;
  snprintf((v6 + 120), 0x40uLL, "ConvertCubeComputePass-%sTo%s", off_278301D20[a4->var0], off_278301D20[a4->var1]);
  return this;
}

void C3D::ConvertCubeComputePass::setup(C3D::ConvertCubeComputePass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

void C3D::ConvertCubeComputePass::compile(C3D::ConvertCubeComputePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  v5 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4);
  *(this + 14) = v5;
  if (!v5)
  {
    operator new();
  }
}

unsigned __int16 *C3D::ConvertCubeComputePass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 112) + 16);
  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v6 = C3D::Pass::outputTextureAtIndex(a1, 0);
  IsArray = SCNMTLTextureTypeIsArray([v5 textureType]);
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType([v5 textureType]);
  v8 = [v5 pixelFormat];
  if (*(a1 + 108))
  {
    v9 = 1;
  }

  else
  {
    v9 = 6;
  }

  v31 = v9;
  v32 = v8;
  v30 = SCNMTLTextureTypeIsArray([v6 textureType]);
  v28 = SCNMTLTextureTypeGetArrayElementType([v6 textureType]);
  v10 = [v6 pixelFormat];
  v11 = 0;
  if (*(a1 + 109))
  {
    v12 = 1;
  }

  else
  {
    v12 = 6;
  }

  v27 = v12;
  if (!*(a1 + 109))
  {
    v11 = !C3DEngineContextHasFeatures(*(a1 + 16), 512);
  }

  v13 = [v5 mipmapLevelCount];
  v14 = [v6 mipmapLevelCount];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v35 = v15;
  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
  if (v3->_computePipelineState != v16)
  {
    v3->_computePipelineState = v16;
    [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v16];
  }

  result = C3D::Pass::descriptor(a1);
  if (v35)
  {
    v18 = 0;
    v34 = result[2];
    v19 = &v3->_textures[1];
    v29 = v5;
    while (v18 != 0 || IsArray)
    {
      v20 = [v5 newTextureViewWithPixelFormat:v32 textureType:ArrayElementType levels:v18 slices:1, 0, v31];
      if (v3->_textures[0] != v20)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v11)
      {
        v21 = v11;
        v22 = IsArray;
        v23 = 0;
        v24 = v34;
        do
        {
          v25 = [v6 newTextureViewWithPixelFormat:v10 textureType:2 levels:v18 slices:1, v24, 1];
          if (v19[v23] != v25)
          {
            v19[v23] = v25;
            v3->_texturesToBind[0] |= (2 << v23);
          }

          ++v23;
          ++v24;
        }

        while (v23 != 6);
        v26 = v6;
        IsArray = v22;
        v11 = v21;
        v5 = v29;
        goto LABEL_32;
      }

      if (v18 != 0 || v30)
      {
        v26 = [v6 newTextureViewWithPixelFormat:v10 textureType:v28 levels:v18 slices:1, v34, v27];
        if (*v19 == v26)
        {
          goto LABEL_32;
        }

LABEL_31:
        v3->_textures[1] = v26;
        v3->_texturesToBind[0] |= 2uLL;
        goto LABEL_32;
      }

      v26 = v6;
      if (*v19 != v6)
      {
        goto LABEL_31;
      }

LABEL_32:
      result = SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v3, v26);
      if (++v18 == v35)
      {
        return result;
      }
    }

    v20 = v5;
    if (v3->_textures[0] == v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    v3->_textures[0] = v20;
    v3->_texturesToBind[0] |= 1uLL;
    goto LABEL_21;
  }

  return result;
}

void C3D::ConvertCubeComputePass::Resource::~Resource(C3D::ConvertCubeComputePass::Resource *this)
{
  *this = &unk_282DC83B8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC83B8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

double __C3DAnimatableParamControllerGetTypeID_block_invoke()
{
  C3DAnimatableParamControllerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimatableParamControllerContextClassAnimatable;
  xmmword_2817442E0 = kC3DC3DAnimatableParamControllerContextClassAnimatable;
  return result;
}

uint64_t C3DAnimatableParamControllerCreate(const void *a1, __int128 *a2)
{
  if (C3DAnimatableParamControllerGetTypeID_onceToken != -1)
  {
    C3DAnimatableParamControllerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimatableParamControllerGetTypeID_typeID, 48);
  v5 = Instance;
  if (Instance)
  {
    v6 = *(Instance + 16);
    if (v6 != a1)
    {
      if (v6)
      {
        CFRelease(v6);
        *(v5 + 16) = 0;
      }

      if (a1)
      {
        v7 = CFRetain(a1);
      }

      else
      {
        v7 = 0;
      }

      *(v5 + 16) = v7;
    }

    v8 = *a2;
    *(v5 + 40) = *(a2 + 2);
    *(v5 + 24) = v8;
  }

  return v5;
}

uint64_t C3DAnimatableParamControllerGetParamDescription(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(v3 + 48);
  if (!v19)
  {
    *(v3 + 48) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    *(v3 + 56) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v19 = *(v3 + 48);
  }

  Value = CFDictionaryGetValue(v19, key);
  if (Value)
  {
    return *Value;
  }

  v41 = 0;
  cf = 0;
  v21 = (*(v3 + 24))(*(v3 + 16), key, &cf, &v41);
  if (v21)
  {
    v22 = v21;
    Value = malloc_type_calloc(0x18uLL, 1uLL, 0x747407C4uLL);
    Count = CFDictionaryGetCount(*(v3 + 56));
    v25 = Count;
    if (Count >= 64)
    {
      v26 = scn_default_log(Count, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        C3DAnimatableParamControllerGetParamDescription_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    v34 = C3DModelTargetCreate(v3, v3 + v25, v22, 0);
    *Value = v34;
    v35 = cf;
    if (!cf)
    {
      v35 = *(v3 + 16);
      if (v35)
      {
        v35 = CFRetain(v35);
      }
    }

    Value[1] = v35;
    v36 = v41;
    if (!v41)
    {
      v36 = CFRetain(key);
    }

    Value[2] = v36;
    CFDictionaryAddValue(*(v3 + 48), key, Value);
    v37 = *(v3 + 56);
    TargetAddress = C3DModelTargetGetTargetAddress(v34, v38);
    CFDictionaryAddValue(v37, TargetAddress, key);
    return *Value;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return 0;
}

void _C3DAnimatableParamControllerCFFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _releaseItems, 0);
    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
      a1[6] = 0;
    }
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }
}

CFStringRef _C3DAnimatableParamControllerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimatableParamController>");
}

CFStringRef _C3DAnimatableParamControllerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimatableParamController>");
}

void _releaseItems(int a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

uint64_t _C3DAnimatableParamControllerSetValue(uint64_t a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (!Value)
  {
    v7 = scn_default_log(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimatableParamControllerSetValue_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = CFDictionaryGetValue(*(a1 + 48), Value);
  return (*(a1 + 40))(v15[1], v15[2], a3, *(*v15 + 32));
}

uint64_t _C3DAnimatableParamControllerGetValue(uint64_t a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (!Value)
  {
    v7 = scn_default_log(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimatableParamControllerSetValue_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v16 = CFDictionaryGetValue(*(a1 + 48), Value);
  if (!v16)
  {
    v17 = scn_default_log(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageItemRelease_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return (*(a1 + 32))(v16[1], v16[2], a3, *(*v16 + 32));
}

void SCNCActionRepeat::SCNCActionRepeat(SCNCActionRepeat *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC8408;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionRepeat::~SCNCActionRepeat(SCNCActionRepeat *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionRepeat::setBaseSpeed(SCNCActionRepeat *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f64[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

SCNCAction *SCNCActionRepeat::setSpeed(SCNCActionRepeat *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f64[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

void *SCNCActionRepeat::cpp_updateWithTargetForTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  if (C3DIsRunningInEditor() && vabdd_f64(a3, this->var22) > 3600.0)
  {
    this->var22 = a3;
  }

  if (C3DIsRunningInEditor())
  {
    var22 = this->var22;
    if (var22 > a3)
    {
      v7 = this->var19->var1 / this->var19->var18;
      if (v7 == 0.0)
      {
        v10 = 0;
      }

      else
      {
        var5 = this->var5;
        v9 = ((var22 - var5) / v7);
        v10 = ((a3 - var5) / v7);
        while (v9 > v10)
        {
          --v9;
          if (this->var23 || v9 < this->var21 - 1)
          {
            var19 = this->var19;
            var19->var10 = 0;
            SCNCAction::updateWithTargetForTime(var19, a2, var19->var5);
            SCNCAction::willStartWithTargetAtTime(this->var19, a2, this->var19->var5 - v7);
          }
        }
      }

      this->var20 = v10;
    }
  }

  v12 = this->var19;
  if (!v12->var4)
  {
    goto LABEL_16;
  }

  for (result = (*(v12->var0 + 7))(v12, a2, a3); ; result = SCNCAction::updateWithTargetForTime(v12, a2, a3))
  {
    v14 = this->var19;
    if (v14->var4)
    {
      if (!v14->var10)
      {
        break;
      }
    }

    else
    {
      result = [v14->var3 finished];
      if (!result)
      {
        break;
      }
    }

    var21 = this->var21;
    v16 = this->var20 + 1;
    this->var20 = v16;
    if (v16 >= var21 && !this->var23)
    {
      break;
    }

    v17 = this->var19;
    v17->var10 = 0;
    v18 = (*(v17->var0 + 2))(v17);
    if (v18 >= a3)
    {
      v18 = a3;
    }

    SCNCAction::willStartWithTargetAtTime(this->var19, a2, v18);
    v12 = this->var19;
LABEL_16:
    ;
  }

  if (!this->var23 && this->var20 >= this->var21)
  {
    v19.n128_f64[0] = (*(this->var19->var0 + 2))(this->var19);
    result = SCNCAction::didFinishWithTargetAtTime(this, a2, v19);
  }

  this->var22 = a3;
  return result;
}

uint64_t SCNCActionRepeat::cpp_wasAddedToTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasAddedToTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_wasRemovedFromTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasRemovedFromTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_willStartWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  this->var20 = 0;
  SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::willStartWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_wasPausedWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasPausedWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_willResumeWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::willResumeWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_timeJumpWithTarget(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::timeJumpWithTarget(var19, a2, a3);
}

SCNCAction *SCNCActionRepeat::cpp_reset(SCNCActionRepeat *this)
{
  result = SCNCAction::cpp_reset(this);
  this->var20 = 0;
  this->var22 = 0.0;
  return result;
}

CFStringRef _C3DStackAllocatorCFCopyFormatDescription(const void *a1, const __CFDictionary *a2)
{
  v2 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v2, 0, @"<C3DStackAllocator>");
}

CFStringRef _C3DStackAllocatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DStackAllocator>");
}

void *C3DStackAllocatorAllocateAligned(uint64_t a1, size_t a2, uint64_t a3, int a4)
{
  if (!*(a1 + 576))
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DStackAllocatorAllocateAligned_cold_1(v8);
    }
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = *(v9 + 12);
    v11 = *v9 + v10;
    v12 = ((a3 - 1 + v11) & -a3);
    if (v12 + a2 - v11 <= (*(v9 + 8) - v10))
    {
      break;
    }

    v9 = *(v9 + 16);
    if (!v9)
    {
      if (*(a1 + 16))
      {
        operator new();
      }

      C3DStackAllocatorAllocateAligned_cold_2();
    }
  }

  *(v9 + 12) = a2 + v12 - *v9;
  if (a4 == 2)
  {
    memset(v12, 255, a2);
  }

  else if (a4 == 1)
  {
    bzero(v12, a2);
  }

  return v12;
}

void *C3DStackAllocatorResizeLast(uint64_t a1, size_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = v2 + a2 - *v3;
  if (*(v3 + 8) > v4)
  {
    *(v3 + 12) = v4;
    return v2;
  }

  v5 = *v3 + *(v3 + 12) - v2;
  Aligned = C3DStackAllocatorAllocateAligned(a1, a2, 32, 0);
  if (v2)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return Aligned;
  }

  return memcpy(Aligned, v2, v5);
}

void *C3DStackAllocatorReallocate(uint64_t a1, unint64_t a2, size_t a3, size_t a4, uint64_t a5)
{
  if (*(a1 + 48) == a2 && ((a5 - 1) & a2) == 0)
  {

    return C3DStackAllocatorResizeLast(a1, a4);
  }

  else
  {
    result = C3DStackAllocatorAllocateAligned(a1, a4, a5, 0);
    if (a2 && a3)
    {

      return memcpy(result, a2, a3);
    }
  }

  return result;
}

void C3DStackAllocatorPushFrame(uint64_t result, uint64_t a2)
{
  v2 = *(result + 576);
  if (v2 == 31)
  {
    v3 = scn_default_log(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      C3DStackAllocatorPushFrame_cold_1(v3);
    }
  }

  else
  {
    *(result + 576) = v2 + 1;
    v4 = *(result + 16);
    v5 = *(v4 + 12);
    v6 = result + 16 * v2;
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
  }
}

uint64_t C3DStackAllocatorPopFrame(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 576))
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DStackAllocatorPopFrame_cold_1(v3);
    }
  }

  v4 = *(a1 + 576) - 1;
  v5 = a1 + 16 * v4;
  v8 = *(v5 + 64);
  v6 = v5 + 64;
  v7 = v8;
  *(a1 + 576) = v4;
  v9 = *(v6 + 8);
  *(v8 + 12) = v9;
  v10 = a1 + 24;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == v10;
  }

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v7 + 16);
  }

  result = __destroyChuncks(a1, v12);
  if (v7 == v10 && *(a1 + 56) > v12[1])
  {
    MEMORY[0x21CF08CF0](*MEMORY[0x277D85F48], *v12);
    result = __allocateChunk(v12, *(a1 + 56));
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  return result;
}

uint64_t __destroyChuncks(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 == a2)
  {
    v7 = *(result + 16);
  }

  else
  {
    v5 = result + 24;
    v6 = MEMORY[0x277D85F48];
    do
    {
      v7 = *(v3 + 16);
      result = MEMORY[0x21CF08CF0](*v6, *v3, *(v3 + 8));
      if (v3 != v5)
      {
        result = MEMORY[0x21CF07610](v3, 0x1030C40D5FA72FALL);
      }

      v3 = v7;
    }

    while (v7 != a2);
  }

  *(v2 + 16) = v7;
  return result;
}

void C3DCullingContextForcePushGeometryRenderableElementsToVisible(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = &a1[a2 + 307];
  v4 = *(a3 + 224);
  v5 = *(a3 + 226);
  v6 = *(a3 + 220);
  v7 = *(a3 + 228) + (v6 << 17 >> 31);
  if ((v6 & 0x8000) != 0)
  {
    IsWarmUp = C3DEngineContextIsWarmUp(a1[296].i64[0]);
    if (IsWarmUp)
    {
      if ((v3->i32[2] + v7) > v3->i32[3])
      {
        v12 = scn_default_log(IsWarmUp, v11);
        IsWarmUp = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
        if (IsWarmUp)
        {
          C3D::ScenePass::_shouldPushNodeToVisible(v12, v11, v13, v14, v15, v16, v17, v18);
        }
      }

      v19 = v3->u32[2];
      if (v7)
      {
        v20 = 0;
        v21 = (v3->i64[0] + 4 * v19);
        do
        {
          *v21 = v4;
          v21[1] = v5 + v20++;
          v21 += 2;
        }

        while (v7 != v20);
      }

      v22 = v19 + v7;
      v3->i32[2] = v22;
      v23 = *(a3 + 232);
      v24 = *v23;
      if (*v23)
      {
        v25 = 0;
        do
        {
          v26 = *(a3 + 232) + 12 * v25;
          v27 = *(v26 + 12);
          v28 = *(v26 + 14);
          v29 = *(v26 + 16);
          if ((v22 + v29) > v3->i32[3])
          {
            v30 = scn_default_log(IsWarmUp, v11);
            IsWarmUp = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);
            if (IsWarmUp)
            {
              C3DCullingContextForcePushGeometryRenderableElementsToVisible_cold_2(&buf, (buf.i64 + 4), v30);
            }
          }

          v31 = v3->u32[2];
          if (v29)
          {
            v32 = 0;
            v33 = (v3->i64[0] + 4 * v31);
            do
            {
              *v33 = v27;
              v33[1] = v28 + v32++;
              v33 += 2;
            }

            while (v29 != v32);
          }

          v22 = v31 + v29;
          v3->i32[2] = v22;
          ++v25;
        }

        while (v25 != v24);
      }

      return;
    }

    v34 = *(a3 + 232);
    v35 = *v34;
    if (*(v34 + 2))
    {
      buf = 0uLL;
      C3DGetBoundingSphere(a3, 0, &buf);
      v65 = 0uLL;
      WorldMatrix = C3DNodeGetWorldMatrix(a3, v36);
      C3DSphereXFormMatrix4x4(&buf, WorldMatrix, &v65);
      v64 = vaddq_f32(vaddq_f32(v65, vmulq_laneq_f32(a1[299], v65, 3)), vmulq_laneq_f32(a1[300], v65, 3));
      v63.i32[2] = 0;
      v63.i64[0] = 0;
      v62.i32[2] = 0;
      v62.i64[0] = 0;
      v61 = v65;
      C3DMatrix4x4Project(a1 + 303, &v61, &v63);
      C3DMatrix4x4Project(a1 + 303, &v64, &v62);
      v38 = vsubq_f32(v63, v62);
      v39 = vmulq_f32(v38, v38);
      v40 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32)) * 0.5;
      Viewport = C3DEngineContextGetViewport(a1[296].i64[0]);
      LODWORD(v41) = 0;
      Viewport.n128_u32[0] = Viewport.n128_u32[3];
      if (Viewport.n128_f32[2] > Viewport.n128_f32[3])
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[2];
      }

      v43 = Viewport.n128_f32[0] * v40;
      if (v34[2] < v43)
      {
        goto LABEL_37;
      }

      if (v35 >= 2)
      {
        v44 = v34 + 5;
        v41 = 1;
        while (*v44 >= v43)
        {
          ++v41;
          v44 += 3;
          if (v35 == v41)
          {
            LODWORD(v41) = v35;
            goto LABEL_37;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      buf.i32[2] = 0;
      buf.i64[0] = 0;
      C3DNodeGetWorldPosition(a3, &buf);
      LODWORD(v41) = 0;
      v45 = vmulq_f32(buf, a1[298]);
      v46 = COERCE_FLOAT(HIDWORD(*&a1[298])) + (v45.f32[2] + vaddv_f32(*v45.f32));
      if (v46 < 0.0)
      {
        v46 = 0.0;
      }

      if (v34[2] > v46)
      {
        goto LABEL_37;
      }

      if (v35 >= 2)
      {
        LODWORD(v41) = v35;
        v47 = v34 + 5;
        v48 = 1;
        while (*v47 <= v46)
        {
          ++v48;
          v47 += 3;
          if (v35 == v48)
          {
            goto LABEL_37;
          }
        }

        LODWORD(v41) = v48;
        goto LABEL_37;
      }
    }

    LODWORD(v41) = 1;
LABEL_37:
    if (v41 >= 1)
    {
      v49 = *(a3 + 232) + 12 * v41;
      v4 = *v49;
      v5 = *(v49 + 2);
      v7 = *(v49 + 4);
    }
  }

  if ((v3->i32[2] + v7) > v3->i32[3])
  {
    v50 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      C3D::ScenePass::_shouldPushNodeToVisible(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  v58 = v3->u32[2];
  if (v7)
  {
    v59 = 0;
    v60 = (v3->i64[0] + 4 * v58);
    do
    {
      *v60 = v4;
      v60[1] = v5 + v59++;
      v60 += 2;
    }

    while (v7 != v59);
  }

  v3->i32[2] = v58 + v7;
}

void C3DHandlesSequenceAppend(uint64_t result, uint64_t a2, __int16 a3, int a4)
{
  v6 = a2;
  if ((*(result + 8) + a4) > *(result + 12))
  {
    v8 = scn_default_log(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3D::ScenePass::_shouldPushNodeToVisible(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(result + 8);
  if (a4)
  {
    v17 = 0;
    v18 = (*result + 4 * v16);
    do
    {
      *v18 = v6;
      v18[1] = v17++ + a3;
      v18 += 2;
    }

    while (a4 != v17);
  }

  *(result + 8) = v16 + a4;
}

uint64_t __shouldPushRenderableElementsToVisible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 4096;
  v7 = *(a3 + 220);
  if ((v7 & 0x1000) != 0)
  {
    *(a1 + 5008) = 1;
    if ((*(a1 + 4688) & 1) != 0 || *(a1 + 4680))
    {
      return 0;
    }

    v7 = *(a3 + 220);
    if ((v7 & 0x80) == 0)
    {
      return 1;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    return 1;
  }

  if ((v7 & 0x4000) == 0)
  {
    return 0;
  }

  result = 1;
  *(v6 + 912) = 1;
  if (*(a1 + 4672) != a3)
  {
    if (C3DFXPassGetMaterial(*(a1 + 4656), a2))
    {
      return 1;
    }

    v10 = C3DGetScene(a3, v9);
    RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v10, a3);
    if (RegisteredCIFilterTechniqueForNode)
    {
      result = C3DFXTechniqueGetParentTechnique(RegisteredCIFilterTechniqueForNode, v12);
      v14 = *(a3 + 224);
      v15 = *(a3 + 226);
      v16 = *(a3 + 228);
      if (!result || (result = C3DFXTechniqueIsBeingRendered(result, v13), result))
      {
        v17 = a1 + 16 * a2 + 4912;
        if ((*(v17 + 8) + 1) > *(v17 + 12))
        {
          v18 = scn_default_log(result, v13);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            C3D::ScenePass::_shouldPushNodeToVisible(v18, v19, v20, v21, v22, v23, v24, v25);
          }
        }

        result = 0;
        v26 = *(v17 + 8);
        v27 = (*v17 + 4 * v26);
        *v27 = v14;
        v27[1] = v15 + v16 - 1;
        *(v17 + 8) = v26 + 1;
      }
    }

    else
    {
      if (__shouldPushRenderableElementsToVisible_done)
      {
        return 0;
      }

      __shouldPushRenderableElementsToVisible_done = 1;
      v28 = scn_default_log(0, v12);
      result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (result)
      {
        __shouldPushRenderableElementsToVisible_cold_2(v28, v29, v30, v31, v32, v33, v34, v35);
        return 0;
      }
    }
  }

  return result;
}

uint64_t C3DCullingContextPushRenderableElementsToVisible(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[294].i64[1] & *(a3 + 208) | ((a1[294].i64[0] & *(a3 + 208)) == 0))
  {
    return 0;
  }

  v8 = a1 + 256;
  if (a1[293].i8[2] == 1 && (*(a3 + 222) & 0x40) == 0)
  {
    return 0;
  }

  if (a1[293].i8[3] == 1 && (*(a3 + 222) & 0x40) != 0)
  {
    return 0;
  }

  v9 = *(a3 + 228);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a3 + 224);
  v11 = *(a3 + 226);
  if (C3DNodeIsHiddenOrTransparent(a3, a2))
  {
    return 1;
  }

  v13 = *(a3 + 220);
  if ((v13 & 0x1000) == 0)
  {
    if ((v13 & 0x4000) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    C3DCullingContextForcePushGeometryRenderableElementsToVisible(a1, a2, a3);
    return 0;
  }

  v8[57].i8[0] = 1;
  if ((v8[37].i8[0] & 1) != 0 || a1[292].i64[1])
  {
    return 0;
  }

  if ((*(a3 + 220) & 0x4000) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v8[57].i8[0] = 1;
  if (a1[292].i64[0] == a3 || C3DFXPassGetMaterial(a1[291].i64[0], v12))
  {
    goto LABEL_22;
  }

  v15 = C3DGetScene(a3, v14);
  RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v15, a3);
  if (RegisteredCIFilterTechniqueForNode)
  {
    ParentTechnique = C3DFXTechniqueGetParentTechnique(RegisteredCIFilterTechniqueForNode, v17);
    if (!ParentTechnique || C3DFXTechniqueIsBeingRendered(ParentTechnique, v19))
    {
      v20 = &a1[a2];
      v3 = 1;
      C3DHandlesSequenceAppend(&v20[307], v10, v11 + v9 - 1, 1);
      return v3;
    }

    return 1;
  }

  v3 = 1;
  if ((C3DCullingContextPushRenderableElementsToVisible_done & 1) == 0)
  {
    C3DCullingContextPushRenderableElementsToVisible_done = 1;
    v21 = scn_default_log(0, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __shouldPushRenderableElementsToVisible_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
      return 1;
    }
  }

  return v3;
}

uint64_t __CullInside(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  result = C3DCullingContextPushRenderableElementsToVisible(a1, a2, a3);
  if (!result)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ____CullInside_block_invoke;
    v7[3] = &__block_descriptor_tmp_84;
    v7[4] = a1;
    v7[5] = a2;
    return C3DNodeApplyChildren(a3, v7);
  }

  return result;
}

uint64_t __Cull(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (C3DNodeIsAlwaysRendered(a3, a2))
  {
    v6 = 2;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    result = C3DNodeComputeHierarchicalBoundingBox(a3, 0, &v15);
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = &a1[6 * a2];
    v10 = v9[4];
    v14[2] = v9[3];
    v14[3] = v10;
    v11 = v9[6];
    v14[4] = v9[5];
    v14[5] = v11;
    v12 = v9[2];
    v14[0] = v9[1];
    v14[1] = v12;
    result = scn_frustum_classify_aabb(v14, v15, v16);
    v6 = result;
    if (result == 1)
    {
      return result;
    }
  }

  result = C3DCullingContextPushRenderableElementsToVisible(a1, a2, a3);
  if (!result)
  {
    if (v6 == 2)
    {
      result = C3DNodeHasChildren(a3);
      if (result)
      {
        for (i = a3[4].i64[1]; i; i = i[5].i64[0])
        {
          result = __Cull(a1, a2, i);
        }
      }
    }

    else if (!v6)
    {
      result = C3DNodeHasChildren(a3);
      if (result)
      {
        for (j = a3[4].i64[1]; j; j = *(j + 80))
        {
          result = __CullInside(a1, a2, j);
        }
      }
    }
  }

  return result;
}

uint64_t C3DGetPovCategoryMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return -1;
  }

  Camera = C3DNodeGetCamera(a1, a2);
  if (!Camera)
  {
    return -1;
  }

  return C3DCameraGetCategoryBitMask(Camera, v3);
}

double C3DCullingContextSetupLOD(uint64_t a1, __n128 *a2)
{
  PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(a2, a2);
  if (PointOfViewForCulling)
  {
    v7 = PointOfViewForCulling;
    WorldMatrix = C3DNodeGetWorldMatrix(PointOfViewForCulling, v5);
    v9 = WorldMatrix[2];
    v10 = WorldMatrix[3];
    v11 = vnegq_f32(v9);
    v12 = vmulq_f32(v10, v11);
    v11.f32[3] = -(v12.f32[2] + vaddv_f32(*v12.f32));
    v13 = *WorldMatrix;
    v14 = WorldMatrix[1];
    *(a1 + 4768) = v11;
    *(a1 + 4784) = v13;
    *(a1 + 4800) = v14;
    *(a1 + 4816) = v9;
    *(a1 + 4832) = v10;
    Viewport = C3DEngineContextGetViewport(a2);
    memset(v35, 0, sizeof(v35));
    ProjectionInfos = C3DNodeGetProjectionInfos(v7, v35);
    if ((ProjectionInfos & 1) == 0)
    {
      v17 = scn_default_log(ProjectionInfos, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupLOD_cold_1(v17, v16, v18, v19, v20, v21, v22, v23);
      }
    }

    if ((v35[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2, v16))
    {
      C3DAdjustZRangeOfProjectionInfos(v35, v7, &Viewport, *(a1 + 4728));
    }

    if (*(a1 + 4694) == 1)
    {
      *(v35 + 8) = *(a1 + 4744);
    }

    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2, v24);
    Matrix = C3DProjectionInfosGetMatrix(v35, &Viewport, CoordinatesSystemOptions);
    v33 = *(Matrix + 2);
    v34 = *Matrix;
    v31 = *(Matrix + 6);
    v32 = *(Matrix + 4);
    v42 = __invert_f4(*(a1 + 4784));
    v27 = 0;
    v37 = v42;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    do
    {
      *(&v38 + v27 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&v37.columns[v27])), v33, *v37.columns[v27].f32, 1), v32, v37.columns[v27], 2), v31, v37.columns[v27], 3);
      ++v27;
    }

    while (v27 != 4);
    result = *&v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    *(a1 + 4848) = v38;
    *(a1 + 4864) = v28;
    *(a1 + 4880) = v29;
    *(a1 + 4896) = v30;
  }

  return result;
}

double C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering(float32x4_t *a1)
{
  v1 = 0;
  v2 = a1 + 193;
  v3 = a1 + 169;
  v4 = a1 + 217;
  v5 = a1 + 241;
  do
  {
    v6 = &v4[4 * v1];
    if (v1)
    {
      v7 = v4[1];
      *v6 = *v4;
      v6[1] = v7;
      v8 = v4[3];
      v6[2] = v4[2];
      v6[3] = v8;
    }

    v24 = __invert_f4(*v3[4 * v1].f32);
    v9 = 0;
    *v2[4 * v1].f32 = v24;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v19 = v24;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    do
    {
      *(&v20 + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v19.columns[v9])), v11, *v19.columns[v9].f32, 1), v12, v19.columns[v9], 2), v13, v19.columns[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    f32 = v5[4 * v1].f32;
    result = *&v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *f32 = v20;
    f32[1] = v16;
    f32[2] = v17;
    f32[3] = v18;
    ++v1;
  }

  while (v1 != 6);
  return result;
}

void __setupCubeMapRendering(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2, a2);
  memset(v39, 0, sizeof(v39));
  if (C3DNodeGetProjectionInfos(a3, v39))
  {
    if (CoordinatesSystemOptions)
    {
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v26 = *(v39 + 1);
        if (*&v39[1] > *(v39 + 1))
        {
          v27 = *&v39[1];
        }

        else
        {
          v27 = *(v39 + 1) + 1.0;
        }

        v28 = __tanpi(0.25);
        v29 = 0;
        if (v28 == 0.0)
        {
          v30 = 1.0;
        }

        else
        {
          v30 = 1.0 / v28;
        }

        v31 = v30;
        v32 = v31;
        LODWORD(v33) = 0;
        *(&v33 + 1) = v31;
        *&v34 = 0;
        *&v35 = v27 / (v26 - v27);
        *(&v34 + 1) = __PAIR64__(-1.0, v35);
        *&v36 = v26 * v27 / (v26 - v27);
        *&v37 = 0;
        *(&v37 + 1) = v36;
        v40[0] = LODWORD(v32);
        v40[1] = v33;
        v40[2] = v34;
        v40[3] = v37;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        do
        {
          *(&v41 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v40[v29])), xmmword_21C27F8C0, *&v40[v29], 1), xmmword_21C27F900, v40[v29], 2), xmmword_21C27FDD0, v40[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v13 = v41;
        v14 = v42;
        v17 = v43;
        v12 = v44;
        goto LABEL_28;
      }

      v19 = *(v39 + 1);
      if (*&v39[1] > *(v39 + 1))
      {
        v20 = *&v39[1];
      }

      else
      {
        v20 = *(v39 + 1) + 1.0;
      }

      v21 = __tanpi(0.25);
      if (v21 == 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 1.0 / v21;
      }

      *&v23 = v22;
      v13 = v23;
      LODWORD(v14) = 0;
      *(&v14 + 1) = 0;
      DWORD1(v14) = v23;
      *&v12 = 0;
      HIDWORD(v12) = 0;
      v15 = v19 - v20;
      *&v17 = 0;
      *&v24 = v20 / (v19 - v20);
      *(&v17 + 1) = __PAIR64__(-1.0, v24);
      v18 = v19 * v20;
    }

    else
    {
      v7 = *(v39 + 1);
      if (*&v39[1] > *(v39 + 1))
      {
        v8 = *&v39[1];
      }

      else
      {
        v8 = *(v39 + 1) + 1.0;
      }

      v9 = __tanpi(0.25);
      if (v9 == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 1.0 / v9;
      }

      *&v11 = v10;
      *&v12 = 0;
      HIDWORD(v12) = 0;
      v13 = v11;
      LODWORD(v14) = 0;
      *(&v14 + 1) = 0;
      DWORD1(v14) = v11;
      v15 = v7 - v8;
      *&v16 = (v7 + v8) / (v7 - v8);
      *&v17 = 0;
      *(&v17 + 1) = __PAIR64__(-1.0, v16);
      v18 = (v7 + v7) * v8;
    }

    v25 = v18 / v15;
    *(&v12 + 2) = v25;
LABEL_28:
    *(a1 + 3472) = v13;
    *(a1 + 3488) = v14;
    *(a1 + 3504) = v17;
    *(a1 + 3520) = v12;
    *(v41.n128_u64 + 4) = 0;
    v41.n128_u32[0] = 0;
    C3DNodeGetWorldPosition(a3, &v41);
    v38 = v41;
    *(a1 + 2704) = xmmword_21C27F600;
    *(a1 + 2720) = xmmword_21C27F8C0;
    *(a1 + 2736) = xmmword_21C2A3E40;
    v38.n128_u32[3] = 1.0;
    *(a1 + 2752) = v38;
    *(a1 + 2768) = xmmword_21C2A3E50;
    *(a1 + 2784) = xmmword_21C27F8C0;
    *(a1 + 2800) = xmmword_21C27F910;
    *(a1 + 2816) = v38;
    *(a1 + 2832) = xmmword_21C27F910;
    *(a1 + 2848) = xmmword_21C27F600;
    *(a1 + 2864) = xmmword_21C2A3E60;
    *(a1 + 2880) = v38;
    *(a1 + 2896) = xmmword_21C27F910;
    *(a1 + 2912) = xmmword_21C2A3E50;
    *(a1 + 2928) = xmmword_21C27F8C0;
    *(a1 + 2944) = v38;
    *(a1 + 2960) = xmmword_21C27F910;
    *(a1 + 2976) = xmmword_21C27F8C0;
    *(a1 + 2992) = xmmword_21C27F600;
    *(a1 + 3008) = v38;
    *(a1 + 3024) = xmmword_21C2A3E40;
    *(a1 + 3040) = xmmword_21C27F8C0;
    *(a1 + 3056) = xmmword_21C2A3E50;
    *(a1 + 3072) = v38;
    *(a1 + 4640) = C3DEngineContextGetViewportAtIndex(a2, 0);
    *(a1 + 4744) = *(v39 + 8);
    C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering(a1);
  }
}