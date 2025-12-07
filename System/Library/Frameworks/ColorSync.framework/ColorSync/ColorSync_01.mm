void CMMProfileInfoContainer::CMMProfileInfoContainer(CMMProfileInfoContainer *this, CFArrayRef theArray, const __CFDictionary *a3, CMMMemMgr *a4)
{
  Count = CFArrayGetCount(theArray);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = &unk_1F0E0C438;
  *(this + 5) = a4;
  v68 = a4;
  *this = &unk_1F0E0C418;
  *(this + 6) = 0;
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, Count, v9, v10);
  *this = &unk_1F0E08560;
  theArraya = theArray;
  v11 = CFArrayGetCount(theArray);
  v77 = 0;
  v78 = -1;
  memset(v79, 0, 15);
  if (v11)
  {
    v72 = 0;
    v14 = 0;
    v66 = v11 - 1;
    cf2 = *MEMORY[0x1E695E4D0];
    v67 = a3;
    v65 = v11;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v14);
      v76 = 0u;
      Value = CFDictionaryGetValue(ValueAtIndex, kColorSyncProfile);
      v17 = CFDictionaryGetValue(ValueAtIndex, kColorSyncRenderingIntent);
      v71 = CFDictionaryGetValue(ValueAtIndex, kColorSyncTransformTag);
      v18 = CFDictionaryContainsKey(ValueAtIndex, kColorSyncBlackPointCompensation);
      if (v18)
      {
        v19 = CFDictionaryGetValue(ValueAtIndex, kColorSyncBlackPointCompensation);
        LOBYTE(v20) = CFEqual(v19, cf2) != 0;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncExtendedRange))
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, kColorSyncExtendedRange);
        v22 = CFEqual(v21, cf2) != 0;
      }

      else
      {
        v22 = 1;
      }

      v70 = v22;
      BYTE3(v76) = 0;
      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncHDRDerivative) == 1)
      {
        v23 = CFDictionaryGetValue(ValueAtIndex, kColorSyncHDRDerivative);
        BYTE3(v76) = CFEqual(v23, kColorSyncHLGDerivative) != 0;
      }

      BYTE4(v76) = 0;
      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncHDRDerivative) == 1)
      {
        v24 = CFDictionaryGetValue(ValueAtIndex, kColorSyncHDRDerivative);
        BYTE4(v76) = CFEqual(v24, kColorSyncPQDerivative) != 0;
      }

      Profile = CMMProfileMaker::MakeProfile(Value, v68, ((BYTE3(v76) | BYTE4(v76)) & 1));
      v74 = Profile;
      if (CMMProfileMaker::IsMatrixBased(*(Profile + 2), *(Profile + 12), *(Profile + 13)))
      {
        IsMatrixHDRProfile = 1;
      }

      else
      {
        IsMatrixHDRProfile = CMMProfileMaker::IsMatrixHDRProfile(*(Profile + 2), *(Profile + 12), *(Profile + 13), 0);
      }

      LOBYTE(v76) = IsMatrixHDRProfile;
      v27 = *(Profile + 2);
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
      LODWORD(v27) = ColorSyncProfileContainsTag(v27, SignatureFromFourCharCode);
      CFRelease(SignatureFromFourCharCode);
      v29 = v27 && *(v74 + 48) == 1196573017;
      BYTE1(v76) = v29;
      BYTE2(v76) = CMMProfileMaker::IsMatrixHDRProfile(*(v74 + 16), *(v74 + 48), *(v74 + 52), (BYTE3(v76) | BYTE4(v76)) & 1);
      BYTE10(v76) = v70;
      if (!v18)
      {
        v20 = (*(v74 + 76) >> 2) & 1;
      }

      BYTE9(v76) = v20;
      if (v67 && (v20 & 1) == 0 && CFDictionaryContainsKey(v67, kColorSyncBlackPointCompensation))
      {
        v30 = CFDictionaryGetValue(v67, kColorSyncBlackPointCompensation);
        BYTE9(v76) = CFEqual(v30, cf2) != 0;
      }

      if (CFEqual(v17, kColorSyncRenderingIntentUseProfileHeader))
      {
        v31 = *(v74 + 96);
        if (v31 >= 4)
        {
          v31 = 0;
        }
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentPerceptual))
      {
        v31 = 0;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentRelative))
      {
        v31 = 1;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentSaturation))
      {
        v31 = 2;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentAbsolute))
      {
        v31 = 3;
      }

      else
      {
        v31 = 0;
      }

      HIDWORD(v75) = v31;
      LODWORD(v75) = (*(*v74 + 64))(v74, v71, v14 == 0, v14 == v66);
      *(&v76 + 5) = 0;
      *(&v76 + 11) = 0;
      CICPInfo = ColorSyncProfileGetCICPInfo(Value);
      if (CICPInfo)
      {
        v33 = CICPInfo[1];
        BYTE7(v76) = (v33 < 0x10) & (0xC042u >> v33);
        BYTE5(v76) = v33 == 16;
        BYTE6(v76) = v33 == 18;
      }

      else
      {
        Tag = CMMProfile::GetTag(v74, 1751405638);
        if (Tag)
        {
          v36 = bswap32(*(*(Tag + 5) + 8));
          if (v36 == 1212958496)
          {
            BYTE6(v76) = 1;
          }

          else if (v36 == 1347493920)
          {
            BYTE5(v76) = 1;
          }
        }

        else
        {
          BYTE7(v76) = ColorSyncProfileUsesITU_R709OETF(*(v74 + 16));
          v54 = ColorSyncProfileUsesCoreVideoGamma(*(v74 + 16));
          BYTE8(v76) = v54;
          if (v54)
          {
            if (get_useITUBT1886ForDegamma(__CFDictionary const*)::predicate != -1)
            {
              dispatch_once(&get_useITUBT1886ForDegamma(__CFDictionary const*)::predicate, &__block_literal_global_993);
            }

            v55 = get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs;
            get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled = get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs;
            if (v67)
            {
              if (CFDictionaryContainsKey(v67, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
              {
                v55 = CFDictionaryGetValue(v67, kColorSyncUseBT1886ForCoreVideoGamma) == cf2;
                get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled = v55;
              }

              else
              {
                v55 = get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled;
              }
            }

            BYTE11(v76) = v55 & 1;
            if (get_useITUBT1886ForEngamma(__CFDictionary const*)::predicate != -1)
            {
              dispatch_once(&get_useITUBT1886ForEngamma(__CFDictionary const*)::predicate, &__block_literal_global_997);
            }

            v64 = get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs;
            get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled = get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs;
            if (v67)
            {
              if (CFDictionaryContainsKey(v67, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
              {
                v64 = CFDictionaryGetValue(v67, kColorSyncUseBT1886ForCoreVideoGamma) == cf2;
                get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled = v64;
              }

              else
              {
                v64 = get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled;
              }
            }

            BYTE12(v76) = v64 & 1;
          }
        }
      }

      if (BYTE7(v76) == 1 && !ColorSyncOptionsLegacyHDREcosystemRequested(v67))
      {
        v34 = current_or_newer_sdk();
        if (!v67 || !CFDictionaryContainsKey(v67, kColorSyncTransformUseITU709OETF))
        {
          if (!v34)
          {
            goto LABEL_52;
          }

LABEL_51:
          *(&v76 + 11) = 257;
          goto LABEL_52;
        }

        if (CFDictionaryGetValue(v67, kColorSyncTransformUseITU709OETF) != cf2)
        {
          goto LABEL_51;
        }
      }

LABEL_52:
      if (v14)
      {
        v37 = BYTE5(v79[0]) | (BYTE6(v79[0]) != 0);
        if (v67)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v37 = 0;
        if (v67)
        {
LABEL_54:
          v38 = CFDictionaryGetValue(v67, @"com.apple.cmm.SkipToneMappingForBT2100");
          v39 = CFDictionaryGetValue(v67, @"com.apple.cmm.ApplyToneMappingForBT2100");
          v40 = v38 == cf2;
          v41 = v39 == cf2;
          goto LABEL_57;
        }
      }

      v40 = 0;
      v41 = 0;
LABEL_57:
      if (BYTE2(v79[1]))
      {
        v42 = v72 == 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = v42;
      if (v14)
      {
        if (!((v40 || (BYTE2(v76) & (v43 | (!v70 || v41)) & 1) == 0) | v37 & 1))
        {
          v48 = ColorSyncProfileUsesITU_R709OETF(v72);
          if (v43)
          {
            v49 = BYTE6(v76);
            if (!v67)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v49 = 0;
            if (!v67)
            {
              goto LABEL_78;
            }
          }

          if (CFDictionaryContainsKey(v67, @"com.apple.cmm.HLGSurroundLuminance") == 1 && (BYTE6(v76) & 1) != 0)
          {
LABEL_79:
            v50 = ColorSyncOptionsLegacyHDREcosystemRequested(v67);
            if ((v49 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          else
          {
LABEL_78:
            if (ColorSyncOptionsGetHDRMediaReferenceWhite(v67) == 203.0)
            {
              goto LABEL_79;
            }

            v50 = 1;
            if ((v49 & 1) == 0)
            {
LABEL_90:
              v53 = 0;
              v51 = 0;
              v52 = 1;
LABEL_91:
              BYTE13(v76) = v53;
              BYTE14(v76) = v51;
              if (v43)
              {
                if (v48)
                {
                  BYTE3(v79[1]) = v52;
                }

                v56 = *(this + 6) - 1;
                v57 = *(this + 1);
                if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v57) >> 3) <= v56)
                {
                  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
                }

                v58 = v57 + 40 * v56;
                *(v58 + 8) = v77;
                *(v58 + 16) = v78;
                *(v58 + 24) = v79[0];
                *(v58 + 32) = v79[1];
                *(v58 + 36) = BYTE4(v79[1]);
                *(v58 + 37) = v53;
                *(v58 + 38) = v51;
              }

              goto LABEL_96;
            }
          }

          if (display_referred_mapping_on_SDR_to_HLG(void)::predicate != -1)
          {
            dispatch_once(&display_referred_mapping_on_SDR_to_HLG(void)::predicate, &__block_literal_global_1000);
          }

          v51 = display_referred_mapping_on_SDR_to_HLG(void)::enabled;
          v52 = display_referred_mapping_on_SDR_to_HLG(void)::enabled ^ 1;
          v53 = (display_referred_mapping_on_SDR_to_HLG(void)::enabled ^ 1) & v50;
          goto LABEL_91;
        }

        if (!v40 && (((BYTE2(v76) | v70) == 0) & BYTE2(v79[0])) != 0)
        {
          v44 = *(v74 + 16);
          v45 = ColorSyncProfileUsesITU_R709OETF(v44);
          v46 = ColorSyncProfileUsesCoreVideoGamma(v44);
          if (BYTE6(v79[0]) == 1)
          {
            v47 = v46;
            if (disable_ITUBT1886Inv_on_HLG_to_SDR(void)::predicate != -1)
            {
              dispatch_once(&disable_ITUBT1886Inv_on_HLG_to_SDR(void)::predicate, &__block_literal_global_1004);
            }

            if (disable_ITUBT1886Inv_on_HLG_to_SDR(void)::disabled == 1 && ((v45 | v47) & 1) != 0)
            {
              BYTE12(v76) = 0;
            }
          }
        }
      }

LABEL_96:
      v59 = *(this + 6);
      v60 = *(this + 1);
      v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v60) >> 3);
      if (v59 >= v61)
      {
        v62 = v65;
        do
        {
          std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, v61 + 10, v12, v13);
          v59 = *(this + 6);
          v60 = *(this + 1);
          v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v60) >> 3);
        }

        while (v59 >= v61);
      }

      else
      {
        v62 = v65;
      }

      *(this + 6) = v59 + 1;
      v63 = v60 + 40 * v59;
      *(v63 + 8) = v74;
      *(v63 + 16) = v75;
      *(v63 + 24) = v76;
      *(v63 + 32) = DWORD2(v76);
      *(v63 + 36) = WORD6(v76);
      *(v63 + 38) = BYTE14(v76);
      if (BYTE2(v76))
      {
        v72 = 0;
      }

      else
      {
        v72 = *(v74 + 16);
      }

      v77 = v74;
      v78 = v75;
      LOWORD(v79[0]) = v76;
      BYTE2(v79[0]) = BYTE2(v76);
      *(v79 + 3) = *(&v76 + 3);
      *(&v79[1] + 3) = *(&v76 + 11);
      ++v14;
    }

    while (v14 != v62);
  }

  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, *(this + 6), v12, v13);
}

void sub_19A91ED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef ColorSyncCMMCreateAppleCMM()
{
  pthread_mutex_lock(&ColorSyncCMMCreateAppleCMM_mtx);
  if (!ColorSyncCMMCreateAppleCMM_appleCMM)
  {
    if (ColorSyncCMMGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncCMMGetTypeID_predicate, &__block_literal_global_1495);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 24) = 0;
      *(Instance + 32) = @"Apple CMM";
      *(Instance + 17) = 0;
      *(Instance + 16) = 1;
      *(Instance + 72) = AppleCMMInitializeLinkProfile;
      *(Instance + 40) = @"com.apple.cmm";
      *(Instance + 48) = AppleCMMInitializeTransform;
      *(Instance + 56) = AppleCMMApplyTransform;
      *(Instance + 64) = AppleCMMCreateTransformProperty;
    }

    ColorSyncCMMCreateAppleCMM_appleCMM = Instance;
  }

  pthread_mutex_unlock(&ColorSyncCMMCreateAppleCMM_mtx);
  v1 = ColorSyncCMMCreateAppleCMM_appleCMM;

  return CFRetain(v1);
}

void ColorSyncTransformInternalSetCMMStorage(uint64_t a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v4 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    CFDictionarySetValue(*(a1 + 112), @"com.apple.cmm.cmmstorage", a2);
    *(a1 + 104) = a2;
  }
}

const __CFDictionary *ColorSyncOptionsDisplayReferredToneMappingRequested(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"com.apple.cmm.ApplyToneMaping");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      result = CFDictionaryGetValue(v1, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
      if (!result)
      {
        return result;
      }

      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v3, @"com.apple.cmm.ApplyReferenceWhiteToneMapping"))
        {
          return 1;
        }

        else
        {
          return (CFDictionaryContainsKey(v3, @"com.apple.cmm.ApplyPQEETFToneMapping") != 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *ColorSyncOptionsSceneReferredToneMappingRequested(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"com.apple.cmm.ApplyToneMaping");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFDictionaryGetTypeID())
      {
        return (CFDictionaryGetValue(v1, @"com.apple.cmm.ApplySceneReferredToneMapping") == *MEMORY[0x1E695E4D0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(uint64_t a1, unint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = v6 - *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v11 != 0 && v10)
  {
    v12 = *(a1 + 16);
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v6) >> 3) >= v11)
    {
      v38 = &v6[5 * v11];
      v39 = *(a1 + 8);
      do
      {
        *v39 = &unk_1F0E0A300;
        v39[1] = 0;
        v39[2] = -1;
        v39[3] = 0;
        *(v39 + 31) = 0;
        v39 += 5;
        v6 += 5;
      }

      while (v39 != v38);
      *(a1 + 8) = v38;
    }

    else
    {
      v13 = 0x666666666666666;
      if (a2 > 0x666666666666666)
      {
        std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_length_error[abi:ne200100]();
      }

      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v7) >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a2)
      {
        v15 = a2;
      }

      if (v14 < 0x333333333333333)
      {
        v13 = v15;
      }

      v16 = 5 * v13;
      v17 = CMMBase::NewInternal((40 * v13), *(a1 + 32), a3, a4);
      v18 = &v17[5 * a2];
      v19 = (v6 + v17 - v7);
      v20 = (v17 + v8);
      do
      {
        *v20 = &unk_1F0E0A300;
        v20[1] = 0;
        v20[2] = -1;
        v20[3] = 0;
        *(v20 + 31) = 0;
        v20 += 5;
        v19 += 40;
      }

      while (v20 != v18);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = (v17 + v8 - (v22 - *a1));
      *&v24 = v18;
      *(&v24 + 1) = &v17[v16];
      v40 = v24;
      if (v22 != *a1)
      {
        v25 = 0;
        do
        {
          v26 = &v23[v25 * 8];
          v27 = v21[v25 + 1];
          *v26 = &unk_1F0E0A300;
          *(v26 + 1) = v27;
          *(v26 + 2) = v21[v25 + 2];
          *(v26 + 3) = v21[v25 + 3];
          *(v26 + 8) = v21[v25 + 4];
          *(v26 + 18) = WORD2(v21[v25 + 4]);
          v26[38] = BYTE6(v21[v25 + 4]);
          v25 += 5;
        }

        while (&v21[v25] != v22);
        v28 = v21;
        v29 = v21;
        do
        {
          v30 = *v29;
          v29 += 5;
          (*v30)();
          v28 += 5;
        }

        while (v29 != v22);
      }

      v31 = *a1;
      *a1 = v23;
      *(a1 + 8) = v40;
      if (v31)
      {

        CMMBase::operator delete(v31);
      }
    }
  }

  else if (!v10)
  {
    v32 = &v7[5 * a2];
    if (v6 != v32)
    {
      v33 = v6 - 5;
      v34 = v33;
      v35 = v33;
      do
      {
        v36 = *v35;
        v35 -= 5;
        (v36->__sig)(v34);
        v33 -= 5;
        v37 = v34 == v32;
        v34 = v35;
      }

      while (!v37);
    }

    *(a1 + 8) = v32;
  }
}

uint64_t CMMProfile::GenericGetConversionType(CMMProfile *this, const __CFString *a2)
{
  if (CFEqual(this, kColorSyncTransformDeviceToPCS))
  {
    return 1;
  }

  if (CFEqual(this, kColorSyncTransformPCSToDevice))
  {
    return 2;
  }

  if (CFEqual(this, kColorSyncTransformPCSToPCS))
  {
    return 3;
  }

  if (CFEqual(this, kColorSyncTransformSceneLinearToPCS))
  {
    return 9;
  }

  if (CFEqual(this, kColorSyncTransformPCSToSceneLinear))
  {
    return 10;
  }

  if (CFEqual(this, kColorSyncTransformDisplayLinearToPCS) || CFEqual(this, kColorSyncTransformPCSToDisplayLinear))
  {
    return 11;
  }

  if (CFEqual(this, kColorSyncTransformDeviceToSceneLinearPCS))
  {
    return 13;
  }

  if (CFEqual(this, kColorSyncTransformSceneLinearPCSToDevice))
  {
    return 14;
  }

  if (CFEqual(this, kColorSyncTransformGamutCheck))
  {
    return 4;
  }

  CMMThrowExceptionOnError(4294967246);
  return 0xFFFFFFFFLL;
}

const UInt8 *ColorSyncProfileGetCICPInfo(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return 0;
    }

    result = *(v1 + 31);
    if (result)
    {
      return result;
    }

    if (ColorSyncProfileContainsSupportedCICP(v1, 0))
    {
      Tag = ColorSyncProfileGetTag(v1, @"cicp");
      BytePtr = CFDataGetBytePtr(Tag);
      if (BytePtr)
      {
        return BytePtr + 8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __ColorSyncTransformGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID = result;
  return result;
}

uint64_t __ColorSyncCMMGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncCMMGetTypeID_kColorSyncCMMRuntimeID = result;
  return result;
}

CFAllocatorRef ___ZL19CMMBytesDeallocatorv_block_invoke()
{
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  CMMBytesDeallocator(void)::cmmAllocator = result;
  return result;
}

const __CFData *ColorSyncProfileUsesITU_R709OETF(uint64_t a1)
{
  result = ColorSyncProfileGetTag(a1, @"rTRC");
  if (result || (result = ColorSyncProfileGetTag(a1, @"aarg")) != 0)
  {
    v3 = result;
    if (CFDataGetLength(result) >= 32)
    {
      BytePtr = CFDataGetBytePtr(v3);
      if (*BytePtr == 1634886000 && *(BytePtr + 4) == 768 && *(BytePtr + 3) == -466091520)
      {
        v5 = *(BytePtr + 4);
        if (v5 == -521666560)
        {
          if (*(BytePtr + 5) == 538378240 && *(BytePtr + 6) == -466092032)
          {
            return (*(BytePtr + 7) == -1139539968);
          }
        }

        else if (v5 == -253231104 && *(BytePtr + 5) == 269942784 && *(BytePtr + 6) == -466092032 && *(BytePtr + 7) == -1139539968)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

const __CFData *ColorSyncProfileUsesCoreVideoGamma(uint64_t a1)
{
  result = ColorSyncProfileGetTag(a1, @"rTRC");
  if (result || (result = ColorSyncProfileGetTag(a1, @"aarg")) != 0)
  {
    v3 = result;
    if (CFDataGetLength(result) >= 14 && (BytePtr = CFDataGetBytePtr(v3), *BytePtr == 1987212643) && *(BytePtr + 2) == 0x1000000)
    {
      return (*(BytePtr + 6) == -2559);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef create_GenericRGBProfile()
{
  if (create_GenericRGBProfile_predicate != -1)
  {
    dispatch_once(&create_GenericRGBProfile_predicate, &__block_literal_global_229);
  }

  v1 = create_GenericRGBProfile_profile;

  return CFRetain(v1);
}

uint64_t ColorSyncTransformInternalCopyProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  v7 = 0;
  if (a2 && v6 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    pthread_mutex_lock((a1 + 16));
    if (CFDictionaryContainsKey(*(a1 + 112), a2))
    {
      Value = CFDictionaryGetValue(*(a1 + 112), a2);
      v7 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v9 = *(*(a1 + 80) + 64);
      if (v9)
      {
        v7 = v9(a1, a2, a3);
      }

      else
      {
        v7 = 0;
      }
    }

    pthread_mutex_unlock((a1 + 16));
  }

  return v7;
}

CFTypeID ColorSyncTransformGetTypeID(void)
{
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  return ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID;
}

const __CFArray *ColorSyncCodeFragmentGetMD5(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFArrayGetTypeID())
    {
      return 0;
    }

    result = CFArrayGetValueAtIndex(v1, 0);
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(v3, kColorSyncTransformCodeFragmentMD5);
      if (result)
      {
        return *CFDataGetBytePtr(result);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef ColorSyncProfileCopyLocalizedDescriptionString(CFTypeRef result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v6 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return 0;
    }

    result = *(v5 + 12);
    if (result)
    {
      if ((v7 = CFDictionaryGetValue(result, @"dscm")) == 0 || (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFStringGetTypeID()) && (v8 = CFDictionaryGetValue(*(v5 + 12), v8)) == 0 || (v10 = CFGetTypeID(v8), v10 != CFDataGetTypeID()) || CFDataGetLength(v8) < 9 || !CFDataGetBytePtr(v8) || *CFDataGetBytePtr(v8) != 1668639853 || (result = copy_description_from_DSCMTag(v8, a2, a3)) == 0)
      {
        Value = CFDictionaryGetValue(*(v5 + 12), @"desc");
        if (!Value || (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFStringGetTypeID()) && (v12 = CFDictionaryGetValue(*(v5 + 12), v12)) == 0)
        {
          v17 = kColorSyncMissingDescription;
LABEL_29:
          v18 = *v17;

          return copyLoacalizedStringFromResources(v18, 1);
        }

        v14 = CFGetTypeID(v12);
        if (v14 == CFDataGetTypeID() && CFDataGetLength(v12) >= 9)
        {
          BytePtr = CFDataGetBytePtr(v12);
          if (BytePtr)
          {
            v16 = bswap32(*BytePtr);
            if (v16 == 1684370275)
            {
              result = copy_descriptionFromDESCTag(v12, a2, a3);
LABEL_27:
              if (result)
              {
                return result;
              }

              goto LABEL_28;
            }

            if (v16 == 1835824483)
            {
              result = copy_description_from_DSCMTag(v12, a2, a3);
              goto LABEL_27;
            }
          }
        }

LABEL_28:
        v17 = kColorSyncBadDescription;
        goto LABEL_29;
      }
    }
  }

  return result;
}

CFStringRef copy_descriptionFromDESCTag(const __CFData *a1, unsigned int a2, unsigned int a3)
{
  v70 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 0xD)
  {
    return 0;
  }

  v8 = Length;
  v52 = *(BytePtr + 2);
  v9 = bswap32(v52);
  v10 = v9 + 12;
  v11 = BytePtr + 12;
  if (Length < v9 + 12)
  {
    v11 = 0;
  }

  v51 = v11;
  if (Length < v9 + 12)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (Length >= v12 + 16)
  {
    v13 = v12 + 16;
  }

  else
  {
    v13 = v12 + 12;
  }

  if (Length >= v13 + 4)
  {
    v14 = bswap32(*&BytePtr[v13]);
    v13 += 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 + 2 * v14;
  v16 = &BytePtr[v13];
  if (Length >= v15)
  {
    v17 = &BytePtr[v13];
  }

  else
  {
    v17 = 0;
  }

  if (Length >= v15)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  v19 = v13 + 2 * v18;
  if (Length >= v19 + 2)
  {
    v53 = bswap32(*&BytePtr[v19]) >> 16;
    v19 += 2;
  }

  else
  {
    v53 = 0;
  }

  v54 = __PAIR64__(a3, a2);
  if (Length <= v19)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v20 = BytePtr[v19++];
    v27 = v20 != 0;
    v21 = v20 - 1;
    if (!v27)
    {
      v21 = 0;
    }

    if (v21 >= 0x43)
    {
      LOBYTE(v21) = 67;
    }
  }

  v22 = 0;
  v23 = v19 + v21;
  v24 = &BytePtr[v19];
  if (Length >= v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (Length >= v23)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v17)
  {
    v27 = v18 >= 2;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v50 = v26;
    bzero(chars, 0x802uLL);
    v28 = 1024;
    if (v18 < 0x400)
    {
      v28 = v18;
    }

    v29 = *v17;
    if (v29 == 65279)
    {
      v30 = v28 - 2;
      __memcpy_chk();
    }

    else if (v29 == 65534)
    {
      v30 = v28 - 2;
      if (v28 != 2)
      {
        v31 = &BytePtr[v13 + 2];
        v32 = chars;
        v33 = v30;
        do
        {
          v34 = *v31;
          v31 += 2;
          *v32++ = bswap32(v34) >> 16;
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v28 - 1;
      v35 = chars;
      v36 = v30;
      do
      {
        v37 = *v16;
        v16 += 2;
        *v35++ = bswap32(v37) >> 16;
        --v36;
      }

      while (v36);
    }

    v22 = CFStringCreateWithCharacters(0, chars, v30);
    v26 = v50;
    v10 = v9 + 12;
  }

  if (v25 && !v22 && v26)
  {
    if (v53 != 1536 && v53)
    {
      v22 = 0;
    }

    else
    {
      memset(v69, 0, sizeof(v69));
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      *&chars[1] = 0u;
      chars[0] = v25;
      v38 = v10;
      __memcpy_chk();
      v39 = CFStringCreateWithPascalString(0, chars, v53);
      v10 = v38;
      v22 = v39;
    }
  }

  if (v8 < v10 || !v12 || v22)
  {
    goto LABEL_73;
  }

  v40 = malloc_type_malloc(2 * v12, 0x1000040BDFB0063uLL);
  if (!v40)
  {
    return 0;
  }

  v41 = v40;
  if (v52)
  {
    v42 = v51 - 1;
    LOBYTE(v43) = 1;
    v44 = v9;
    do
    {
      v45 = v42[v44];
      v43 = (v42[v44] == 0) & v43;
      v9 -= v43;
      if ((v45 - 127) < 0xFFFFFFA1 && v45 != 0)
      {
        LOWORD(v45) = 63;
      }

      v40[--v44] = v45;
    }

    while (v44);
  }

  if (!v9)
  {
    *v40 = 63;
    v9 = 1;
  }

  v22 = CFStringCreateWithCharacters(0, v40, v9);
  free(v41);
LABEL_73:
  if (v22)
  {
    if (v54)
    {
      v47 = copyLoacalizedStringFromResources(v22, 1);
      if (v47)
      {
        v48 = v47;
        CFRelease(v22);
        return v48;
      }
    }
  }

  return v22;
}

void CMMTag::~CMMTag(CMMTag *this)
{
  *this = &unk_1F0E08C48;
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1)
  {
    *(v1 + 24) = v2;
  }

  if (v2)
  {
    *(v2 + 16) = v1;
  }

  if (*(this + 48) == 1)
  {
    CMMBase::operator delete(*(this + 5));
  }
}

{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMProfile::~CMMProfile(CMMProfile *this)
{
  *this = &unk_1F0E084C8;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    do
    {
      v5 = v4[2];
      (*(*v4 + 8))(v4);
      v4 = v5;
    }

    while (v5);
  }
}

void CMMXYZTag::~CMMXYZTag(CMMXYZTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMMatrixDisplayProfile::~CMMMatrixDisplayProfile(CMMMatrixDisplayProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMCurveTag::~CMMCurveTag(CMMCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

const __CFDictionary *tagDataAdder(const __CFString *key, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    Value = CFDictionaryGetValue(result, key);
    v6 = CFGetTypeID(Value);
    result = CFDataGetTypeID();
    if (v6 == result)
    {
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(Value);
      CFDataIncreaseLength(*a2, (Length + 3) & 0xFFFFFFFFFFFFFFFCLL);
      MutableBytePtr = CFDataGetMutableBytePtr(*a2);
      memcpy(&MutableBytePtr[*(a2 + 16)], BytePtr, Length);
      result = ColorSyncGetFourCharCodeFromSignature(key);
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = &MutableBytePtr[12 * v10];
      *(v12 + 33) = bswap32(result);
      *(v12 + 34) = bswap32(v11);
      *(v12 + 35) = bswap32(Length);
      *(a2 + 16) = v11 + ((Length + 3) & 0xFFFFFFFC);
      *(a2 + 24) = v10 + 1;
    }
  }

  return result;
}

double tagReferenceAdder(const __CFString *key, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, key);
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      MutableBytePtr = CFDataGetMutableBytePtr(*a2);
      FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(Value);
      v10 = *(a2 + 24);
      if (v10)
      {
        v11 = MutableBytePtr + 132;
        v12 = bswap32(FourCharCodeFromSignature);
        for (i = MutableBytePtr + 132; v12 != *i; i += 12)
        {
          if (!--v10)
          {
            return result;
          }
        }

        v14 = ColorSyncGetFourCharCodeFromSignature(key);
        v15 = *(a2 + 24);
        v16 = &v11[12 * v15];
        *v16 = bswap32(v14);
        result = *(i + 4);
        *(v16 + 4) = result;
        *(a2 + 24) = v15 + 1;
      }
    }
  }

  return result;
}

uint64_t CMMCICPTag::Validate(CMMCICPTag *this)
{
  v1 = *(this + 50);
  if (v1 == 12 || (v1 & 0xFB) == 1 || (v1 & 0xFD) == 9)
  {
    v4 = BYTE1(v1);
    if ((0x5E142u >> SBYTE1(v1)))
    {
      v5 = 0;
    }

    else
    {
      v5 = -170;
    }

    if (v4 <= 0x12)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4294967126;
    }
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return 0;
}

void CMMCICPTag::~CMMCICPTag(CMMCICPTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

ColorSyncProfileRef ColorSyncProfileCreate(CFDataRef data, CFErrorRef *error)
{
  v3 = create(0, data, 0, 0);
  v4 = v3;
  if (error)
  {
    *error = 0;
  }

  v5 = system_profile_for_profile_from_data(v3);
  if (v5)
  {
    v6 = v5;
    CFRelease(v4);
    return v6;
  }

  else
  {
    evaluate_cicp(v4);
  }

  return v4;
}

void *CMMParaCurveTag::Initialize(CMMParaCurveTag *this)
{
  v2 = **(this + 5);
  v3 = bswap32(v2);
  if (v2 == 1634886000)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294967126;
  }

  CMMThrowExceptionOnError(v4);
  *(this + 13) = v3;
  v5 = *(this + 5);
  if (*(this + 4) <= 0xCuLL)
  {
    v6 = 4294967126;
  }

  else
  {
    v6 = 0;
  }

  CMMThrowExceptionOnError(v6);
  v7 = bswap32(*(v5 + 8)) >> 16;
  *(this + 28) = v7;
  if (v7 >= 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -170;
  }

  *(this + 15) = dword_19A9B15D8[v7];
  v8 = (*(*this + 32))(this, 1, 1);
  CMMThrowExceptionOnError(v8);
  v9 = *(this + 15);
  v10 = (this + 64);
  for (result = memcpy(v10, (v5 + 12), 4 * v9); v9; --v9)
  {
    *v10 = bswap32(*v10);
    ++v10;
  }

  return result;
}

void CMMCurveTag::CMMCurveTag(CMMCurveTag *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = &unk_1F0E08C48;
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a4;
  *(this + 2) = 0;
  if (a5)
  {
    *(a5 + 16) = this;
  }

  *(this + 5) = a3;
  *(this + 24) = 0;
  *this = &unk_1F0E08D10;
  CMMCurveTag::Initialize(this);
}

CMMCurveTag *CMMParaCurveTag::CMMParaCurveTag(CMMCurveTag *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMMCurveTag::CMMCurveTag(a1, a2, a3, a4, a5);
  *v6 = &unk_1F0E08D78;
  CMMParaCurveTag::Initialize(v6);
  return a1;
}

{
  CMMCurveTag::CMMCurveTag(a1, a2, a3, a4, a5);
  *v6 = &unk_1F0E08D78;
  CMMParaCurveTag::Initialize(v6);
  return a1;
}

uint64_t CMMParaCurveTag::Validate(CMMParaCurveTag *this)
{
  if (*(this + 49))
  {
    return 0;
  }

  v3 = *(this + 4) - 12;
  if (v3 < 1 || v3 < 4 * *(this + 15))
  {
    return 4294967126;
  }

  result = 0;
  *(this + 49) = 1;
  return result;
}

void colorSyncProfileFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 256);
    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a1 + 156) == 1)
    {

      pthread_mutex_destroy((a1 + 24));
    }
  }
}

