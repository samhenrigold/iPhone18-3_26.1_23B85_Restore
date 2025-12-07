void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

void CMMITUBT1886Base::MakeLut(int *a1, float a2, float a3)
{
  v4 = 0;
  v5 = a2;
  v6 = a3;
  v7 = ceil(a2);
  v8 = floor(a2);
  v9 = a1;
  do
  {
    v10 = vcvtd_n_f64_u32(v4, 0x18uLL) * v6;
    v11 = 0.0;
    if (v10 > 0.0 || v7 == v8)
    {
      v13 = pow(v10, v5);
      if (fabs(v13) == INFINITY || v13 >= 0.0 && (v11 = v13, v13 > 1.0))
      {
        v11 = 1.0;
      }
    }

    v14 = vcvtmd_s64_f64(v11 * 16777216.0 + 0.5);
    *v9 = v14;
    v15 = 0x1000000;
    if (v14 <= 0x1000000)
    {
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v15 = 0;
    }

    *v9 = v15;
LABEL_15:
    v4 += 4096;
    ++v9;
  }

  while (v4 != 16781312);
  v16 = a1[4096];
  v17 = a1[1] - *a1;
  if (v17 < 0)
  {
    v17 = *a1 - a1[1];
  }

  if (v17 < 0x1000)
  {
    a1[1] = *a1;
  }

  v18 = v16 - a1[4095];
  if (v18 < 0)
  {
    v18 = a1[4095] - v16;
  }

  if (v18 <= 0xFFF)
  {
    a1[4095] = v16;
  }
}

uint64_t ___ZL42CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLGPK14__CFDictionary_block_invoke()
{
  v1 = 1;
  result = ColorSyncDefaultsGetBoolean("CMMITUBT1886INVEOTF_USE_SPEC_GAMMA_FOR_HLG", &v1);
  if (result)
  {
    CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled = v1;
  }

  return result;
}

uint64_t ConversionManager::AddTRCSequence(uint64_t a1, int a2, CMMMemMgr *a3, char *a4, __int128 *a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v16 = *a4;
  v17 = 0;
  if (a2)
  {
    v18 = a2 == 1;
    do
    {
      v19 = v18;
      if (v16)
      {
        v16 = *(v16 + 24);
        if (v16)
        {
          v17 = *(v16 + 16);
        }
      }

      v18 = 1;
    }

    while (!v19);
  }

  v20 = CMMBase::NewInternal(0xA8, *(a1 + 8), a3, a4);
  v21 = CMMConvTRC::CMMConvTRC(v20, a2, *a6, 0, a5, v16, 3, 1, 1.0, 1, 0);
  *(v21 + 16) = v17;
  if (v17)
  {
    *(v17 + 24) = v21;
  }

  v24 = *a3;
  if (!*a3)
  {
    *a3 = v21;
    v24 = v21;
  }

  do
  {
    *a4 = v24;
    v24 = *(v24 + 16);
  }

  while (v24);
  v25 = CMMBase::NewInternal(0xA8, *(a1 + 8), v22, v23);
  result = CMMConvTRC::CMMConvTRC(v25, a2, *a8, 0, a7, *a4, 3, 1, 1.0, 1, 0);
  *a4 = result;
  return result;
}

float default_PQInvEOTFOpticalScale(const __CFDictionary *a1, int a2)
{
  v6 = !a1 || (Value = CFDictionaryGetValue(a1, @"com.apple.cmm.SkipPQEETF"), v5 = *MEMORY[0x1E695E4D0], Value == *MEMORY[0x1E695E4D0]) || CFDictionaryGetValue(a1, @"com.apple.cmm.SkipToneMappingForBT2100") == v5 || CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMappingForBT2100") != v5;
  result = 0.0001;
  if ((a2 & v6) != 0)
  {
    return 0.01;
  }

  return result;
}

float custom_PQInvEOTFOpticalScale(const __CFDictionary *a1, float a2)
{
  v2 = 0.0;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"com.apple.cmm.PQInvEOTFOpticalScale") == 1)
    {
      Value = CFDictionaryGetValue(a1, @"com.apple.cmm.PQInvEOTFOpticalScale");
      if (Value)
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
        {
          if (valuePtr != 0.0 && valuePtr != a2)
          {
            return valuePtr;
          }
        }
      }
    }
  }

  return v2;
}

void ConversionManager::AddHLGDevToPCS(uint64_t a1, unsigned int a2, uint64_t a3, float32x2_t *a4, const __CFDictionary *a5)
{
  v10 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a5);
  v11 = MEMORY[0x1E695E4D0];
  if (a5 && CFDictionaryGetValue(a5, @"com.apple.cmm.ApplyToneMappingForBT2100") == *v11)
  {
    v12 = *(a1 + 61);
  }

  else
  {
    v12 = 0;
  }

  HLGInvOETFOpticalScale = 1.0;
  if ((v10 & 1) == 0)
  {
    HLGInvOETFOpticalScale = ConversionManager::GetHLGInvOETFOpticalScale(a1, a5);
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  LODWORD(v20[0]) = 1;
  TRC = CMMRGBCurves::MakeTRC(a3, HLGInvOETFOpticalScale, v20, *(a1 + 8), a2);
  v17 = CMMBase::NewInternal(0xA8, *(a1 + 8), v15, v16);
  v18 = CMMConvTRC::CMMConvTRC(v17, a2, TRC, 0, v20, *(a1 + 24), 3, 1, 1.0, 1, 1);
  *v18 = &unk_1F0E06D98;
  v18[41] = HLGInvOETFOpticalScale;
  CMMConvTRC::SetInputClamp(v18);
  (*(*v17 + 48))(v17);
  *(a1 + 24) = v17;
  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a1 + 61);
    if (v19)
    {
      v19 = *(a1 + 51);
    }
  }

  if (a2 == 2 && (v19 & 1) == 0)
  {
    ConversionManager::AddHLGOOTF(a1, a4, a5);
  }

  if (a5)
  {
    if (CFDictionaryGetValue(a5, @"com.apple.cmm.UseHLGOOTFForCoreVideo") != *v11)
    {
      CFDictionaryGetValue(a5, @"com.apple.cmm.Use100nitsHLGOOTF");
    }
  }
}

void ConversionManager::AddHLGOOTF(uint64_t a1, float32x2_t *a2, const __CFDictionary *a3)
{
  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v42 = 0.0;
  if (ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a3))
  {
    v8 = 1.0;
    v9 = 1000.0;
    HLGInvOETFOpticalScale = 1.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695E4D0];
  if (a3)
  {
    if (CFDictionaryGetValue(a3, @"com.apple.cmm.UseHLGOOTFForCoreVideo") == *v14)
    {
      v16 = 1;
    }

    else
    {
      v15 = *v14;
      v16 = CFDictionaryGetValue(a3, @"com.apple.cmm.Use100nitsHLGOOTF") == v15;
    }

    if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGSurroundLuminance") == 1)
    {
LABEL_13:
      v17 = !v16;
      if (a3)
      {
        goto LABEL_14;
      }

LABEL_17:
      v21 = 0;
      v20 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 64) == 203.0)
  {
    goto LABEL_13;
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  Value = CFDictionaryGetValue(a3, @"com.apple.cmm.ApplyToneMappingForBT2100");
  v19 = *v14;
  v20 = Value != *v14;
  v21 = CFDictionaryGetValue(a3, @"com.apple.cmm.SkipHLGOOTF") == v19 || CFDictionaryGetValue(a3, @"com.apple.cmm.SkipToneMappingForBT2100") == v19;
LABEL_19:
  v22 = *(a1 + 47);
  if (v22)
  {
    v23 = 1000.0;
    v9 = 1000.0;
    if (a3)
    {
LABEL_21:
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.TargetDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v24 = CFDictionaryGetValue(a3, @"com.apple.cmm.TargetDisplayWhite");
        if (v24)
        {
          v25 = CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
          v26 = valuePtr;
          if (!v25)
          {
            v26 = 0.0;
          }
        }

        else
        {
          v26 = 0.0;
        }

        if (v26 != 0.0)
        {
          v9 = v26;
        }
      }

      HLGInvOETFOpticalScale = ConversionManager::GetHLGInvOETFOpticalScale(a1, a3);
      v29 = 1.0;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGOOTFGainScale") == 1)
      {
        v40 = 0.0;
        v30 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGOOTFGainScale");
        if (v30)
        {
          if (CFNumberGetValue(v30, kCFNumberFloatType, &v40) == 1)
          {
            v29 = v40;
          }

          else
          {
            v29 = 1.0;
          }
        }
      }

      v31 = 0.0;
      if ((v17 | v16))
      {
        v31 = 5.0;
      }

      v42 = v31;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGSurroundLuminance") == 1)
      {
        v32 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGSurroundLuminance");
        CFNumberGetValue(v32, kCFNumberFloatType, &v42);
      }

      if (*(a1 + 47))
      {
        v33 = v9;
      }

      else
      {
        v33 = v29;
      }

      v8 = v33 / HLGInvOETFOpticalScale;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGLuminanceCoefficients") == 1)
      {
        v34 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGLuminanceCoefficients");
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFArrayGetTypeID() && CFArrayGetCount(v35) >= 4)
          {
            v37 = 0;
            v38 = a2 + 3;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v35, v37);
              CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, v38);
              ++v37;
              v38 = (v38 + 4);
            }

            while (v37 != 4);
          }
        }

        goto LABEL_5;
      }

      if (*(a1 + 47) || CFDictionaryGetValue(a3, @"com.apple.cmm.kColorSyncUseHLGReferenceLuminance") == *v14)
      {
        goto LABEL_5;
      }

LABEL_65:
      a2[3] = vmul_f32(a2[3], 0x3F0000003F000000);
      a2[4].f32[0] = a2[4].f32[0] * 0.5;
      a2[4].i32[1] = 1056964608;
      goto LABEL_5;
    }
  }

  else
  {
    v23 = 1.0;
    v27 = 100.0;
    if (v17)
    {
      v27 = 203.0;
    }

    if (v21)
    {
      v27 = 1000.0;
    }

    if (*(a1 + 51) & v20)
    {
      v9 = 1000.0;
    }

    else
    {
      v9 = v27;
    }

    if (a3)
    {
      goto LABEL_21;
    }
  }

  if ((*(a1 + 51) | v22))
  {
    HLGInvOETFOpticalScale = 12.0;
  }

  else
  {
    HLGInvOETFOpticalScale = 1.0;
  }

  v28 = 0.0;
  if ((v17 | v16))
  {
    v28 = 5.0;
  }

  v42 = v28;
  v8 = v23 / HLGInvOETFOpticalScale;
  if (!v22)
  {
    goto LABEL_65;
  }

LABEL_5:
  v11 = CMMBase::NewInternal(0x50, *(a1 + 8), v6, v7);
  CMMConvHLGOOTF::CMMConvHLGOOTF(v11, v9, v8, HLGInvOETFOpticalScale, v42, v12, &a2[3], *(a1 + 24));
  *(a1 + 24) = v13;
}

void *CMMITUBT1886EOTF::MakeTRC(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v7 = CMMBase::NewInternal(0x28, a3, a3, a4);
  *v7 = &unk_1F0E09180;
  v7[1] = 1;
  v7[3] = 0;
  v7[4] = 21512;
  v10 = CMMBase::NewInternal(0x5408, a3, v8, v9);
  v7[2] = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  v13 = CMMTable::UInt8Data(v10, v7[3]);
  CMMITUBT1886Base::MakeLut(v13, v11, v12);
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  *(a2 + 48) = *(a1 + 64);
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *a2 = v14;
  v17 = CMMTable::UInt8Data(v7[2], v7[3]);
  MakeLookups(v17);
  return v7;
}

void ConversionManager::AddPQEETFToneMapping(void *a1, float *a2, CFDictionaryRef theDict, const char *a4, float a5)
{
  if (a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEETF3DLut");
      v10 = Value == *MEMORY[0x1E695E4D0];
      if (Value == *MEMORY[0x1E695E4D0])
      {
        a5 = 1.0;
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQMasteringDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v11 = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQMasteringDisplayWhite");
        if (v11)
        {
          if (CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            *a2 = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQMasteringDisplayBlack") == 1)
      {
        valuePtr = 0.0;
        v12 = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQMasteringDisplayBlack");
        if (v12)
        {
          if (CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[1] = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.TargetDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v13 = CFDictionaryGetValue(theDict, @"com.apple.cmm.TargetDisplayWhite");
        if (v13)
        {
          if (CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[2] = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.TargetDisplayBlack") == 1)
      {
        valuePtr = 0.0;
        v14 = CFDictionaryGetValue(theDict, @"com.apple.cmm.TargetDisplayBlack");
        if (v14)
        {
          if (CFNumberGetValue(v14, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[1] = valuePtr;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (*a2 > a2[2] || a2[1] < a2[3])
    {
      v15 = a1[1];
      if (v10)
      {
        v16 = CMMBase::NewInternal(0xC0, v15, theDict, a4);
        v17 = v16;
        v18 = *a2;
        v19 = a2[1];
        v20 = a2[2];
        v21 = a2[3];
        v22 = a1[1];
        v23 = a1[3];
        *(v16 + 2) = 1;
        v16[2] = 0;
        v16[3] = v23;
        if (v23)
        {
          *(v23 + 16) = v16;
        }

        v16[5] = 0x3F80000000000000;
        *(v16 + 33) = 0x10000;
        *(v16 + 7) = xmmword_19A96E440;
        v16[9] = 3;
        *v16 = &unk_1F0E0B990;
        CMMThrowExceptionOnError(0);
        v24 = *(v17 + 18);
        v25 = *(v17 + 14);
        v26 = v25 * v24;
        *(v17 + 24) = v24;
        *(v17 + 25) = v25 * v24;
        v27 = v25 * v24 * v25;
        *(v17 + 26) = v27;
        *(v17 + 27) = v26 + v24;
        v28 = v27 + v24;
        v29 = v27 + v26;
        *(v17 + 28) = v28;
        *(v17 + 29) = v29;
        *(v17 + 30) = v29 + v24;
        *v17 = &unk_1F0E0B888;
        CMMConvPQEETFBase::CMMConvPQEETFBase((v17 + 16), v18, v19, v20, v21, a5, a2 + 6, 1);
        *v17 = &unk_1F0E082A8;
        v17[16] = &unk_1F0E083B0;
        LODWORD(valuePtr) = 32;
        _3DLUT = CMMConvPQEETFBase::create_3DLUT(v30, 0, 0, &valuePtr);
        if (_3DLUT)
        {
          v34 = CMMBase::NewInternal(0x28, v22, v31, v32);
          BytePtr = CFDataGetBytePtr(_3DLUT);
          Length = CFDataGetLength(_3DLUT);
          v34[2] = 0;
          v34[3] = BytePtr;
          *v34 = &unk_1F0E09180;
          v34[1] = 0;
          v34[4] = Length;
          v17[6] = CFRetain(_3DLUT);
          v17[10] = v34;
          v17[11] = CMMTable::UInt8Data(v34[2], v34[3]);
          CFRelease(_3DLUT);
        }
      }

      else
      {
        v37 = CMMBase::NewInternal(0x70, v15, theDict, a4);
        v38 = a1[3];
        CMMConvPQEETFBase::CMMConvPQEETFBase(v37, *a2, a2[1], a2[2], a2[3], a5, a2 + 6, 0);
        *(v39 + 72) = 1;
        v17 = (v39 + 64);
        *(v39 + 80) = 0;
        *(v39 + 88) = v38;
        if (v38)
        {
          *(v38 + 16) = v17;
        }

        *(v39 + 104) = 0x3F80000000000000;
        *(v39 + 97) = 0;
        *v39 = &unk_1F0E079C8;
        *(v39 + 64) = &unk_1F0E07A68;
      }

      a1[3] = v17;
      if (!a1[2])
      {
        a1[2] = v17;
      }
    }
  }
}

void ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(ConversionManager *this, const __CFDictionary *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  ReferenceWhiteToneMappingOptions = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(a2);
  v5 = 8.0;
  v6 = 0.0;
  v7 = 1.0;
  v8 = 0.9;
  v9 = 0.35;
  v10 = 2.6667;
  if (ReferenceWhiteToneMappingOptions && (v11 = ReferenceWhiteToneMappingOptions, v12 = CFGetTypeID(ReferenceWhiteToneMappingOptions), v12 == CFDictionaryGetTypeID()))
  {
    v33 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
    v32 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
    v7 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
    v34 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
    v10 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
    v31 = float_from_dictionary_with_default(v11, @"com.apple.cmm.ContentEDRStrength", 1.0);
    v13 = int32_from_dictionary_with_default(v11, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
    v6 = float_from_dictionary_with_default(v11, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
    v9 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
    v14 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
    v15 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
    v8 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
    v5 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMStopAnchor", 8.0);
    v16 = int32_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMVersion", 2);
    v17 = primaries_from_dictionary(v11);
  }

  else
  {
    v34 = 0.5;
    v13 = 0;
    v16 = 2;
    v17 = 9;
    v32 = 203.0;
    v33 = 1000.0;
    v31 = 1.0;
    v14 = 2.6667;
    v15 = 0.35;
  }

  v18 = *(this + 51);
  memset(v40, 0, sizeof(v40));
  ConversionManager::ColorantsForPrimaries(this, v40, v17, v4);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  CMMInvMatrix::CMMInvMatrix(v38, v40, dword_19A9B0638);
  v21 = CMMBase::NewInternal(0x160, *(this + 1), v19, v20);
  CMMConvInvMatrix::CMMConvInvMatrix(v21, v38, *(this + 3));
  *v22 = &unk_1F0E0BA98;
  *(this + 3) = v22;
  if (!*(this + 2))
  {
    *(this + 2) = v22;
  }

  if (!v18)
  {
    v7 = 1.0;
  }

  v25 = (this + 8);
  v26 = CMMBase::NewInternal(0xA8, *(this + 1), v23, v24);
  v28 = *(this + 3);
  v27 = (this + 24);
  CMMConvRWToneMapping::CMMConvRWToneMapping(v26, 1000.0, v33, v32, v7, v34, v10, v31, v13, v6, v16, v28, v9, v14, v15, v8, v5);
  *v27 = v26;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = &unk_1F0E071F8;
  CMMMatrix::InitializeMatrix(&v35, v36, v40, 1.0);
  CMMMatrix::MakeMatrixConv(&v35, *v25, v26, v29);
  *v27 = v30;
}

uint64_t primaries_from_dictionary(const __CFDictionary *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(a1, @"com.apple.cmm.RWTMPrimaries")) != 0 && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v4, kCFNumberSInt8Type, &valuePtr) == 1))
  {
    v6 = valuePtr;
    if (valuePtr > 0xCu || ((1 << valuePtr) & 0x1202) == 0)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }
  }

  else
  {
    return 9;
  }

  return v6;
}

void ConversionManager::ColorantsForPrimaries(uint64_t a1, void *a2, CMMMemMgr *a3, const char *a4)
{
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      v26 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
      if (ColorSyncProfileGetDCIP3RedPrimary_predicate != -1)
      {
        v39 = v26;
        dispatch_once(&ColorSyncProfileGetDCIP3RedPrimary_predicate, &__block_literal_global_340);
        v26 = v39;
      }

      *(v26 + 2) = 1918392666;
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = 20;
      v26[5] = &ColorSyncProfileGetDCIP3RedPrimary_rXYZ;
      *(v26 + 24) = 0;
      *v26 = &unk_1F0E09148;
      *a2 = v26;
      v29 = CMMBase::NewInternal(0x38, *(a1 + 8), v27, v28);
      if (ColorSyncProfileGetDCIP3GreenPrimary_predicate != -1)
      {
        v40 = v29;
        dispatch_once(&ColorSyncProfileGetDCIP3GreenPrimary_predicate, &__block_literal_global_343);
        v29 = v40;
      }

      *(v29 + 2) = 1733843290;
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = 20;
      v29[5] = &ColorSyncProfileGetDCIP3GreenPrimary_gXYZ;
      *(v29 + 24) = 0;
      *v29 = &unk_1F0E09148;
      a2[1] = v29;
      v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v30, v31);
      if (ColorSyncProfileGetDCIP3BluePrimary_predicate[0] != -1)
      {
        dispatch_once(ColorSyncProfileGetDCIP3BluePrimary_predicate, &__block_literal_global_346);
      }

      v13 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_35;
      }

      v14 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
      if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
      {
        v35 = v14;
        dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
        v14 = v35;
      }

      *(v14 + 2) = 1918392666;
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = 20;
      v14[5] = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
      *(v14 + 24) = 0;
      *v14 = &unk_1F0E09148;
      *a2 = v14;
      v17 = CMMBase::NewInternal(0x38, *(a1 + 8), v15, v16);
      if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
      {
        v36 = v17;
        dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
        v17 = v36;
      }

      *(v17 + 2) = 1733843290;
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = 20;
      v17[5] = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
      *(v17 + 24) = 0;
      *v17 = &unk_1F0E09148;
      a2[1] = v17;
      v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v18, v19);
      if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
      }

      v13 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 9)
      {
        v6 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
        if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
        {
          v33 = v6;
          dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          v6 = v33;
        }

        *(v6 + 2) = 1918392666;
        v6[2] = 0;
        v6[3] = 0;
        v6[4] = 20;
        v6[5] = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
        *(v6 + 24) = 0;
        *v6 = &unk_1F0E09148;
        *a2 = v6;
        v9 = CMMBase::NewInternal(0x38, *(a1 + 8), v7, v8);
        if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
        {
          v34 = v9;
          dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          v9 = v34;
        }

        *(v9 + 2) = 1733843290;
        v9[2] = 0;
        v9[3] = 0;
        v9[4] = 20;
        v9[5] = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
        *(v9 + 24) = 0;
        *v9 = &unk_1F0E09148;
        a2[1] = v9;
        v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v10, v11);
        if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
        }

        v13 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
        goto LABEL_34;
      }

LABEL_35:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }

    v20 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
    if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
    {
      v37 = v20;
      dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
      v20 = v37;
    }

    *(v20 + 2) = 1918392666;
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 20;
    v20[5] = &ColorSyncProfileGetBT709RedPrimary_rXYZ;
    *(v20 + 24) = 0;
    *v20 = &unk_1F0E09148;
    *a2 = v20;
    v23 = CMMBase::NewInternal(0x38, *(a1 + 8), v21, v22);
    if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
    {
      v38 = v23;
      dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
      v23 = v38;
    }

    *(v23 + 2) = 1733843290;
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 20;
    v23[5] = &ColorSyncProfileGetBT709GreenPrimary_gXYZ;
    *(v23 + 24) = 0;
    *v23 = &unk_1F0E09148;
    a2[1] = v23;
    v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v24, v25);
    if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
    {
      dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
    }

    v13 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
  }

