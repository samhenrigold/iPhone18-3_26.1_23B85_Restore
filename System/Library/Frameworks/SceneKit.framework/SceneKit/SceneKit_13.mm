uint64_t C3DMaterialDefaultUVSetForProperty(int a1)
{
  if (a1 == 4)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(uint64_t a1, uint64_t a2)
{
  if ((C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapsReady & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    v2 = 0;
    *(&dword_27CDD97BA + 1) = 0;
    xmmword_27CDD979C = 0u;
    unk_27CDD97AC = 0u;
    xmmword_27CDD977C = 0u;
    unk_27CDD978C = 0u;
    xmmword_27CDD975C = 0u;
    unk_27CDD976C = 0u;
    xmmword_27CDD973C = 0u;
    unk_27CDD974C = 0u;
    C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities = 0u;
    while (1)
    {
      if (v2 <= 2)
      {
        if (v2)
        {
          if (v2 == 1)
          {
            *(&xmmword_27CDD973C + 5) = 0x101010100010101;
            *(&xmmword_27CDD973C + 13) = 257;
            *(&xmmword_27CDD973C + 15) = 0;
            byte_27CDD974F = 0;
            unk_27CDD9750 = 1;
            unk_27CDD9752 = 16843009;
          }

          else
          {
            unk_27CDD9756 = 0x101010101010101;
            WORD1(xmmword_27CDD975C) = 257;
            DWORD1(xmmword_27CDD975C) = 0;
            BYTE8(xmmword_27CDD975C) = 0;
            *(&xmmword_27CDD975C + 9) = 16843009;
            *(&xmmword_27CDD975C + 13) = 257;
          }
        }

        else
        {
          LODWORD(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 65793;
          WORD2(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 257;
          BYTE6(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 1;
          *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 7) = 0;
          BYTE11(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 0;
          HIDWORD(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 0x1000000;
          LOBYTE(xmmword_27CDD973C) = 0;
          *(&xmmword_27CDD973C + 1) = 16843009;
        }
      }

      else if (v2 > 4)
      {
        if (v2 != 5)
        {
          *(&xmmword_27CDD979C + 14) = 0;
          unk_27CDD97B2 = 0;
          dword_27CDD97BA = 0x10000;
          byte_27CDD97BE = 0;
          C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapsReady = 1;
          LODWORD(a1) = v4;
          LODWORD(a2) = v5;
          return *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 21 * a1 + a2);
        }

        dword_27CDD9795 = 65537;
        word_27CDD9799 = 256;
        a1 = C3DWasLinkedBeforeMajorOSYear2018(a1, a2);
        byte_27CDD979B = a1 ^ 1;
        *&xmmword_27CDD979C = 0x101010101010101;
        BYTE8(xmmword_27CDD979C) = 1;
        *(&xmmword_27CDD979C + 9) = 0x10000;
        BYTE13(xmmword_27CDD979C) = 0;
      }

      else if (v2 == 3)
      {
        *(&xmmword_27CDD975C + 15) = 0x101010101010101;
        word_27CDD9773 = 257;
        unk_27CDD9775 = 0;
        byte_27CDD9779 = 0;
        *algn_27CDD977A = 16843009;
        WORD1(xmmword_27CDD977C) = 257;
      }

      else
      {
        DWORD1(xmmword_27CDD977C) = 65537;
        WORD4(xmmword_27CDD977C) = 257;
        BYTE10(xmmword_27CDD977C) = 1;
        *(&xmmword_27CDD977C + 11) = 0;
        unk_27CDD978F = 1;
        unk_27CDD9791 = 16843009;
      }

      ++v2;
    }
  }

  return *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 21 * a1 + a2);
}

void _C3DEffectCommonProfileReleaseSlot(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DEffectCommonProfileReleaseSlot_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2 <= 0xF)
  {
    v12 = qword_21C2A1B18[v2];
    v13 = *(a1 + v12);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + v12) = 0;
    }
  }
}

void *C3DEffectCommonProfileDefaultColorForEffectProperty(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return &c3dBlack;
  }

  else
  {
    return *(&off_2782FDD68 + (a1 - 1));
  }
}

uint64_t C3DEffectCommonProfileGetEffectSlot(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DEffectCommonProfileReleaseSlot_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v4 > 0xF)
  {
    return 0;
  }

  v14 = qword_21C2A1B18[v4];
  result = *(a1 + v14);
  if (a3)
  {
    if (!result)
    {
      v16 = C3DEffectSlotCreate(a1, v4);
      *(a1 + v14) = v16;
      v17 = C3DEffectCommonProfileDefaultColorForEffectProperty(v4);
      C3DEffectSlotSetColor(v16, v17);
      return *(a1 + v14);
    }
  }

  return result;
}

uint64_t C3DEffectSlotCreate(uint64_t a1, int a2)
{
  if (C3DEffectSlotGetTypeID_onceToken != -1)
  {
    C3DEffectSlotCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DEffectSlotGetTypeID_typeID, 80);
  *(result + 50) = a2;
  *(result + 72) = 0xFFFFFFFE3F800000;
  *(result + 80) = a1;
  if ((a2 - 5) > 0x15)
  {
    v5 = 1024;
  }

  else
  {
    v5 = word_21C2A1B98[(a2 - 5)];
  }

  if (a2 == 15)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 30720;
  }

  *(result + 48) = v5 | v6 | *(result + 48) & 0x83FF;
  return result;
}

void C3DEffectSlotSetColor(uint64_t a1, float *a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  *(a1 + 48) &= ~0x200u;
  if (!v2)
  {
    v2 = v16;
    C3DColor4Make(v16, 0.0, 0.0, 0.0, 1.0);
  }

  if (!C3DColor4IsEqualToColor4(v2, (a1 + 16)))
  {
    v12 = *(a1 + 28);
    IsBlack = C3DColor4IsBlack((a1 + 16));
    v14 = C3DColor4IsBlack(v2);
    *(a1 + 16) = *v2;
    if (v12 != 0.0 || v2[3] == 0.0)
    {
      v15 = v12 == 1.0 && v2[3] != 1.0;
    }

    else
    {
      v15 = 1;
    }

    __PostParentDidChangeNotification(a1, v15 | (*(a1 + 50) == 5) & (IsBlack ^ v14), 0);
  }
}

__CFString *C3DEffectCommonProfileNameForLightingModel(int a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = kC3DLightingModelLambert;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v3 = kC3DLightingModelPhong;
      }
    }

    else
    {
      v3 = kC3DLightingModelConstant;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v3 = kC3DLightingModelPhysicallyBased;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v3 = kC3DLightingModelShadowOnly;
    }
  }

  else if (a1 == 3)
  {
    v3 = kC3DLightingModelBlinn;
  }

  else
  {
    v3 = kC3DLightingModelNone;
  }

  return *v3;
}

CFComparisonResult C3DEffectCommonProfileLightingModelForName(const __CFString *a1)
{
  if (CFStringCompare(a1, @"physicallyBased", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  result = CFStringCompare(a1, @"constant", 0);
  if (result)
  {
    if (CFStringCompare(a1, @"lambert", 0))
    {
      if (CFStringCompare(a1, @"phong", 0))
      {
        if (CFStringCompare(a1, @"blinn", 0))
        {
          if (CFStringCompare(a1, @"none", 0))
          {
            if (CFStringCompare(a1, @"shadowOnly", 0))
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *C3DLightingModelGetDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"SCNLightingModelInvalid";
  }

  else
  {
    return *(&off_2782FDDD8 + a1);
  }
}

void C3DEffectCommonProfileCopy(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DGeometryCopy_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  LightingModel = C3DEffectCommonProfileGetLightingModel(v3, a2);
  C3DEffectCommonProfileSetLightingModel(a2, LightingModel);
  for (i = 0; i != 5; ++i)
  {
    v20 = byte_21C2A1B10[i];
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(v3, v20);
    C3DEffectCommonProfileSetFloatProperty(a2, v20, FloatProperty);
  }

  v22 = 0;
  do
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(v3, v22, 0);
    if (EffectSlot)
    {
      v24 = EffectSlot;
      v25 = C3DEffectCommonProfileGetEffectSlot(a2, v22, 1);
      C3DEffectSlotCopy(v24, v25);
    }

    v26 = v22++;
  }

  while (v26 < 0x10);
  *(a2 + 194) = *(a2 + 194) & 0xFFFFFFFE | *(v3 + 194) & 1;
  *(a2 + 193) = *(v3 + 193);
  C3DEffectCommonProfileSetTransparencyMode(a2, *(v3 + 180));
  *(a2 + 194) = *(a2 + 194) & 0xFFFFFFEF | (16 * ((*(v3 + 194) >> 4) & 1));
}

void C3DEffectCommonProfileSetLightingModel(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 24) != v2)
  {
    *(result + 24) = v2;
    __PostCommonProfileDidChangeNotification(result, a2);
  }
}

uint64_t C3DEffectCommonProfileGetLightingModel(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void C3DEffectCommonProfileSetFloatProperty(uint64_t result, uint64_t a2, float a3)
{
  v4 = a2;
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v4 > 18)
  {
    if (v4 != 19)
    {
      if (v4 == 20)
      {
        v17 = *(result + 172);
        if (v17 != a3)
        {
          *(result + 172) = a3;
          if (a3 != 0.0 && v17 != 0.0)
          {
            C3DMaterialTouchValueStorageModificationCount(*(result + 16), a2);
            return;
          }

          goto LABEL_24;
        }
      }

      return;
    }

    v18 = *(result + 168);
    if (v18 == a3)
    {
      return;
    }

    *(result + 168) = a3;
    if (a3 != 0.0 && v18 != 0.0)
    {
      return;
    }

LABEL_24:
    __PostCommonProfileDidChangeNotification(result, a2);
    return;
  }

  if (v4 == 16)
  {
    *(result + 160) = a3;
    goto LABEL_24;
  }

  if (v4 == 18)
  {
    v13 = *(result + 164);
    if (v13 != a3)
    {
      *(result + 164) = a3;
      v15 = v13 == 1.0 || v13 == 0.0 || a3 == 0.0;
      v16 = (a3 != 1.0) << 7;
      if (v15)
      {
        v16 = 0;
      }

      *(result + 194) = *(result + 194) & 0xFFFFFF7F | v16;
      goto LABEL_24;
    }
  }
}

float C3DEffectCommonProfileGetFloatProperty(float *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = 0.0;
  if (v2 > 18)
  {
    if (v2 == 19)
    {
      return a1[42];
    }

    else if (v2 == 20)
    {
      return a1[43];
    }
  }

  else if (v2 == 16)
  {
    return a1[40];
  }

  else if (v2 == 18)
  {
    return a1[41];
  }

  return result;
}

void C3DEffectSlotCopy(uint64_t a1, uint64_t a2)
{
  C3DEffectSlotSetColor(a2, (a1 + 16));
  Image = C3DEffectSlotGetImage(a1, v4);
  C3DEffectSlotSetImage(a2, Image);
  ImageProxy = C3DEffectSlotGetImageProxy(a1, v6);
  C3DEffectSlotSetImageProxy(a2, ImageProxy);
  C3DEffectSlotSetTextureSampler(a2, *(a1 + 56));
  if (*(a1 + 64))
  {
    v9 = C3DMalloc(0x40uLL);
    *(a2 + 64) = v9;
    v10 = *(a1 + 64);
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    *v9 = *v10;
    v9[1] = v13;
    v9[2] = v12;
    v9[3] = v11;
  }

  Texture = C3DEffectSlotGetTexture(a1, v8);
  C3DEffectSlotSetTexture(a2, Texture);
  MTLTexture = C3DEffectSlotGetMTLTexture(a1, v15);
  C3DEffectSlotSetMTLTexture(a2, MTLTexture);
  UVSet = C3DEffectSlotGetUVSet(a1, v17);
  C3DEffectSlotSetUVSet(a2, UVSet);
  TextureComponents = C3DEffectSlotGetTextureComponents(a1, v19);
  C3DEffectSlotSetTextureComponents(a2, TextureComponents);
  Intensity = C3DEffectSlotGetIntensity(a1, v21);
  C3DEffectSlotSetIntensity(a2, v23, Intensity);
  *(a2 + 48) = *(a2 + 48) & 0xFDFF | *(a1 + 48) & 0x200;
}

void C3DEffectCommonProfileSetTransparencyMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 180) != v2)
  {
    *(result + 194) &= ~0x80u;
    *(result + 180) = v2;
    __PostCommonProfileDidChangeNotification(result, a2);
  }
}

uint64_t _C3DEffectCommonProfileSetDefaultValues(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  C3DEffectCommonProfileSetLightingModel(a1, 3);
  for (i = 0; i != 16; ++i)
  {
    _C3DEffectCommonProfileReleaseSlot(a1, byte_21C2A1B00[i]);
  }

  for (j = 0; j != 5; ++j)
  {
    if (j == 4)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    C3DEffectCommonProfileSetFloatProperty(a1, byte_21C2A1B10[j], v13);
  }

  C3DEffectCommonProfileSetImageProxy(a1, 2, 0);
  *(a1 + 180) = 0;
  v14 = *(a1 + 194);
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 1;
  *(a1 + 194) = v14 & 0xFFFFFE2C;
  result = C3DWasLinkedBeforeMajorOSYear2014(v15, v16);
  *(a1 + 193) = result ^ 1;
  return result;
}

void C3DEffectCommonProfileSetImageProxy(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetImageProxy(EffectSlot, a3);
  }

  *(a1 + 194) &= 0xE000FFFF;
}

double __C3DEffectCommonProfileGetTypeID_block_invoke()
{
  C3DEffectCommonProfileGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281741B08 = kC3DC3DEffectCommonProfileContextClassSerializable;
  unk_281741B18 = *&off_282DC4AB0;
  qword_281741AC0 = _C3DEffectCommonProfileCopyInstanceVariables;
  result = *&kC3DC3DEffectCommonProfileContextClassAnimatable;
  xmmword_281741AB0 = kC3DC3DEffectCommonProfileContextClassAnimatable;
  return result;
}

uint64_t C3DEffectCommonProfileCreate(uint64_t a1)
{
  if (C3DEffectCommonProfileGetTypeID_onceToken != -1)
  {
    C3DEffectCommonProfileCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEffectCommonProfileGetTypeID_typeID, 184);
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    _C3DEffectCommonProfileSetDefaultValues(Instance, v3);
  }

  return v4;
}

void __PostCommonProfileDidChangeNotification(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = C3DGetScene(v3, a2);
    C3DScenePostPipelineEvent(v4, 3, *(a1 + 16), 0);
  }

  else
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __PostCommonProfileDidChangeNotification_cold_1(v6);
    }
  }

  C3DMaterialTouchValueStorageModificationCount(*(a1 + 16), v5);
}

void *C3DEffectCommonProfileGetColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot)
  {
    return (EffectSlot + 16);
  }

  else
  {
    return C3DEffectCommonProfileDefaultColorForEffectProperty(a2);
  }
}

uint64_t C3DEffectSlotGetColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 16;
}

uint64_t C3DEffectCommonProfileGetColorModulatedByIntensity(uint64_t a1, uint64_t a2)
{
  v10 = *C3DEffectCommonProfileGetColor(a1, a2);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot && C3DEffectSlotHasImageOrTexture(EffectSlot, v5))
  {
    C3DColor4Make(&v10, 1.0, 1.0, 1.0, 1.0);
  }

  Intensity = C3DEffectCommonProfileGetIntensity(a1, a2);
  if (Intensity != 1.0)
  {
    v8.i32[0] = v10;
    if (a2 == 6)
    {
      *v7.i32 = 1.0 - Intensity;
      *&v10 = (1.0 - Intensity) + (Intensity * *&v10);
      *(&v10 + 4) = vmla_n_f32(vdup_lane_s32(v7, 0), *(&v10 + 4), Intensity);
    }

    else if (a2 == 5)
    {
      v8.i32[1] = DWORD1(v10);
      v8.i64[1] = *(&v10 + 1);
      return vmulq_n_f32(v8, Intensity).i64[0];
    }

    else
    {
      *&v10 = Intensity * *&v10;
      *(&v10 + 4) = vmul_n_f32(*(&v10 + 4), Intensity);
    }
  }

  return v10;
}

BOOL C3DEffectSlotHasImageOrTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  Image = C3DEffectSlotGetImage(a1, a2);
  return Image && (C3DImageIsValid(Image, v11) & 1) != 0 || C3DEffectSlotGetImageProxy(a1, v11) || C3DEffectSlotGetTexture(a1, v12) || C3DEffectSlotGetMTLTexture(a1, v13) != 0;
}

float C3DEffectCommonProfileGetIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot)
  {
    return *(EffectSlot + 72);
  }

  else
  {
    return 1.0;
  }
}

void C3DEffectCommonProfileSetColor(uint64_t a1, uint64_t a2, float *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 1);
  if (EffectSlot)
  {
    C3DEffectSlotSetColor(EffectSlot, a3);
  }
}

uint64_t C3DEffectCommonProfileGetImage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    if (*(result + 48))
    {
      return 0;
    }

    else
    {
      return *(result + 40);
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetImage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

void C3DEffectCommonProfileSetImage(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetImage(EffectSlot, a3);
  }
}

void C3DEffectSlotSetImage(uint64_t result, CFTypeRef cf)
{
  if (!result)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || !*(result + 48))
  {
    *(result + 48) &= 0xFF00u;
    v12 = *(result + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(result + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(result + 40) = v13;
      __PostParentDidChangeNotification(result, 1, 1);
    }
  }
}

float C3DEffectSlotGetIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

void C3DEffectSlotSetIntensity(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 72) != a3)
  {
    *(result + 72) = a3;
    __PostParentDidChangeNotification(result, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileUVSetIsSet(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    return *(result + 76) != -2;
  }

  return result;
}

uint64_t C3DEffectCommonProfileGetUVSet(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (!EffectSlot)
  {
    return -1;
  }

  v13 = EffectSlot;
  result = *(EffectSlot + 76);
  if (result == -2)
  {
    if (*(v13 + 50) == 4)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetUVSet(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 76);
  if (result == -2)
  {
    if (*(a1 + 50) == 4)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void C3DEffectCommonProfileSetUVSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != -1);
  if (EffectSlot)
  {
    if (*(EffectSlot + 76) != a3)
    {
      *(EffectSlot + 76) = a3;
      __PostParentDidChangeNotification(EffectSlot, 0, 0);
    }
  }
}

void C3DEffectSlotSetUVSet(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 76) != a2)
  {
    *(result + 76) = a2;
    __PostParentDidChangeNotification(result, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileGetTextureSampler(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t C3DEffectSlotGetTextureSampler(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

void C3DEffectCommonProfileSetTextureSampler(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetTextureSampler(EffectSlot, a3);
  }
}

void C3DEffectSlotSetTextureSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 56);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 56) = v13;
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileGetHashCode(_BOOL8 RenderComponentsForRenderPass_cold_1, uint64_t a2)
{
  v2 = RenderComponentsForRenderPass_cold_1;
  if (!RenderComponentsForRenderPass_cold_1)
  {
    v3 = scn_default_log(0, a2);
    RenderComponentsForRenderPass_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (RenderComponentsForRenderPass_cold_1)
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(v2 + 24) >= 7)
  {
    v10 = scn_default_log(RenderComponentsForRenderPass_cold_1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DEffectCommonProfileGetHashCode_cold_2(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(v2 + 24) | (16 * *(v2 + 192));
  if (C3DMaterialIsDoubleSided(*(v2 + 16), a2))
  {
    v18 = 32;
  }

  else
  {
    v18 = 0;
  }

  return (v17 | ((*(v2 + 194) & 1) << 6) | v18 | (32 * *(v2 + 194)) & 0x780 | ((*(v2 + 180) & 0xF) << 11) | (*(v2 + 193) << 15));
}

uint64_t C3DEffectCommonProfileGetEffectPropertyHashCode(float *a1, uint64_t a2)
{
  v4 = 0;
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (a2 >= 0x10)
  {
    if (a2 <= 0x14 && ((1 << a2) & 0x1D0000) != 0)
    {
      return 16 * (C3DEffectCommonProfileGetFloatProperty(a1, a2) == 0.0);
    }

    return v4;
  }

  else
  {

    return _C3DEffectSlotGetHashCode(EffectSlot, a2);
  }
}

uint64_t _C3DEffectSlotGetHashCode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v7 = C3DEffectCommonProfileDefaultColorForEffectProperty(a2);
    goto LABEL_9;
  }

  if (!C3DEffectSlotHasImageOrTexture(a1, a2))
  {
    v8 = *(a1 + 50) - 7;
    if (v8 < 9 && ((0x119u >> v8) & 1) != 0)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = (a1 + 16);
LABEL_9:
    IsBlack = C3DColor4IsBlack(v7);
    IsWhite = C3DColor4IsWhite(v7);
    v6 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (IsBlack)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (IsWhite)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v7[3] >= 1.0);
    if (!a1)
    {
      return v12 | v11 | v4 | v3 | v13 | v5;
    }

    goto LABEL_16;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1;
LABEL_16:
  v11 = (*(a1 + 72) != 1.0) << 13;
  v14 = (*(a1 + 48) >> 11) & 0xF;
  v15 = v14 == 15;
  v13 = v14 << 14;
  if (v15)
  {
    v13 = 0;
  }

  v12 = v6;
  return v12 | v11 | v4 | v3 | v13 | v5;
}

uint64_t C3DEffectSlotGetTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 48);
  if (v11 == 2)
  {
    return *(a1 + 32);
  }

  if (v11 == 1)
  {
    return *(a1 + 40);
  }

  return 0;
}

CFTypeRef _C3DEffectCommonProfileSetTextureForTextureProxy(uint64_t a1, uint64_t a2, const void *a3)
{
  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (result)
  {

    return C3DEffectSlotSetTextureFromImageProxy(result, a3);
  }

  return result;
}

CFTypeRef C3DEffectSlotSetTextureFromImageProxy(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void C3DEffectCommonProfileSetTexture(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetTexture(EffectSlot, a3);
    *(a1 + 194) &= ~0x80u;
    __PostCommonProfileDidChangeNotification(a1, v15);
  }
}

void C3DEffectSlotSetTexture(uint64_t result, CFTypeRef cf)
{
  if (!result)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || *(result + 48) == 1)
  {
    *(result + 48) = *(result + 48) & 0xFF00 | 1;
    v12 = *(result + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(result + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(result + 40) = v13;
      __PostParentDidChangeNotification(result, 1, 1);
    }
  }
}

void C3DEffectCommonProfileSetMTLTexture(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetMTLTexture(EffectSlot, a3);
    *(a1 + 194) &= ~0x80u;
    __PostCommonProfileDidChangeNotification(a1, v15);
  }
}