void CMMParaCurveTag::~CMMParaCurveTag(CMMParaCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void ConversionManager::AddMatrixConv(uint64_t a1, const __CFDictionary *a2, CMMMemMgr *a3, const char *a4, int a5, float32x2_t *a6, CFDictionaryRef theDict)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v333 = *MEMORY[0x1E69E9840];
  memset(v304, 0, 56);
  v287 = a3 + 8;
  LODWORD(v304[0]) = 1;
  v278 = a4;
  v276 = a4 ^ 1;
  v302 = 0;
  v303 = 0;
  v301 = 0;
  memset(v300, 0, sizeof(v300));
  LODWORD(v300[0]) = 1;
  v299 = 0;
  memset(v298, 0, sizeof(v298));
  LODWORD(v298[0]) = 1;
  v326 = 0;
  v324 = 0u;
  v325 = 0u;
  v323 = 0u;
  v10 = 1.0;
  v277 = *MEMORY[0x1E695E4D0];
  v11 = 1;
  theDicta = theDict;
  v284 = a6;
  v281 = a5;
  do
  {
    v12 = *(*&v287[8 * v8] + 52);
    if (v12 != 1212958496)
    {
      if (v12 == 1347493920)
      {
        if (a5 != 9)
        {
          v274 = v11;
          v275 = v9;
          if (a5 != 1)
          {
            __assert_rtn("AddMatrixConv", "CMMConversionManager.cpp", 2033, "0");
          }

          if (theDict)
          {
            v13 = (CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipPQEETF") == v277 || CFDictionaryGetValue(theDicta, @"com.apple.cmm.SkipToneMappingForBT2100") == v277) && *(a1 + 51) == 0;
            Value = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMappingForBT2100");
            v36 = Value == v277 || *(a1 + 51) == 0;
            if (v13)
            {
              v37 = 100.0;
            }

            else
            {
              v37 = 10000.0;
            }

            if (Value == v277 || (*(a1 + 51) & 1) == 0)
            {
              v38 = v37;
            }

            else
            {
              v38 = 100.0;
            }

            if (CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQEETF3DLut") == v277 && !v13)
            {
              v38 = 1.0;
            }

            a6 = v284;
            if (v284)
            {
LABEL_69:
              v40 = a6[2];
              v41 = theDicta;
              if (v40)
              {
                v42 = vcvts_n_f32_s32(bswap32(*(*(*&v40 + 40) + 12)), 0x10uLL);
                if (v42 != v38 && v42 != 0.0)
                {
                  v38 = v42;
                }
              }

              if (!theDicta)
              {
LABEL_94:
                v49 = ColorSyncOptionsDisplayReferredToneMappingRequested(v41);
                v50 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(v41);
                v7 = a1;
                if (*(a1 + 89) == 16)
                {
                  v51 = ColorSyncOptionsGetFlexTRCOptions(0, v41) != 0;
                  if (*(a1 + 89) == 16)
                  {
                    v52 = ColorSyncOptionsGetFlexLumaScalingOptions(0, v41) != 0;
                    goto LABEL_99;
                  }
                }

                else
                {
                  v51 = 0;
                }

                v52 = 0;
LABEL_99:
                if ((v50 | (v51 || v52)))
                {
                  v53 = 1.0;
                }

                else
                {
                  v53 = v38;
                }

                v54 = *(a1 + 48);
                if ((v49 & 1) == 0)
                {
                  memset(valuePtr, 0, 56);
                  LODWORD(valuePtr[0]) = 1;
                  TRC = CMMRGBCurves::MakeTRC(a3, v53, valuePtr, *(a1 + 8), v8);
                  v58 = CMMBase::NewInternal(0xA8, *(a1 + 8), v56, v57);
                  *(a1 + 24) = CMMConvPQEOTF::CMMConvPQEOTF(v58, v8, TRC, valuePtr, *(a1 + 24), v53);
                  v7 = a1;
                }

                v59 = v54 | v50 | v51 | v52 | (v13 || !v36);
                if (v8 == 2 && ((v59 ^ 1 | v49 | v50 | v52 | v51) & 1) != 0)
                {
                  if (v49)
                  {
                    v60 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping");
                    v61 = v60;
                    v7 = a1;
                    if (v60)
                    {
                      v62 = CFGetTypeID(v60);
                      v7 = a1;
                      if (v62 == CFDictionaryGetTypeID())
                      {
                        v63 = CFDictionaryGetValue(v61, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
                        v64 = v63;
                        v7 = a1;
                        if (v63)
                        {
                          v65 = CFGetTypeID(v63);
                          v7 = a1;
                          if (v65 == CFDictionaryGetTypeID())
                          {
                            v66 = CFDictionaryGetValue(v64, @"com.apple.cmm.ApplyPQEETFToneMapping");
                            v67 = v66;
                            if (v66 && (v68 = CFGetTypeID(v66), v68 == CFDictionaryGetTypeID()))
                            {
                              v69 = CFDictionaryGetValue(v67, @"com.apple.cmm.PQEOTFOpticalScale");
                              if (v69)
                              {
                                LODWORD(valuePtr[0]) = 0;
                                v70 = CFNumberGetValue(v69, kCFNumberFloatType, valuePtr);
                                v71 = *valuePtr;
                                if (!v70)
                                {
                                  v71 = 0.0;
                                }

                                if (v71 != 0.0)
                                {
                                  v53 = v71;
                                }
                              }

                              v72 = CFDictionaryGetValue(v67, @"com.apple.cmm.TargetDisplayWhite");
                              if (v72)
                              {
                                LODWORD(valuePtr[0]) = 0;
                                if (CFNumberGetValue(v72, kCFNumberFloatType, valuePtr))
                                {
                                  if (*valuePtr != 0.0)
                                  {
                                    *(v284 + 8) = valuePtr[0];
                                  }
                                }
                              }

                              ConversionManager::AddPQEETFToneMapping(a1, v284, 0, v73, v53);
                            }

                            else
                            {
                              v94 = CFDictionaryGetValue(v64, @"com.apple.cmm.ApplyReferenceWhiteToneMapping");
                              v95 = v94;
                              if (!v94 || (v96 = CFGetTypeID(v94), v96 != CFDictionaryGetTypeID()))
                              {
                                exception = __cxa_allocate_exception(4uLL);
                                *exception = -178;
                              }

                              ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(a1, v95);
                            }

                            v10 = 1.0;
LABEL_192:
                            v7 = a1;
                            goto LABEL_180;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v10 = 1.0;
                    if (v50)
                    {
                      goto LABEL_180;
                    }

                    if (v52)
                    {
                      v81 = CFDictionaryGetValue(*(v7 + 80), kColorSyncPreGainMapCICP);
                      v82 = v81;
                      if (v81 && (v83 = CFGetTypeID(v81), v83 == CFNumberGetTypeID()))
                      {
                        LODWORD(valuePtr[0]) = 0;
                        v84 = CFNumberGetValue(v82, kCFNumberSInt32Type, valuePtr);
                        v85 = LOBYTE(valuePtr[0]);
                        if (v84 != 1)
                        {
                          v85 = 0;
                        }
                      }

                      else
                      {
                        v85 = 0;
                      }

                      v7 = a1;
                      if (*(a1 + 88) != v85)
                      {
                        goto LABEL_180;
                      }

                      ConversionManager::AddFlexLuminanceToneMapping(a1, theDicta);
                      goto LABEL_192;
                    }

                    if (v51)
                    {
LABEL_180:
                      a5 = v281;
                      v9 = v275;
                      v11 = v274;
                      goto LABEL_181;
                    }

                    ConversionManager::AddPQEETFToneMapping(v7, v284, theDicta, a4, v53);
                    v7 = a1;
                  }
                }

                if (*(v7 + 48) == 1)
                {
                  if (*(v7 + 61))
                  {
                    v10 = 1.0;
                  }

                  else
                  {
                    v10 = 2.03;
                  }
                }

                else if ((v13 | *(v7 + 51)) & v59)
                {
                  v10 = v53 / *(v7 + 64);
                }

                else if (v59 & 1 | (v53 == 10000.0))
                {
                  v10 = 1.0;
                }

                else
                {
                  v10 = 10000.0 / v53;
                }

                goto LABEL_180;
              }

LABEL_87:
              if (CFDictionaryContainsKey(v41, @"com.apple.cmm.PQEOTFOpticalScale") == 1)
              {
                v46 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQEOTFOpticalScale");
                if (v46)
                {
                  LODWORD(valuePtr[0]) = 0;
                  v47 = CFNumberGetValue(v46, kCFNumberFloatType, valuePtr);
                  v48 = *valuePtr;
                  if (!v47)
                  {
                    v48 = 0.0;
                  }

                  if (v48 != 0.0)
                  {
                    v38 = v48;
                  }
                }
              }

              v41 = theDicta;
              goto LABEL_94;
            }
          }

          else
          {
            v13 = 0;
            v36 = *(v7 + 51) == 0;
            if (*(v7 + 51))
            {
              v38 = 100.0;
            }

            else
            {
              v38 = 10000.0;
            }

            if (a6)
            {
              goto LABEL_69;
            }
          }

          v41 = theDicta;
          if (!theDicta)
          {
            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (a6)
        {
          if (!v8)
          {
            v32 = a6[2];
            if (v32)
            {
              v33 = v11;
              v34 = vcvts_n_f32_s32(bswap32(*(*(*&v32 + 40) + 12)), 0x10uLL);
LABEL_128:
              if (v34 == 0.0)
              {
                v75 = v34;
              }

              else
              {
                v75 = v34 / 100.0;
              }

              if (theDict)
              {
                if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQOOTFOpticalScale") == 1)
                {
                  v76 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQOOTFOpticalScale");
                  if (v76)
                  {
                    LODWORD(valuePtr[0]) = 0;
                    v77 = CFNumberGetValue(v76, kCFNumberFloatType, valuePtr);
                    v78 = *valuePtr;
                    if (!v77)
                    {
                      v78 = 0.0;
                    }

                    if (v78 != 0.0)
                    {
                      v75 = v78;
                    }
                  }
                }
              }

              v317 = 0u;
              v318 = 0u;
              v316 = 0u;
              memset(valuePtr, 0, sizeof(valuePtr));
              CMMParaCurveTag::CMMParaCurveTag(valuePtr, 1885434465, "para", 32, 0);
              *&valuePtr[0] = off_1F0E08FA8;
              v7 = a1;
              v79 = CMMParaCurveTag::MakeTRC(valuePtr, v298, *(a1 + 8), 0, v75);
              DWORD1(v298[0]) = 14;
              v302 = v79;
              v309 = 0u;
              v308 = 0u;
              v307 = 0u;
              *&v306 = LODWORD(v75) | 0x3F99999A00000000;
              v305 = &unk_1F0E0A130;
              v310 = LODWORD(v75);
              *(&v306 + 1) = 0xC00000001;
              LOBYTE(v307) = 1;
              DWORD1(v307) = 1;
              LODWORD(v308) = 1075419546;
              DWORD1(v308) = powf(v75, 0.41667);
              v309 = 0uLL;
              *(&v308 + 1) = 0;
              v303 = CMMITUBT1886EOTF::MakeTRC(&v305, v300, *(a1 + 8), v80);
              CMMTag::~CMMTag(valuePtr);
LABEL_139:
              ConversionManager::AddTRCSequence(v7, v8, (v7 + 16), (v7 + 24), v298, &v302, v300, &v303);
              v7 = a1;
              a5 = v281;
              v11 = v33;
              goto LABEL_181;
            }

LABEL_127:
            v33 = v11;
            v34 = 100.0;
            goto LABEL_128;
          }
        }

        else if (!v8)
        {
          goto LABEL_127;
        }

        v44 = v303[1];
        if (v44)
        {
          v303[1] = v44 + 1;
        }

        v33 = v11;
        v45 = v302[1];
        if (v45)
        {
          v302[1] = v45 + 1;
        }

        goto LABEL_139;
      }

      if ((*(v7 + 43) & 1) != 0 || *(v7 + 44) == 1)
      {
        if (*(v7 + 57) == 1 && (*(v7 + 49) & 1) == 0)
        {
          v18 = v303;
          if (v303)
          {
            v17 = v9;
            v74 = v303[1];
            v19 = 0;
            if (v74)
            {
              v303[1] = v74 + 1;
            }

            goto LABEL_163;
          }

          SDRToPQScale = 1.0;
          if (*(v7 + 47) == 1)
          {
            SDRToPQScale = ColorSyncOptionsGetSDRToPQScale(theDict);
          }

          v87 = *(v7 + 59);
          if (*(v7 + 59))
          {
            v17 = v9;
          }

          else
          {
            v17 = v9;
            if (*(v7 + 48))
            {
              SDRToPQScale = 2.03;
            }
          }

          memset(&valuePtr[2] + 8, 0, 32);
          *(&valuePtr[1] + 8) = 0u;
          *(&valuePtr[0] + 1) = LODWORD(SDRToPQScale) | 0x3F99999A00000000;
          *&valuePtr[0] = &unk_1F0E0A130;
          *(&valuePtr[4] + 1) = LODWORD(SDRToPQScale);
          *&valuePtr[1] = 0xC00000001;
          BYTE8(valuePtr[1]) = 1;
          HIDWORD(valuePtr[1]) = 1;
          DWORD2(valuePtr[2]) = 1075419546;
          HIDWORD(valuePtr[2]) = powf(SDRToPQScale, 0.41667);
          memset(&valuePtr[3], 0, 24);
          if (v87)
          {
            DWORD1(valuePtr[1]) = 0;
            DWORD2(valuePtr[2]) = 0x40000000;
            v90 = fabsf(sqrtf(SDRToPQScale));
            if (SDRToPQScale == -INFINITY)
            {
              v90 = INFINITY;
            }

            *(&valuePtr[2] + 3) = v90;
          }

          v18 = CMMITUBT1886EOTF::MakeTRC(valuePtr, v304, *(v7 + 8), v89);
          v19 = 0;
          v303 = v18;
LABEL_162:
          v7 = a1;
LABEL_163:
          v91 = CMMBase::NewInternal(0xA8, *(v7 + 8), a3, a4);
          *(a1 + 24) = CMMConvTRC::CMMConvTRC(v91, v8, v18, v19, v304, *(a1 + 24), 3, 1, 1.0, 1, v276);
          if (v18)
          {
            v92 = v18[1];
            v7 = a1;
            if (v92)
            {
              v93 = v92 - 1;
              v18[1] = v93;
              if (!v93)
              {
                (*(*v18 + 8))(v18);
              }
            }
          }

          else
          {
            v7 = a1;
          }

          a5 = v281;
          v9 = v17;
          goto LABEL_181;
        }

        if (*(v7 + 43) && *(v7 + 60) == 1 && (*(v7 + 49) & 1) == 0 && (v278 & 1) == 0)
        {
          if (v9)
          {
            v15 = *(v9 + 8);
            if (v15)
            {
              *(v9 + 8) = v15 + 1;
            }

            v16 = v11;
          }

          else
          {
            if (CMMInitializeSRGBGammaTable(void)::predicate != -1)
            {
              dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
            }

            v9 = CMMsRGBGammaTable;
            v16 = *CMMsRGBGammaFloatLutInfo;
            v88 = *(CMMsRGBGammaFloatLutInfo + 20);
            v323 = *(CMMsRGBGammaFloatLutInfo + 4);
            v324 = v88;
            v325 = *(CMMsRGBGammaFloatLutInfo + 36);
            v326 = *(CMMsRGBGammaFloatLutInfo + 52);
          }

          v19 = 0;
          v11 = v16;
          LODWORD(v304[0]) = v16;
          *(v304 + 4) = v323;
          *(&v304[1] + 4) = v324;
          *(&v304[2] + 4) = v325;
          DWORD1(v304[3]) = v326;
          v17 = v9;
          v18 = v9;
          goto LABEL_163;
        }
      }

      v17 = v9;
      v18 = CMMRGBCurves::MakeTRC(a3, 1.0, v304, *(v7 + 8), v8);
      v19 = (*(**&v287[8 * v8] + 40))(*&v287[8 * v8]);
      v7 = a1;
      if (*(a1 + 43) == 1)
      {
        DWORD1(v304[0]) = 14;
      }

      v20 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
      if (*(a1 + 47) != 1 || (v20 & 1) != 0)
      {
        if ((v278 & v20) != 0)
        {
          v10 = 0.203;
        }

        goto LABEL_163;
      }

      v21 = default_PQInvEOTFOpticalScale(theDicta, (*(a1 + 56) | v278) & 1);
      v22 = custom_PQInvEOTFOpticalScale(theDicta, v21);
      v23 = theDicta;
      if (ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta) && (v24 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping"), v25 = v24, v23 = theDicta, v24) && (v26 = CFGetTypeID(v24), v23 = theDicta, v26 == CFDictionaryGetTypeID()) && (v27 = CFDictionaryGetValue(v25, @"com.apple.cmm.ApplyDisplayReferredToneMapping"), v28 = v27, v23 = theDicta, v27) && (v29 = CFGetTypeID(v27), v23 = theDicta, v29 == CFDictionaryGetTypeID()) && (v30 = CFDictionaryGetValue(v28, @"com.apple.cmm.ApplyReferenceWhiteToneMapping"), v23 = theDicta, v30) && (v31 = CFGetTypeID(v30), v23 = theDicta, v31 == CFDictionaryGetTypeID()))
      {
        v10 = 0.203;
      }

      else if (v22 == 0.0)
      {
        v7 = a1;
        if (v278)
        {
          if (*(a1 + 64) != 100.0)
          {
            v10 = v21 * ColorSyncOptionsGetSDRToPQScale(v23);
          }
        }

        else
        {
          v10 = ColorSyncOptionsGetSDRToPQScale(v23);
        }

        goto LABEL_163;
      }

      goto LABEL_162;
    }

    switch(a5)
    {
      case 13:
        ConversionManager::AddHLGDevToPCS(v7, v8, a3, a6, theDict);
        break;
      case 9:
        if (v8 != 2)
        {
          goto LABEL_181;
        }

        ConversionManager::AddHLGOOTF(v7, a6, theDict);
        break;
      case 1:
        ConversionManager::AddHLGDevToPCS(v7, v8, a3, a6, theDict);
        v10 = v14;
        break;
      default:
        __assert_rtn("AddMatrixConv", "CMMConversionManager.cpp", 2065, "0");
    }

    v7 = a1;
    a5 = v281;
LABEL_181:
    if (!*(v7 + 16))
    {
      *(v7 + 16) = *(v7 + 24);
    }

    ++v8;
    theDict = theDicta;
    a6 = v284;
  }

  while (v8 != 3);
  if (v278)
  {
    if (ConversionManager::exrToneMappingGammaIsRequested(theDicta, a2))
    {
      ConversionManager::AddEXRToneMapping(a1, theDicta, 3);
      goto LABEL_196;
    }

    v7 = a1;
    if (*(a1 + 46) == 1)
    {
      if (ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta))
      {
        ConversionManager::AddPQEETFToneMapping(a1, v284, theDicta, v129, 100.0);
        goto LABEL_196;
      }
    }

    else if (*(a1 + 47) == 1 && ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta))
    {
      v153 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping");
      v154 = v153;
      if (v153)
      {
        v155 = CFGetTypeID(v153);
        if (v155 == CFDictionaryGetTypeID())
        {
          v156 = CFDictionaryGetValue(v154, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
          v157 = v156;
          if (v156)
          {
            v158 = CFGetTypeID(v156);
            if (v158 == CFDictionaryGetTypeID())
            {
              v159 = CFDictionaryGetValue(v157, @"com.apple.cmm.ApplyPQEETFToneMapping");
              v160 = v159;
              if (v159)
              {
                v161 = CFGetTypeID(v159);
                if (v161 == CFDictionaryGetTypeID())
                {
                  v162 = CFDictionaryGetValue(v160, @"com.apple.cmm.XRReflectanceScale");
                  if (v162)
                  {
                    LODWORD(valuePtr[0]) = 0;
                    v163 = CFNumberGetValue(v162, kCFNumberFloatType, valuePtr);
                    v164 = *valuePtr;
                    if (!v163)
                    {
                      v164 = 0.0;
                    }

                    if (v164 != 0.0)
                    {
                      v10 = v164;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_196:
      v7 = a1;
    }
  }

  v297 = 0;
  memset(v296, 0, sizeof(v296));
  v295 = &unk_1F0E071F8;
  CMMMatrix::InitializeMatrix(&v295, v296, a2, v10);
  v98 = *(v7 + 24);
  v97 = (v7 + 24);
  CMMMatrix::MakeMatrixConv(&v295, *(v97 - 2), v98, v99);
  *v97 = v100;
  v101 = a1;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = v100;
  }

  if (*(a1 + 89) != 16)
  {
    v113 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
    goto LABEL_212;
  }

  FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(0, theDicta);
  if (*(a1 + 89) != 16)
  {
    v113 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
    if (FlexLumaScalingOptions)
    {
LABEL_221:
      v130 = CFDictionaryGetValue(*(a1 + 80), kColorSyncPreGainMapCICP);
      v131 = v130;
      if (v130 && (v132 = CFGetTypeID(v130), v132 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr[0]) = 0;
        if (CFNumberGetValue(v131, kCFNumberSInt32Type, valuePtr) == 1)
        {
          v133 = valuePtr[0];
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        v133 = 0;
      }

      v134 = CFDictionaryGetValue(*(a1 + 80), kColorSyncPostGainMapCICP);
      v136 = v134;
      if (v134)
      {
        v137 = CFGetTypeID(v134);
        if (v137 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr[0]) = 0;
          if (CFNumberGetValue(v136, kCFNumberSInt32Type, valuePtr) == 1)
          {
            LOBYTE(v136) = valuePtr[0];
          }

          else
          {
            LOBYTE(v136) = 0;
          }
        }

        else
        {
          LOBYTE(v136) = 0;
        }
      }

      v165 = a1;
      if (*(a1 + 88) != v133)
      {
        memset(v328, 0, sizeof(v328));
        ConversionManager::ColorantsForPrimaries(a1, v328, v133, v135);
        v322 = 0;
        v320 = 0u;
        v321 = 0u;
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        memset(valuePtr, 0, sizeof(valuePtr));
        CMMInvMatrix::CMMInvMatrix(valuePtr, v328, dword_19A9B0638);
        v165 = a1;
        v168 = CMMBase::NewInternal(0x160, *(a1 + 8), v166, v167);
        CMMConvInvMatrix::CMMConvInvMatrix(v168, valuePtr, *(a1 + 24));
        *v169 = &unk_1F0E0BA98;
        *(a1 + 24) = v169;
        ConversionManager::AddFlexLuminanceToneMapping(a1, theDicta);
        v310 = 0;
        v314 = 0;
        v309 = 0u;
        v308 = 0u;
        v307 = 0u;
        v306 = 0u;
        v305 = &unk_1F0E071F8;
        v311 = 0;
        v313 = 0;
        v312 = 0;
        CMMMatrix::InitializeMatrix(&v305, &v306, v328, 1.0);
        CMMMatrix::MakeMatrixConv(&v305, *(v165 + 8), *(v165 + 24), v170);
        *(a1 + 24) = v171;
      }

      if (v136)
      {
        memset(v328, 0, sizeof(v328));
        ConversionManager::ColorantsForPrimaries(v165, v328, v136, v135);
        v322 = 0;
        v320 = 0u;
        v321 = 0u;
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        memset(valuePtr, 0, sizeof(valuePtr));
        CMMInvMatrix::CMMInvMatrix(valuePtr, v328, dword_19A9B0638);
        v174 = CMMBase::NewInternal(0x160, *(a1 + 8), v172, v173);
        CMMConvInvMatrix::CMMConvInvMatrix(v174, valuePtr, *(a1 + 24));
        *v175 = &unk_1F0E0BA98;
        *(a1 + 24) = v175;
        v310 = 0;
        v314 = 0;
        v309 = 0u;
        v308 = 0u;
        v307 = 0u;
        v306 = 0u;
        v305 = &unk_1F0E071F8;
        v311 = 0;
        v313 = 0;
        v312 = 0;
        CMMMatrix::InitializeMatrix(&v305, &v306, v328, 1.0);
        CMMMatrix::MakeMatrixConv(&v305, *(a1 + 8), v174, v176);
        *(a1 + 24) = v177;
      }

      return;
    }

LABEL_212:
    if ((v113 & 1) == 0)
    {
      return;
    }

LABEL_213:
    if (*(a1 + 42) == 1)
    {
      ReferenceWhiteToneMappingOptions = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(theDicta);
      v116 = 8.0;
      v288 = 0.0;
      theDictb = 0.5;
      v117 = 1.0;
      v118 = 0.9;
      v119 = 0.35;
      v120 = 2.6667;
      if (ReferenceWhiteToneMappingOptions)
      {
        v121 = ReferenceWhiteToneMappingOptions;
        v122 = CFGetTypeID(ReferenceWhiteToneMappingOptions);
        if (v122 == CFDictionaryGetTypeID())
        {
          v285 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
          v282 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
          v117 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
          theDictb = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
          v120 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
          v123 = float_from_dictionary_with_default(v121, @"com.apple.cmm.ContentEDRStrength", 1.0);
          v124 = int32_from_dictionary_with_default(v121, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
          v288 = float_from_dictionary_with_default(v121, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
          v119 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
          v125 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
          v126 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
          v118 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
          v116 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMStopAnchor", 8.0);
          v127 = int32_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMVersion", 2);
          v128 = primaries_from_dictionary(v121);
        }

        else
        {
          v124 = 0;
          v127 = 2;
          v128 = 9;
          v282 = 203.0;
          v285 = 1000.0;
          v123 = 1.0;
          v125 = 2.6667;
          v126 = 0.35;
        }

        v101 = a1;
      }

      else
      {
        v124 = 0;
        v127 = 2;
        v128 = 9;
        v282 = 203.0;
        v285 = 1000.0;
        v123 = 1.0;
        v125 = 2.6667;
        v126 = 0.35;
      }

      v178 = *(v101 + 51);
      memset(v328, 0, sizeof(v328));
      ConversionManager::ColorantsForPrimaries(v101, v328, v128, v115);
      v322 = 0;
      v320 = 0u;
      v321 = 0u;
      v318 = 0u;
      v319 = 0u;
      v316 = 0u;
      v317 = 0u;
      memset(valuePtr, 0, sizeof(valuePtr));
      CMMInvMatrix::CMMInvMatrix(valuePtr, v328, dword_19A9B0638);
      v181 = CMMBase::NewInternal(0x160, *(a1 + 8), v179, v180);
      v182 = a1;
      CMMConvInvMatrix::CMMConvInvMatrix(v181, valuePtr, *(a1 + 24));
      *v183 = &unk_1F0E0BA98;
      *(a1 + 24) = v183;
      if (!*(a1 + 16))
      {
        *(a1 + 16) = v183;
      }

      if (!v178)
      {
        v117 = 1.0;
      }

      v186 = CMMBase::NewInternal(0xA8, *(a1 + 8), v184, v185);
      v187 = *(a1 + 24);
      v291 = (a1 + 24);
      CMMConvRWToneMapping::CMMConvRWToneMapping(v186, 1000.0, v285, v282, v117, theDictb, v120, v123, v124, v288, v127, v187, v119, v125, v126, v118, v116);
      *v291 = v186;
      v310 = 0;
      v314 = 0;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
      v305 = &unk_1F0E071F8;
      v311 = 0;
      v313 = 0;
      v312 = 0;
      CMMMatrix::InitializeMatrix(&v305, &v306, v328, 1.0);
      CMMMatrix::MakeMatrixConv(&v305, *(v182 + 8), v186, v188);
    }

    else
    {
      if (*(a1 + 41) != 1)
      {
        if (v278)
        {
          ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(a1, theDicta);
        }

        return;
      }

      v138 = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(theDicta);
      v140 = 8.0;
      v289 = 0.0;
      theDictc = 0.5;
      v141 = 1.0;
      v142 = 0.9;
      v143 = 0.35;
      v144 = 2.6667;
      if (v138)
      {
        v145 = v138;
        v146 = CFGetTypeID(v138);
        if (v146 == CFDictionaryGetTypeID())
        {
          v286 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
          v283 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
          v147 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
          theDictc = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
          v144 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
          v280 = float_from_dictionary_with_default(v145, @"com.apple.cmm.ContentEDRStrength", 1.0);
          v148 = int32_from_dictionary_with_default(v145, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
          v289 = float_from_dictionary_with_default(v145, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
          v143 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
          v149 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
          v141 = v147;
          v150 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
          v142 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
          v140 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMStopAnchor", 8.0);
          v151 = int32_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMVersion", 2);
          v152 = primaries_from_dictionary(v145);
        }

        else
        {
          v148 = 0;
          v151 = 2;
          v152 = 9;
          v283 = 203.0;
          v286 = 1000.0;
          v280 = 1.0;
          v149 = 2.6667;
          v150 = 0.35;
        }

        v101 = a1;
      }

      else
      {
        v148 = 0;
        v151 = 2;
        v152 = 9;
        v283 = 203.0;
        v286 = 1000.0;
        v280 = 1.0;
        v149 = 2.6667;
        v150 = 0.35;
      }

      v190 = *(v101 + 51);
      memset(v328, 0, sizeof(v328));
      ConversionManager::ColorantsForPrimaries(v101, v328, v152, v139);
      v322 = 0;
      v320 = 0u;
      v321 = 0u;
      v318 = 0u;
      v319 = 0u;
      v316 = 0u;
      v317 = 0u;
      memset(valuePtr, 0, sizeof(valuePtr));
      CMMInvMatrix::CMMInvMatrix(valuePtr, v328, dword_19A9B0638);
      v193 = CMMBase::NewInternal(0x160, *(a1 + 8), v191, v192);
      v194 = a1;
      CMMConvInvMatrix::CMMConvInvMatrix(v193, valuePtr, *(a1 + 24));
      *v195 = &unk_1F0E0BA98;
      *(a1 + 24) = v195;
      if (!*(a1 + 16))
      {
        *(a1 + 16) = v195;
      }

      if (!v190)
      {
        v141 = 1.0;
      }

      v198 = CMMBase::NewInternal(0xA8, *(a1 + 8), v196, v197);
      v199 = *(a1 + 24);
      v291 = (a1 + 24);
      CMMConvRWToneMapping::CMMConvRWToneMapping(v198, 10000.0, v286, v283, v141, theDictc, v144, v280, v148, v289, v151, v199, v143, v149, v150, v142, v140);
      *v291 = v198;
      v310 = 0;
      v314 = 0;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
      v305 = &unk_1F0E071F8;
      v311 = 0;
      v313 = 0;
      v312 = 0;
      CMMMatrix::InitializeMatrix(&v305, &v306, v328, 1.0);
      CMMMatrix::MakeMatrixConv(&v305, *(v194 + 8), v198, v200);
    }

    *v291 = v189;
    return;
  }

  FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(0, theDicta);
  v104 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
  if (FlexLumaScalingOptions)
  {
    goto LABEL_221;
  }

  if (!FlexTRCOptions)
  {
    if (!v104)
    {
      return;
    }

    goto LABEL_213;
  }

  v105 = *(a1 + 72);
  if (v105)
  {
    if (*(a1 + 89) == 16)
    {
      v106 = ColorSyncOptionsGetFlexTRCOptions(0, theDicta);
      if (v106)
      {
        v107 = v106;
        v108 = CFDictionaryGetValue(*(a1 + 72), kColorSyncPreGainMapCICP);
        v110 = v108;
        if (v108 && (v111 = CFGetTypeID(v108), v111 == CFNumberGetTypeID()))
        {
          LODWORD(valuePtr[0]) = 0;
          if (CFNumberGetValue(v110, kCFNumberSInt32Type, valuePtr) == 1)
          {
            v112 = valuePtr[0];
          }

          else
          {
            v112 = 0;
          }
        }

        else
        {
          v112 = 0;
        }

        memset(v332, 0, sizeof(v332));
        if (*(a1 + 88) != v112)
        {
          ConversionManager::ColorantsForPrimaries(a1, v332, v112, v109);
          v322 = 0;
          v320 = 0u;
          v321 = 0u;
          v318 = 0u;
          v319 = 0u;
          v316 = 0u;
          v317 = 0u;
          memset(valuePtr, 0, sizeof(valuePtr));
          CMMInvMatrix::CMMInvMatrix(valuePtr, v332, dword_19A9B0638);
          v203 = CMMBase::NewInternal(0x160, *(a1 + 8), v201, v202);
          CMMConvInvMatrix::CMMConvInvMatrix(v203, valuePtr, *(a1 + 24));
          *v204 = &unk_1F0E0BA98;
          *(a1 + 24) = v204;
        }

        if (CFDictionaryContainsKey(v105, kColorSyncMonoFlexGTCNodeTable) == 1 && CFDictionaryContainsKey(v105, kColorSyncMonoGainMapParams) == 1)
        {
          v205 = CFDictionaryGetValue(v105, kColorSyncMonoFlexGTCNodeTable);
          v206 = CFDictionaryGetValue(v105, kColorSyncMonoGainMapParams);
          FlexTRCLookup = CMMTable::CreateFlexTRCLookup(v205, v206, v107, *(a1 + 8), v207, v208, v209);
          if (FlexTRCLookup)
          {
            v211 = 0;
          }

          else
          {
            v211 = 4294967246;
          }

          CMMThrowExceptionOnError(v211);
          if (FlexTRCLookup)
          {
            v214 = CMMBase::NewInternal(0x60, *(a1 + 8), v212, v213);
            CMMPQCurveTag::CMMPQCurveTag(v214, FlexTRCLookup, 0);
            v215 = FlexTRCLookup[1];
            if (v215)
            {
              v216 = v214;
              v217 = v214;
              v218 = v215 - 1;
              FlexTRCLookup[1] = v218;
              v219 = a1;
              if (!v218)
              {
                goto LABEL_310;
              }
            }

            else
            {
              v216 = v214;
              v217 = v214;
              v219 = a1;
            }

            goto LABEL_313;
          }

          v226 = 0;
          v233 = 0;
          FlexTRCLookup = 0;
        }

        else
        {
          v220 = CFDictionaryGetValue(v105, kColorSyncRedFlexGTCNodeTable);
          v221 = CFDictionaryGetValue(v105, kColorSyncRedGainMapParams);
          v222 = (a1 + 8);
          v226 = CMMTable::CreateFlexTRCLookup(v220, v221, v107, *(a1 + 8), v223, v224, v225);
          if (v226)
          {
            v227 = 0;
          }

          else
          {
            v227 = 4294967246;
          }

          CMMThrowExceptionOnError(v227);
          v228 = CFDictionaryGetValue(v105, kColorSyncGrnFlexGTCNodeTable);
          v229 = CFDictionaryGetValue(v105, kColorSyncGrnGainMapParams);
          v233 = CMMTable::CreateFlexTRCLookup(v228, v229, v107, *v222, v230, v231, v232);
          if (v233)
          {
            v234 = 0;
          }

          else
          {
            v234 = 4294967246;
          }

          CMMThrowExceptionOnError(v234);
          v235 = CFDictionaryGetValue(v105, kColorSyncBluFlexGTCNodeTable);
          v236 = CFDictionaryGetValue(v105, kColorSyncBluGainMapParams);
          FlexTRCLookup = CMMTable::CreateFlexTRCLookup(v235, v236, v107, *v222, v237, v238, v239);
          if (FlexTRCLookup)
          {
            v240 = 0;
          }

          else
          {
            v240 = 4294967246;
          }

          CMMThrowExceptionOnError(v240);
        }

        v214 = CMMBase::NewInternal(0x60, *(a1 + 8), v212, v213);
        CMMPQCurveTag::CMMPQCurveTag(v214, v226, 0);
        v216 = CMMBase::NewInternal(0x60, *(a1 + 8), v241, v242);
        CMMPQCurveTag::CMMPQCurveTag(v216, v233, 0);
        v217 = CMMBase::NewInternal(0x60, *(a1 + 8), v243, v244);
        CMMPQCurveTag::CMMPQCurveTag(v217, FlexTRCLookup, 0);
        if (v226)
        {
          v245 = v226[1];
          if (v245)
          {
            v246 = v245 - 1;
            v226[1] = v246;
            if (!v246)
            {
              (*(*v226 + 8))(v226);
            }
          }
        }

        v219 = a1;
        if (v233)
        {
          v247 = v233[1];
          if (v247)
          {
            v248 = v247 - 1;
            v233[1] = v248;
            if (!v248)
            {
              (*(*v233 + 8))(v233);
            }
          }
        }

        if (FlexTRCLookup)
        {
          v249 = FlexTRCLookup[1];
          if (v249)
          {
            v250 = v249 - 1;
            FlexTRCLookup[1] = v250;
            if (!v250)
            {
LABEL_310:
              (*(*FlexTRCLookup + 8))(FlexTRCLookup);
            }
          }
        }

LABEL_313:
        v251 = 0;
        v330 = 0;
        v331 = 0;
        v328[0] = &unk_1F0E09700;
        v328[1] = v214;
        v328[2] = v216;
        v329 = v217;
        do
        {
          memset(valuePtr, 0, 56);
          LODWORD(valuePtr[0]) = 1;
          v252 = CMMRGBCurves::MakeTRC(v328, 1.0, valuePtr, *(v219 + 8), v251);
          v255 = CMMBase::NewInternal(0xA8, *(v219 + 8), v253, v254);
          *(a1 + 24) = CMMConvPQEOTF::CMMConvPQEOTF(v255, v251, v252, valuePtr, *(a1 + 24), 1.0);
          if (v252)
          {
            v256 = v252[1];
            if (v256)
            {
              v257 = v256 - 1;
              v252[1] = v257;
              if (!v257)
              {
                (*(*v252 + 8))(v252);
              }
            }
          }

          ++v251;
          v219 = a1;
        }

        while (v251 != 3);
        if (*(a1 + 88) != v112)
        {
          memset(valuePtr + 8, 0, 72);
          *&valuePtr[0] = &unk_1F0E071F8;
          v316 = 0uLL;
          v317 = 0uLL;
          CMMMatrix::InitializeMatrix(valuePtr, valuePtr + 8, v332, 1.0);
          CMMMatrix::MakeMatrixConv(valuePtr, *(a1 + 8), *(a1 + 24), v258);
          *(a1 + 24) = v259;
        }

        v260 = CFDictionaryGetValue(v105, kColorSyncPostGainMapCICP);
        v261 = v260;
        if (v260)
        {
          v262 = CFGetTypeID(v260);
          if (v262 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            v263 = CFNumberGetValue(v261, kCFNumberSInt32Type, valuePtr);
            v265 = valuePtr[0];
            if (v263 != 1)
            {
              v265 = 0;
            }

            if (v265)
            {
              memset(v327, 0, sizeof(v327));
              ConversionManager::ColorantsForPrimaries(a1, v327, v265, v264);
              v322 = 0;
              v320 = 0u;
              v321 = 0u;
              v318 = 0u;
              v319 = 0u;
              v316 = 0u;
              v317 = 0u;
              memset(valuePtr, 0, sizeof(valuePtr));
              CMMInvMatrix::CMMInvMatrix(valuePtr, v327, dword_19A9B0638);
              v268 = CMMBase::NewInternal(0x160, *(a1 + 8), v266, v267);
              CMMConvInvMatrix::CMMConvInvMatrix(v268, valuePtr, *(a1 + 24));
              *v269 = &unk_1F0E0BA98;
              *(a1 + 24) = v269;
              v310 = 0;
              v314 = 0;
              v309 = 0u;
              v308 = 0u;
              v307 = 0u;
              v306 = 0u;
              v305 = &unk_1F0E071F8;
              v311 = 0;
              v313 = 0;
              v312 = 0;
              CMMMatrix::InitializeMatrix(&v305, &v306, v327, 1.0);
              CMMMatrix::MakeMatrixConv(&v305, *(a1 + 8), v268, v270);
              *(a1 + 24) = v271;
            }
          }
        }
      }
    }
  }
}

uint64_t CMMRGBCurves::MakeTRC(uint64_t a1, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = a1 + 8;
  v7 = *(a1 + 8);
  if (!a5)
  {
    result = (*(*v7 + 64))(a2);
LABEL_7:
    *(a1 + 32) = result;
    return result;
  }

  if (!(*(*v7 + 56))(v7, *(v8 + 8 * a5), *(v8 + 8 * (a5 - 1))))
  {
    result = (*(**(v8 + 8 * a5) + 64))(a2);
    goto LABEL_7;
  }

  result = *(a1 + 32);
  v11 = *(result + 8);
  if (v11)
  {
    *(result + 8) = v11 + 1;
  }

  return result;
}

uint64_t CMMConvTRC::GetTransformType(CMMConvTRC *this, const __CFDictionary *a2)
{
  v2 = *(this + 22);
  if (v2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

CMMMemMgr *ConversionManager::AddInvGrayConv(CMMMemMgr **this, CMMProfile *a2, unsigned __int8 a3)
{
  Tag = CMMProfile::GetTag(a2, 1800688195);
  if (Tag)
  {
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 13) == 1281450528)
  {
    v8 = 1347182946;
  }

  else
  {
    v8 = *(a2 + 13);
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294967125;
  }

  CMMThrowExceptionOnError(v9);
  v22 = &unk_1F0E071F8;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 1065353216;
  v26 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  if (v8 == 1482250784)
  {
    v11 = v25 + 8;
    DWORD1(v23) = 0x20000;
  }

  else
  {
    if (v8 != 1347182946)
    {
      goto LABEL_16;
    }

    v11 = v25 + 4;
    LODWORD(v23) = 0x10000;
  }

  *v11 = 1065353216;
  CMMMatrix::MakeMatrixConv(&v22, this[1], this[3], v10);
  this[3] = v12;
  if (!this[2])
  {
    this[2] = v12;
  }

LABEL_16:
  v20 = 0;
  v21 = 0;
  memset(v19, 0, sizeof(v19));
  LODWORD(v19[0]) = 1;
  v13 = (*(*v7 + 72))(v7, v19, this[1], &v21, 1.0);
  v14 = (*(*v7 + 40))(v7);
  v17 = CMMBase::NewInternal(0xB0, this[1], v15, v16);
  result = CMMConvInvertedTRC::CMMConvInvertedTRC(v17, 0, v13, v14, v21, v19, this[3], 1, a3 ^ 1u);
  this[3] = result;
  if (!this[2])
  {
    this[2] = result;
  }

  return result;
}

float *CMMMatrix::InitializeGrayMatrix(float *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  result[26] = *(a2 + 104) * *(a3 + 104);
  v4 = result + 2;
  v5 = result + 11;
  do
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if (v3)
      {
        v4[3 * v3 + v6] = 0.0;
        v5[3 * v3 + v6] = 0.0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0.0;
        result = (a3 + 44);
        do
        {
          v9 += *(v7 + v8 + 8) * *(result - 9);
          v11 = *result++;
          v10 = v10 + (v11 * *(v7 + v8 + 44));
          v8 += 12;
        }

        while (v8 != 36);
        LODWORD(v4[v6]) = (v9 + 0x8000) >> 16;
        v5[v6] = v10;
      }

      ++v6;
      v7 += 4;
    }

    while (v6 != 3);
    ++v3;
  }

  while (v3 != 3);
  return result;
}

unint64_t ConversionManager::GetMaxNofChannels(void *a1)
{
  v2 = 0;
  do
  {
    v3 = (*(*a1 + 176))(a1);
    if (v2 <= v3)
    {
      v2 = v3;
    }

    a1 = a1[2];
  }

  while (a1);
  if (v2 >= 0xF)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return v2;
}

const __CFDictionary *ConversionManager::exrToneMappingGammaIsRequested(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, @"com.apple.cmm.ApplyToneMaping");
    if (this)
    {
      v2 = this;
      v3 = CFGetTypeID(this);
      if (v3 == CFDictionaryGetTypeID())
      {
        this = CFDictionaryGetValue(v2, @"com.apple.cmm.ApplyEXRToneMappingGamma");
        if (this)
        {
          v4 = CFGetTypeID(this);
          return (v4 == CFDictionaryGetTypeID());
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void CMMProfileInfoContainer::~CMMProfileInfoContainer(CMMProfileInfoContainer *this)
{
  CMMProfileInfoContainer::~CMMProfileInfoContainer(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E08560;
  v2 = (this + 8);
  v3 = *(this + 1);
  v4 = *(this + 2);
  while (v3 != v4)
  {
    v5 = *(v3 + 8);
    v6 = v5[2] - 1;
    v5[2] = v6;
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      (*(*v5 + 8))(v5);
      v4 = *(this + 2);
    }

    v3 += 40;
  }

  v8 = v2;
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void ConversionManager::~ConversionManager(ConversionManager *this)
{
  *this = &unk_1F0E09FB0;
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  ConversionManager::~ConversionManager(this);

  CMMBase::operator delete(v1);
}

void CMMConvInvertedTRC::~CMMConvInvertedTRC(CMMConvInvertedTRC *this)
{
  *this = &unk_1F0E06EB0;
  v2 = *(this + 21);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  CMMConvTRC::~CMMConvTRC(this);
}

{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMConvTRC::SetNOP(uint64_t this)
{
  *(this + 160) = 1;
  *(this + 32) = 1;
  return this;
}

void CMMConvTRC::~CMMConvTRC(CMMConvTRC *this)
{
  *this = &unk_1F0E06B40;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  if (!*(this + 22))
  {
    v5 = *(this + 13);
    if (!v5)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

    v6 = v5[1];
    if (v6)
    {
      v7 = v6 - 1;
      v5[1] = v7;
      if (!v7)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }
}

{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void ConversionManager::AddGrayConv(ConversionManager *this, CMMProfile *a2, int a3, const __CFDictionary *a4)
{
  Tag = CMMProfile::GetTag(a2, 1800688195);
  if (Tag)
  {
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 13) == 1281450528)
  {
    v10 = 1347182946;
  }

  else
  {
    v10 = *(a2 + 13);
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294967125;
  }

  CMMThrowExceptionOnError(v11);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  LODWORD(v40[0]) = 1;
  v12 = (*(*v9 + 64))(v9, v40, *(this + 1), v10 != 1482250784, 1.0);
  v13 = (*(*v9 + 40))(v9);
  v16 = CMMBase::NewInternal(0xA8, *(this + 1), v14, v15);
  v17 = CMMConvTRC::CMMConvTRC(v16, 0, v12, v13, v40, *(this + 3), 1, 1, 1.0, 1, a3 ^ 1u);
  *(this + 3) = v17;
  if (*(this + 2))
  {
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 2) = v17;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (ConversionManager::exrToneMappingGammaIsRequested(a4, v18))
  {
    ConversionManager::AddEXRToneMapping(this, a4, 1);
  }

LABEL_16:
  v31 = &unk_1F0E071F8;
  v39[0] = 0;
  v37 = 0;
  v38 = 0;
  v39[1] = 1065353216;
  v36 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (v10 == 1347182946)
  {
    v20 = v39 + 1;
    v21 = v39;
    v22 = &v38;
    v23 = &v37 + 4;
    v24 = 0.5;
    v25 = 1.0;
    v26 = 8421504;
    v27 = 0x10000;
    v28 = 0.5;
    v29 = 8421504;
  }

  else
  {
    if (v10 != 1482250784)
    {
      return;
    }

    v20 = &v35 + 3;
    v21 = &v35;
    v22 = &v33 + 2;
    v23 = &v32 + 12;
    v24 = 1.0;
    v29 = 27030;
    v26 = 0x8000;
    v28 = 0.8249;
    v25 = 0.9642;
    v27 = 31595;
  }

  LODWORD(v32) = v27;
  *v23 = v26;
  *v22 = v29;
  *(&v34 + 1) = v25;
  *v21 = v24;
  *v20 = v28;
  CMMMatrix::MakeMatrixConv(&v31, *(this + 1), *(this + 3), v19);
  *(this + 3) = v30;
}

CMMConvNode *ConversionManager::MakeConversionSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v441 = v6;
  v487 = *MEMORY[0x1E69E9840];
  memset(v471, 0, sizeof(v471));
  v467[0] = &unk_1F0E09700;
  memset(&v467[1], 0, 40);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16) - v7;
  if (!v8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v9 = v5;
  v10 = v3;
  v11 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v445 = v4;
  if (*(v7 + 34))
  {
    v13 = 0;
    v14 = (v7 + 74);
    while (v12 - 1 != v13)
    {
      v15 = *v14;
      v14 += 40;
      ++v13;
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = v12;
LABEL_12:
    v16 = v13 < v11;
  }

  else
  {
    v16 = 1;
  }

  v442 = v16;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  HDRMediaReferenceWhite = ColorSyncOptionsGetHDRMediaReferenceWhite(v5);
  v18 = ColorSyncOptionsLegacyHDREcosystemRequested(v9);
  v19 = 100.0;
  v20 = HDRMediaReferenceWhite == 100.0 || v18;
  *(v10 + 61) = v20;
  if (!v18)
  {
    v19 = HDRMediaReferenceWhite;
  }

  v462 = (v10 + 16);
  *(v10 + 64) = v19;
  theDict = v9;
  v465 = v10;
  if (v9)
  {
    v21 = CFGetTypeID(v9);
    v41 = v21 == CFDictionaryGetTypeID();
    v9 = theDict;
    if (v41)
    {
      v9 = theDict;
      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite"))
      {
        if (ColorSyncOptionsGetHDRMediaReferenceWhite(theDict) == 203.0)
        {
          *(v10 + 64) = 1128988672;
          *(v10 + 61) = 0;
        }
      }
    }
  }

  if (ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(v9))
  {
    *(v10 + 64) = 1128988672;
    *(v10 + 61) = 0;
  }

  v22 = v445;
  if (ColorSyncOptionsDisplayReferredToneMappingRequested(v9))
  {
    *(v10 + 64) = 1128988672;
    *(v10 + 61) = 0;
  }

  v24 = *(v445 + 8);
  v23 = *(v445 + 16);
  if (v24 == v23)
  {
    goto LABEL_543;
  }

  v456 = 0;
  v25 = 0;
  v440 = *MEMORY[0x1E695E4D0];
  v457 = -1;
  v26 = 1.0;
  v439 = vneg_f32(0x8080808080808080);
  do
  {
    v27 = v457;
    v28 = v456;
    v456 = *(v24 + 8);
    v457 = *(v24 + 16);
    v446 = *(v24 + 20);
    v452 = v24;
    v453 = *(v22 + 8);
    v466 = 0;
    v443 = *(v24 + 33);
    if (*v462)
    {
      goto LABEL_61;
    }

    v29 = v456[2];
    FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(v29, theDict);
    if (FlexTRCOptions)
    {
      FlexTRCOptions = ColorSyncProfileCopyFlexGTCInfo(v29);
      if (FlexTRCOptions)
      {
        v31 = FlexTRCOptions;
        CICPInfo = ColorSyncProfileGetCICPInfo(v29);
        if (CICPInfo)
        {
          v33 = *CICPInfo;
          Value = CFDictionaryGetValue(v31, kColorSyncPreGainMapCICP);
          if (Value && (v35 = Value, v36 = CFGetTypeID(Value), v36 == CFNumberGetTypeID()))
          {
            LODWORD(valuePtr[0]) = 0;
            if (CFNumberGetValue(v35, kCFNumberSInt32Type, valuePtr) == 1)
            {
              v37 = LOBYTE(valuePtr[0]);
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }

          v38 = CFDictionaryGetValue(v31, kColorSyncPostGainMapCICP);
          v39 = v38;
          if (v38)
          {
            v40 = CFGetTypeID(v38);
            if (v40 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr[0]) = 0;
              if (CFNumberGetValue(v39, kCFNumberSInt32Type, valuePtr) == 1)
              {
                LOBYTE(v39) = valuePtr[0];
              }

              else
              {
                LOBYTE(v39) = 0;
              }
            }

            else
            {
              LOBYTE(v39) = 0;
            }
          }

          CFRelease(v31);
          v41 = v33 != v37 || v33 == v39;
          if ((v41 || v39 == 0) && v33 == v37)
          {
            FlexTRCOptions = 0;
          }

          else
          {
            FlexTRCOptions = ColorSyncProfileCopyFlexGTCInfo(v29);
          }

          v10 = v465;
          v24 = v452;
        }

        else
        {
          CFRelease(v31);
          FlexTRCOptions = 0;
        }
      }
    }

    v44 = *(v10 + 16);
    *(v10 + 72) = FlexTRCOptions;
    if (v44)
    {
LABEL_61:
      v45 = *(v10 + 80);
    }

    else
    {
      v243 = v456[2];
      if (ColorSyncOptionsGetFlexLumaScalingOptions(v243, theDict) || (v45 = ColorSyncOptionsGetFlexTRCOptions(v243, theDict)) != 0)
      {
        v45 = ColorSyncProfileCopyFlexGTCInfo(v243);
      }
    }

    *(v10 + 80) = v45;
    if (!*(v10 + 16) && *(v10 + 72) | v45)
    {
      *(v10 + 64) = 1128988672;
      *(v10 + 61) = 0;
    }

    v46 = ColorSyncProfileGetCICPInfo(v456[2]);
    if (v46)
    {
      v47 = *v46;
    }

    else
    {
      v47 = 0;
    }

    v450 = v23 - 40;
    *(v10 + 88) = v47;
    *(v10 + 40) = *(v24 + 34);
    *(v465 + 8) = (*(*v456 + 6))(v456, v457);
    v48 = (*(*v456 + 7))(v456, v457, &v466);
    v49 = v465;
    *(v465 + 9) = v48;
    v50 = v452;
    *(v465 + 45) = *(v452 + 27);
    *(v465 + 41) = *(v452 + 29);
    *(v465 + 57) = *(v452 + 35);
    if (v24 == v23 - 40)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = *(v452 + 69);
      v52 = *(v452 + 70);
    }

    v53 = v23 - 40;
    *(v465 + 47) = v51;
    *(v465 + 48) = v52 & 1;
    if (v452 == v453)
    {
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = *(v452 - 11);
      v55 = *(v452 - 10);
    }

    *(v465 + 52) = v54;
    *(v465 + 53) = v55 & 1;
    if (v452 == v450)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(v452 + 68);
    }

    *(v465 + 50) = v56 & 1;
    if (v452 == v453)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(v452 - 12);
    }

    *(v465 + 55) = v57 & 1;
    if (v452 == v450)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(v452 + 67);
    }

    *(v465 + 49) = v58 & 1;
    if (v452 == v453)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(v452 - 13);
    }

    *(v465 + 54) = v59 & 1;
    if (v452 == v450)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(v452 + 74);
    }

    *(v465 + 51) = v60 & 1;
    if (v452 == v453)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(v452 - 6);
    }

    *(v465 + 56) = v61 & 1;
    if (v457 == 4)
    {
      v449 = 0;
    }

    else
    {
      v449 = (*(*v456 + 9))(v456, v28, v27);
      v49 = v465;
      v50 = v452;
      v53 = v23 - 40;
    }

    if (v50 != v453)
    {
      v62 = *(v49 + 8);
      if (v25 == 1347182946)
      {
        v63 = 1145856354;
      }

      else
      {
        v63 = v25;
      }

      if (v62 == 1347182946)
      {
        v62 = 1145856354;
      }

      if (v63 != v62)
      {
        v431 = __cxa_allocate_exception(4uLL);
        *v431 = -178;
      }
    }

    if (v50 == v53)
    {
      v444 = 0;
    }

    else
    {
      v444 = (*(**(v50 + 48) + 48))(*(v50 + 48), *(v50 + 56));
    }

    if ((*(*v456 + 13))(v456) && (*(*v456 + 5))(v456, v471, v467, theDict))
    {
      LuminanceCoefficients = ColorSyncProfileGetLuminanceCoefficients(v456[2]);
      if (LuminanceCoefficients)
      {
        v65 = 0;
      }

      else
      {
        v65 = 4294967126;
      }

      CMMThrowExceptionOnError(v65);
      v67 = *LuminanceCoefficients;
      v66 = *(LuminanceCoefficients + 1);
      v69 = *(LuminanceCoefficients + 2);
      v68 = *(LuminanceCoefficients + 3);
      if (v457 > 8)
      {
        v10 = v465;
        if (v457 <= 12)
        {
          if (v457 != 9)
          {
            if (v457 == 10)
            {
              valuePtr[0] = xmmword_19A96E310;
              *&valuePtr[1] = 0;
              *(&valuePtr[1] + 1) = __PAIR64__(v66, v67);
              *&valuePtr[2] = __PAIR64__(v68, v69);
              memset(&valuePtr[2] + 8, 0, 72);
              ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 10, valuePtr, theDict);
              v10 = v465;
              if (v452 != v450)
              {
                goto LABEL_365;
              }
            }

            goto LABEL_290;
          }

          valuePtr[0] = xmmword_19A96E310;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 1) = __PAIR64__(v66, v67);
          *&valuePtr[2] = __PAIR64__(v68, v69);
          memset(&valuePtr[2] + 8, 0, 72);
          ConversionManager::AddMatrixConv(v465, v471, v467, *(v465 + 40), 9, valuePtr, theDict);
          goto LABEL_289;
        }

        if (v457 == 13)
        {
          ConversionManager::AddMatrixConv(v465, v471, v467, *(v465 + 40), 13, 0, theDict);
          goto LABEL_289;
        }

        if (v457 == 14)
        {
          ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 14, 0, theDict);
          v10 = v465;
          if (v452 != v450)
          {
LABEL_365:
            ConversionManager::AddLinearMatrixConv(v465, v471);
            v10 = v465;
            *(v465 + 9) = 1482250784;
            goto LABEL_290;
          }
        }

        goto LABEL_290;
      }

      v10 = v465;
      if (v457 != 1)
      {
        if (v457 != 2)
        {
          if (v457 == 3)
          {
            goto LABEL_325;
          }

          goto LABEL_290;
        }

        valuePtr[0] = xmmword_19A96E310;
        *&valuePtr[1] = 0;
        *(&valuePtr[1] + 1) = __PAIR64__(v66, v67);
        *&valuePtr[2] = __PAIR64__(v68, v69);
        memset(&valuePtr[2] + 8, 0, 72);
        ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 2, valuePtr, theDict);
        goto LABEL_289;
      }

      v296 = theDict;
      v297 = v452 != v450 && *(v465 + 51) == 0;
      v298 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDict);
      FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(v456[2], theDict);
      v300 = ColorSyncOptionsGetFlexTRCOptions(v456[2], theDict);
      if (v300 && !*(v465 + 10))
      {
        v437 = __cxa_allocate_exception(4uLL);
        *v437 = -171;
      }

      if (FlexLumaScalingOptions && !*(v465 + 10))
      {
        v438 = __cxa_allocate_exception(4uLL);
        *v438 = -171;
      }

      if (theDict)
      {
        v301 = FlexLumaScalingOptions != 0;
        v302 = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMappingForBT2100");
        v303 = CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipToneMappingForBT2100") != v440;
        v298 |= v302 == v440 || v301;
        v296 = theDict;
        v304 = ColorSyncOptionsDisplayReferredToneMappingRequested(theDict);
        v305 = v303 | v304;
        v10 = v465;
      }

      else
      {
        v304 = 0;
        if (FlexLumaScalingOptions)
        {
          v298 = 1;
        }

        v305 = 1;
      }

      if (((*(v10 + 41) & 1) != 0 || *(v10 + 46) == 1) && (v297 | (v300 != 0) | v298 & 1 || *(v10 + 48) == 1))
      {
        if (v305)
        {
LABEL_410:
          valuePtr[0] = xmmword_19A96E350;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 1) = __PAIR64__(v66, v67);
          *&valuePtr[2] = __PAIR64__(v68, v69);
          memset(&valuePtr[2] + 8, 0, 72);
          if (*(v10 + 48) == 1)
          {
            DWORD2(valuePtr[0]) = 1148846080;
          }

          ConversionManager::AddMatrixConv(v10, v471, v467, *(v10 + 40), 1, valuePtr, v296);
          goto LABEL_289;
        }
      }

      else if (v304)
      {
        goto LABEL_410;
      }

      if (*(v10 + 42) == 1)
      {
        valuePtr[0] = xmmword_19A96E340;
        *&valuePtr[1] = 0;
        *(&valuePtr[1] + 1) = __PAIR64__(v66, v67);
        *&valuePtr[2] = __PAIR64__(v68, v69);
        memset(&valuePtr[2] + 8, 0, 72);
        ConversionManager::AddMatrixConv(v10, v471, v467, *(v10 + 40), 1, valuePtr, v296);
      }

      else
      {
        ConversionManager::AddMatrixConv(v10, v471, v467, *(v10 + 40), 1, 0, v296);
      }

      goto LABEL_289;
    }

    if (((v457 == 2) & v449) == 0)
    {
      v70 = (*(*v456 + 4))(v456, v457, v446);
      v454 = v70;
      if (v70)
      {
        v71 = *(v70 + 8);
        v10 = v465;
        if (v71 == *(v70 + 16))
        {
          goto LABEL_290;
        }

        while (1)
        {
          v455 = v71;
          v72 = (*(*v456 + 11))(v456, v71[2]);
          if (v72)
          {
          }

          else
          {
            v73 = 0;
          }

          v74 = (*(*v456 + 11))(v456, v455[2]);
          if (v74)
          {
            v76 = v465;
            v77 = v455;
            if (!v73)
            {
              v78 = v75;
              if (!v75)
              {
                goto LABEL_592;
              }

              v79 = v455[3];
              v458 = v455[4];
              v80 = *(v465 + 40);
              HasCLUT = CMMLutTag::HasCLUT(v75);
              v81 = CMMLutTag::HasCLUT(v78);
              v82 = (*(*v78 + 48))(v78);
              v83 = v82;
              v448 = v82;
              if (v82 >= 0x10uLL || v82 == 0)
              {
                v85 = 4294967126;
              }

              else
              {
                v85 = 0;
              }

              CMMThrowExceptionOnError(v85);
              v86 = (*(*v78 + 56))(v78);
              v87 = v86;
              v447 = v86;
              if (v86 >= 0x10uLL || v86 == 0)
              {
                v89 = 4294967126;
              }

              else
              {
                v89 = 0;
              }

              CMMThrowExceptionOnError(v89);
              memset(v477, 0, sizeof(v477));
              v478 = 0;
              LODWORD(v477[0]) = 1;
              if (v79 == 1482250784)
              {
                if (v457 == 1)
                {
                  v92 = v80 ^ 1;
                }

                else
                {
                  v92 = 0;
                }

                if (v457 == 1)
                {
                  v80 = 1;
                }

                ConversionManager::AddScalingDownFloatXYZ(v465, v92, v90, v91);
              }

              v460 = !v81;
              if (v457 == 1)
              {
                v93 = v80 ^ 1;
              }

              else
              {
                v93 = 0;
              }

              v94 = v465;
              if (v83)
              {
                v95 = 0;
                do
                {
                  v96 = (*(*v78 + 96))(v78, v95, v477, *(v94 + 1), v79);
                  if (v96)
                  {
                    v97 = (*(*v78 + 80))(v78, v95);
                    v100 = CMMBase::NewInternal(0xA8, *(v465 + 1), v98, v99);
                    v101 = CMMConvTRC::CMMConvTRC(v100, v95, v96, v97, v477, *(v465 + 3), v83, !HasCLUT, 1.0, v460, v93);
                    *(v465 + 3) = v101;
                    v80 |= v93;
                    v94 = v465;
                    if (!*(v465 + 2))
                    {
                      *v462 = v101;
                    }
                  }

                  else
                  {
                    v94 = v465;
                  }

                  v95 = (v95 + 1);
                }

                while (v83 != v95);
              }

              v102 = (*(*v78 + 104))(v78);
              if (v102)
              {
                memset(valuePtr, 0, 112);
                CMMMatrix::CMMMatrix(valuePtr, v102, 1.0);
                CMMMatrix::MakeMatrixConv(valuePtr, *(v465 + 1), *(v465 + 3), v103);
                *(v465 + 3) = v104;
                if (!((v457 != 1) | v80 & 1))
                {
                  (*(*v104 + 24))(v104);
                  v80 = 1;
                }

                v105 = v465;
                if (!*v462)
                {
                  *(v465 + 2) = *(v465 + 3);
                }
              }

              else
              {
                v105 = v465;
              }

              if (v83)
              {
                v154 = 0;
                v155 = (v457 == 1) & (v80 ^ 1);
                do
                {
                  v156 = (*(*v78 + 112))(v78, v154, v477, *(v105 + 1), v79);
                  if (v156)
                  {
                    v157 = (*(*v78 + 144))(v78, v154);
                    v160 = CMMBase::NewInternal(0xA8, *(v465 + 1), v158, v159);
                    v161 = CMMConvTRC::CMMConvTRC(v160, v154, v156, v157, v477, *(v465 + 3), v83, !HasCLUT, 1.0, v460, v155);
                    *(v465 + 3) = v161;
                    v80 |= v155;
                    v105 = v465;
                    if (!*(v465 + 2))
                    {
                      *v462 = v161;
                    }
                  }

                  else
                  {
                    v105 = v465;
                  }

                  v154 = (v154 + 1);
                }

                while (v83 != v154);
              }

              if (CMMLutTag::HasCLUT(v78))
              {
                ConversionManager::AddCLUTConv(v465, v78, v448, v447);
                v162 = v465;
                v163 = *(v465 + 3);
                v164 = v457 != 1;
                if (!v163)
                {
                  v164 = 1;
                }

                if (((v164 | v80) & 1) == 0)
                {
                  (*(*v163 + 24))(v163);
                  LOBYTE(v80) = 1;
                  goto LABEL_233;
                }
              }

              else
              {
LABEL_233:
                v162 = v465;
              }

              if (v87)
              {
                v165 = 0;
                v166 = (v457 == 1) & (v80 ^ 1);
                do
                {
                  v167 = (*(*v78 + 120))(v78, v165, v477, *(v162 + 1), v458);
                  if (v167)
                  {
                    v168 = (*(*v78 + 152))(v78, v165);
                    v171 = CMMBase::NewInternal(0xA8, *(v465 + 1), v169, v170);
                    v172 = CMMConvTRC::CMMConvTRC(v171, v165, v167, v168, v477, *(v465 + 3), v87, !HasCLUT, 1.0, v460, v166);
                    *(v465 + 3) = v172;
                    LOBYTE(v80) = v166 | v80;
                    v162 = v465;
                    if (!*(v465 + 2))
                    {
                      *v462 = v172;
                    }
                  }

                  else
                  {
                    v162 = v465;
                  }

                  v165 = (v165 + 1);
                }

                while (v87 != v165);
              }

              v173 = (*(*v78 + 128))(v78);
              if (v173)
              {
                memset(valuePtr, 0, 112);
                CMMMatrix::CMMMatrix(valuePtr, v173, 1.0);
                CMMMatrix::MakeMatrixConv(valuePtr, *(v465 + 1), *(v465 + 3), v176);
                *(v465 + 3) = v177;
                if (!((v457 != 1) | v80 & 1))
                {
                  (*(*v177 + 24))(v177);
                  LOBYTE(v80) = 1;
                }

                v10 = v465;
                if (!*v462)
                {
                  *(v465 + 2) = *(v465 + 3);
                }
              }

              else
              {
                v10 = v465;
              }

              if (v87)
              {
                v178 = 0;
                v179 = (v457 == 1) & (v80 ^ 1);
                do
                {
                  v180 = (*(*v78 + 136))(v78, v178, v477, *(v10 + 8), v458);
                  if (v180)
                  {
                    v181 = (*(*v78 + 88))(v78, v178);
                    v184 = CMMBase::NewInternal(0xA8, *(v465 + 1), v182, v183);
                    v185 = CMMConvTRC::CMMConvTRC(v184, v178, v180, v181, v477, *(v465 + 3), v87, !HasCLUT, 1.0, v460, v179);
                    *(v465 + 3) = v185;
                    LOBYTE(v80) = v179 | v80;
                    v10 = v465;
                    if (!*(v465 + 2))
                    {
                      *v462 = v185;
                    }
                  }

                  else
                  {
                    v10 = v465;
                  }

                  v178 = (v178 + 1);
                }

                while (v87 != v178);
              }

              if (v458 == 1482250784)
              {
                ConversionManager::AddScalingUpFloatXYZ(v10, v173, v174, v175);
                v10 = v465;
              }

              if ((v457 != 2) | v80 & 1)
              {
                goto LABEL_258;
              }

              goto LABEL_257;
            }
          }

          else
          {
            v76 = v465;
            v77 = v455;
            if (!v73)
            {
LABEL_592:
              v430 = __cxa_allocate_exception(4uLL);
              *v430 = -171;
            }
          }

          v106 = v77[3];
          v464 = v77[4];
          v107 = *(v76 + 40);
          v108 = (*(*v73 + 48))(v73);
          v109 = v108;
          v461 = v108;
          if (v108 >= 0x10uLL || v108 == 0)
          {
            v111 = 4294967126;
          }

          else
          {
            v111 = 0;
          }

          CMMThrowExceptionOnError(v111);
          v112 = (*(*v73 + 56))(v73);
          v113 = v112;
          v459 = v112;
          if (v112 >= 0x10uLL || v112 == 0)
          {
            v115 = 4294967126;
          }

          else
          {
            v115 = 0;
          }

          CMMThrowExceptionOnError(v115);
          v118 = v465;
          if (v106 == 1482250784)
          {
            if (v457 == 1)
            {
              v119 = v107 ^ 1;
            }

            else
            {
              v119 = 0;
            }

            if (v457 == 1)
            {
              v107 = 1;
            }

            ConversionManager::AddScalingDownFloatXYZ(v465, v119, v116, v117);
            if ((*(*v73 + 160))(v73))
            {
              v118 = v465;
            }

            else
            {
              v120 = 0;
              *(&valuePtr[6] + 1) = 1065353216;
              *&valuePtr[0] = &unk_1F0E071F8;
              v121 = &valuePtr[2] + 3;
              memset(valuePtr + 8, 0, 96);
              do
              {
                v122 = -3;
                v123 = v121;
                do
                {
                  v124 = (*(*v73 + 168))(v73, v120, (v122 + 3));
                  *(v123 - 9) = v124;
                  v126 = vcvtd_n_f64_s32(v124, 0x10uLL);
                  *v123++ = v126;
                  v127 = __CFADD__(v122++, 1);
                }

                while (!v127);
                ++v120;
                v121 += 3;
              }

              while (v120 != 3);
              CMMMatrix::MakeMatrixConv(valuePtr, *(v465 + 1), *(v465 + 3), v125);
              *(v465 + 3) = v128;
              v118 = v465;
              if (!*(v465 + 2))
              {
                *v462 = v128;
              }
            }
          }

          if (v457 == 1)
          {
            v129 = v107 ^ 1;
          }

          else
          {
            v129 = 0;
          }

          if (v109)
          {
            v130 = 0;
            do
            {
              memset(valuePtr, 0, 56);
              LODWORD(valuePtr[0]) = 1;
              v131 = (*(*v73 + 112))(v73, v130, valuePtr, *(v118 + 1), v106);
              v132 = (*(*v73 + 80))(v73, v130);
              v135 = CMMBase::NewInternal(0xA8, *(v118 + 1), v133, v134);
              v136 = CMMConvTRC::CMMConvTRC(v135, v130, v131, v132, valuePtr, *(v465 + 3), v109, 1, 1.0, 1, v129);
              *(v465 + 3) = v136;
              v118 = v465;
              if (!*(v465 + 2))
              {
                *v462 = v136;
              }

              v107 |= v129;
              v130 = (v130 + 1);
            }

            while (v109 != v130);
            v139 = v457 == 1 && v109 == 3;
            if (v139 & v107)
            {
              if (ConversionManager::exrToneMappingGammaIsRequested(theDict, v137))
              {
                ConversionManager::AddEXRToneMapping(v465, theDict, 3);
              }

              v107 = 1;
            }
          }

          if (!(*(*v73 + 192))(v73))
          {
            goto LABEL_210;
          }

          ConversionManager::AddCLUTConv(v465, v73, v461, v459);
          v10 = v465;
          v143 = *(v465 + 3);
          v144 = v457 != 1;
          if (!v143)
          {
            v144 = 1;
          }

          if (((v144 | v107) & 1) == 0)
          {
            break;
          }

LABEL_211:
          if (v113)
          {
            v145 = 0;
            v146 = (v457 == 1) & (v107 ^ 1);
            do
            {
              memset(valuePtr, 0, 56);
              LODWORD(valuePtr[0]) = 1;
              v147 = (*(*v73 + 120))(v73, v145, valuePtr, *(v10 + 8), v464);
              v148 = (*(*v73 + 88))(v73, v145);
              v151 = CMMBase::NewInternal(0xA8, *(v10 + 8), v149, v150);
              v152 = CMMConvTRC::CMMConvTRC(v151, v145, v147, v148, valuePtr, *(v465 + 3), v113, 1, 1.0, 1, v146);
              *(v465 + 3) = v152;
              v10 = v465;
              if (!*(v465 + 2))
              {
                *v462 = v152;
              }

              LOBYTE(v107) = v146 | v107;
              v145 = (v145 + 1);
            }

            while (v113 != v145);
          }

          if (v464 == 1482250784)
          {
            ConversionManager::AddScalingUpFloatXYZ(v10, v140, v141, v142);
            v10 = v465;
          }

          v153 = v454;
          if ((v457 != 2) | v107 & 1)
          {
            goto LABEL_259;
          }

LABEL_257:
          (*(**(v10 + 24) + 48))(*(v10 + 24));
          v10 = v465;
LABEL_258:
          v153 = v454;
LABEL_259:
          v71 = v455 + 6;
          if (v455 + 6 == *(v153 + 16))
          {
            goto LABEL_290;
          }
        }

        (*(*v143 + 24))(v143);
        LOBYTE(v107) = 1;
LABEL_210:
        v10 = v465;
        goto LABEL_211;
      }
    }

    if (!(*(*v456 + 12))(v456))
    {
      v224 = (*(*v456 + 5))(v456, v471, v467, 0);
      if (v457 == 1)
      {
        v225 = v224;
      }

      else
      {
        v225 = 0;
      }

      if (v225 == 1)
      {
        ConversionManager::AddMatrixConv(v465, v471, v467, *(v465 + 40), 1, 0, theDict);
      }

      else
      {
        v244 = theDict;
        v245 = v465;
        if ((v457 != 2 || (v224 & 1) == 0) | v449 & 1)
        {
          if (v457 == 3)
          {
            v246 = v224;
          }

          else
          {
            v246 = 0;
          }

          if (v246 == 1)
          {
LABEL_325:
            ConversionManager::AddMatrixConvPCSToPCS(v465, v471, v467, *(v465 + 40), theDict);
          }

          else
          {
            v295 = *(v456 + 12);
            if ((v295 - 1296255029) < 4 || v295 == 1281450528)
            {
LABEL_594:
              v432 = __cxa_allocate_exception(4uLL);
              *v432 = -171;
            }

            if (v295 == 1196573017 && v457 == 1)
            {
              ConversionManager::AddGrayConv(v465, v456, *(v465 + 40), theDict);
            }

            else if (v457 == 2 && v295 == 1196573017)
            {
              ConversionManager::AddInvGrayConv(v465, v456, *(v465 + 40));
            }

            else
            {
              if (v295 != 1196573017 || v457 != 3)
              {
                goto LABEL_594;
              }

              v354 = *(v456 + 13);
              if (v354 == 1347182946 || v354 == 1281450528)
              {
                v355 = *(v465 + 40);
                ConversionManager::AddInvGrayConv(v465, v456, *(v465 + 40));
                ConversionManager::AddGrayConv(v465, v456, v355, 0);
              }

              else
              {
                *(&valuePtr[6] + 1) = 1065353216;
                *&valuePtr[0] = &unk_1F0E071F8;
                memset(valuePtr + 8, 0, 96);
                ConversionManager::AddXYZToLab(v465);
                DWORD2(valuePtr[0]) = 0x10000;
                HIDWORD(valuePtr[2]) = 1065353216;
                CMMMatrix::MakeMatrixConv(valuePtr, *(v465 + 1), *(v465 + 3), v356);
                *(v465 + 3) = v357;
                DWORD2(valuePtr[0]) = 0x10000;
                *(&valuePtr[5] + 4) = v439;
                HIDWORD(valuePtr[2]) = 1065353216;
                *&valuePtr[6] = 0x3F0000003F000000;
                CMMMatrix::MakeMatrixConv(valuePtr, *(v465 + 1), v357, v358);
                *(v465 + 3) = v359;
                ConversionManager::AddLabToXYZ(v465);
              }
            }
          }
        }

        else
        {
          if (v28 && (v289 = (*(*v28 + 13))(v28), v244 = theDict, v245 = v465, v289))
          {
            v290 = ColorSyncProfileGetLuminanceCoefficients(v456[2]);
            if (v290)
            {
              v291 = 0;
            }

            else
            {
              v291 = 4294967126;
            }
          }

          else
          {
            if (!v244)
            {
              ConversionManager::AddInvMatrixConv(v245, v471, v467, *(v245 + 40), 2, 0, 0);
              goto LABEL_289;
            }

            if (CFDictionaryGetValue(v244, @"com.apple.cmm.ApplyYCCGammaScaling") == v440)
            {
              RGBtoYCCMatrix = ColorSyncProfileGetRGBtoYCCMatrix(v456[2]);
              YCCtoRGBMatrix = ColorSyncProfileGetYCCtoRGBMatrix(v456[2]);
              if (YCCtoRGBMatrix)
              {
                v308 = RGBtoYCCMatrix == 0;
              }

              else
              {
                v308 = 1;
              }

              if (v308)
              {
                v309 = 4294967126;
              }

              else
              {
                v309 = 0;
              }

              CMMThrowExceptionOnError(v309);
              *(&valuePtr[6] + 1) = 0;
              *(&valuePtr[5] + 8) = 0u;
              *(&valuePtr[4] + 8) = 0u;
              *(&valuePtr[3] + 8) = 0u;
              *(&valuePtr[2] + 8) = 0u;
              *&valuePtr[0] = 1120403456;
              DWORD2(valuePtr[0]) = 1120403456;
              memset(valuePtr + 12, 0, 28);
              v310 = *RGBtoYCCMatrix;
              v311 = *(RGBtoYCCMatrix + 1);
              *(&valuePtr[4] + 2) = RGBtoYCCMatrix[8];
              *(&valuePtr[3] + 8) = v311;
              *(&valuePtr[2] + 8) = v310;
              v312 = *YCCtoRGBMatrix;
              v313 = *(YCCtoRGBMatrix + 1);
              *(&valuePtr[6] + 3) = YCCtoRGBMatrix[8];
              *(&valuePtr[5] + 12) = v313;
              *(&valuePtr[4] + 12) = v312;
              ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 2, valuePtr, theDict);
              goto LABEL_289;
            }

            if (CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyLuminanceScaling") != v440)
            {
              ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 2, 0, theDict);
              goto LABEL_289;
            }

            v290 = ColorSyncProfileGetLuminanceCoefficients(v456[2]);
            if (v290)
            {
              v291 = 0;
            }

            else
            {
              v291 = 4294967126;
            }
          }

          CMMThrowExceptionOnError(v291);
          v292 = *v290;
          valuePtr[0] = xmmword_19A96E310;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 8) = v292;
          memset(&valuePtr[2] + 8, 0, 72);
          ConversionManager::AddInvMatrixConv(v465, v471, v467, *(v465 + 40), 2, valuePtr, theDict);
        }
      }

LABEL_289:
      v10 = v465;
      goto LABEL_290;
    }

    if (v457 == 2)
    {
      pthread_mutex_lock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
      if (!legacyPCSToLabChanLTable)
      {
        *&valuePtr[0] = 0;
        CMMMemMgr::CMMMemMgr(valuePtr);
        v249 = CMMBase::NewInternal(0x5408, valuePtr, v247, v248);
        legacyPCSToLabChanLDataPtr = v249;
        v250 = v249 + 2;
        v251 = xmmword_19A96E040;
        v252 = 33425918;
        v253 = 50137853;
        v254 = 16713983;
        v255 = 4100;
        v256 = xmmword_19A96E050;
        v257 = 2048;
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v256)), *v251.i8).u8[0])
          {
            *(v250 - 2) = v257 >> 12;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v256)), *&v251).i8[2])
          {
            *(v250 - 1) = v254 >> 12;
          }

          if (vuzp1_s16(*&v251, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v251))).i32[1])
          {
            *v250 = v252 >> 12;
            v250[1] = v253 >> 12;
          }

          v258 = vdupq_n_s64(4uLL);
          v251 = vaddq_s64(v251, v258);
          v257 += 66847740;
          v254 += 66847740;
          v256 = vaddq_s64(v256, v258);
          v253 += 66847740;
          v252 += 66847740;
          v250 += 4;
          v255 -= 4;
        }

        while (v255);
        MakeLookups(v249);
        v261 = CMMBase::NewInternal(0x28, valuePtr, v259, v260);
        v262 = legacyPCSToLabChanLDataPtr;
        v261[2] = 0;
        v261[3] = v262;
        *v261 = &unk_1F0E09180;
        v261[1] = 0;
        v261[4] = 21512;
        legacyPCSToLabChanLTable = v261;
        v265 = CMMBase::NewInternal(0x5408, valuePtr, v263, v264);
        legacyPCSToLabChanAnBDataPtr = v265;
        v266 = v265 + 2;
        v267 = xmmword_19A96E040;
        v268 = 33425918;
        v269 = 50137853;
        v270 = 16713983;
        v271 = 4100;
        v272 = xmmword_19A96E050;
        v273 = 2048;
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v272)), *v267.i8).u8[0])
          {
            *(v266 - 2) = v273 >> 12;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v272)), *&v267).i8[2])
          {
            *(v266 - 1) = v270 >> 12;
          }

          if (vuzp1_s16(*&v267, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v267))).i32[1])
          {
            *v266 = v268 >> 12;
            v266[1] = v269 >> 12;
          }

          v274 = vdupq_n_s64(4uLL);
          v267 = vaddq_s64(v267, v274);
          v273 += 66847740;
          v270 += 66847740;
          v272 = vaddq_s64(v272, v274);
          v269 += 66847740;
          v268 += 66847740;
          v266 += 4;
          v271 -= 4;
        }

        while (v271);
        MakeLookups(v265);
        v277 = CMMBase::NewInternal(0x28, valuePtr, v275, v276);
        v278 = legacyPCSToLabChanAnBDataPtr;
        v277[2] = 0;
        v277[3] = v278;
        *v277 = &unk_1F0E09180;
        v277[1] = 0;
        v277[4] = 21512;
        legacyPCSToLabChanAnBTable = v277;
        CMMMemMgr::ReleaseMemList(valuePtr);
      }

      pthread_mutex_unlock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
      v222 = legacyPCSToLabChanLTable;
      v223 = legacyPCSToLabChanAnBTable;
      v10 = v465;
      if (legacyPCSToLabChanLTable)
      {
LABEL_352:
        if (v223)
        {
          *(&valuePtr[0] + 1) = 0;
          *&valuePtr[1] = 0;
          v279 = *(v222 + 8);
          if (v279)
          {
            *(v222 + 8) = v279 + 1;
          }

          *&valuePtr[0] = 1;
          HIDWORD(valuePtr[0]) = 3;
          *(&valuePtr[1] + 8) = xmmword_19A96E320;
          *(&valuePtr[2] + 8) = xmmword_19A96E330;
          v280 = CMMBase::NewInternal(0xA8, *(v10 + 8), v220, v221);
          v281 = CMMConvTRC::CMMConvTRC(v280, 0, v222, 21512, valuePtr, *(v465 + 3), 3, 1, 1.0, 0, 0);
          *(v465 + 3) = v281;
          v10 = v465;
          if (!*(v465 + 2))
          {
            *v462 = v281;
          }

          v284 = 0;
          v285 = 1;
          do
          {
            v286 = v284;
            v287 = *(v223 + 8);
            if (v287)
            {
              *(v223 + 8) = v287 + 1;
            }

            v288 = CMMBase::NewInternal(0xA8, *(v10 + 8), v282, v283);
            *(v465 + 3) = CMMConvTRC::CMMConvTRC(v288, v285, v223, 21512, valuePtr, *(v465 + 3), 3, 1, 1.0, 0, 0);
            v285 = 2;
            v284 = 1;
            v10 = v465;
          }

          while ((v286 & 1) == 0);
        }
      }
    }

    else
    {
      v10 = v465;
      if (v457 == 1)
      {
        pthread_mutex_lock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
        if (!legacyLabChanLToPCSTable)
        {
          *&valuePtr[0] = 0;
          CMMMemMgr::CMMMemMgr(valuePtr);
          v188 = CMMBase::NewInternal(0x5408, valuePtr, v186, v187);
          v189 = 0;
          legacyLabChanLToPCSDataPtr = v188;
          v190 = xmmword_19A96E040;
          v191 = v188 + 2;
          v192 = xmmword_19A96E050;
          do
          {
            v193.i64[0] = v189;
            v193.i64[1] = v189 + 4112;
            v194 = vdupq_n_s64(0x1000000uLL);
            v195 = vbslq_s8(vcgtq_u64(v194, v193), v193, v194);
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v192)), *v190.i8).u8[0])
            {
              *(v191 - 2) = v195.i32[0];
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v192)), *&v190).i8[2])
            {
              *(v191 - 1) = v195.i32[2];
            }

            v196.i64[0] = v189 + 8224;
            v196.i64[1] = v189 + 12336;
            v197 = vbslq_s8(vcgtq_u64(v194, v196), v196, v194);
            if (vuzp1_s16(*&v190, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v190))).i32[1])
            {
              *v191 = v197.i32[0];
              v191[1] = v197.i32[2];
            }

            v198 = vdupq_n_s64(4uLL);
            v190 = vaddq_s64(v190, v198);
            v192 = vaddq_s64(v192, v198);
            v189 += 16448;
            v191 += 4;
          }

          while (v189 != 16859200);
          MakeLookups(v188);
          v201 = CMMBase::NewInternal(0x28, valuePtr, v199, v200);
          v202 = legacyLabChanLToPCSDataPtr;
          v201[2] = 0;
          v201[3] = v202;
          *v201 = &unk_1F0E09180;
          v201[1] = 0;
          v201[4] = 21512;
          legacyLabChanLToPCSTable = v201;
          v205 = CMMBase::NewInternal(0x5408, valuePtr, v203, v204);
          v206 = 0;
          legacyLabChanAnBToPCSDataPtr = v205;
          v207 = xmmword_19A96E040;
          v208 = v205 + 2;
          v209 = xmmword_19A96E050;
          do
          {
            v210.i64[0] = v206;
            v210.i64[1] = v206 + 4112;
            v211 = vdupq_n_s64(0x1000000uLL);
            v212 = vbslq_s8(vcgtq_u64(v211, v210), v210, v211);
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v209)), *v207.i8).u8[0])
            {
              *(v208 - 2) = v212.i32[0];
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v209)), *&v207).i8[2])
            {
              *(v208 - 1) = v212.i32[2];
            }

            v213.i64[0] = v206 + 8224;
            v213.i64[1] = v206 + 12336;
            v214 = vbslq_s8(vcgtq_u64(v211, v213), v213, v211);
            if (vuzp1_s16(*&v207, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v207))).i32[1])
            {
              *v208 = v214.i32[0];
              v208[1] = v214.i32[2];
            }

            v215 = vdupq_n_s64(4uLL);
            v207 = vaddq_s64(v207, v215);
            v209 = vaddq_s64(v209, v215);
            v206 += 16448;
            v208 += 4;
          }

          while (v206 != 16859200);
          MakeLookups(v205);
          v218 = CMMBase::NewInternal(0x28, valuePtr, v216, v217);
          v219 = legacyLabChanAnBToPCSDataPtr;
          v218[2] = 0;
          v218[3] = v219;
          *v218 = &unk_1F0E09180;
          v218[1] = 0;
          v218[4] = 21512;
          legacyLabChanAnBToPCSTable = v218;
          CMMMemMgr::ReleaseMemList(valuePtr);
        }

        pthread_mutex_unlock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
        v222 = legacyLabChanLToPCSTable;
        v223 = legacyLabChanAnBToPCSTable;
        v10 = v465;
        *(v465 + 9) = 1347182946;
        if (v222)
        {
          goto LABEL_352;
        }
      }
    }