LABEL_34:
  *(v12 + 2) = 1649957210;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = 20;
  v12[5] = v13;
  *(v12 + 24) = 0;
  *v12 = &unk_1F0E09148;
  a2[2] = v12;
}

void *CMMTable::CreateFlexTRCLookup(CMMTable *this, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, CMMTable *a5, unint64_t a6, CMMMemMgr *a7)
{
  if (CFArrayGetCount(this) < 2)
  {
    return 0;
  }

  v13 = CMMBase::NewInternal(0x28, a4, v11, v12);
  *v13 = &unk_1F0E09180;
  v13[1] = 1;
  v13[3] = 0;
  v13[4] = 4096;
  v16 = CMMBase::NewInternal(0x1000, a4, v14, v15);
  v13[2] = v16;
  CMMTable::MutableFloatData(v16);
  v17 = malloc_type_calloc(1uLL, 0x1000uLL, 0x100004052888210uLL);
  v18 = malloc_type_calloc(1uLL, 0x1000uLL, 0x100004052888210uLL);
  v42 = 1.0;
  valuePtr = 1.0;
  v19 = 1.0;
  Compute_FlexGTC(1.0, v17, this, a2, v20);
  Value = CFDictionaryGetValue(a3, @"com.apple.cmm.FlexGTCTargetHeadroom");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
  }

  v22 = CFDictionaryGetValue(a2, kColorSyncGainMapBaselineHeadroom);
  if (v22)
  {
    CFNumberGetValue(v22, kCFNumberFloatType, &v42);
    v19 = exp2f(v42);
  }

  v23 = 0;
  if (valuePtr <= v19)
  {
    v24 = valuePtr;
  }

  else
  {
    v24 = v19;
  }

  if (valuePtr >= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  do
  {
    v26 = (v23 / 1023.0) * 49.261;
    if (((v26 * 1023.0) / v19) <= 1023.0)
    {
      v27 = (v26 * 1023.0) / v19;
    }

    else
    {
      v27 = *"";
    }

    v28 = v27;
    if (v27 + 1 < 0x3FF)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 1023;
    }

    v30 = 0.0;
    if (v23)
    {
      v30 = *(v16 - 1) + 0.000015259;
    }

    v31 = (v17[v28] + ((v17[v29] - v17[v28]) * (v27 - v27))) * v26;
    if (v31 <= v25)
    {
      v32 = v31;
    }

    else
    {
      v32 = v25;
    }

    if (v31 >= v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v30;
    }

    *v16++ = v33;
    if ((v33 * 1023.0) <= 1023.0)
    {
      v34 = v33 * 1023.0;
    }

    else
    {
      v34 = *"";
    }

    if ((v33 * 1023.0) >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = v35;
    v37 = v33 / v19;
    v38 = v35 - v35;
    v39 = v17[v36];
    if (v36 + 1 < 0x3FF)
    {
      v40 = v36 + 1;
    }

    else
    {
      v40 = 1023;
    }

    v18[v23++] = v37 / (v39 + ((v17[v40] - v39) * v38));
  }

  while (v23 != 1024);
  free(v17);
  return v13;
}

uint64_t ConversionManager::AddFlexLuminanceToneMapping(uint64_t result, const void *a2)
{
  v2 = *(result + 80);
  if (v2)
  {
    v3 = result;
    if (*(result + 89) == 16)
    {
      result = ColorSyncOptionsGetFlexLumaScalingOptions(0, a2);
      if (result)
      {
        v6 = result;
        v7 = CMMBase::NewInternal(0x58, *(v3 + 8), v4, v5);
        v8 = v7;
        v9 = *(v3 + 8);
        v10 = *(v3 + 24);
        *(v7 + 2) = 1;
        v7[2] = 0;
        v7[3] = v10;
        if (v10)
        {
          *(v10 + 16) = v7;
        }

        v7[5] = 0x3F80000000000000;
        *(v7 + 33) = 16777217;
        *v7 = &unk_1F0E07E88;
        *(v7 + 13) = fmaxf(float_from_dictionary_with_default(v6, @"com.apple.cmm.FlexGTCTargetHeadroom", 1.0), 1.0);
        Value = CFDictionaryGetValue(v2, kColorSyncMonoGainMapParams);
        v12 = CFDictionaryGetValue(Value, kColorSyncGainMapBaselineHeadroom);
        v13 = (v8 + 6);
        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberFloatType, v8 + 6);
          v14 = exp2f(*v13);
        }

        else
        {
          v14 = *v13;
        }

        *(v8 + 12) = fmaxf(v14, 1.0);
        v15 = float_from_dictionary_with_default(v6, @"com.apple.cmm.ContentEDRStrength", 1.0);
        v16 = int32_from_dictionary_with_default(v6, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
        v17 = 0.0;
        v18 = float_from_dictionary_with_default(v6, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
        if (v15 >= 0.0)
        {
          v19 = v15;
        }

        else
        {
          v19 = 0.0;
        }

        if (v19 <= 1.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1.0;
        }

        if (v18 < 0.0)
        {
          v18 = 0.0;
        }

        if (v18 > 1.0)
        {
          v18 = 1.0;
        }

        if (v18 >= (1.0 - v20))
        {
          v21 = 1.0 - v20;
        }

        else
        {
          v21 = v18;
        }

        v23 = *(v8 + 12);
        v22 = *(v8 + 13);
        if (v22 <= 2.0)
        {
          v24 = *(v8 + 13);
        }

        else
        {
          v24 = 2.0;
        }

        v25 = v16 / 203.0;
        v26 = fmaxf(v25, 0.0);
        if (v23 <= 1.6)
        {
          v27 = *(v8 + 12);
        }

        else
        {
          v27 = 1.6;
        }

        if (v26 >= v27)
        {
          v17 = 1.6;
          if (v23 <= 1.6)
          {
            v17 = *(v8 + 12);
          }
        }

        else if (v25 > 0.0)
        {
          v17 = v16 / 203.0;
        }

        v28 = 1.0;
        v29 = 1.0;
        if (v16)
        {
          v30 = 0.6398 / powf(v17, 0.175);
          v31 = (v23 + -1.0) / 1.6667;
          v32 = v31 <= 0.0;
          v33 = v31 < 1.0 || v31 <= 0.0;
          if (v31 >= 1.0)
          {
            v32 = 1;
          }

          v34 = 0.0;
          if (!v33)
          {
            v34 = 1.0;
          }

          if (v32)
          {
            v31 = v34;
          }

          v35 = v30 + ((1.0 - v30) * (1.0 - v31));
          if (v35 <= (2.0 / v23))
          {
            v35 = 2.0 / v23;
          }

          v29 = fminf(v35, 1.0);
        }

        v36 = (v20 + v21) / 1.4142;
        if (fabsf(v36) > 0.0000001)
        {
          v28 = (v36 + ((v21 - v20) / 1.4142)) / (v36 + v36);
        }

        v67 = v20;
        v37 = v21;
        v38 = v36 * 1.4142;
        if (v23 >= v22)
        {
          v39 = v22;
        }

        else
        {
          v39 = v23;
        }

        v40 = log2f(v39);
        v41 = exp2f(v38 * v40);
        v42 = v23 * v29;
        if ((v23 * v29) >= v24)
        {
          v42 = v24;
        }

        if (v42 >= v22)
        {
          v42 = v22;
        }

        v43 = log2f(v42);
        v44 = v41 + ((exp2f(v38 * v43) - v41) * v28);
        if (v44 >= v22)
        {
          v45 = v22;
        }

        else
        {
          v45 = v44;
        }

        v46 = (v29 + -1.0) * v38 + 1.0;
        v47 = ((v46 + -1.0) * v28) + 1.0;
        v48 = fminf(v47, 1.0);
        *(v8 + 13) = v45 / v47;
        *(v8 + 14) = v48;
        if (do_debug_log(void)::predicate[0] != -1)
        {
          dispatch_once(do_debug_log(void)::predicate, &__block_literal_global_943);
        }

        ColorSyncLog(do_debug_log(void)::mode, "Solarium: CDR AGC Debug: edr_strength=%f, cdr_strength=%f, content_average_light_level=%f, target_headroom=%f, source_headroom=%f, desired_scale=%f, desired_target_headroom=%f, final_hr=%f, final_scaling=%f, combined headroom=%f", v67, v37, *&v16, *(v8 + 13), *(v8 + 12), v47, v45, (v45 / v47), v48, (v48 * (v45 / v47)));
        v49 = *(v8 + 13);
        if (v49 >= *(v8 + 12))
        {
          v49 = *(v8 + 12);
        }

        v50 = fmaxf(v49, 1.0);
        *(v8 + 13) = v50;
        if (CFDictionaryContainsKey(v2, kColorSyncMonoFlexGTCNodeTable) == 1 && CFDictionaryContainsKey(v2, kColorSyncMonoGainMapParams) == 1 && (v51 = CFDictionaryGetValue(v2, kColorSyncMonoFlexGTCNodeTable), v52 = CFDictionaryGetValue(v2, kColorSyncMonoGainMapParams), CFArrayGetCount(v51) >= 2))
        {
          v55 = CMMBase::NewInternal(0x28, v9, v53, v54);
          *v55 = &unk_1F0E09180;
          v55[1] = 1;
          v55[3] = 0;
          v55[4] = 4096;
          v58 = CMMBase::NewInternal(0x1000, v9, v56, v57);
          v55[2] = v58;
          v59 = CMMTable::MutableFloatData(v58);
          Compute_FlexGTC(v50, v59, v51, v52, v60);
        }

        else
        {
          v55 = 0;
        }

        v8[10] = v55;
        if (v55)
        {
          v61 = 0;
        }

        else
        {
          v61 = 4294967246;
        }

        result = CMMThrowExceptionOnError(v61);
        v62 = *(v8 + 14);
        *(v8 + 13) = v62 * *(v8 + 13);
        v63 = (v8 + 6);
        v64 = vld1_dup_f32(v63);
        *v65.i8 = vdiv_f32(0x41C50B5A41035CE7, v64);
        v66 = vzip1q_s32(v65, v65);
        v66.i32[2] = v65.i32[0];
        *(v8 + 60) = v66;
        *(v8 + 19) = v62 * 49.261;
        *(v3 + 24) = v8;
      }
    }
  }

  return result;
}

float ConversionManager::GetHLGInvOETFOpticalScale(ConversionManager *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipHLGOOTF");
    v5 = *MEMORY[0x1E695E4D0];
    v6 = Value == *MEMORY[0x1E695E4D0] || CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipToneMappingForBT2100") == v5;
    v8 = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMappingForBT2100");
    v9 = *(this + 51) != 1 || v8 == v5;
    if (!v9 || v6)
    {
      valuePtr = 0.0;
      v10 = CFDictionaryContainsKey(theDict, @"com.apple.cmm.HLGInvOETFOpticalScale");
      result = 0.0;
      if (v10 == 1)
      {
        v11 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGInvOETFOpticalScale");
        v12 = CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr);
        result = valuePtr;
        if (!v12)
        {
          result = 0.0;
        }
      }

      goto LABEL_16;
    }
  }

  else if (*(this + 51))
  {
    result = 0.0;
LABEL_16:
    if (result == 0.0)
    {
      return 12.0;
    }

    return result;
  }

  result = 1.0;
  if (*(this + 47))
  {
    return 12.0;
  }

  return result;
}

uint64_t ___ZL34disable_ITUBT1886Inv_on_HLG_to_SDRv_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncDisableInvBT1886inHLG2SDR", &v1);
  if (result)
  {
    disable_ITUBT1886Inv_on_HLG_to_SDR(void)::disabled = v1;
  }

  return result;
}

uint64_t ___ZL38display_referred_mapping_on_SDR_to_HLGv_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncDisplayReferredMappingInSDR2HLG", &v1);
  if (result)
  {
    display_referred_mapping_on_SDR_to_HLG(void)::enabled = v1;
  }

  return result;
}

uint64_t ___ZL26get_useITUBT1886ForEngammaPK14__CFDictionary_block_invoke()
{
  result = ColorSyncDefaultsGetBoolean("USEBT1886FORCOREVIDEOGAMMA", &get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs);
  if ((result & 1) == 0)
  {
    get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs = 0;
  }

  return result;
}

uint64_t ___ZL26get_useITUBT1886ForDegammaPK14__CFDictionary_block_invoke()
{
  result = ColorSyncDefaultsGetBoolean("USEBT1886FORCOREVIDEOGAMMA", &get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs);
  if ((result & 1) == 0)
  {
    get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs = 0;
  }

  return result;
}