void C3DEffectSlotSetMTLTexture(uint64_t result, CFTypeRef cf)
{
  if (!result)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || *(result + 48) == 3)
  {
    *(result + 48) = *(result + 48) & 0xFE00 | 3;
    v12 = *(result + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(result + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(result + 40) = v13;
    }

    __PostParentDidChangeNotification(result, 1, 1);
  }
}

uint64_t C3DEffectCommonProfileGetImageProxy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    if (*(result + 48) == 2)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetImageProxy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48) == 2)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void C3DEffectSlotSetImageProxy(uint64_t result, CFTypeRef cf)
{
  if (!result)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  if (cf || *(result + 48) == 2)
  {
    *(result + 48) = *(result + 48) & 0xFF00 | 2;
    v11 = *(result + 40);
    if (v11 != cf)
    {
      if (v11)
      {
        CFRelease(v11);
        *(result + 40) = 0;
      }

      if (cf)
      {
        v12 = CFRetain(cf);
      }

      else
      {
        v12 = 0;
      }

      *(result + 40) = v12;
      CommonProfile = _C3DEffectSlotGetCommonProfile(result, cf);
      if (CommonProfile)
      {
        *(CommonProfile + 194) &= 0xE000FFFF;
      }

      __PostParentDidChangeNotification(result, 1, 1);
    }
  }
}

void C3DEffectCommonProfileSetAvoidsOverLighting(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(result + 194) & 1) != v2)
  {
    *(result + 194) = *(result + 194) & 0xFFFFFFFE | v2;
    __PostCommonProfileDidChangeNotification(result, a2);
  }
}

uint64_t C3DEffectCommonProfileGetAvoidsOverLighting(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 194) & 1;
}

void C3DEffectCommonProfileSetPerPixelLit(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 192) != v2)
  {
    *(result + 192) = v2;
    *(result + 194) |= 2u;
    __PostCommonProfileDidChangeNotification(result, a2);
  }
}

uint64_t C3DEffectCommonProfileIsPerPixelLit(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 192);
}

uint64_t C3DEffectCommonProfileGetTransparencyMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 180);
}

uint64_t C3DEffectCommonProfileIsOpaque(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 194);
  if ((v11 & 0x80) == 0)
  {
    v12 = *(a1 + 180);
    *(a1 + 194) = v11 | 0x80;
    if (*(a1 + 164) >= 1.0 && __imageSlotIsOpaque(a1, 5) && __imageSlotIsOpaque(a1, 2))
    {
      Color = C3DEffectCommonProfileGetColor(a1, 5);
      v15 = *(a1 + 180);
      if ((v15 - 2) < 2)
      {
        goto LABEL_11;
      }

      if (v15 != 1)
      {
        if (*(a1 + 180))
        {
          v20 = scn_default_log(Color, v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22[0] = 67109120;
            v22[1] = v15;
            _os_log_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_DEFAULT, "Warning: __OpacityFromColorSlot:unexpected transparency mode %d", v22, 8u);
          }

          v16 = 1;
LABEL_21:
          if (!v16 || v12 == 1)
          {
            v18 = *(a1 + 194);
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v21 = C3DEffectCommonProfileGetColor(a1, 2);
            v18 = *(a1 + 194);
            if (v21[3] >= 1.0)
            {
LABEL_24:
              v17 = 256;
              goto LABEL_15;
            }
          }

          v17 = 0;
          goto LABEL_15;
        }

LABEL_11:
        v16 = Color[3] >= 1.0;
        goto LABEL_21;
      }

      if (*Color <= 0.0 && Color[1] <= 0.0)
      {
        v16 = Color[2] <= 0.0;
        goto LABEL_21;
      }
    }

    v17 = 0;
    v18 = *(a1 + 194);
LABEL_15:
    v11 = v18 & 0xFFFFFEFF | v17;
    *(a1 + 194) = v11;
  }

  return (v11 >> 8) & 1;
}

uint64_t __imageSlotIsOpaque(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  v6 = EffectSlot;
  if (v2 == 5)
  {
    if (*(a1 + 180) == 1)
    {
      if (!C3DEffectCommonProfileGetImageProxy(a1, 5) && !C3DEffectCommonProfileGetImage(a1, 5))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!EffectSlot)
      {
        return 1;
      }

      if ((*(EffectSlot + 48) & 0x800) != 0)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_5:
  if (!v6)
  {
    return 1;
  }

LABEL_6:

  return C3DEffectSlotIsOpaque(v6, v5);
}

uint64_t C3DEffectCommonProfileContainsContentForEffectProperty(uint64_t a1, uint64_t a2)
{
  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {

    return C3DEffectSlotHasImageOrTexture(result, v3);
  }

  return result;
}

uint64_t C3DEffectCommonProfileGetEnableNormals(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 194) >> 2) & 1;
}

void C3DEffectCommonProfileSetEnableLockAmbientWithDiffuse(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 193) != v2)
  {
    *(result + 193) = v2;
    __PostCommonProfileDidChangeNotification(result, a2);
  }
}

uint64_t C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 193);
}

float C3DEffectCommonProfileGetConstantAlpha(float *a1)
{
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(a1, 18);
  v3 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 5);
  Color = C3DEffectCommonProfileGetColor(a1, 5);
  if ((v3 & 1) == 0)
  {
    FloatProperty = FloatProperty * Color[3];
  }

  v5 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 2);
  v6 = C3DEffectCommonProfileGetColor(a1, 2);
  if ((v5 & 1) == 0)
  {
    return FloatProperty * v6[3];
  }

  return FloatProperty;
}

uint64_t C3DEffectCommonProfileHasConstantAlpha(float *a1, float *a2)
{
  if (C3DEffectCommonProfileContainsContentForEffectProperty(a1, 5))
  {
    return 0;
  }

  v5 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 2);
  v6 = v5;
  if (!v5 || (result = __imageSlotIsOpaque(a1, 2), result))
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(a1, 18);
    v8 = FloatProperty * *(C3DEffectCommonProfileGetColor(a1, 5) + 3);
    Color = C3DEffectCommonProfileGetColor(a1, 2);
    if ((v6 & 1) == 0)
    {
      v8 = v8 * Color[3];
    }

    *a2 = v8;
    return 1;
  }

  return result;
}

BOOL C3DEffectCommonProfileIsUsingSelfIllumination(uint64_t a1)
{
  if (C3DEffectCommonProfileContainsContentForEffectProperty(a1, 9))
  {
    return 1;
  }

  Color = C3DEffectCommonProfileGetColor(a1, 9);
  return !C3DColor4IsBlack(Color);
}

void C3DEffectCommonProfileSetSelfIlluminationOcclusion(uint64_t result, float a2, uint64_t a3)
{
  if (*(result + 176) != a2)
  {
    *(result + 176) = a2;
    C3DMaterialTouchValueStorageModificationCount(*(result + 16), a3);
  }
}

uint64_t C3DEffectCommonProfileIsUsingMappingChannel(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0;
  while (1)
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, v12, 0);
    if (EffectSlot)
    {
      v14 = *(EffectSlot + 76);
      if (v14 == -2)
      {
        if (*(EffectSlot + 50) == 4)
        {
          v14 = -1;
        }

        else
        {
          v14 = 0;
        }
      }

      if (v14 == a2)
      {
        break;
      }
    }

    v15 = v12++;
    if (v15 >= 0xF)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _C3DEffectSlotGetCommonProfile(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 50) > 20)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

uint64_t C3DEffectSlotIsOpaque(uint64_t a1, uint64_t a2)
{
  ImageProxy = C3DEffectSlotGetImageProxy(a1, a2);
  if (!ImageProxy)
  {
    Image = C3DEffectSlotGetImage(a1, v4);
    if (Image)
    {
      HasAlpha = C3DImageHasAlpha(Image, v7);
    }

    else
    {
      Texture = C3DEffectSlotGetTexture(a1, v7);
      if (!Texture)
      {
        if (C3DEffectSlotGetMTLTexture(a1, v10))
        {
          return HIBYTE(*(a1 + 48)) & 1;
        }

        else
        {
          return 1;
        }
      }

      HasAlpha = C3DTextureHasAlpha(Texture, v10);
    }

    return HasAlpha ^ 1u;
  }

  return C3DImageProxyIsOpaque(ImageProxy, v4);
}

uint64_t C3DEffectSlotGetMTLTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48) == 3)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void __PostParentDidChangeNotification(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  CommonProfile = _C3DEffectSlotGetCommonProfile(a1, a2);
  if (CommonProfile)
  {
    if (v4)
    {
      *(CommonProfile + 194) &= ~0x80u;
    }

    if (a3)
    {
      *(CommonProfile + 194) &= ~0x40u;
    }

    __PostCommonProfileDidChangeNotification(CommonProfile, v7);
  }

  else
  {
    v8 = *(a1 + 50);
    if (v8 > 0x19)
    {
      if (v8 == 26)
      {
        v20 = *(a1 + 80);
        if (v20)
        {

          _C3DCameraInvalidatePasses(v20);
        }
      }

      else if (v8 == 27)
      {
        v10 = *(a1 + 80);
        if (v10)
        {
          v11 = CFGetTypeID(v10);
          TypeID = C3DGeometryGetTypeID(v11, v12);
          if (v11 == TypeID)
          {

            _C3DGeometryShadingDidUpdate(v10, v14);
          }

          else if (v11 == C3DMaterialGetTypeID(TypeID, v14))
          {

            _C3DMaterialShadingDidUpdate(v10, v21);
          }
        }
      }
    }

    else if (v8 - 22 >= 2)
    {
      if (v8 == 25)
      {
        v15 = *(a1 + 80);
        if (v15)
        {
          if (a3)
          {
            v16 = CFGetTypeID(v15);
            v18 = C3DLightGetTypeID(v16, v17);
            if (v16 == v18)
            {

              __C3DLightProbeEnvironmentDidChange(v15, v19);
            }

            else
            {
              v22 = C3DSceneGetTypeID(v18, v19);
              if (v16 != v22)
              {
                v24 = scn_default_log(v22, v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                {
                  __PostParentDidChangeNotification_cold_1(v24, v23, v25, v26, v27, v28, v29, v30);
                }
              }

              __C3DSceneLightEnvironmentDidChange(v15, v23);
            }
          }
        }
      }
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {

        __C3DLightDidChange(v9, v7);
      }
    }
  }
}

BOOL C3DEffectSlotIsValid(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x200) != 0)
  {
    return 0;
  }

  if (C3DEffectSlotHasImageOrTexture(a1, a2))
  {
    return 1;
  }

  v4 = C3DEffectCommonProfileDefaultColorForEffectProperty(*(a1 + 50));
  return !C3DColor4IsEqualToColor4((a1 + 16), v4);
}

uint64_t C3DEffectSlotGetColorIfApplicable(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 48) & 0x200) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return 0;
  }

  return a1 + 16;
}

uint64_t C3DEffectSlotGetImageTransform(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DEffectSlotSetImageTransform(uint64_t a1, __int128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  if (a2)
  {
    if (!v12)
    {
      v12 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
      *(a1 + 64) = v12;
    }

    v13 = *a2;
    v14 = a2[1];
    v15 = a2[3];
    v12[2] = a2[2];
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
  }

  else
  {
    if (!v12)
    {
      return;
    }

    C3DMatrix4x4MakeIdentity(v12);
  }

  __PostParentDidChangeNotification(a1, 0, 0);
}

BOOL C3DEffectSlotHasPrecomputedLightingEnvironment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEffectSlotGetPrecomputedLightingEnvironment(a1, a2) != 0;
}

uint64_t C3DEffectSlotGetPrecomputedLightingEnvironment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48) == 4)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void C3DEffectSlotSetHasNoContents(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEffectSlotSetHasNoContents_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 48) |= 0x200u;
}

uint64_t C3DEffectSlotGetTextureInfo(uint64_t a1, int *a2, _BYTE *a3, _BYTE *a4)
{
  if (!C3DEffectSlotGetTextureSampler(a1, a2))
  {
    C3DTextureSamplerGetDefault(0, v8);
  }

  MTLTexture = C3DEffectSlotGetMTLTexture(a1, v8);
  if (MTLTexture)
  {
    *a2 = SCNMTLTextureToC3DTextureType(MTLTexture);
    result = C3DEffectSlotIsOpaque(a1, v11);
    *a3 = result ^ 1;
    *a4 = 0;
    return result;
  }

  ImageProxy = C3DEffectSlotGetImageProxy(a1, v10);
  if (ImageProxy)
  {
    v15 = ImageProxy;
    *a2 = C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(1u);
    *a3 = C3DImageProxyIsOpaque(v15, v16) ^ 1;
    result = C3DImageProxyIsPremultiplied(v15, v17);
    *a4 = result;
    return result;
  }

  result = C3DEffectSlotGetImage(a1, v14);
  if (result)
  {
    v19 = result;
    result = C3DImageIsValid(result, v18);
    if (result)
    {
      Attribute = C3DImageGetAttribute(v19, @"isAttachment");
      if (Attribute)
      {
        result = CFBooleanGetValue(Attribute);
        if (result)
        {
          *a2 = 2;
          *a3 = 1;
          return result;
        }
      }

      TextureOptions = C3DEffectSlotGetTextureOptions(a1);
      if (C3DMetalIsUsed() && (TextureOptions & 2) != 0 && C3DImageIsConvertibleToCubeMap(v19, v22))
      {
        v23 = 4;
      }

      else
      {
        ImageType = C3DImageGetImageType(v19, v22);
        if (ImageType > 7)
        {
LABEL_20:
          result = C3DImageHasAlpha(v19, v22);
          *a3 = result;
          if (result)
          {
            result = C3DImageNeedsUnpremultiply(v19, v25);
            v26 = result ^ 1;
          }

          else
          {
            v26 = 0;
          }

          *a4 = v26;
          return result;
        }

        v23 = dword_21C2A1BC4[ImageType];
      }

      *a2 = v23;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetTextureOptions(uint64_t a1)
{
  v1 = *(a1 + 50);
  v2 = v1 - 24;
  if (v1 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == 26)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (v2 < 2)
  {
    v4 = 6;
  }

  if ((*(a1 + 48) & 0x400) != 0)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

void C3DEffectSlotSetPrecomputedLightingEnvironment(uint64_t result, CFTypeRef cf)
{
  if (!result)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 50) == 25 && (cf || *(result + 48) == 4))
  {
    *(result + 48) = *(result + 48) & 0xFF00 | 4;
    v11 = *(result + 40);
    if (v11 != cf)
    {
      if (v11)
      {
        CFRelease(v11);
        *(result + 40) = 0;
      }

      if (cf)
      {
        v12 = CFRetain(cf);
      }

      else
      {
        v12 = 0;
      }

      *(result + 40) = v12;
      CommonProfile = _C3DEffectSlotGetCommonProfile(result, cf);
      if (CommonProfile)
      {
        *(CommonProfile + 194) &= 0xE000FFFF;
      }

      __PostParentDidChangeNotification(result, 0, 1);
    }
  }
}

uint64_t C3DEffectSlotGetTextureComponents(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 48) >> 11) & 0xF;
}

void C3DEffectSlotSetTextureComponents(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 48);
  if (((v12 >> 11) & 0xF) != v2)
  {
    *(result + 48) = v12 & 0x87FF | ((v2 & 0xF) << 11);
    __PostParentDidChangeNotification(result, 0, 0);
  }
}

uint64_t C3DEffectSlotGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DEffectSlotGetTypeID_onceToken != -1)
  {
    C3DEffectSlotCreate_cold_1();
  }

  return C3DEffectSlotGetTypeID_typeID;
}

double __C3DEffectSlotGetTypeID_block_invoke()
{
  C3DEffectSlotGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DEffectSlotContextClassAnimatable;
  xmmword_2817419C8 = kC3DC3DEffectSlotContextClassAnimatable;
  qword_2817419D8 = _C3DEffectSlotCopyInstanceVariables;
  return result;
}

void C3DEffectSlotSetSRGB(uint64_t result, int a2)
{
  v2 = *(result + 48);
  if (((((v2 & 0x400) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v3 = 1024;
    }

    else
    {
      v3 = 0;
    }

    *(result + 48) = v2 & 0xFBFF | v3;
    __PostParentDidChangeNotification(result, 0, 0);
  }
}

uint64_t C3DEffectSlotGetDefaultTextureOptions(int a1, int a2)
{
  if (a1 == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 26)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 - 24) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  return v4 | a2 ^ 1u;
}

char *C3DEffectPropertyGetNameStr(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_2782FDE10[a1];
  }
}

void _C3DEffectCommonProfileCFFinalize(void *a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationProfileWillDie", a1, 0, 1u);
  if (a1)
  {
    v4 = a1[4];
    if (v4)
    {
      v4[10] = 0;
    }

    v5 = a1[5];
    if (v5)
    {
      v5[10] = 0;
    }

    v6 = a1[6];
    if (v6)
    {
      *(v6 + 80) = 0;
    }

    v7 = a1[7];
    if (v7)
    {
      *(v7 + 80) = 0;
    }

    v8 = a1[8];
    if (v8)
    {
      *(v8 + 80) = 0;
    }

    v9 = a1[9];
    if (v9)
    {
      *(v9 + 80) = 0;
    }

    v10 = a1[10];
    if (v10)
    {
      *(v10 + 80) = 0;
    }

    v11 = a1[11];
    if (v11)
    {
      *(v11 + 80) = 0;
    }

    v12 = a1[13];
    if (v12)
    {
      *(v12 + 80) = 0;
    }

    v13 = a1[12];
    if (v13)
    {
      *(v13 + 80) = 0;
    }

    v14 = a1[14];
    if (v14)
    {
      *(v14 + 80) = 0;
    }

    v15 = a1[15];
    if (v15)
    {
      *(v15 + 80) = 0;
    }

    v16 = a1[16];
    if (v16)
    {
      *(v16 + 80) = 0;
    }

    v17 = a1[17];
    if (v17)
    {
      *(v17 + 80) = 0;
    }

    v18 = a1[18];
    if (v18)
    {
      *(v18 + 80) = 0;
    }

    v19 = a1[19];
    if (v19)
    {
      *(v19 + 80) = 0;
    }

    if (v4)
    {
      CFRelease(v4);
      a1[4] = 0;
      v5 = a1[5];
    }

    if (v5)
    {
      CFRelease(v5);
      a1[5] = 0;
    }

    v20 = a1[6];
    if (v20)
    {
      CFRelease(v20);
      a1[6] = 0;
    }

    v21 = a1[7];
    if (v21)
    {
      CFRelease(v21);
      a1[7] = 0;
    }

    v22 = a1[8];
    if (v22)
    {
      CFRelease(v22);
      a1[8] = 0;
    }

    v23 = a1[9];
    if (v23)
    {
      CFRelease(v23);
      a1[9] = 0;
    }

    v24 = a1[10];
    if (v24)
    {
      CFRelease(v24);
      a1[10] = 0;
    }

    v25 = a1[11];
    if (v25)
    {
      CFRelease(v25);
      a1[11] = 0;
    }

    v26 = a1[13];
    if (v26)
    {
      CFRelease(v26);
      a1[13] = 0;
    }

    v27 = a1[12];
    if (v27)
    {
      CFRelease(v27);
      a1[12] = 0;
    }

    v28 = a1[14];
    if (v28)
    {
      CFRelease(v28);
      a1[14] = 0;
    }

    v29 = a1[15];
    if (v29)
    {
      CFRelease(v29);
      a1[15] = 0;
    }

    v30 = a1[17];
    if (v30)
    {
      CFRelease(v30);
      a1[17] = 0;
    }

    v31 = a1[18];
    if (v31)
    {
      CFRelease(v31);
      a1[18] = 0;
    }

    v32 = a1[19];
    if (v32)
    {
      CFRelease(v32);
      a1[19] = 0;
    }

    v33 = a1[16];
    if (v33)
    {
      CFRelease(v33);
      a1[16] = 0;
    }
  }
}