LABEL_290:
    v22 = v445;
    v226 = v452;
    if (v466 != 1)
    {
      goto LABEL_464;
    }

    if ((v449 & 1) == 0 && (v446 == 3 || v457 == 3 && *(v456 + 24) == 3))
    {
      if (v452 == v450)
      {
        if (*(v10 + 36) == 1482250784)
        {
          *&valuePtr[0] = CMMProfile::GetWhitePoint(v456[2]);
          DWORD2(valuePtr[0]) = v293;
          ConversionManager::AddXYZToXYZ(v465, 63190, valuePtr[0], v294, 0xD32D00010000, *(valuePtr + 4));
          goto LABEL_463;
        }

        goto LABEL_464;
      }

      if (!v444)
      {
        v434 = __cxa_allocate_exception(4uLL);
        *v434 = -171;
      }

      WhitePoint = CMMProfile::GetWhitePoint(v456[2]);
      v235 = v234;
      *&valuePtr[0] = WhitePoint;
      DWORD2(valuePtr[0]) = v234;
      v236 = *(v452 + 48);
      if (!v236)
      {
        v433 = __cxa_allocate_exception(4uLL);
        *v433 = -171;
      }

      v237 = CMMProfile::GetWhitePoint(*(v236 + 16));
      v240 = v237;
      *&v477[0] = v237;
      DWORD2(v477[0]) = v238;
      if (v237 - 7 < WhitePoint && v237 + 7 > WhitePoint && HIDWORD(v237) - 7 < SHIDWORD(WhitePoint) && HIDWORD(v237) + 7 > SHIDWORD(WhitePoint) && v238 - 7 < v235 && v238 + 7 > v235)
      {
        goto LABEL_463;
      }

      v241 = v465;
      if (*(v465 + 9) != 1482250784)
      {
        ConversionManager::AddLabToXYZ(v465);
        v241 = v465;
      }

      ConversionManager::AddXYZToXYZ(v241, 63190, WhitePoint, v239, 0xD32D00010000, *(valuePtr + 4));
      ConversionManager::AddXYZToXYZ(v465, v240, 63190, v242, *(v477 + 4), 0xD32D00010000);
      if (v444 == 1482250784)
      {
LABEL_463:
        v10 = v465;
        v22 = v445;
        v226 = v452;
        goto LABEL_464;
      }

LABEL_316:
      ConversionManager::AddXYZToLab(v465);
      goto LABEL_463;
    }

    v227 = v443;
    if (v452 != v453)
    {
      v227 = 0;
    }

    if (v227 != 1)
    {
      goto LABEL_456;
    }

    v228 = *(v456 + 11);
    if (v228 == 1818848875 || v228 == 1852662636)
    {
      goto LABEL_456;
    }

    ConversionManager::GetProfileSrcBlackPointLightness(v10, v452, 0);
    if (*(v445 + 16) == v452 + 40)
    {
      v435 = __cxa_allocate_exception(4uLL);
      *v435 = -171;
    }

    v230 = v229;
    v231 = *(*(v452 + 48) + 48);
    if (v231 <= 1296255029)
    {
      v232 = 1145856354;
      if (v231 == 1281450528)
      {
        goto LABEL_426;
      }

      if (v231 == 1296255029)
      {
        v232 = 893602898;
        goto LABEL_426;
      }

LABEL_425:
      v232 = *(*(v452 + 48) + 48);
      goto LABEL_426;
    }

    if (v231 == 1296255030)
    {
      v232 = 910380114;
      goto LABEL_426;
    }

    if (v231 == 1296255031)
    {
      v232 = 927157330;
      goto LABEL_426;
    }

    if (v231 != 1296255032)
    {
      goto LABEL_425;
    }

    v232 = 943934546;