void CMMMonoOutputProfile::~CMMMonoOutputProfile(CMMMonoOutputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMLutDisplayProfile::~CMMLutDisplayProfile(CMMLutDisplayProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMLutInputProfile::~CMMLutInputProfile(CMMLutInputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMMonoInputProfile::~CMMMonoInputProfile(CMMMonoInputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void TVector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::~TVector(uint64_t a1)
{
  v2 = (a1 + 8);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);

  CMMBase::operator delete(a1);
}

uint64_t TVector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::~TVector(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

BOOL DoApplyTransform(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, int a12, int a13, uint64_t a14, uint64_t a15, const __CFDictionary *a16)
{
  v21 = a1 + 64;
  v44[0] = *(a1 + 64);
  CMMMemMgr::RetainMemList(v44);
  v22 = *(v21 + 8);
  v23 = *(v21 + 60);
  v33 = a8;
  if (a16)
  {
    v31 = *(v21 + 60);
    Value = CFDictionaryGetValue(a16, kColorSyncConvertThreadCount);
    v25 = 1;
    if (Value)
    {
      LODWORD(valuePtr[0]) = 1;
      if (CFNumberGetValue(Value, kCFNumberIntType, valuePtr))
      {
        v25 = valuePtr[0];
      }

      else
      {
        v25 = 1;
      }
    }

    v26 = CFDictionaryGetValue(a16, kColorSyncConvertUseVectorUnit);
    v23 = v31;
    if (v26)
    {
      v23 = CFBooleanGetValue(v26) != 0;
    }
  }

  else
  {
    v25 = 1;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v38[0] = &unk_1F0E09FB0;
  v38[1] = v44;
  memset(&valuePtr[5], 0, 368);
  valuePtr[0] = v22;
  valuePtr[1] = 0;
  valuePtr[2] = v38;
  valuePtr[3] = v21;
  LOBYTE(valuePtr[51]) = v23;
  BYTE1(valuePtr[51]) = 1;
  *(&valuePtr[51] + 2) = v25;
  *(&valuePtr[51] + 6) = 0;
  valuePtr[4] = a4;
  if (a4)
  {
    v27 = 17;
    if (a4 < 0x11)
    {
      v27 = a4;
    }

    memcpy(&valuePtr[5], a5, 8 * v27);
  }

  valuePtr[22] = a2;
  valuePtr[23] = a3;
  valuePtr[24] = v33;
  valuePtr[25] = a9;
  valuePtr[26] = __PAIR64__(a7, a6);
  LODWORD(valuePtr[27]) = *(a1 + 88);
  *(&valuePtr[27] + 4) = a10;
  if (a10)
  {
    v28 = 17;
    if (a10 < 0x11)
    {
      v28 = a10;
    }

    memcpy(&valuePtr[28] + 4, a11, 8 * v28);
  }

  *(&valuePtr[45] + 4) = a2;
  *(&valuePtr[46] + 4) = a3;
  *(&valuePtr[47] + 4) = a14;
  *(&valuePtr[48] + 4) = a15;
  HIDWORD(valuePtr[49]) = a12;
  LODWORD(valuePtr[50]) = a13;
  HIDWORD(valuePtr[50]) = *(a1 + 84);
  pthread_mutex_lock(a1);
  for (; v22; v22 = v22[2])
  {
    (*(*v22 + 88))(v22, valuePtr);
  }

  pthread_mutex_unlock(a1);
  memcpy(__dst, valuePtr, sizeof(__dst));
  v29 = apply_cmm_transform(a1, __dst);
  ConversionManager::~ConversionManager(v38);
  CMMMemMgr::ReleaseMemList(v44);
  return v29;
}

BOOL apply_cmm_transform(pthread_mutex_t *a1, void *a2)
{
  v4 = a2 + 364;
  pthread_mutex_lock(a1);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    (*(*v5 + 88))(v5, a2);
    v5 = v5[2];
  }

  pthread_mutex_unlock(a1);
  if (*(v4 + 46) != 1 && *v4 * *(v4 + 1) >= 0x2801uLL)
  {
    v23 = 0;
    CMMMemMgr::CMMMemMgr(&v23);
    v11 = CMMBase::NewInternal(0x10, &v23, v9, v10);
    *v11 = &unk_1F0E09778;
    v11[1] = 0;
    if (CMMThreadManager::GetNofCPUs(void)::predicate != -1)
    {
      dispatch_once(&CMMThreadManager::GetNofCPUs(void)::predicate, &__block_literal_global_277_748);
    }

    if (CMMThreadManager::GetNofCPUs(void)::nofCPUs >= 2 && ((v12 = *(v4 + 46)) == 0 ? (CMMThreadManager::GetNofCPUs(void)::nofCPUs <= 1 ? (v13 = 1) : (v13 = CMMThreadManager::GetNofCPUs(void)::nofCPUs)) : v12 >= 0x100 ? (v13 = 256) : (v13 = v12), v14 = malloc_type_calloc(1uLL, (448 * v13) | 0x10, 0x10A0040FA971D4CuLL), v15 = v14, (v11[1] = v14) != 0))
    {
      v16 = 0;
      v14[1] = v13 - 1;
      v17 = v14 + 56;
      do
      {
        *(v17 - 1) = v14;
        *v17 = v16++;
        v17 += 56;
      }

      while (v13 != v16);
      *(v4 + 50) = v14;
      v18 = *(v4 + 1);
      if (v18 < 2 || v18 >= v13)
      {
        if (v18 == 1)
        {
          if (*v4 >= v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = *v4;
          }
        }

        else
        {
          v18 = v13;
        }
      }

      v20 = dispatch_group_create();
      CMMThreadManager::ActivateTask(v20, v15, v18, a2);
      dispatch_release(v20);
      if (v18)
      {
        v21 = (v15 + 460);
        while (1)
        {
          v8 = *v21;
          if (*v21)
          {
            break;
          }

          v21 += 112;
          if (!--v18)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        v8 = 0;
      }
    }

    else
    {
      *(v4 + 50) = 0;
      v8 = CMMProcessBitmap(a2);
    }

    (*(*v11 + 8))(v11);
    CMMMemMgr::ReleaseMemList(&v23);
  }

  else
  {
    v8 = CMMProcessBitmap(a2);
  }

  return v8 == 0;
}

void sub_19A9645BC(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *(v2 + 8);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(v2 + 8);
    if (!v4)
    {
LABEL_6:
      __cxa_end_catch();
      JUMPOUT(0x19A964554);
    }
  }

  free(v4);
  *(v2 + 8) = 0;
  goto LABEL_6;
}

void sub_19A9645FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t CMMProcessBitmap(uint64_t a1)
{
  v2 = &v103;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  memset(v109, 0, sizeof(v109));
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  memset(v105, 0, sizeof(v105));
  v104 = 0u;
  v103 = 0u;
  v102 = &unk_1F0E09FE8;
  v3 = v75;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  memset(v79, 0, sizeof(v79));
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  memset(v75, 0, sizeof(v75));
  v74 = &unk_1F0E0A020;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  v62 = 0;
  v63 = &unk_1F0E0A058;
  v59 = &unk_1F0E0A090;
  v60 = 0;
  v61 = 0;
  v4 = CMMGetPrecisionFromData(*(a1 + 396), *(a1 + 400));
  v5 = CMMGetPrecisionFromData(*(a1 + 208), *(a1 + 212));
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(v8 + 52);
  if (*a1 == v7)
  {
    v10 = 0;
  }

  else
  {
    v57 = *(v8 + 52);
    v10 = 0;
    do
    {
      v11 = (*(*v6 + 192))(v6);
      if (v11 > v10)
      {
        v10 = v11;
      }

      v6 = v6[2];
    }

    while (v6 != v7);
    v8 = *(a1 + 24);
    v9 = v57;
  }

  v58 = v64;
  if ((v9 & ((v10 - 1) < 3)) != 0)
  {
    v12 = 4;
  }

  else
  {
    v12 = v10;
  }

  if (v4 > v12)
  {
    v12 = v4;
  }

  if (v12 > v5)
  {
    v5 = v12;
  }

  v13 = *(v8 + 32);
  if (v5 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = (a1 + 364);
  if (v5 != 5)
  {
    if (v14 > 0xF)
    {
      goto LABEL_80;
    }

    v23 = (a1 + 32);
    v24 = CMMGetChannelCountFromCMMSpace(*(a1 + 404));
    v25 = *(a1 + 396);
    v26 = *(a1 + 400);
    v27 = v24 == 3 && v25 == 2;
    v28 = !v27;
    if (v27)
    {
      v29 = *(a1 + 408);
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 408) = v29 & 1;
    v37 = *(a1 + 372) * *(a1 + 364);
    if (v5 == 1 && (v26 & 0x1Fu) - 1 >= 2)
    {
      v39 = v28;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      if (v25 != 3)
      {
        goto LABEL_80;
      }

      *&v103 = &unk_1F0E06978;
      *(&v103 + 1) = v37;
      *&v104 = v14;
      *(&v104 + 1) = (0xC00u / v14 * v14);
      LODWORD(v105[0]) = v5;
      CMMDataBaseClass::CMMDataBaseClass(&v105[1], (a1 + 220), *(a1 + 388) >> 1, *(a1 + 380) >> 1);
      LOBYTE(v110) = (v26 & 0x7000u) - 12288 < 0x2000;
      CMM16BitNChanData::SetParams(&v105[1], a1 + 220);
      v40 = off_1F0E0A4B0;
    }

    else
    {
      *&v103 = &unk_1F0E06978;
      *(&v103 + 1) = v37;
      *&v104 = v14;
      *(&v104 + 1) = 0xC00 / v14 * v14;
      LODWORD(v105[0]) = 1;
      CMMDataBaseClass::CMMDataBaseClass(&v105[1], (a1 + 220), *(a1 + 388), *(a1 + 380));
      CMM8Bit3ChanData::SetParams(&v105[1], a1 + 220);
      v40 = &unk_1F0E069B8;
    }

    *&v103 = v40;
    v60 = &v103;
    v41 = CMMGetChannelCountFromCMMSpace(*(a1 + 216));
    v42 = *(a1 + 208);
    v43 = *(a1 + 212);
    if (v41 == 3 && v42 == 2)
    {
      if (v5 != 1 || (*(a1 + 212) & 0x1Fu) - 1 < 2)
      {
        goto LABEL_80;
      }

      v75[0] = &unk_1F0E06A40;
      v75[1] = v14;
      LODWORD(v75[2]) = 1;
      CMMDataBaseClass::CMMDataBaseClass(&v75[3], v23, *(a1 + 200), *(a1 + 192));
      CMM8Bit3ChanData::SetParams(&v75[3], v23);
      v45 = &unk_1F0E06A78;
    }

    else
    {
      *(a1 + 408) = 0;
      if (v42 != 3)
      {
        goto LABEL_80;
      }

      v75[0] = &unk_1F0E06A40;
      v75[1] = v14;
      LODWORD(v75[2]) = v5;
      CMMDataBaseClass::CMMDataBaseClass(&v75[3], v23, *(a1 + 200) >> 1, *(a1 + 192) >> 1);
      LOBYTE(v80) = (v43 & 0x7000u) - 12288 < 0x2000;
      CMM16BitNChanData::SetParams(&v75[3], v23);
      v45 = off_1F0E0A540;
    }

    v75[0] = v45;
    v61 = v75;
    if ((*(a1 + 212) & 0x1Fu) - 1 <= 3)
    {
      CMMAlphaCopier::CMMAlphaCopier(v64, v23, a1 + 220, (*(a1 + 400) & 0x1Fu) - 5 < 0xFFFFFFFC);
      goto LABEL_79;
    }

LABEL_65:
    v58 = 0;
    goto LABEL_79;
  }

  v16 = v13 + 1;
  if ((v13 + 1) > 0xF)
  {
    goto LABEL_80;
  }

  v17 = (a1 + 32);
  v18 = *(a1 + 404);
  if (v18 == 1281450528)
  {
    v18 = 1145856354;
  }

  if (v18 == *(v8 + 20))
  {
    v19 = *(a1 + 372) * *(a1 + 364);
    *&v103 = &unk_1F0E06978;
    *(&v103 + 1) = v19;
    *&v104 = v13 + 1;
    *(&v104 + 1) = 0xC00 / v16 * v16;
    LODWORD(v105[0]) = 5;
    CMMDataBaseClass::CMMDataBaseClass(&v105[1], (a1 + 220), *(a1 + 388) >> 2, *(a1 + 380) >> 2);
    *&v103 = &unk_1F0E069F8;
    *(&v106 + 1) = a1 + 220;
    v20 = CMMGetChannelCountFromCMMSpace(*(a1 + 404));
    v21 = *v15;
    v22 = vshrq_n_u64(*(a1 + 380), 2uLL);
    v108 = vextq_s8(v22, v22, 8uLL);
    *&v109[1] = v21;
    v107 = v20;
    *&v110 = 0;
    v109[3] = 0;
    v8 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v60 = v2;
  v30 = *(v8 + 24);
  v31 = *(a1 + 216);
  if (v31 == 1281450528)
  {
    v31 = 1145856354;
  }

  if (v31 == v30)
  {
    v75[0] = &unk_1F0E06A40;
    v75[1] = v16;
    LODWORD(v75[2]) = 5;
    CMMDataBaseClass::CMMDataBaseClass(&v75[3], v17, *(a1 + 200) >> 2, *(a1 + 192) >> 2);
    v75[0] = &unk_1F0E06AB0;
    *(&v76 + 1) = a1 + 32;
    v32 = CMMGetChannelCountFromCMMSpace(*(a1 + 216));
    v33 = *(a1 + 176);
    v34 = vshrq_n_u64(*(a1 + 192), 2uLL);
    v78 = vextq_s8(v34, v34, 8uLL);
    *&v79[1] = v33;
    v77 = v32;
    v79[3] = 0;
    *&v80 = 0;
  }

  else
  {
    v3 = 0;
  }

  v61 = v3;
  if ((*(a1 + 212) & 0x1Fu) - 1 > 3)
  {
    goto LABEL_65;
  }

  v35 = (*(a1 + 400) & 0x1F) - 5;
  *&v64[0] = &unk_1F0E06B18;
  *&v66 = a1 + 32;
  *(&v66 + 1) = a1 + 220;
  BYTE8(v65) = v35 < 0xFFFFFFFC;
  if (v35 >= 0xFFFFFFFC)
  {
    if (*(a1 + 220) != 1)
    {
      goto LABEL_80;
    }

    v46 = *(a1 + 228);
    v36 = v46 + (CMMAlphaByteOffset((a1 + 220)) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v36 = 0;
  }

  *&v67 = v36;
  if (*v17 != 1)
  {
    goto LABEL_80;
  }

  if (BYTE8(v65))
  {
    v47 = 32831.0;
    if ((*(a1 + 212) & 0x7000) != 0x4000)
    {
      v47 = 1.0;
    }

    *&v72 = v47;
    goto LABEL_75;
  }

  if (((*(a1 + 212) ^ *(a1 + 400)) & 0x7000) != 0)
  {
LABEL_80:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  LODWORD(v72) = 1065353216;
LABEL_75:
  v48 = *(a1 + 40);
  *(&v67 + 1) = v48 + (CMMAlphaByteOffset(v66) & 0xFFFFFFFFFFFFFFFCLL);
  if (BYTE8(v65))
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v49 = *(a1 + 388) >> 2;
    v50 = *(a1 + 380) >> 2;
    v51 = *v15;
  }

  v52 = *(a1 + 192) >> 2;
  v53 = *(a1 + 200) >> 2;
  *&v68 = v49;
  *(&v68 + 1) = v53;
  *&v69 = v50;
  *(&v69 + 1) = v52;
  v54 = *(a1 + 176);
  *&v70 = v51;
  *(&v70 + 1) = v54;
  v71 = 0uLL;
LABEL_79:
  v62 = v58;
  return ConversionManager::ApplySequenceToBitmap(*a1, *(a1 + 8), &v59);
}

void sub_19A964EC8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19A964E74);
}

intptr_t CMMThreadManager::ActivateTask(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  memset(__src, 0, 422);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v87 = 0;
  v88 = 0;
  memset(v86, 0, 36);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  if (!a4)
  {
    goto LABEL_12;
  }

  memcpy(__src, a4, 0x1A6uLL);
  if (a3)
  {
    v64 = a2;
    group = a1;
    v8 = a4 + 364;
    v9 = a2 + 448 * a3 - 432;
    memcpy(v9, a4, 0x1A6uLL);
    v11 = *(a4 + 220);
    v10 = a4 + 220;
    v63 = v11;
    v12 = *(v10 + 8);
    v13 = *(v10 + 96);
    v102 = *(v10 + 80);
    v103 = v13;
    v14 = *(v10 + 128);
    v104 = *(v10 + 112);
    v105 = v14;
    v15 = *(v10 + 32);
    v98 = *(v10 + 16);
    v99 = v15;
    v16 = *(v10 + 64);
    v100 = *(v10 + 48);
    v101 = v16;
    v17 = *v8;
    v87 = *(v8 + 8);
    v88 = v17;
    *(&v86[2] + 4) = *(v8 + 28);
    *&v86[1] = *(v8 + 16);
    v82 = v87;
    v83 = v17;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v81 = *(v10 + 184);
    v80 = *(v10 + 176);
    v62 = *(v10 - 188);
    v20 = *(v10 - 180);
    v21 = *(v10 - 172);
    v22 = *(v10 - 156);
    v23 = *(v10 - 124);
    v92 = *(v10 - 140);
    v93 = v23;
    v90 = v21;
    v91 = v22;
    v24 = *(v10 - 108);
    v25 = *(v10 - 92);
    v26 = *(v10 - 60);
    v96 = *(v10 - 76);
    v97 = v26;
    v94 = v24;
    v95 = v25;
    v27 = *(v10 - 44);
    v85 = *(v10 - 36);
    v28 = v85;
    v86[0] = v27;
    v29 = *(v10 - 28);
    *(v84 + 12) = *(v10 - 16);
    v84[0] = v29;
    v30 = *(v10 - 188);
    v31 = *(v10 - 172);
    v32 = *(v10 - 140);
    v33 = *(v10 - 124);
    v73 = *(v10 - 156);
    v74 = v32;
    v71 = v30;
    v72 = v31;
    v34 = *(v10 - 108);
    v35 = *(v10 - 92);
    v36 = *(v10 - 60);
    v78 = *(v10 - 76);
    v79 = v36;
    v76 = v34;
    v77 = v35;
    v75 = v33;
    v69 = v85;
    v70 = v27;
    v37 = *(v10 - 28);
    v38 = *(v10 - 20);
    v67 = *(v10 - 12);
    v68 = *(v10 - 4);
    if (v87 < 2)
    {
      if (a3 <= v17)
      {
        v39 = &v88;
        v40 = v86;
        v41 = &v83;
        v42 = &v70;
        v43 = v38;
        v44 = v18;
        v28 = v27;
        goto LABEL_11;
      }
    }

    else if (v87 >= a3)
    {
      v39 = &v87;
      v40 = &v85;
      v41 = &v82;
      v42 = &v69;
      v43 = v37;
      v44 = v19;
      v17 = v87;
LABEL_11:
      v61 = a3 - 1;
      v46 = v17 / a3;
      *v41 = v46;
      *v42 = v28 / a3;
      *v39 = v28 - v46;
      v47 = v12 + v44 * v46;
      *v40 = v28 - v28 / a3;
      v48 = v20 + v43 * (v28 / a3);
      memmove((v9 + 220), v10, 0x90uLL);
      v49 = v82;
      *(v9 + 364) = v83;
      *(v9 + 372) = v49;
      *(v9 + 380) = v19;
      *(v9 + 388) = v18;
      *(v9 + 396) = v80;
      *(v9 + 404) = v81;
      v50 = v78;
      *(v9 + 128) = v77;
      *(v9 + 144) = v50;
      *(v9 + 160) = v79;
      v51 = v74;
      *(v9 + 64) = v73;
      *(v9 + 80) = v51;
      v52 = v76;
      *(v9 + 96) = v75;
      *(v9 + 112) = v52;
      v53 = v72;
      *(v9 + 32) = v71;
      *(v9 + 48) = v53;
      v54 = v69;
      *(v9 + 176) = v70;
      *(v9 + 184) = v54;
      *(v9 + 192) = v37;
      *(v9 + 200) = v38;
      *(v9 + 208) = v67;
      *(v9 + 216) = v68;
      *(&__src[13] + 12) = v63;
      *(&__src[14] + 4) = v47;
      *(&__src[18] + 12) = v102;
      *(&__src[19] + 12) = v103;
      *(&__src[20] + 12) = v104;
      *(&__src[21] + 12) = v105;
      *(&__src[16] + 12) = v100;
      *(&__src[17] + 12) = v101;
      *(&__src[14] + 12) = v98;
      *(&__src[15] + 12) = v99;
      *(&__src[22] + 12) = v88;
      *(&__src[23] + 4) = v87;
      *(&__src[24] + 8) = *(&v86[2] + 4);
      *(&__src[23] + 12) = *&v86[1];
      *&__src[2] = v62;
      *(&__src[2] + 1) = v48;
      __src[5] = v92;
      __src[6] = v93;
      __src[3] = v90;
      __src[4] = v91;
      __src[9] = v96;
      __src[10] = v97;
      __src[7] = v94;
      __src[8] = v95;
      *&__src[11] = v86[0];
      *(&__src[11] + 1) = v85;
      *(&__src[12] + 12) = *(v84 + 12);
      __src[12] = v84[0];
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_group_async_f(group, global_queue, v9, CMMConvTask);
      v56 = *(v9 + 24);
      v57 = v56[3];
      v59 = *v56;
      v58 = v56[1];
      v66[2] = v56[2];
      v66[3] = v57;
      v66[0] = v59;
      v66[1] = v58;
      *(&__src[1] + 1) = v66;
      return CMMThreadManager::ActivateTask(group, v64, v61, __src);
    }

LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t CMMConvTask(void *a1)
{
  result = CMMProcessBitmap(a1[53] + 448 * a1[54] + 16);
  *(a1 + 111) = result;
  return result;
}

uint64_t ___ZN16CMMThreadManager10GetNofCPUsEv_block_invoke()
{
  v4 = 0u;
  v5 = 0u;
  *host_info_out = 0u;
  host_info_outCnt = 12;
  v0 = MEMORY[0x19EAE4930]();
  if (host_info(v0, 1, host_info_out, &host_info_outCnt))
  {
    CMMThreadManager::GetNofCPUs(void)::nofCPUs = 0;
  }

  result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v0);
  CMMThreadManager::GetNofCPUs(void)::nofCPUs = host_info_out[1];
  return result;
}

uint64_t DoFlattenSimplifiedConversion(uint64_t a1, __CFArray *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  v12 = *(a1 + 64);
  CMMMemMgr::RetainMemList(&v12);
  v9 = compact_and_flatten_sequence(a1, v8, 0, &v12, *(a1 + 84), *(a1 + 88), kColorSyncTransformSimplifiedConversionData, a3, a4);
  if (v9)
  {
    CFArrayAppendValue(a2, v9);
    v10 = 0;
    CFRelease(v9);
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
  }

  CMMMemMgr::ReleaseMemList(&v12);
  return v10;
}

void sub_19A965554(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v1)
  {
    JUMPOUT(0x19A96552CLL);
  }

  JUMPOUT(0x19A96551CLL);
}

void sub_19A965580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef compact_and_flatten_sequence(pthread_mutex_t *a1, ConversionManager *this, CMMConvNode *a3, uint64_t a4, int a5, int a6, void *a7, void *a8, uint64_t a9)
{
  v16 = a9;
  v113 = *MEMORY[0x1E69E9840];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58[0] = &unk_1F0E09FB0;
  v58[1] = a4;
  if (!a9)
  {
    MaxCLUTNofPoints = ConversionManager::GetMaxCLUTNofPoints(this, a3, a3);
    if (MaxCLUTNofPoints)
    {
      v16 = MaxCLUTNofPoints;
    }

    else
    {
      v16 = 17;
    }
  }

  v18 = CMMGetChannelCountFromCMMSpace(a5);
  v19 = CMMGetChannelCountFromCMMSpace(a6);
  v20 = v19;
  v51 = this;
  v52 = a3;
  v53 = a1;
  if (v18)
  {
    v21 = 1;
    v22 = v18;
    do
    {
      v23 = v21;
      v21 *= v16;
      v25 = v21 >= v23 && v21 >= v16;
      CMMThrowExceptionWithLog(v25, "Overflow in Power");
      v22 = (v22 - 1);
    }

    while (v22);
    if (!is_mul_ok(v18, v21))
    {
      goto LABEL_46;
    }

    v49 = a8;
    v26 = v21 * v18;
    if ((v21 * v18) >> 62)
    {
      goto LABEL_46;
    }

    if (v20)
    {
      goto LABEL_17;
    }

LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  v49 = a8;
  v26 = 0;
  v21 = 1;
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_17:
  v22 = 0;
  if (!is_mul_ok(v20, v21))
  {
    goto LABEL_46;
  }

  v27 = v21 * v20;
  if ((v21 * v20) >> 62)
  {
    goto LABEL_46;
  }

LABEL_22:
  v48 = a7;
  if ((v26 & 0x4000000000000000) != 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = 4 * v26;
  }

  v50 = operator new[](v28, MEMORY[0x1E69E5398]);
  if (!NxMLUTFillWith16BitUniformGridData(v50, v16, v18, v26))
  {
    v41 = 0;
    v38 = 0;
LABEL_39:
    v22 = 0;
    v37 = v50;
    goto LABEL_40;
  }

  v47 = a6;
  if ((v26 & 0x3000000000000000) != 0)
  {
    v29 = -1;
  }

  else
  {
    v29 = 16 * v26;
  }

  v30 = MEMORY[0x1E69E5398];
  v31 = operator new[](v29, MEMORY[0x1E69E5398]);
  if ((v27 & 0x3000000000000000) != 0)
  {
    v32 = -1;
  }

  else
  {
    v32 = 16 * v27;
  }

  v33 = operator new[](v32, v30);
  if (v31)
  {
    v36 = v33 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    keys = v50;
    v74 = 1;
    v75 = v26;
    v76 = (2 * v26);
    values = v31;
    cf = 1;
    v66 = v26;
    v67 = (4 * v26);
    v40 = v31;
    v41 = v33;
    ColorSync_vImageConvert_16UToF(&keys, &values, v34, v35);
    v42 = v53[1].__opaque[52];
    keys = v51;
    v74 = v52;
    v75 = v58;
    v76 = &v53[1];
    v77 = 1;
    v78 = v41;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = v21;
    v88 = 1;
    v89 = v21 * 4 * v20;
    v90 = 4 * v20;
    v91 = 7;
    v93 = 1;
    v94 = v40;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    v95 = 0u;
    v103 = v21;
    v104 = 1;
    v105 = v21 * 4 * v18;
    v106 = 4 * v18;
    v107 = 7;
    v92 = v47;
    v108 = a5;
    v109 = v42;
    v110 = 1;
    v111 = 1;
    v112 = 0;
    v43 = apply_cmm_transform(v53, &keys);
    v38 = v40;
    if (v43)
    {
      v37 = v50;
      v57 = NxMTransformFormatFromValue(v49);
      v44 = NxMLUTCreateData(v57, v41, 1, v16, v18, v20);
      if (v44)
      {
        keys = kColorSyncTransformCodeFragmentType;
        v74 = kColorSyncConversion3DLut;
        v75 = kColorSyncConversionNDLut;
        v76 = kColorSyncConversionInpChan;
        v77 = kColorSyncConversionOutChan;
        v78 = kColorSyncConversionGridPoints;
        *&v79 = kColorSyncNxMFormat;
        *(&v79 + 1) = @"com.apple.cmm.FunctionDoesInputClamp";
        *&v80 = 0;
        v55 = v20;
        valuePtr = v18;
        v54 = v16;
        values = v48;
        cf = v44;
        v66 = v44;
        v67 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v68 = CFNumberCreate(0, kCFNumberSInt32Type, &v55);
        v69 = CFNumberCreate(0, kCFNumberSInt32Type, &v54);
        v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
        v46 = *MEMORY[0x1E695E4D0];
        v70 = v45;
        v71 = v46;
        v72 = 0;
        v22 = CFDictionaryCreate(0, &keys, &values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v67)
        {
          CFRelease(v67);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        if (v69)
        {
          CFRelease(v69);
        }

        if (v70)
        {
          CFRelease(v70);
        }
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v22 = 0;
  v37 = v50;
  v38 = v31;
  v41 = v33;
LABEL_40:
  if (v37)
  {
    MEMORY[0x19EAE45F0](v37, 0x1000C80BDFB0063);
  }

  if (v38)
  {
    MEMORY[0x19EAE45F0](v38, 0x1000C8052888210);
  }

  if (v41)
  {
    MEMORY[0x19EAE45F0](v41, 0x1000C8052888210);
  }

LABEL_46:
  ConversionManager::~ConversionManager(v58);
  return v22;
}

void sub_19A965A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  ConversionManager::~ConversionManager(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCMMInitializeLinkProfile(ColorSyncProfile *a1, const __CFArray *a2, const __CFDictionary *a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v112 = 0;
  CMMMemMgr::CMMMemMgr(&v112);
  v8 = CMMBase::NewInternal(0x38, &v112, v6, v7);
  CMMProfileInfoContainer::CMMProfileInfoContainer(v8, a2, a3, &v112);
  if (*(v8 + 2) == *(v8 + 1))
  {
    goto LABEL_88;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  *bytes = &unk_1F0E09FB0;
  *&bytes[8] = &v112;
  MaxNofChannels = CMMProfileInfoContainer::GetMaxNofChannels(v8);
  v10 = (*(**(*(v8 + 1) + 8) + 48))(*(*(v8 + 1) + 8), *(*(v8 + 1) + 16));
  v11 = (*(**(*(v8 + 2) - 32) + 56))(*(*(v8 + 2) - 32), *(*(v8 + 2) - 24), 0);
  ColorMatchSequence = ConversionManager::MakeColorMatchSequence(bytes, v8, 0, 0);
  *(v113 + 6) = 0;
  v113[0] = 1;
  LutTypeTagFromSequence = ConversionManager::MakeLutTypeTagFromSequence(bytes, ColorMatchSequence, v113, v10, v11, MaxNofChannels, 0);
  v17 = CMMBase::NewInternal(0x38, &v112, v13, v14);
  *(v17 + 2) = 1886610801;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 24) = 0;
  *v17 = &unk_1F0E09640;
  v18 = *(v8 + 1);
  if (v18 == *(v8 + 2))
  {
    v27 = 16;
  }

  else
  {
    v19 = 0;
    do
    {
      v20 = *(v18 + 8);
      Tag = CMMProfile::GetTag(v20, 1684893284);
      if (Tag)
      {
        if (!v22)
        {
          goto LABEL_85;
        }

        v23 = v19 + 21 + ((v22[4] - 5) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v23 = v19 + 25;
      }

      v24 = CMMProfile::GetTag(v20, 1684890724);
      if (v24)
      {
        if (!v25)
        {
LABEL_85:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v26 = (v25[4] - 5) & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v26 = 4;
      }

      v19 = v23 + v26 + 4;
      v18 += 40;
    }

    while (v18 != *(v8 + 2));
    v27 = v19 + 16;
  }

  v109 = v11;
  v110 = v10;
  v17[4] = v27;
  v28 = CMMBase::NewInternal(v27, &v112, v15, v16);
  v17[5] = v28;
  *(v17 + 48) = 1;
  *v28 = 1902474096;
  v29 = *(v8 + 1);
  v30 = *(v8 + 2) - v29;
  v28[2] = bswap32(-858993459 * (v30 >> 3));
  if (v30)
  {
    v31 = (v28 + 3);
    do
    {
      v32 = *(v29 + 8);
      *v31 = vrev32q_s8(v32[5]);
      v33 = CMMProfile::GetTag(v32, 1952801640);
      if (v33)
      {
        if (!v34)
        {
          v107 = __cxa_allocate_exception(4uLL);
          *v107 = -171;
        }

        v31[1].i32[0] = *(v34[5] + 8);
      }

      v35 = CMMProfile::GetTag(v32, 1684893284);
      if (v35)
      {
        if (!v36)
        {
          goto LABEL_86;
        }

        v37 = &v31[1].i8[4];
        v38 = v36[4];
        memcpy(v37, (v36[5] + 8), v38 - 8);
        v39 = &v37[(v38 - 5) & 0xFFFFFFFFFFFFFFFCLL];
      }

      else
      {
        v39 = &v31[1].u64[1];
      }

      v40 = CMMProfile::GetTag(v32, 1684890724);
      if (v40)
      {
        if (!v41)
        {
LABEL_86:
          v106 = __cxa_allocate_exception(4uLL);
          *v106 = -171;
        }

        v42 = v41[4];
        memcpy(v39, (v41[5] + 8), v42 - 8);
        v43 = (v42 - 5) & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v43 = 4;
      }

      v31 = (v39 + v43);
      v29 += 40;
    }

    while (v29 != *(v8 + 2));
  }

  (*(*v8 + 8))(v8);
  v46 = CMMBase::NewInternal(0xB8, &v112, v44, v45);
  *v46 = &unk_1F0E084C8;
  *(v46 + 2) = 1;
  *(v46 + 44) = 808464432;
  v46[2] = 0;
  v46[3] = &v112;
  *(v46 + 2) = 0u;
  v47 = (v46 + 4);
  *(v46 + 5) = 0u;
  *(v46 + 6) = 0u;
  *(v46 + 3) = 0u;
  *(v46 + 4) = 0u;
  *(v46 + 7) = 0u;
  *(v46 + 8) = 0u;
  *(v46 + 9) = 0u;
  *(v46 + 10) = 0u;
  *(v46 + 20) = 1852796517;
  *(v46 + 100) = 0x100000000F6D6;
  *(v46 + 27) = 63190;
  *(v46 + 36) = 0x21000006170706CLL;
  length[0] = 0;
  time(length);
  v48 = localtime(length);
  if (v48)
  {
    v49 = v48[1].i16[2] + 1900;
    v50 = v48[1].i16[0] + 1;
    v51 = vmovn_s32(*v48);
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  *(v46 + 28) = v49;
  *(v46 + 29) = v50;
  *(v46 + 60) = vrev64_s16(v51);
  *(v46 + 68) = 0x4150504C61637370;
  *(v46 + 24) = 0;
  *(v46 + 28) = 1634758764;
  v114 = 0;
  time(&v114);
  v52 = localtime(&v114);
  v53 = v52 ? v52->tm_year + 1900 : 1999;
  memset(&length[3] + 7, 0, 7);
  strcpy(length, "Copyright Apple Computer Inc. ");
  *(length + strlen(length)) = v53 / 1000 + 48;
  v54 = v53 % 1000;
  v55 = ((5243 * v54) >> 19) + ((5243 * v54) >> 31);
  *(length + strlen(length)) = v55 + 48;
  LOBYTE(v54) = v54 - 100 * v55;
  v56 = (((103 * v54) >> 15) & 1) + ((103 * v54) >> 10);
  *(length + strlen(length)) = v56 + 48;
  *(length + strlen(length)) = v54 - 10 * v56 + 48;
  v59 = CMMBase::NewInternal(0x38, v46[3], v57, v58);
  v60 = v46[3];
  *(v59 + 2) = 1668313716;
  *(v59 + 1) = 0u;
  *(v59 + 2) = 0u;
  *(v59 + 24) = 0;
  *v59 = &unk_1F0E08CD8;
  v61 = (strlen(length) + 9);
  v59[4] = v61;
  v64 = CMMBase::NewInternal(v61, v60, v62, v63);
  v59[5] = v64;
  *(v59 + 48) = 1;
  bzero(v64, v59[4]);
  v65 = v59[5];
  *v65 = 1954047348;
  strcpy((v65 + 8), length);
  v46[20] = v59;
  v68 = CMMBase::NewInternal(0x38, v46[3], v66, v67);
  v70 = v46[3];
  v71 = v46[20];
  while (1)
  {
    v72 = v71;
    if (!v71)
    {
      break;
    }

    v71 = *(v71 + 2);
    if (!v71)
    {
      CMMTextDescTag::CMMTextDescTag(v68, v70, v72, v69);
      goto LABEL_40;
    }
  }

  CMMTextDescTag::CMMTextDescTag(v68, v70, 0, v69);
LABEL_40:
  *v46 = &unk_1F0E08A48;
  if (v110 == 1347182946)
  {
    v73 = 1281450528;
  }

  else
  {
    v73 = v110;
  }

  if (v110 == 1145856354)
  {
    v73 = 1281450528;
  }

  *(v46 + 11) = 1818848875;
  *(v46 + 12) = v73;
  v74 = v109 == 1347182946 ? 1281450528 : v109;
  v75 = v109 == 1145856354 ? 1281450528 : v74;
  *(v46 + 13) = v75;
  v76 = v46[20];
  do
  {
    if (!v76)
    {
      v104 = __cxa_allocate_exception(4uLL);
      *v104 = -171;
    }

    v77 = v76;
    v76 = *(v76 + 16);
  }

  while (v76);
  *(v77 + 16) = LutTypeTagFromSequence;
  LutTypeTagFromSequence[2] = v17;
  LutTypeTagFromSequence[3] = v77;
  v17[3] = LutTypeTagFromSequence;
  ConversionManager::~ConversionManager(bytes);
  v78 = v46[20];
  if (v78)
  {
    v79 = 0;
    do
    {
      ++v79;
      v78 = *(v78 + 16);
    }

    while (v78);
    LODWORD(v78) = 12 * v79;
  }

  v80 = (v78 + 135) & 0xFFFFFFFC;
  if (v80 >= v78 + 132)
  {
    v81 = 0;
  }

  else
  {
    v81 = 4294967246;
  }

  CMMThrowExceptionOnError(v81);
  for (i = v46[20]; i; i = i[2])
  {
    *bytes = 0;
    (*(*i + 24))(i, 0, bytes);
    v83 = (*bytes + 3) & 0xFFFFFFFC;
    if (v83 >= *bytes)
    {
      v84 = 0;
    }

    else
    {
      v84 = 4294967246;
    }

    CMMThrowExceptionOnError(v84);
    v80 += v83;
  }

  *v47 = v80;
  v85 = *(v46 + 7);
  v120 = *(v46 + 6);
  v121 = v85;
  v86 = *(v46 + 9);
  v122 = *(v46 + 8);
  v123 = v86;
  v87 = *(v46 + 3);
  *bytes = *v47;
  v117 = v87;
  v88 = *(v46 + 5);
  v118 = *(v46 + 4);
  v119 = v88;
  v89 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x1E695E498]);
  if (!v89)
  {
LABEL_88:
    v108 = __cxa_allocate_exception(4uLL);
    *v108 = -171;
  }

  ColorSyncProfileSetHeader(a1, v89);
  CFRelease(v89);
  v90 = v46[20];
  length[0] = 0;
  for (j = 0; v90; v90 = v90[2])
  {
    (*(*v90 + 24))(v90, 0, length);
    if (j <= LODWORD(length[0]))
    {
      j = length[0];
    }
  }

  if (((j + 3) & 0xFFFFFFFC) >= j)
  {
    v92 = 0;
  }

  else
  {
    v92 = 4294967246;
  }

  CMMThrowExceptionOnError(v92);
  v95 = CMMBase::NewInternal(((j + 3) & 0xFFFFFFFC), v46[3], v93, v94);
  for (k = v46[20]; k; k = *(k + 16))
  {
    v97 = *(k + 8);
    (*(*k + 24))(k, 0, length);
    (*(*k + 24))(k, v95, length);
    v98 = CFDataCreate(0, v95, length[0]);
    if (v98)
    {
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(v97);
      ColorSyncProfileSetTag(a1, SignatureFromFourCharCode, v98);
      CFRelease(SignatureFromFourCharCode);
      CFRelease(v98);
    }
  }

  CMMBase::operator delete(v95);
  v100 = *(v46 + 2) - 1;
  *(v46 + 2) = v100;
  if (!v100)
  {
    (*(*v46 + 8))(v46);
  }

  if (v112)
  {
    v101 = *v112;
    if (*v112)
    {
      do
      {
        v102 = *v101;
        free(v101);
        v101 = v102;
      }

      while (v102);
    }
  }

  CMMMemMgr::ReleaseMemList(&v112);
  return 1;
}

void sub_19A96668C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (a2)
  {
    CMMTag::~CMMTag(v20);
    ConversionManager::~ConversionManager(va);
    __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      if (a11)
      {
        v23 = *a11;
        if (*a11)
        {
          do
          {
            v24 = *v23;
            free(v23);
            v23 = v24;
          }

          while (v24);
        }
      }

      __cxa_end_catch();
      JUMPOUT(0x19A966554);
    }

    if (a11)
    {
      v25 = *a11;
      if (*a11)
      {
        do
        {
          v26 = *v25;
          free(v25);
          v25 = v26;
        }

        while (v26);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x19A966550);
  }

  _Unwind_Resume(exception_object);
}

void sub_19A9667C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CMMMemMgr::ReleaseMemList(va);
  JUMPOUT(0x19A9666D8);
}

uint64_t CMMTextDescTag::CMMTextDescTag(uint64_t a1, void **a2, CMMMemMgr *a3, const char *a4)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = 1684370275;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  if (a3)
  {
    *(a3 + 2) = a1;
  }

  *a1 = &unk_1F0E08CA0;
  *(a1 + 32) = 116;
  v5 = CMMBase::NewInternal(0x74, a2, a3, a4);
  *(a1 + 40) = v5;
  *(a1 + 48) = 1;
  *v5 = 1668506980;
  *(v5 + 2) = 419430400;
  strcpy(v5 + 12, "Apple CMM DevLinkProfile");
  return a1;
}

BOOL AppleCMMApplyTransform(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, unsigned int a6, unsigned int a7, uint64_t a8, unint64_t a9, void *a10, int a11, int a12, uint64_t a13, const __CFDictionary *a14)
{
  CMMStorage = GetCMMStorage(a1);
  if (a11 == 8)
  {
    v22 = 4;
  }

  else
  {
    SrcComponentCount = ColorSyncTransformGetSrcComponentCount(a1);
    if ((a12 & 0x1F) != 0)
    {
      v24 = SrcComponentCount + 1;
    }

    else
    {
      v24 = SrcComponentCount;
    }

    if ((a11 - 1) > 6)
    {
      v25 = 0;
    }

    else
    {
      v25 = qword_19A9B15A0[a11 - 1];
    }

    v22 = v24 * v25;
  }

  if (a6 == 8)
  {
    return DoApplyTransform(CMMStorage, a2, a3, a4, a5, 8u, a7, a8, 4, a9, a10, a11, a12, a13, v22, a14);
  }

  if (a1)
  {
    v27 = *(a1 + 96);
  }

  else
  {
    v27 = 0;
  }

  if ((a7 & 0x1F) != 0)
  {
    ++v27;
  }

  if (a6 - 1 > 6)
  {
    v28 = 0;
  }

  else
  {
    v28 = qword_19A9B15A0[a6 - 1];
  }

  return DoApplyTransform(CMMStorage, a2, a3, a4, a5, a6, a7, a8, v27 * v28, a9, a10, a11, a12, a13, v22, a14);
}

BOOL AppleCMMVerifySRGBGamma(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = 0;
  if (BytePtr)
  {
    v5 = Length;
    if (Length)
    {
      v21 = 0;
      CMMMemMgr::CMMMemMgr(&v21);
      v8 = bswap32(*BytePtr);
      if (v8 == 1668641398)
      {
        v9 = CMMBase::NewInternal(0x38, &v21, v6, v7);
        CMMCurveTag::CMMCurveTag(v9, 0, BytePtr, v5, 0);
      }

      else
      {
        if (v8 != 1885434465)
        {
          v4 = 0;
LABEL_20:
          CMMMemMgr::ReleaseMemList(&v21);
          return v4;
        }

        v9 = CMMBase::NewInternal(0x80, &v21, v6, v7);
        CMMParaCurveTag::CMMParaCurveTag(v9, 0, BytePtr, v5, 0);
      }

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      LODWORD(v17) = 1;
      v10 = (*(*v9 + 64))(v9, &v17, &v21, 0, 1.0);
      if (v10)
      {
        v4 = DWORD1(v17) == 1;
        v11 = v10[1];
        if (v11)
        {
          v12 = v11 - 1;
          v10[1] = v12;
          if (!v12)
          {
            (*(*v10 + 8))(v10);
          }
        }
      }

      else
      {
        v4 = 0;
      }

      v13 = v18;
      if (v18)
      {
        v14 = *(v18 + 8);
        if (v14)
        {
          v15 = v14 - 1;
          *(v18 + 8) = v15;
          if (!v15)
          {
            (*(*v13 + 8))(v13);
          }
        }
      }

      (*(*v9 + 8))(v9);
      goto LABEL_20;
    }
  }

  return v4;
}

CFTypeRef create_WebSafeColorsProfile()
{
  if (create_WebSafeColorsProfile_predicate != -1)
  {
    dispatch_once(&create_WebSafeColorsProfile_predicate, &__block_literal_global_277_1007);
  }

  v1 = create_WebSafeColorsProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericXYZProfile()
{
  if (create_GenericXYZProfile_predicate != -1)
  {
    dispatch_once(&create_GenericXYZProfile_predicate, &__block_literal_global_274);
  }

  v1 = create_GenericXYZProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_sRGB_Linear()
{
  if (create_sRGB_Linear_predicate != -1)
  {
    dispatch_once(&create_sRGB_Linear_predicate, &__block_literal_global_265);
  }

  v1 = create_sRGB_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR2020_Linear()
{
  if (create_ITUR2020_Linear_predicate != -1)
  {
    dispatch_once(&create_ITUR2020_Linear_predicate, &__block_literal_global_238);
  }

  v1 = create_ITUR2020_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericRGBLinear()
{
  if (create_GenericRGBLinear_predicate != -1)
  {
    dispatch_once(&create_GenericRGBLinear_predicate, &__block_literal_global_232);
  }

  v1 = create_GenericRGBLinear_profile;

  return CFRetain(v1);
}

CFTypeRef create_DisplayP3_Linear()
{
  if (create_DisplayP3_Linear_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_Linear_predicate, &__block_literal_global_223);
  }

  v1 = create_DisplayP3_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_DCIP3Profile()
{
  if (create_DCIP3Profile_predicate != -1)
  {
    dispatch_once(&create_DCIP3Profile_predicate, &__block_literal_global_211);
  }

  v1 = create_DCIP3Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ACESCGLinearProfile()
{
  if (create_ACESCGLinearProfile_predicate != -1)
  {
    dispatch_once(&create_ACESCGLinearProfile_predicate, &__block_literal_global_202);
  }

  v1 = create_ACESCGLinearProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericGrayLinear()
{
  if (create_GenericGrayLinear_predicate != -1)
  {
    dispatch_once(&create_GenericGrayLinear_predicate, &__block_literal_global_199);
  }

  v1 = create_GenericGrayLinear_profile;

  return CFRetain(v1);
}

CFTypeRef ColorSyncProfileCreateLegacyDisplayP3()
{
  if (create_DisplayP3_legacy_Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_legacy_Profile_predicate, &__block_literal_global_175);
  }

  v1 = create_DisplayP3_legacy_Profile_profile;

  return CFRetain(v1);
}

CFTypeRef ColorSyncProfileCreateLegacy2DisplayP3()
{
  if (create_DisplayP3_legacy_2_Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_legacy_2_Profile_predicate, &__block_literal_global_178);
  }

  v1 = create_DisplayP3_legacy_2_Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_PerceptualStandardRGBProfile()
{
  if (create_PerceptualStandardRGBProfile_predicate != -1)
  {
    dispatch_once(&create_PerceptualStandardRGBProfile_predicate, &__block_literal_global_187);
  }

  v1 = create_PerceptualStandardRGBProfile_profile;

  return CFRetain(v1);
}

uint64_t ColorSyncProfileCreateWithID(uint64_t a1)
{
  if ((a1 - 1) > 0x1C)
  {
    return 0;
  }

  else
  {
    return creators_for_id[a1]();
  }
}

CFAllocatorRef __colorSyncBytesDeallocator_block_invoke()
{
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  colorSyncBytesDeallocator_colorSyncAllocator = result;
  return result;
}

unint64_t XXH64(uint64_t a1)
{
  v1 = 0;
  v2 = 0x27D4EB2F165667D5;
  do
  {
    v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *(a1 + v1), 33)) ^ v2, 37);
    v1 += 8;
  }

  while (v1 != 16);
  v3 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v3 ^ HIDWORD(v3);
}

ColorSyncProfileRef __get_dciP3_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncDCIP3Profile);
  get_dciP3_profile_dciP3 = result;
  return result;
}

ColorSyncProfileRef __get_dispP3_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncDisplayP3Profile);
  get_dispP3_profile_dispP3 = result;
  return result;
}

ColorSyncProfileRef __get_itu2020_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncITUR2020Profile);
  get_itu2020_profile_itu2020 = result;
  return result;
}

void fillCurvTable(ColorSyncProfile *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, double *a6, int a7)
{
  v75 = *MEMORY[0x1E69E9840];
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v12 = 2 * a4;
  v13 = malloc_type_calloc(1uLL, 2 * a4 + 12, 0x100004018756113uLL);
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v67 = a7;
  v15 = 0;
  *v13 = 1987212643;
  *(v13 + 2) = bswap32(a4);
  v16 = *MEMORY[0x1E695E498];
  v17 = (v13 + 10);
  do
  {
    v18 = a6[v15];
    if (v18 < 2.25)
    {
      v19 = 2.2;
      if (v18 > 2.15)
      {
        goto LABEL_5;
      }
    }

    v21 = 0.0;
    if (v18 >= 1.85 || v18 <= 1.75)
    {
      if (v18 >= 1.05 || v18 <= 0.95)
      {
        if (v18 <= 1.8)
        {
          v20 = 0;
          if (!a4)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }

        v19 = a6[v15];
LABEL_5:
        if ((v19 + -1.8) * 0.04045 / 0.4 <= 0.0)
        {
          v21 = 0.0;
          v20 = 1;
          v18 = v19;
          if (!a4)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v20 = 1;
          v18 = v19;
          v21 = (v19 + -1.8) * 0.0773993808 / 0.4;
          if (!a4)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_20;
      }

      v20 = 0;
      v18 = 1.0;
      if (!a4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v18 = 1.8;
      if (!a4)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    v23 = 0;
    v24 = a3 - 1;
    if (v15 < a3)
    {
      v24 = v15;
    }

    v25 = a4 + a4 * v24 - 1;
    v26 = a4;
    do
    {
      v27 = v26 - 1;
      v28 = vcvtmd_u64_f64(v21 * (v26 - 1) / a4 * 65535.0 + 0.5);
      if (v28 >= 0xFFFF)
      {
        v28 = 0xFFFF;
      }

      if (a5 == 1)
      {
        LOWORD(v29) = *(a2 + v25) | (*(a2 + v25) << 8);
      }

      else
      {
        LOWORD(v29) = *(a2 + 2 * v25);
      }

      v30 = v28 & ~(v28 >> 31);
      v29 = v29;
      v31 = v29 <= v30;
      if (v29 <= v30)
      {
        v29 = v30;
      }

      if ((v23 & 1) == 0)
      {
        v30 = v29;
      }

      v23 |= v31;
      *&v17[2 * v26] = bswap32(v30) >> 16;
      --v25;
      --v26;
    }

    while (v27);
LABEL_33:
    v32 = 0.0;
    if (v20)
    {
      v32 = (v18 + -1.8) * 0.04045 / 0.4;
    }

    *(&v72 + v15) = v32;
    v33 = v14;
    v34 = CFDataCreateWithBytesNoCopy(0, v14, v12 + 12, v16);
    ColorSyncProfileSetTag(a1, off_1E7524130[v15], v34);
    if (v34)
    {
      CFRelease(v34);
    }

    ++v15;
    v14 = v33;
  }

  while (v15 != 3);
  if (v67)
  {
    v38 = *a6;
    v39 = 2.2;
    if (*a6 >= 2.25 || (v40 = 2.2, v38 <= 2.15))
    {
      if (v38 >= 1.85 || v38 <= 1.75)
      {
        if (v38 > 0.95 && v38 < 1.05)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = *a6;
        }
      }

      else
      {
        v40 = 1.8;
      }
    }

    v42 = a6[1];
    if (v42 >= 2.25 || (v43 = 2.2, v42 <= 2.15))
    {
      if (v42 >= 1.85 || v42 <= 1.75)
      {
        if (v42 > 0.95 && v42 < 1.05)
        {
          v43 = 1.0;
        }

        else
        {
          v43 = a6[1];
        }
      }

      else
      {
        v43 = 1.8;
      }
    }

    v45 = a6[2];
    if (v45 >= 2.25 || v45 <= 2.15)
    {
      if (v45 >= 1.85 || v45 <= 1.75)
      {
        v46 = v45 > 0.95 && v45 < 1.05;
        v39 = 1.0;
        if (!v46)
        {
          v39 = a6[2];
        }
      }

      else
      {
        v39 = 1.8;
      }
    }

    v35.f64[0] = 1.8;
    if (v40 > 1.8)
    {
      v35.f64[0] = (v40 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v47 = 1.8;
    if (v43 > 1.8)
    {
      v47 = (v43 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v71 = v47;
    v48 = 1.8;
    if (v39 > 1.8)
    {
      v48 = (v39 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v68 = v48;
    v49 = 0.0;
    v50 = 0.0;
    if (v40 > 1.8)
    {
      v50 = (v40 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v43 > 1.8)
    {
      v49 = (v43 + -1.8) * 0.0521327014 / 0.4;
    }

    v36.f64[0] = 0.0;
    v51 = 0.0;
    if (v39 > 1.8)
    {
      v51 = (v39 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v40 > 1.8)
    {
      v36.f64[0] = (v40 + -1.8) * 0.0521327014 / 0.4;
    }

    v52 = 0.0;
    v53 = 0.0;
    if (v43 > 1.8)
    {
      v53 = (v43 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v39 > 1.8)
    {
      v52 = (v39 + -1.8) * 0.0521327014 / 0.4;
    }

    v37.f64[0] = v72;
    v54 = 0.0;
    v55 = 0.0;
    if (v40 > 1.8 && v72 > 0.0)
    {
      v55 = (v40 + -1.8) * 0.0773993808 / 0.4;
    }

    v56 = v73;
    if (v43 > 1.8 && v73 > 0.0)
    {
      v54 = (v43 + -1.8) * 0.0773993808 / 0.4;
    }

    v57 = v74;
    v58 = 0.0;
    if (v39 > 1.8 && v74 > 0.0)
    {
      v58 = (v39 + -1.8) * 0.0773993808 / 0.4;
    }

    v59 = 1.0 - v51;
    v60 = 1.0 - v49;
    ColorSyncProfileSetParametricTRCTag(a1, @"aarg", 3u, v35, 1.0 - v50, v36, v55, v37, 0.0, 0.0);
    v61.f64[0] = v71;
    v62.f64[0] = v53;
    v63.f64[0] = v56;
    ColorSyncProfileSetParametricTRCTag(a1, @"aagg", 3u, v61, v60, v62, v54, v63, 0.0, 0.0);
    v64.f64[0] = v68;
    v65.f64[0] = v52;
    v66.f64[0] = v57;
    ColorSyncProfileSetParametricTRCTag(a1, @"aabg", 3u, v64, v59, v65, v58, v66, 0.0, 0.0);
  }

  free(v33);
}

void inverseNativeGammaLookup(uint64_t a1, long double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(a1 + 328);
  if (*(a1 + 328) && *(a1 + 360) == 1)
  {
    v13 = 0;
    v14 = *(a1 + 330);
    v15 = *(a1 + 332);
    v16 = *(a1 + 336);
    v17 = 16.0;
    if (v15 == 2)
    {
      v17 = 4112.0;
    }

    v18 = (v14 - 1);
    v19 = v17 * v18;
    do
    {
      if (v14 != 1)
      {
        v20 = a2[v13];
        if (v13 >= v12)
        {
          v21 = v12 - 1;
        }

        else
        {
          v21 = v13;
        }

        v22 = v21 * v14;
        v23 = v16 - 1 + v22;
        v24 = (v16 + 2 * ((v14 - 1) + v22));
        v25 = v14 - (v14 - 1);
        v26 = (v14 - 1);
        while (1)
        {
          if (v15 == 1)
          {
            LOBYTE(a10) = *(v23 + v26);
            *&v27 = *&a10;
            v28 = *&v27 / 255.0;
            LOBYTE(v27) = *(v23 + v26 + 1);
            v29 = v27 / 255.0;
          }

          else
          {
            LOWORD(a10) = *(v24 - 1);
            *&v30 = *&a10;
            v28 = *&v30 / 65535.0;
            LOWORD(v30) = *v24;
            v29 = v30 / 65535.0;
          }

          v31 = v26 - 1;
          a10 = (v26 - 1);
          if (v28 < a10 / v19)
          {
            v28 = a10 / v19;
          }

          v32 = v26;
          if (v28 > 1.0 - v25 / v19)
          {
            v28 = 1.0 - v25 / v19;
          }

          if (v29 < v32 / v19)
          {
            v29 = v32 / v19;
          }

          if (v29 > 1.0 - (v25 - 1) / v19)
          {
            v29 = 1.0 - (v25 - 1) / v19;
          }

          if (v20 == v28)
          {
            break;
          }

          if (v20 == v29)
          {
            goto LABEL_30;
          }

          if (v28 < v20 && v29 > v20)
          {
            v32 = (v20 - v28) / (v29 - v28) + a10;
            if (v32 != -1.0)
            {
              goto LABEL_30;
            }
          }

          ++v25;
          --v24;
          --v26;
          if (!v31)
          {
            goto LABEL_32;
          }
        }

        v32 = (v26 - 1);
LABEL_30:
        if (v32 / v18 != -1.0)
        {
          a2[v13] = v32 / v18;
        }
      }

LABEL_32:
      ++v13;
    }

    while (v13 != 3);
  }

  else
  {
    *a2 = pow(*a2, 1.0 / *(a1 + 64));
    v33 = 1.0 / *(a1 + 80);
    a2[1] = pow(a2[1], v33);
    a2[2] = pow(a2[2], v33);
  }
}

long double applyParametricGamma(unsigned __int16 *a1, long double a2)
{
  v3 = *a1;
  v4 = 0.0;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (v3 != 1)
      {
        return v4;
      }

      v7 = *(a1 + 2);
      v6 = *(a1 + 3);
      if (-v6 / v7 > a2)
      {
        return v4;
      }

      a2 = v6 + v7 * a2;
    }

    v8 = *(a1 + 1);
  }

  else
  {
    if (v3 == 2)
    {
      v10 = *(a1 + 2);
      v9 = *(a1 + 3);
      if (-v9 / v10 <= a2)
      {
        v11 = pow(v9 + v10 * a2, *(a1 + 1));
        v12 = *(a1 + 4);
        return v11 + v12;
      }

      return *(a1 + 4);
    }

    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if (*(a1 + 5) > a2)
        {
          return *(a1 + 7) + *(a1 + 4) * a2;
        }

        v11 = pow(*(a1 + 3) + *(a1 + 2) * a2, *(a1 + 1));
        v12 = *(a1 + 6);
        return v11 + v12;
      }

      return v4;
    }

    if (*(a1 + 5) > a2)
    {
      return *(a1 + 4) * a2;
    }

    v8 = *(a1 + 1);
    a2 = *(a1 + 3) + *(a1 + 2) * a2;
  }

  return pow(a2, v8);
}

void ColorSyncTransformShowSteps(CFTypeRef cf)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v2 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v2 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID && (colorsync_transform_steps_info = create_colorsync_transform_steps_info(cf)) != 0)
  {
    v4 = colorsync_transform_steps_info;
    ColorSyncLog(3, "%@", colorsync_transform_steps_info);

    CFRelease(v4);
  }

  else
  {
LABEL_9:
    ColorSyncLog(3, "Nothing to show for <%p> ColorSyncTransform", cf);
  }
}

uint64_t create_colorsync_transform_steps_info(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x6800000000;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __create_colorsync_transform_steps_info_block_invoke;
  v10[3] = &unk_1E7524150;
  v10[4] = v11;
  v10[5] = &v16;
  v10[6] = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __create_colorsync_transform_steps_info_block_invoke_2;
  v9[3] = &unk_1E7524178;
  v9[4] = &v16;
  v9[5] = v11;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __create_colorsync_transform_steps_info_block_invoke_3;
  v8[3] = &unk_1E75241A0;
  v8[4] = &v16;
  v8[5] = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __create_colorsync_transform_steps_info_block_invoke_4;
  v7[3] = &unk_1E75241C8;
  v7[4] = &v16;
  v7[5] = v11;
  if (ColorSyncTransformIterate(a1, 0, v10, v9, v8, v7))
  {
    v1 = v17;
    v2 = v17[3];
    if (v2)
    {
      Length = CFStringGetLength(v2);
      v1 = v17;
      if (Length >= 1)
      {
        CFStringAppend(v17[3], @"---------------------------------------------------------------------------------\n");
        v1 = v17;
      }
    }
  }

  else
  {
    fwrite("create_colorsync_transform_steps_info: no steps\n", 0x30uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v1 = v17;
    v4 = v17[3];
    if (v4)
    {
      CFRelease(v4);
      v1 = v17;
    }

    v1[3] = 0;
  }

  v5 = v1[3];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v16, 8);
  return v5;
}

__CFString *__create_colorsync_transform_steps_info_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = *(*(a1 + 32) + 8);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  v9 = *(a2 + 60);
  *(v6 + 40) = *(a2 + 16);
  *(v6 + 84) = v9;
  *(v6 + 72) = v7;
  *(v6 + 56) = v8;
  *(v6 + 24) = *a2;
  v10 = CFGetAllocator(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = CFStringCreateMutable(v10, 0);
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {
    CFStringAppend(result, @"\n*************************************************************************\n");
    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"\nColorSyncTransform show steps\n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"\n*************************************************************************\n");
    v12 = CFCopyDescription(*(a1 + 48));
    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"ColorSyncTransform info:\n %@\n", v12);
    CFRelease(v12);
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v14 = *(a2 + 4);
    v15 = *(a2 + 12);
    v16 = *(a2 + 20);
    v17 = *(a2 + 28);
    v18 = *(a2 + 36);
    v19 = *(a2 + 44);
    CFStringAppendFormat(v13, 0, @"    %d stages\n", v14);
    CFStringAppendFormat(v13, 0, @"    %d input components\n", v15);
    CFStringAppendFormat(v13, 0, @"    %d output components\n", v16);
    CFStringAppendFormat(v13, 0, @"    %d TRCs\n", v17);
    CFStringAppendFormat(v13, 0, @"    %d Matrices\n", v18);
    CFStringAppendFormat(v13, 0, @"    %d NxM Transforms\n", v19);
    if (CFDictionaryContainsKey(a3, @"com.apple.cmm.ProfileSequence") == 1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
      CFDictionarySetValue(MutableCopy, @"com.apple.cmm.ProfileSequence", @" included ");
      v21 = CFCopyDescription(MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      v21 = CFCopyDescription(a3);
    }

    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"ColorSyncTransformIterate hints:\n%@\n", v21);
    CFRelease(v21);
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"----------------------------------------\n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"               STAGES \n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"----------------------------------------\n");
    return (*(*(*(a1 + 40) + 8) + 24) != 0);
  }

  return result;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(*(*(a1 + 40) + 8) + 76);
  CFStringAppendFormat(v6, 0, @"Stage = %ld, %ld TRCs\n", a2, a3);
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      v30 = 0.0;
      v28 = 0u;
      v29 = 0u;
      ColorSyncTRCGetFunction(*(v7 + 8 * *(a4 + 8 * v8)), &v28);
      v9 = ColorSyncTRCGetGammaID(*(v7 + 8 * *(a4 + 8 * v8)));
      if (v9 >= 0x12)
      {
        __assert_rtn("gamma_id_by_name", "ColorSyncTransformShowSteps.c", 235, "0");
      }

      v10 = v28;
      v11 = (v28 - 6) >= 4 && v28 >= 5;
      v12 = "NO";
      if (!v11)
      {
        v12 = "YES";
      }

      CFStringAppendFormat(v6, 0, @"    TRC channel %d --> TRCs[%ld], parametric = %s gammaID = %s\n", v8, *(a4 + 8 * v8), v12, off_1E75241E8[v9]);
      v13 = ColorSyncTRCGetProperties(*(v7 + 8 * *(a4 + 8 * v8)));
      if (v10 <= 4)
      {
        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 == 1)
            {
              CFStringAppendFormat(v6, 0, @"\t\tType1: Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), (-*(&v28 + 3) / *(&v28 + 2)), (-*(&v28 + 3) / *(&v28 + 2)), v25, v26, v27);
            }
          }

          else
          {
            CFStringAppendFormat(v6, 0, @"\t\tType0: Y = X^% 3.10f \n", *(&v28 + 1), v21, v22, v23, v24, v25, v26, v27);
          }
        }

        else if (v10 == 2)
        {
          CFStringAppendFormat(v6, 0, @"\t\tType2: Y = (%g*X+%g)^%g + % 3.10f [X >= %g],  Y = %g [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *&v29, (-*(&v28 + 3) / *(&v28 + 2)), *&v29, (-*(&v28 + 3) / *(&v28 + 2)), v27);
        }

        else if (v10 == 3)
        {
          CFStringAppendFormat(v6, 0, @"\t\tType3: Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *(&v29 + 1), *&v29, *(&v29 + 1), v26, v27);
        }

        else
        {
          CFStringAppendFormat(v6, 0, @"\t\tType4: Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *(&v29 + 2), *(&v29 + 1), *&v29, *(&v29 + 3), *(&v29 + 1));
        }
      }

      else if (v10 > 7)
      {
        switch(v10)
        {
          case 8:
            CFStringAppendFormat(v6, 0, @"\t\tHLG_InvOETF_Type: Y = Reference_HLG_InvOETF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
            break;
          case 9:
            CFStringAppendFormat(v6, 0, @"\t\tHLG_OETF_Type: Y = Reference_HLG_OETF(X)  [a = %g, b = %g, c = %g, d = %g e = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), v25, v26, v27);
            break;
          case 10:
            CFStringAppendFormat(v6, 0, @"\t\tEXRToneMap_Type: Y = EXR Tone Mapping Gamma(X)  [defog = %g, exposure_scale = %g, kneeLow = %g, kneeHigh = %g, intermediate_gamma = %g, intensity_scale = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
            break;
        }
      }

      else if (v10 == 5)
      {
        CFStringAppendFormat(v6, 0, @"\t\tTable: entries = %zu\n", *(&v28 + 4));
        CFStringAppendFormat(v6, 0, @"\t\t\tColorSyncBoundaryExtension neg: slope = %g intercept = %g\n", *(&v29 + 3), v30);
        CFStringAppendFormat(v6, 0, @"\t\t\tColorSyncBoundaryExtension pos: slope = %g intercept = %g\n", *(&v29 + 1), *(&v29 + 2), v22, v23, v24, v25, v26, v27);
      }

      else if (v10 == 6)
      {
        CFStringAppendFormat(v6, 0, @"\t\tPQ_EOTF_Type: Y = Reference_PQ_EOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
      }

      else
      {
        CFStringAppendFormat(v6, 0, @"\t\tPQ_InvEOTF_Type: Y = Reference_PQ_InvEOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g, g = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v30, v27);
      }

      append_properties_info(v6, v13);
      v14 = *(v7 + 8 * *(a4 + 8 * v8));
      v15 = ColorSyncTRCGetInputRange(v14);
      v17 = v16;
      v18 = ColorSyncTRCGetOutputRange(v14);
      append_range_info(v6, v15, v17, v18, v19);
      ++v8;
    }

    while (a3 != v8);
  }

  return 1;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 84);
  memset(v18, 0, sizeof(v18));
  v7 = v18;
  ColorSyncMatrixGetFunction(*(v6 + 8 * a3), v18);
  Properties = ColorSyncMatrixGetProperties(*(v6 + 8 * a3));
  CFStringAppendFormat(v5, 0, @"Stage = %ld, matrix index = %ld\n", a2, a3);
  for (i = 0; i != 3; ++i)
  {
    CFStringAppend(v5, @"\t");
    for (j = 0; j != 16; j += 4)
    {
      CFStringAppendFormat(v5, 0, @"% 3.10f ", *(v7 + j));
    }

    CFStringAppend(v5, @"\n");
    ++v7;
  }

  append_properties_info(v5, Properties);
  v11 = *(v6 + 8 * a3);
  InputRange = ColorSyncMatrixGetInputRange(v11);
  v14 = v13;
  OutputRange = ColorSyncMatrixGetOutputRange(v11);
  append_range_info(v5, InputRange, v14, OutputRange, v16);
  return 1;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 92);
  memset(v42, 0, 36);
  ColorSyncNxMGetFunction(*(v6 + 8 * a3), v42);
  v7 = ColorSyncNxMGetProperties(*(v6 + 8 * a3));
  v8 = v42[0];
  v9 = "?";
  if (LODWORD(v42[0]) <= 0xC)
  {
    v9 = off_1E7524278[LODWORD(v42[0])];
  }

  CFStringAppendFormat(v5, 0, @"Stage = %ld, %zu inputs x %zu outputs %s index = %ld\n", a2, *(v42 + 4), v9, a3);
  if (v8 > 9)
  {
    if (v8 != 10)
    {
      if (v8 == 11)
      {
        v10 = **(&v42[1] + 12);
        v11 = *(*(&v42[1] + 12) + 4);
        v12 = *(*(&v42[1] + 12) + 8);
        v13 = *(*(&v42[1] + 12) + 12);
        v33 = *(*(&v42[1] + 12) + 28);
        *&v34 = *(&v42[1] + 12) + 36;
        v31 = *(*(&v42[1] + 12) + 20);
        v32 = *(*(&v42[1] + 12) + 24);
        v30 = *(*(&v42[1] + 12) + 16);
        v14 = @"\tFlex Luminance Scaling params:\n\t\tsource headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\tcoefficients[0] = % 3.10f\n\t\tcoefficients[1] = % 3.10f\n\t\tcoefficients[2] = % 3.10f\n\t\tcoefficients[3] = % 3.10f\n\t\tcoefficients[4] = % 3.10f\n\t\tFlexGTCTableCount = %zu\n\t\tFlexGTCTable = %p\n";
        goto LABEL_25;
      }

      if (v8 == 12)
      {
        CFStringAppendFormat(v5, 0, @"\tLuminance scaling params: \n\t\tgamma = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16));
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (ColorSyncNxMGetVersion(*(v6 + 8 * a3)) != 2)
    {
      v10 = **(&v42[1] + 12);
      v11 = *(*(&v42[1] + 12) + 4);
      v12 = *(*(&v42[1] + 12) + 8);
      v13 = *(*(&v42[1] + 12) + 12);
      v33 = *(*(&v42[1] + 12) + 32);
      v34 = *(*(&v42[1] + 12) + 36);
      v31 = *(*(&v42[1] + 12) + 24);
      v32 = *(*(&v42[1] + 12) + 28);
      v30 = *(*(&v42[1] + 12) + 20);
      v14 = @"\tReference White Tone Mapping (version 0) params:\n\t\tluminance scale = % 3.10f\n\t\tadjusted source headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\ttarget reference white = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n";
      goto LABEL_25;
    }

    CFStringAppendFormat(v5, 0, @"\tReference White Tone Mapping params:\n\t\tversion = % d\n\t\tluminance scale = % 3.10f\n\t\tslope = % 3.10f\n\t\tsource headroom = % 3.10f\n\t\ttarget hearoom = % 3.10f\n\t\textension offset = % 3.10f\n\t\textension weight = % 3.10f\n\t\toutput gamma = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20), *(*(&v42[1] + 12) + 24), *(*(&v42[1] + 12) + 28), *(*(&v42[1] + 12) + 48), *(*(&v42[1] + 12) + 52), *(*(&v42[1] + 12) + 56), *(*(&v42[1] + 12) + 60), *(*(&v42[1] + 12) + 64));
  }

  else
  {
    if (v8 != 7)
    {
      if (v8 == 8)
      {
        CFStringAppendFormat(v5, 0, @"\tHLG Scene Referred Mapping params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20));
        goto LABEL_26;
      }

      if (v8 == 9)
      {
        v10 = **(&v42[1] + 12);
        v11 = *(*(&v42[1] + 12) + 4);
        v12 = *(*(&v42[1] + 12) + 8);
        v13 = *(*(&v42[1] + 12) + 12);
        v40 = *(*(&v42[1] + 12) + 64);
        v41 = *(*(&v42[1] + 12) + 68);
        v38 = *(*(&v42[1] + 12) + 56);
        v39 = *(*(&v42[1] + 12) + 60);
        v36 = *(*(&v42[1] + 12) + 40);
        v37 = *(*(&v42[1] + 12) + 44);
        v34 = *(*(&v42[1] + 12) + 32);
        v35 = *(*(&v42[1] + 12) + 36);
        v32 = *(*(&v42[1] + 12) + 24);
        v33 = *(*(&v42[1] + 12) + 28);
        v30 = *(*(&v42[1] + 12) + 16);
        v31 = *(*(&v42[1] + 12) + 20);
        v14 = @"\tPQ tone mapping params:\n\t\tparams->pq_eotf.m1 = % 3.10f\n\t\tparams->pq_eotf.m2 = % 3.10f\n\n\t\tparams->pq_eotf.c1 = % 3.10f\n\t\tparams->pq_eotf.c2 = % 3.10f\n\t\tparams->pq_eotf.c3 = % 3.10f\n\n\t\tparams->pq_eetf.masterPeakInv = % 3.10f\n\t\tparams->pq_eetf.masterBlackInv = % 3.10f\n\t\tparams->pq_eetf.maxLum = % 3.10f\n\t\tparams->pq_eetf.minLum = % 3.10f\n\t\tparams->pq_eetf.KneeStart = % 3.10f\n\t\tparams->pq_eetf.KneeStartScale = % 3.10f\n\t\tparams->pq_eetf.optical_scale = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n";
LABEL_25:
        CFStringAppendFormat(v5, 0, v14, *&v10, *&v11, *&v12, *&v13, *&v30, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41);
        goto LABEL_26;
      }

LABEL_20:
      if (v8 > 6)
      {
        CFStringAppendFormat(v5, 0, @"\t\tUnknown format\n\n", v25, v26, v27, v28, v29);
      }

      else
      {
        CFStringAppendFormat(v5, 0, @"\t\tGrid point count = %zu\n\n", *(&v42[1] + 4), v26, v27, v28, v29);
      }

      goto LABEL_26;
    }

    v15 = *(*(&v42[1] + 12) + 24);
    v16 = "HLG Inverted OOTF";
    if (v15 != 1)
    {
      v16 = "?";
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = "HLG OOTF";
    }

    CFStringAppendFormat(v5, 0, @"\tHLG Luminance scaling (%s) params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", v17, **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20));
  }

LABEL_26:
  append_properties_info(v5, v7);
  v18 = *(v6 + 8 * a3);
  v19 = ColorSyncNxMGetInputRange(v18);
  v21 = v20;
  v22 = ColorSyncNxMGetOutputRange(v18);
  append_range_info(v5, v19, v21, v22, v23);
  return 1;
}

void append_properties_info(__CFString *a1, char a2)
{
  v2 = "Yes";
  if (a2)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  if ((a2 & 2) != 0)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if ((a2 & 4) != 0)
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  if ((a2 & 8) != 0)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if ((a2 & 0x10) == 0)
  {
    v2 = "No";
  }

  CFStringAppendFormat(a1, 0, @"\t\tProperties:\n\t\t\t\tkColorSyncFunctionSignedReflection  = %s\n\t\t\t\tkColorSyncFunctionOutputClamp       = %s\n\t\t\t\tkColorSyncFunctionInputClamp        = %s\n\t\t\t\tkColorSyncMatrixOnlyFirstInputChannelActive  = %s\n\t\t\t\tkColorSyncMatrixOnlyFirstOutputChannelActive = %s\n\n", v3, v4, v5, v6, v2);
}

void append_range_info(__CFString *a1, float a2, float a3, float a4, float a5)
{
  CFStringAppendFormat(a1, 0, @"\t\tInput range: [");
  if (a2 == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", a2);
  }

  if (a3 == 3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @" +FLT_MAX]", v10);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]", a3);
  }

  CFStringAppendFormat(a1, 0, @" Output range: [");
  if (a4 == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,", v11);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", a4);
  }

  if (a5 == 3.4028e38)
  {

    CFStringAppendFormat(a1, 0, @" +FLT_MAX]\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]\n", a5);
  }
}

void ColorSyncTransformDumpStepsToFile(CFTypeRef cf, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_15;
  }

  v4 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v4 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID && (colorsync_transform_steps_info = create_colorsync_transform_steps_info(cf)) != 0)
  {
    v6 = colorsync_transform_steps_info;
    if (a2 && strlen(a2) >= 3)
    {
      bzero(__str, 0x401uLL);
      if (*a2 == 42 && a2[1] == 47)
      {
        if (ColorSyncGetTempDirPath_predicate != -1)
        {
          dispatch_once(&ColorSyncGetTempDirPath_predicate, &__block_literal_global_540);
        }

        v17 = a2 + 2;
        a2 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &ColorSyncGetTempDirPath_tempDirPath, v17);
      }

      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v9 = 0;
      }

      else
      {
        Length = CFStringGetLength(v6);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v9 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0x9125FFEAuLL);
        if (v9 && CFStringGetCString(v6, v9, MaximumSizeForEncoding, 0x8000100u))
        {
          v8 = v9;
        }

        else
        {
          v8 = &unk_19AA95E0B;
        }
      }

      v13 = fopen(a2, "w");
      v10 = "failed to save";
      if (v13)
      {
        v14 = v13;
        v15 = strlen(v8);
        v16 = fwrite(v8, 1uLL, v15, v14);
        fclose(v14);
        if (v16 == v15)
        {
          v10 = "saved";
        }
      }

      if (v9)
      {
        free(v9);
      }
    }

    else
    {
      v10 = "failed to save";
    }

    ColorSyncLog(1, "%s %s %s", "ColorSyncTransformDumpStepsToFile", v10, a2);
    CFRelease(v6);
  }

  else
  {
LABEL_15:
    ColorSyncLog(1, "Nothing to show for <%p> ColorSyncTransform", cf);
    ColorSyncLog(1, "%s %s %s", "ColorSyncTransformDumpStepsToFile", "failed to save", a2);
  }
}

float get_boundary_extension(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0.0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFArrayGetTypeID())
  {
    __assert_rtn("get_boundary_extension", "ColorSyncTransformIteration.c", 302, "CFGetTypeID(array) == CFArrayGetTypeID()");
  }

  v5 = 0.0;
  if (CFArrayGetCount(v3) >= 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    float_value = get_float_value(ValueAtIndex);
    v5 = *&float_value;
    v8 = CFArrayGetValueAtIndex(v3, 1);
    get_float_value(v8);
  }

  return v5;
}

void __linear_trc_block_invoke()
{
  create_trc_data();
  if (v0)
  {
    *(v0 + 16) = 0;
    *(v0 + 20) = xmmword_19A9E9A18;
    *(v0 + 36) = unk_19A9E9A28;
    *(v0 + 84) = 7;
    v1.f64[0] = 2.84809454e-306;
    v1.f64[1] = 2.84809454e-306;
    *(v0 + 68) = vnegq_f64(v1);
    *(v0 + 64) = 0;
    *(v0 + 88) = 1;
  }

  linear_trc_linear_no_clamp = v0;
  create_trc_data();
  if (v2)
  {
    *(v2 + 16) = 0;
    *(v2 + 20) = xmmword_19A9E9A18;
    *(v2 + 36) = unk_19A9E9A28;
    *(v2 + 84) = 7;
    *(v2 + 68) = xmmword_19A96E4A0;
    *(v2 + 64) = 2;
    *(v2 + 88) = 1;
  }

  linear_trc_linear_clamp = v2;
}

CFStringRef colorSyncTransformIteratorCopyDebugDescription(void *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<ColorSyncTransformIterator %p;stepArray:%@;\nproperties:%@TRCs[%ld]:%pmatrices[%ld]:%pnxmLuts[%ld]:%p>", a1, a1[2], a1[4], *(a1 + 68), a1[15], *(a1 + 76), a1[16], *(a1 + 84), a1[17]);
  }

  else
  {
    v4 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v4, 0, @"<NULL ColorSyncTransformIterator>");
  }
}

const void *ColorSyncCreateOutputPoppyProfileForRGBData(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v92 = *MEMORY[0x1E69E9840];
  v9 = ((a6 - 1) < 6) & (a6 - 1);
  if ((a6 - 1) >= 6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = -1;
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v83 = a4;
      v12 = 0;
      v17 = 0;
      v14 = 0;
      v19 = 2;
      if (!v9)
      {
        v19 = 0;
      }

      v16 = (a1 + v19);
      v13 = (a1 + v19);
    }

    else
    {
      if (a5 != 7)
      {
        goto LABEL_92;
      }

      v83 = a4;
      v13 = 0;
      v17 = 0;
      v14 = 0;
      v18 = 4;
      if (!v9)
      {
        v18 = 0;
      }

      v16 = (a1 + v18);
      v12 = (a1 + v18);
    }
  }

  else if (a5 == 2)
  {
    v83 = a4;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v16 = (a1 + v9);
    v14 = v16;
  }

  else
  {
    if (a5 != 3)
    {
      goto LABEL_92;
    }

    v83 = a4;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 2;
    if (!v9)
    {
      v15 = 0;
    }

    v16 = (a1 + v15);
    v17 = (a1 + v15);
  }

  v20 = 12 * a2;
  v21 = malloc_type_calloc(12 * a2 * a3, 1uLL, 0xEA5F40D9uLL);
  if (v21)
  {
    if (a3)
    {
      if ((a5 - 2) >= 3 && a5 != 7)
      {
        __assert_rtn("get_poppy_index_for_data", "ColorSyncPoppyProfile.c", 134, "0");
      }

      v24 = 0;
      if (a2 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = a2;
      }

      v26 = v21 + 1;
      do
      {
        if (a5 == 3)
        {
          v27 = v12;
        }

        else
        {
          v27 = &v16[v24 * v83];
        }

        if (a5 == 3)
        {
          v28 = &v16[v24 * v83];
        }

        else
        {
          v28 = v17;
        }

        if (a5 == 4)
        {
          v27 = v12;
          v29 = &v16[v24 * v83];
        }

        else
        {
          v29 = v13;
        }

        if (a5 == 4)
        {
          v28 = v17;
        }

        if (a5 == 2)
        {
          v14 = &v16[v24 * v83];
        }

        else
        {
          v12 = v27;
          v13 = v29;
          v17 = v28;
        }

        if (a2)
        {
          v30 = v25;
          v31 = v26;
          if ((a5 - 2) >= 3 && a5 != 7)
          {
            __assert_rtn("get_poppy_index_for_data", "ColorSyncPoppyProfile.c", 165, "0");
          }

          do
          {
            switch(a5)
            {
              case 4:
                LODWORD(_D2) = *v13;
                *&_D2 = vcvtq_f32_f16(*&_D2).u64[0];
                *(v31 - 1) = _D2;
                LOWORD(_D2) = *(v13 + 2);
                __asm { FCVT            S2, H2 }

                *v31 = LODWORD(_D2);
                v13 += 2 * v10;
                break;
              case 3:
                LOWORD(_D2) = *v17;
                v34 = *&_D2 / 65535.0;
                *&v34 = v34;
                LOWORD(v23) = v17[1];
                v23 = *&v23 / 65535.0;
                *&v23 = v23;
                *(v31 - 2) = LODWORD(v34);
                *(v31 - 1) = LODWORD(v23);
                LOWORD(v34) = v17[2];
                _D2 = *&v34 / 65535.0;
                *&_D2 = _D2;
                *v31 = LODWORD(_D2);
                v17 += v10;
                break;
              case 2:
                LOBYTE(_D2) = *v14;
                v32 = *&_D2 / 255.0;
                *&v32 = v32;
                *(v31 - 2) = LODWORD(v32);
                LOBYTE(v32) = v14[1];
                v33 = *&v32 / 255.0;
                *&v33 = v33;
                *(v31 - 1) = LODWORD(v33);
                LOBYTE(v33) = v14[2];
                _D2 = *&v33 / 255.0;
                *&_D2 = _D2;
                *v31 = LODWORD(_D2);
                v14 += v10;
                break;
              default:
                *(v31 - 2) = *v12;
                *(v31 - 1) = v12[1];
                LODWORD(_D2) = v12[2];
                *v31 = LODWORD(_D2);
                v12 += v10;
                break;
            }

            v31 = (v31 + 12);
            --v30;
          }

          while (v30);
        }

        ++v24;
        v26 = (v26 + v20);
      }

      while (v24 != a3);
      v39 = 0;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      while (1)
      {
        if (!a2)
        {
          goto LABEL_78;
        }

        v40 = 0;
        v41 = (v21 + v39 * v20);
        do
        {
          v42 = 0;
          v43 = *v41;
          v44 = v41[1];
          v45 = v41[2];
          v46 = ((v44 * -0.22499) + (*v41 * 1.225)) + (v45 * -0.000005);
          v47 = ((v44 * 1.0421) + (*v41 * -0.042061)) + (v45 * -0.000001);
          v87[0] = v46;
          v87[1] = v47;
          v48 = ((v44 * -0.078641) + (v43 * -0.019641)) + (v45 * 1.0983);
          v87[2] = v48;
          v84 = 0;
          v85 = 0;
          do
          {
            v49 = v87[v42];
            if (v49 <= 1.0)
            {
              if (v49 >= 0.0)
              {
                goto LABEL_62;
              }

              v50 = -1;
            }

            else
            {
              v50 = 1;
            }

            *(&v84 + v42 * 4) = v50;
LABEL_62:
            ++v42;
          }

          while (v42 != 3);
          if (v84 || __PAIR64__(HIDWORD(v84), 0) != v85)
          {
            v51 = ((v47 * 0.17757) + (v46 * 0.82243)) + (v48 * 0.000004);
            v52 = ((v47 * 0.9668) + (v46 * 0.033196)) + (v48 * 0.000001);
            v53 = ((v47 * 0.072402) + (v46 * 0.017085)) + (v48 * 0.91051);
            v54 = vabds_f32(v46, v51);
            v55 = vabds_f32(v47, v52);
            *v86 = v54;
            *&v86[1] = v55;
            v56 = vabds_f32(v48, v53);
            *&v86[2] = v56;
            v57 = 0.0;
            if (v84 == 1)
            {
              v57 = (v46 + -1.0) / v54;
            }

            if (HIDWORD(v84) == 1)
            {
              v57 = fmaxf(v57, (v47 + -1.0) / v55);
            }

            if (v85 == 1)
            {
              v57 = fmaxf(v57, (v48 + -1.0) / v56);
            }

            v58 = 0;
            v59 = fmax(fmin(v46, 1.0), 0.0);
            v60 = fmax(fmin(v47, 1.0), 0.0);
            v61 = fmax(fmin(v48, 1.0), 0.0);
            v62 = ((v60 * 0.17757) + (v59 * 0.82243)) + (v61 * 0.000004);
            v63 = ((v60 * 0.9668) + (v59 * 0.033196)) + (v61 * 0.000001);
            v64 = ((v60 * 0.072402) + (v59 * 0.017085)) + (v61 * 0.91051);
            v65 = fmax(fmin(v62, 1.0), 0.0);
            v66 = fmax(fmin(v63, 1.0), 0.0);
            v67 = fmax(fmin(v64, 1.0), 0.0);
            v68 = (vabds_f32(v51, v65) * 27.217) + vabds_f32(v52, v66) * 6.72130013;
            v69 = v68 + vabds_f32(v53, v67) * 50.4818993;
            v70 = v69 * v69;
            do
            {
              if (*(&v84 + v58 * 4) == -1)
              {
                v57 = fmaxf(v57, -v87[v58] / *&v86[v58]);
              }

              ++v58;
            }

            while (v58 != 3);
            v71 = fmin(v57, 1.0);
            if (v71 > 0.0)
            {
              v72 = llroundf(v71 * 15.0);
              *(&v88 + v72) = (v70 / (v71 + 1.0)) + *(&v88 + v72);
            }
          }

          v41 += 3;
          ++v40;
        }

        while (v40 != a2);
LABEL_78:
        if (++v39 == a3)
        {
          goto LABEL_82;
        }
      }
    }

    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
LABEL_82:
    free(v21);
    v73 = 0;
    v74 = 0.0;
    do
    {
      v74 = (((v74 + COERCE_FLOAT(*(&v88 + v73))) + COERCE_FLOAT(HIDWORD(*(&v88 + v73)))) + COERCE_FLOAT(*(&v88 + v73 + 8))) + COERCE_FLOAT(HIDWORD(*(&v88 + v73)));
      v73 += 16;
    }

    while (v73 != 64);
    v75 = 0.0;
    if (v74 > 1.0)
    {
      v76 = &v91 + 3;
      v77 = 0.0;
      v78 = 17;
      while (1)
      {
        v79 = v77;
        if (!--v78)
        {
          break;
        }

        v80 = *v76--;
        v77 = v77 + v80;
        if ((v79 + v80) > 1.0)
        {
          v81 = v78;
          goto LABEL_90;
        }
      }

      v81 = 16.0;
LABEL_90:
      v75 = (vcvts_n_f32_s64((v81 - ((1.0 - v79) / (v77 - v79))), 4uLL) * 10.0);
    }

    v11 = llround(v75);
  }

  else
  {
    v11 = -1;
  }

LABEL_92:

  return acquire_output_profile(v11);
}

void __acquire_output_profile_block_invoke_2(uint64_t a1)
{
  if (acquire_output_profile_data)
  {
    v2 = CFDataCreate(0, (acquire_output_profile_data + *(acquire_output_profile_header + 8 * *(a1 + 32) + 16)), *(acquire_output_profile_header + 8 * *(a1 + 32) + 12));
    v3 = ColorSyncProfileCreate(v2, 0);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  acquire_output_profile_profiles[*(a1 + 32)] = v3;
}

uint64_t __acquire_output_profile_block_invoke()
{
  v0 = getpagesize();
  v1 = v0;
  if ((v0 & 0xFFFLL) != 0)
  {
    __assert_rtn("acquire_output_profile_block_invoke", "ColorSyncPoppyProfile.c", 362, "PAGESIZE % 4096 == 0");
  }

  v2 = open("/System/Library/ColorSync/Resources/ColorTables.data", 0, 0);
  acquire_output_profile_fd = v2;
  if (v2 < 0)
  {
    goto LABEL_5;
  }

  memset(&v4, 0, sizeof(v4));
  if (fstat(v2, &v4) || (v4.st_mode & 0xF000) != 0x8000 || v4.st_size < 1 || (result = mmap(0, (v1 + v4.st_size - 1) & 0xFFFFFFFFFFFFF000, 1, 1, acquire_output_profile_fd, 0), acquire_output_profile_data = result, result == -1) || (acquire_output_profile_header = result, *result != 1633775737) && *(result + 4) != 0x10000 && *(result + 8) != 11)
  {
    v2 = acquire_output_profile_fd;
LABEL_5:
    result = close(v2);
    acquire_output_profile_fd = -1;
  }

  return result;
}

uint64_t __use_poppy_profiles_from_file_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncUsePoppyProfilesFromFile", &v1);
  if (result)
  {
    use_poppy_profiles_from_file_enabled = v1;
  }

  return result;
}

const void *ColorSyncCreateInputPoppyProfile(const ColorSyncProfile *a1)
{
  poppy_index_from_profile = get_poppy_index_from_profile(a1);
  if ((poppy_index_from_profile - 1) > 9)
  {
    return 0;
  }

  v3 = poppy_index_from_profile;
  v4 = (&acquire_input_profile_predicates + 8 * poppy_index_from_profile);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __acquire_input_profile_block_invoke;
  v6[3] = &__block_descriptor_tmp_13;
  v6[4] = v3;
  v6[5] = a1;
  if (*v4 != -1)
  {
    dispatch_once(v4, v6);
  }

  result = acquire_input_profile_profiles[v3];
  if (result)
  {
    CFRetain(result);
    return acquire_input_profile_profiles[v3];
  }

  return result;
}

ColorSyncProfile *__acquire_input_profile_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  keys[0] = xmmword_1E75243A0;
  keys[1] = *&off_1E75243B0;
  keys[2] = xmmword_1E75243C0;
  v30 = 0;
  Tag = ColorSyncProfileGetTag(v2, @"A2B0");
  values = Tag;
  v4 = ColorSyncProfileGetTag(v2, @"A2B1");
  v23 = v4;
  v5 = ColorSyncProfileGetTag(v2, @"A2B2");
  v24 = v5;
  v25 = ColorSyncProfileGetTag(v2, @"chad");
  v26 = ColorSyncProfileGetTag(v2, @"wtpt");
  v6 = ColorSyncProfileGetTag(v2, @"aapy");
  result = 0;
  v27 = v6;
  v28 = 0;
  if (!Tag || !v6)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = Tag;
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v24 = Tag;
LABEL_5:
  v8 = CFDictionaryCreate(0, keys, &values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21[0] = CFNumberCreate(0, kCFNumberSInt16Type, &create_input_poppy_profile_iccDate);
  v21[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3A);
  v21[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3C);
  v21[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3E);
  v21[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA40);
  v21[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA42);
  v9 = CFArrayCreate(*MEMORY[0x1E695E480], v21, 6, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 6; ++i)
  {
    v11 = v21[i];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v18 = *&off_1E7524408;
  v19 = xmmword_1E7524418;
  v20 = 0;
  *v15 = xmmword_1E75243D8;
  v16 = *&off_1E75243E8;
  v17 = xmmword_1E75243F8;
  v14[0] = @"copyTags";
  v14[1] = @"4.0";
  v14[2] = kColorSyncSigInputClass;
  v14[3] = kColorSyncSigRgbData;
  v12 = *MEMORY[0x1E695E4D0];
  v14[4] = kColorSyncSigXYZData;
  v14[5] = v12;
  v14[6] = v9;
  v14[7] = @"Apple Wide Color Sharing Profile";
  v14[8] = v8;
  v14[9] = v12;
  v14[10] = 0;
  v13 = CFDictionaryCreate(0, v15, v14, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v8);
  CFRelease(v9);
  result = ColorSyncMakeProfile(v13);
LABEL_10:
  acquire_input_profile_profiles[*(a1 + 32)] = result;
  return result;
}

CFStringRef colorSyncTRCCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = CFGetAllocator(a1);
    if (v2 == 5)
    {
      return CFStringCreateWithFormat(v3, 0, @"<TRC %p;table[%ld]:%p properties(0x%x) input range [%+g, %+g] output range [%+g, %+g] pos [%f, %f] neg [%f, %f]>", a1, *(a1 + 20), *(a1 + 28), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48));
    }

    else
    {
      v6 = *(a1 + 16);
      if (v6 > 0xA)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E7524490[v6];
      }

      v8 = "NO";
      if (*(a1 + 88))
      {
        v8 = "YES";
      }

      return CFStringCreateWithFormat(v3, 0, @"<TRC %p;type:%s;\ngamma:%f a = %f b = %f c = %f d = %f e = %f f = %f g = %f\nproperties(0x%x) input range [%+g, %+g] output range [%+g, %+g]\npure gamma original ? %s >", a1, v7, *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), v8);
    }
  }

  else
  {
    v5 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v5, 0, @"<NULL TRC>");
  }
}