__CFString *_C3DEffectCommonProfileCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DEffectCommonProfile %p :", a1);
  LightingModel = C3DEffectCommonProfileGetLightingModel(a1, v3);
  Description = C3DLightingModelGetDescription(LightingModel);
  CFStringAppendFormat(Mutable, 0, @" lightingModel:%@", Description);
  IsPerPixelLit = C3DEffectCommonProfileIsPerPixelLit(a1, v6);
  CFStringAppendFormat(Mutable, 0, @" perPixelLit:%d", IsPerPixelLit);
  IsOpaque = C3DEffectCommonProfileIsOpaque(a1, v8);
  CFStringAppendFormat(Mutable, 0, @" isOpaque:%d", IsOpaque);
  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(a1, v10);
  CFStringAppendFormat(Mutable, 0, @" transparencyMode:%d", TransparencyMode);
  for (i = 0; i != 21; ++i)
  {
    v14 = C3DEffectCommonProfileGetLightingModel(a1, v12);
    if (C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(v14, i))
    {
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, i, 0);
      if (EffectSlot)
      {
        v16 = EffectSlot;
        v17 = _C3DEffectCommonProfileCFCopyDebugDescription_propertyNames[i];
        HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot, v12);
        CFStringAppendFormat(Mutable, 0, @"[%@] texture:%d xform:%d", v17, HasImageOrTexture, *(v16 + 64) != 0);
      }
    }
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DEffectCommonProfileInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  IsDictionary = C3DCFTypeIsDictionary(a2);
  if (IsDictionary)
  {
    if (!a2 && (v25 = scn_default_log(IsDictionary, v24), IsDictionary = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT), IsDictionary))
    {
      _C3DTextureSamplerInitWithPropertyList_cold_4(v25, v24, v26, v27, v28, v29, v30, v31);
      if (!@"function")
      {
LABEL_10:
        v32 = scn_default_log(IsDictionary, v24);
        IsDictionary = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
        if (IsDictionary)
        {
          _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v32, v24, v33, v34, v35, v36, v37, v38);
        }
      }
    }

    else if (!@"function")
    {
      goto LABEL_10;
    }

    if (!a1)
    {
      v39 = scn_default_log(IsDictionary, v24);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    Value = CFDictionaryGetValue(a2, @"function");
    if (Value)
    {
      v49 = C3DEffectCommonProfileLightingModelForName(Value);
      C3DEffectCommonProfileSetLightingModel(a1, v49);
      v50 = 1;
    }

    else
    {
      v60 = scn_default_log(0, v48);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        _C3DEffectCommonProfileInitWithPropertyList_cold_7();
      }

      v50 = 0;
    }

    v61 = __DeserializeColor(a1, a2, @"emissionColor") & v50;
    v62 = __DeserializeColor(a1, a2, @"ambientColor");
    v63 = v61 & v62 & __DeserializeColor(a1, a2, @"diffuseColor");
    v64 = __DeserializeColor(a1, a2, @"filterColor");
    v65 = v63 & v64 & __DeserializeColor(a1, a2, @"specularColor");
    valuePtr = 0.0;
    v66 = CFDictionaryGetValue(a3, @"versionNumber");
    if (v66)
    {
      CFNumberGetValue(v66, kCFNumberDoubleType, &valuePtr);
    }

    if (valuePtr >= 0.12)
    {
      v65 &= __DeserializeColor(a1, a2, @"reflectiveColor");
    }

    v67 = __DeserializeColor(a1, a2, @"transparentColor");
    v68 = v67 & __DeserializeColor(a1, a2, @"normalColor");
    v69 = v68 & __DeserializeUVSet(a1, a2, @"emissionUVSet");
    v70 = v69 & __DeserializeUVSet(a1, a2, @"ambientUVSet") & v65;
    v71 = __DeserializeUVSet(a1, a2, @"diffuseUVSet");
    v72 = v71 & __DeserializeUVSet(a1, a2, @"filterUVSet");
    v73 = v72 & __DeserializeUVSet(a1, a2, @"specularUVSet");
    v74 = v73 & __DeserializeUVSet(a1, a2, @"reflectiveUVSet");
    v75 = v70 & v74 & __DeserializeUVSet(a1, a2, @"transparentUVSet");
    v76 = __DeserializeUVSet(a1, a2, @"normalUVSet");
    v77 = v76 & __DeserializeUVSet(a1, a2, @"shininessUVSet");
    v78 = v77 & __DeserializeTextureSampler(a1, a2, @"emissionTextureSampler");
    v79 = v78 & __DeserializeTextureSampler(a1, a2, @"ambientTextureSampler");
    v80 = v79 & __DeserializeTextureSampler(a1, a2, @"diffuseTextureSampler");
    v81 = v75 & v80 & __DeserializeTextureSampler(a1, a2, @"specularTextureSampler");
    v82 = __DeserializeTextureSampler(a1, a2, @"reflectiveTextureSampler");
    v83 = v82 & __DeserializeTextureSampler(a1, a2, @"transparentTextureSampler");
    v84 = v83 & __DeserializeTextureSampler(a1, a2, @"filterTextureSampler");
    v85 = v84 & __DeserializeTextureSampler(a1, a2, @"normalTextureSampler");
    v86 = v85 & __DeserializeTextureSampler(a1, a2, @"shininessTextureSampler");
    v87 = v86 & __DeserializeFloat(a1, a2, @"shininess");
    v88 = v81 & v87 & __DeserializeFloat(a1, a2, @"reflectivity");
    v59 = v88 & __DeserializeFloat(a1, a2, @"transparency");
    if (__DeserializeFloat(a1, a2, @"fresnelExponent"))
    {
      LOBYTE(v59) = __DeserializeFloat(a1, a2, @"indexOfRefraction") & v59;
    }

    v89 = CFDictionaryGetValue(a2, @"ambientIntensity");
    if (v89)
    {
      v133 = 0;
      CFNumberGetValue(v89, kCFNumberFloatType, &v133);
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, 1, 1);
      *(EffectSlot + 72) = v133;
    }

    v91 = CFDictionaryGetValue(a2, @"diffuseIntensity");
    if (v91)
    {
      v133 = 0;
      CFNumberGetValue(v91, kCFNumberFloatType, &v133);
      v92 = C3DEffectCommonProfileGetEffectSlot(a1, 2, 1);
      *(v92 + 72) = v133;
    }

    v93 = CFDictionaryGetValue(a2, @"specularIntensity");
    if (v93)
    {
      v133 = 0;
      CFNumberGetValue(v93, kCFNumberFloatType, &v133);
      v94 = C3DEffectCommonProfileGetEffectSlot(a1, 3, 1);
      *(v94 + 72) = v133;
    }

    v95 = CFDictionaryGetValue(a2, @"emissionIntensity");
    if (v95)
    {
      v133 = 0;
      CFNumberGetValue(v95, kCFNumberFloatType, &v133);
      v96 = C3DEffectCommonProfileGetEffectSlot(a1, 0, 1);
      *(v96 + 72) = v133;
    }

    v97 = CFDictionaryGetValue(a2, @"multiplyIntensity");
    if (v97)
    {
      v133 = 0;
      CFNumberGetValue(v97, kCFNumberFloatType, &v133);
      v98 = C3DEffectCommonProfileGetEffectSlot(a1, 6, 1);
      *(v98 + 72) = v133;
    }

    v99 = CFDictionaryGetValue(a2, @"transparentIntensity");
    if (v99)
    {
      v133 = 0;
      CFNumberGetValue(v99, kCFNumberFloatType, &v133);
      v100 = C3DEffectCommonProfileGetEffectSlot(a1, 5, 1);
      *(v100 + 72) = v133;
    }

    v101 = CFDictionaryGetValue(a2, @"normalIntensity");
    if (v101)
    {
      v133 = 0;
      CFNumberGetValue(v101, kCFNumberFloatType, &v133);
      v102 = C3DEffectCommonProfileGetEffectSlot(a1, 7, 1);
      *(v102 + 72) = v133;
    }

    v103 = CFDictionaryGetValue(a2, @"ambientOcclusionIntensity");
    if (v103)
    {
      v133 = 0;
      CFNumberGetValue(v103, kCFNumberFloatType, &v133);
      v104 = C3DEffectCommonProfileGetEffectSlot(a1, 8, 1);
      *(v104 + 72) = v133;
    }

    v105 = CFDictionaryGetValue(a2, @"selfIlluminationIntensity");
    if (v105)
    {
      v133 = 0;
      CFNumberGetValue(v105, kCFNumberFloatType, &v133);
      v106 = C3DEffectCommonProfileGetEffectSlot(a1, 9, 1);
      *(v106 + 72) = v133;
    }

    v107 = CFDictionaryGetValue(a2, @"metalness");
    if (v107)
    {
      v133 = 0;
      CFNumberGetValue(v107, kCFNumberFloatType, &v133);
      v108 = C3DEffectCommonProfileGetEffectSlot(a1, 10, 1);
      *(v108 + 72) = v133;
    }

    v109 = CFDictionaryGetValue(a2, @"roughness");
    if (v109)
    {
      v133 = 0;
      CFNumberGetValue(v109, kCFNumberFloatType, &v133);
      v110 = C3DEffectCommonProfileGetEffectSlot(a1, 11, 1);
      *(v110 + 72) = v133;
    }

    v111 = CFDictionaryGetValue(a2, @"displacementIntensity");
    if (v111)
    {
      v133 = 0;
      CFNumberGetValue(v111, kCFNumberFloatType, &v133);
      v112 = C3DEffectCommonProfileGetEffectSlot(a1, 15, 1);
      *(v112 + 72) = v133;
    }

    v113 = CFDictionaryGetValue(a2, @"reflectiveIntensity");
    if (v113)
    {
      v133 = 0;
      CFNumberGetValue(v113, kCFNumberFloatType, &v133);
      v114 = C3DEffectCommonProfileGetEffectSlot(a1, 4, 1);
      *(v114 + 72) = v133;
    }

    v115 = CFDictionaryGetValue(a2, @"double sided");
    v116 = CFDictionaryGetValue(a2, @"cullMode");
    v117 = CFDictionaryGetValue(a2, @"avoidsOverlighting");
    v118 = CFDictionaryGetValue(a2, @"locksAmbientWithDiffuse");
    v119 = CFDictionaryGetValue(a2, @"litPerPixel");
    v121 = v119;
    v122 = *(a1 + 16);
    v123 = MEMORY[0x277CBED28];
    if (v122)
    {
      if (v115)
      {
        v124 = CFEqual(v115, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        v124 = 0;
      }

      C3DMaterialSetDoubleSided(v122, v124);
      v125 = *(a1 + 16);
      if (v116)
      {
        v126 = CFEqual(v116, @"cullFront") != 0;
      }

      else
      {
        v126 = 0;
      }

      C3DMaterialSetCullMode(v125, v126);
    }

    if (v117)
    {
      v119 = CFEqual(v117, *v123);
      v127 = v119 != 0;
    }

    else
    {
      v127 = 0;
    }

    *(a1 + 194) = *(a1 + 194) & 0xFFFFFFFE | v127;
    if (v118)
    {
      v128 = CFEqual(v118, *v123) != 0;
    }

    else
    {
      v128 = C3DWasLinkedBeforeMajorOSYear2014(v119, v120) ^ 1;
    }

    *(a1 + 193) = v128;
    if (v121)
    {
      v129 = CFEqual(v121, *v123) != 0;
      C3DEffectCommonProfileSetPerPixelLit(a1, v129);
    }

    v130 = CFDictionaryGetValue(a2, @"transparencyMode");
    if (v130)
    {
      v131 = CFEqual(v130, @"A_ONE") == 0;
    }

    else
    {
      v131 = 0;
    }

    C3DEffectCommonProfileSetTransparencyMode(a1, v131);
    return v59 & 1;
  }

  v51 = scn_default_log(IsDictionary, v24);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    _C3DEffectCommonProfileInitWithPropertyList_cold_3(v51, v52, v53, v54, v55, v56, v57, v58);
  }

  LOBYTE(v59) = 0;
  return v59 & 1;
}

__CFDictionary *_C3DEffectCommonProfileCopyPropertyList(uint64_t *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v112[1] + 4) = *MEMORY[0x277D85DE8];
  v106[0] = @"emissionColor";
  v106[1] = @"ambientColor";
  v106[2] = @"diffuseColor";
  v106[3] = @"specularColor";
  v106[4] = @"reflectiveColor";
  v106[5] = @"transparentColor";
  v106[6] = @"filterColor";
  v106[7] = @"normalColor";
  v105[0] = @"emissionImageID";
  v105[1] = @"ambientImageID";
  v105[2] = @"diffuseImageID";
  v105[3] = @"specularImageID";
  v105[4] = @"reflectiveImageID";
  v105[5] = @"transparentImageID";
  v105[6] = @"filterImageID";
  v105[7] = @"normalImageID";
  v105[8] = @"shininessImageID";
  v104[0] = @"emissionUVSet";
  v104[1] = @"ambientUVSet";
  v104[2] = @"diffuseUVSet";
  v104[3] = @"specularUVSet";
  v104[4] = @"reflectiveUVSet";
  v104[5] = @"transparentUVSet";
  v104[6] = @"filterUVSet";
  v104[7] = @"normalUVSet";
  v104[8] = @"shininessUVSet";
  v103[0] = @"shininess";
  v103[1] = @"reflectivity";
  v103[2] = @"transparency";
  v103[3] = @"indexOfRefraction";
  v103[4] = @"fresnelExponent";
  v102[0] = @"emissionTextureSampler";
  v102[1] = @"ambientTextureSampler";
  v102[2] = @"diffuseTextureSampler";
  v102[3] = @"specularTextureSampler";
  v102[4] = @"reflectiveTextureSampler";
  v102[5] = @"transparentTextureSampler";
  v102[6] = @"filterTextureSampler";
  v102[7] = @"normalTextureSampler";
  v102[8] = @"shininessTextureSampler";
  if (!cf)
  {
    v6 = scn_default_log(0, a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v26 = Mutable;
    v27 = cf[2];
    if (v27)
    {
      if (C3DMaterialIsDoubleSided(cf[2], v25))
      {
        CFDictionarySetValue(v26, @"double sided", *MEMORY[0x277CBED28]);
      }

      CullMode = C3DMaterialGetCullMode(v27, v28);
      v30 = kC3DCullBackValue;
      if (CullMode)
      {
        v30 = kC3DCullFrontValue;
      }

      CFDictionarySetValue(v26, @"cullMode", *v30);
    }

    if (*(cf + 194))
    {
      CFDictionarySetValue(v26, @"avoidsOverlighting", *MEMORY[0x277CBED28]);
    }

    if (*(cf + 193) == 1)
    {
      CFDictionarySetValue(v26, @"locksAmbientWithDiffuse", *MEMORY[0x277CBED28]);
    }

    if ((*(cf + 194) & 2) != 0)
    {
      v31 = MEMORY[0x277CBED28];
      if (!*(cf + 192))
      {
        v31 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v26, @"litPerPixel", *v31);
    }

    LightingModel = C3DEffectCommonProfileGetLightingModel(cf, v25);
    v34 = LightingModel;
    if (!@"function")
    {
      v35 = scn_default_log(LightingModel, v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    v43 = C3DEffectCommonProfileNameForLightingModel(v34);
    if (v43)
    {
      CFDictionarySetValue(v26, @"function", v43);
    }

    v99 = v43;
    v44 = 0;
    while (1)
    {
      v45 = v106[v44];
      Property = __GetProperty(v45);
      if (Property != -1)
      {
        break;
      }

LABEL_40:
      if (++v44 == 8)
      {
        for (i = 0; i != 9; ++i)
        {
          v59 = v105[i];
          v60 = __GetProperty(v59);
          if (v60 != -1)
          {
            v61 = v60;
            Image = C3DEffectCommonProfileGetImage(cf, v60);
            if (Image)
            {
              v64 = Image;
              if (!v59)
              {
                v65 = scn_default_log(Image, v63);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
                {
                  _C3DEffectCommonProfileCopyPropertyList_cold_4(v111, v112, v65);
                }
              }

              EntryID = C3DLibraryGetEntryID(a2, v64);
              if (EntryID)
              {
                v68 = EntryID;
                if (EntryID >= 0x7FFFFFFF)
                {
                  v69 = scn_default_log(EntryID, v67);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                  {
                    _C3DEffectCommonProfileCopyPropertyList_cold_6(v109, &v110, v69);
                  }
                }

                cStr[0].i32[0] = v68;
                v70 = CFGetAllocator(v26);
                v71 = CFNumberCreate(v70, kCFNumberIntType, cStr);
                if (v71)
                {
                  v72 = v71;
                  CFDictionarySetValue(v26, v59, v71);
                  CFRelease(v72);
                }
              }
            }

            EffectSlot = C3DEffectCommonProfileGetEffectSlot(cf, v61, 0);
            if (EffectSlot)
            {
              v74 = *(EffectSlot + 76);
              if (v74.i32[0] == -2)
              {
                if (*(EffectSlot + 50) == 4)
                {
                  v74 = -1;
                }

                else
                {
                  v74 = 0;
                }
              }

              cStr[0] = v74;
              if (*&v74 != -1)
              {
                v75 = CFNumberCreate(0, kCFNumberLongType, cStr);
                CFDictionarySetValue(v26, v104[i], v75);
                CFRelease(v75);
              }
            }
          }
        }

        for (j = 0; j != 9; ++j)
        {
          v77 = v102[j];
          v78 = __GetProperty(v77);
          if (v78 != -1)
          {
            TextureSampler = C3DEffectCommonProfileGetTextureSampler(cf, v78);
            if (TextureSampler)
            {
              v81 = TextureSampler;
              if (!v77)
              {
                v82 = scn_default_log(TextureSampler, v80);
                if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
                {
                  _C3DEffectCommonProfileCopyPropertyList_cold_4(cStr, (cStr + 4), v82);
                }
              }

              v83 = C3DCopyPropertyList(v81, 0, 0, a4);
              if (v83)
              {
                v84 = v83;
                CFDictionarySetValue(v26, v77, v83);
                CFRelease(v84);
              }
            }
          }
        }

        for (k = 0; k != 5; ++k)
        {
          v86 = v103[k];
          v87 = __GetProperty(v86);
          if (v87 != -1)
          {
            FloatProperty = C3DEffectCommonProfileGetFloatProperty(cf, v87);
            C3DSerializeFloatAsNumber(v26, v86, FloatProperty);
          }
        }

        if (*(cf + 180))
        {
          v89 = kC3DTransparency_RGB_ZEROValue;
        }

        else
        {
          v89 = kC3DTransparency_A_ONEValue;
        }

        CFDictionarySetValue(v26, @"transparencyMode", *v89);
        if (!v99)
        {
          CFRelease(v26);
          return 0;
        }

        return v26;
      }
    }

    v47 = Property;
    *cStr[0].f32 = *C3DEffectCommonProfileGetColor(cf, Property);
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(cStr, v48);
    }

    v49 = C3DColor4CopyPropertyList(cStr);
    v51 = v49;
    if (!v45 && (v52 = scn_default_log(v49, v50), os_log_type_enabled(v52, OS_LOG_TYPE_FAULT)))
    {
      _C3DEffectCommonProfileCopyPropertyList_cold_4(v107, &v108, v52);
      if (!v51)
      {
        goto LABEL_34;
      }
    }

    else if (!v51)
    {
LABEL_34:
      v53 = C3DEffectCommonProfileGetEffectSlot(cf, v47, 0);
      if (v53)
      {
        v54 = *(v53 + 72);
        if (v54 != 1.0)
        {
          if (v47 == 6)
          {
            strcpy(cStr, "multiplyIntensity");
          }

          else
          {
            NameStr = C3DEffectPropertyGetNameStr(v47);
            v56 = strlen(NameStr);
            __strcpy_chk();
            strcpy(cStr + v56, "Intensity");
          }

          v57 = CFStringCreateWithCString(0, cStr, 0x8000100u);
          C3DSerializeFloatAsNumber(v26, v57, v54);
          CFRelease(v57);
        }
      }

      goto LABEL_40;
    }

    CFDictionarySetValue(v26, v45, v51);
    CFRelease(v51);
    goto LABEL_34;
  }

  v90 = scn_default_log(0, v25);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v90, v91, v92, v93, v94, v95, v96, v97);
  }

  return 0;
}