LABEL_426:
    if ((*(v452 + 65) & 1) != 0 || (*(v452 + 64) & 1) != 0 || v232 != 1129142603 && v232 != 1380401696)
    {
      ConversionManager::GetProfileSrcBlackPointLightness(v465, v452 + 40, 0);
      v344 = v345;
LABEL_454:
      v10 = v465;
      v22 = v445;
      v226 = v452;
      goto LABEL_455;
    }

    v470 = 0;
    v314 = ConversionManager::CreateBlackPointEstimationTransform(v465, 1, v452 + 40, *(v452 + 60), 1, &v470);
    v315 = v470;
    if (v470 - 5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v316 = 0;
    }

    else
    {
      v316 = 4294967125;
    }

    CMMThrowExceptionOnError(v316);
    bzero(valuePtr, 0x3000uLL);
    v475 = 0;
    v474 = 0;
    ConversionManager::GetProfileSrcBlackPointLightness(v465, v452 + 40, &v474);
    bzero(v473, 0x400uLL);
    bzero(v472, 0x400uLL);
    v319 = 0;
    v320 = 0;
    v321 = (HIDWORD(v474) << 24) / (0x1000000 - v474);
    v322 = 4 * v315;
    v323 = valuePtr + 2;
    v324 = (v475 << 24) / (0x1000000 - v474);
    do
    {
      v325 = 0x1000000 - v319 / 0xFF;
      *(v323 - 2) = v319 / 0xFF;
      *(v323 - 1) = ((v325 * v321) >> 24) + 0x800000;
      *v323 = ((v325 * v324) >> 24) + 0x800000;
      *&v472[v320] = (v319 / 0xFF);
      v320 += 4;
      v323 = (v323 + v322);
      v319 += 0x1000000;
    }

    while (v320 != 1024);
    *(v468 + 6) = 0;
    v468[0] = 0;
    if (v314)
    {
      v326 = v314;
      do
      {
        (*(*v326 + 104))(v326, valuePtr, v468, v315, 256);
        v326 = *(v326 + 2);
      }

      while (v326);
      do
      {
        v327 = *(v314 + 2);
        (*(*v314 + 8))(v314);
        v314 = v327;
      }

      while (v327);
    }

    v328 = 1020 * v315;
    v329 = *(valuePtr + 255 * v315);
    if (v329 <= SLODWORD(valuePtr[0]))
    {
      v344 = 0;
      goto LABEL_454;
    }

    v330 = -4 * v315;
    v331 = -255;
    v332 = valuePtr;
    v333 = 1016 * v315;
    v10 = v465;
    v22 = v445;
    v226 = v452;
    do
    {
      v334 = *(v332 + v328);
      if (*(v332 + v333) > v334)
      {
        *(v332 + v333) = v334;
      }

      v332 = (v332 + v330);
      v127 = __CFADD__(v331++, 1);
    }

    while (!v127);
    v335 = 0;
    v336 = valuePtr;
    v337 = valuePtr[0];
    do
    {
      *&v473[v335++] = *v336;
      v336 = (v336 + v322);
    }

    while (v335 != 256);
    v338 = v329 - v337;
    v339 = 0.25;
    v340 = 0.03;
    if (*(v452 + 60) == 1)
    {
      v341 = 0;
      v342 = floor((v337 + (v338 * 0.2)) + 0.5);
      while (1)
      {
        v343 = *&v472[v341 * 4];
        if (v343 > v342 && vabds_f32(*&v473[v341], v343) > 671090.0)
        {
          break;
        }

        if (++v341 == 256)
        {
          v344 = v474;
          goto LABEL_455;
        }
      }

      v339 = 0.5;
      v340 = 0.1;
    }

    v360 = 1.0 / v338;
    bzero(v477, 0x400uLL);
    bzero(v476, 0x400uLL);
    v361 = -1;
    v362 = *v473;
    v363 = 1;
    v364 = -1;
    do
    {
      v365 = (*&v473[v363] - v362) * v360;
      if (v361 == -1)
      {
        if (v365 >= v340)
        {
          v361 = v363;
        }

        else
        {
          v361 = -1;
        }
      }

      if (v364 == -1)
      {
        if (v365 < v339)
        {
          if (v361 != -1)
          {
            v366 = v363 * 0.00392156863;
            *(v477 + v363 - v361) = v366;
            *&v476[4 * v363 + -4 * v361] = v365;
          }

          v364 = -1;
          goto LABEL_498;
        }

        v364 = v363;
      }

      if (v361 != -1)
      {
        break;
      }

LABEL_498:
      ++v363;
    }

    while (v363 != 255);
    v367 = (v364 - v361);
    if (v367 < 3)
    {
      goto LABEL_539;
    }

    v368 = 0;
    memset(v486, 0, sizeof(v486));
    v485 = 0;
    v484 = 0;
    v483 = 0;
    v482 = 0;
    do
    {
      v369 = 0.0;
      v370 = v477;
      v371 = v476;
      v372 = v367;
      do
      {
        v373 = *v371++;
        v374 = v373;
        v375 = *v370++;
        v369 = v369 + v374 * pow(v375, v368);
        --v372;
      }

      while (v372);
      v376 = 0;
      *(&v482 + v368) = v369;
      do
      {
        v377 = 0.0;
        v378 = v477;
        v379 = v367;
        do
        {
          v380 = v377;
          v381 = *v378++;
          v382 = pow(v381, v376);
          v377 = v380 + v382 * pow(v381, v368);
          --v379;
        }

        while (v379);
        *&v486[3 * v368 + v376++] = v377;
      }

      while (v376 != 3);
      ++v368;
    }

    while (v368 != 3);
    v383 = 0;
    v384 = 0;
    v385 = 1;
    v22 = v445;
    v226 = v452;
    v26 = 1.0;
    while (2)
    {
      v386 = v383;
LABEL_510:
      v387 = *&v486[3 * v383 + v386];
      if (v383)
      {
        v388 = v385;
        do
        {
          v387 = v387 - (*&v486[3 * v383 + (v388 - 2)] * *&v486[3 * v386 + (v388 - 2)]);
          --v388;
        }

        while (v388 > 1);
      }

      if (v383 != v386)
      {
        v389 = v387 / *(&v484 + v383);
        v390 = &v486[3 * v386];
LABEL_517:
        v390[v383] = v389;
        if (++v386 == 3)
        {
          v384 = v383 > 1;
          ++v385;
          if (++v383 != 3)
          {
            continue;
          }

          goto LABEL_521;
        }

        goto LABEL_510;
      }

      break;
    }

    if (v387 > 0.0)
    {
      v389 = sqrt(v387);
      v390 = &v484;
      goto LABEL_517;
    }

    if (!v384)
    {
      goto LABEL_539;
    }