uint64_t ColorSyncTRCGetOptions(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetOptions", "ColorSyncTransformFunctions.c", 409, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  return ColorSyncTRCGetProperties(a1);
}

CFStringRef colorSyncMatrixCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 20);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v15 = *(a1 + 52);
    v16 = *(a1 + 48);
    v13 = *(a1 + 60);
    v14 = *(a1 + 56);
    v10 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v10, 0, @"<Matrix %p\n[%f,\t %f,\t %f,\t %f]\n[%f,\t %f,\t %f,\t %f]\n[%f,\t %f,\t %f,\t %f]\nproperties(0x%x) input range [%+g, %+g] output range [%+g, %+g]>", a1, v2, v3, v4, v5, v6, v7, v8, v9, v16, v15, v14, v13, *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80));
  }

  else
  {
    v12 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v12, 0, @"<NULL Matrix>");
  }
}

uint64_t ColorSyncNxMGetTypeID()
{
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  return ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID;
}

uint64_t __ColorSyncNxMGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID = result;
  return result;
}

CFStringRef colorSyncNxMLUTCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<NxMLUT %p;table[%ld gridpoints]:%p Inputs = %ld Outputs = %ld format = %d properties(0x%x) input range [%+g, %+g] output range [%+g, %+g]>", a1, *(a1 + 40), *(a1 + 48), *(a1 + 24), *(a1 + 32), *(a1 + 20), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80));
  }

  else
  {
    v4 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v4, 0, @"<NULL NxMLUT>");
  }
}