uint64_t _C3DEffectCommonProfileFinalizeDeserialization(_BOOL8 a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = __DeserializeImage(a1, a2, a3, @"emissionImageID", a4);
  if (result)
  {
    result = __DeserializeImage(a1, a2, a3, @"ambientImageID", a4);
    if (result)
    {
      result = __DeserializeImage(a1, a2, a3, @"diffuseImageID", a4);
      if (result)
      {
        result = __DeserializeImage(a1, a2, a3, @"specularImageID", a4);
        if (result)
        {
          result = __DeserializeImage(a1, a2, a3, @"reflectiveImageID", a4);
          if (result)
          {
            result = __DeserializeImage(a1, a2, a3, @"transparentImageID", a4);
            if (result)
            {
              result = __DeserializeImage(a1, a2, a3, @"normalImageID", a4);
              if (result)
              {
                result = __DeserializeImage(a1, a2, a3, @"shininessImageID", a4);
                if (result)
                {
                  return __DeserializeImage(a1, a2, a3, @"filterImageID", a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const void *_C3DEffectCommonProfileFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = 0;
  do
  {
    result = C3DEffectCommonProfileGetImage(a1, v14);
    if (result)
    {
      v16 = result;
      C3DLibraryAddEntry(a2, result);
      result = C3DFillLibraryForSerialization(v16, a2, a3);
    }

    v17 = v14++;
  }

  while (v17 < 0x14);
  return result;
}

BOOL __DeserializeColor(_BOOL8 AnimationNodeForKey_cold_3, CFDictionaryRef theDict, const __CFString *key)
{
  v5 = AnimationNodeForKey_cold_3;
  v37[0] = 0;
  v37[1] = 0;
  if (!theDict && (v6 = scn_default_log(AnimationNodeForKey_cold_3, 0), AnimationNodeForKey_cold_3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, theDict, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
  AnimationNodeForKey_cold_3 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_3)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, theDict, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!v5)
  {
    v20 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  v29 = C3DColor4InitWithPropertyList(v37, Value, 0, 0);
  if (!v29)
  {
    v35 = scn_default_log(v29, v30);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeColor_cold_4();
    return 0;
  }

  if (C3DLinearRenderingIsEnabled())
  {
    C3DColor4ConvertToLinear(v37, v31);
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetColor(v5, Property, v37);
    return 1;
  }

  v36 = scn_default_log(Property, v33);
  result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeColor_cold_5();
    return 0;
  }

  return result;
}

BOOL __DeserializeUVSet(_BOOL8 AnimationNodeForKey_cold_3, CFDictionaryRef theDict, const __CFString *key)
{
  v5 = AnimationNodeForKey_cold_3;
  valuePtr = 0;
  if (!theDict && (v6 = scn_default_log(AnimationNodeForKey_cold_3, 0), AnimationNodeForKey_cold_3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, theDict, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
  AnimationNodeForKey_cold_3 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_3)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, theDict, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!v5)
  {
    v20 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  v29 = CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  if (!v29)
  {
    v34 = scn_default_log(v29, v30);
    result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeUVSet_cold_5();
    return 0;
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetUVSet(v5, Property, valuePtr);
    return 1;
  }

  v35 = scn_default_log(Property, v32);
  result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeUVSet_cold_4();
    return 0;
  }

  return result;
}

uint64_t __DeserializeTextureSampler(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  Property = __GetProperty(a3);
  v8 = Property;
  if (!a2 && (v9 = scn_default_log(Property, v7), Property = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT), Property))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v9, v7, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log(Property, v7);
  Property = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (Property)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v16, v7, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a1)
  {
    v23 = scn_default_log(Property, v7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  Value = CFDictionaryGetValue(a2, a3);
  if (!Value)
  {
    return 1;
  }

  v32 = Value;
  v33 = C3DTextureSamplerCreate();
  v34 = C3DInitWithPropertyList(v33, v32, 0, 0);
  if (v34)
  {
    C3DEffectCommonProfileSetTextureSampler(a1, v8, v33);
    v36 = 1;
  }

  else
  {
    v37 = scn_default_log(v34, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __DeserializeTextureSampler_cold_4();
    }

    v36 = 0;
  }

  CFRelease(v33);
  return v36;
}

uint64_t __DeserializeFloat(_BOOL8 AnimationNodeForKey_cold_3, CFDictionaryRef theDict, const __CFString *key)
{
  v5 = AnimationNodeForKey_cold_3;
  valuePtr = 0.0;
  if (!theDict && (v6 = scn_default_log(AnimationNodeForKey_cold_3, 0), AnimationNodeForKey_cold_3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, theDict, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
  AnimationNodeForKey_cold_3 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_3)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, theDict, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!v5)
  {
    v20 = scn_default_log(AnimationNodeForKey_cold_3, theDict);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  result = CFDictionaryGetValue(theDict, key);
  if (!result)
  {
    return result;
  }

  Value = CFNumberGetValue(result, kCFNumberFloatType, &valuePtr);
  if (!Value)
  {
    v33 = scn_default_log(Value, v30);
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeUVSet_cold_5();
    return 0;
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetFloatProperty(v5, Property, valuePtr);
    return 1;
  }

  v34 = scn_default_log(Property, v32);
  result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeUVSet_cold_4();
    return 0;
  }

  return result;
}

uint64_t __GetProperty(const __CFString *a1)
{
  v4.length = CFStringGetLength(@"emission");
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"emission", v4, 0))
  {
    v5.length = CFStringGetLength(@"ambient");
    v5.location = 0;
    if (CFStringCompareWithOptions(a1, @"ambient", v5, 0))
    {
      v6.length = CFStringGetLength(@"diffuse");
      v6.location = 0;
      if (CFStringCompareWithOptions(a1, @"diffuse", v6, 0))
      {
        v7.length = CFStringGetLength(@"specular");
        v7.location = 0;
        if (CFStringCompareWithOptions(a1, @"specular", v7, 0))
        {
          v8.length = CFStringGetLength(@"reflective");
          v8.location = 0;
          if (CFStringCompareWithOptions(a1, @"reflective", v8, 0))
          {
            v9.length = CFStringGetLength(@"transparent");
            v9.location = 0;
            if (CFStringCompareWithOptions(a1, @"transparent", v9, 0))
            {
              v10.length = CFStringGetLength(@"filter");
              v10.location = 0;
              if (CFStringCompareWithOptions(a1, @"filter", v10, 0))
              {
                v11.length = CFStringGetLength(@"normal");
                v11.location = 0;
                if (CFStringCompareWithOptions(a1, @"normal", v11, 0))
                {
                  v12.length = CFStringGetLength(@"ambientOcclusion");
                  v12.location = 0;
                  if (CFStringCompareWithOptions(a1, @"ambientOcclusion", v12, 0))
                  {
                    v13.length = CFStringGetLength(@"selfIllumination");
                    v13.location = 0;
                    if (CFStringCompareWithOptions(a1, @"selfIllumination", v13, 0))
                    {
                      v14.length = CFStringGetLength(@"shininess");
                      v14.location = 0;
                      if (CFStringCompareWithOptions(a1, @"shininess", v14, 0))
                      {
                        if (CFStringCompare(a1, @"reflectivity", 0) && CFStringCompare(a1, @"reflectivity", 0))
                        {
                          if (CFStringCompare(a1, @"transparency", 0))
                          {
                            if (CFStringCompare(a1, @"indexOfRefraction", 0))
                            {
                              if (CFStringCompare(a1, @"fresnelExponent", 0))
                              {
                                return -1;
                              }

                              else
                              {
                                return 20;
                              }
                            }

                            else
                            {
                              return 19;
                            }
                          }

                          else
                          {
                            return 18;
                          }
                        }

                        else
                        {
                          return 17;
                        }
                      }

                      else
                      {
                        return 16;
                      }
                    }

                    else
                    {
                      return 9;
                    }
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __DeserializeImage(_BOOL8 AnimationNodeForKey_cold_3, uint64_t a2, CFDictionaryRef theDict, const __CFString *key, CFErrorRef *a5)
{
  v9 = AnimationNodeForKey_cold_3;
  if (!theDict && (v10 = scn_default_log(AnimationNodeForKey_cold_3, a2), AnimationNodeForKey_cold_3 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v10, a2, v11, v12, v13, v14, v15, v16);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(AnimationNodeForKey_cold_3, a2);
  AnimationNodeForKey_cold_3 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_3)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!v9)
  {
    v24 = scn_default_log(AnimationNodeForKey_cold_3, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  valuePtr = 0;
  v33 = CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  if (!v33)
  {
    v52 = scn_default_log(v33, v34);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      __DeserializeImage_cold_6();
      if (!a5)
      {
        return 1;
      }
    }

    else if (!a5)
    {
      return 1;
    }

    if (!*a5)
    {
      *a5 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    return 1;
  }

  v35 = valuePtr;
  if (!valuePtr)
  {
    return 1;
  }

  TypeID = C3DImageGetTypeID(v33, v34);
  RemappedID = C3DLibraryGetRemappedID(a2, v35, TypeID);
  v39 = RemappedID;
  if (!RemappedID)
  {
    v40 = scn_default_log(0, v38);
    RemappedID = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
    if (RemappedID)
    {
      __DeserializeImage_cold_4(v40, v38, v41, v42, v43, v44, v45, v46);
    }
  }

  v47 = C3DImageGetTypeID(RemappedID, v38);
  Entry = C3DLibraryGetEntry(a2, v47, v39);
  if (Entry)
  {
    v50 = Entry;
    Property = __GetProperty(key);
    if (Property != -1)
    {
      C3DEffectCommonProfileSetImage(v9, Property, v50);
    }

    return 1;
  }

  v54 = scn_default_log(0, v49);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    __DeserializeImage_cold_5(v54);
    if (!a5)
    {
      return 0;
    }
  }

  else if (!a5)
  {
    return 0;
  }

  if (*a5)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a5 = MalformedDocumentError;
  return result;
}

__CFArray *_C3DEffectCommonProfileCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 32;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v5, @"name", @"emission");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 40;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v9, @"name", @"ambient");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = MEMORY[0x277CBF150];
  v14 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 48;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v14, @"name", @"diffuse");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 56;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v18, @"name", @"specular");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 64;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v22, @"name", @"reflective");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 72;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v26, @"name", @"transparent");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = MEMORY[0x277CBF138];
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 80;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v31, @"name", @"filter");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = v30;
  v36 = MEMORY[0x277CBF150];
  v37 = CFDictionaryCreateMutable(0, 4, v35, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 88;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v40 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v37, @"name", @"normal");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v36);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 112;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v41, @"name", @"metalness");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 120;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v45, @"name", @"roughness");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = MEMORY[0x277CBF150];
  v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 128;
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v52 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v53 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v50, @"name", @"displacement");
  CFDictionarySetValue(v50, @"type", v51);
  CFDictionarySetValue(v50, @"address", v53);
  CFDictionarySetValue(v50, @"semantic", v52);
  CFArrayAppendValue(Mutable, v50);
  CFRelease(v52);
  CFRelease(v50);
  CFRelease(v53);
  CFRelease(v51);
  v54 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v49);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 136;
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v56 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v57 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v54, @"name", @"clearCoat");
  CFDictionarySetValue(v54, @"type", v55);
  CFDictionarySetValue(v54, @"address", v57);
  CFDictionarySetValue(v54, @"semantic", v56);
  CFArrayAppendValue(Mutable, v54);
  CFRelease(v56);
  CFRelease(v54);
  CFRelease(v57);
  CFRelease(v55);
  v58 = MEMORY[0x277CBF138];
  v59 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 144;
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v62 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v59, @"name", @"clearCoatRoughness");
  CFDictionarySetValue(v59, @"type", v60);
  CFDictionarySetValue(v59, @"address", v62);
  CFDictionarySetValue(v59, @"semantic", v61);
  CFArrayAppendValue(Mutable, v59);
  CFRelease(v61);
  CFRelease(v59);
  CFRelease(v62);
  CFRelease(v60);
  v63 = v58;
  v64 = MEMORY[0x277CBF150];
  v65 = CFDictionaryCreateMutable(0, 4, v63, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 152;
  v66 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v67 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v68 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v65, @"name", @"clearCoatNormal");
  CFDictionarySetValue(v65, @"type", v66);
  CFDictionarySetValue(v65, @"address", v68);
  CFDictionarySetValue(v65, @"semantic", v67);
  CFArrayAppendValue(Mutable, v65);
  CFRelease(v67);
  CFRelease(v65);
  CFRelease(v68);
  CFRelease(v66);
  v69 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v64);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 160;
  v70 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v71 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v72 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v69, @"name", @"shininess");
  CFDictionarySetValue(v69, @"type", v70);
  CFDictionarySetValue(v69, @"address", v72);
  CFDictionarySetValue(v69, @"semantic", v71);
  CFArrayAppendValue(Mutable, v69);
  CFRelease(v71);
  CFRelease(v69);
  CFRelease(v72);
  CFRelease(v70);
  v73 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 164;
  v74 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v75 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v76 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v73, @"name", @"transparency");
  CFDictionarySetValue(v73, @"type", v74);
  CFDictionarySetValue(v73, @"address", v76);
  CFDictionarySetValue(v73, @"semantic", v75);
  CFArrayAppendValue(Mutable, v73);
  CFRelease(v75);
  CFRelease(v73);
  CFRelease(v76);
  CFRelease(v74);
  v77 = MEMORY[0x277CBF150];
  v78 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 168;
  v79 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v80 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v81 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v78, @"name", @"indexOfRefraction");
  CFDictionarySetValue(v78, @"type", v79);
  CFDictionarySetValue(v78, @"address", v81);
  CFDictionarySetValue(v78, @"semantic", v80);
  CFArrayAppendValue(Mutable, v78);
  CFRelease(v80);
  CFRelease(v78);
  CFRelease(v81);
  CFRelease(v79);
  v82 = MEMORY[0x277CBF138];
  v83 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v77);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 172;
  v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v85 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v86 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v83, @"name", @"fresnelExponent");
  CFDictionarySetValue(v83, @"type", v84);
  CFDictionarySetValue(v83, @"address", v86);
  CFDictionarySetValue(v83, @"semantic", v85);
  CFArrayAppendValue(Mutable, v83);
  CFRelease(v85);
  CFRelease(v83);
  CFRelease(v86);
  CFRelease(v84);
  v87 = CFDictionaryCreateMutable(0, 4, v82, v77);
  v105 = 0;
  valuePtr = 3;
  v104 = a1 + 193;
  v88 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v89 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v90 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v87, @"name", @"locksAmbientWithDiffuse");
  CFDictionarySetValue(v87, @"type", v88);
  CFDictionarySetValue(v87, @"address", v90);
  CFDictionarySetValue(v87, @"semantic", v89);
  CFArrayAppendValue(Mutable, v87);
  CFRelease(v89);
  CFRelease(v87);
  CFRelease(v90);
  CFRelease(v88);
  v91 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v77);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 24;
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v93 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v94 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v91, @"name", @"lightingModel");
  CFDictionarySetValue(v91, @"type", v92);
  CFDictionarySetValue(v91, @"address", v94);
  CFDictionarySetValue(v91, @"semantic", v93);
  CFArrayAppendValue(Mutable, v91);
  CFRelease(v93);
  CFRelease(v91);
  CFRelease(v94);
  CFRelease(v92);
  v95 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 180;
  v96 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v97 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v98 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v95, @"name", @"transparencyMode");
  CFDictionarySetValue(v95, @"type", v96);
  CFDictionarySetValue(v95, @"address", v98);
  CFDictionarySetValue(v95, @"semantic", v97);
  CFArrayAppendValue(Mutable, v95);
  CFRelease(v97);
  CFRelease(v95);
  CFRelease(v98);
  CFRelease(v96);
  v99 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 184;
  v100 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v101 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v102 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v99, @"name", @"imagesCount");
  CFDictionarySetValue(v99, @"type", v100);
  CFDictionarySetValue(v99, @"address", v102);
  CFDictionarySetValue(v99, @"semantic", v101);
  CFArrayAppendValue(Mutable, v99);
  CFRelease(v101);
  CFRelease(v99);
  CFRelease(v102);
  CFRelease(v100);
  return Mutable;
}

void _C3DEffectCommonProfileSetValue(uint64_t a1, float *a2, float *a3, size_t a4)
{
  v8 = (a1 + 164);
  v9 = 0.0;
  v10 = 0.0;
  if ((a1 + 164) == a2)
  {
    v10 = *a2;
    v9 = *a3;
  }

  HashCode = C3DEffectCommonProfileGetHashCode(a1, a2);
  memcpy(a2, a3, a4);
  v13 = C3DEffectCommonProfileGetHashCode(a1, v12);
  if (v8 == a2)
  {
    v15 = v10 != 1.0 || v9 == 1.0;
    if (v15 && (v10 == 1.0 || v9 != 1.0))
    {
      goto LABEL_15;
    }

    *(a1 + 194) &= ~0x80u;
    goto LABEL_14;
  }

  if (HashCode != v13)
  {
LABEL_14:
    __PostCommonProfileDidChangeNotification(a1, v14);
  }

LABEL_15:
  v16 = *(a1 + 16);

  C3DMaterialTouchValueStorageModificationCount(v16, v14);
}

void _C3DEffectSlotCFFinalize(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }
}

CFStringRef _C3DEffectSlotCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEffectSlot>");
}

CFStringRef _C3DEffectSlotCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEffectSlot>");
}

void _C3DEffectSlotSetValue(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  if (!memcmp(__s1, __s2, __n))
  {
    return;
  }

  memcpy(__s1, __s2, __n);
  CommonProfile = _C3DEffectSlotGetCommonProfile(a1, v8);
  if (!CommonProfile)
  {
    return;
  }

  if ((a1 + 40) == __s2)
  {
    v11 = -193;
    goto LABEL_8;
  }

  if ((a1 + 16) == __s2)
  {
    v11 = -129;
LABEL_8:
    *(CommonProfile + 194) &= v11;
  }

  __PostCommonProfileDidChangeNotification(CommonProfile, v10);
}

__CFArray *_C3DEffectSlotCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 13;
  v45 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v3, @"name", @"color");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  if (!*(a1 + 48))
  {
    v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v10 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v7, @"name", @"image");
    CFDictionarySetValue(v7, @"type", v8);
    CFDictionarySetValue(v7, @"address", v10);
    CFDictionarySetValue(v7, @"semantic", v9);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v9);
    CFRelease(v7);
    CFRelease(v10);
    CFRelease(v8);
  }

  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 2;
  valuePtr = 5;
  v45 = a1 + 56;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v11, @"name", @"sampler");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  v15 = *(a1 + 48);
  if (v15 == 1)
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v16, @"name", @"texture");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
    v15 = *(a1 + 48);
  }

  if (v15 == 3)
  {
    v20 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v23 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v20, @"name", @"mtltexture");
    CFDictionarySetValue(v20, @"type", v21);
    CFDictionarySetValue(v20, @"address", v23);
    CFDictionarySetValue(v20, @"semantic", v22);
    CFArrayAppendValue(Mutable, v20);
    CFRelease(v22);
    CFRelease(v20);
    CFRelease(v23);
    CFRelease(v21);
    v15 = *(a1 + 48);
  }

  if (v15 == 2)
  {
    v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v27 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v24, @"name", @"imageProxy");
    CFDictionarySetValue(v24, @"type", v25);
    CFDictionarySetValue(v24, @"address", v27);
    CFDictionarySetValue(v24, @"semantic", v26);
    CFArrayAppendValue(Mutable, v24);
    CFRelease(v26);
    CFRelease(v24);
    CFRelease(v27);
    CFRelease(v25);
    v15 = *(a1 + 48);
  }

  if (v15 == 4)
  {
    v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v31 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v28, @"name", @"precomputedLightingEnvironment");
    CFDictionarySetValue(v28, @"type", v29);
    CFDictionarySetValue(v28, @"address", v31);
    CFDictionarySetValue(v28, @"semantic", v30);
    CFArrayAppendValue(Mutable, v28);
    CFRelease(v30);
    CFRelease(v28);
    CFRelease(v31);
    CFRelease(v29);
  }

  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 2;
  valuePtr = 5;
  v45 = a1 + 64;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v32, @"name", @"transforms");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 2;
  v45 = a1 + 76;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v36, @"name", @"uvSet");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  v40 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 1;
  v45 = a1 + 72;
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v43 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v40, @"name", @"intensity");
  CFDictionarySetValue(v40, @"type", v41);
  CFDictionarySetValue(v40, @"address", v43);
  CFDictionarySetValue(v40, @"semantic", v42);
  CFArrayAppendValue(Mutable, v40);
  CFRelease(v42);
  CFRelease(v40);
  CFRelease(v43);
  CFRelease(v41);
  return Mutable;
}