LABEL_521:
    v391 = 0;
    v480 = 0.0;
    v479 = 0;
    v392 = 1;
    do
    {
      v393 = *(&v482 + v391);
      if (v391)
      {
        v394 = v392;
        do
        {
          v393 = v393 - (*&v486[3 * v391 + (v394 - 2)] * *(&v479 + (v394 - 2)));
          --v394;
        }

        while (v394 > 1);
      }

      v395 = v393 / *(&v484 + v391);
      *(&v479 + v391++) = v395;
      ++v392;
    }

    while (v391 != 3);
    v396 = 0;
    v397 = &v487 + 1;
    v398 = 2;
    do
    {
      v399 = v398;
      v400 = *(&v479 + v398);
      if (v398-- <= 1)
      {
        v402 = v397;
        v403 = v396;
        do
        {
          v404 = *v402;
          v402 += 3;
          v400 = v400 - (v404 * *&v481[4 * v403]);
          v127 = __CFADD__(v403++, 1);
        }

        while (!v127);
      }

      v405 = v400 / *(&v484 + v399);
      *(&v479 + v399) = v405;
      --v396;
      v397 -= 4;
    }

    while (v399);
    if (v480 <= 0.000001)
    {
      if (*(&v479 + 1) <= 0.000001)
      {
        goto LABEL_539;
      }

      v408 = 0.5 - *&v479 / *(&v479 + 1);
LABEL_538:
      v409 = vcvtmd_s64_f64(v408);
    }

    else
    {
      v406 = (v480 * (*&v479 * -4.0)) + (*(&v479 + 1) * *(&v479 + 1));
      if (v406 >= 0.0)
      {
        v407 = (sqrtf(v406) - *(&v479 + 1)) / (v480 + v480);
        if (v407 > 0.0)
        {
          v408 = v407 + 0.5;
          goto LABEL_538;
        }
      }

LABEL_539:
      v409 = -1;
    }

    v410 = v409 & ~(v409 >> 31);
    if (v410 >= 0x800000)
    {
      v344 = 0x800000;
    }

    else
    {
      v344 = v410;
    }

LABEL_455:
    if (v230 != v344)
    {
      if (*(v10 + 36) == 1347182946)
      {
        ConversionManager::AddLabToXYZ(v10);
        v10 = v465;
      }

      v347 = CMMBase::NewInternal(0x40, *(v10 + 8), v317, v318);
      v348 = v347;
      v10 = v465;
      v349 = *(v465 + 3);
      *(v347 + 2) = 1;
      *(v347 + 2) = 0;
      *(v347 + 3) = v349;
      if (v349)
      {
        *(v349 + 16) = v347;
      }

      v350 = vcvts_n_f32_s32(v344, 0x18uLL);
      v351 = vcvts_n_f32_u32(v230, 0x18uLL);
      *(v347 + 5) = 0x3FFFFF0000000000;
      *(v347 + 17) = 0;
      *(v347 + 36) = 0;
      *v347 = &unk_1F0E081A0;
      *(v347 + 33) = 1;
      v347[12] = v351;
      v347[13] = v350;
      v352 = DecodeL(v350 * 100.0);
      v353 = (v26 - v352) / (v26 - DecodeL(v351 * 100.0));
      v348[14] = v353;
      v348[15] = 1.0 - v353;
      *(v465 + 3) = v348;
      if (!*(v465 + 2))
      {
        *v462 = v348;
      }

      v22 = v445;
      v226 = v452;
      if (v444 != 1347182946)
      {
        goto LABEL_464;
      }

      goto LABEL_316;
    }

LABEL_456:
    if (v226 != v450)
    {
      v346 = *(v10 + 36);
      if (v346 == 1482250784 && v444 == 1347182946)
      {
        ConversionManager::AddXYZToLab(v10);
        goto LABEL_463;
      }

      if (v346 == 1347182946 && v444 == 1482250784)
      {
        ConversionManager::AddLabToXYZ(v10);
        goto LABEL_463;
      }
    }

LABEL_464:
    v25 = *(v10 + 36);
    v24 = v226 + 40;
    v23 = *(v22 + 16);
  }

  while (v24 != v23);
LABEL_543:
  v411 = *v462;
  if (*v462)
  {
    v412 = 0;
    do
    {
      if (++v412 <= 0x64)
      {
        v413 = 0;
      }

      else
      {
        v413 = 4294967125;
      }

      CMMThrowExceptionOnError(v413);
      v411 = *(v411 + 2);
    }

    while (v411);
  }

  else
  {
    v412 = 0;
  }

  v414 = 0;
  if (v412 <= 1)
  {
    v415 = 1;
  }

  else
  {
    v415 = v412;
  }

  *&valuePtr[0] = 0;
  v416 = (2 * v415) | 1;
  while (1)
  {
    if (v414)
    {
      *v462 = v414;
      *&v477[0] = v416;
      goto LABEL_558;
    }

    v414 = *v462;
    *&v477[0] = v416;
    if (!v414)
    {
      break;
    }

LABEL_558:
    v417 = CMMConvNode::RemoveNOPs(v414, v477, v442);
    *v462 = v417;
    if (!v417)
    {
      goto LABEL_567;
    }

    v418 = 0;
    v419 = *(v465 + 1);
    do
    {
      if (((*(*v417 + 80))(v417) & 1) == 0)
      {
        v418 |= (*(*v417 + 16))(v417, v419, valuePtr);
      }

      v417 = *(v417 + 2);
    }

    while (v417);
    if ((v418 & 1) == 0)
    {
      v417 = *v462;
      goto LABEL_567;
    }

    v414 = *&valuePtr[0];
  }

  v417 = 0;
LABEL_567:
  if (v441)
  {
    if (v417)
    {
      if (*(v417 + 2))
      {
        v420 = 0;
      }

      else
      {
      }

      v422 = theDict;
      v421 = 0;
      *v441 = v420;
      do
      {
        v423 = (*(*v417 + 200))(v417, v422) | v421;
        {
          v421 = v423 | 8;
        }

        else
        {
          v421 = v423;
        }

        v417 = *(v417 + 2);
        v422 = theDict;
      }

      while (v417);
      if ((v421 & 8) != 0)
      {
        v425 = 8;
      }

      else
      {
        if ((v421 & 4) == 0)
        {
          goto LABEL_580;
        }

        v425 = 4;
      }
    }

    else
    {
      v421 = 0;
      *v441 = 1;
LABEL_580:
      if ((v421 & 2) != 0)
      {
        v425 = 2;
      }

      else
      {
        v425 = v421;
      }
    }

    *(v441 + 4) = v425;
    v417 = *v462;
    if (*v462)
    {
      v426 = *v462;
      while (1)
      {
        v428 = v427 != 0;
        if (v427)
        {
          break;
        }

        v426 = *(v426 + 2);
        if (!v426)
        {
          goto LABEL_589;
        }
      }
    }

    else
    {
LABEL_589:
      v428 = 0;
    }

    *(v441 + 8) = v428;
  }

  return v417;
}