uint64_t nxmLUT_equal_nxmLUT(float **cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (ColorSyncNxMGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
    }

    if (v5 == ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
    {
      v6 = CFGetTypeID(a2);
      if (ColorSyncNxMGetTypeID_predicate != -1)
      {
        dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
      }

      if (v6 == ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID && *(cf + 4) == *(a2 + 16))
      {
        v7 = *(cf + 5);
        if (v7 != *(a2 + 20))
        {
LABEL_84:
          LOBYTE(v8) = 0;
          return v8 & 1;
        }

        LOBYTE(v8) = 0;
        if (cf[3] != *(a2 + 24) || cf[4] != *(a2 + 32))
        {
          return v8 & 1;
        }

        v9 = cf[6];
        v10 = *(a2 + 48);
        if (v7 <= 6)
        {
          if (v7 < 7)
          {
            LOBYTE(v8) = 0;
            if (cf[5] != *(a2 + 40) || v9 != v10)
            {
              return v8 & 1;
            }
          }

          goto LABEL_18;
        }

        if (v7 <= 8)
        {
          if (*v9 != *v10 || v9[2] != v10[2] || v9[3] != v10[3] || v9[4] != v10[4])
          {
            goto LABEL_84;
          }

          v21 = v9[5];
          v22 = v10[5];
        }

        else
        {
          switch(v7)
          {
            case 9:
              if (*v9 != *v10 || v9[1] != v10[1] || v9[2] != v10[2] || v9[3] != v10[3] || v9[4] != v10[4] || v9[5] != v10[5] || v9[6] != v10[6] || v9[7] != v10[7] || v9[8] != v10[8] || v9[9] != v10[9] || v9[10] != v10[10] || v9[14] != v10[14] || v9[15] != v10[15] || v9[16] != v10[16])
              {
                goto LABEL_84;
              }

              v21 = v9[17];
              v22 = v10[17];
              break;
            case 10:
              if (*v9 != *v10 || v9[1] != v10[1] || v9[2] != v10[2] || v9[3] != v10[3] || v9[4] != v10[4] || v9[5] != v10[5] || v9[6] != v10[6] || v9[7] != v10[7] || v9[8] != v10[8] || v9[9] != v10[9] || v9[10] != v10[10] || v9[11] != v10[11] || v9[12] != v10[12] || v9[13] != v10[13] || v9[14] != v10[14] || v9[15] != v10[15])
              {
                goto LABEL_84;
              }

              v21 = v9[16];
              v22 = v10[16];
              break;
            case 11:
              if (*v9 != *v10 || v9[1] != v10[1] || v9[2] != v10[2] || v9[3] != v10[3] || v9[4] != v10[4] || v9[5] != v10[5] || v9[6] != v10[6])
              {
                goto LABEL_84;
              }

              v8 = *(v10 + 7);
              *(v9 + 7) = v8;
              if (!v8)
              {
                return v8 & 1;
              }

              v20 = 9;
              do
              {
                v21 = v9[v20];
                v22 = v10[v20];
                if (v20 - 8 >= v8)
                {
                  break;
                }

                ++v20;
              }

              while (v21 == v22);
              break;
            default:
              goto LABEL_18;
          }
        }

        if (v21 != v22)
        {
          goto LABEL_84;
        }

LABEL_18:
        v11 = ColorSyncNxMGetProperties(cf);
        if (v11 == ColorSyncNxMGetProperties(a2))
        {
          v12 = ColorSyncNxMGetInputRange(cf);
          v13 = ColorSyncNxMGetInputRange(a2);
          LOBYTE(v8) = 0;
          if (v12 == v13)
          {
            v14 = ColorSyncNxMGetOutputRange(cf);
            v16 = v15;
            v17 = ColorSyncNxMGetOutputRange(a2);
            LOBYTE(v8) = v16 == v18 && v14 == v17;
          }

          return v8 & 1;
        }

        goto LABEL_84;
      }
    }

    return 0;
  }

  return result;
}