const void *C3D::PostProcessPassesCreateIfNeeded(C3D *this, C3D::RenderGraph *a2, C3D::MainPass *a3, C3D::Pass **a4)
{
  v105 = a2;
  v8 = *(this + 1);
  v7 = *(this + 2);
  RenderContext = C3DEngineContextGetRenderContext(v8, a2);
  result = C3DEngineContextGetPointOfView(v8, v10);
  if (!result)
  {
    return result;
  }

  result = C3DNodeGetCamera(result, v12);
  if (!result)
  {
    return result;
  }

  v13 = result;
  Aligned = C3DScratchAllocatorAllocateAligned(v7, 72, 8, 0);
  *Aligned = 0u;
  *(Aligned + 16) = 0u;
  *(Aligned + 32) = 0u;
  *(Aligned + 48) = 0u;
  *(Aligned + 64) = 0;
  v104 = Aligned;
  v15 = (*(*a2 + 88))(a2);
  v16 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor]<= 1.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = 1.0;
  }

  *Aligned = v17 + 1.0;
  ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(v13, 0);
  WantsHDR = C3DCameraGetWantsHDR(v13, v19);
  *(Aligned + 8) = WantsHDR;
  if (WantsHDR)
  {
    *(Aligned + 9) = C3DCameraGetWantsExposureAdaptation(v13, v21);
    v22 = (Aligned + 9);
    v23 = (*(Aligned + 8) & 1) != 0 && C3DCameraGetBloomIntensity(v13, v21) > 0.0;
  }

  else
  {
    v23 = 0;
    *(Aligned + 9) = 0;
    v22 = (Aligned + 9);
  }

  *(Aligned + 10) = v23;
  *(Aligned + 11) = C3DCameraGetMotionBlurIntensity(v13, v21) > 0.0;
  if (C3DCameraGetDepthOfFieldIntensity(v13, v24) <= 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  }

  *(Aligned + 12) = v26;
  v28 = C3DCameraGetColorFringeStrength(v13, v25) > 0.0 && C3DCameraGetColorFringeIntensity(v13, v27) != 0.0;
  *(Aligned + 13) = v28;
  *(Aligned + 14) = C3DCameraGetSaturation(v13, v27) != 1.0;
  *(Aligned + 15) = C3DCameraGetContrast(v13, v29) != 0.0;
  v32 = C3DCameraGetVignettingPower(v13, v30) > 0.0 && C3DCameraGetVignettingIntensity(v13, v31) > 0.0;
  *(Aligned + 16) = v32;
  v33 = ColorGradingEffectSlot && C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot, v31) && C3DEffectSlotGetIntensity(ColorGradingEffectSlot, v31) > 0.0;
  *(Aligned + 17) = v33;
  BloomIteration = C3DCameraGetBloomIteration(v13, v31);
  v35 = fmax(((*(v15 + 8) * 0.5) / *Aligned), ((*(v15 + 12) * 0.5) / *Aligned));
  v37 = (floorf(log2f(v35)) + 1.0);
  if (BloomIteration < v37)
  {
    v37 = BloomIteration;
  }

  *(Aligned + 24) = v37;
  *(Aligned + 28) = fminf(fmaxf(C3DCameraGetBloomIterationSpread(v13, v36), 0.0), 10.0) + 1.0;
  *(Aligned + 18) = C3DCameraGetGrainIntensity(v13, v38) > 0.0;
  *(Aligned + 19) = C3DCameraGetGrainIsColored(v13, v39);
  *(Aligned + 21) = [(SCNMTLRenderContext *)RenderContext enableARMode];
  v42 = C3DCameraGetWhiteBalanceTemperature(v13, v40) != 0.0 || C3DCameraGetWhiteBalanceTint(v13, v41) != 0.0;
  *(Aligned + 22) = v42;
  if (C3DEngineContextIsTemporalAntialiasingEnabled(v8) & 1) != 0 || (*(Aligned + 8) & 1) != 0 || (*v22 & 1) != 0 || (*(Aligned + 10) & 1) != 0 || (*(Aligned + 12) & 1) != 0 || (*(Aligned + 13) & 1) != 0 || (*(Aligned + 14) & 1) != 0 || (*(Aligned + 15) & 1) != 0 || (*(Aligned + 16) & 1) != 0 || (*(Aligned + 17) & 1) != 0 || (*(Aligned + 18) & 1) != 0 || (*(Aligned + 22))
  {
    v43 = 1;
  }

  else
  {
    if ((*(Aligned + 11) & 1) == 0 && *(Aligned + 21) != 1)
    {
      return 0;
    }

    v43 = 0;
  }

  Pass = C3D::ScenePass::lastPass(a2);
  StackAllocator = C3DEngineContextGetStackAllocator(v8, v45);
  C3D::RenderGraph::getSuccessors(this, Pass, StackAllocator, v101);
  if (v43)
  {
    v47 = C3D::RenderGraph::createPass<C3D::CompositePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
    C3D::Pass::addDependency(v47, Pass);
    v49 = v104;
    if (*(v104 + 8) == 1)
    {
      v50 = C3D::RenderGraph::createPass<C3D::HDRAverageLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
      C3D::Pass::addDependency(v47, v50);
      v49 = v104;
    }

    else
    {
      v50 = 0;
    }

    if (v49[9] == 1)
    {
      v51 = C3D::RenderGraph::createPass<C3D::HDRFrameLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
      v52 = C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::DrawNodesPass *&>(this, &v105);
      C3D::Pass::addDependency(v51, Pass);
      C3D::Pass::addDependency(v52, v51);
      C3D::Pass::addDependency(v50, v52);
      v49 = v104;
    }

    v100 = 0;
    if ((v49[10] & 1) != 0 || v49[12] == 1)
    {
      v53 = C3D::RenderGraph::createPass<C3D::DownSampleBloomCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
      v54 = v53;
      v100 = v53;
      v55 = v105;
      if (v105 != Pass)
      {
        C3D::Pass::addDependency(v53, Pass);
        v55 = v105;
      }

      C3D::Pass::addDependency(v54, v55);
      v49 = v104;
      v56 = *(v104 + 10);
      if (v56 == 1)
      {
        C3D::Pass::addDependency(v54, v50);
        v49 = v104;
        if ((*(v104 + 10) & 1) == 0)
        {
LABEL_60:
          if (v49[12] == 1)
          {
            DofSampleCount = C3DCameraGetDofSampleCount(v13, v48);
            if (DofSampleCount <= 4)
            {
              v83 = 4;
            }

            else
            {
              v83 = DofSampleCount;
            }

            v84 = sqrtf(v83);
            v85 = v84 * v84;
            if (v85 >= 256)
            {
              v85 = 256;
            }

            *(v104 + 4) = v85 - 1;
            v86 = C3D::RenderGraph::createPass<C3D::DOFDownsampleCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
            v87 = C3D::RenderGraph::createPass<C3D::DOFBlurCoCXPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
            v88 = C3D::RenderGraph::createPass<C3D::DOFBlurCoCYPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
            v89 = C3D::RenderGraph::createPass<C3D::DOFFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
            C3D::Pass::addDependency(v86, v100);
            C3D::Pass::addDependency(v87, v86);
            C3D::Pass::addDependency(v88, v87);
            C3D::Pass::addDependency(v89, v88);
            C3D::Pass::addDependency(v89, v100);
            C3D::Pass::addDependency(v47, v89);
          }

          goto LABEL_67;
        }

LABEL_57:
        v98 = v43;
        BloomBlurRadius = C3DCameraGetBloomBlurRadius(v13, v48);
        *v99 = BloomBlurRadius / (*v104 + *v104);
        v58 = *v99;
        v99[4] = 0;
        *&v99[6] = 0;
        v59 = C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(this, &v105, v99);
        v60 = *(v15 + 12);
        v61 = fmaxf((*(v15 + 8) * 0.5) / *v104, 1.0);
        v62 = fmaxf((v60 * 0.5) / *v104, 1.0);
        v63 = C3D::Pass::descriptor(v59);
        v64 = C3D::PassDescriptor::inputAtIndex(v63, 0);
        *(v64 + 8) = "Bloom";
        *(v64 + 16) = v61;
        *(v64 + 18) = v62;
        *(v64 + 20) = 0;
        *(v64 + 24) = 514;
        *(v64 + 28) = 115;
        *(v64 + 30) = *(v104 + 24);
        v65 = C3D::Pass::descriptor(v59);
        v66 = C3D::PassDescriptor::outputAtIndex(v65, 0);
        v68 = *(v64 + 16);
        v67 = *(v64 + 32);
        v69 = *(v64 + 48);
        *(v66 + 64) = *(v64 + 64);
        *v66 = *v64;
        *(v66 + 16) = v68;
        *(v66 + 32) = v67;
        *(v66 + 48) = v69;
        *(v66 + 65) = 0;
        *v99 = v58;
        v99[4] = 1;
        *&v99[6] = 0;
        v70 = C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(this, &v105, v99);
        *v99 = v70;
        v71 = C3D::Pass::descriptor(v70);
        v72 = C3D::PassDescriptor::inputAtIndex(v71, 0);
        *v72 = *v64;
        v73 = *(v64 + 64);
        v75 = *(v64 + 16);
        v74 = *(v64 + 32);
        v72[3] = *(v64 + 48);
        v72[4] = v73;
        v72[1] = v75;
        v72[2] = v74;
        v76 = C3D::Pass::descriptor(v70);
        v77 = C3D::PassDescriptor::outputAtIndex(v76, 0);
        *v77 = *v66;
        v78 = *(v66 + 64);
        v80 = *(v66 + 16);
        v79 = *(v66 + 32);
        v77[3] = *(v66 + 48);
        v77[4] = v78;
        v77[1] = v80;
        v77[2] = v79;
        C3D::Pass::addDependency(v59, v54);
        C3D::Pass::addDependency(v70, v59);
        if (*(v104 + 24) >= 2)
        {
          v81 = C3D::RenderGraph::createPass<C3D::BloomDownSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(this, &v100, &v104);
          C3D::Pass::addDependency(v81, v70);
          v70 = C3D::RenderGraph::createPass<C3D::BloomUpSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(this, v99, &v104);
          C3D::Pass::addDependency(v70, v81);
        }

        C3D::Pass::addDependency(v47, v70);
        v49 = v104;
        v43 = v98;
        goto LABEL_60;
      }
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    if (!v56)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v47 = 0;
LABEL_67:
  if (*(v104 + 11) == 1 && *(C3D::DrawNodesPass::getCullingContext(v105) + 4920))
  {
    v90 = C3D::RenderGraph::createPass<C3D::MBTileMaxPass,C3D::MainPass *&>(this, &v105);
    v99[0] = 0;
    v91 = C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(this, &v105, v99);
    v99[0] = 1;
    v92 = C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(this, &v105, v99);
    v93 = C3D::RenderGraph::createPass<C3D::MBFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v105, &v104);
    C3D::Pass::addDependency(v90, v105);
    C3D::Pass::addDependency(v91, v90);
    C3D::Pass::addDependency(v92, v91);
    C3D::Pass::addDependency(v93, v92);
    if (v43)
    {
      C3D::Pass::addDependency(v93, v47);
    }

    v94 = v105;
    if (v105 != Pass)
    {
      C3D::Pass::addDependency(v93, Pass);
      v94 = v105;
    }

    C3D::Pass::addDependency(v93, v94);
  }

  else
  {
    v93 = v47;
  }

  if (v102)
  {
    v95 = v103;
    v96 = 8 * v102;
    do
    {
      v97 = *v95++;
      C3D::RenderGraph::removeDependency(this, v97, Pass);
      C3D::RenderGraph::addDependency(this, v97, v93);
      v96 -= 8;
    }

    while (v96);
  }

  if (a3)
  {
    *a3 = v93;
  }

  return v104;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::CompositePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::CompositePass::CompositePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::HDRAverageLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::HDRAverageLuminancePass::HDRAverageLuminancePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::HDRFrameLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::HDRFrameLuminancePass::HDRFrameLuminancePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DownSampleBloomCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DownSampleBloomCoCPass::DownSampleBloomCoCPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::GaussianBlurPass *C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::GaussianBlurPass::GaussianBlurPass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::CustomPass *C3D::RenderGraph::createPass<C3D::BloomDownSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 144, 8, 0);
  C3D::BloomDownSamplePass::BloomDownSamplePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::BloomUpSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::BloomUpSamplePass::BloomUpSamplePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFDownsampleCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFDownsampleCoCPass::DOFDownsampleCoCPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::DOFBlurCoCXPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFBlurCoCXPass::DOFBlurCoCXPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::DOFBlurCoCYPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFBlurCoCYPass::DOFBlurCoCYPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFFinalBlurPass::DOFFinalBlurPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::MBTileMaxPass *C3D::RenderGraph::createPass<C3D::MBTileMaxPass,C3D::MainPass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 120, 8, 0);
  C3D::MBTileMaxPass::MBTileMaxPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::MBNeighborMaxPass *C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(uint64_t a1, C3D::Pass **a2, BOOL *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::MBNeighborMaxPass::MBNeighborMaxPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::MBFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::MBFinalBlurPass::MBFinalBlurPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::PostProcessPassesComputeUniforms(uint64_t a1, uint64_t a2, C3D::DrawNodesPass *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, float a30, float AverageGray, float a32, float a33, float a34, float ExposureAdaptationDuration, int8x8_t a36, float BloomThreshold, int a38, float BloomIntensity, int a40, float a41, float VignettingPower, float VignettingIntensity, float ColorFringeStrength, float ColorFringeIntensity, float Saturation, float Contrast, float a48, float a49, uint64_t a50, float32x2_t a51, float a52, int a53, int a54, unsigned int a55, unsigned int a56, unint64_t a57, float DepthOfFieldIntensity, int a59, float a60, float MotionBlurIntensity, float GrainIntensity, float32x4_t a63)
{
  a65 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(a1, a2);
  v69 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v70 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  PointOfView = C3DEngineContextGetPointOfView(a1, v71);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v73);
    if (Camera)
    {
      v76 = Camera;
      WhitePoint = C3DCameraGetWhitePoint(Camera, v75);
      a30 = WhitePoint * C3DCameraGetWhitePoint(v76, v78);
      AverageGray = C3DCameraGetAverageGray(v76, v79);
      ExposureOffset = C3DCameraGetExposureOffset(v76, v80);
      a34 = exp2f(ExposureOffset);
      ExposureAdaptationDuration = C3DCameraGetExposureAdaptationDuration(v76, v82);
      ExposureAdaptationBrighteningSpeedFactor = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(v76, v83);
      ExposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(v76, v84);
      a36 = vbsl_s8(vmovn_s64(vcgtq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(ExposureAdaptationDarkeningSpeedFactor), LODWORD(ExposureAdaptationBrighteningSpeedFactor))), vdupq_n_s64(0x3F847AE147AE147BuLL))), __PAIR64__(LODWORD(ExposureAdaptationDarkeningSpeedFactor), LODWORD(ExposureAdaptationBrighteningSpeedFactor)), vdup_n_s32(0x3C23D70Au));
      MinimumExposure = C3DCameraGetMinimumExposure(v76, v86);
      a32 = exp2f(MinimumExposure);
      MaximumExposure = C3DCameraGetMaximumExposure(v76, v88);
      a33 = exp2f(MaximumExposure);
      BloomThreshold = C3DCameraGetBloomThreshold(v76, v90);
      a40 = *(a2 + 24);
      a38 = 1056964608;
      BloomIntensity = C3DCameraGetBloomIntensity(v76, v91);
      VignettingPower = C3DCameraGetVignettingPower(v76, v92);
      VignettingIntensity = C3DCameraGetVignettingIntensity(v76, v93);
      ColorFringeStrength = C3DCameraGetColorFringeStrength(v76, v94);
      ColorFringeIntensity = C3DCameraGetColorFringeIntensity(v76, v95);
      Saturation = C3DCameraGetSaturation(v76, v96);
      Contrast = C3DCameraGetContrast(v76, v97);
      WhiteBalanceTemperature = C3DCameraGetWhiteBalanceTemperature(v76, v98);
      a48 = WhiteBalanceTemperature;
      WhiteBalanceTint = C3DCameraGetWhiteBalanceTint(v76, v100);
      a49 = WhiteBalanceTint;
      v102 = [(SCNMTLRenderContext *)RenderContext renderTime];
      v103 = floor(*&v102 * 30.0);
      v105 = 0.00390625 / fmax(C3DCameraGetGrainScale(v76, v104), 0.00390625);
      v106 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor]<= 1.0;
      v108 = 2.0;
      if (!v106)
      {
        v108 = 1.0;
      }

      *&v169 = v108 * v105;
      GrainIntensity = C3DCameraGetGrainIntensity(v76, v107);
      v109 = v103;
      v110 = sin(v109 * 0.01);
      v166 = fmin(v110 * 4242.0 - floor(v110 * 4242.0), 1.0);
      v111 = sin(v109 * 0.1 + 0.05);
      v112.f64[0] = v166;
      v112.f64[1] = fmin(v111 * 4242.0 - floor(v111 * 4242.0), 1.0);
      a63 = vcvt_hight_f32_f64(vcvt_f32_f64(vdupq_lane_s64(v169, 0)), v112);
      ARGrainSlice = C3DCameraGetARGrainSlice(v76, v113);
      if ((*(a2 + 10) & 1) == 0)
      {
        BloomIntensity = 0.0;
      }

      if (*(a2 + 11) == 1)
      {
        MotionBlurIntensity = C3DCameraGetMotionBlurIntensity(v76, v114);
      }

      Intensity = 0.0;
      if (*(a2 + 17) == 1)
      {
        ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(v76, 0);
        if (ColorGradingEffectSlot)
        {
          v118 = ColorGradingEffectSlot;
          if (C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot, v117))
          {
            [v69 renderResourceForEffectSlot:v118 withEngineContext:a1 didFallbackToDefaultTexture:0];
          }

          Intensity = C3DEffectSlotGetIntensity(v118, v119);
        }
      }

      a41 = Intensity;
      if (*(a2 + 22) == 1)
      {
        v120 = WhiteBalanceTemperature;
        v121 = -5.0;
        if (WhiteBalanceTemperature < -5.0)
        {
          v120 = -5.0;
        }

        v122 = fmin(v120, 5.0) * 0.5;
        if (WhiteBalanceTint >= -5.0)
        {
          v121 = WhiteBalanceTint;
        }

        v123 = fmin(v121, 5.0) * 0.5;
        v124 = 0.31271 - v122 * dbl_21C2A1C70[v122 < 0.0];
        v125 = ((v124 * -3.0) * v124) + v124 * 2.87 + -0.27509507;
        v126 = v125 + v123 * 0.05;
        v127 = v124 / v126;
        v128 = ((1.0 - v124) - v126) / v126;
        v129 = v127;
        v130 = v128;
        v131 = v127 * 0.003 + 0.0136 + v130 * 0.9834;
        a52 = 1.0873 / v131;
        a51 = vdiv_f32(0x3F8488A43F730132, vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_21C2A1C90, xmmword_21C2A1C80, v129), xmmword_21C2A1CA0, v130)));
      }

      v132 = *(C3D::DrawNodesPass::getCullingContext(a3) + 4744);
      v133 = *(C3D::DrawNodesPass::getCullingContext(a3) + 4752);
      v135 = C3DCameraGetFocalLength(v76, v134) / 1000.0;
      v136 = v135 + 0.01;
      FocusDistance = C3DCameraGetFocusDistance(v76, v137);
      if (v136 >= FocusDistance)
      {
        v140 = v136;
      }

      else
      {
        v140 = FocusDistance;
      }

      FStop = C3DCameraGetFStop(v76, v138);
      if (FStop <= 0.0001)
      {
        v143 = 0.0001;
      }

      else
      {
        v143 = FStop;
      }

      v144 = C3DCameraGetAperture(v76, v141) / 1000.0;
      BladeCount = C3DCameraGetBladeCount(v76, v145);
      v147 = ((v135 * v144) / (v140 - v135)) / *a2;
      v149 = *C3DCameraGetProjectionInfosPtr(v76, v148);
      v150 = C3D::Pass::descriptor(a3);
      v151 = C3D::PassDescriptor::outputAtIndex(v150, 0);
      v154 = 16;
      if ((v149 & 0x20) == 0)
      {
        v154 = 18;
      }

      LOWORD(v153) = *(v151 + v154);
      v155 = v147 * v153;
      *&v156 = (v133 - v132) * (v140 * v155) / (v132 * v133);
      *&v157 = (1.0 - v140 / v132) * v155;
      v167 = *&v157;
      v170 = *&v156;
      a57 = __PAIR64__(v157, v156);
      if ((C3DEngineContextGetCoordinatesSystemOptions(a1, v152) & 8) != 0)
      {
        *&v159 = -v170;
        *(&v159 + 1) = v167 + v170;
        a57 = v159;
      }

      DepthOfFieldIntensity = C3DCameraGetDepthOfFieldIntensity(v76, v158);
      a60 = v143;
      if (BladeCount <= 5)
      {
        v160 = 5;
      }

      else
      {
        v160 = BladeCount;
      }

      a59 = v160;
      if (*(a2 + 9) == 1)
      {
        a54 = 1015580809;
        FrameIndex = C3DEngineContextGetFrameIndex(a1);
        v162 = FrameIndex + 1;
        v163 = ExposureAdaptationDuration * 60.0;
        if (v163 < 1.0)
        {
          v163 = 1.0;
        }

        v164 = fmin(v163, 240.0);
        if (v164 > v162)
        {
          v164 = v162;
        }

        a55 = FrameIndex % 0xF0;
        a56 = v164;
      }

      SCNMTLBufferPool::allocateAndCopy(&a28, v70, &a30, 0x100uLL);
      *(a2 + 32) = a28;
      *(a2 + 48) = a29;
      *(a2 + 64) = C3DCameraGetAverageGray(v76, v165);
    }
  }
}