void sub_19A926BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CMMDisplayProfile::GetDstColorSpace(unsigned int *a1, unsigned int a2, char *a3)
{
  v4 = 0;
  if (a2 > 0xE)
  {
    goto LABEL_19;
  }

  if (((1 << a2) & 0x2A0A) != 0)
  {
    v6 = a1[13];
    v4 = 1;
    if (v6 == 1281450528)
    {
      v7 = 0;
      v6 = 1347182946;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (((1 << a2) & 0x5404) == 0)
  {
    if (a2 == 4)
    {
      if ((*(*a1 + 24))(a1))
      {
        goto LABEL_4;
      }

      v4 = 0;
    }

LABEL_19:
    v7 = 4294967246;
    v6 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

LABEL_4:
  v6 = a1[12];
  if (v6 <= 1296255029)
  {
    if (v6 == 1281450528)
    {
      v4 = 0;
      v7 = 0;
      v6 = 1145856354;
      goto LABEL_23;
    }

    v4 = 0;
    if (v6 == 1296255029)
    {
      v4 = 0;
      v7 = 0;
      v6 = 893602898;
      goto LABEL_23;
    }

LABEL_14:
    if (v6 != -1)
    {
      v7 = 0;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v6 == 1296255030)
  {
    v4 = 0;
    v7 = 0;
    v6 = 910380114;
  }

  else
  {
    if (v6 != 1296255031)
    {
      v4 = 0;
      if (v6 == 1296255032)
      {
        v4 = 0;
        v7 = 0;
        v6 = 943934546;
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v4 = 0;
    v7 = 0;
    v6 = 927157330;
  }

LABEL_23:
  CMMThrowExceptionOnError(v7);
  if (a3)
  {
    *a3 = v4;
  }

  return v6;
}

uint64_t CMMDisplayProfile::GetSrcColorSpace(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    goto LABEL_27;
  }

  if (((1 << a2) & 0x540C) != 0)
  {
LABEL_24:
    v10 = a1[13];
    if (v10 == 1281450528)
    {
      return 1347182946;
    }

    else
    {
      return v10;
    }
  }

  if (((1 << a2) & 0x2A02) == 0)
  {
    if (a2 == 4 && (*(*a1 + 24))(a1))
    {
      goto LABEL_24;
    }

LABEL_27:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v3 = a1[12];
  if (v3 == 1296255032)
  {
    v4 = 943934546;
  }

  else
  {
    v4 = a1[12];
  }

  if (v3 == 1296255031)
  {
    v5 = 927157330;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 1296255030)
  {
    v6 = 910380114;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 1296255029)
  {
    v7 = 893602898;
  }

  else
  {
    v7 = a1[12];
  }

  if (v3 == 1281450528)
  {
    v8 = 1145856354;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1296255029)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

CMMConvNode *ConversionManager::MakeColorMatchSequence(uint64_t a1, void *a2, uint64_t a3, CFDictionaryRef theDict)
{
  v4 = a2[1];
  v5 = a2[2];
  if (v5 == v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (theDict)
  {
    v47 = CFDictionaryContainsKey(theDict, @"com.apple.cmm.ApplyToneMaping") != 1;
    v4 = a2[1];
    v5 = a2[2];
  }

  else
  {
    v47 = 1;
  }

  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  if (v9 >= 2)
  {
    v45 = a1;
    v46 = a3;
    while (1)
    {
      if (v4 == v5 - 5)
      {
        v33 = v4;
        goto LABEL_76;
      }

      v10 = 0;
      v11 = v4 + 40;
      do
      {
        v12 = *(v4 + 8);
        if (v12)
        {
          v13 = *(v4 + 24) == 1 && (*(v11 + 24) & 1) != 0 || *(v4 + 25) == 1 && (*(v11 + 25) & 1) != 0 || *(v4 + 24) && (*(v11 + 25) & 1) != 0 || *(v4 + 25) && (*(v11 + 24) & 1) != 0;
          v14 = *(v11 + 8);
          v15 = *(v4 + 16);
          v16 = *(v11 + 16);
          v17 = (*(*v12 + 6))(*(v4 + 8), v15);
          v18 = (*(*v14 + 7))(v14, v16, 0);
          if (v13)
          {
            v21 = 0;
            v22 = 0;
          }

          else
          {
            v21 = *(v4 + 20);
            v22 = *(v11 + 20);
          }

          v23 = *(v4 + 34);
          v24 = *(v11 + 34);
          v25 = v17 == v18 && v15 == 1;
          if (v25 && v16 == 2 && v23 == v24)
          {
            if (v47)
            {
              if ((CMMProfileInfoContainer::ProfilesIdentical(v12, v14, v19, v20) & 1) != 0 || (PoppyIndex = ColorSyncProfileGetPoppyIndex(v12[2]), v30 = ColorSyncProfileGetPoppyIndex(v14[2]), PoppyIndex != -1) && PoppyIndex == v30)
              {
                *(v11 + 8) = 0;
                *(v4 + 8) = 0;
                v31 = *(v12 + 2) - 1;
                *(v12 + 2) = v31;
                if (!v31)
                {
                  (*(*v12 + 1))(v12);
                }

LABEL_52:
                v32 = *(v14 + 2) - 1;
                *(v14 + 2) = v32;
                if (!v32)
                {
LABEL_53:
                  (*(*v14 + 1))(v14);
                }

LABEL_54:
                v10 = 1;
              }
            }
          }

          else if (v15 == 3 && v16 == 2 && v21 == v22 && v23 == v24)
          {
            if (CMMProfileInfoContainer::ProfilesIdentical(v12, v14, v19, v20))
            {
              *(v4 + 8) = 0;
              v28 = *(v12 + 2) - 1;
              *(v12 + 2) = v28;
              if (!v28)
              {
                v14 = v12;
                goto LABEL_53;
              }

              goto LABEL_54;
            }
          }

          else if (v15 == 1 && v16 == 3 && v21 == v22 && v23 == v24 && CMMProfileInfoContainer::ProfilesIdentical(v12, v14, v19, v20))
          {
            *(v11 + 8) = 0;
            goto LABEL_52;
          }
        }

        v33 = a2[1];
        v5 = a2[2];
        v34 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v33) >> 3);
        if (v34 <= 1)
        {
          break;
        }

        v4 += 40;
        v11 += 40;
      }

      while (v4 != v5 - 5);
      if (v10)
      {
        if (v33 != v5)
        {
          do
          {
            if (*(v33 + 8))
            {
              v33 += 40;
            }

            else
            {
              if ((v33 + 40) == v5)
              {
                v38 = v5;
                v5 = v33;
              }

              else
              {
                v35 = v33;
                do
                {
                  *(v35 + 8) = *(v35 + 48);
                  v36 = *(v35 + 64);
                  *(v35 + 16) = *(v35 + 56);
                  *(v35 + 24) = v36;
                  *(v35 + 32) = *(v35 + 72);
                  *(v35 + 36) = *(v35 + 76);
                  *(v35 + 37) = *(v35 + 77);
                  v37 = (v35 + 80);
                  v35 += 40;
                }

                while (v37 != v5);
                v38 = a2[2];
                v5 = v35;
              }

              if (v38 != v5)
              {
                v39 = v38 - 5;
                v40 = v38 - 5;
                v41 = v38 - 5;
                do
                {
                  v42 = *v41;
                  v41 -= 5;
                  (*v42)(v40);
                  v39 -= 5;
                  v25 = v40 == v5;
                  v40 = v41;
                }

                while (!v25);
              }

              a2[2] = v5;
            }
          }

          while (v33 != v5);
          v33 = a2[1];
          v34 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v33) >> 3);
        }

        v4 = v33;
        if (v34 > 1)
        {
          continue;
        }
      }

LABEL_76:
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v33) >> 3);
      v4 = v33;
      a3 = v46;
      a1 = v45;
      break;
    }
  }

  a2[6] = v9;
  if (v5 == v4)
  {
    if (a3)
    {
      *a3 = 1;
      *(a3 + 8) = 0;
    }

    return 0;
  }

  else
  {

    return ConversionManager::MakeConversionSequence(a1, a2, a3);
  }
}

float ColorSyncOptionsGetHDRMediaReferenceWhite(const void *a1)
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

  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite");
  if (!Value)
  {
    if (CFDictionaryContainsKey(a1, @"com.apple.cmm.ApplyToneMaping") == 1)
    {
      v6 = CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMaping");
      if (v6)
      {
        CFGetTypeID(v6);
        CFDictionaryGetTypeID();
      }
    }

    return 203.0;
  }

  valuePtr = 0.0;
  if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
  {
    v4 = valuePtr;
  }

  else
  {
    valuePtr = 0.0;
    v4 = 0.0;
  }

  if (v4 == 0.0)
  {
    result = 203.0;
  }

  else
  {
    result = v4;
  }

  if (result != 203.0 && result != 100.0)
  {
    ColorSyncLog(2, "kColorSyncHDRMediaReferenceWhite %f is neither kColorSync_default_reference_white nor kColorSync_legacy_reference_white - ignored", v4);
    return 203.0;
  }

  return result;
}

BOOL ColorSyncOptionsLegacyHDREcosystemRequested(const __CFDictionary *a1)
{
  v2 = current_or_newer_sdk() ^ 1;
  if (a1 && CFDictionaryContainsKey(a1, @"com.apple.cmm.UseLegacyHDREcosystem"))
  {
    return CFDictionaryGetValue(a1, @"com.apple.cmm.UseLegacyHDREcosystem") == *MEMORY[0x1E695E4D0];
  }

  return v2;
}

uint64_t current_or_newer_sdk()
{
  if (current_or_newer_sdk_predicate != -1)
  {
    dispatch_once(&current_or_newer_sdk_predicate, &__block_literal_global_1594);
  }

  if (current_or_newer_sdk_linked_on_glow_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_crystal_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_sapphire_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_moonstone_or_later)
  {
    v0 = 1;
  }

  else
  {
    v0 = current_or_newer_sdk_linked_on_constellation_or_later;
  }

  return v0 & 1;
}

const void *ColorSyncOptionsGetFlexLumaScalingOptions(const ColorSyncProfile *a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID() || a1 && !ColorSyncProfileIsPQBased(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"com.apple.cmm.ApplyToneMaping");
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryGetValue(v6, @"com.apple.cmm.ApplyFlexLumaScaling");
}

uint64_t CMMProfile::InnerGetMatrixTags(CMMProfile *this, CMMXYZTag *(*a2)[3], CMMCurveTag *(*a3)[3])
{
  v92 = 0;
  if (ColorSyncProfileContainsSupportedCICP(*(this + 2), &v92))
  {
    if (v92 <= 8u)
    {
      if (v92 == 1)
      {
        v37 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
        if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
        {
          dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
        }

        v38 = *(this + 20);
        while (v38)
        {
          v39 = v38;
          v38 = *(v38 + 16);
          if (!v38)
          {
            *(v37 + 2) = 1918392666;
            v37[3] = v39;
            v37[4] = 20;
            v37[2] = 0;
            *(v39 + 16) = v37;
            goto LABEL_88;
          }
        }

        *(v37 + 2) = 1918392666;
        v37[3] = 0;
        v37[4] = 20;
        v37[2] = 0;
LABEL_88:
        v37[5] = &ColorSyncProfileGetBT709RedPrimary_rXYZ;
        *(v37 + 24) = 0;
        *v37 = &unk_1F0E09148;
        (*a2)[0] = v37;
        v59 = CMMBase::NewInternal(0x38, *(this + 3), v35, v36);
        if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
        }

        v60 = *(this + 20);
        while (v60)
        {
          v61 = v60;
          v60 = *(v60 + 16);
          if (!v60)
          {
            *(v59 + 2) = 1733843290;
            v59[3] = v61;
            v59[4] = 20;
            v59[2] = 0;
            *(v61 + 16) = v59;
            goto LABEL_95;
          }
        }

        *(v59 + 2) = 1733843290;
        v59[3] = 0;
        v59[4] = 20;
        v59[2] = 0;
LABEL_95:
        v59[5] = &ColorSyncProfileGetBT709GreenPrimary_gXYZ;
        *(v59 + 24) = 0;
        *v59 = &unk_1F0E09148;
        (*a2)[1] = v59;
        v47 = CMMBase::NewInternal(0x38, *(this + 3), v57, v58);
        if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
        }

        v62 = *(this + 20);
        do
        {
          if (!v62)
          {
            *(v47 + 2) = 1649957210;
            v47[3] = 0;
            v47[4] = 20;
            v47[2] = 0;
            v50 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
            goto LABEL_132;
          }

          v49 = v62;
          v62 = *(v62 + 16);
        }

        while (v62);
        *(v47 + 2) = 1649957210;
        v47[3] = v49;
        v47[4] = 20;
        v47[2] = 0;
        v50 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
LABEL_131:
        *(v49 + 16) = v47;
      }

      else
      {
        if (v92 != 5)
        {
          goto LABEL_158;
        }

        v16 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
        if (ColorSyncProfileGetBT601RedPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601RedPrimary_predicate, &__block_literal_global_304);
        }

        v17 = *(this + 20);
        while (v17)
        {
          v18 = v17;
          v17 = *(v17 + 16);
          if (!v17)
          {
            *(v16 + 2) = 1918392666;
            v16[3] = v18;
            v16[4] = 20;
            v16[2] = 0;
            *(v18 + 16) = v16;
            goto LABEL_118;
          }
        }

        *(v16 + 2) = 1918392666;
        v16[3] = 0;
        v16[4] = 20;
        v16[2] = 0;
LABEL_118:
        v16[5] = &ColorSyncProfileGetBT601RedPrimary_rXYZ;
        *(v16 + 24) = 0;
        *v16 = &unk_1F0E09148;
        (*a2)[0] = v16;
        v71 = CMMBase::NewInternal(0x38, *(this + 3), v14, v15);
        if (ColorSyncProfileGetBT601GreenPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601GreenPrimary_predicate, &__block_literal_global_307);
        }

        v72 = *(this + 20);
        while (v72)
        {
          v73 = v72;
          v72 = *(v72 + 16);
          if (!v72)
          {
            *(v71 + 2) = 1733843290;
            v71[3] = v73;
            v71[4] = 20;
            v71[2] = 0;
            *(v73 + 16) = v71;
            goto LABEL_125;
          }
        }

        *(v71 + 2) = 1733843290;
        v71[3] = 0;
        v71[4] = 20;
        v71[2] = 0;
LABEL_125:
        v71[5] = &ColorSyncProfileGetBT601GreenPrimary_gXYZ;
        *(v71 + 24) = 0;
        *v71 = &unk_1F0E09148;
        (*a2)[1] = v71;
        v47 = CMMBase::NewInternal(0x38, *(this + 3), v69, v70);
        if (ColorSyncProfileGetBT601BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601BluePrimary_predicate, &__block_literal_global_310);
        }

        v74 = *(this + 20);
        while (v74)
        {
          v49 = v74;
          v74 = *(v74 + 16);
          if (!v74)
          {
            *(v47 + 2) = 1649957210;
            v47[3] = v49;
            v47[4] = 20;
            v47[2] = 0;
            v50 = &ColorSyncProfileGetBT601BluePrimary_bXYZ;
            goto LABEL_131;
          }
        }

        *(v47 + 2) = 1649957210;
        v47[3] = 0;
        v47[4] = 20;
        v47[2] = 0;
        v50 = &ColorSyncProfileGetBT601BluePrimary_bXYZ;
      }
    }

    else
    {
      switch(v92)
      {
        case 9u:
          v27 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          }

          v28 = *(this + 20);
          while (v28)
          {
            v29 = v28;
            v28 = *(v28 + 16);
            if (!v28)
            {
              *(v27 + 2) = 1918392666;
              v27[3] = v29;
              v27[4] = 20;
              v27[2] = 0;
              *(v29 + 16) = v27;
              goto LABEL_58;
            }
          }

          *(v27 + 2) = 1918392666;
          v27[3] = 0;
          v27[4] = 20;
          v27[2] = 0;
LABEL_58:
          v27[5] = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
          *(v27 + 24) = 0;
          *v27 = &unk_1F0E09148;
          (*a2)[0] = v27;
          v42 = CMMBase::NewInternal(0x38, *(this + 3), v25, v26);
          if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          }

          v43 = *(this + 20);
          while (v43)
          {
            v44 = v43;
            v43 = *(v43 + 16);
            if (!v43)
            {
              *(v42 + 2) = 1733843290;
              v42[3] = v44;
              v42[4] = 20;
              v42[2] = 0;
              *(v44 + 16) = v42;
              goto LABEL_65;
            }
          }

          *(v42 + 2) = 1733843290;
          v42[3] = 0;
          v42[4] = 20;
          v42[2] = 0;
LABEL_65:
          v42[5] = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
          *(v42 + 24) = 0;
          *v42 = &unk_1F0E09148;
          (*a2)[1] = v42;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v40, v41);
          if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
          }

          v48 = *(this + 20);
          while (v48)
          {
            v49 = v48;
            v48 = *(v48 + 16);
            if (!v48)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
          break;
        case 0xBu:
          v32 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetDCIP3RedPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDCIP3RedPrimary_predicate, &__block_literal_global_340);
          }

          v33 = *(this + 20);
          while (v33)
          {
            v34 = v33;
            v33 = *(v33 + 16);
            if (!v33)
            {
              *(v32 + 2) = 1918392666;
              v32[3] = v34;
              v32[4] = 20;
              v32[2] = 0;
              *(v34 + 16) = v32;
              goto LABEL_73;
            }
          }

          *(v32 + 2) = 1918392666;
          v32[3] = 0;
          v32[4] = 20;
          v32[2] = 0;
LABEL_73:
          v32[5] = &ColorSyncProfileGetDCIP3RedPrimary_rXYZ;
          *(v32 + 24) = 0;
          *v32 = &unk_1F0E09148;
          (*a2)[0] = v32;
          v53 = CMMBase::NewInternal(0x38, *(this + 3), v30, v31);
          if (ColorSyncProfileGetDCIP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDCIP3GreenPrimary_predicate, &__block_literal_global_343);
          }

          v54 = *(this + 20);
          while (v54)
          {
            v55 = v54;
            v54 = *(v54 + 16);
            if (!v54)
            {
              *(v53 + 2) = 1733843290;
              v53[3] = v55;
              v53[4] = 20;
              v53[2] = 0;
              *(v55 + 16) = v53;
              goto LABEL_80;
            }
          }

          *(v53 + 2) = 1733843290;
          v53[3] = 0;
          v53[4] = 20;
          v53[2] = 0;
LABEL_80:
          v53[5] = &ColorSyncProfileGetDCIP3GreenPrimary_gXYZ;
          *(v53 + 24) = 0;
          *v53 = &unk_1F0E09148;
          (*a2)[1] = v53;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v51, v52);
          if (ColorSyncProfileGetDCIP3BluePrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDCIP3BluePrimary_predicate, &__block_literal_global_346);
          }

          v56 = *(this + 20);
          while (v56)
          {
            v49 = v56;
            v56 = *(v56 + 16);
            if (!v56)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
          break;
        case 0xCu:
          v10 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
          }

          v11 = *(this + 20);
          while (v11)
          {
            v12 = v11;
            v11 = *(v11 + 16);
            if (!v11)
            {
              *(v10 + 2) = 1918392666;
              v10[3] = v12;
              v10[4] = 20;
              v10[2] = 0;
              *(v12 + 16) = v10;
              goto LABEL_103;
            }
          }

          *(v10 + 2) = 1918392666;
          v10[3] = 0;
          v10[4] = 20;
          v10[2] = 0;
LABEL_103:
          v10[5] = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
          *(v10 + 24) = 0;
          *v10 = &unk_1F0E09148;
          (*a2)[0] = v10;
          v65 = CMMBase::NewInternal(0x38, *(this + 3), v8, v9);
          if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
          }

          v66 = *(this + 20);
          while (v66)
          {
            v67 = v66;
            v66 = *(v66 + 16);
            if (!v66)
            {
              *(v65 + 2) = 1733843290;
              v65[3] = v67;
              v65[4] = 20;
              v65[2] = 0;
              *(v67 + 16) = v65;
              goto LABEL_110;
            }
          }

          *(v65 + 2) = 1733843290;
          v65[3] = 0;
          v65[4] = 20;
          v65[2] = 0;
LABEL_110:
          v65[5] = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
          *(v65 + 24) = 0;
          *v65 = &unk_1F0E09148;
          (*a2)[1] = v65;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v63, v64);
          if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
          }

          v68 = *(this + 20);
          while (v68)
          {
            v49 = v68;
            v68 = *(v68 + 16);
            if (!v68)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
          break;
        default:
          goto LABEL_158;
      }
    }

LABEL_132:
    v47[5] = v50;
    *(v47 + 24) = 0;
    *v47 = &unk_1F0E09148;
    (*a2)[2] = v47;
    if (BYTE1(v92) > 0xDu)
    {
      if (BYTE1(v92) - 14 < 2)
      {
LABEL_144:
        v79 = CMMBase::NewInternal(0x80, *(this + 3), v45, v46);
        v80 = *(this + 20);
        do
        {
          v81 = v80;
          if (!v80)
          {
            break;
          }

          v80 = *(v80 + 16);
        }

        while (v80);
        v78 = CMMParaCurveTag::CMMParaCurveTag(v79, 1885434465, "para", 32, v81);
        v82 = off_1F0E08FA8;
LABEL_148:
        *v78 = v82;
LABEL_149:
        (*a3)[1] = v78;
        (*a3)[2] = v78;
        (*a3)[0] = v78;
        return 1;
      }

      if (BYTE1(v92) == 16)
      {
        v89 = CMMBase::NewInternal(0x60, *(this + 3), v45, v46);
        v90 = *(this + 20);
        do
        {
          v91 = v90;
          if (!v90)
          {
            break;
          }

          v90 = *(v90 + 16);
        }

        while (v90);
        CMMPQCurveTag::CMMPQCurveTag(v89, 0, v91);
        goto LABEL_149;
      }

      if (BYTE1(v92) == 18)
      {
        v75 = CMMBase::NewInternal(0x58, *(this + 3), v45, v46);
        v76 = *(this + 20);
        do
        {
          v77 = v76;
          if (!v76)
          {
            break;
          }

          v76 = *(v76 + 16);
        }

        while (v76);
        CMMHLGCurveTag::CMMHLGCurveTag(v75, v77);
        goto LABEL_149;
      }
    }

    else
    {
      if (BYTE1(v92) <= 7u)
      {
        if (BYTE1(v92) != 1 && BYTE1(v92) != 6)
        {
          goto LABEL_158;
        }

        goto LABEL_144;
      }

      if (BYTE1(v92) == 8)
      {
        v86 = CMMBase::NewInternal(0x38, *(this + 3), v45, v46);
        v87 = *(this + 20);
        do
        {
          v88 = v87;
          if (!v87)
          {
            break;
          }

          v87 = *(v87 + 16);
        }

        while (v87);
        CMMCurveTag::CMMCurveTag(v86, 0, "curv", 16, v88);
        v82 = &unk_1F0E09078;
        goto LABEL_148;
      }

      if (BYTE1(v92) == 13)
      {
        v83 = CMMBase::NewInternal(0x80, *(this + 3), v45, v46);
        v84 = *(this + 20);
        do
        {
          v85 = v84;
          if (!v84)
          {
            break;
          }

          v84 = *(v84 + 16);
        }

        while (v84);
        v78 = CMMParaCurveTag::CMMParaCurveTag(v83, 1885434465, "para", 32, v85);
        v82 = &unk_1F0E09010;
        goto LABEL_148;
      }
    }

LABEL_158:
    result = 0;
    (*a2)[0] = 0;
    (*a2)[1] = 0;
    (*a2)[2] = 0;
    (*a3)[0] = 0;
    (*a3)[1] = 0;
    (*a3)[2] = 0;
    return result;
  }

  Tag = CMMProfile::GetTag(this, 1633776231);
  if (Tag)
  {
    (*a3)[0] = Tag;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1918128707);
    (*a3)[0] = result;
    if (!result)
    {
      return result;
    }
  }

  v20 = CMMProfile::GetTag(this, 1633773415);
  if (v20)
  {
    (*a3)[1] = v20;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1733579331);
    (*a3)[1] = result;
    if (!result)
    {
      return result;
    }
  }

  v21 = CMMProfile::GetTag(this, 1633772135);
  if (v21)
  {
    (*a3)[2] = v21;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1649693251);
    (*a3)[2] = result;
    if (!result)
    {
      return result;
    }
  }

  v22 = CMMProfile::GetTag(this, 1633768035);
  if (v22)
  {
    (*a2)[0] = v22;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1918392666);
    (*a2)[0] = result;
    if (!result)
    {
      return result;
    }
  }

  v23 = CMMProfile::GetTag(this, 1633765219);
  if (v23)
  {
    (*a2)[1] = v23;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1733843290);
    (*a2)[1] = result;
    if (!result)
    {
      return result;
    }
  }

  v24 = CMMProfile::GetTag(this, 1633763939);
  if (v24)
  {
    (*a2)[2] = v24;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1649957210);
    (*a2)[2] = result;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

void *CMMMatrixDisplayProfile::GetLutTags(unsigned int *a1, int a2)
{
  if (a2 != 4 || !(*(*a1 + 24))(a1))
  {
    return 0;
  }

  v3 = a1[12];
  v4 = a1[13];
  if (v4 == 1281450528)
  {
    v5 = 1347182946;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= 1296255029)
  {
    if (v3 == 1281450528)
    {
      v3 = 1145856354;
    }

    else if (v3 == 1296255029)
    {
      v3 = 893602898;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x4D434836:
        v3 = 910380114;
        break;
      case 0x4D434837:
        v3 = 927157330;
        break;
      case 0x4D434838:
        v3 = 943934546;
        break;
    }
  }

  return CMMProfile::SingleTagContainer(a1, 1734438260, v5, v3);
}

BOOL CMMCurveTag::SameCurve(CMMCurveTag *this, CMMCurveTag *a2, CMMCurveTag *a3)
{
  v5 = (*(*a2 + 40))(a2);
  if (v5 != (*(*a3 + 40))(a3))
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = (*(*a2 + 48))(a2);
  v7 = (*(*a3 + 48))(a3);
  if (v6 == v7)
  {
    return 1;
  }

  return memcmp(v6, v7, 2 * v5) == 0;
}

uint64_t CMMMatrix::InitializeMatrix(uint64_t result, uint64_t a2, void *a3, float a4)
{
  v4 = 0;
  *(result + 104) = a4;
  v5 = a3[1];
  v6 = *(*a3 + 40);
  *a2 = bswap32(v6[2]);
  *(a2 + 12) = bswap32(v6[3]);
  *(a2 + 24) = bswap32(v6[4]);
  v7 = *(v5 + 40);
  *(a2 + 4) = bswap32(v7[2]);
  *(a2 + 16) = bswap32(v7[3]);
  *(a2 + 28) = bswap32(v7[4]);
  v8 = *(a3[2] + 40);
  *(a2 + 8) = bswap32(v8[2]);
  *(a2 + 20) = bswap32(v8[3]);
  *(a2 + 32) = bswap32(v8[4]);
  v9.i32[0] = v6[2];
  v9.i32[1] = v7[2];
  v9.i32[2] = v8[2];
  v9.i32[3] = v6[3];
  v10 = vrev32q_s8(v9);
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v12 = vcvtq_f64_s64(v11);
  v11.i64[0] = v10.i32[2];
  v11.i64[1] = v10.i32[3];
  v13 = vdupq_n_s64(0x3EF0000000000000uLL);
  v10.i32[0] = v7[3];
  v10.i32[1] = v8[3];
  v10.i32[2] = v6[4];
  v10.i32[3] = v7[4];
  *(a2 + 36) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v12, v13)), vmulq_f64(vcvtq_f64_s64(v11), v13));
  v14 = vrev32q_s8(v10);
  v11.i64[0] = v14.i32[0];
  v11.i64[1] = v14.i32[1];
  v15 = vcvtq_f64_s64(v11);
  v11.i64[0] = v14.i32[2];
  v11.i64[1] = v14.i32[3];
  *(a2 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v15, v13)), vmulq_f64(vcvtq_f64_s64(v11), v13));
  *v14.i32 = vcvtd_n_f64_s32(bswap32(v8[4]), 0x10uLL);
  *(a2 + 68) = v14.i32[0];
  v16 = a2;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      v18 = vcvtd_n_f64_s32(*(v16 + i), 0x10uLL);
      if (v18 >= 0.0)
      {
        v19 = v18 * 32768.0 + 0.5;
      }

      else
      {
        v19 = v18 * 32768.0 + -0.5;
      }

      *(v16 + i) = v19;
    }

    ++v4;
    v16 += 12;
  }

  while (v4 != 3);
  for (j = 0; j != 3; ++j)
  {
    v21 = 0.0;
    v22 = 0.0;
    v23 = a2;
    v24 = 3;
    do
    {
      v21 = v21 + *v23;
      v22 = v22 + *(v23 + 36);
      v23 += 4;
      --v24;
    }

    while (v24);
    if (v21 != 0.0 && v22 != 0.0)
    {
      v25 = 0;
      v26 = dword_19A9B0154[j] / v21;
      v27 = dword_19A9B0160[j] / v22;
      do
      {
        v28 = a2 + v25;
        *v28 = vcvtmd_s64_f64(v26 * *(a2 + v25) + 0.5);
        *(v28 + 36) = v27 * *(a2 + v25 + 36);
        v25 += 4;
      }

      while (v25 != 12);
    }

    a2 += 12;
  }

  return result;
}