uint64_t ColorSyncNxMGetProperties(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetProperties", "ColorSyncTransformFunctions.c", 894, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[16];
}

float ColorSyncNxMGetInputRange(float *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetInputRange", "ColorSyncTransformFunctions.c", 906, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[17];
}

float ColorSyncNxMGetOutputRange(float *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetOutputRange", "ColorSyncTransformFunctions.c", 913, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[19];
}

void colorSyncNxMLUTFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }
  }
}

uint64_t ColorSyncNxMGetVersion(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetVersion", "ColorSyncTransformFunctions.c", 920, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[4];
}

CFStringRef colorSyncCMMCopyDebugDescription(uint64_t *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    v3 = a1[3];
    if (v3)
    {
      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(a1[3], *MEMORY[0x1E695E4F8]);
      v5 = a1[3];
      if (v5)
      {
        v6 = CFBundleGetValueForInfoDictionaryKey(v5, *MEMORY[0x1E695E4F0]);
        return CFStringCreateWithFormat(v2, 0, @"<ColorSyncCMM %p;bundle:%@;\nname:%@;\nidentifier:%@>", a1, v3, ValueForInfoDictionaryKey, v6);
      }
    }

    else
    {
      ValueForInfoDictionaryKey = a1[4];
    }

    v6 = a1[5];
    return CFStringCreateWithFormat(v2, 0, @"<ColorSyncCMM %p;bundle:%@;\nname:%@;\nidentifier:%@>", a1, v3, ValueForInfoDictionaryKey, v6);
  }

  v7 = CFGetAllocator(0);

  return CFStringCreateWithFormat(v7, 0, @"<NULL ColorSyncCMM>");
}

void colorSyncCMMFinalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      __assert_rtn("colorSyncCMMFinalize", "ColorSyncCMM.c", 53, "c->builtIn == false");
    }

    v2 = *(a1 + 24);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t ColorSyncProfileFindMatchingSystemProfile(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  MD5 = ColorSyncProfileGetMD5(a1);
  v4 = a1[15];
  if (!v4)
  {
    return 0;
  }

  v5 = *(CFDataGetBytePtr(v4) + 4);
  if (v5 == 1129142603)
  {
    v45 = xmmword_19A96E4B0;
    v37 = (*MD5.digest ^ 0xE40A7A2FC4B9F464 | *&MD5.digest[8] ^ 0xC62A50E24F29050FLL) == 0;
    v38 = 26;
    goto LABEL_59;
  }

  if (v5 != 1380401696)
  {
    if (v5 == 1196573017)
    {
      v6 = &find_matching_profile_id_gray_gray_pairs;
      v7 = 3;
      while (1)
      {
        v45 = *v6;
        if (*v45.digest == *MD5.digest && *&v45.digest[8] == *&MD5.digest[8])
        {
          break;
        }

        v6 = (v6 + 24);
        if (!--v7)
        {
          return 0;
        }
      }

      v38 = *(v6 + 2);
      goto LABEL_70;
    }

    v39 = a1[15];
    if (!v39 || *(CFDataGetBytePtr(v39) + 3) != 1936744803)
    {
      return 0;
    }

    v45 = xmmword_19A96E4D0;
    if (*MD5.digest == 0xC592F61D4A3BC000 && *&MD5.digest[8] == 0x263ECD799E43830ELL)
    {
      v38 = 27;
      goto LABEL_71;
    }

    v45 = xmmword_19A96E4E0;
    v37 = (*MD5.digest ^ 0x28FBD70ABCB659F1 | *&MD5.digest[8] ^ 0x507F9D11AEA86D0DLL) == 0;
    v38 = 28;
LABEL_59:
    if (!v37)
    {
      v38 = 0;
    }

    goto LABEL_70;
  }

  v9 = a1[15];
  if (!v9)
  {
    return 0;
  }

  v10 = *(CFDataGetBytePtr(v9) + 3);
  if (v10 == 1852662636)
  {
    v45 = xmmword_19A96E4C0;
    v37 = (*MD5.digest ^ 0x3FEBD58E84B1D53 | *&MD5.digest[8] ^ 0x28AF40706F461B64) == 0;
    v38 = 29;
    goto LABEL_59;
  }

  if (v10 != 1835955314)
  {
    return 0;
  }

  if (find_matching_profile_id_rgb_display_predicate != -1)
  {
    dispatch_once(&find_matching_profile_id_rgb_display_predicate, &__block_literal_global_1529);
  }

  v11 = find_matching_profile_id_rgb_display_md5_id_pair_array;
  v12 = find_matching_profile_id_rgb_display_md5_id_pair_count ? 34 : 0;
  while (2)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v11;
    v14 = v11[1];
    if (*MD5.digest == *v11 && *&MD5.digest[8] == v14)
    {
      v38 = v11[2];
    }

    else
    {
      v16 = v12;
      v17 = &v11[3 * v12];
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      if (*MD5.digest == v18 && *&MD5.digest[8] == v19)
      {
        v38 = *(v17 - 1);
      }

      else
      {
        v12 = v16 >> 1;
        v21 = &v11[3 * (v16 >> 1)];
        v23 = *v21;
        v22 = v21[1];
        if (*MD5.digest != *v21 || *&MD5.digest[8] != v22)
        {
          v25 = 0;
          v45 = MD5;
          v43 = v13;
          v44 = v14;
          while (1)
          {
            v26 = v45.digest[v25];
            v27 = *(&v43 + v25);
            if (v26 != v27)
            {
              break;
            }

            if (++v25 == 16)
            {
              goto LABEL_45;
            }
          }

          if (v26 > v27)
          {
            v28 = 0;
            v45 = MD5;
            v43 = v23;
            v44 = v22;
            while (1)
            {
              v29 = v45.digest[v28];
              v30 = *(&v43 + v28);
              if (v29 != v30)
              {
                break;
              }

              if (++v28 == 16)
              {
                goto LABEL_45;
              }
            }

            if (v29 < v30)
            {
              continue;
            }
          }

LABEL_45:
          v31 = 0;
          v45 = MD5;
          v43 = v23;
          v44 = v22;
          while (1)
          {
            v32 = v45.digest[v31];
            v33 = *(&v43 + v31);
            if (v32 != v33)
            {
              break;
            }

            if (++v31 == 16)
            {
              return 0;
            }
          }

          if (v32 > v33)
          {
            v34 = 0;
            v45 = MD5;
            v43 = v18;
            v44 = v19;
            while (1)
            {
              v35 = v45.digest[v34];
              v36 = *(&v43 + v34);
              if (v35 != v36)
              {
                break;
              }

              if (++v34 == 16)
              {
                return 0;
              }
            }

            v12 = v16 - v12;
            v11 = v21;
            if (v35 < v36)
            {
              continue;
            }
          }

          return 0;
        }

        v38 = v21[2];
      }
    }

    break;
  }