void vmesh::SubdivideMidPoint(std::vector<int>::size_type a1, int a2, unsigned int a3, std::vector<int> *a4, void *a5, void *a6)
{
  v10 = a2;
  v12 = a2 << (2 * a3);
  std::vector<ClippedCorner>::resize(a6, (a3 + 1));
  v59 = a6;
  v13 = *a6;
  *v13 = a1;
  v13[1] = v10;
  std::vector<vmesh::Triangle>::resize(a5, v12);
  if (a3 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v58 = a3;
    do
    {
      v60 = v14;
      v16 = a1;
      __x[0] = 0;
      std::vector<int>::resize(a4, a1 + 1, __x);
      if (v10 >= 1)
      {
        v17 = a4->__begin_ + 1;
        v18 = v10;
        v19 = (*a5 + 8);
        do
        {
          v20 = *(v19 - 2);
          v21 = *(v19 - 1);
          v23 = *v19;
          v19 += 3;
          v22 = v23;
          if (v20 <= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v20;
          }

          ++v17[v24];
          if (v21 <= v22)
          {
            v21 = v22;
          }

          ++v17[v21];
          if (v22 > v20)
          {
            v20 = v22;
          }

          ++v17[v20];
          --v18;
        }

        while (v18);
      }

      if (v15 >= a1)
      {
        a1 = a1;
      }

      else
      {
        a1 = a1;
        v25 = &a4->__begin_[v15];
        v28 = *v25;
        v26 = v25 + 1;
        v27 = v28;
        v29 = v16 - v15;
        do
        {
          v27 += *v26;
          *v26++ = v27;
          --v29;
        }

        while (v29);
      }

      std::vector<ClippedCorner>::resize(&a4[2].__begin_, *(a4->__end_ - 1));
      __x[0] = 0;
      std::vector<int>::resize(a4 + 1, a1, __x);
      a1 = v16;
      if (v10 >= 1)
      {
        v30 = v10;
        a1 = v16;
        do
        {
          v31 = 0;
          v32 = v30 - 1;
          v33 = *a5;
          v34 = *a5 + 12 * (v30 - 1);
          *__x = *v34;
          v64 = *(v34 + 8);
          v61 = -1;
          v62 = -1;
          begin = a4->__begin_;
          v36 = a4[1].__begin_;
          v37 = a4->__begin_ + 1;
          v38 = a4[2].__begin_;
          do
          {
            v39 = __x[v31];
            v40 = v31 + 1;
            v41 = (v31 + 1);
            if (v31 == 2)
            {
              v41 = 0;
            }

            v42 = __x[v41];
            if (v39 <= v42)
            {
              v43 = __x[v41];
            }

            else
            {
              v43 = __x[v31];
            }

            if (v42 < v39)
            {
              v39 = v42;
            }

            v44 = begin[v43];
            v45 = v36[v43];
            v46 = v45 + v44;
            if (v45 >= 1)
            {
              v47 = &v38[2 * v44 + 1];
              while (*(v47 - 1) != v39)
              {
                ++v44;
                v47 += 2;
                if (v44 >= v46)
                {
                  goto LABEL_34;
                }
              }

              *(&v61 + v31) = *v47;
            }

LABEL_34:
            if (*(&v61 + v31) == -1)
            {
              if (v46 >= v37[v43])
              {
                vmesh::SubdivideMidPoint();
              }

              v48 = &v38[2 * v46];
              *v48 = v39;
              v48[1] = a1;
              ++v36[v43];
              *(&v61 + v31) = a1;
              a1 = (a1 + 1);
            }

            ++v31;
          }

          while (v40 != 3);
          v49 = v33 + 48 * v32;
          *v49 = v61;
          v51 = HIDWORD(v61);
          v50 = v62;
          *(v49 + 8) = v62;
          v52 = (*a5 + 12 * ((4 * v32) | 1));
          v53 = v61;
          *v52 = __x[0];
          v52[1] = v53;
          v52[2] = v50;
          LODWORD(v49) = __x[1];
          v54 = (*a5 + 12 * ((4 * v32) | 2));
          *v54 = v53;
          v54[1] = v49;
          v54[2] = v51;
          LODWORD(v49) = v64;
          v55 = (*a5 + 12 * ((4 * v32) | 3));
          *v55 = v50;
          v55[1] = v51;
          v55[2] = v49;
        }

        while (v30-- > 1);
      }

      v10 *= 4;
      v14 = v60 + 1;
      v57 = (*v59 + 8 * (v60 + 1));
      *v57 = a1;
      v57[1] = v10;
      v15 = v16;
    }

    while (v60 + 1 != v58);
  }
}

void std::vector<vmesh::Triangle>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<vmesh::Triangle>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

float32x4_t vmesh::TriangleMesh::computeNormals(vmesh::TriangleMesh *this, char a2)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(this + 6, ((*(this + 1) - *this) >> 4));
  v5 = *(this + 6);
  v6 = *(this + 7) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  v7 = *(this + 9);
  v8 = *(this + 10);
  while (v7 != v8)
  {
    v9 = *v7;
    v10 = *(*this + 16 * v9);
    v11 = vsubq_f32(*(*this + 16 * v7[1]), v10);
    v12 = vsubq_f32(*(*this + 16 * v7[2]), v10);
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    *(*(this + 6) + 16 * v9) = vaddq_f32(*(*(this + 6) + 16 * v9), v14);
    *(*(this + 6) + 16 * v7[1]) = vaddq_f32(v14, *(*(this + 6) + 16 * v7[1]));
    v15 = v7[2];
    v16 = *(this + 6);
    result = vaddq_f32(v14, *(v16 + 16 * v15));
    *(v16 + 16 * v15) = result;
    v7 += 3;
  }

  if (a2)
  {
    v17 = *(this + 6);
    v18 = *(this + 7);
    while (v17 != v18)
    {
      v19 = vmulq_f32(*v17, *v17);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      result = vmulq_n_f32(*v17, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      *v17++ = result;
    }
  }

  return result;
}

void vmesh::TriangleMesh::subdivideMidPoint(void *a1, unsigned int a2, void **a3, __int128 *a4, void **a5, std::vector<int> *a6, void **p_p, std::vector<int> *a8)
{
  v14 = a1 + 9;
  v15 = -1431655765 * ((a1[10] - a1[9]) >> 2);
  if (v15)
  {
    v16 = (a1[1] - *a1) >> 4;
    if (v16)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v17 = a3 ? a3 : &__p;
      v18 = (a4 ? a4 : &v30);
      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v16, v15, a2, v18, v14, v17);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(v18);
      v19 = *(*v17 + 2 * a2);
      v38 = 0u;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1, v19, &v38);
      _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(a1, v18);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }

  v20 = -1431655765 * ((a1[16] - a1[15]) >> 2);
  if (v20)
  {
    v21 = (a1[7] - a1[6]) >> 4;
    if (v21)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      if (!p_p)
      {
        p_p = &__p;
      }

      if (!a8)
      {
        a8 = &v30;
      }

      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v21, v20, a2, a8, a1 + 15, p_p);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(a8);
      v22 = *(*p_p + 2 * a2);
      v38 = 0u;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 6, v22, &v38);
      vmesh::InterpolateNormals(a1 + 6, a8);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }

  v23 = a1 + 12;
  v24 = -1431655765 * ((a1[13] - a1[12]) >> 2);
  if (v24)
  {
    v25 = a1[3];
    v26 = a1[4];
    v27 = a1 + 3;
    v28 = (v26 - v25) >> 3;
    if (v28)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      if (!a5)
      {
        a5 = &__p;
      }

      if (!a6)
      {
        a6 = &v30;
      }

      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v28, v24, a2, a6, v23, a5);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(a6);
      v29 = *(*a5 + 2 * a2);
      *&v38 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v27, v29, &v38);
      _ZN5vmesh19InterpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(v27, a6);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }
}

void *vmesh::DisplacedSubdivisionMesh::preprocessForSCN(vmesh::DisplacedSubdivisionMesh *this, unsigned int a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *this = a2;
  if (((*(this + 11) - *(this + 10)) & 0xFFFFFFFF0) == 0)
  {
    vmesh::TriangleMesh::computeNormals((this + 32), 1);
  }

  v5 = *(this + 7);
  if (((*(this + 8) - v5) & 0x7FFFFFFF8) == 0)
  {
    v6 = *(this + 5) - *(this + 4);
    v26 = 0;
    v27 = 0;
    v25 = 0;
    if ((v6 >> 4))
    {
      std::vector<double>::__vallocate[abi:nn200100](&v25, (v6 >> 4));
    }

    v7 = 0;
    if (v5)
    {
      *(this + 8) = v5;
      operator delete(v5);
      v7 = v26;
    }

    v8 = v27;
    *(this + 7) = v25;
    *(this + 8) = v7;
    *(this + 9) = v8;
  }

  vmesh::TriangleMesh::subdivideMidPoint(this + 4, a2, this + 1, (this + 392), 0, 0, 0, 0);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "preprocess() ", 13);
  v11 = MEMORY[0x21CF07540](v10, (rep - v4.__d_.__rep_) / 1000000000.0 * 1000.0);
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, " ms\n", 4);
  v13 = *(this + 2) - *(this + 1);
  if ((v13 >> 3) >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = (v13 >> 3) & 0x7FFFFFFF;
    v17 = MEMORY[0x277D82678];
    do
    {
      v18 = (*(this + 1) + v14);
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, "\t LOD[", 6);
      v20 = MEMORY[0x21CF07550](v19, v15);
      v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "] ", 2);
      v22 = MEMORY[0x21CF07550](v21, *v18);
      v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "V ", 2);
      v24 = MEMORY[0x21CF07550](v23, v18[1]);
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "T\n", 2);
      ++v15;
      v14 += 8;
    }

    while (v16 != v15);
  }

  return result;
}

void vmesh::StaticAdjacencyInformation<Pair>::optimize(void *a1)
{
  v2 = a1[4] - a1[3];
  v3 = v2 >> 2;
  if ((v2 >> 2) <= 0)
  {
    v13 = *a1;
    **a1 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a1, v4);
      v7 = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a1, v4) - started;
      if (v7 >= 1 && started != v5)
      {
        v9 = 0;
        v10 = 8 * v5;
        v11 = 8 * started;
        do
        {
          *(a1[6] + v10) = *(a1[6] + v11);
          ++v9;
          v10 += 8;
          v11 += 8;
        }

        while (v9 < v7);
      }

      v5 += v7;
      v4 = (v4 + 1);
    }

    while (v4 != v3);
    v12 = a1[3];
    v13 = *a1;
    **a1 = 0;
    v14 = *v12;
    v15 = (v2 >> 2) & 0x7FFFFFFF;
    v16 = 1;
    do
    {
      v13[v16] = v14;
      v14 += v12[v16++];
      --v15;
    }

    while (v15);
  }

  v17 = v13[v3];

  std::vector<ClippedCorner>::resize(a1 + 6, v17);
}

void *_ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(void *result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v15 = *(*v4 + 16 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 4, v12 >= v13))
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_2();
          }

          *(*v4 + 16 * v14) = vmulq_f32(vaddq_f32(v15, *(*v4 + 16 * v12)), v8);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *vmesh::InterpolateNormals(uint64_t *result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v19 = *(*v4 + 16 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = *v4, v14 = (v4[1] - *v4) >> 4, v12 >= v14))
          {
            vmesh::InterpolateNormals();
          }

          v15 = v11[1];
          if ((v15 & 0x80000000) != 0 || v15 >= v14)
          {
            vmesh::InterpolateNormals();
          }

          v16 = vmulq_f32(vaddq_f32(v19, *(v13 + 16 * v12)), v8);
          v17 = vmulq_f32(v16, v16);
          *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
          *v17.f32 = vrsqrte_f32(v18);
          *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
          *(v13 + 16 * v15) = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void *_ZN5vmesh19InterpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(void *result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *(*v4 + 8 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 3, v12 >= v13))
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_2();
          }

          *(*v4 + 8 * v14) = vmul_f32(vadd_f32(v7, *(*v4 + 8 * v12)), 0x3F0000003F000000);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void std::vector<vmesh::Triangle>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(void *a1, uint64_t a2)
{
  if (((a1[4] - a1[3]) >> 2) <= a2)
  {
    vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex();
  }

  return *(*a1 + 4 * a2);
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (((a1[4] - v2) >> 2) <= a2)
  {
    vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex();
  }

  return (*(v2 + 4 * a2) + *(*a1 + 4 * a2));
}

uint64_t vmesh::TriangleMesh::loadBaseMeshFromVectors(char *a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 == *a2)
  {
    vmesh::TriangleMesh::loadBaseMeshFromVectors();
  }

  v8 = a4;
  v9 = a3;
  v12 = *a3;
  v40 = *a4;
  v41 = a4[1];
  v39 = a3[1];
  if (v39 != *a3)
  {
    if ((v39 - v12) >> 3 != v6 >> 4)
    {
      vmesh::TriangleMesh::loadBaseMeshFromVectors();
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(a1 + 3, v6 >> 4);
  }

  if (v41 != v40)
  {
    if (v8[1] - *v8 != v6)
    {
      vmesh::TriangleMesh::loadBaseMeshFromVectors();
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a1 + 6, v6 >> 4);
  }

  v13 = *a2;
  if (a2[1] != *a2)
  {
    v14 = 0;
    v15 = 0;
    v38 = v8;
    do
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, (v13 + v14));
      if (v39 != v12)
      {
        v16 = v9;
        v17 = *v9;
        v19 = *(a1 + 4);
        v18 = *(a1 + 5);
        if (v19 >= v18)
        {
          v21 = *(a1 + 3);
          v22 = (v19 - v21) >> 3;
          if ((v22 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v23 = v18 - v21;
          v24 = v23 >> 2;
          if (v23 >> 2 <= (v22 + 1))
          {
            v24 = v22 + 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>((a1 + 24), v25);
          }

          v26 = (8 * v22);
          *v26 = *(v17 + 8 * v15);
          v20 = 8 * v22 + 8;
          v27 = *(a1 + 3);
          v28 = *(a1 + 4) - v27;
          v29 = v26 - v28;
          memcpy(v26 - v28, v27, v28);
          v30 = *(a1 + 3);
          *(a1 + 3) = v29;
          *(a1 + 4) = v20;
          *(a1 + 5) = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v8 = v38;
        }

        else
        {
          *v19 = *(v17 + 8 * v15);
          v20 = (v19 + 1);
        }

        *(a1 + 4) = v20;
        v9 = v16;
      }

      if (v41 != v40)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_((a1 + 48), (*v8 + v14));
      }

      ++v15;
      v13 = *a2;
      v14 += 16;
    }

    while (v15 < (a2[1] - *a2) >> 4);
  }

  v31 = *a5;
  v32 = a5[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v32 - *a5) >> 2) > 0x5555555555555555)
  {
    vmesh::TriangleMesh::loadBaseMeshFromVectors();
  }

  if (v32 != v31)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = v31 + v33;
      v36 = *(v35 + 8);
      v42 = *v35;
      v43 = v36;
      std::vector<vmesh::Triangle>::push_back[abi:nn200100]((a1 + 72), &v42);
      v34 += 3;
      v31 = *a5;
      v33 += 12;
    }

    while (v34 < (a5[1] - *a5) >> 2);
  }

  std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>(a1 + 12, *(a1 + 9), *(a1 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 10) - *(a1 + 9)) >> 2));
  std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>(a1 + 15, *(a1 + 9), *(a1 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 10) - *(a1 + 9)) >> 2));
  return 0;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *result, unint64_t a2, _OWORD *a3)
{
  v3 = (result[1] - *result) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(result, a2 - v3, a3);
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(result, a2 - v3, a3);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = *a3;
      v13 = 8 * a2;
      v14 = &v5[a2];
      do
      {
        *v5++ = v12;
        v13 -= 8;
      }

      while (v13);
      v5 = v14;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v11);
    }

    v15 = 8 * v9;
    v16 = 8 * v9 + 8 * a2;
    v17 = 8 * a2;
    v18 = *a3;
    v19 = v15;
    do
    {
      *v19++ = v18;
      v17 -= 8;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::vector<vmesh::Triangle>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      memset(*(a1 + 8), 255, v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2) + a2;
    if (v8 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v10);
    }

    v12 = (4 * (v7 >> 2));
    v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    memset(v12, 255, v13);
    memcpy(&v12[-v7], v6, v7);
    v14 = *a1;
    *a1 = &v12[-v7];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F640)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F630)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21C27F640)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21C27F630)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void **std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<vmesh::Triangle>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<vmesh::Triangle>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CF07520](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x21CF07530](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

C3D::RenderPass *C3D::DrawQuadPass::DrawQuadPass(C3D::DrawQuadPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DFXPass *a4)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC4AF0;
  *(result + 30) = a4;
  *(result + 31) = 0;
  return result;
}

const char *C3D::DrawQuadPass::name(C3D::DrawQuadPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 31, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawQuadPass";
  }
}

double C3D::DrawQuadPass::execute(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  RenderContext = C3DEngineContextGetRenderContext(*(v1 + 16), v3);
  v18[4] = 0;
  v18[5] = 0;
  Scene = C3DEngineContextGetScene(*(v2 + 16), v5);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v7);
  v9 = *(v2 + 16);
  v18[0] = EnginePipeline;
  v18[1] = v9;
  v18[3] = v2;
  bzero(&v14, 0x1400uLL);
  v14.i64[0] = *(v2 + 240);
  v15 = 1;
  v16 = 0;
  v17 = 0u;
  v18[2] = &v14;
  C3DEnginePipelineApplyNotificationQueue(v18, v10);
  if (C3DFXPassGetUsesSceneBackgroundColor(*(v2 + 240), v11))
  {
    BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
    if (BackgroundEffectSlot)
    {
      C3DEngineContextRenderBackgroundMap(*(v2 + 16), BackgroundEffectSlot, &v14);
    }
  }

  [(SCNMTLRenderContext *)RenderContext startProcessingRendererElementsWithEngineIterationContext:v18];
  [SCNMTLRenderContext drawFullScreenQuadForPass:?];
  return [(SCNMTLRenderContext *)RenderContext stopProcessingRendererElements:?];
}

uint64_t Tokenizer::Tokenizer(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  v3 = a1 + 80;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  *(a1 + 8) = v4;
  strcpy(v12, ".<>?:/|&^*/+-=%!~");
  v5 = v12;
  do
  {
    std::__tree<char>::__emplace_unique_key_args<char,char const&>(v3, v5, v5);
  }

  while (*++v5);
  v7 = *(a1 + 8);
  if (*(a1 + 16) < v7)
  {
    v8 = *(a1 + 24);
    *(a1 + 64) = *(a1 + 65);
    if (v8 >= v7)
    {
      v10 = 0;
    }

    else
    {
      v9 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v9 = *v9;
      }

      v10 = *(v9 + v8);
    }

    *(a1 + 65) = v10;
    *(a1 + 24) = v8 + 1;
    ++*(a1 + 72);
    if (v10 == 10)
    {
      *(a1 + 68) = (*(a1 + 68) + 1);
    }
  }

  return a1;
}

BOOL Tokenizer::NextChar(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 < v2)
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = v3 + 1;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }
  }

  return v1 < v2;
}