uint64_t CMMRGBCurves::MakeInvertedTRC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, float a6)
{
  v12 = a1 + 1;
  v11 = a1[1];
  if (!a4)
  {
    goto LABEL_8;
  }

  if (!(*(*v11 + 56))(v11, v12[a4], v12[a4 - 1]))
  {
    v11 = v12[a4];
LABEL_8:
    a1[5] = (*(*v11 + 72))(v11, a2, a3, a1 + 4, a6);
    goto LABEL_9;
  }

  v14 = a1[4];
  v15 = *(v14 + 8);
  if (v15)
  {
    *(v14 + 8) = v15 + 1;
  }

  v16 = a1[5];
  v17 = *(v16 + 8);
  if (v17)
  {
    *(v16 + 8) = v17 + 1;
  }

LABEL_9:
  *a5 = a1[4];
  return a1[5];
}

void CMMInvMatrix::CMMInvMatrix(CMMInvMatrix *this, CMMXYZTag *(*a2)[3], int (*a3)[3])
{
  v39 = *MEMORY[0x1E69E9840];
  *(this + 12) = 0;
  *(this + 8) = 0u;
  v5 = this + 8;
  *(this + 26) = 1065353216;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *this = &unk_1F0E07218;
  *(this + 5) = 0u;
  CMMMatrix::InitializeMatrix(this, this + 108, a2, 1.0);
  v6 = 0;
  v7 = 0;
  memset(v38, 0, sizeof(v38));
  do
  {
    v8 = v6;
    v9 = 3;
    do
    {
      v38[0][v8] = vcvtd_n_f64_s32(*(this + v8 + 27), 0x10uLL);
      ++v8;
      --v9;
    }

    while (v9);
    ++v7;
    v6 += 3;
  }

  while (v7 != 3);
  InvertMatrix3x3(v38);
  v10 = 0;
  for (i = 0; i != 3; ++i)
  {
    v12 = v10;
    v13 = 3;
    do
    {
      v14 = v38[0][v12];
      if (v14 >= 0.0)
      {
        v15 = v14 * 65536.0 + 0.5;
      }

      else
      {
        v15 = v14 * 65536.0 + -0.5;
      }

      *(this + v12++ + 2) = v15;
      --v13;
    }

    while (v13);
    v10 += 3;
  }

  v16 = 0;
  for (j = 0; j != 3; ++j)
  {
    v18 = v16;
    v19 = 3;
    do
    {
      v38[0][v18] = *(this + v18 + 36);
      ++v18;
      --v19;
    }

    while (v19);
    v16 += 3;
  }

  InvertMatrix3x3(v38);
  v20 = 0;
  v21 = 0;
  v22 = (this + 44);
  do
  {
    v23 = v20;
    v24 = 3;
    do
    {
      v25 = v38[0][v23];
      *(this + v23++ + 11) = v25;
      --v24;
    }

    while (v24);
    ++v21;
    v20 += 3;
  }

  while (v21 != 3);
  for (k = 0; k != 3; ++k)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0.0;
    v30 = v22;
    v31 = dword_19A9B0160;
    do
    {
      v28 += qword_19A9B02A8[v27] * *(v30 - 9);
      v32 = *v30++;
      v33 = v32;
      v34 = *v31++;
      v29 = v29 + (v33 * v34);
      ++v27;
    }

    while (v27 != 3);
    if (v28 != v28 && v29 != 0.0)
    {
      v35 = 0;
      v36 = (*a3)[k] / ((v28 + 0x8000) >> 16);
      v37 = 1.0 / v29;
      do
      {
        if (v36 > 1.0)
        {
          *&v5[v35 * 4] = vcvtmd_s64_f64(v36 * *&v5[v35 * 4] + 0.5);
        }

        v22[v35] = v37 * v22[v35];
        ++v35;
      }

      while (v35 != 3);
    }

    v22 += 3;
    v5 += 12;
  }
}

double InvertMatrix3x3(double (*a1)[3][3])
{
  v2 = (*a1)[0][1];
  v3 = (*a1)[0][2];
  v4 = (*a1)[1][0];
  v5 = (*a1)[1][2];
  v12 = (*a1)[1][1];
  v13 = (*a1)[0][0];
  v6 = (*a1)[2][0];
  v7 = (*a1)[2][1];
  v8 = (*a1)[2][2];
  v14 = -((*a1)[0][0] * v5);
  v9 = v3 * -(v6 * v12) + (*a1)[0][0] * v12 * v8 + v3 * v4 * v7 + -(v4 * v2) * v8 + v2 * v5 * v6 + v14 * v7;
  if (fabs(v9) <= 1.17549435e-38)
  {
    v10 = 4294967126;
  }

  else
  {
    v10 = 0;
  }

  CMMThrowExceptionOnError(v10);
  (*a1)[0][0] = (v12 * v8 - v7 * v5) / v9;
  (*a1)[0][1] = (v7 * v3 - v2 * v8) / v9;
  (*a1)[0][2] = (v2 * v5 - v12 * v3) / v9;
  (*a1)[1][0] = (v6 * v5 - v4 * v8) / v9;
  (*a1)[1][1] = (v13 * v8 - v6 * v3) / v9;
  (*a1)[1][2] = (v14 + v4 * v3) / v9;
  (*a1)[2][0] = (v4 * v7 - v6 * v12) / v9;
  (*a1)[2][1] = (v6 * v2 - v13 * v7) / v9;
  result = (v13 * v12 - v4 * v2) / v9;
  (*a1)[2][2] = result;
  return result;
}

__n128 CMMConvInvMatrix::CMMConvInvMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  if (a3)
  {
    *(a3 + 16) = a1;
  }

  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 33) = 0;
  *a1 = &unk_1F0E072B8;
  *(a1 + 56) = &unk_1F0E071F8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 160) = *(a2 + 104);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = v5;
  *(a1 + 48) = 0;
  *(a1 + 32) = 256;
  *(a1 + 35) = 0;
  *a1 = &unk_1F0E07530;
  *(a1 + 168) = &unk_1F0E071F8;
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 208) = v9;
  *(a1 + 176) = v8;
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  *(a1 + 272) = *(a2 + 104);
  *(a1 + 240) = v11;
  *(a1 + 256) = v12;
  *(a1 + 224) = v10;
  *(a1 + 168) = &unk_1F0E07218;
  *(a1 + 276) = *(a2 + 108);
  result = *(a2 + 124);
  v14 = *(a2 + 140);
  v15 = *(a2 + 156);
  *(a1 + 340) = *(a2 + 172);
  *(a1 + 308) = v14;
  *(a1 + 324) = v15;
  *(a1 + 292) = result;
  return result;
}

unint64_t CMMMatrix::InitializeRGBMatrix(CMMMatrix *this, const CMMMatrix *a2, const CMMMatrix *a3, float a4)
{
  v4 = 0;
  v39[3] = *MEMORY[0x1E69E9840];
  v5 = a3 + 8;
  *(this + 26) = *(a2 + 26) * *(a3 + 26);
  v6 = a2 + 8;
  v7 = (a3 + 44);
  v8 = this + 8;
  v9 = this + 44;
  do
  {
    v10 = 0;
    v11 = a2;
    do
    {
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      v15 = v7;
      do
      {
        v13 += *(v11 + v12 + 8) * *(v15 - 9);
        v16 = *v15++;
        v14 = v14 + (v16 * *(v11 + v12 + 44));
        v12 += 12;
      }

      while (v12 != 36);
      result = (v13 + 0x8000) >> 16;
      *&v8[12 * v4 + 4 * v10] = result;
      *&v9[12 * v4 + 4 * v10++] = v14;
      v11 = (v11 + 4);
    }

    while (v10 != 3);
    ++v4;
    v7 += 3;
  }

  while (v4 != 3);
  v18 = 0;
  memset(v39, 0, 24);
  memset(v38, 0, sizeof(v38));
  do
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v20 += *&v6[v19] << 24;
      v19 += 4;
    }

    while (v19 != 12);
    v39[v18++] = v20 >> 16;
    v6 += 12;
  }

  while (v18 != 3);
  for (i = 0; i != 3; ++i)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v23 += v39[v22] * *&v5[4 * v22];
      ++v22;
    }

    while (v22 != 3);
    v38[i] = (v23 + 0x8000) >> 16;
    v5 += 12;
  }

  v24 = 0;
  memset(v37, 0, sizeof(v37));
  v25 = v8;
  do
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v27 += *&v25[v26] << 24;
      v26 += 4;
    }

    while (v26 != 12);
    v37[v24++] = (v27 >> 16);
    v25 += 12;
  }

  while (v24 != 3);
  for (j = 0; j != 3; ++j)
  {
    v29 = 0;
    v30 = v38[j] / v37[j];
    do
    {
      *&v8[v29] = vcvtmd_s64_f64(v30 * *&v8[v29] + 0.5);
      v29 += 4;
    }

    while (v29 != 12);
    v8 += 12;
  }

  for (k = 0; k != 3; ++k)
  {
    v32 = 0;
    v33 = 0.0;
    do
    {
      v33 = v33 + *&v9[v32];
      v32 += 4;
    }

    while (v32 != 12);
    if (v33 != 0.0 && v33 != 1.0)
    {
      v35 = 0;
      v36 = 1.0 / v33;
      do
      {
        *&v9[v35] = v36 * *&v9[v35];
        v35 += 4;
      }

      while (v35 != 12);
    }

    v9 += 12;
  }

  return result;
}

void ConversionManager::AddInvMatrixConv(uint64_t a1, CMMXYZTag *(*a2)[3], CMMMemMgr *a3, const char *a4, int a5, uint64_t a6, const __CFDictionary *a7)
{
  v9 = 0;
  v10 = 0;
  v87 = 0;
  v141 = *MEMORY[0x1E69E9840];
  v138 = 0;
  v139 = 0;
  memset(v140, 0, sizeof(v140));
  v137 = 0;
  memset(v136, 0, sizeof(v136));
  LODWORD(v136[0]) = 1;
  v11 = a3 + 8;
  v134 = 0;
  v135 = 0;
  v85 = a4;
  v89 = a4 ^ 1;
  v133 = 0;
  memset(v132, 0, sizeof(v132));
  LODWORD(v132[0]) = 1;
  v131 = 0;
  memset(v130, 0, sizeof(v130));
  LODWORD(v130[0]) = 1;
  v88 = *MEMORY[0x1E695E4D0];
  do
  {
    v12 = *(*&v11[8 * v10] + 52);
    if (v12 == 1212958496)
    {
      if (a5 == 14)
      {
        ConversionManager::AddHLGPCSToDev(a1, v10, &v139, &v138, a3, 14, a6, a7);
      }

      else if (a5 != 10)
      {
        if (a5 != 2)
        {
          __assert_rtn("AddInvMatrixConv", "CMMConversionManager.cpp", 2575, "0");
        }

        ConversionManager::AddHLGPCSToDev(a1, v10, &v139, &v138, a3, 2, a6, a7);
      }

LABEL_66:
      v24 = v138;
      if (v139)
      {
        v21 = v139;
      }

      else
      {
        v21 = v138;
      }

      v139 = v21;
      if (!v138)
      {
        v9 = 0;
        v47 = 1;
        goto LABEL_82;
      }

      goto LABEL_70;
    }

    if (v12 != 1347493920)
    {
      *&v111 = 0;
      if ((*(a1 + 43) & 1) == 0 && *(a1 + 44) != 1)
      {
LABEL_26:
        InvertedTRC = CMMRGBCurves::MakeInvertedTRC(a3, v136, *(a1 + 8), v10, &v111, 1.0);
        v23 = (*(**&v11[8 * v10] + 40))(*&v11[8 * v10]);
        if (*(a1 + 43) == 1)
        {
          DWORD1(v136[0]) = 15;
        }

        goto LABEL_28;
      }

      if (*(a1 + 58) == 1 && (*(a1 + 49) & 1) == 0)
      {
        InvertedTRC = v135;
        if (!v135)
        {
          v50 = 1.0;
          if (*(a1 + 52) == 1)
          {
            v87 |= *(a1 + 40) == 0;
            if (*(a1 + 40))
            {
              v50 = 1.0;
            }

            else
            {
              v50 = 0.0049261;
            }
          }

          if (*(a1 + 53) == 1)
          {
            if (CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::predicate[0] != -1)
            {
              dispatch_once(CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::predicate, &__block_literal_global_976);
            }

            if (a7 && CFDictionaryContainsKey(a7, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
            {
              CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled = CFDictionaryGetValue(a7, kColorSyncUseBT1886ForCoreVideoGamma) == v88;
            }

            v51 = CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled;
          }

          else
          {
            v51 = 1;
          }

          *&v122 = 0;
          v120 = 0u;
          v121 = 0u;
          valuePtr = 0u;
          v119 = 0u;
          CMMITUBT1886InvEOTF::CMMITUBT1886InvEOTF(&valuePtr, v51 & 1, v50);
          TRC = CMMITUBT1886EOTF::MakeTRC(&valuePtr, v136, *(a1 + 8), v54);
          goto LABEL_108;
        }
      }

      else
      {
        if (!*(a1 + 43) || *(a1 + 61) != 1 || (*(a1 + 49) & 1) != 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 52))
        {
          InvertedTRC = v135;
          if (!v135)
          {
            v87 |= *(a1 + 40) == 0;
            if (*(a1 + 40))
            {
              v48 = 1.0;
            }

            else
            {
              v48 = 0.0049261;
            }

            v49 = *(a1 + 53) ^ 1;
            goto LABEL_105;
          }
        }

        else
        {
          if ((*(a1 + 53) & 1) == 0)
          {
            goto LABEL_26;
          }

          InvertedTRC = v135;
          if (!v135)
          {
            v49 = 0;
            v48 = 1.0;
LABEL_105:
            *&v122 = 0;
            v120 = 0u;
            v121 = 0u;
            valuePtr = 0u;
            v119 = 0u;
            CMMITUBT1886InvEOTF::CMMITUBT1886InvEOTF(&valuePtr, v49 & 1, v48);
            TRC = CMMITUBT1886EOTF::MakeTRC(&valuePtr, v136, *(a1 + 8), v52);
LABEL_108:
            InvertedTRC = TRC;
            v23 = 0;
            v135 = TRC;
            goto LABEL_28;
          }
        }
      }

      v35 = InvertedTRC[1];
      v23 = 0;
      if (v35)
      {
        InvertedTRC[1] = v35 + 1;
      }

LABEL_28:
      v24 = CMMBase::NewInternal(0xB0, *(a1 + 8), a3, a4);
      v25 = v23;
      v26 = v111;
      CMMConvInvertedTRC::CMMConvInvertedTRC(v24, v10, InvertedTRC, v25, v111, v136, v9, 3, v89);
      if (InvertedTRC && (v27 = InvertedTRC[1]) != 0 && (v28 = v27 - 1, (InvertedTRC[1] = v28) == 0))
      {
        (*(*InvertedTRC + 8))(InvertedTRC);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else if (v26)
      {
LABEL_32:
        v29 = v26[1];
        if (v29)
        {
          v30 = v29 - 1;
          v26[1] = v30;
          if (!v30)
          {
            (*(*v26 + 8))(v26);
          }
        }
      }

      if (v139)
      {
        v21 = v139;
      }

      else
      {
        v21 = v24;
      }

      v138 = v24;
      v139 = v21;
LABEL_70:
      v9 = v24;
      goto LABEL_71;
    }

    if (a5 == 10)
    {
      if (a6)
      {
        if (!v10)
        {
          v31 = *(a6 + 16);
          if (v31)
          {
            v32 = vcvts_n_f32_s32(bswap32(*(*(v31 + 40) + 12)), 0x10uLL);
LABEL_54:
            if (v32 == 0.0)
            {
              v36 = v32;
            }

            else
            {
              v36 = v32 / 100.0;
            }

            if (a7)
            {
              if (CFDictionaryContainsKey(a7, @"com.apple.cmm.PQInvOOTFOpticalScale") == 1)
              {
                Value = CFDictionaryGetValue(a7, @"com.apple.cmm.PQInvOOTFOpticalScale");
                if (Value)
                {
                  LODWORD(valuePtr) = 0;
                  v38 = CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
                  v39 = *&valuePtr;
                  if (!v38)
                  {
                    v39 = 0.0;
                  }

                  if (v39 != 0.0)
                  {
                    v36 = v39;
                  }
                }
              }
            }

            *(&v112 + 1) = 0x100000001;
            *(&v111 + 1) = LODWORD(v36);
            *&v111 = &unk_1F0E09720;
            *&v112 = 0xD00000001;
            *&v113 = 0;
            DWORD2(v113) = 1054168405;
            *(&v113 + 3) = v36;
            *&v115 = 0;
            v114 = 0uLL;
            v135 = CMMITUBT1886EOTF::MakeTRC(&v111, v132, *(a1 + 8), a4);
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            valuePtr = 0u;
            v119 = 0u;
            CMMParaCurveTag::CMMParaCurveTag(&valuePtr, 1885434465, "para", 32, 0);
            *&valuePtr = off_1F0E08FA8;
            v40 = CMMParaCurveTag::MakeInvertedTRC(&valuePtr, v130, *(a1 + 8));
            DWORD1(v130[0]) = 15;
            v134 = v40;
            CMMTag::~CMMTag(&valuePtr);
LABEL_65:
            ConversionManager::AddTRCSequence(a1, v10, &v139, &v138, v132, &v135, v130, &v134);
            goto LABEL_66;
          }

LABEL_53:
          v32 = 100.0;
          goto LABEL_54;
        }
      }

      else if (!v10)
      {
        goto LABEL_53;
      }

      v33 = v135[1];
      if (v33)
      {
        v135[1] = v33 + 1;
      }

      v34 = *(v134 + 1);
      if (v34)
      {
        *(v134 + 1) = v34 + 1;
      }

      goto LABEL_65;
    }

    if (a5 != 2)
    {
      __assert_rtn("AddInvMatrixConv", "CMMConversionManager.cpp", 2562, "0");
    }

    if (ColorSyncOptionsDisplayReferredToneMappingRequested(a7))
    {
      goto LABEL_66;
    }

    v13 = a7;
    v14 = 0.0203;
    if ((ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a7) & 1) == 0)
    {
      v14 = default_PQInvEOTFOpticalScale(a7, *(a1 + 56));
      v13 = a7;
    }

    v15 = custom_PQInvEOTFOpticalScale(v13, v14);
    if (v15 != 0.0)
    {
      v14 = v15;
    }

    *&v121 = 0;
    v119 = 0u;
    v120 = 0u;
    valuePtr = 0u;
    LODWORD(valuePtr) = 1;
    *&v111 = 0;
    v16 = CMMRGBCurves::MakeInvertedTRC(a3, &valuePtr, *(a1 + 8), v10, &v111, v14);
    v19 = CMMBase::NewInternal(0xB8, *(a1 + 8), v17, v18);
    v20 = CMMConvInvertedTRC::CMMConvInvertedTRC(v19, v10, v16, 0, v111, &valuePtr, v9, 3, 1);
    *v20 = &unk_1F0E06FC8;
    v20[44] = v14;
    if (v139)
    {
      v21 = v139;
    }

    else
    {
      v21 = v20;
    }

    v138 = v20;
    v139 = v21;
    v9 = v20;
LABEL_71:
    {
      v42 = CMMTable::UInt8Data(*(v41[8] + 16), *(v41[8] + 24));
      v43 = 4098;
      do
      {
        v44 = v43 - 1;
        if (v43 == 1)
        {
          v46 = 0x1000000;
          goto LABEL_80;
        }

        v45 = *(v42 + 4 * (v43-- - 2));
      }

      while (v45 > 0xFFFFFF);
      if (v44 >= 0x1000)
      {
        v44 = 4096;
      }

      v46 = v44 << 12;
LABEL_80:
      v47 = 0;
      v140[v10] = v46;
    }

    else
    {
      v47 = 0;
    }

LABEL_82:
    ++v10;
  }

  while (v10 != 3);
  v129 = 0;
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
  valuePtr = 0u;
  CMMInvMatrix::CMMInvMatrix(&valuePtr, a2, v140);
  v57 = CMMBase::NewInternal(0x160, *(a1 + 8), v55, v56);
  CMMConvInvMatrix::CMMConvInvMatrix(v57, &valuePtr, *(a1 + 24));
  *v58 = &unk_1F0E0BA98;
  *(a1 + 24) = v58;
  if (a7 && (CFDictionaryGetValue(a7, @"com.apple.cmm.SkipPQEETF") == v88 ? (v59 = 1) : (v59 = CFDictionaryGetValue(a7, @"com.apple.cmm.SkipToneMappingForBT2100") == v88), *(a1 + 52) == 1))
  {
    v60 = CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyToneMappingForBT2100") != v88;
  }

  else
  {
    v59 = 0;
    v60 = 1;
  }

  v61 = ColorSyncOptionsDisplayReferredToneMappingRequested(a7);
  v62 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a7);
  FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(0, a7);
  FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(0, a7);
  v67 = 1;
  if ((v62 & 1) == 0 && (v61 & 1) == 0)
  {
    v67 = (FlexTRCOptions | FlexLumaScalingOptions) != 0;
  }

  if ((*(a1 + 42) & 1) != 0 || ((*(a1 + 41) | v67) & 1) != 0 || (*(a1 + 43) & 1) != 0 || v85 & 1 | ((*(a1 + 52) & 1) == 0) | v59)
  {
    if (((v60 | v87) & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else if ((v87 & 1) == 0)
  {
LABEL_124:
    v68 = CMMBase::NewInternal(0x38, *(a1 + 8), v65, v66);
    v69 = *(a1 + 24);
    *(v68 + 2) = 1;
    v68[2] = 0;
    v68[3] = v69;
    if (v69)
    {
      *(v69 + 16) = v68;
    }

    v68[5] = 0x3FFFFF0000000000;
    *v68 = &unk_1F0E0A168;
    *(v68 + 12) = 1000434481;
    *(v68 + 36) = 0;
    *(v68 + 8) = 256;
    *(a1 + 24) = v68;
  }

  if (a7)
  {
    if (CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyYCCGammaScaling") == v88)
    {
      v74 = *(a6 + 56);
      v95 = *(a6 + 40);
      v96 = v74;
      LODWORD(v97) = *(a6 + 72);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      CMMMatrix::CMMMatrix(&v111, &v95);
      CMMMatrix::MakeMatrixConv(&v111, *(a1 + 8), *(a1 + 24), v75);
      *(a1 + 24) = v76;
      v108 = 1987212643;
      v109 = 0x1000000;
      v110 = 14337;
      v107 = 0u;
      memset(v106, 0, sizeof(v106));
      CMMCurveTag::CMMCurveTag(v106, 0, &v108, 14, 0);
      *&v106[0] = &unk_1F0E090E0;
      DWORD2(v107) = 1067198710;
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      LODWORD(v102) = 1;
      v77 = CMMCurveTag::MakeTRC(v106, &v102, *(a1 + 8), 0);
      *&v102 = 1;
      HIDWORD(v102) = 1;
      *&v103 = 0;
      BYTE8(v102) = 1;
      *(&v103 + 1) = DWORD2(v107) | 0x3F80000000000000;
      v105 = 0;
      v104 = 0uLL;
      v80 = CMMBase::NewInternal(0xA8, *(a1 + 8), v78, v79);
      CMMConvTRC::CMMConvTRC(v80, 0, v77, 0, &v102, *(a1 + 24), 1, 1, 1.0, 1, 0);
      *(a1 + 24) = v80;
      v81 = *(a6 + 92);
      v93[0] = *(a6 + 76);
      v93[1] = v81;
      v94 = *(a6 + 108);
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      CMMMatrix::CMMMatrix(&v95, v93);
      CMMMatrix::MakeMatrixConv(&v95, *(a1 + 8), v80, v82);
      *(a1 + 24) = v83;
      CMMTag::~CMMTag(v106);
    }

    else if (CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyLuminanceScaling") == v88)
    {
      v72 = CMMBase::NewInternal(0x48, *(a1 + 8), v70, v71);
      v73 = *(a1 + 24);
      *(v72 + 2) = 1;
      v72[2] = 0;
      v72[3] = v73;
      if (v73)
      {
        *(v73 + 16) = v72;
      }

      v72[5] = 0x3F80000000000000;
      *(v72 + 33) = 16777217;
      *v72 = &unk_1F0E07C78;
      *(v72 + 12) = 1062284383;
      *(v72 + 13) = *(a6 + 24);
      *(v72 + 14) = *(a6 + 28);
      *(v72 + 15) = *(a6 + 32);
      *(v72 + 16) = *(a6 + 36);
      *(a1 + 24) = v72;
    }
  }

  v84 = *(a1 + 24);
  if (!*(a1 + 16))
  {
    *(a1 + 16) = v84;
  }

  *(v84 + 16) = v21;
  if (v21)
  {
    *(v21 + 3) = v84;
  }

  if ((v47 & 1) == 0)
  {
    *(a1 + 24) = v9;
  }
}

__n128 CMMConvGrayToRGBMatrix::CMMConvGrayToRGBMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a3 + 16) = a1;
  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 33) = 0;
  *a1 = &unk_1F0E072B8;
  *(a1 + 56) = &unk_1F0E071F8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  result = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 160) = *(a2 + 104);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = result;
  *(a1 + 48) = 1;
  *(a1 + 32) = 256;
  *(a1 + 35) = 0;
  *a1 = &unk_1F0E0A918;
  return result;
}

BOOL CMMMatrix::IsFloatingPointNOP(CMMMatrix *this)
{
  if (*(this + 26) != 1.0)
  {
    return 0;
  }

  v2 = 0;
  v3 = this + 44;
  v4 = this + 92;
  v5 = this + 44;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      if (v2 == i)
      {
        result = 0;
        v7 = *&v3[12 * v2 + 4 * v2];
        if (v7 < 0.99999 || v7 > 1.00001)
        {
          return result;
        }
      }

      else if (fabsf(*&v5[4 * i]) > 0.00001)
      {
        return 0;
      }
    }

    v8 = fabsf(*&v4[4 * v2]);
    result = v8 <= 0.00001;
    ++v2;
    v5 += 12;
  }

  while (v8 <= 0.00001 && v2 != 3);
  return result;
}