LABEL_70:
  if ((v38 - 1) > 0x1C)
  {
    return 0;
  }

LABEL_71:
  v41 = creators_for_id[v38];

  return v41();
}

void __find_matching_profile_id_rgb_display_block_invoke()
{
  v0 = malloc_type_malloc(0x330uLL, 0x1000040C9D4F132uLL);
  find_matching_profile_id_rgb_display_md5_id_pair_array = v0;
  find_matching_profile_id_rgb_display_md5_id_pair_count = 1;
  memcpy(v0, &rgb_pairs, 0x330uLL);

  qsort(v0, 0x22uLL, 0x18uLL, compare_pairs);
}

uint64_t compare_pairs(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v7 = *a2;
  v8 = v3;
  while (1)
  {
    v4 = *(&v8 + v2);
    v5 = *(&v7 + v2);
    if (v4 != v5)
    {
      break;
    }

    if (++v2 == 16)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const __CFData *ColorSyncProfileHasBT709_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    LOBYTE(v6) = 0;
    return (v6 & 1);
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    v4 = CICPInfo[1];
    v5 = v4 >= 0x10;
    v6 = 0xC042u >> v4;
    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    return (v6 & 1);
  }

  return ColorSyncProfileUsesITU_R709OETF(a1);
}

BOOL ColorSyncProfileHasLinear_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    return CICPInfo[1] == 8;
  }

  else
  {
    return ColorSyncProfileEstimateGamma(a1, v4) == 1.0;
  }
}

BOOL ColorSyncProfileHasSRGB_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    return CICPInfo[1] == 13;
  }

  return ColorSyncProfileUsesSRGBGamma(a1);
}

uint64_t ColorSync_vImageConvert_16Uto16F(uint64_t a1, uint64_t a2)
{
  v4 = ColorSync_vImageConvert_16Uto16F_ptr__;
  if (!ColorSync_vImageConvert_16Uto16F_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v5 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v5 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_16Uto16F");
    }

    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = vImage_smart_null;
    }

    ColorSync_vImageConvert_16Uto16F_ptr__ = v4;
  }

  return (v4)(a1, a2, 0);
}

void __ColorSyncLoadvImageDYLD_block_invoke()
{
  ColorSyncLoadvImageDYLD_handle = dlopen("/System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage", 5);
  if (!ColorSyncLoadvImageDYLD_handle)
  {
    ColorSyncLog(2, "Failed to load %s", "/System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage");
  }
}

uint64_t ColorSync_vImageConvert_16UToF(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v6 = ColorSync_vImageConvert_16UToF_ptr__;
  if (!ColorSync_vImageConvert_16UToF_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v7 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v7 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_16UToF");
    }

    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = vImage_smart_null;
    }

    ColorSync_vImageConvert_16UToF_ptr__ = v6;
  }

  a4.n128_u32[0] = 931135616;
  a3.n128_u64[0] = 0;

  return (v6)(a1, a2, 0, a3, a4);
}

uint64_t ColorSync_vImageConvert_Fto16F(uint64_t a1, uint64_t a2)
{
  v4 = ColorSync_vImageConvert_Fto16F_ptr__;
  if (!ColorSync_vImageConvert_Fto16F_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v5 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v5 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_PlanarFtoPlanar16F");
    }

    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = vImage_smart_null;
    }

    ColorSync_vImageConvert_Fto16F_ptr__ = v4;
  }

  return (v4)(a1, a2, 0);
}

const void *ColorSyncOptionsGetReferenceWhiteToneMappingOptions(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMaping");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryGetValue(v2, @"com.apple.cmm.ApplyReferenceWhiteToneMapping");
}

float ColorSyncOptionsGetSDRToPQScale(const void *a1)
{
  if (!a1)
  {
    return 203.0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 203.0;
  }

  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.SkipBoostToHDR");
  result = 203.0;
  if (Value == *MEMORY[0x1E695E4D0])
  {
    return 100.0;
  }

  return result;
}

uint64_t int32_from_dictionary_with_default(const void *a1, const void *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr) == 1)
        {
          return valuePtr;
        }

        else
        {
          return a3;
        }
      }
    }
  }

  return a3;
}

float float_from_dictionary_with_default(const void *a1, const void *a2, float a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr) == 1)
        {
          return valuePtr;
        }
      }
    }
  }

  return a3;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a2 + 60);
  *(v2 + 40) = a2[1];
  *(v2 + 84) = v5;
  *(v2 + 72) = v3;
  *(v2 + 56) = v4;
  *(v2 + 24) = *a2;
  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = a1[6];
    v7 = *(*(a1[4] + 8) + 76);
    v8 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = bswap32(v6);
    v19 = *(*(a1[5] + 8) + 24);
    v9 = (v19 + 12);
    do
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      ColorSyncTRCGetFunction(*(v7 + 8 * *(a4 + 8 * v5)), v21);
      v10 = v21[0];
      if (LODWORD(v21[0]) >= 0xA)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 199, "0");
      }

      ColorSyncTRCGetProperties(*(v7 + 8 * *(a4 + 8 * v5)));
      if (v10 != 5)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 213, "trc.type == kColorSyncTRCTable");
      }

      if (*(v21 + 4) != v6)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 216, "table_count == trc.u.table.size");
      }

      v11 = (v19 + v5 * v8);
      *v11 = 1987212643;
      v11[2] = v18;
      if (v6)
      {
        v12 = *(v21 + 12);
        v13 = v9;
        v14 = v6;
        do
        {
          v15 = *v12++;
          v16 = ((powf(v15, 0.2) * 65535.0) + 0.5);
          if (v16 >= 0xFFFF)
          {
            v16 = 0xFFFF;
          }

          *v13++ = bswap32(v16 & ~(v16 >> 31)) >> 16;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v9 = (v9 + v8);
    }

    while (v5 != a3);
  }

  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[4] + 8) + 84);
  memset(v15, 0, sizeof(v15));
  ColorSyncMatrixGetFunction(*(v6 + 8 * a3), v15);
  ColorSyncMatrixGetProperties(*(v6 + 8 * a3));
  if (v4)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      v9 = v8;
      v10 = 3;
      do
      {
        v11 = v5 * 0.5 * *v9;
        v12 = v11 * 65536.0;
        if (v12 <= 0.0)
        {
          if (v12 < 0.0)
          {
            v12 = v12 + -0.5;
          }
        }

        else
        {
          v12 = v12 + 0.5;
        }

        if (v12 >= 2147500000.0)
        {
          v13 = 0x7FFFFFFF;
        }

        else if (v12 <= -2147500000.0)
        {
          v13 = 0x80000000;
        }

        else
        {
          v13 = v12;
        }

        *v4++ = bswap32(v13);
        ++v9;
        --v10;
      }

      while (v10);
      ++v7;
      v8 += 4;
    }

    while (v7 != 3);
  }

  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = a1[8];
  v7 = *(a1[7] + 8);
  v8 = *(*(a1[4] + 8) + 92);
  memset(v50, 0, 36);
  ColorSyncNxMGetFunction(*(v8 + 8 * a3), v50);
  ColorSyncNxMGetProperties(*(v8 + 8 * a3));
  if (LODWORD(v50[0]) == 11)
  {
    v9 = *(&v50[1] + 12);
    *(v7 + 24) = *(*(&v50[1] + 12) + 24);
    if (v6)
    {
      v10 = 0;
      v11 = (v6 - 1);
      v12 = v9 + 36;
      v13 = *(v9 + 28) - 1;
      v14 = v13;
      _S12 = 1199570688;
      do
      {
        v46 = v10;
        v49 = powf(v10 / v11, 5.0);
        for (i = 0; i != v6; ++i)
        {
          v17 = powf(i / v11, 5.0);
          v18 = 0;
          v47 = __PAIR64__(LODWORD(v17), LODWORD(v49));
          v48 = v17;
          do
          {
            v19 = v4;
            v20 = powf(v18 / v11, 5.0);
            if (v48 <= v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = v48;
            }

            v21.i32[0] = *(v9 + 4);
            if (v49 > v22)
            {
              v22 = v49;
            }

            v23 = (((v48 * *(v9 + 12)) + (v49 * *(v9 + 8))) + (v20 * *(v9 + 16))) + (v22 * *(v9 + 20));
            v24 = fmaxf(fabsf(v23), 1.1755e-38) * v14;
            if (v24 > v14)
            {
              v24 = v13;
            }

            v25 = v24;
            v26 = v24 - v24;
            v27 = *(v12 + 4 * v25);
            if (v13 >= v25 + 1)
            {
              v28 = v25 + 1;
            }

            else
            {
              v28 = v13;
            }

            if (v23 >= 0.0)
            {
              v29 = v27 + ((*(v12 + 4 * v28) - v27) * v26);
            }

            else
            {
              v29 = -(v27 + ((*(v12 + 4 * v28) - v27) * v26));
            }

            v30 = v20 * v29;
            if (v30 <= *v21.i32)
            {
              v31 = v30;
            }

            else
            {
              v31 = *(v9 + 4);
            }

            if (v30 >= 0.0)
            {
              v32 = v31;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = ((v32 * 65535.0) + 0.5);
            if (v33 >= 0xFFFF)
            {
              v33 = 0xFFFF;
            }

            v34 = vmul_n_f32(v47, v29);
            v35 = vdup_lane_s32(v21, 0);
            _D1 = vbic_s8(vbsl_s8(vcgt_f32(v34, v35), v35, v34), vcltz_f32(v34));
            v37 = ((*_D1.i32 * 65535.0) + 0.5);
            v38 = bswap32(v33 & ~(v33 >> 31)) >> 16;
            if (v37 >= 0xFFFF)
            {
              v37 = 0xFFFF;
            }

            v4[2] = v38;
            __asm { FMLA            S2, S12, V1.S[1] }

            *v4 = bswap32(v37 & ~(v37 >> 31)) >> 16;
            v4 += 3;
            if (_S2 >= 0xFFFF)
            {
              v44 = 0xFFFF;
            }

            else
            {
              v44 = _S2;
            }

            v19[1] = bswap32(v44 & ~(v44 >> 31)) >> 16;
            *v5 = _D1;
            *(v5 + 8) = v32;
            v5 += 12;
            ++v18;
          }

          while (v6 != v18);
        }

        v10 = v46 + 1;
      }

      while (v46 + 1 != v6);
    }
  }

  return 1;
}

ColorSyncProfile *ColorSyncProfileCreateWithAdaptiveSoftClipCurve(__int16 a1, float a2)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a2 <= 1.0)
  {
    return 0;
  }

  CopyWithFlexGTC = 0;
  if (((a1 & 0xFD) == 9 || (a1 & 0xFB) == 1 || a1 == 12) && HIBYTE(a1) <= 0x12u)
  {
    CopyWithFlexGTC = 0;
    if (a1 & 0xFF00) == 0x1000 && ((0x5E142u >> SHIBYTE(a1)))
    {
      v6 = 0;
      if (a1 > 8u)
      {
        if (a1 == 9)
        {
          v6 = kColorSyncITUR2100_PQProfile[0];
        }

        else if (a1 == 12)
        {
          v6 = kColorSyncDisplayP3_PQProfile[0];
        }
      }

      else if (a1 == 1 || a1 == 5)
      {
        v6 = kColorSyncITUR709_PQProfile[0];
      }

      v7 = ColorSyncProfileCreateWithName(v6);
      if (v7)
      {
        v8 = v7;
        v9 = &v76;
        __x = a2;
        v51 = 0.0001 / a2;
        v10 = log(a2);
        v11 = 0;
        v12 = fmin(v10 / 2.07944154, 1.0) * -0.2 + 1.0;
        if (v12 <= 1.0 / a2)
        {
          v13 = 1.0 / __x;
        }

        else
        {
          v13 = v12;
        }

        v14 = vdupq_lane_s64(COERCE__INT64(__x + -1.0), 0);
        v15 = vdupq_lane_s64(COERCE__INT64(1.0 - v13), 0);
        v73 = 0u;
        v74 = 0u;
        v49 = v13;
        v16 = vdupq_lane_s64(*&v13, 0);
        v71 = 0u;
        v72 = 0u;
        __asm { FMOV            V3.2D, #1.0 }

        do
        {
          *(&v73 + v11 * 16) = vmlaq_f64(_Q3, v14, xmmword_19AA8FDF8[v11]);
          *(&v71 + v11 * 16) = vmlaq_f64(v16, v15, xmmword_19AA8FE18[v11]);
          ++v11;
        }

        while (v11 != 2);
        v21 = log2(__x);
        v65 = v51;
        v66[0] = 0.5 / __x;
        v66[1] = 1.0 / __x;
        v22 = vdupq_lane_s64(*&__x, 0);
        v67 = vdivq_f64(v73, v22);
        v68 = vdivq_f64(v74, v22);
        v69 = __x * 0.98 / __x;
        v70 = 0x3FF0000000000000;
        v59 = vdivq_f64(vmulq_n_f64(xmmword_19A96E4F0, v49), v22);
        v60 = v49 / __x;
        v61 = vdivq_f64(v71, v22);
        v62 = vdivq_f64(v72, v22);
        v63 = 1.0 / __x;
        v64 = 1.0 / __x;
        v58 = 0;
        memset(v57, 0, sizeof(v57));
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        if (__x >= 1.005)
        {
          for (i = 0; i != 9; ++i)
          {
            *(v57 + i * 8) = log2(v66[i - 1] / v59.f64[i]) / v21;
          }

          v24 = 0;
          v25 = vdupq_lane_s64(*&v51, 0);
          v26 = v57;
          v27 = vld1q_dup_f64(v26);
          do
          {
            v28 = *(&v57[v24 / 0x10] + 8);
            v29 = *&v66[v24 / 8];
            *(&v55[v24 / 0x10] + 8) = vdivq_f64(vsubq_f64(v28, vextq_s8(v27, v28, 8uLL)), vsubq_f64(v29, vextq_s8(v25, v29, 8uLL)));
            v24 += 16;
            v25 = v29;
            v27 = v28;
          }

          while (v24 != 64);
        }

        v30 = v21;
        keys = kColorSyncGUID;
        v84 = kColorSyncGainMapMin;
        v85 = kColorSyncGainMapMax;
        v86 = kColorSyncGainMapGamma;
        v87 = kColorSyncGainMapBaselineConst;
        v88 = kColorSyncGainMapAlternateConst;
        v89 = kColorSyncGainMapBaselineHeadroom;
        v90 = kColorSyncGainMapAlternateHeadroom;
        *&v92.byte0 = 0;
        *&v92.byte8 = 0;
        values = CFUUIDCreateFromUUIDBytes(0, v92);
        valuePtr = 0.0;
        v76 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = -v30;
        v77 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 1.0;
        v78 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v79 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v80 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = v30;
        v81 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v82 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        v31 = CFDictionaryCreate(0, &keys, &values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        for (j = 0; j != 64; j += 8)
        {
          CFRelease(*(&values + j));
        }

        if (v31)
        {
          Mutable = CFArrayCreateMutable(0, 9, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v34 = Mutable;
            v50 = v31;
            __xa = v8;
            v35 = 0;
            v36 = MEMORY[0x1E695E9D8];
            v37 = MEMORY[0x1E695E9E8];
            do
            {
              keys = kColorSyncFlexGTCNodeX;
              v84 = kColorSyncFlexGTCNodeY;
              v85 = kColorSyncFlexGTCNodeSlope;
              values = 0;
              v76 = 0;
              v77 = 0;
              v38 = v66[v35 - 1];
              valuePtr = v38;
              values = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v39 = *(v57 + v35);
              valuePtr = v39;
              v76 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v40 = *(v55 + v35);
              valuePtr = v40;
              v77 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v41 = CFDictionaryCreate(0, &keys, &values, 3, v36, v37);
              for (k = 0; k != 24; k += 8)
              {
                v43 = *(&values + k);
                if (v43)
                {
                  CFRelease(v43);
                }
              }

              if (v41)
              {
                CFArrayAppendValue(v34, v41);
                CFRelease(v41);
              }

              ++v35;
            }

            while (v35 != 9);
            keys = kColorSyncMonoGainMapParams;
            v84 = kColorSyncPreGainMapCICP;
            v85 = kColorSyncMonoFlexGTCNodeTable;
            v86 = kColorSyncFlexGTCName;
            values = v50;
            valuePtr = 2.3516e-38;
            v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            v77 = v34;
            v78 = @"Adaptive Soft Clip Curve";
            v44 = CFDictionaryCreate(0, &keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v45 = 0;
            do
            {
              v46 = v45;
              if (*v9)
              {
                CFRelease(*v9);
              }

              v45 = 1;
              v9 = &v77;
            }

            while ((v46 & 1) == 0);
            CFRelease(v50);
            if (v44)
            {
              CopyWithFlexGTC = ColorSyncProfileCreateCopyWithFlexGTC(__xa, v44, v47);
              CFRelease(v44);
              return CopyWithFlexGTC;
            }
          }

          else
          {
            CFRelease(v31);
          }
        }
      }

      return 0;
    }
  }

  return CopyWithFlexGTC;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}