char *Tokenizer::NextToken(Tokenizer *this)
{
  *(this + 14) = 0;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 >= v3)
  {
    v8 = *(this + 3);
    *(this + 4) = *this;
    *(this + 5) = v2;
    *(this + 6) = v8 + ~v2;
    v9 = v8 - 1;
LABEL_121:
    *(this + 2) = v9;
    return this + 32;
  }

  v4 = *(this + 65);
  if (v4 == 10)
  {
    v5 = *(this + 3);
    *(this + 64) = 10;
    if (v5 >= v3)
    {
      v7 = 0;
    }

    else
    {
      v6 = *this;
      if (*(*this + 23) < 0)
      {
        v6 = *v6;
      }

      v7 = *(v6 + v5);
    }

    *(this + 65) = v7;
    *(this + 3) = v5 + 1;
    ++*(this + 18);
    if (v7 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    *(this + 4) = *this;
    *(this + 5) = v2;
    *(this + 6) = v5 - v2;
    *(this + 14) = 17;
    *(this + 2) = v5;
    return this + 32;
  }

  if (v4 <= 32)
  {
    v10 = *(this + 3);
    do
    {
      if (v4 > 32 || v4 == 10)
      {
        break;
      }

      *(this + 64) = v4;
      if (v10 >= v3)
      {
        v4 = 0;
      }

      else
      {
        v12 = *this;
        if (*(*this + 23) < 0)
        {
          v12 = *v12;
        }

        v4 = *(v12 + v10);
      }

      *(this + 65) = v4;
      *(this + 3) = ++v10;
      ++*(this + 18);
      if (v4 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }

    while (v10 < v3);
    if (v2 + 1 < v10)
    {
      *(this + 4) = *this;
      *(this + 5) = v2;
      *(this + 6) = v10 + ~v2;
      *(this + 14) = 13;
      v9 = v10 - 1;
      goto LABEL_121;
    }
  }

  if (v4 > 0x3Au)
  {
    if (v4 <= 0x5Cu)
    {
      if (v4 == 59)
      {
        Tokenizer::NextChar(this);
        v22 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v22;
        *(this + 6) = v16 + ~v22;
        v18 = 15;
      }

      else
      {
        if (v4 != 91)
        {
          goto LABEL_54;
        }

        Tokenizer::NextChar(this);
        v20 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v20;
        *(this + 6) = v16 + ~v20;
        v18 = 10;
      }
    }

    else
    {
      switch(v4)
      {
        case ']':
          Tokenizer::NextChar(this);
          v24 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v24;
          *(this + 6) = v16 + ~v24;
          v18 = 11;
          break;
        case '{':
          Tokenizer::NextChar(this);
          v26 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v26;
          *(this + 6) = v16 + ~v26;
          v18 = 8;
          break;
        case '}':
          Tokenizer::NextChar(this);
          v17 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v17;
          *(this + 6) = v16 + ~v17;
          v18 = 9;
          break;
        default:
          goto LABEL_54;
      }
    }

LABEL_119:
    *(this + 14) = v18;
    goto LABEL_120;
  }

  if (v4 <= 0x28u)
  {
    if (v4 == 35)
    {
      Tokenizer::NextChar(this);
      v21 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v21;
      *(this + 6) = v16 + ~v21;
      v18 = 16;
    }

    else
    {
      if (v4 != 40)
      {
        goto LABEL_54;
      }

      Tokenizer::NextChar(this);
      v19 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v19;
      *(this + 6) = v16 + ~v19;
      v18 = 6;
    }

    goto LABEL_119;
  }

  switch(v4)
  {
    case ')':
      Tokenizer::NextChar(this);
      v23 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v23;
      *(this + 6) = v16 + ~v23;
      v18 = 7;
      goto LABEL_119;
    case ',':
      Tokenizer::NextChar(this);
      v25 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v25;
      *(this + 6) = v16 + ~v25;
      v18 = 14;
      goto LABEL_119;
    case '.':
      v13 = *this;
      if (*(*this + 23) < 0)
      {
        v13 = *v13;
      }

      v14 = *(v13 + *(this + 3));
      if ((v14 & 0x80000000) != 0)
      {
        v15 = __maskrune(v14, 0x400uLL);
      }

      else
      {
        v15 = *(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x400;
      }

      if (v15)
      {
        goto LABEL_58;
      }

      goto LABEL_118;
  }

LABEL_54:
  if (v4 < 0)
  {
    v27 = __maskrune(v4, 0x100uLL);
  }

  else
  {
    v27 = *(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x100;
  }

  if (v27 || (v29 = *(this + 65), v29 == 95))
  {

    return Tokenizer::ParseSymbol(this);
  }

  if ((v29 & 0x80000000) != 0)
  {
    v30 = __maskrune(v29, 0x400uLL);
  }

  else
  {
    v30 = *(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x400;
  }

  if (v30)
  {
LABEL_58:

    return Tokenizer::ParseNumber(this);
  }

  v31 = *(this + 65);
  if (v31 <= 0x2E)
  {
    if (*(this + 65) <= 0x29u)
    {
      if (v31 - 37 >= 2)
      {
        if (v31 == 34)
        {
          Tokenizer::ParseString(this);
LABEL_117:
          v40 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v40;
          *(this + 6) = v16 + ~v40;
          *(this + 14) = 0;
LABEL_120:
          v9 = v16 - 1;
          goto LABEL_121;
        }

        goto LABEL_110;
      }

      goto LABEL_91;
    }

    if (v31 - 42 >= 2 && v31 != 45)
    {
LABEL_110:
      v38 = *(this + 11);
      if (!v38)
      {
        goto LABEL_117;
      }

      v39 = this + 88;
      do
      {
        if (v38[25] >= v31)
        {
          v39 = v38;
        }

        v38 = *&v38[8 * (v38[25] < v31)];
      }

      while (v38);
      if (v39 == this + 88 || v31 < v39[25])
      {
        goto LABEL_117;
      }

LABEL_118:
      Tokenizer::NextChar(this);
      v41 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v41;
      *(this + 6) = v16 + ~v41;
      v18 = 4;
      goto LABEL_119;
    }

LABEL_91:
    if (*(this + 2) >= *(this + 1))
    {
      goto LABEL_118;
    }

    v33 = *this;
    v34 = *(this + 3);
    goto LABEL_93;
  }

  if (*(this + 65) > 0x3Du)
  {
    if (v31 != 62)
    {
      if (v31 != 94 && v31 != 124)
      {
        goto LABEL_110;
      }

      goto LABEL_91;
    }

LABEL_98:
    if (*(this + 2) < *(this + 1))
    {
      v36 = *this;
      if (*(*this + 23) < 0)
      {
        v36 = *v36;
      }

      if (*(v36 + *(this + 3)) == 61)
      {
        Tokenizer::NextChar(this);
      }
    }

    goto LABEL_118;
  }

  if (v31 != 47)
  {
    if (v31 != 60)
    {
      if (v31 == 61)
      {
        if (*(this + 2) < *(this + 1))
        {
          v32 = *this;
          if (*(*this + 23) < 0)
          {
            v32 = *v32;
          }

          if (*(v32 + *(this + 3)) == 61)
          {
            goto LABEL_118;
          }
        }

LABEL_97:
        Tokenizer::NextChar(this);
        v35 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v35;
        *(this + 6) = v16 + ~v35;
        v18 = 5;
        goto LABEL_119;
      }

      goto LABEL_110;
    }

    goto LABEL_98;
  }

  if (*(this + 2) >= *(this + 1))
  {
    goto LABEL_118;
  }

  v33 = *this;
  v34 = *(this + 3);
  v37 = *this;
  if (*(*this + 23) < 0)
  {
    v37 = *v33;
  }

  if (*(v37 + v34) == 47)
  {

    return Tokenizer::ParseLineComment(this);
  }

  else
  {
    v42 = *this;
    if (*(v33 + 23) < 0)
    {
      v42 = *v33;
    }

    if (*(v42 + v34) != 42)
    {
LABEL_93:
      if (*(v33 + 23) < 0)
      {
        v33 = *v33;
      }

      if (*(v33 + v34) != 61)
      {
        goto LABEL_118;
      }

      Tokenizer::NextChar(this);
      goto LABEL_97;
    }

    return Tokenizer::ParseMultiLineComment(this);
  }
}

uint64_t Tokenizer::ParseNumber(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = *(this + 3);
  if (v1 < v2)
  {
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = ++v3;
    v6 = *(this + 18) + 1;
    *(this + 18) = v6;
    if (v5 == 10)
    {
      v6 = 0;
      *(this + 68) = (*(this + 17) + 1);
    }

    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      while (1)
      {
        if (((v5 & 0x80) != 0 || (*(v7 + 4 * v5 + 60) & 0x400) == 0) && (v5 - 46 > 0x37 || ((1 << (v5 - 46)) & 0x80000000800001) == 0))
        {
          goto LABEL_21;
        }

        *(this + 64) = v5;
        if (v3 < v2)
        {
          break;
        }

        v5 = 0;
        *(this + 65) = 0;
        *(this + 3) = ++v3;
        ++v6;
LABEL_20:
        *(this + 18) = v6;
      }

      v8 = *this;
      if (*(*this + 23) < 0)
      {
        v8 = *v8;
      }

      v5 = *(v8 + v3);
      *(this + 65) = v5;
      *(this + 3) = ++v3;
      *(this + 18) = ++v6;
      if (v5 == 10)
      {
        v6 = 0;
        ++*(this + 17);
        v5 = 10;
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  *(this + 4) = *this;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v3 + ~v1;
  *(result + 24) = 3;
  *(result - 16) = v3 - 1;
  return result;
}

char *Tokenizer::ParseSymbol(Tokenizer *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 3);
  if (v2 < v3)
  {
    *(this + 64) = *(this + 65);
    if (v4 >= v3)
    {
      v6 = 0;
    }

    else
    {
      v5 = *this;
      if (*(*this + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = *(v5 + v4);
    }

    *(this + 65) = v6;
    *(this + 3) = v4 + 1;
    ++*(this + 18);
    if (v6 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      if ((v6 & 0x80) != 0)
      {
        if (__maskrune(v6, 0x500uLL))
        {
LABEL_12:
          v2 = *(this + 2);
          goto LABEL_15;
        }
      }

      else if ((*(v7 + 4 * v6 + 60) & 0x500) != 0)
      {
        goto LABEL_12;
      }

      v2 = *(this + 2);
      if (*(this + 65) != 95)
      {
        goto LABEL_23;
      }

LABEL_15:
      v8 = *(this + 1);
      if (v2 >= v8)
      {
LABEL_23:
        v4 = *(this + 3);
        break;
      }

      v9 = *(this + 3);
      *(this + 64) = *(this + 65);
      if (v9 >= v8)
      {
        v6 = 0;
      }

      else
      {
        v10 = *this;
        if (*(*this + 23) < 0)
        {
          v10 = *v10;
        }

        v6 = *(v10 + v9);
      }

      *(this + 65) = v6;
      *(this + 3) = v9 + 1;
      ++*(this + 18);
      if (v6 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }
  }

  *(this + 4) = *this;
  *(this + 5) = v2;
  v11 = this + 32;
  *(v11 + 2) = v4 + ~v2;
  *(v11 + 6) = 1;
  *(v11 - 2) = v4 - 1;
  return v11;
}

uint64_t Tokenizer::ParseString(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 >= v2)
  {
    v5 = *(this + 65);
  }

  else
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = v3 + 1;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
      goto LABEL_11;
    }
  }

  if (v5 == 34)
  {
    goto LABEL_23;
  }

LABEL_11:
  v6 = *(this + 3);
  if (v6 <= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (v6 >= v2)
  {
LABEL_23:
    if (v1 >= v2)
    {
      v6 = *(this + 3);
    }

    else
    {
LABEL_24:
      v9 = *(this + 3);
      *(this + 64) = v5;
      if (v9 >= v2)
      {
        v11 = 0;
      }

      else
      {
        v10 = *this;
        if (*(*this + 23) < 0)
        {
          v10 = *v10;
        }

        v11 = *(v10 + v9);
      }

      *(this + 65) = v11;
      v6 = v9 + 1;
      *(this + 3) = v6;
      ++*(this + 18);
      if (v11 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }

    goto LABEL_32;
  }

  while (v1 < v2)
  {
    *(this + 64) = v5;
    v8 = *this;
    if (*(*this + 23) < 0)
    {
      v8 = *v8;
    }

    v5 = *(v8 + v6);
    *(this + 65) = v5;
    *(this + 3) = ++v6;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    else if (v5 == 34)
    {
      goto LABEL_24;
    }

    if (v7 == v6)
    {
      goto LABEL_23;
    }
  }

LABEL_32:
  *(this + 4) = *this;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v6 + ~v1;
  *(result + 24) = 2;
  *(result - 16) = v6 - 1;
  return result;
}

uint64_t Tokenizer::ParseLineComment(Tokenizer *this)
{
  v1 = *(this + 65);
  while (v1 != 10)
  {
    v3 = *(this + 1);
    v2 = *(this + 2);
    v4 = *(this + 3);
    if (v2 < v3)
    {
      *(this + 64) = v1;
      if (v4 >= v3)
      {
        v1 = 0;
      }

      else
      {
        v5 = *this;
        if (*(*this + 23) < 0)
        {
          v5 = *v5;
        }

        v1 = *(v5 + v4);
      }

      *(this + 65) = v1;
      *(this + 3) = ++v4;
      ++*(this + 18);
      if (v1 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }

      if (v4 < v3)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  v2 = *(this + 2);
  v4 = *(this + 3);
LABEL_14:
  *(this + 4) = *this;
  *(this + 5) = v2;
  result = this + 32;
  *(result + 16) = v4 + ~v2;
  *(result + 24) = 12;
  *(result - 16) = v4 - 1;
  return result;
}

uint64_t Tokenizer::ParseMultiLineComment(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 >= v2)
  {
    v6 = *(this + 65);
  }

  else
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    v7 = v3 + 1;
    *(this + 3) = v3 + 1;
    v8 = *(this + 18) + 1;
    *(this + 18) = v8;
    if (v5 == 10)
    {
      v8 = 0;
      *(this + 68) = (*(this + 17) + 1);
    }

    *(this + 64) = v5;
    if (v7 >= v2)
    {
      v6 = 0;
      *(this + 65) = 0;
      *(this + 3) = v3 + 2;
      *(this + 18) = v8 + 1;
    }

    else
    {
      v9 = *this;
      if (*(*this + 23) < 0)
      {
        v9 = *v9;
      }

      v6 = *(v9 + v7);
      *(this + 65) = v6;
      *(this + 3) = v3 + 2;
      *(this + 18) = v8 + 1;
      if (v6 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }
  }

  v10 = *(this + 3);
  while (1)
  {
    if (v6 != 42)
    {
      if (v1 >= v2)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (v1 >= v2)
    {
      goto LABEL_32;
    }

    v11 = *this;
    v12 = *this;
    if (*(*this + 23) < 0)
    {
      v12 = *v11;
    }

    if (*(v12 + v10) == 47)
    {
      break;
    }

LABEL_24:
    *(this + 64) = v6;
    if (v10 >= v2)
    {
      v6 = 0;
    }

    else
    {
      v13 = *this;
      if (*(*this + 23) < 0)
      {
        v13 = *v13;
      }

      v6 = *(v13 + v10);
    }

    *(this + 65) = v6;
    *(this + 3) = ++v10;
    ++*(this + 18);
    if (v6 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    if (v10 >= v2)
    {
LABEL_32:
      v14 = v10 + ~v1;
      v11 = *this;
      goto LABEL_33;
    }
  }

  *(this + 64) = 42;
  if (v10 >= v2)
  {
    v17 = 0;
  }

  else
  {
    v16 = v11;
    if (*(v11 + 23) < 0)
    {
      v16 = *v11;
    }

    v17 = *(v16 + v10);
  }

  *(this + 65) = v17;
  *(this + 3) = v10 + 1;
  v18 = *(this + 18) + 1;
  *(this + 18) = v18;
  if (v17 == 10)
  {
    v18 = 0;
    *(this + 68) = (*(this + 17) + 1);
  }

  *(this + 64) = v17;
  if (v10 + 1 >= v2)
  {
    *(this + 65) = 0;
    v10 += 2;
    *(this + 3) = v10;
    v21 = v18 + 1;
LABEL_47:
    *(this + 18) = v21;
  }

  else
  {
    v19 = v11;
    if (*(v11 + 23) < 0)
    {
      v19 = *v11;
    }

    v20 = *(v19 + v10 + 1);
    *(this + 65) = v20;
    v10 += 2;
    *(this + 3) = v10;
    *(this + 18) = v18 + 1;
    if (v20 == 10)
    {
      v21 = 0;
      ++*(this + 17);
      goto LABEL_47;
    }
  }

  v14 = v10 + ~v1;
LABEL_33:
  *(this + 4) = v11;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v14;
  *(result + 24) = 12;
  *(result - 16) = v10 - 1;
  return result;
}

uint64_t Tokenizer::GetNextChar(Tokenizer *this)
{
  if (*(this + 2) >= *(this + 1))
  {
    return 0;
  }

  else
  {
    return *(this + 65);
  }
}

uint64_t *std::__tree<char>::__emplace_unique_key_args<char,char const&>(uint64_t a1, char *a2, _BYTE *a3)
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
      v6 = *(v3 + 25);
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

uint64_t _C3DLODEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *_C3DLODCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"LOD");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 7;
  v22 = a1 + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"threshold");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 76;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"thresholdType");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 48;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"sceneRef");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t C3DLODGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DLODGetTypeID_onceToken != -1)
  {
    C3DLODGetTypeID_cold_1();
  }

  return C3DLODGetTypeID_typeID;
}

double __C3DLODGetTypeID_block_invoke()
{
  C3DLODGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DLODContextClassSceneLink;
  unk_281740FF8 = kC3DC3DLODContextClassSceneLink;
  unk_281741008 = unk_282DC4B80;
  qword_281741018 = qword_282DC4B90;
  qword_281740FE0 = _C3DLODCopyInstanceVariables;
  return result;
}

uint64_t C3DLODCreate(const void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  if (C3DLODGetTypeID_onceToken != -1)
  {
    C3DLODGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLODGetTypeID_typeID, 64);
  *(Instance + 76) = v4;
  *(Instance + 72) = a3;
  v7 = *(Instance + 64);
  if (v7 != a1)
  {
    if (v7)
    {
      CFRelease(v7);
      *(Instance + 64) = 0;
    }

    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *(Instance + 64) = v8;
  }

  return Instance;
}

uint64_t C3DLODGetEntity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DLODGetThresholdType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 76);
}

float C3DLODGetThreshold(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

id _C3DLODCFFinalize(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1, a2);
}

CFStringRef _C3DLODCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLOD>");
}

CFStringRef _C3DLODCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLOD>");
}

C3D::DrawNodesPass *C3D::SSAODepthNormalPass::SSAODepthNormalPass(C3D::DrawNodesPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  v7 = 0;
  v9 = 0u;
  v10 = 0x20000;
  memset(v6, 0, sizeof(v6));
  v8 = -1;
  BYTE8(v9) = 1;
  result = C3D::DrawNodesPass::DrawNodesPass(a1, a2, a3, v6);
  *result = &unk_282DC4BA8;
  *(result + 670) = 0;
  *(result + 671) = a4;
  return result;
}

void C3D::SSAODepthNormalPass::setup(C3D::SSAODepthNormalPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  C3D::Pass::setOutputCount(this, 2u);
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v4 + 8) = "SSAO-DepthNormal";
  *(v4 + 65) = 0;
  *(v4 + 28) = 115;
  v5 = C3D::Pass::descriptor(**(this + 671));
  *(v4 + 16) = *(C3D::PassDescriptor::outputAtIndex(v5, 0) + 16);
  v6 = C3D::Pass::descriptor(**(this + 671));
  v7 = *(C3D::PassDescriptor::outputAtIndex(v6, 0) + 18);
  *(v4 + 18) = v7;
  LOWORD(v8) = *(v4 + 16);
  *&v8 = fmax(v8, v7);
  *(v4 + 30) = (floorf(log2f(*&v8)) + 1.0);
  v9 = *(v4 + 66);
  *(v4 + 48) = xmmword_21C2A1CC0;
  *(v4 + 66) = v9 & 0xFFBC | 0x42;
  v10 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v10 + 64) = 2;
  *(v10 + 66) |= 8u;
  v11 = C3D::Pass::descriptor(**(this + 671));
  *(v10 + 16) = *(C3D::PassDescriptor::outputAtIndex(v11, 0) + 16);
  v12 = C3D::Pass::descriptor(**(this + 671));
  *(v10 + 18) = *(C3D::PassDescriptor::outputAtIndex(v12, 0) + 18);
  *(v10 + 28) = 252;
  *(v10 + 66) = *(v10 + 66) & 0xFFFC | 2;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2), v13);
  if (*(v4 + 24) == 5)
  {
    v15 = ([(SCNMTLRenderContext *)RenderContext features]& 0x20) != 0;
    *(this + 117) = v15;
    *(this + 118) = v15;
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) >= 2)
  {
    PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(*(this + 2));
    *(this + 117) = PreferredRenderMode;
    *(this + 118) = PreferredRenderMode != 0;
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 120) = 1;
  }

  C3D::DrawNodesPass::setup(this, v14);
}

void C3D::SSAODepthNormalPass::compile(C3D::SSAODepthNormalPass *this)
{
  v2 = (*(*this + 64))(this);
  v4 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 670) = v4;
  if (!v4)
  {
    operator new();
  }

  *(this + 32) = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v4 + 16, v3);

  C3D::DrawNodesPass::compile(this, v5);
}

void C3D::SSAODepthNormalPassResource::~SSAODepthNormalPassResource(C3D::SSAODepthNormalPassResource *this)
{
  *this = &unk_282DC4C38;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_282DC4C38;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DSubdivisionOsdGPUGetTessellationPartitionMode(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t C3DGeometryOpenSubdivGetGPUHasPatchOfType(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 168) + 24);
  if (result)
  {
    return __C3DSubdivisionOsdGPUHasPatchOfType(result, a2);
  }

  return result;
}

BOOL __C3DSubdivisionOsdGPUHasPatchOfType(uint64_t a1, uint64_t a2)
{
  v3 = C3DPatchTypeToOsdPatchType(a2, a2);
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (*v5 == v3)
  {
    return 1;
  }

  v7 = v5 + 4;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v4 == v8)
    {
      break;
    }

    v10 = *v7;
    v7 += 4;
    ++v8;
  }

  while (v10 != v3);
  return v9 < v4;
}

void *_C3DSubdivisionOsdGPURuntimeDataCFInit(void *result)
{
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  return result;
}

void _C3DSubdivisionOsdGPURuntimeDataCFFinalize(char *a1)
{
  v2 = *(a1 + 15);
  if (v2)
  {
    v8 = *(a1 + 15);
    std::vector<std::vector<std::vector<CFRange>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    MEMORY[0x21CF07610](v2, 0x20C40960023A9);
  }

  __C3DSubdivisionOsdGPUPatchTableDestroy((a1 + 32));
  v3 = *(a1 + 11);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      goto LABEL_7;
    }

    do
    {
      __C3DSubdivisionOsdGPUPatchTableDestroy(v4);
      v4 += 56;
    }

    while (v4 != v5);
    v3 = *(a1 + 11);
    if (v3)
    {
LABEL_7:
      v6 = *v3;
      if (*v3)
      {
        v3[1] = v6;
        operator delete(v6);
      }

      MEMORY[0x21CF07610](v3, 0x20C40960023A9);
    }
  }

  __C3DSubdivisionOsdGPURefinerDestroy((a1 + 144));
  for (i = 0; i != 80; i += 8)
  {
  }
}