uint64_t CMMConvTRC::Collapse@<X0>(CMMConvTRC *this@<X0>, CMMMemMgr *a2@<X1>, int a3@<W8>)
{
  v5 = this;
  do
  {
    v5 = *(v5 + 2);
    if (!v5)
    {
      return (v5 != 0) & a3;
    }

    if (!v6)
    {
      if (!v11)
      {
        goto LABEL_99;
      }

      v62 = 0;
      v12 = v11[8];
      v61 = v11[9];
      LODWORD(v62) = *(v11 + 40);
      v13 = v11[6];
      v59 = v11[7];
      v60 = v12;
      v14 = v11[5];
      *&v58[8] = v11[4];
      *&v58[24] = v14;
      *v58 = &unk_1F0E071F8;
      *&v58[40] = v13;
      v15 = *(this + 18);
      if (v15 <= 2)
      {
        if (*&v58[4 * v15 + 8])
        {
          goto LABEL_99;
        }

        v16 = &v58[4 * v15];
        if (*(v16 + 5) || *(v16 + 8))
        {
          goto LABEL_99;
        }
      }

      goto LABEL_11;
    }

    v7 = v6;
    a3 = v6[18];
  }

  while (a3 != *(this + 18));
  v9 = v8;
  v10 = *(this + 23);
  if (v10 > 11)
  {
    if (v10 == 12)
    {
      if (*(v7 + 92) == 13)
      {
        if (*(this + 29) == *(v7 + 116))
        {
          goto LABEL_48;
        }

        goto LABEL_94;
      }
    }

    else if (v10 == 14 && *(v7 + 92) == 15)
    {
LABEL_48:
      (*(*this + 72))(this);
      (*(*v7 + 72))(v7);
      if ((*(this + 35) & 1) != 0 || (*(this + 36) & 1) != 0 || (*(v7 + 35) & 1) != 0 || *(v7 + 36) == 1)
      {
        if (CMMInitializeLinearGammaTable(void)::predicate != -1)
        {
          dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
        }

        *v58 = *CMMLinearGammaFloatLutInfo;
        *&v58[16] = *(CMMLinearGammaFloatLutInfo + 16);
        *&v58[32] = *(CMMLinearGammaFloatLutInfo + 32);
        *&v58[48] = *(CMMLinearGammaFloatLutInfo + 48);
        v35 = CMMLinearGammaTable;
        v36 = *(CMMLinearGammaTable + 8);
        if (v36)
        {
          *(CMMLinearGammaTable + 8) = v36 + 1;
        }

        v37 = *(v7 + 16);
        v38 = CMMBase::NewInternal(0xA8, a2, v33, v34);
        v39 = CMMConvTRC::CMMConvTRC(v38, *(this + 18), v35, 0, v58, v7, *(this + 19), 1, 1.0, 1, 1);
        *(v39 + 16) = v37;
        if (v37)
        {
          *(v37 + 24) = v39;
        }

        (*(*this + 32))(this);
        (*(*this + 56))(this);
        (*(*v7 + 32))(v7);
        (*(*v7 + 56))(v7);
      }

      goto LABEL_59;
    }

LABEL_25:
    if (v8 && (v8[160] & 1) == 0 && (v17 = *(v8 + 21)) != 0 && CMMTable::UInt8Data(*(v17 + 16), *(v17 + 24)))
    {
      if ((v9[160] & 1) != 0 || (v18 = *(v9 + 21)) == 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = CMMTable::UInt8Data(*(v18 + 16), *(v18 + 24));
      }

      v40 = CMMTable::UInt8Data(*(*(this + 8) + 16), *(*(this + 8) + 24));
      if (v19)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = v41;
      v43 = v42 ^ 1;
      if (v40 == v19)
      {
        v43 = 1;
        goto LABEL_93;
      }

      if ((v42 & 1) == 0)
      {
        v44 = 4097;
        while (1)
        {
          v46 = *v40++;
          v45 = v46;
          v47 = *v19++;
          v48 = v45 - v47;
          if (v48 < 0)
          {
            v48 = -v48;
          }

          if (v48 >= 2)
          {
            break;
          }

          if (!--v44)
          {
            goto LABEL_48;
          }
        }

LABEL_94:
        if (*(v7 + 92) == 7 && *(this + 36) == *(v7 + 36))
        {
          (*(*v7 + 72))(v7);
          goto LABEL_59;
        }

        if (*(this + 23) != 7 || *(this + 36) != *(v7 + 36))
        {
          goto LABEL_99;
        }

LABEL_11:
        (*(*this + 72))(this);
LABEL_59:
        LOBYTE(a3) = 1;
        return (v5 != 0) & a3;
      }
    }

    else
    {
      if (!v20 || (v23 = v20, (v20[160] & 1) != 0) || (v24 = *(v20 + 21)) == 0 || !CMMTable::UInt8Data(*(v24 + 16), *(v24 + 24)))
      {
        v27 = CMMBase::NewInternal(0x8008, a2, v21, v22);
        v28 = CMMTable::UInt8Data(*(*(v7 + 64) + 16), *(*(v7 + 64) + 24));
        memcpy(v27, v28, 0x4004uLL);
        InvertLUT(v27, v27 + 4097);
        v29 = CMMTable::UInt8Data(*(*(this + 8) + 16), *(*(this + 8) + 24));
        v30 = v29;
        if (v29 == v27 || !v29)
        {
          CMMBase::operator delete(v27);
          if (v30)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v31 = 0;
          while (1)
          {
            v32 = *(v29 + v31 * 4) - v27[v31];
            if (v32 < 0)
            {
              v32 = v27[v31] - *(v29 + v31 * 4);
            }

            if (v32 >= 2)
            {
              break;
            }

            if (++v31 == 4097)
            {
              CMMBase::operator delete(v27);
              goto LABEL_48;
            }
          }

          CMMBase::operator delete(v27);
        }

        goto LABEL_94;
      }

      if ((v23[160] & 1) != 0 || (v25 = *(v23 + 21)) == 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = CMMTable::UInt8Data(*(v25 + 16), *(v25 + 24));
      }

      v49 = CMMTable::UInt8Data(*(*(v7 + 64) + 16), *(*(v7 + 64) + 24));
      if (v26)
      {
        v50 = v49 == 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v50;
      v43 = v51 ^ 1;
      if (v26 == v49)
      {
        v43 = 1;
      }

      else if ((v51 & 1) == 0)
      {
        v52 = 4097;
        while (1)
        {
          v54 = *v26++;
          v53 = v54;
          v55 = *v49++;
          v56 = v53 - v55;
          if (v56 < 0)
          {
            v56 = -v56;
          }

          if (v56 >= 2)
          {
            goto LABEL_94;
          }

          if (!--v52)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_93:
    if (v43)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

  if (v10 == 9)
  {
    if (*(v7 + 92) != 8)
    {
      goto LABEL_99;
    }

    goto LABEL_48;
  }

  if (v10 != 11)
  {
    goto LABEL_25;
  }

LABEL_99:
  LOBYTE(a3) = 0;
  return (v5 != 0) & a3;
}

CMMTable *CMMCurveTag::MakeTRC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = a4;
  v8 = (*(*a1 + 40))(a1);
  v11 = (*(*a1 + 48))(a1);
  if (a2)
  {
    *(a2 + 4) = 0;
  }

  if (!(v8 | v4))
  {
    if (CMMInitializeLinearGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_13:
        v16 = CMMLinearGammaTable;
        goto LABEL_14;
      }

LABEL_12:
      v14 = *(CMMLinearGammaFloatLutInfo + 16);
      v13 = *(CMMLinearGammaFloatLutInfo + 32);
      v15 = *CMMLinearGammaFloatLutInfo;
      *(a2 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
      *(a2 + 16) = v14;
      *(a2 + 32) = v13;
      *a2 = v15;
      goto LABEL_13;
    }

LABEL_42:
    dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v4 || v8 != 1)
  {
    if (v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *(*(*a1 + 48))(a1);
    if (v12 == 1)
    {
      if (CMMInitializeLinearGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_42;
    }

    if ((v12 & 0xFFFFFEFF) == 0xCC01)
    {
      if (CMMInitializeOnePointEightGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
LABEL_25:
          v16 = CMMOnePointEightGammaTable;
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&CMMInitializeOnePointEightGammaTable(void)::predicate, &__block_literal_global_1018);
        if (!a2)
        {
          goto LABEL_25;
        }
      }

      v27 = *(CMMOnePointEightGammaFloatLutInfo + 16);
      v26 = *(CMMOnePointEightGammaFloatLutInfo + 32);
      v28 = *CMMOnePointEightGammaFloatLutInfo;
      *(a2 + 48) = *(CMMOnePointEightGammaFloatLutInfo + 48);
      *(a2 + 16) = v27;
      *(a2 + 32) = v26;
      *a2 = v28;
      goto LABEL_25;
    }

    if (v12 == 13058)
    {
      if (CMMInitializeTwoPointTwoGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  if (IsSRGBGammaCurve(v8, v11))
  {
    if (CMMInitializeSRGBGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_34:
        v16 = CMMsRGBGammaTable;
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    v30 = *(CMMsRGBGammaFloatLutInfo + 16);
    v29 = *(CMMsRGBGammaFloatLutInfo + 32);
    v31 = *CMMsRGBGammaFloatLutInfo;
    *(a2 + 48) = *(CMMsRGBGammaFloatLutInfo + 48);
    *(a2 + 16) = v30;
    *(a2 + 32) = v29;
    *a2 = v31;
    goto LABEL_34;
  }

  v35 = 2.2;
  if (IsPureGammaCurve(v8, v11, &v35) && v35 > 2.19 && v35 < 2.21)
  {
    if (CMMInitializeTwoPointTwoGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_41:
        v16 = CMMTwoPointTwoGammaTable;
LABEL_14:
        v17 = *(v16 + 1);
        if (v17)
        {
          *(v16 + 1) = v17 + 1;
        }

        return v16;
      }

LABEL_40:
      v33 = *(CMMTwoPointTwoGammaFloatLutInfo + 16);
      v32 = *(CMMTwoPointTwoGammaFloatLutInfo + 32);
      v34 = *CMMTwoPointTwoGammaFloatLutInfo;
      *(a2 + 48) = *(CMMTwoPointTwoGammaFloatLutInfo + 48);
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a2 = v34;
      goto LABEL_41;
    }

LABEL_48:
    dispatch_once(&CMMInitializeTwoPointTwoGammaTable(void)::predicate, &__block_literal_global_1008);
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_18:
  v16 = CMMBase::NewInternal(0x28, a3, v9, v10);
  *v16 = &unk_1F0E09180;
  *(v16 + 1) = 1;
  *(v16 + 3) = 0;
  *(v16 + 4) = 21512;
  v21 = CMMBase::NewInternal(0x5408, a3, v19, v20);
  *(v16 + 2) = v21;
  v22 = CMMTable::UInt8Data(v21, *(v16 + 3));
  CMMCurveTag::MakeLut(a1, a2, v22, v4);
  v23 = CMMTable::UInt8Data(*(v16 + 2), *(v16 + 3));
  MakeLookups(v23);
  if (a2 && !*a2)
  {
    *(a2 + 16) = CMMTable::MakeFloatCopy(v16, a3, v24, v25);
  }

  return v16;
}

uint64_t CMMConvMatrix::Collapse(CMMConvMatrix *this, CMMMemMgr *a2, CMMConvNode **a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (!v3 || ((*(*this + 64))(this, a2, a3) & 1) != 0 || ((*(*v3 + 40))(v3) & 1) != 0)
  {
    return 0;
  }

  v9 = v7;
  if (v7 && !*(this + 17) && !*(this + 18) && !*(this + 19) && !*(this + 21) && !*(this + 22) && !*(this + 23) && !*(this + 34) && !*(this + 35) && !*(this + 36) && *(this + 26) == 0.0 && *(this + 27) == 0.0 && *(this + 28) == 0.0 && *(this + 30) == 0.0 && *(this + 31) == 0.0 && *(this + 32) == 0.0 && *(this + 37) == 0.0 && *(this + 38) == 0.0 && *(this + 39) == 0.0)
  {
    *(this + 32) = 1;
    *(v7 + 32) = 1;
    *(&v115[6] + 1) = 0;
    *&v115[0] = &unk_1F0E071F8;
    v99 = *(v7 + 6);
    *(&v115[3] + 8) = *(v7 + 7);
    v100 = *(v7 + 9);
    *(&v115[4] + 8) = *(v7 + 8);
    *(&v115[5] + 8) = v100;
    DWORD2(v115[6]) = *(v7 + 40);
    v101 = *(v7 + 5);
    *(v115 + 8) = *(v7 + 4);
    *(&v115[1] + 8) = v101;
    v102 = *(this + 16);
    v103 = SDWORD1(v115[1]) * v102;
    v104 = *(this + 20);
    v105 = v101 * v104;
    DWORD2(v115[0]) = (v102 * SDWORD2(v115[0]) + 0x8000) >> 16;
    HIDWORD(v115[0]) = (v104 * SHIDWORD(v115[0]) + 0x8000) >> 16;
    *(&v115[2] + 8) = v99;
    LODWORD(v115[2]) = (SDWORD2(v101) * v102 + 0x8000) >> 16;
    DWORD1(v115[2]) = (SHIDWORD(v101) * v104 + 0x8000) >> 16;
    v106 = *(this + 24);
    v107 = v106 * SLODWORD(v115[1]);
    v108 = SDWORD1(v101) * v106;
    v109 = v99 * v106;
    LODWORD(v99) = *(this + 25);
    v110 = *(this + 29);
    LODWORD(v101) = *(this + 33);
    v111.i64[0] = __PAIR64__(v110, v99);
    v111.i64[1] = __PAIR64__(v99, v101);
    *(&v115[2] + 12) = vmulq_f32(v111, *(&v115[2] + 12));
    v111.i64[0] = __PAIR64__(v101, v110);
    v111.i64[1] = __PAIR64__(v110, v99);
    *(&v115[3] + 12) = vmulq_f32(v111, *(&v115[3] + 12));
    *(&v115[4] + 3) = *&v101 * *(&v115[4] + 3);
    LODWORD(v115[1]) = (v107 + 0x8000) >> 16;
    DWORD1(v115[1]) = (v103 + 0x8000) >> 16;
    DWORD2(v115[1]) = (v105 + 0x8000) >> 16;
    HIDWORD(v115[1]) = (v108 + 0x8000) >> 16;
    DWORD2(v115[2]) = (v109 + 0x8000) >> 16;
    v112 = *(v7 + 2);
    CMMMatrix::MakeMatrixConv(v115, a2, v7, v8);
    v114 = v113;
    *(v113 + 16) = v112;
    if (v112)
    {
      *(v112 + 24) = v113;
    }

    if ((*(*this + 40))(this))
    {
      (*(*v114 + 24))(v114);
    }

    if ((*(*v9 + 64))(v9))
    {
      (*(*v114 + 48))(v114);
    }

    return 1;
  }

  if (!v10)
  {
    if (v30)
    {
      v31 = v30;
      {
        *(this + 32) = 1;
        v18 = v31 + 16;
        v17 = *(v31 + 2);
        v31[32] = 1;
        memset(&v115[5], 0, 32);
        DWORD2(v115[6]) = 1065353216;
        memset(v115 + 8, 0, 72);
        *&v115[0] = &unk_1F0E07278;
        CMMMatrix::InitializeGrayMatrix(v115, this + 56, (v31 + 56));
        v24 = CMMBase::NewInternal(0xA8, a2, v32, v33);
        *(v24 + 2) = 1;
        v24[2] = 0;
        v24[3] = v31;
        v24[5] = 0x3F80000000000000;
        *(v24 + 33) = 0;
        *v24 = &unk_1F0E072B8;
        v24[7] = &unk_1F0E071F8;
        v34 = *(&v115[1] + 8);
        *(v24 + 4) = *(v115 + 8);
        *(v24 + 5) = v34;
        v35 = *(&v115[3] + 8);
        *(v24 + 6) = *(&v115[2] + 8);
        *(v24 + 7) = v35;
        v36 = *(&v115[5] + 8);
        *(v24 + 8) = *(&v115[4] + 8);
        *(v24 + 9) = v36;
        *(v24 + 40) = DWORD2(v115[6]);
        *(v24 + 24) = 256;
        *(v24 + 16) = 256;
        *(v24 + 35) = 0;
        v29 = &unk_1F0E0AA20;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v52 = *(this + 3);
        if (v52)
        {
          if (v53)
          {
            v54 = v53;
            {
              v63 = *(v31 + 2);
              if (v63)
              {
                if (v64)
                {
                  v65 = v64;
                  if ((*(v64 + 160) & 1) != 0 || (v66 = *(v64 + 21)) == 0)
                  {
                    v67 = 0;
                  }

                  else
                  {
                    v67 = CMMTable::UInt8Data(*(v66 + 16), *(v66 + 24));
                  }

                  v68 = CMMTable::UInt8Data(*(v54[8] + 16), *(v54[8] + 24));
                  if (v67)
                  {
                    v69 = v68 == 0;
                  }

                  else
                  {
                    v69 = 1;
                  }

                  v70 = v69;
                  if (v68 == v67 || (v70 & 1) != 0)
                  {
                    if (v68 == v67 || v70 != 1)
                    {
LABEL_87:
                      (*(*v54 + 72))(v54);
                      (*(*v65 + 72))(v65);
                    }
                  }

                  else
                  {
                    v71 = 4097;
                    while (1)
                    {
                      v73 = *v68++;
                      v72 = v73;
                      v74 = *v67++;
                      v75 = v72 - v74;
                      if (v75 < 0)
                      {
                        v75 = -v75;
                      }

                      if (v75 >= 2)
                      {
                        break;
                      }

                      if (!--v71)
                      {
                        goto LABEL_87;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        *(this + 32) = 1;
        v18 = v31 + 16;
        v17 = *(v31 + 2);
        v31[32] = 1;
        memset(&v115[5], 0, 32);
        DWORD2(v115[6]) = 1065353216;
        memset(v115 + 8, 0, 72);
        *&v115[0] = &unk_1F0E07298;
        CMMMatrix::InitializeGrayMatrix(v115, this + 56, (v31 + 56));
        v24 = CMMBase::NewInternal(0xA8, a2, v55, v56);
        *(v24 + 2) = 1;
        v24[2] = 0;
        v24[3] = v31;
        v24[5] = 0x3F80000000000000;
        *(v24 + 33) = 0;
        *v24 = &unk_1F0E072B8;
        v24[7] = &unk_1F0E071F8;
        v57 = *(&v115[1] + 8);
        *(v24 + 4) = *(v115 + 8);
        *(v24 + 5) = v57;
        v58 = *(&v115[3] + 8);
        *(v24 + 6) = *(&v115[2] + 8);
        *(v24 + 7) = v58;
        v59 = *(&v115[5] + 8);
        *(v24 + 8) = *(&v115[4] + 8);
        *(v24 + 9) = v59;
        *(v24 + 40) = DWORD2(v115[6]);
        *(v24 + 24) = 257;
        *(v24 + 16) = 256;
        *(v24 + 35) = 0;
        v29 = &unk_1F0E0AB78;
      }

LABEL_61:
      *v24 = v29;
      *v18 = v24;
      v24[2] = v17;
      if (v17)
      {
        *(v17 + 24) = v24;
      }

      return 1;
    }

    if (v9)
    {
      result = CMMMatrix::Is3x3((this + 56));
      if (result)
      {
        result = CMMMatrix::Is3x3((v9 + 56));
        if (result)
        {

          return CMMConvMatrix::Collapse3x3(this, v9, a2);
        }
      }

      return result;
    }

    return 0;
  }

  v11 = v10;
  {
    if (!result)
    {
      return result;
    }

    v125 = 0;
    v124 = 0;
    if (*(this + 16) == 31595 && *(this + 19) == 0x8000 && *(this + 22) == 27030)
    {
      v39 = 0;
      *(&v115[6] + 1) = 0;
      v40 = *(v11 + 128);
      *(&v115[5] + 8) = *(v11 + 144);
      DWORD2(v115[6]) = *(v11 + 160);
      v41 = *(v11 + 96);
      *(&v115[3] + 8) = *(v11 + 112);
      *(&v115[4] + 8) = v40;
      v42 = *(v11 + 80);
      *(v115 + 8) = *(v11 + 64);
      *(&v115[1] + 8) = v42;
      *&v115[0] = &unk_1F0E071F8;
      v43 = v115 + 8;
      *(&v115[2] + 8) = v41;
      do
      {
        v44 = 0;
        v45 = 0;
        do
        {
          v45 += qword_19A9B02A8[v44] * *&v43[4 * v44];
          ++v44;
        }

        while (v44 != 3);
        v46 = 0x1000000 - ((v45 + 0x8000) >> 16);
        if (v46 < 0)
        {
          v46 = -v46;
        }

        *(&v124 + v39++) = v46 >> 8;
        v43 += 12;
      }

      while (v39 != 3);
      if (v124 <= 1 && SHIDWORD(v124) <= 1 && v125 < 2)
      {
        v47 = *(this + 3);
        if (v47)
        {
          if (v48)
          {
            v49 = v48;
            {
              v76 = *(v11 + 16);
              if (v76)
              {
                v116 = v77;
                if (v77)
                {
                  v78 = v77;
                  v79 = *(v77 + 2);
                  if (v79)
                  {
                    *&v117 = v80;
                    if (v80)
                    {
                      v81 = v80;
                      v82 = v80[2];
                      if (v82)
                      {
                        *(&v117 + 1) = v83;
                        if (v83)
                        {
                          if (!v78[18] && *(v81 + 18) == 1 && v83[18] == 2)
                          {
                            v84 = 0;
                            while (1)
                            {
                              v85 = *(&v116 + v84);
                              if ((*(v85 + 160) & 1) != 0 || (v86 = *(v85 + 168)) == 0)
                              {
                                v87 = 0;
                              }

                              else
                              {
                                v87 = CMMTable::UInt8Data(*(v86 + 16), *(v86 + 24));
                              }

                              v88 = CMMTable::UInt8Data(*(v49[8] + 16), *(v49[8] + 24));
                              v89 = !v87 || v88 == 0;
                              v90 = v89;
                              if (v88 != v87 && !v90)
                              {
                                break;
                              }

                              v96 = !v90;
                              if (v88 != v87 && v96 == 0)
                              {
                                goto LABEL_47;
                              }

LABEL_120:
                              if (++v84 == 3)
                              {
                                (*(*v49 + 72))(v49);
                                for (i = 0; i != 24; i += 8)
                                {
                                  (*(**(&v116 + i) + 72))(*(&v116 + i));
                                }

                                goto LABEL_47;
                              }
                            }

                            v91 = 4097;
                            while (1)
                            {
                              v93 = *v88++;
                              v92 = v93;
                              v94 = *v87++;
                              v95 = v92 - v94;
                              if (v95 < 0)
                              {
                                v95 = -v95;
                              }

                              if (v95 >= 2)
                              {
                                break;
                              }

                              if (!--v91)
                              {
                                goto LABEL_120;
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
          }
        }

LABEL_47:
        *(this + 32) = 1;
        v50 = *(v11 + 16);
        *(v11 + 32) = 1;
        v51 = CMMBase::NewInternal(0x30, a2, v37, v38);
        *(v51 + 2) = 1;
        v51[3] = v11;
        v51[5] = 0x3F80000000000000;
        *v51 = &unk_1F0E08098;
        *(v51 + 33) = 1;
        *(v11 + 16) = v51;
        v51[2] = v50;
        if (v50)
        {
          *(v50 + 24) = v51;
        }

        return 1;
      }

      v18 = (v11 + 16);
      v17 = *(v11 + 16);
      *(this + 32) = 1;
      *(v11 + 32) = 1;
      v122 = 0u;
      v123 = 0u;
      DWORD2(v123) = 1065353216;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0;
      v116 = &unk_1F0E07238;
      CMMMatrix::InitializeRGBMatrix(&v116, (this + 56), (v11 + 56), 0.0);
      v62 = CMMBase::NewInternal(0xA8, a2, v60, v61);
      CMMConvGrayToRGBMatrix::CMMConvGrayToRGBMatrix(v62, &v116, v11);
      v29 = &unk_1F0E0A7C0;
      goto LABEL_61;
    }

    return 0;
  }

  v12 = 0;
  v13 = this + 64;
  v14 = v11 + 276;
  while (2)
  {
    for (j = 0; j != 12; j += 4)
    {
      if (*&v13[j] != *(v14 + j))
      {
        v18 = (v11 + 16);
        v17 = *(v11 + 16);
        *(this + 32) = 1;
        *(v11 + 32) = 1;
        memset(&v115[5], 0, 32);
        DWORD2(v115[6]) = 1065353216;
        memset(v115 + 8, 0, 72);
        *&v115[0] = &unk_1F0E07258;
        CMMMatrix::InitializeRGBMatrix(v115, (this + 56), (v11 + 56), 0.0);
        v24 = CMMBase::NewInternal(0xA8, a2, v25, v26);
        *(v24 + 2) = 1;
        v24[2] = 0;
        v24[3] = v11;
        *(v11 + 16) = v24;
        v24[5] = 0x3F80000000000000;
        *(v24 + 33) = 0;
        *v24 = &unk_1F0E072B8;
        v24[7] = &unk_1F0E071F8;
        *(v24 + 4) = *(v115 + 8);
        v27 = *(&v115[4] + 8);
        *(v24 + 7) = *(&v115[3] + 8);
        *(v24 + 8) = v27;
        *(v24 + 9) = *(&v115[5] + 8);
        *(v24 + 40) = DWORD2(v115[6]);
        v28 = *(&v115[2] + 8);
        *(v24 + 5) = *(&v115[1] + 8);
        *(v24 + 6) = v28;
        *(v24 + 24) = 0;
        *(v24 + 33) = 1;
        *(v24 + 32) = 0;
        *(v24 + 35) = 0;
        goto LABEL_26;
      }
    }

    ++v12;
    v14 += 12;
    v13 += 12;
    if (v12 != 3)
    {
      continue;
    }

    break;
  }

  v16 = *(this + 40) * *(v11 + 160);
  result = 1;
  *(this + 32) = 1;
  *(v11 + 32) = 1;
  if (v16 != 1.0)
  {
    v18 = (v11 + 16);
    v17 = *(v11 + 16);
    memset(v115, 0, sizeof(v115));
    CMMMatrix::CMMMatrix(v115, CMMConvMatrix::CollapseToRGB(CMMConvInvMatrix *,CMMMemMgr &)::identityCMM3x4, v16);
    v21 = CMMBase::NewInternal(0xA8, a2, v19, v20);
    CMMConvRGBToRGBMatrix::CMMConvRGBToRGBMatrix(v21, v115, v11, v22, v23);
LABEL_26:
    v29 = &unk_1F0E0A5B0;
    goto LABEL_61;
  }

  return result;
}

uint64_t __current_or_newer_sdk_block_invoke()
{
  current_or_newer_sdk_linked_on_glow_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_crystal_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_sapphire_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_moonstone_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_constellation_or_later = result;
  return result;
}

const UInt8 *___ZL14sRGBTRCDataPtrv_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  sRGBTRCDataPtr(void)::sRGBTRCDataRef = ColorSyncProfileCopyTag(v0, @"rTRC");
  result = CFDataGetBytePtr(sRGBTRCDataPtr(void)::sRGBTRCDataRef);
  sRGBTRCDataPtr(void)::ptr = (result + 12);
  return result;
}

void ___ZL27CMMInitializeSRGBGammaTablev_block_invoke()
{
  v24 = 0;
  CMMMemMgr::CMMMemMgr(&v24);
  v2 = CMMBase::NewInternal(0x28, &v24, v0, v1);
  v2[2] = 0;
  v2[3] = &ksRGBGammaData;
  *v2 = &unk_1F0E09180;
  v2[1] = 0;
  v2[4] = 21512;
  CMMsRGBGammaTable = v2;
  v5 = CMMBase::NewInternal(0x28, &v24, v3, v4);
  v5[2] = 0;
  v5[3] = &kInvsRGBGammaData;
  *v5 = &unk_1F0E09180;
  v5[1] = 0;
  v5[4] = 21512;
  CMMInvsRGBGammaTable = v5;
  v8 = CMMBase::NewInternal(0x38, &v24, v6, v7);
  CMMsRGBGammaFloatLutInfo = v8;
  *v8 = 0x100000001;
  *(v8 + 3) = 3;
  v8[2] = 0;
  *(v8 + 8) = 0;
  *(v8 + 3) = xmmword_19A96E270;
  *(v8 + 5) = xmmword_19A96E280;
  v11 = CMMBase::NewInternal(0x38, &v24, v9, v10);
  CMMInvsRGBGammaFloatLutInfo = v11;
  v12 = *(CMMsRGBGammaFloatLutInfo + 28);
  v23 = *(CMMsRGBGammaFloatLutInfo + 24);
  v13 = *(CMMsRGBGammaFloatLutInfo + 32);
  v14 = *(CMMsRGBGammaFloatLutInfo + 36);
  v15 = *(CMMsRGBGammaFloatLutInfo + 40);
  *v11 = 0x400000001;
  v11[1].i32[1] = 4;
  v11[2] = 0;
  v11[1].i8[0] = 0;
  v16 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v12, v23)), LODWORD(v23));
  __asm { FMOV            V0.2S, #1.0 }

  v11[3] = vdiv_f32(_D0, v16);
  v11[4].i32[0] = 0;
  v22 = 1.0 / v14;
  if (v14 == 0.0)
  {
    v22 = 0.0;
  }

  v11[4].f32[1] = v22;
  v11[5].f32[0] = v14 * v15;
  v11[5].f32[1] = -v13 / v12;
  v11[6] = 0;
  CMMMemMgr::ReleaseMemList(&v24);
}

void sub_19A92BE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}