__CFString *_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescription(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DSubdivisionOsdGPURuntimeDataRef %p>", a1);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v3 = [a1[8] length];
  v4 = a1[4];
  v5 = [a1[6] length];
  v6 = [a1[7] length];
  v4 *= 16;
  v59[3] += v4 + v3 + v5 + v6;
  CFStringAppend(Mutable, @"\nVertex patch table:");
  v7 = C3DGetByteCountDescriptionFromSize(v4);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v7);
  v9 = a1;
  v56 = a1;
  if (a1[4])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9[5] + v10);
      v13 = v12[1];
      v14 = C3DGetPatchTypeDescription(*v12, v8);
      CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v13, v14);
      ++v11;
      v9 = a1;
      v10 += 16;
    }

    while (v11 < a1[4]);
  }

  v15 = v9[8];
  v16 = C3DGetByteCountDescriptionFromSize(v3);
  v17 = v9;
  CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v15, v16);
  v18 = v9[6];
  v19 = C3DGetByteCountDescriptionFromSize(v5);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v18, v19);
  v20 = v9[7];
  v21 = C3DGetByteCountDescriptionFromSize(v6);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v20, v21);
  v22 = v9[11];
  if (v22)
  {
    v23 = *(v9[11] + 1) - *v22;
    if (v23)
    {
      v24 = 0;
      v55 = 0x6DB6DB6DB6DB6DB7 * (v23 >> 3);
      do
      {
        CFStringAppendFormat(Mutable, 0, @"\nFVar patch table (channel %zu):", v24);
        v25 = *v17[11];
        if (0x6DB6DB6DB6DB6DB7 * ((*(v17[11] + 1) - v25) >> 3) <= v24)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v26 = (v25 + 56 * v24);
        v27 = [v26[4] length];
        v28 = *v26;
        v29 = [v26[2] length];
        v30 = [v26[3] length];
        v59[3] += 16 * v28 + v27 + v29 + v30;
        v31 = C3DGetByteCountDescriptionFromSize(16 * v28);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v31);
        if (*v26)
        {
          v33 = 0;
          v34 = 0;
          do
          {
            v35 = (v26[1] + v33);
            v36 = v35[1];
            v37 = C3DGetPatchTypeDescription(*v35, v32);
            CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v36, v37);
            ++v34;
            v33 += 16;
          }

          while (v34 < *v26);
        }

        v38 = v26[4];
        v39 = C3DGetByteCountDescriptionFromSize(v27);
        CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v38, v39);
        v40 = v26[2];
        v41 = C3DGetByteCountDescriptionFromSize(v29);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v40, v41);
        v42 = v26[3];
        v43 = C3DGetByteCountDescriptionFromSize(v30);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v42, v43);
        ++v24;
        v17 = v56;
      }

      while (v24 != v55);
    }
  }

  if (v17[12] && v17[13])
  {
    CFStringAppend(Mutable, @"\nLegacy Gregory patch table:");
    v44 = [v17[12] length];
    v45 = [v17[13] length];
    v59[3] += v45 + v44;
    v46 = v17[12];
    v47 = C3DGetByteCountDescriptionFromSize(v44);
    CFStringAppendFormat(Mutable, 0, @"\n  - Vertex valence buffer: %p (%@)", v46, v47);
    v48 = v17[13];
    v49 = C3DGetByteCountDescriptionFromSize(v45);
    CFStringAppendFormat(Mutable, 0, @"\n  - Quad offsets buffer: %p (%@)", v48, v49);
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke;
  v57[3] = &unk_2782FDF58;
  v57[4] = &v58;
  v57[5] = Mutable;
  CFStringAppend(Mutable, @"\nVertex Refiner:");
  ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke(v57, (v17 + 18));
  v50 = [v17[44] length];
  v59[3] += v50;
  v51 = v17[44];
  v52 = C3DGetByteCountDescriptionFromSize(v50);
  CFStringAppendFormat(Mutable, 0, @"\n  - Skin/morph indexing table: %p (%@)", v51, v52);
  v53 = C3DGetByteCountDescriptionFromSize(v59[3]);
  CFStringAppendFormat(Mutable, 0, @"\nTotal memory usage: %@", v53);
  _Block_object_dispose(&v58, 8);
  return Mutable;
}

void sub_21BFF1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z40C3DSubdivisionOsdGPURuntimeDataGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::typeID = result;
  return result;
}

void __C3DSubdivisionOsdGPURefine(__n128 *a1, void *a2)
{
  if (!a1[5].n128_u64[0])
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DSubdivisionOsdGPURefine(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v24 = 0;
  v25 = 0;
  v12 = [(SCNMTLOpenSubdivComputeEvaluator *)a1[5].n128_i64[0] computeEvaluator];
  v14 = OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils(v12, a1[2].n128_i64[1], &a1[3].n128_u32[2], a1[3].n128_i64[0], &a1[4].n128_i32[1], 0, &v24, 0, *a1, v13, &v24, a1->n128_u64[0], a1->n128_i64[1], a1[1].n128_i64[0], a1[1].n128_i64[1], 0, 0, 0, a1[2].n128_i32[0], a2);
  if (!v14)
  {
    v16 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __C3DSubdivisionOsdGPURefine(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  C3DSceneSourcePerformConsistencyCheck();
}

void __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(uint64_t a1, __C3DGeometry *a2, void *a3, id *a4)
{
  if (C3DGeometryGetEffectiveDataKindForRendering(a2, a2))
  {
    *(a1 + 360) = [a3 computePipelineStateForKernel:@"scn_osd_synchronize_coarse_positions_no_argument_buffer"];
    Mesh = C3DGeometryGetMesh(a2, v8);
    PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(Mesh);
    v12 = PositionOriginalToFirstDeindexedTable;
    var7 = a2->var10.var7;
    if (!var7)
    {
      v14 = scn_default_log(PositionOriginalToFirstDeindexedTable, v11);
      PositionOriginalToFirstDeindexedTable = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
      if (PositionOriginalToFirstDeindexedTable)
      {
        __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(v14, v11, v15, v16, v17, v18, v19, v20);
      }
    }

    v22 = var7[4];
    v21 = var7[5];
    __p = 0;
    v37 = 0;
    v38 = 0;
    v23 = (v21 - v22) >> 2;
    if (v21 != v22)
    {
      std::vector<float>::__vallocate[abi:nn200100](&__p, (v21 - v22) >> 2);
    }

    if (v23 != *(a1 + 28))
    {
      v24 = scn_default_log(PositionOriginalToFirstDeindexedTable, v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    v32 = __p;
    if (v21 != v22)
    {
      v33 = 0;
      v34 = var7[4];
      do
      {
        v35 = *(v34 + 4 * v33);
        if (v12)
        {
          v35 = *(v12 + 4 * v35);
        }

        v32[v33++] = v35;
      }

      while (v23 > v33);
    }

    *(a1 + 352) = [*a4 newBufferWithBytes:v32 length:v37 - v32 options:0];
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = [a3 computePipelineStateForKernel:@"scn_osd_synchronize_indexed_coarse_positions_no_argument_buffer"];
  }
}

void sub_21BFF133C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DSubdivisionOsdGPURuntimeDataCreateWithData(uint64_t a1, uint64_t a2, _BYTE *a3, SCNMTLResourceManager *a4, void *a5, uint64_t a6)
{
  v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a1 error:0];
  v10 = [(NSKeyedUnarchiver *)v9 decodeInt32ForKey:@"version"];
  Instance = 0;
  if (v10 >= 3)
  {
    if (!a5)
    {
      v13 = scn_default_log(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        C3DSubdivisionOsdGPURuntimeDataCreateWithData(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = [a5 commandBuffer];
    v22 = [v21 computeCommandEncoder];
    v41.var0 = [a5 device];
    v41.var1 = a5;
    v41.var2 = v21;
    v41.var3 = v22;
    if (C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::onceToken != -1)
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData();
    }

    Instance = C3DTypeCreateInstance_(C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::typeID, 392);
    v39 = 0;
    v40 = 0;
    v23 = [(NSKeyedUnarchiver *)v9 decodeBytesForKey:@"primvarDataTypeHash" returnedLength:&v39];
    if (v39 == 4)
    {
      *(Instance + 24) = *v23;
    }

    *(Instance + 28) = [(NSKeyedUnarchiver *)v9 decodeInt32ForKey:@"coarseVertexCount"];
    __C3DSubdivisionOsdGPURuntimeDataDecodePatchTable(size, v9, &cfstr_Vertexpatchtab.isa, &v41);
    v24 = v43;
    *(Instance + 32) = *size;
    *(Instance + 48) = v24;
    *(Instance + 64) = v44;
    *(Instance + 80) = v45;
    if (-[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"fvarPatchTables" stringByAppendingString:@".count"]))
    {
      operator new();
    }

    *(Instance + 88) = 0;
    v37 = a3;
    if (a3[6] == 2)
    {
      v25 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, [@"legacyGregoryPatchTable" stringByAppendingString:@".vertexValenceBuffer"], &v41, 0);
      v26 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBuffer"], &v41, 0);
      v27 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBaseGregory"]);
      v28 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBaseGregoryBoundary"]);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = -1;
      v28 = -1;
    }

    *(Instance + 96) = v25;
    *(Instance + 104) = v26;
    *(Instance + 112) = v27;
    *(Instance + 116) = v28;
    v29 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"patchRangesTable" stringByAppendingString:@".elementCount"]);
    v30 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"patchRangesTable" stringByAppendingString:@".patchArrayCount"]);
    if (v29 && v30)
    {
      operator new();
    }

    *(Instance + 120) = 0;
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner(size, v9, &cfstr_Vertexrefiner.isa, a4, &v41);
    v31 = v45;
    *(Instance + 176) = v44;
    *(Instance + 192) = v31;
    *(Instance + 208) = v46;
    *(Instance + 224) = v47;
    v32 = v43;
    *(Instance + 144) = *size;
    *(Instance + 160) = v32;
    *(Instance + 184) = *(Instance + 64);
    *(Instance + 192) = *(Instance + 64);
    __C3DSubdivisionOsdGPURefine((Instance + 144), &v41);
    *(Instance + 16) = 0;
    if (-[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"fvarRefiners" stringByAppendingString:@".count"]))
    {
      operator new();
    }

    v40 = 0;
    __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(Instance, v37, a4, &v41.var0);
    *(Instance + 352) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Skinmorphsubdi.isa, &v41, 0);
    if ([(NSKeyedUnarchiver *)v9 containsValueForKey:@"synchronizeCoarsePositionsPipeline.functionName"])
    {
      *(Instance + 360) = [(SCNMTLResourceManager *)a4 computePipelineStateForKernel:[(NSKeyedUnarchiver *)v9 decodeObjectOfClass:objc_opt_class() forKey:@"synchronizeCoarsePositionsPipeline.functionName"]];
    }

    *(Instance + 128) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Fvarchanneldes.isa, &v41, 0);
    *(Instance + 136) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Fvarchannelspa.isa, &v41, 0);
    [v41.var3 endEncoding];
    [v41.var2 commit];
    [v41.var2 waitUntilCompleted];
    v33 = [v41.var2 status];
    if (v33 == 4)
    {
      goto LABEL_26;
    }

    v35 = scn_default_log(v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData(&v41.var2);
      if (!a6)
      {
        goto LABEL_25;
      }
    }

    else if (!a6)
    {
LABEL_25:
      CFRelease(Instance);
      Instance = 0;
LABEL_26:
      __C3DSubdivisionOsdGPUSetupAdditionalDataDestroy(&v40);
      goto LABEL_27;
    }

    (*(a6 + 16))(a6, v41.var2, 1);
    goto LABEL_25;
  }

LABEL_27:
  [(NSKeyedUnarchiver *)v9 finishDecoding];

  return Instance;
}

void sub_21BFF1C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&a28);
  MEMORY[0x21CF07610](a19, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

uint64_t *__C3DSubdivisionOsdGPURuntimeDataDecodePatchTable@<X0>(size_t *__return_ptr a1@<X8>, NSKeyedUnarchiver *a2@<X0>, NSString *a3@<X1>, MTLContext *a4@<X2>)
{
  size = 0;
  v8 = [(NSKeyedUnarchiver *)a2 decodeBytesForKey:[(NSString *)a3 stringByAppendingString:@".patchArrays"] returnedLength:&size];
  v9 = size;
  *a1 = size >> 4;
  v10 = malloc_type_malloc(v9, 0x1000040451B5BE8uLL);
  a1[1] = v10;
  memcpy(v10, v8, size);
  a1[5] = [(NSKeyedUnarchiver *)a2 decodeInt32ForKey:[(NSString *)a3 stringByAppendingString:@".dataBufferOffset"]];
  a1[6] = [(NSKeyedUnarchiver *)a2 decodeInt32ForKey:[(NSString *)a3 stringByAppendingString:@".dataBufferCoarseDataSize"]];
  v11 = [(NSKeyedUnarchiver *)a2 decodeInt32ForKey:[(NSString *)a3 stringByAppendingString:@".dataBufferFullDataSize"]];
  a1[2] = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)a3 stringByAppendingString:@".patchIndexBuffer"], a4, 0);
  a1[3] = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)a3 stringByAppendingString:@".patchParamBuffer"], a4, 0);
  result = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)a3 stringByAppendingString:@".dataBuffer"], a4, v11);
  a1[4] = result;
  return result;
}

uint64_t *__C3DSubdivisionOsdGPURuntimeDataDecodeRefiner@<X0>(uint64_t *__return_ptr a1@<X8>, NSKeyedUnarchiver *a2@<X0>, NSString *a3@<X1>, SCNMTLResourceManager *a4@<X2>, MTLContext *a5@<X3>)
{
  a1[7] = 0;
  v9 = a1 + 7;
  a1[8] = 0;
  a1[9] = 0;
  v10 = [(NSString *)a3 stringByAppendingString:@".stencilTable"];
  v11 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)v10 stringByAppendingString:@".sizesBuffer"], a5, 0);
  v12 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)v10 stringByAppendingString:@".offsetsBuffer"], a5, 0);
  v13 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)v10 stringByAppendingString:@".indicesBuffer"], a5, 0);
  v14 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a2, [(NSString *)v10 stringByAppendingString:@".weightsBuffer"], a5, 0);
  v15 = [(NSKeyedUnarchiver *)a2 decodeInt32ForKey:[(NSString *)v10 stringByAppendingString:@".numStencils"]];
  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  *(a1 + 8) = v15;
  v16 = [(NSString *)a3 stringByAppendingString:@".evaluatorInput"];
  v23 = 0uLL;
  v25 = 0;
  v26 = 0;
  v17 = [(NSKeyedUnarchiver *)a2 decodeBytesForKey:[(NSString *)v16 stringByAppendingString:@".srcDesc"] returnedLength:&v26];
  v18 = [(NSKeyedUnarchiver *)a2 decodeBytesForKey:[(NSString *)v16 stringByAppendingString:@".dstDesc"] returnedLength:&v25];
  if (v26 != 12)
  {
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner();
  }

  if (v25 != 12)
  {
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner();
  }

  *&v24[8] = *(v17 + 2);
  *v24 = *v17;
  *&v24[12] = *v18;
  v19 = *(v18 + 2);
  v20 = *v24;
  *(a1 + 5) = v23;
  *&v24[20] = v19;
  *(a1 + 7) = v20;
  a1[9] = *&v24[16];
  *&v23 = 0;
  DWORD2(v23) = 0;
  result = [(SCNMTLResourceManager *)a4 computeEvaluatorWithContext:a5 srcDesc:v9 dstDesc:a1 + 68 duDesc:&v23 dvDesc:&v23];
  a1[10] = result;
  return result;
}

void __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(uint64_t a1, _BYTE *a2, void *a3, id *a4)
{
  v8 = a2[4];
  IsVarying = C3DGeometryOsdGetColorIsVarying(*(a1 + 24));
  VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(*(a1 + 24));
  if (IsVarying)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  if (!*(a1 + 32))
  {
    v14 = 0;
    v29 = 0;
    goto LABEL_32;
  }

  v46 = v8;
  v47 = a4;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = 0;
  v16 = v12 + 8 * VaryingTextureCoordinatesCount;
  do
  {
    v17 = (*(a1 + 40) + v13);
    v18 = v17[1];
    v52 = *v17;
    v19 = v52;
    v20 = C3DPatchTypeFromOsdPatchType(v52, v11);
    NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v52);
    if (v19 <= 5)
    {
      if (v19 < 3 || v19 == 5)
      {
        v23 = scn_default_log(NumControlVertices, v11);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v50, v51);
        }
      }

      goto LABEL_26;
    }

    if (v19 > 7)
    {
      if (v19 != 8)
      {
        if (v19 != 9)
        {
          goto LABEL_26;
        }

        *(a1 + 246) = 12 * v14;
        *(a1 + 262) = v15;
        v24 = v18 * NumControlVertices;
        v25 = v15 + v18 * v16 * NumControlVertices;
        v26 = 12;
        goto LABEL_25;
      }

      *(a1 + 244) = 12 * v14;
      *(a1 + 260) = v15;
LABEL_24:
      v24 = v18 * NumControlVertices;
      v25 = v15 + v18 * v16 * NumControlVertices;
      v26 = 60;
LABEL_25:
      v15 = v25 + v24 * v26;
      goto LABEL_26;
    }

    if (v19 != 6)
    {
      *(a1 + 242) = 12 * v14;
      *(a1 + 258) = v15;
      goto LABEL_24;
    }

    v27 = a2[3];
    *(a1 + 240) = 12 * v14;
    v28 = 36.0;
    if ((v27 & (v20 < 4u)) == 0)
    {
      v28 = 12.0;
    }

    *(a1 + 256) = v15;
    v15 = (v15 + ((v28 * v18) * NumControlVertices)) + v18 * v16 * NumControlVertices;
LABEL_26:
    v14 += v18;
    ++v4;
    v13 += 16;
  }

  while (v4 < *(a1 + 32));
  if (v15)
  {
    a4 = v47;
    v29 = [*v47 newBufferWithLength:v15 options:32];
  }

  else
  {
    v29 = 0;
    a4 = v47;
  }

  v8 = v46;
LABEL_32:
  *(a1 + 248) = v29;
  if (v8)
  {
    v30 = [*a4 newBufferWithLength:80 * v14 options:32];
  }

  else
  {
    v30 = 0;
  }

  *(a1 + 264) = v30;
  *(a1 + 232) = [*a4 newBufferWithLength:12 * v14 options:32];
  if (*(a1 + 32))
  {
    v32 = 0;
    v33 = 0;
    v48 = a2[4] << 16;
    v45 = *(a1 + 24);
    do
    {
      v34 = *(*(a1 + 40) + v32);
      v35 = C3DPatchTypeFromOsdPatchType(v34, v31);
      if (a2[2] == 1)
      {
        v36 = v35;
        if ((a2[3] & (v35 < 4u)) != 0)
        {
          v37 = 256;
        }

        else
        {
          v37 = 0;
        }

        v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v4 = v4 & 0xFFFFFFFF00000000 | v45;
        v39 = C3DSubdivisionOsdGPUGetProgramGeneratorResources(v37 | v48 | v36 | 0x2000000000, v4, v38);
        v40 = objc_alloc_init(MEMORY[0x277CD6D08]);
        [v40 setLanguageVersion:{SCNMetalLanguageVersion(v40, v41)}];
        [v40 setFastMathEnabled:1];
        [v40 setPreprocessorMacros:v38];
        [v40 setAdditionalCompilerArguments:@" -w "];

        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v43 = C3DSubdivisionOsdGPUGetPerPatchTypeSources(v36);
        if (__C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::onceToken != -1)
        {
          __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines();
        }

        v44 = [v42 initWithFormat:@"%@%@%@", v39, v43, __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource];
        *(a1 + 272 + 8 * v34) = [a3 newComputePipelineStateWithFunctionName:@"compute_opensubdiv" library:{objc_msgSend(-[SCNMTLResourceManager libraryManager](a3), "libraryForSourceCode:options:", v44, v40)}];
      }

      ++v33;
      v32 += 16;
    }

    while (v33 < *(a1 + 32));
  }
}

uint64_t __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(NSKeyedUnarchiver *a1, NSString *a2, MTLContext *a3, size_t a4)
{
  if (![(NSKeyedUnarchiver *)a1 containsValueForKey:a2])
  {
    return 0;
  }

  __n = 0;
  v8 = [(NSKeyedUnarchiver *)a1 decodeBytesForKey:a2 returnedLength:&__n];
  if (__n >= a4)
  {
    return [a3->var0 newBufferWithBytes:v8 length:? options:?];
  }

  v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
  memcpy(v9, v8, __n);
  v10 = [a3->var0 newBufferWithBytes:v9 length:a4 options:0];
  free(v9);
  return v10;
}

void __C3DSubdivisionOsdGPUSetupAdditionalDataDestroy(void ***result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *v1;
    v3 = v1[1];
    if (*v1 == v3)
    {
      goto LABEL_5;
    }

    do
    {
      __C3DSubdivisionOsdGPURefinerDestroy(v2);
      v2 += 88;
    }

    while (v2 != v3);
    v1 = *result;
    if (*result)
    {
LABEL_5:
      v5 = *v1;
      if (*v1)
      {
        v1[1] = v5;
        operator delete(v5);
      }

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t C3DSubdivisionOsdGPUGetSharedSources(uint64_t a1, uint64_t a2)
{
  if (C3DSubdivisionOsdGPUGetSharedSources::onceToken != -1)
  {
    C3DSubdivisionOsdGPUGetSharedSources_cold_1();
  }

  return C3DSubdivisionOsdGPUGetSharedSources::kSources;
}

void __C3DSubdivisionOsdGPUGetSharedSources_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetPatchBasisShaderSource();
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetSharedSources::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}