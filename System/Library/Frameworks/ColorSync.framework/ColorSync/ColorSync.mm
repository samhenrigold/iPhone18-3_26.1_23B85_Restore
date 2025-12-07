CFDataRef ColorSyncProfileCopyHeader(ColorSyncProfileRef prof)
{
  if (!prof)
  {
    return 0;
  }

  v2 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  v3 = copyHeaderData(prof);
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return v3;
}

__CFData *copyHeaderData(uint64_t a1)
{
  if (*(a1 + 156) == 1)
  {
    pthread_mutex_lock((a1 + 24));
    Value = CFDictionaryGetValue(*(a1 + 96), @"iccHeader");
    v3 = copy_swapped_header(Value);
    pthread_mutex_unlock((a1 + 24));
    return v3;
  }

  else
  {
    CFRetain(*(a1 + 120));
    return *(a1 + 120);
  }
}

const void *ColorSyncProfileCopyFlexGTCInfo(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      Tag = ColorSyncProfileGetTag(a1, @"hdgm");
      if (Tag)
      {
        v4 = Tag;
        v5 = CFGetTypeID(Tag);
        if (v5 == CFDataGetTypeID())
        {
          pthread_mutex_lock((a1 + 24));
          v6 = *(a1 + 256);
          if (v6)
          {
            v7 = CFRetain(v6);
LABEL_18:
            pthread_mutex_unlock((a1 + 24));
            return v7;
          }

          Length = CFDataGetLength(v4);
          if (Length < 0x62 || (v10 = Length, (BytePtr = CFDataGetBytePtr(v4)) == 0) || (v12 = BytePtr, (v13 = malloc_type_calloc(1uLL, v10, 0xD3FE406AuLL)) == 0))
          {
            v7 = 0;
            goto LABEL_18;
          }

          v14 = v13;
          memcpy(v13, v12, v10);
          if (validate_gmap_tag(v14, v10))
          {
            v15 = v14[5];
            v16 = v15 != v14[6] || v15 != v14[7];
            v17 = v14[9];
            v18 = v17 != v14[11] || v17 != v14[13];
            v19 = v14[10];
            if (v19 == v14[12] && !v16 && !v18 && v19 == v14[14])
            {
              if (v17 && 12 * bswap32(*(v14 + bswap32(v17) + 4)) + 8 <= bswap32(v19))
              {
                gain_map_info = create_gain_map_info(v14 + bswap32(v15));
                v20 = v14 + bswap32(v14[9]);
                v21 = *(v20 + 1);
                v22 = bswap32(v21);
                Mutable = CFArrayCreateMutable(0, v22, MEMORY[0x1E695E9C0]);
                if (v21)
                {
                  v24 = 0;
                  v25 = MEMORY[0x1E695E9E8];
                  do
                  {
                    v26 = &v20[12 * v24 + 8];
                    v27 = *v26;
                    v28 = v26[1];
                    LODWORD(v26) = v26[2];
                    v40 = bswap32(v28);
                    valuePtr = bswap32(v27);
                    v39 = bswap32(v26);
                    keys = kColorSyncFlexGTCNodeX;
                    v47 = kColorSyncFlexGTCNodeY;
                    v48 = kColorSyncFlexGTCNodeSlope;
                    values = 0;
                    v43 = 0;
                    v44 = 0;
                    values = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
                    v43 = CFNumberCreate(0, kCFNumberFloat32Type, &v40);
                    v44 = CFNumberCreate(0, kCFNumberFloat32Type, &v39);
                    v29 = CFDictionaryCreate(0, &keys, &values, 3, MEMORY[0x1E695E9D8], v25);
                    for (i = 0; i != 24; i += 8)
                    {
                      CFRelease(*(&values + i));
                    }

                    CFArrayAppendValue(Mutable, v29);
                    CFRelease(v29);
                    ++v24;
                  }

                  while (v24 != v22);
                }

                v31 = bswap32(*(v14 + bswap32(v14[4])));
                v32 = v14[8];
                if (v32)
                {
                  v33 = bswap32(*(v14 + bswap32(v32)));
                }

                else
                {
                  v33 = 0;
                }

                keys = kColorSyncMonoGainMapParams;
                v47 = kColorSyncMonoFlexGTCNodeTable;
                v48 = kColorSyncPreGainMapCICP;
                v49 = kColorSyncPostGainMapCICP;
                values = gain_map_info;
                v43 = Mutable;
                valuePtr = v31;
                v34 = 3;
                v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                if (v33)
                {
                  valuePtr = v33;
                  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  v34 = 4;
                }

                else
                {
                  v35 = 0;
                }

                v45 = v35;
                v7 = CFDictionaryCreate(0, &keys, &values, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                for (j = 0; j != 32; j += 8)
                {
                  v37 = *(&values + j);
                  if (v37)
                  {
                    CFRelease(v37);
                  }
                }

                if (v7)
                {
                  *(a1 + 256) = CFRetain(v7);
                }

                goto LABEL_37;
              }
            }

            else
            {
              ColorSyncLog(2, "Not able to use gmap tag");
            }
          }

          v7 = 0;
LABEL_37:
          free(v14);
          goto LABEL_18;
        }
      }
    }
  }

  return 0;
}

const void *ColorSyncProfileGetTag(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  Tag = getTag(a1, a2);
  if (*(a1 + 156) == 1)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      if (Tag)
      {
        v8.length = CFArrayGetCount(v6);
        v8.location = 0;
        if (!CFArrayContainsValue(*(a1 + 104), v8, Tag))
        {
          CFArrayAppendValue(*(a1 + 104), Tag);
        }
      }
    }
  }

  return Tag;
}

uint64_t colorSyncProfileRetainCount(uint64_t a1, atomic_uint *a2)
{
  if (a1 == -1)
  {
    if (a2[39] != 2 && atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      colorSyncProfileFinalize(a2);
      v4 = CFGetAllocator(a2);
      CFAllocatorDeallocate(v4, a2);
    }

    return 0;
  }

  if (a1)
  {
    if (a1 == 1 && a2[39] != 2)
    {
      result = 0;
      atomic_fetch_add_explicit(a2 + 4, 1u, memory_order_relaxed);
      return result;
    }

    return 0;
  }

  if (a2[39] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return atomic_load(a2 + 4);
  }
}

CFTypeID ColorSyncProfileGetTypeID(void)
{
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  return ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID;
}

ColorSyncProfileRef ColorSyncProfileCreateWithName(CFStringRef name)
{
  if (!name)
  {
    return 0;
  }

  if (ColorSyncProfileCreateWithName_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileCreateWithName_predicate, &__block_literal_global_1017);
  }

  v2 = ColorSyncProfileCreateWithName_name_creator_pair_array;
  v3 = 28;
  if (!ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    v3 = 0;
  }

  while (v3)
  {
    if (*v2 == name)
    {
      goto LABEL_20;
    }

    v4 = v3;
    v5 = &v2[2 * v3];
    v6 = *(v5 - 2);
    if (v6 == name)
    {
      v9 = (v5 - 1);
      goto LABEL_21;
    }

    v3 = v4 >> 1;
    v7 = v2[2 * (v4 >> 1)];
    if (v7 == name)
    {
      v2 += 2 * v3;
LABEL_20:
      v9 = (v2 + 1);
LABEL_21:
      Value = *v9;
      if (*v9)
      {
        goto LABEL_23;
      }

      break;
    }

    if (*v2 >= name || v7 <= name)
    {
      v2 += 2 * v3;
      v3 = v4 - v3;
      if (v6 <= name || v7 >= name)
      {
        break;
      }
    }
  }

  Value = CFDictionaryGetValue(ColorSyncProfileCreateWithName_name_to_function_map, name);
  if (!Value)
  {
    return 0;
  }

LABEL_23:

  return Value();
}

const void *getTag(uint64_t a1, void *key)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 156) == 1)
  {
    pthread_mutex_lock((a1 + 24));
  }

  Value = CFDictionaryGetValue(*(a1 + 96), key);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 != CFStringGetTypeID() || (v5 = CFDictionaryGetValue(*(a1 + 96), v5)) != 0)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDataGetTypeID())
      {
        v5 = 0;
      }
    }
  }

  if (*(a1 + 156) == 1)
  {
    pthread_mutex_unlock((a1 + 24));
  }

  return v5;
}

uint64_t compare_names(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __create_sRGBProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, sRGB_Profile_data, 3144, *MEMORY[0x1E695E498]);
  create_sRGBProfile_profile = ColorSyncProfileCreateSingleton(24, v0, 0xAB894ADB2EDA3F1DLL, 0xDD817D7C5F3CA260, @"/System/Library/ColorSync/Profiles/sRGB Profile.icc", 0, 4);

  CFRelease(v0);
}

uint64_t create(uint64_t a1, CFTypeRef cf, int a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFDataGetTypeID())
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(cf);
    if (CFDataGetLength(cf) < 0x81 || *(BytePtr + 9) != 1886610273)
    {
      return 0;
    }
  }

  else if (a3 != 1)
  {
    return 0;
  }

  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 84) = 0u;
    *(Instance + 260) = 0;
    *(Instance + 244) = 0u;
    *(Instance + 228) = 0u;
    *(Instance + 212) = 0u;
    *(Instance + 196) = 0u;
    *(Instance + 180) = 0u;
    *(Instance + 164) = 0u;
    *(Instance + 148) = 0u;
    *(Instance + 132) = 0u;
    *(Instance + 116) = 0u;
    *(Instance + 100) = 0u;
    *(Instance + 68) = 0u;
    *(Instance + 52) = 0u;
    *(Instance + 36) = 0u;
    *(Instance + 20) = 0u;
    *(Instance + 16) = 1;
    *(Instance + 88) = a1;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v11 + 96) = Mutable;
    if (Mutable)
    {
      if (!cf)
      {
        goto LABEL_37;
      }

      v13 = Mutable;
      v14 = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (v14)
      {
        v16 = Length;
        if (Length >= 0x80)
        {
          TagData = createTagData(v14, 128, a3 == 1);
          if (TagData)
          {
            v18 = TagData;
            CFDictionarySetValue(v13, @"iccHeader", TagData);
            CFRelease(v18);
            if (v16 >= 0x85)
            {
              v19 = *(v14 + 32);
              if (v19)
              {
                if (v16 >= 0x90)
                {
                  v20 = 0;
                  v45 = bswap32(v19);
                  v46 = v16;
                  v47 = &v14[v16 - 1];
                  v21 = (v14 + 132);
                  while ((v21 + 3) <= v47)
                  {
                    v22 = bswap32(v21[2]);
                    if ((v22 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v23 = v21[1];
                    v24 = bswap32(v23);
                    if (v22 + v24 > v16)
                    {
                      break;
                    }

                    v48 = v21 + 3;
                    v25 = bswap32(*v21);
                    if (v20)
                    {
                      v26 = v20;
                      v27 = (v14 + 132);
                      while (v27[1] != v23)
                      {
                        v27 += 3;
                        if (!--v26)
                        {
                          goto LABEL_26;
                        }
                      }

                      v34 = bswap32(*v27);
                      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(v25);
                      v28 = ColorSyncCreateSignatureFromFourCharCode(v34);
                      v31 = v13;
                      v32 = SignatureFromFourCharCode;
                      v33 = v28;
                    }

                    else
                    {
LABEL_26:
                      v28 = ColorSyncCreateSignatureFromFourCharCode(v25);
                      if (CFDictionaryContainsValue(v13, v28) || (v29 = createTagData(&v14[v24], v22, a3 == 1)) == 0)
                      {
                        CFRelease(v28);
                        goto LABEL_58;
                      }

                      SignatureFromFourCharCode = v29;
                      v31 = v13;
                      v32 = v28;
                      v33 = SignatureFromFourCharCode;
                    }

                    CFDictionarySetValue(v31, v32, v33);
                    CFRelease(SignatureFromFourCharCode);
                    CFRelease(v28);
                    ++v20;
                    v21 = v48;
                    v16 = v46;
                    if (v20 == v45)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                goto LABEL_58;
              }
            }

LABEL_31:
            if (a3 == 1)
            {
              *(v11 + 112) = CFRetain(cf);
LABEL_36:
              *(v11 + 136) = computeMD5(cf);
              *(v11 + 144) = v37;
LABEL_37:
              *(v11 + 156) = a3;
              if (a3 == 1)
              {
                v49.__sig = 0;
                *v49.__opaque = 0;
                pthread_mutexattr_init(&v49);
                pthread_mutexattr_settype(&v49, 2);
                pthread_mutex_init((v11 + 24), &v49);
                pthread_mutexattr_destroy(&v49);
                *(v11 + 104) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              }

LABEL_39:
              if (a4 == 3)
              {
                if (BT2020_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&BT2020_luminance_coefficients_predicate, &__block_literal_global_538);
                }

                v41 = &BT2020_luminance_coefficients_coeffs_2;
                v42 = &BT2020_luminance_coefficients_coeffs_1;
                v43 = &BT2020_luminance_coefficients_coeffs_0;
              }

              else if (a4 == 2)
              {
                if (DisplayP3_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&DisplayP3_luminance_coefficients_predicate, &__block_literal_global_535);
                }

                v41 = &DisplayP3_luminance_coefficients_coeffs_2;
                v42 = &DisplayP3_luminance_coefficients_coeffs_1;
                v43 = &DisplayP3_luminance_coefficients_coeffs_0;
              }

              else
              {
                v38 = 0;
                v39 = 0;
                v40 = 0;
                if (a4 != 1)
                {
                  goto LABEL_52;
                }

                if (BT709_luminance_coefficients_predicate != -1)
                {
                  dispatch_once(&BT709_luminance_coefficients_predicate, &__block_literal_global_532);
                }

                v41 = &BT709_luminance_coefficients_coeffs_2;
                v42 = &BT709_luminance_coefficients_coeffs_1;
                v43 = &BT709_luminance_coefficients_coeffs_0;
              }

              v40 = *v43;
              v38 = *v42;
              v39 = *v41;
LABEL_52:
              *(v11 + 160) = v40;
              *(v11 + 164) = v38;
              *(v11 + 168) = v39;
              *(v11 + 172) = 0;
              if (a3)
              {
                *(v11 + 152) = a3 == 2;
              }

              else
              {
                *(v11 + 152) = AppleCMMValidateProfile(v11);
              }

              return v11;
            }

            Value = CFDictionaryGetValue(*(v11 + 96), @"iccHeader");
            v36 = copy_swapped_header(Value);
            *(v11 + 120) = v36;
            if (v36)
            {
              *(v11 + 112) = CFRetain(cf);
              if (a3 == 2)
              {
                *(v11 + 156) = 2;
                goto LABEL_39;
              }

              goto LABEL_36;
            }
          }
        }
      }
    }

LABEL_58:
    CFRelease(v11);
    return 0;
  }

  return v11;
}

void __ColorSyncProfileCreateWithName_block_invoke()
{
  v63 = *MEMORY[0x1E69E9840];
  keys = kColorSyncGenericGrayProfile;
  v8 = kColorSyncGenericGrayGamma22Profile;
  v9 = kColorSyncGenericRGBProfile;
  v10 = kColorSyncGenericCMYKProfile;
  v11 = kColorSyncDisplayP3Profile;
  v12 = kColorSyncDisplayP3_HLGProfile[0];
  v13 = kColorSyncDisplayP3_PQProfile[0];
  v14 = kColorSyncDisplayP3_709OETFProfile;
  v15 = kColorSyncSRGBProfile;
  v16 = kColorSyncAdobeRGB1998Profile;
  v17 = kColorSyncGenericLabProfile;
  v18 = kColorSyncGenericXYZProfile;
  v19 = kColorSyncACESCGLinearProfile;
  v20 = kColorSyncDCIP3Profile;
  v21 = kColorSyncITUR709Profile;
  v22 = kColorSyncITUR709_PQProfile[0];
  v23 = kColorSyncITUR709_HLGProfile[0];
  v24 = kColorSyncITUR2020Profile;
  v25 = kColorSyncITUR2020_sRGBGammaProfile;
  v26 = kColorSyncITUR2020_HLGProfile;
  v27 = kColorSyncITUR2020_PQProfile;
  v28 = kColorSyncITUR2100_HLGProfile[0];
  v29 = kColorSyncITUR2100_PQProfile[0];
  v30 = kColorSyncROMMRGBProfile;
  v31 = kColorSyncPerceptualStandardRGBProfile;
  v32 = kColorSyncCoreVideo709Profile;
  v33 = @"com.apple.ColorSync.CoreVideoLegacy709";
  v5[10] = xmmword_1F0E0C6A8;
  v5[11] = *&off_1F0E0C6B8;
  v5[12] = xmmword_1F0E0C6C8;
  v6 = off_1F0E0C6D8;
  v5[6] = xmmword_1F0E0C668;
  v5[7] = *&off_1F0E0C678;
  v5[8] = xmmword_1F0E0C688;
  v5[9] = *&off_1F0E0C698;
  v5[2] = xmmword_1F0E0C628;
  v5[3] = *&off_1F0E0C638;
  v5[4] = xmmword_1F0E0C648;
  v5[5] = *&off_1F0E0C658;
  v5[0] = xmmword_1F0E0C608;
  v5[1] = *&off_1F0E0C618;
  ColorSyncProfileCreateWithName_name_to_function_map = CFDictionaryCreate(0, &keys, v5, 27, MEMORY[0x1E695E9D8], 0);
  keys = kColorSyncGenericGrayProfile;
  v8 = create_GenericGrayProfile;
  v9 = kColorSyncGenericGrayGamma22Profile;
  v10 = create_GenericGrayGamma22Profile;
  v11 = kColorSyncGenericRGBProfile;
  v12 = create_GenericRGBProfile;
  v13 = kColorSyncGenericCMYKProfile;
  v14 = create_GenericCMYKProfile;
  v15 = kColorSyncDisplayP3Profile;
  v16 = create_DisplayP3Profile;
  v17 = kColorSyncDisplayP3_HLGProfile[0];
  v18 = create_DisplayP3_HLGProfile;
  v19 = kColorSyncDisplayP3_PQProfile[0];
  v20 = create_DisplayP3_PQProfile;
  v21 = kColorSyncDisplayP3_709OETFProfile;
  v22 = create_DisplayP3_709OETFProfile;
  v23 = kColorSyncSRGBProfile;
  v24 = create_sRGBProfile;
  v25 = kColorSyncAdobeRGB1998Profile;
  v26 = create_AdobeRGB1998Profile;
  v27 = kColorSyncGenericLabProfile;
  v28 = create_GenericLabProfile;
  v29 = kColorSyncGenericXYZProfile;
  v30 = create_GenericXYZProfile;
  v31 = kColorSyncACESCGLinearProfile;
  v32 = create_ACESCGLinearProfile;
  v33 = kColorSyncDCIP3Profile;
  v34 = create_DCIP3Profile;
  v35 = kColorSyncITUR709Profile;
  v36 = create_ITUR709Profile;
  v37 = kColorSyncITUR709_PQProfile[0];
  v38 = create_ITUR709_PQProfile;
  v39 = kColorSyncITUR709_HLGProfile[0];
  v40 = create_ITUR709_HLGProfile;
  v41 = kColorSyncITUR2020Profile;
  v42 = create_ITUR2020Profile;
  v43 = kColorSyncITUR2020_sRGBGammaProfile;
  v44 = create_ITUR2020sRGBGammaProfile;
  v45 = kColorSyncITUR2020_HLGProfile;
  v46 = create_ITUR2020_HLGProfile;
  v47 = kColorSyncITUR2020_PQProfile;
  v48 = create_ITUR2020_PQProfile;
  v49 = kColorSyncITUR2100_HLGProfile[0];
  v50 = create_ITUR2100_HLGProfile;
  v51 = kColorSyncITUR2100_PQProfile[0];
  v52 = create_ITUR2100_PQProfile;
  v53 = kColorSyncROMMRGBProfile;
  v54 = create_ROMMRGBProfile;
  v55 = kColorSyncWebSafeColorsProfile;
  v56 = create_WebSafeColorsProfile;
  v57 = kColorSyncPerceptualStandardRGBProfile;
  v58 = create_PerceptualStandardRGBProfile;
  v59 = kColorSyncCoreVideo709Profile;
  v60 = create_CoreVideo709Profile;
  v61 = @"com.apple.ColorSync.CoreVideoLegacy709";
  v62 = create_CoreVideoLegacy709Profile;
  v0 = malloc_type_malloc(0x1C0uLL, 0xE0040372BB24AuLL);
  v1 = v0;
  if (v0)
  {
    ColorSyncProfileCreateWithName_name_creator_pair_count = 1;
    v2 = 28;
LABEL_7:
    v3 = 0;
    v4 = v2;
    do
    {
      *&v0[v3] = *(&keys + v3);
      v3 += 16;
      --v4;
    }

    while (v4);
    qsort(v0, v2, 0x10uLL, compare_names);
    goto LABEL_10;
  }

  if (ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (ColorSyncProfileCreateWithName_name_creator_pair_count)
  {
    goto LABEL_7;
  }

LABEL_10:
  ColorSyncProfileCreateWithName_name_creator_pair_array = v1;
}

uint64_t __ColorSyncProfileGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID = result;
  return result;
}

CFStringRef ColorSyncCreateSignatureFromFourCharCode(unsigned int a1)
{
  v1 = "0B2A";
  v2 = 59;
  while (v2)
  {
    if (*v1 == a1)
    {
      goto LABEL_16;
    }

    v3 = v2;
    v4 = &v1[16 * v2];
    v5 = *(v4 - 4);
    if (v5 == a1)
    {
      v8 = (v4 - 8);
      goto LABEL_17;
    }

    v2 = v3 >> 1;
    v6 = *&v1[16 * (v3 >> 1)];
    if (v6 == a1)
    {
      v1 += 16 * v2;
LABEL_16:
      v8 = (v1 + 8);
LABEL_17:
      v9 = *v8;
      if (*v8)
      {
        CFRetain(*v8);
        return v9;
      }

      break;
    }

    if (*v1 >= a1 || v6 <= a1)
    {
      v1 += 16 * v2;
      v2 = v3 - v2;
      if (v5 <= a1 || v6 >= a1)
      {
        break;
      }
    }
  }

  *bytes = bswap32(a1);
  v10 = CFStringCreateWithBytes(0, bytes, 4, 0x600u, 0);
  if (!v10)
  {
    __assert_rtn("ColorSyncCreateSignatureFromFourCharCode", "ColorSyncTransform.c", 1248, "sig != NULL");
  }

  return v10;
}

CFTypeRef create_sRGBProfile()
{
  if (create_sRGBProfile_predicate != -1)
  {
    dispatch_once(&create_sRGBProfile_predicate, &__block_literal_global_262);
  }

  v1 = create_sRGBProfile_profile;

  return CFRetain(v1);
}

BOOL ColorSyncProfileContainsTag(ColorSyncProfileRef prof, CFStringRef signature)
{
  if (!prof)
  {
    return 0;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  v5 = CFDictionaryContainsKey(*(prof + 12), signature) != 0;
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return v5;
}

CFTypeRef create_GenericGrayGamma22Profile()
{
  if (create_GenericGrayGamma22Profile_predicate != -1)
  {
    dispatch_once(&create_GenericGrayGamma22Profile_predicate, &__block_literal_global_196);
  }

  v1 = create_GenericGrayGamma22Profile_profile;

  return CFRetain(v1);
}

CFDataRef ColorSyncProfileCopyData(ColorSyncProfileRef prof, CFErrorRef *error)
{
  if (!prof)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
    v5 = *(prof + 14);
    if (v5)
    {
      CFRelease(v5);
    }

    ProfileData = createProfileData(prof);
    *(prof + 14) = ProfileData;
    if (!ProfileData)
    {
      goto LABEL_17;
    }
  }

  else
  {
    ProfileData = *(prof + 14);
    if (!ProfileData)
    {
      goto LABEL_17;
    }
  }

  if (CFDataGetLength(ProfileData) >= 1)
  {
    BytePtr = CFDataGetBytePtr(*(prof + 14));
    Length = CFDataGetLength(*(prof + 14));
    if (!(Length >> 31))
    {
      v11 = Length;
      v12 = 0;
      v13 = 0;
      if (BytePtr && Length)
      {
        v14 = MEMORY[0x1E69E9AC8];
        v15 = -*MEMORY[0x1E69E9AC8];
        v16 = v15 & BytePtr;
        v12 = (((BytePtr + Length + *MEMORY[0x1E69E9AC8] - 1) & v15) - (v15 & BytePtr));
        v17 = mmap(0, v12, 3, 4098, 1744830464, 0);
        if (v17 == -1)
        {
          v12 = 0;
          v13 = 0;
        }

        else
        {
          v13 = &v17[BytePtr - v16];
          v18 = v11 > 4 * *v14;
          v19 = MEMORY[0x1E69E9A60];
          if (!v18 || vm_copy(*MEMORY[0x1E69E9A60], BytePtr, v11, v13))
          {
            memcpy(v13, BytePtr, v11);
          }

          v20 = MEMORY[0x19EAE4B70](*v19, v13, v11, 1, 1);
          if (v20)
          {
            ColorSyncLog(2, "%s: vm_protect failed: status %d.", "copy_read_only", v20);
          }
        }
      }

      if (v13 == BytePtr)
      {
        v7 = CFDataCreate(0, BytePtr, v11);
      }

      else
      {
        context.version = 0;
        memset(&context.retain, 0, 40);
        context.info = v12;
        context.deallocate = vm_allocator_deallocate;
        context.preferredSize = 0;
        v21 = CFAllocatorCreate(0, &context);
        v7 = CFDataCreateWithBytesNoCopy(0, v13, v11, v21);
        CFRelease(v21);
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

LABEL_11:
  if (error)
  {
    *error = 0;
  }

  return v7;
}

ColorSyncMD5 ColorSyncProfileGetMD5(ColorSyncProfileRef prof)
{
  if (prof)
  {
    v1 = prof;
    v2 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (*(v1 + 39) == 1)
      {
        pthread_mutex_lock((v1 + 24));
        v3 = *(v1 + 14);
        if (v3)
        {
          CFRelease(v3);
        }

        Value = CFDictionaryGetValue(*(v1 + 12), @"iccHeader");
        MutableCopy = CFDataCreateMutableCopy(0, 0, Value);
        if (MutableCopy)
        {
          v6 = MutableCopy;
          MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
          *(MutableBytePtr + 92) = 0;
          *(MutableBytePtr + 84) = 0;
          CFDictionarySetValue(*(v1 + 12), @"iccHeader", v6);
          CFRelease(v6);
          ProfileData = createProfileData(v1);
          if (ProfileData)
          {
            v9 = ProfileData;
            *(v1 + 17) = computeMD5(ProfileData);
            *(v1 + 18) = v10;
            *(v1 + 14) = v9;
          }
        }

        pthread_mutex_unlock((v1 + 24));
      }

      prof = *(v1 + 17);
      v11 = *(v1 + 18);
    }

    else
    {
      v11 = 0;
      prof = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *&result.digest[8] = v11;
  *result.digest = prof;
  return result;
}

BOOL ColorSyncProfileIsPQBased(ColorSyncProfileRef a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = copyHeaderData(v1);
      if (v3)
      {
        v4 = v3;
        BytePtr = CFDataGetBytePtr(v3);
        if (BytePtr && *(BytePtr + 5) == 1482250784 && *(BytePtr + 4) == 1380401696)
        {
          Tag = getTag(v1, @"cicp");
          v16 = 0;
          if (valid_cicp_tag(Tag, &v16) && v16 == 16)
          {
            LOBYTE(v1) = 1;
LABEL_33:
            CFRelease(v4);
            return v1;
          }

          v7 = getTag(v1, @"hdTF");
          if (v7)
          {
            v8 = v7;
            v9 = CFDataGetBytePtr(v7);
            LOBYTE(v1) = 0;
            if (CFDataGetLength(v8) < 0xC || !v9)
            {
              goto LABEL_33;
            }

            v10 = *(v9 + 2) == 538988880;
            goto LABEL_17;
          }

          if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg"))
          {
            v11 = getTag(v1, @"aarg");
            v12 = getTag(v1, @"aagg");
            v13 = getTag(v1, @"aabg");
            if (CFEqual(v11, v12) == 1)
            {
              if (CFEqual(v12, v13))
              {
                v14 = CFDataGetBytePtr(v11);
                LOBYTE(v1) = 0;
                if (CFDataGetLength(v11) < 0xC || !v14)
                {
                  goto LABEL_33;
                }

                if (get_preliminary_PQ_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_PQ_curve_data_predicate, &__block_literal_global_555);
                }

                v10 = get_preliminary_PQ_curve_data_preliminary_PQ_data == *v14 && dword_1EAFE00E0 == *(v14 + 2);
LABEL_17:
                LOBYTE(v1) = v10;
                goto LABEL_33;
              }
            }
          }
        }

        LOBYTE(v1) = 0;
        goto LABEL_33;
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL ColorSyncProfileIsHLGBased(ColorSyncProfileRef a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = copyHeaderData(v1);
      if (v3)
      {
        v4 = v3;
        BytePtr = CFDataGetBytePtr(v3);
        if (BytePtr && *(BytePtr + 5) == 1482250784 && *(BytePtr + 4) == 1380401696)
        {
          Tag = getTag(v1, @"cicp");
          v16 = 0;
          if (valid_cicp_tag(Tag, &v16) && v16 == 18)
          {
            LOBYTE(v1) = 1;
LABEL_33:
            CFRelease(v4);
            return v1;
          }

          v7 = getTag(v1, @"hdTF");
          if (v7)
          {
            v8 = v7;
            v9 = CFDataGetBytePtr(v7);
            LOBYTE(v1) = 0;
            if (CFDataGetLength(v8) < 0xC || !v9)
            {
              goto LABEL_33;
            }

            v10 = *(v9 + 2) == 541543496;
            goto LABEL_17;
          }

          if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg"))
          {
            v11 = getTag(v1, @"aarg");
            v12 = getTag(v1, @"aagg");
            v13 = getTag(v1, @"aabg");
            if (CFEqual(v11, v12) == 1)
            {
              if (CFEqual(v12, v13))
              {
                v14 = CFDataGetBytePtr(v11);
                LOBYTE(v1) = 0;
                if (CFDataGetLength(v11) < 0xC || !v14)
                {
                  goto LABEL_33;
                }

                if (get_preliminary_HLG_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_HLG_curve_data_predicate, &__block_literal_global_558);
                }

                v10 = get_preliminary_HLG_curve_data_preliminary_HLG_data == *v14 && dword_1EAFE00F8 == *(v14 + 2);
LABEL_17:
                LOBYTE(v1) = v10;
                goto LABEL_33;
              }
            }
          }
        }

        LOBYTE(v1) = 0;
        goto LABEL_33;
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL ColorSyncProfileIsMatrixBased(ColorSyncProfileRef a1)
{
  if (!a1)
  {
    return a1;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    goto LABEL_28;
  }

  v3 = ColorSyncProfileCopyHeader(v1);
  v4 = *(CFDataGetBytePtr(v3) + 4);
  CFRelease(v3);
  v5 = ColorSyncProfileIsHLGBased(v1) || ColorSyncProfileIsPQBased(v1);
  if (v4 == 1380401696)
  {
    Tag = getTag(v1, @"cicp");
    if (valid_cicp_tag(Tag, 0))
    {
      if (v5)
      {
        LOBYTE(a1) = 1;
        return a1;
      }

      goto LABEL_16;
    }

    if (v5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 6;
    }

    v11 = off_1E75238F0;
    while (ColorSyncProfileContainsTag(v1, *v11))
    {
      ++v11;
      if (!--v10)
      {
        LOBYTE(a1) = 1;
        goto LABEL_11;
      }
    }

LABEL_28:
    LOBYTE(a1) = 0;
    return a1;
  }

  if (v4 != 1196573017)
  {
    goto LABEL_28;
  }

  LOBYTE(a1) = ColorSyncProfileContainsTag(v1, @"kTRC");
LABEL_11:
  if (!v5 && (a1 & 1) != 0)
  {
LABEL_16:
    v7 = 0;
    do
    {
      v8 = ColorSyncProfileContainsTag(v1, ColorSyncProfileIsMatrixBased_must_not_have_tags[v7]);
      if (v8)
      {
        break;
      }
    }

    while (v7++ != 2);
    LOBYTE(a1) = !v8;
  }

  return a1;
}

BOOL ColorSyncProfileIsWideGamut(ColorSyncProfileRef a1)
{
  if (!a1)
  {
    return a1;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    LOBYTE(a1) = 0;
    return a1;
  }

  XYZColor = getXYZColor(v1, 0x7258595Au);
  v5 = v4;
  v6 = getXYZColor(v1, 0x6758595Au);
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = getXYZColor(v1, 0x6258595Au);
  if (HIDWORD(XYZColor) || XYZColor || v5)
  {
    v15 = (v5 + XYZColor + HIDWORD(XYZColor));
    v14 = XYZColor / v15;
    v13 = SHIDWORD(XYZColor) / v15;
  }

  else
  {
    v13 = -100.0;
    v14 = -100.0;
  }

  v16 = HIDWORD(v11);
  if (v10 || v7 || v9)
  {
    v19 = (v9 + v7 + v10);
    v18 = v7 / v19;
    v17 = v10 / v19;
    if (v16)
    {
LABEL_20:
      v22 = v12 + v11 + HIDWORD(v11);
      v20 = v11 / v22;
      v21 = SHIDWORD(v11) / v22;
      goto LABEL_21;
    }
  }

  else
  {
    v17 = -100.0;
    v18 = -100.0;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  if (v11 || v12)
  {
    goto LABEL_20;
  }

  v20 = -100.0;
  v21 = -100.0;
LABEL_21:
  LOBYTE(a1) = 0;
  if (v14 != -100.0 && v13 != -100.0 && v18 != -100.0 && v17 != -100.0 && v20 != -100.0 && v21 != -100.0)
  {
    v23 = sqrt((v13 - v17) * (v13 - v17) + (v14 - v18) * (v14 - v18));
    v24 = sqrt((v14 - v20) * (v14 - v20) + (v13 - v21) * (v13 - v21));
    v25 = sqrt((v18 - v20) * (v18 - v20) + (v17 - v21) * (v17 - v21));
    LOBYTE(a1) = sqrt(((v25 + v23 + v24) * 0.5 - v25) * (((v25 + v23 + v24) * 0.5 - v24) * ((v25 + v23 + v24) * 0.5 * ((v25 + v23 + v24) * 0.5 - v23)))) > 0.13447;
  }

  return a1;
}

unint64_t getXYZColor(const void *a1, unsigned int a2)
{
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
  XYZColor = ColorSyncProfileGetXYZColor(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  return XYZColor;
}

unint64_t ColorSyncProfileGetXYZColor(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (a2)
    {
      v5 = 0;
      v6 = 0;
      if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
      {
        Tag = getTag(a1, a2);
        if (!Tag)
        {
          if (CFEqual(a2, @"rXYZ") || CFEqual(a2, @"bXYZ") || CFEqual(a2, @"gXYZ"))
          {
            v12 = 0;
            v13 = 0;
            v11 = 0;
            primaries_data_from_cicp = get_primaries_data_from_cicp(a1, &v13, &v12, &v11);
            Tag = 0;
            if (primaries_data_from_cicp)
            {
              if (CFEqual(a2, @"rXYZ") == 1)
              {
                Tag = v13;
              }

              else if (CFEqual(a2, @"gXYZ") == 1)
              {
                Tag = v12;
              }

              else if (CFEqual(a2, @"bXYZ") == 1)
              {
                Tag = v11;
              }

              else
              {
                Tag = 0;
              }
            }
          }

          else
          {
            Tag = 0;
          }
        }

        v9 = verified_icXYZType_data_ptr(Tag);
        if (v9 && *v9 == 542792024)
        {
          v6 = bswap32(*(v9 + 2));
          v5 = bswap32(*(v9 + 3)) << 32;
        }

        else
        {
          v5 = 0;
          v6 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

const UInt8 *verified_icXYZType_data_ptr(const __CFData *a1)
{
  if (!a1 || CFDataGetLength(a1) < 0x14)
  {
    return 0;
  }

  return CFDataGetBytePtr(a1);
}

CFDataRef createTagData(UInt8 *bytes, CFIndex length, int a3)
{
  if (a3)
  {
    return CFDataCreate(0, bytes, length);
  }

  else
  {
    return CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x1E695E498]);
  }
}

const UInt8 *valid_cicp_tag(const UInt8 *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != CFDataGetTypeID() || CFDataGetLength(v3) < 1 || CFDataGetLength(v3) < 0xC)
    {
      return 0;
    }

    result = CFDataGetBytePtr(v3);
    if (!result)
    {
      return result;
    }

    if (*result == 1885563235 && ((v5 = *(result + 2), v5 == 12) || (v5 & 0xFB) == 1 || (v5 & 0xFD) == 9))
    {
      result = 0;
      if (BYTE1(v5) <= 0x12u && ((1 << SBYTE1(v5)) & 0x5E142) != 0)
      {
        if (a2)
        {
          *a2 = BYTE1(v5);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDataRef *ColorSyncProfileCreateImmutableCopy(uint64_t a1)
{
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

  if (*(a1 + 156) == 1)
  {
    v3 = ColorSyncProfileCopyData(a1, 0);
    if (v3)
    {
      v4 = v3;
      v5 = create(*(a1 + 88), v3, 0, 0);
      CFRelease(v4);
      v6 = system_profile_for_profile_from_data(v5);
      if (v6)
      {
        v7 = v6;
        CFRelease(v5);
        v5 = v7;
      }

      evaluate_cicp(a1);
      return v5;
    }

    return 0;
  }

  return CFRetain(a1);
}

__CFData *copy_swapped_header(CFDataRef theData)
{
  if (!theData)
  {
    return 0;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 128, theData);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFDataSetLength(MutableCopy, 128);
    MutableBytePtr = CFDataGetMutableBytePtr(v2);
    *MutableBytePtr = vrev32q_s8(*MutableBytePtr);
    v4 = vrev16_s8(*(MutableBytePtr + 24));
    *(MutableBytePtr + 2) = vrev32_s8(*(MutableBytePtr + 16));
    *(MutableBytePtr + 3) = v4;
    *(MutableBytePtr + 16) = bswap32(*(MutableBytePtr + 16)) >> 16;
    *(MutableBytePtr + 17) = bswap32(*(MutableBytePtr + 17)) >> 16;
    *(MutableBytePtr + 36) = vrev32q_s8(*(MutableBytePtr + 36));
    *(MutableBytePtr + 52) = vrev32q_s8(*(MutableBytePtr + 52));
    *(MutableBytePtr + 68) = vrev32q_s8(*(MutableBytePtr + 68));
  }

  return v2;
}

uint64_t get_primaries_data_from_cicp(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v10 = 0;
  v7 = ColorSyncProfileContainsSupportedCICP(a1, &v10);
  result = 0;
  if (v7)
  {
    result = 0;
    if (v10 <= 8u)
    {
      if (v10 == 1)
      {
        if (get_BT709RedPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709RedPrimaryData_predicate, &__block_literal_global_561);
        }

        *a2 = get_BT709RedPrimaryData_data;
        if (get_BT709GreenPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709GreenPrimaryData_predicate, &__block_literal_global_564);
        }

        *a3 = get_BT709GreenPrimaryData_data;
        if (get_BT709BluPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT709BluPrimaryData_predicate, &__block_literal_global_567);
        }

        v9 = &get_BT709BluPrimaryData_data;
      }

      else
      {
        if (v10 != 5)
        {
          return result;
        }

        if (get_BT601RedPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601RedPrimaryData_predicate, &__block_literal_global_570);
        }

        *a2 = get_BT601RedPrimaryData_data;
        if (get_BT601GreenPrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601GreenPrimaryData_predicate, &__block_literal_global_573);
        }

        *a3 = get_BT601GreenPrimaryData_data;
        if (get_BT601BluePrimaryData_predicate != -1)
        {
          dispatch_once(&get_BT601BluePrimaryData_predicate, &__block_literal_global_576);
        }

        v9 = &get_BT601BluePrimaryData_data;
      }
    }

    else
    {
      switch(v10)
      {
        case 9u:
          if (get_BT2020RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020RedPrimaryData_predicate, &__block_literal_global_579);
          }

          *a2 = get_BT2020RedPrimaryData_data;
          if (get_BT2020GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020GreenPrimaryData_predicate, &__block_literal_global_582);
          }

          *a3 = get_BT2020GreenPrimaryData_data;
          if (get_BT2020BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_BT2020BluePrimaryData_predicate, &__block_literal_global_585);
          }

          v9 = &get_BT2020BluePrimaryData_data;
          break;
        case 0xBu:
          if (get_DCIP3RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3RedPrimaryData_predicate, &__block_literal_global_588);
          }

          *a2 = get_DCIP3RedPrimaryData_data;
          if (get_DCIP3GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3GreenPrimaryData_predicate, &__block_literal_global_591);
          }

          *a3 = get_DCIP3GreenPrimaryData_data;
          if (get_DCIP3BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_DCIP3BluePrimaryData_predicate, &__block_literal_global_594);
          }

          v9 = &get_DCIP3BluePrimaryData_data;
          break;
        case 0xCu:
          if (get_DisplayP3RedPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3RedPrimaryData_predicate, &__block_literal_global_597);
          }

          *a2 = get_DisplayP3RedPrimaryData_data;
          if (get_DisplayP3GreenPrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3GreenPrimaryData_predicate, &__block_literal_global_600);
          }

          *a3 = get_DisplayP3GreenPrimaryData_data;
          if (get_DisplayP3BluePrimaryData_predicate != -1)
          {
            dispatch_once(&get_DisplayP3BluePrimaryData_predicate, &__block_literal_global_603);
          }

          v9 = &get_DisplayP3BluePrimaryData_data;
          break;
        default:
          return result;
      }
    }

    *a4 = *v9;
    return 1;
  }

  return result;
}

uint64_t ColorSyncProfileContainsSupportedCICP(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      Tag = ColorSyncProfileGetTag(v3, @"cicp");
      result = valid_cicp_tag(Tag, 0);
      if (a2)
      {
        if (result)
        {
          *a2 = *(CFDataGetBytePtr(Tag) + 2);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef create_GenericCMYKProfile()
{
  if (create_GenericCMYKProfile_predicate != -1)
  {
    dispatch_once(&create_GenericCMYKProfile_predicate, &__block_literal_global_268);
  }

  v1 = create_GenericCMYKProfile_profile;

  return CFRetain(v1);
}

unsigned __int8 *CMMProfile::GetTag(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 160);
  if (!v4)
  {
LABEL_4:
    if (!*(a1 + 16))
    {
      return 0;
    }

    SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
    if (!ColorSyncProfileContainsTag(*(a1 + 16), SignatureFromFourCharCode) || !ColorSyncProfileGetTag(*(a1 + 16), SignatureFromFourCharCode))
    {
      v4 = 0;
LABEL_332:
      CFRelease(SignatureFromFourCharCode);
      return v4;
    }

    *theData = 0u;
    v178 = 0u;
    v6 = *(a1 + 16);
    v175 = &unk_1F0E08C80;
    v176 = v6;
    theData[0] = CFRetain(SignatureFromFourCharCode);
    Tag = ColorSyncProfileGetTag(v176, theData[0]);
    theData[1] = Tag;
    if (Tag)
    {
      *&v178 = CFDataGetBytePtr(Tag);
      *(&v178 + 1) = CFDataGetLength(theData[1]);
    }

    v8 = *(a1 + 160);
    do
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (*(&v178 + 1) >= 8uLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4294967294;
    }

    CMMThrowExceptionOnError(v10);
    if (v2 <= 1684370274)
    {
      if (v2 <= 1633768034)
      {
        if (v2 <= 1110589743)
        {
          v13 = -1093812784;
LABEL_95:
          if ((v2 + v13) >= 3)
          {
            goto LABEL_281;
          }

LABEL_96:
          v46 = bswap32(*v178);
          if (v46 <= 1835430960)
          {
            if (v46 == 1832993312)
            {
              if (*(&v178 + 1) <= 0x20uLL)
              {
                v74 = 4294967126;
              }

              else
              {
                v74 = 0;
              }

              CMMThrowExceptionOnError(v74);
              v4 = CMMBase::NewInternal(0x268, *(a1 + 24), v75, v76);
              CMMLutTag::CMMLutTag(v4, v2, &v175, v9, *(a1 + 24), *(v178 + 8), *(v178 + 9));
              v44 = 0;
              v50 = &unk_1F0E09400;
              goto LABEL_163;
            }

            if (v46 == 1833058592)
            {
              if (*(&v178 + 1) <= 0x20uLL)
              {
                v47 = 4294967126;
              }

              else
              {
                v47 = 0;
              }

              CMMThrowExceptionOnError(v47);
              v4 = CMMBase::NewInternal(0x268, *(a1 + 24), v48, v49);
              CMMLutTag::CMMLutTag(v4, v2, &v175, v9, *(a1 + 24), *(v178 + 9), *(v178 + 8));
              v44 = 0;
              v50 = &unk_1F0E094B0;
LABEL_163:
              *v4 = v50;
              goto LABEL_305;
            }

LABEL_157:
            if (v2 <= 1633772134)
            {
              goto LABEL_281;
            }

LABEL_269:
            v18 = 29287;
LABEL_270:
            if (v2 == (v18 | 0x61610000))
            {
              goto LABEL_271;
            }

LABEL_281:
            v149 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
            v44 = v149;
            v150 = v178;
            *v149 = &unk_1F0E08C48;
            *(v149 + 2) = v2;
            v149[3] = v9;
            v149[4] = *(&v150 + 1);
            v149[2] = 0;
            if (v9)
            {
              *(v9 + 16) = v149;
            }

            v4 = 0;
            v149[5] = v150;
            *(v149 + 24) = 0;
            goto LABEL_305;
          }

          if (v46 == 1835430962)
          {
            if (*(&v178 + 1) <= 0x34uLL)
            {
              v77 = 4294967126;
            }

            else
            {
              v77 = 0;
            }

            CMMThrowExceptionOnError(v77);
            v80 = CMMBase::NewInternal(0x90, *(a1 + 24), v78, v79);
            v4 = v80;
            v174 = *(a1 + 24);
            *(v80 + 2) = v2;
            *(v80 + 4) = 0;
            *(v80 + 5) = 0;
            *(v80 + 24) = 0;
            *(v80 + 2) = 0;
            *(v80 + 3) = v9;
            if (v9)
            {
              *(v9 + 16) = v80;
            }

            *v80 = &unk_1F0E09278;
            *(v80 + 60) = 0;
            if (v178)
            {
              if (*(&v178 + 1) >= 52)
              {
                v81 = 44;
              }

              else
              {
                v81 = *(&v178 + 1) - 8;
              }

              if (v81 <= 0)
              {
                v82 = 4294967126;
              }

              else
              {
                v82 = 0;
              }

              CMMThrowExceptionOnError(v82);
              memcpy(v4 + 50, (v178 + 8), v81);
            }

            v83 = 54;
            do
            {
              *&v4[v83] = bswap32(*&v4[v83]);
              v83 += 4;
            }

            while (v83 != 90);
            v84 = bswap32(*(v4 + 45));
            *(v4 + 45) = HIWORD(v84);
            v85 = bswap32(*(v4 + 46));
            *(v4 + 46) = HIWORD(v85);
            if ((HIWORD(v84) - 4097) <= 0xF000u || (HIWORD(v85) - 4097) <= 0xF000u || (v86 = v4[50], (v86 - 16) < 0xFFFFFFF1) || v4[51] - 16 <= 0xFFFFFFF0)
            {
              exception = __cxa_allocate_exception(4uLL);
              *exception = -170;
            }

            v87 = v4[52];
            v88 = 1;
            do
            {
              v89 = v88 * v87;
              v91 = v88 * v87 >= v88 && v89 >= v87;
              CMMThrowExceptionWithLog(v91, "Overflow in Power");
              v88 = v89;
              --v86;
            }

            while (v86);
            v94 = v89 * v4[51];
            v95 = 2 * v4[50] * *(v4 + 45);
            v96 = v4[51] * *(v4 + 46);
            v97 = v95 + 52;
            v98 = v95 + 52 + 2 * v94;
            v99 = v98 + 2 * v96;
            *(v4 + 4) = v99;
            if (v99 > *(&v178 + 1))
            {
              v165 = __cxa_allocate_exception(4uLL);
              *v165 = -170;
            }

            v102 = CMMBase::NewInternal(0x28, v174, v92, v93);
            v103 = v178;
            if (v178)
            {
              if (v97 <= *(&v178 + 1))
              {
                v104 = v95;
              }

              else
              {
                v104 = *(&v178 + 1) - 52;
              }

              if (v104 <= 0)
              {
                v105 = 4294967126;
              }

              else
              {
                v105 = 0;
              }

              CMMThrowExceptionOnError(v105);
              v103 = v178 + 52;
            }

            *v102 = &unk_1F0E09180;
            v102[1] = 1;
            v102[3] = v103;
            v102[4] = v95;
            v102[2] = 0;
            *(v4 + 13) = v102;
            v108 = CMMBase::NewInternal(0x28, v174, v100, v101);
            v109 = v178;
            if (v178)
            {
              if (v98 <= *(&v178 + 1))
              {
                v110 = 2 * v94;
              }

              else
              {
                v110 = *(&v178 + 1) - v97;
              }

              if (v110 <= 0)
              {
                v111 = 4294967126;
              }

              else
              {
                v111 = 0;
              }

              CMMThrowExceptionOnError(v111);
              v109 = v178 + v97;
            }

            *v108 = &unk_1F0E09180;
            v108[1] = 1;
            v108[3] = v109;
            v108[4] = 2 * v94;
            v108[2] = 0;
            *(v4 + 12) = v108;
            v112 = CMMBase::NewInternal(0x28, v174, v106, v107);
            v113 = 2 * v96;
            v114 = v178;
            if (!v178)
            {
              goto LABEL_267;
            }

            if (v99 <= *(&v178 + 1))
            {
              v115 = 2 * v96;
            }

            else
            {
              v115 = *(&v178 + 1) - v98;
            }

            if (v115 <= 0)
            {
              v116 = 4294967126;
            }

            else
            {
              v116 = 0;
            }
          }

          else
          {
            if (v46 != 1835430961)
            {
              goto LABEL_157;
            }

            if (*(&v178 + 1) <= 0x30uLL)
            {
              v51 = 4294967126;
            }

            else
            {
              v51 = 0;
            }

            CMMThrowExceptionOnError(v51);
            v54 = CMMBase::NewInternal(0x78, *(a1 + 24), v52, v53);
            v4 = v54;
            v55 = *(a1 + 24);
            *(v54 + 2) = v2;
            v54[4] = 0;
            v54[5] = 0;
            *(v54 + 24) = 0;
            v54[2] = 0;
            v54[3] = v9;
            if (v9)
            {
              *(v9 + 16) = v54;
            }

            *v54 = &unk_1F0E091A0;
            v56 = v54 + 50;
            if (v178)
            {
              if (*(&v178 + 1) >= 48)
              {
                v57 = 40;
              }

              else
              {
                v57 = *(&v178 + 1) - 8;
              }

              if (v57 <= 0)
              {
                v58 = 4294967126;
              }

              else
              {
                v58 = 0;
              }

              CMMThrowExceptionOnError(v58);
              memcpy(v4 + 50, (v178 + 8), v57);
            }

            v59 = 54;
            do
            {
              *&v4[v59] = bswap32(*&v4[v59]);
              v59 += 4;
            }

            while (v59 != 90);
            CMMThrowExceptionOnCondition(v4[52] < 2u);
            CMMThrowExceptionOnCondition(*v56 - 16 < 0xFFFFFFF1);
            CMMThrowExceptionOnCondition(v4[51] - 16 < 0xFFFFFFF1);
            v173 = v55;
            v62 = v4[50];
            if (v4[50])
            {
              v63 = v4[52];
              v64 = 1;
              do
              {
                v65 = v64;
                v64 *= v63;
                v67 = v64 >= v65 && v64 >= v63;
                CMMThrowExceptionWithLog(v67, "Overflow in Power");
                --v62;
              }

              while (v62);
              v62 = *v56 << 8;
            }

            else
            {
              v64 = 1;
            }

            v128 = v4[51];
            v129 = v64 * v128;
            v130 = v62 | 0x30;
            v98 = (v62 | 0x30) + v129;
            v131 = v98 + (v128 << 8);
            *(v4 + 4) = v131;
            if (v131 > *(&v178 + 1))
            {
              v164 = __cxa_allocate_exception(4uLL);
              *v164 = -170;
            }

            v134 = CMMBase::NewInternal(0x28, v173, v60, v61);
            v135 = v178;
            if (v178)
            {
              if (v98 <= *(&v178 + 1))
              {
                v136 = v129;
              }

              else
              {
                v136 = *(&v178 + 1) - v130;
              }

              if (v136 <= 0)
              {
                v137 = 4294967126;
              }

              else
              {
                v137 = 0;
              }

              CMMThrowExceptionOnError(v137);
              v135 = v178 + v130;
            }

            *v134 = &unk_1F0E09180;
            v134[1] = 1;
            v134[3] = v135;
            v134[4] = v129;
            v134[2] = 0;
            *(v4 + 12) = v134;
            v140 = CMMBase::NewInternal(0x28, v173, v132, v133);
            v141 = v178;
            if (v178)
            {
              if (v130 <= *(&v178 + 1))
              {
                v142 = v62;
              }

              else
              {
                v142 = *(&v178 + 1) - 48;
              }

              if (v142 <= 0)
              {
                v143 = 4294967126;
              }

              else
              {
                v143 = 0;
              }

              CMMThrowExceptionOnError(v143);
              v141 = v178 + 48;
            }

            *v140 = &unk_1F0E09180;
            v140[1] = 1;
            v140[3] = v141;
            v140[4] = v62;
            v140[2] = 0;
            *(v4 + 13) = v140;
            v112 = CMMBase::NewInternal(0x28, v173, v138, v139);
            v113 = v128 << 8;
            v114 = v178;
            if (!v178)
            {
LABEL_267:
              v44 = 0;
              *v112 = &unk_1F0E09180;
              v112[1] = 1;
              v112[3] = v114;
              v112[4] = v113;
              v112[2] = 0;
              *(v4 + 14) = v112;
              goto LABEL_305;
            }

            if (v131 <= *(&v178 + 1))
            {
              v144 = v128 << 8;
            }

            else
            {
              v144 = *(&v178 + 1) - v98;
            }

            if (v144 <= 0)
            {
              v116 = 4294967126;
            }

            else
            {
              v116 = 0;
            }
          }

          CMMThrowExceptionOnError(v116);
          v114 = v178 + v98;
          goto LABEL_267;
        }

        if (v2 <= 1633763938)
        {
          v13 = -1110589744;
          goto LABEL_95;
        }

        if (v2 != 1633763939 && v2 != 1633765219)
        {
          if (v2 != 1633767247)
          {
            goto LABEL_281;
          }

          v68 = CMMBase::NewInternal(0x50, *(a1 + 24), v11, v12);
          v44 = v68;
          v69 = v178;
          *v68 = &unk_1F0E08C48;
          *(v68 + 2) = 1633767247;
          v68[3] = v9;
          v68[4] = *(&v69 + 1);
          v68[2] = 0;
          if (v9)
          {
            *(v9 + 16) = v68;
          }

          v68[5] = v69;
          *(v68 + 24) = 0;
          *v68 = &unk_1F0E09598;
          if (*(&v69 + 1) >= 0x20uLL)
          {
            v70 = 0;
          }

          else
          {
            v70 = 4294967126;
          }

          CMMThrowExceptionOnError(v70);
          v4 = 0;
          v71 = v44[5];
          *(v44 + 13) = bswap32(v71[2]);
          *(v44 + 14) = v71[3];
          *(v44 + 15) = v71[4];
          *(v44 + 16) = v71[5];
          *(v44 + 17) = v71[6];
          *(v44 + 18) = v71[7];
          goto LABEL_305;
        }

LABEL_268:
        v44 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMXYZTag::CMMXYZTag(v44, v2, v178, *(&v178 + 1), v9);
LABEL_304:
        v4 = 0;
        goto LABEL_305;
      }

      if (v2 <= 1649693250)
      {
        if (v2 > 1633773414)
        {
          if (v2 == 1633773415)
          {
LABEL_271:
            v145 = bswap32(*v178);
            switch(v145)
            {
              case 0x484C4720u:
                if ((*(*a1 + 104))(a1))
                {
                  v157 = 0;
                }

                else
                {
                  v157 = 4294967126;
                }

                CMMThrowExceptionOnError(v157);
                v160 = CMMBase::NewInternal(0x58, *(a1 + 24), v158, v159);
                v44 = v160;
                v161 = *(a1 + 160);
                do
                {
                  v162 = v161;
                  if (!v161)
                  {
                    break;
                  }

                  v161 = *(v161 + 16);
                }

                while (v161);
                CMMCurveTag::CMMCurveTag(v160, v2, v178, *(&v178 + 1), v162);
                *v44 = &unk_1F0E08EE8;
                *(v44 + 4) = xmmword_19A96E240;
                *(v44 + 20) = 1051372203;
                CMMHLGCurveTag::Initialize(v44);
                goto LABEL_304;
              case 0x50512020u:
                if ((*(*a1 + 104))(a1))
                {
                  v151 = 0;
                }

                else
                {
                  v151 = 4294967126;
                }

                CMMThrowExceptionOnError(v151);
                v154 = CMMBase::NewInternal(0x60, *(a1 + 24), v152, v153);
                v44 = v154;
                v155 = *(a1 + 160);
                do
                {
                  v156 = v155;
                  if (!v155)
                  {
                    break;
                  }

                  v155 = *(v155 + 16);
                }

                while (v155);
                CMMCurveTag::CMMCurveTag(v154, v2, v178, *(&v178 + 1), v156);
                *v44 = &unk_1F0E08E28;
                v44[8] = 0;
                *(v44 + 9) = xmmword_19A96E230;
                *(v44 + 22) = 1100316672;
                CMMPQCurveTag::Initialize(v44);
                goto LABEL_304;
              case 0x70617261u:
                v44 = CMMBase::NewInternal(0x80, *(a1 + 24), v11, v12);
                CMMParaCurveTag::CMMParaCurveTag(v44, v2, v178, *(&v178 + 1), v9);
                goto LABEL_304;
            }

LABEL_303:
            v44 = 0;
            goto LABEL_304;
          }

          goto LABEL_269;
        }

        if (v2 != 1633768035)
        {
          v18 = 25191;
          goto LABEL_270;
        }

        goto LABEL_268;
      }

      if (v2 > 1651208307)
      {
        if (v2 != 1651208308)
        {
          if (v2 == 1667851120)
          {
            v121 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
            v4 = v121;
            v122 = v178;
            *v121 = &unk_1F0E08C48;
            *(v121 + 2) = 1667851120;
            *(v121 + 3) = v9;
            *(v121 + 4) = *(&v122 + 1);
            *(v121 + 2) = 0;
            if (v9)
            {
              *(v9 + 16) = v121;
            }

            *(v121 + 5) = v122;
            *(v121 + 24) = 0;
            *v121 = &unk_1F0E09740;
            v123 = *v122;
            if (*(&v122 + 1) >= 0xCuLL)
            {
              v124 = 0;
            }

            else
            {
              v124 = 4294967126;
            }

            CMMThrowExceptionOnError(v124);
            if (v123 == 1885563235)
            {
              v125 = 0;
            }

            else
            {
              v125 = 4294967126;
            }

            CMMThrowExceptionOnError(v125);
            v44 = 0;
            *(v4 + 50) = *(*(v4 + 5) + 8);
            goto LABEL_305;
          }

          if (v2 != 1668313716)
          {
            goto LABEL_281;
          }

          v15 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          v4 = v15;
          v16 = v178;
          *v15 = &unk_1F0E08C48;
          *(v15 + 2) = 1668313716;
          *(v15 + 3) = v9;
          *(v15 + 4) = *(&v16 + 1);
          *(v15 + 2) = 0;
          if (v9)
          {
            *(v9 + 16) = v15;
          }

          *(v15 + 5) = v16;
          *(v15 + 24) = 0;
          *v15 = &unk_1F0E08CD8;
          if (*(&v16 + 1) >= 9uLL)
          {
            v17 = 0;
          }

          else
          {
            v17 = 4294967126;
          }

          goto LABEL_240;
        }

        goto LABEL_149;
      }

      if (v2 != 1649693251)
      {
        v14 = 1649957210;
LABEL_148:
        if (v2 != v14)
        {
          goto LABEL_281;
        }

        goto LABEL_149;
      }

      goto LABEL_154;
    }

    if (v2 <= 1852009521)
    {
      if (v2 > 1733843289)
      {
        if (v2 <= 1751405637)
        {
          if (v2 != 1733843290)
          {
            if (v2 != 1734438260)
            {
              goto LABEL_281;
            }

            goto LABEL_96;
          }

          goto LABEL_149;
        }

        if (v2 == 1751405638)
        {
          v146 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          v44 = v146;
          v147 = v178;
          *v146 = &unk_1F0E08C48;
          *(v146 + 2) = 1751405638;
          v146[3] = v9;
          v146[4] = *(&v147 + 1);
          v146[2] = 0;
          if (v9)
          {
            *(v9 + 16) = v146;
          }

          v146[5] = v147;
          *(v146 + 24) = 0;
          *v146 = &unk_1F0E095D0;
          if (*(&v147 + 1) >= 0xCuLL)
          {
            v148 = 0;
          }

          else
          {
            v148 = 4294967126;
          }

          CMMThrowExceptionOnError(v148);
          goto LABEL_304;
        }

        if (v2 != 1800688195)
        {
          v14 = 1819635049;
          goto LABEL_148;
        }

        goto LABEL_154;
      }

      if (v2 <= 1684893283)
      {
        if (v2 == 1684370275)
        {
          v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          CMMTextDescTag::CMMTextDescTag(v4, 1684370275, v178, *(&v178 + 1), v9);
        }

        else
        {
          if (v2 != 1684890724)
          {
            goto LABEL_281;
          }

          v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
          CMMTextDescTag::CMMTextDescTag(v4, 1684890724, v178, *(&v178 + 1), v9);
        }

LABEL_150:
        v44 = 0;
        goto LABEL_305;
      }

      if (v2 == 1684893284)
      {
        v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMTextDescTag::CMMTextDescTag(v4, 1684893284, v178, *(&v178 + 1), v9);
        goto LABEL_150;
      }

      v72 = 1733579331;
LABEL_153:
      if (v2 != v72)
      {
        goto LABEL_281;
      }

LABEL_154:
      v73 = bswap32(*v178);
      if (v73 == 1668641398)
      {
        v117 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        v4 = v117;
        v118 = v178;
        *v117 = &unk_1F0E08C48;
        *(v117 + 2) = v2;
        *(v117 + 3) = v9;
        *(v117 + 4) = *(&v118 + 1);
        *(v117 + 2) = 0;
        if (v9)
        {
          *(v9 + 16) = v117;
        }

        *(v117 + 5) = v118;
        *(v117 + 24) = 0;
        *v117 = &unk_1F0E08D10;
        CMMCurveTag::Initialize(v117);
      }

      else
      {
        if (v73 != 1885434465)
        {
          goto LABEL_303;
        }

        v4 = CMMBase::NewInternal(0x80, *(a1 + 24), v11, v12);
        CMMParaCurveTag::CMMParaCurveTag(v4, v2, v178, *(&v178 + 1), v9);
      }

      goto LABEL_150;
    }

    if (v2 <= 1886610800)
    {
      if ((v2 - 1886545200) < 3)
      {
        goto LABEL_96;
      }

      if (v2 != 1852009522)
      {
        goto LABEL_281;
      }

      v19 = CMMBase::NewInternal(0xA0, *(a1 + 24), v11, v12);
      v4 = v19;
      v20 = *(a1 + 24);
      v21 = *(a1 + 52);
      if (v21 == 1281450528)
      {
        v21 = 1347182946;
      }

      *v19 = &unk_1F0E08C48;
      *(v19 + 2) = 1852009522;
      v19[4] = 0;
      v22 = v19 + 4;
      v19[5] = 0;
      *(v19 + 24) = 0;
      v19[2] = 0;
      v19[3] = v9;
      if (v9)
      {
        *(v9 + 16) = v19;
      }

      *v19 = &unk_1F0E09560;
      *(v19 + 13) = v21;
      if (*(&v178 + 1) >= 0x55uLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = 4294967126;
      }

      CMMThrowExceptionOnError(v23);
      v26 = *(v4 + 13);
      if (v26 != 1347182946 && v26 != 1482250784)
      {
        v167 = __cxa_allocate_exception(4uLL);
        *v167 = -171;
      }

      *(v4 + 7) = 0;
      *(v4 + 8) = 0;
      *(v4 + 9) = 0;
      if (v178)
      {
        if (*(&v178 + 1) >= 84)
        {
          v27 = 76;
        }

        else
        {
          v27 = *(&v178 + 1) - 8;
        }

        if (v27 <= 0)
        {
          v28 = 4294967126;
        }

        else
        {
          v28 = 0;
        }

        CMMThrowExceptionOnError(v28);
        memcpy(v4 + 80, (v178 + 8), v27);
      }

      v29 = 80;
      do
      {
        *&v4[v29] = bswap32(*&v4[v29]);
        v29 += 4;
      }

      while (v29 != 92);
      v30 = *(v4 + 21);
      v31 = *(v4 + 22);
      if (v31)
      {
        v32 = 4294967126;
        if (!(v31 >> 30))
        {
          if (v30 <= 0x7FFFFFFFu / (2 * v31))
          {
            v32 = 0;
          }

          else
          {
            v32 = 4294967126;
          }
        }

        CMMThrowExceptionOnError(v32);
      }

      v33 = (2 * v31 + 38) * v30;
      *v22 = v33 + 84;
      if ((v33 + 84) > *(&v178 + 1))
      {
        v166 = __cxa_allocate_exception(4uLL);
        *v166 = -50;
      }

      v34 = CMMBase::NewInternal(0x28, v20, v24, v25);
      *v34 = &unk_1F0E09180;
      v34[1] = 1;
      v34[3] = 0;
      v34[4] = v33;
      v37 = CMMBase::NewInternal(v33, v20, v35, v36);
      v34[2] = v37;
      if (v178)
      {
        if (v33 + 84 > *(&v178 + 1))
        {
          v33 = *(&v178 + 1) - 84;
        }

        if (v33 <= 0)
        {
          v38 = 4294967126;
        }

        else
        {
          v38 = 0;
        }

        CMMThrowExceptionOnError(v38);
        memcpy(v37, (v178 + 84), v33);
        v37 = v34[2];
      }

      v39 = CMMTable::UInt8Data(v37, v34[3]);
      v40 = *(v4 + 21);
      if (v40)
      {
        for (i = 0; i != v40; ++i)
        {
          if (v31 != -3)
          {
            v42 = 32;
            v43 = (v31 + 3);
            do
            {
              *(v39 + v42) = bswap32(*(v39 + v42)) >> 16;
              v42 += 2;
              --v43;
            }

            while (v43);
          }

          v39 += 2 * (v31 + 3) + 32;
        }
      }

      v44 = 0;
      v45 = 64;
      if (*(v4 + 13) == 1482250784)
      {
        v45 = 56;
      }

      *&v4[v45] = v34;
LABEL_305:
      v168 = *(a1 + 48);
      if (v168 <= 1296255029)
      {
        if (v168 == 1281450528)
        {
          v168 = 1145856354;
        }

        else if (v168 == 1296255029)
        {
          v168 = 893602898;
        }
      }

      else
      {
        switch(v168)
        {
          case 1296255030:
            v168 = 910380114;
            break;
          case 1296255031:
            v168 = 927157330;
            break;
          case 1296255032:
            v168 = 943934546;
            break;
        }
      }

      v169 = CMMGetChannelCountFromCMMSpace(v168);
      if (*(a1 + 52) == 1281450528)
      {
        v170 = 1347182946;
      }

      else
      {
        v170 = *(a1 + 52);
      }

      v171 = CMMGetChannelCountFromCMMSpace(v170);
      if (v4)
      {
        if (!(*(*v4 + 32))(v4, v169, v171))
        {
LABEL_327:
          if (!v4)
          {
            v4 = v44;
          }

          if (!*(a1 + 160))
          {
            *(a1 + 160) = v4;
          }

          CMMTagDataAccess::~CMMTagDataAccess(&v175);
          goto LABEL_332;
        }
      }

      else
      {
        if (!v44 || !(*(*v44 + 32))(v44, v169, v171))
        {
          goto LABEL_326;
        }

        v4 = v44;
        v44 = 0;
      }

      (*(*v4 + 8))(v4);
LABEL_326:
      v4 = 0;
      goto LABEL_327;
    }

    if (v2 <= 1918392665)
    {
      if (v2 != 1886610801)
      {
        v72 = 1918128707;
        goto LABEL_153;
      }

      v119 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
      v4 = v119;
      v120 = v178;
      *v119 = &unk_1F0E08C48;
      *(v119 + 2) = 1886610801;
      *(v119 + 3) = v9;
      *(v119 + 4) = *(&v120 + 1);
      *(v119 + 2) = 0;
      if (v9)
      {
        *(v9 + 16) = v119;
      }

      *(v119 + 5) = v120;
      *(v119 + 24) = 0;
      *v119 = &unk_1F0E09640;
      if (*(&v120 + 1) >= 0xDuLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = 4294967126;
      }
    }

    else
    {
      if (v2 == 1918392666)
      {
LABEL_149:
        v4 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
        CMMXYZTag::CMMXYZTag(v4, v2, v178, *(&v178 + 1), v9);
        goto LABEL_150;
      }

      if (v2 != 1952801640)
      {
        v14 = 2004119668;
        goto LABEL_148;
      }

      v126 = CMMBase::NewInternal(0x38, *(a1 + 24), v11, v12);
      v4 = v126;
      v127 = v178;
      *v126 = &unk_1F0E08C48;
      *(v126 + 2) = 1952801640;
      *(v126 + 3) = v9;
      *(v126 + 4) = *(&v127 + 1);
      *(v126 + 2) = 0;
      if (v9)
      {
        *(v9 + 16) = v126;
      }

      *(v126 + 5) = v127;
      *(v126 + 24) = 0;
      *v126 = &unk_1F0E09608;
      if (*(&v127 + 1) >= 0xCuLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = 4294967126;
      }
    }

LABEL_240:
    CMMThrowExceptionOnError(v17);
    goto LABEL_150;
  }

  while (*(v4 + 2) != a2)
  {
    v4 = *(v4 + 2);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  return v4;
}

uint64_t CMMProfileMaker::IsMatrixHDRProfile(const ColorSyncProfile *a1, int a2, int a3, int a4)
{
  if (a3 != 1482250784 || a2 != 1380401696)
  {
    return 0;
  }

  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x63696370u);
  v8 = ColorSyncProfileContainsTag(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  if (!v8)
  {
    v17 = ColorSyncCreateSignatureFromFourCharCode(0x68645446u);
    v18 = ColorSyncProfileContainsTag(a1, v17);
    CFRelease(v17);
    if (v18)
    {
      v19 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
      v20 = ColorSyncProfileContainsTag(a1, v19);
      CFRelease(v19);
      if (v20)
      {
        v21 = ColorSyncCreateSignatureFromFourCharCode(0x6758595Au);
        v22 = ColorSyncProfileContainsTag(a1, v21);
        CFRelease(v21);
        if (v22)
        {
          v23 = ColorSyncCreateSignatureFromFourCharCode(0x6258595Au);
          v24 = ColorSyncProfileContainsTag(a1, v23);
          CFRelease(v23);
          if (v24)
          {
            Tag = ColorSyncProfileGetTag(a1, @"hdTF");
            if (Tag)
            {
              v26 = Tag;
              BytePtr = CFDataGetBytePtr(Tag);
              Length = CFDataGetLength(v26);
              if (BytePtr)
              {
                if (Length >= 0xC && *BytePtr == 543648115)
                {
                  v29 = bswap32(*(BytePtr + 2));
                  result = 1;
                  if (v29 == 1212958496 || v29 == 1347493920)
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_27:
    v30 = ColorSyncCreateSignatureFromFourCharCode(0x61617267u);
    v31 = ColorSyncProfileContainsTag(a1, v30);
    CFRelease(v30);
    if (v31 && (v32 = ColorSyncCreateSignatureFromFourCharCode(0x61616767u), v33 = ColorSyncProfileContainsTag(a1, v32), CFRelease(v32), v33) && (v34 = ColorSyncCreateSignatureFromFourCharCode(0x61616267u), v35 = ColorSyncProfileContainsTag(a1, v34), CFRelease(v34), v35) && (v36 = ColorSyncCreateSignatureFromFourCharCode(0x61615263u), v37 = ColorSyncProfileContainsTag(a1, v36), CFRelease(v36), v37) && (v38 = ColorSyncCreateSignatureFromFourCharCode(0x61614763u), v39 = ColorSyncProfileContainsTag(a1, v38), CFRelease(v38), v39) && CMMProfileMaker::TagExists(a1, 0x61614263))
    {
      if ((a4 & 1) == 0)
      {
        v40 = 0;
        while (1)
        {
          result = ColorSyncProfileGetTag(a1, off_1E7523998[v40]);
          if (!result)
          {
            break;
          }

          v41 = result;
          v42 = CFDataGetBytePtr(result);
          v43 = CFDataGetLength(v41);
          if (v42)
          {
            v44 = v43 >= 0xC;
          }

          else
          {
            v44 = 0;
          }

          if (!v44)
          {
            return 0;
          }

          result = *v42 == 538988880 || *v42 == 541543496;
          if (v40 <= 1)
          {
            ++v40;
            if (result)
            {
              continue;
            }
          }

          return result;
        }

        return result;
      }
    }

    else
    {
      if (!a4)
      {
        return 0;
      }

      v46 = ColorSyncCreateSignatureFromFourCharCode(0x72545243u);
      v47 = ColorSyncProfileContainsTag(a1, v46);
      CFRelease(v46);
      if (!v47)
      {
        return 0;
      }

      v48 = ColorSyncCreateSignatureFromFourCharCode(0x67545243u);
      v49 = ColorSyncProfileContainsTag(a1, v48);
      CFRelease(v48);
      if (!v49)
      {
        return 0;
      }

      v50 = ColorSyncCreateSignatureFromFourCharCode(0x62545243u);
      v51 = ColorSyncProfileContainsTag(a1, v50);
      CFRelease(v50);
      if (!v51)
      {
        return 0;
      }

      v52 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
      v53 = ColorSyncProfileContainsTag(a1, v52);
      CFRelease(v52);
      if (!v53 || !CMMProfileMaker::TagExists(a1, 0x6758595A) || !CMMProfileMaker::TagExists(a1, 0x6258595A))
      {
        return 0;
      }
    }

    return 1;
  }

  v9 = ColorSyncProfileGetTag(a1, @"cicp");
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = CFDataGetBytePtr(v9);
  v12 = CFDataGetLength(v10);
  result = 0;
  if (v11 && v12 >= 0xC)
  {
    if (*v11 != 1885563235)
    {
      return 0;
    }

    v14 = v11[9];
    v15 = v14 & 0xFFFFFFFD;
    v16 = v14 == 8 ? a4 : 0;
    result = 1;
    if (v15 != 16 && (v16 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMProfileMaker::IsMatrixBased(const ColorSyncProfile *a1, int a2, int a3)
{
  if (a3 != 1482250784)
  {
    return 0;
  }

  if (a2 > 1282766367)
  {
    if (a2 <= 1482250783)
    {
      if (a2 == 1282766368)
      {
        goto LABEL_16;
      }

      v4 = 1380401696;
    }

    else
    {
      if (a2 == 1482250784 || a2 == 1501067552)
      {
        goto LABEL_16;
      }

      v4 = 1497588338;
    }

LABEL_15:
    if (a2 != v4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a2 <= 1212961567)
  {
    if (a2 == 860048466)
    {
      goto LABEL_16;
    }

    v4 = 1129142560;
    goto LABEL_15;
  }

  if (a2 != 1212961568 && a2 != 1213421088)
  {
    v4 = 1281450528;
    goto LABEL_15;
  }

LABEL_16:
  if (ColorSyncProfileContainsSupportedCICP(a1, 0))
  {
    return 1;
  }

  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x72545243u);
  v7 = ColorSyncProfileContainsTag(a1, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  if (v7)
  {
    v8 = ColorSyncCreateSignatureFromFourCharCode(0x67545243u);
    v9 = ColorSyncProfileContainsTag(a1, v8);
    CFRelease(v8);
    if (v9)
    {
      v10 = ColorSyncCreateSignatureFromFourCharCode(0x62545243u);
      v11 = ColorSyncProfileContainsTag(a1, v10);
      CFRelease(v10);
      if (v11)
      {
        v12 = ColorSyncCreateSignatureFromFourCharCode(0x7258595Au);
        v13 = ColorSyncProfileContainsTag(a1, v12);
        CFRelease(v12);
        if (v13 && CMMProfileMaker::TagExists(a1, 0x6758595A) && CMMProfileMaker::TagExists(a1, 0x6258595A))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

CMMProfile *CMMProfileMaker::MakeProfile(CMMProfileMaker *this, const ColorSyncProfile *a2, CMMMemMgr *a3)
{
  v3 = a3;
  v6 = ColorSyncProfileCopyHeader(this);
  if (!v6)
  {
    exception = __cxa_allocate_exception(4uLL);
    v75 = -171;
LABEL_63:
    *exception = v75;
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(v6);
  v10 = *(BytePtr + 3);
  v9 = *(BytePtr + 4);
  v11 = *(BytePtr + 5);
  CFRelease(v7);
  if (v10 <= 1852662635)
  {
    if (v10 == 1633842036)
    {
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
      v33 = ColorSyncProfileContainsTag(this, SignatureFromFourCharCode);
      CFRelease(SignatureFromFourCharCode);
      if (v33)
      {
        v16 = CMMBase::NewInternal(0xB8, a2, v34, v35);
        CMMProfile::CMMProfile(v16, this, a2);
        v18 = &unk_1F0E08B48;
        goto LABEL_41;
      }

      goto LABEL_61;
    }

    if (v10 != 1818848875)
    {
      if (v10 == 1835955314)
      {
        if (v9 == 1196573017)
        {
          v19 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v20 = ColorSyncProfileContainsTag(this, v19);
          CFRelease(v19);
          if (v20)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v21, v22);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08748;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

        if (CMMProfileMaker::IsMatrixHDRProfile(this, v9, v11, v3))
        {
          goto LABEL_40;
        }

        v62 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
        v63 = ColorSyncProfileContainsTag(this, v62);
        CFRelease(v62);
        if (v63 && CMMProfileMaker::TagExists(this, 0x42324130))
        {
          v16 = CMMBase::NewInternal(0xB8, a2, v64, v65);
          CMMProfile::CMMProfile(v16, this, a2);
          v18 = &unk_1F0E088C8;
          goto LABEL_41;
        }

        if (CMMProfileMaker::IsMatrixBased(this, v9, v11))
        {
          v16 = CMMBase::NewInternal(0xE8, a2, v66, v67);
          CMMProfile::CMMProfile(v16, this, a2);
          *v68 = &unk_1F0E087C8;
          *(v68 + 184) = 0u;
          *(v68 + 200) = 0u;
          *(v68 + 216) = 0u;
          return v16;
        }
      }

LABEL_61:
      exception = __cxa_allocate_exception(4uLL);
      v75 = -170;
      goto LABEL_63;
    }

    v27 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
    v28 = ColorSyncProfileContainsTag(this, v27);
    CFRelease(v27);
    if (!v28)
    {
      goto LABEL_61;
    }

    v16 = CMMBase::NewInternal(0xB8, a2, v29, v30);
    CMMProfile::CMMProfile(v16, this, a2);
    *v31 = &unk_1F0E08A48;
    *(v31 + 176) = 808464432;
  }

  else
  {
    if (v10 <= 1935896177)
    {
      if (v10 == 1852662636)
      {
        v36 = ColorSyncCreateSignatureFromFourCharCode(0x6E636C32u);
        v37 = ColorSyncProfileContainsTag(this, v36);
        CFRelease(v36);
        if (v37)
        {
          v16 = CMMBase::NewInternal(0xB8, a2, v38, v39);
          CMMProfile::CMMProfile(v16, this, a2);
          v18 = &unk_1F0E08BC8;
          goto LABEL_41;
        }
      }

      else if (v10 == 1886549106)
      {
        if (v9 == 1196573017)
        {
          v12 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v13 = ColorSyncProfileContainsTag(this, v12);
          CFRelease(v12);
          if (v13)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v14, v15);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08948;
LABEL_41:
            *v17 = v18;
            return v16;
          }
        }

        else
        {
          v49 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
          v50 = ColorSyncProfileContainsTag(this, v49);
          CFRelease(v49);
          if (v50)
          {
            v51 = ColorSyncCreateSignatureFromFourCharCode(0x42324130u);
            v52 = ColorSyncProfileContainsTag(this, v51);
            CFRelease(v51);
            if (v52)
            {
              v16 = CMMBase::NewInternal(0xB8, a2, v53, v54);
              CMMProfile::CMMProfile(v16, this, a2);
              v18 = &unk_1F0E089C8;
              goto LABEL_41;
            }
          }
        }
      }

      goto LABEL_61;
    }

    if (v10 != 1936744803)
    {
      if (v10 == 1935896178)
      {
        if (v9 == 1196573017)
        {
          v23 = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
          v24 = ColorSyncProfileContainsTag(this, v23);
          CFRelease(v23);
          if (v24)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v25, v26);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E085C8;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

        if (!CMMProfileMaker::IsMatrixHDRProfile(this, v9, v11, v3))
        {
          v57 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
          v58 = ColorSyncProfileContainsTag(this, v57);
          CFRelease(v57);
          if (v58)
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v59, v60);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E086C8;
            goto LABEL_41;
          }

          if (CMMProfileMaker::IsMatrixBased(this, v9, v11))
          {
            v16 = CMMBase::NewInternal(0xB8, a2, v69, v70);
            CMMProfile::CMMProfile(v16, this, a2);
            v18 = &unk_1F0E08648;
            goto LABEL_41;
          }

          goto LABEL_61;
        }

LABEL_40:
        v16 = CMMBase::NewInternal(0x108, a2, v55, v56);
        CMMProfile::CMMProfile(v16, this, a2);
        *(v17 + 216) = 0u;
        *(v17 + 200) = 0u;
        *(v17 + 184) = 0u;
        v18 = &unk_1F0E08848;
        goto LABEL_41;
      }

      goto LABEL_61;
    }

    v40 = ColorSyncCreateSignatureFromFourCharCode(0x41324230u);
    v41 = ColorSyncProfileContainsTag(this, v40);
    CFRelease(v40);
    if (!v41)
    {
      goto LABEL_61;
    }

    v42 = ColorSyncCreateSignatureFromFourCharCode(0x42324130u);
    v43 = ColorSyncProfileContainsTag(this, v42);
    CFRelease(v42);
    if (!v43)
    {
      goto LABEL_61;
    }

    v16 = CMMBase::NewInternal(0xB8, a2, v44, v45);
    CMMProfile::CMMProfile(v16, this, a2);
    *v46 = &unk_1F0E08AC8;
    *(v46 + 180) = 0;
    if (*(v46 + 43) == 2 && *(v16 + 12) == 1281450528 && *(v16 + 13) == 1281450528)
    {
      Tag = CMMProfile::GetTag(v16, 1093812784);
      if (Tag)
      {
      }

      else
      {
        v48 = 0;
      }

      v71 = (*(*v16 + 88))(v16, 1110589744);
      if (v71)
      {
        if (v48)
        {
          v73 = v72;
          if (v72)
          {
            if ((*(*v48 + 64))(v48) == 2 && (*(*v73 + 64))(v73) == 2 && v48[45] == 2 && v73[45] == 2 && v48[46] == 2 && v73[46] == 2)
            {
              *(v16 + 180) = 1;
            }
          }
        }
      }
    }
  }

  return v16;
}

void CMMMemMgr::CMMMemMgr(CMMMemMgr *this)
{
  v2 = malloc_type_calloc(0x50uLL, 0x10uLL, 0x10200409A1873C7uLL);
  *this = v2;
  if (v2)
  {
    *(v2 + 18) = 1;
    pthread_mutex_init((v2 + 8), 0);
  }
}

void *CMMBase::NewInternal(CMMBase *this, void **a2, CMMMemMgr *a3, const char *a4)
{
  if (this >= 0xFFFFFFFFFFFFFFC1 || (v5 = (this + 63) & 0xFFFFFFFFFFFFFFE0, v5 != ((this + 31) & 0xFFFFFFFFFFFFFFE0) + 32))
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = -171;
    goto LABEL_12;
  }

  v7 = malloc_type_calloc(v5, 0x10uLL, 0xA00400A0658E3uLL);
  if (!v7)
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = -108;
LABEL_12:
    *exception = v16;
  }

  v8 = v7;
  v9 = (*a2 + 1);
  v8[3] = v9;
  pthread_mutex_lock(v9);
  v10 = *a2;
  v11 = **a2;
  if (v11)
  {
    v12 = 1;
    do
    {
      v13 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v12 = 2;
    v13 = *a2;
  }

  *v13 = v8;
  v8[v12] = v13;
  pthread_mutex_unlock((v10 + 1));
  return v8 + 4;
}

void CMMProfile::CMMProfile(CMMProfile *this, CFTypeRef cf, CMMMemMgr *a3)
{
  *this = &unk_1F0E084C8;
  *(this + 2) = 1;
  *(this + 44) = 808464432;
  *(this + 2) = cf;
  *(this + 3) = a3;
  if (!cf)
  {
    *(this + 20) = 0;
    *(this + 21) = 0;
LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  CFRetain(cf);
  *(this + 20) = 0;
  *(this + 21) = 0;
  v5 = ColorSyncProfileCopyHeader(cf);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  v8 = *(BytePtr + 3);
  v10 = *BytePtr;
  v9 = *(BytePtr + 1);
  *(this + 4) = *(BytePtr + 2);
  *(this + 5) = v8;
  *(this + 2) = v10;
  *(this + 3) = v9;
  v11 = *(BytePtr + 7);
  v13 = *(BytePtr + 4);
  v12 = *(BytePtr + 5);
  *(this + 8) = *(BytePtr + 6);
  *(this + 9) = v11;
  *(this + 6) = v13;
  *(this + 7) = v12;
  CFRelease(v6);
}

_OWORD *createRuntimeInstance(unsigned int a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  v18 = *MEMORY[0x1E69E9840];
  ColorSpacetNofComponents = getColorSpacetNofComponents(a1);
  v7 = getColorSpacetNofComponents(v4);
  v8 = 0;
  if (ColorSpacetNofComponents)
  {
    v9 = v7;
    if (v7)
    {
      if (ColorSyncTransformGetTypeID_predicate != -1)
      {
        dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
      }

      Instance = _CFRuntimeCreateInstance();
      v8 = Instance;
      if (Instance)
      {
        Instance[1] = 0u;
        Instance[7] = 0u;
        Instance[8] = 0u;
        Instance[5] = 0u;
        Instance[6] = 0u;
        Instance[3] = 0u;
        Instance[4] = 0u;
        Instance[2] = 0u;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v8 + 14) = Mutable;
        if (Mutable && (v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v8 + 17) = v12) != 0))
        {
          SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a1);
          v14 = ColorSyncCreateSignatureFromFourCharCode(v4);
          v17.__sig = 0;
          *v17.__opaque = 0;
          CFDictionarySetValue(*(v8 + 14), kColorSyncTransformSrcSpace, SignatureFromFourCharCode);
          if (v4 == 1734438260)
          {
            v15 = kColorSyncTransformGamutCheck;
          }

          else
          {
            v15 = v14;
          }

          CFDictionarySetValue(*(v8 + 14), kColorSyncTransformDstSpace, v15);
          CFRelease(SignatureFromFourCharCode);
          CFRelease(v14);
          pthread_mutexattr_init(&v17);
          pthread_mutexattr_settype(&v17, 2);
          pthread_mutex_init((v8 + 1), &v17);
          pthread_mutexattr_destroy(&v17);
          *(v8 + 11) = ColorSpacetNofComponents;
          *(v8 + 12) = v9;
          if (a3)
          {
            *(v8 + 15) = CFRetain(a3);
          }
        }

        else
        {
          CFRelease(v8);
          return 0;
        }
      }
    }
  }

  return v8;
}

CFIndex AppleCMMInitializeTransform(CFIndex result, const __CFArray *a2, const __CFDictionary *a3)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19A916B68(void *a1, int a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ConversionManager::~ConversionManager(va);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (a10)
    {
      v18 = *a10;
      if (*a10)
      {
        do
        {
          v19 = *v18;
          free(v18);
          v18 = v19;
        }

        while (v19);
      }
    }
  }

  else
  {
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (a10)
    {
      v20 = *a10;
      if (*a10)
      {
        do
        {
          v21 = *v20;
          free(v20);
          v20 = v21;
        }

        while (v21);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A9169CCLL);
}

void sub_19A916C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

ColorSyncProfile *ColorSyncMakeProfile(CFTypeRef cf)
{
  v95 = *MEMORY[0x1E69E9840];
  *v86 = *"lppa";
  memset(&v86[16], 0, 32);
  *&bytes[16] = unk_19A96E540;
  v83 = xmmword_19A96E550;
  v84 = *"LPPA";
  v85 = xmmword_19A96E570;
  *bytes = *"";
  memset(v81, 0, sizeof(v81));
  *v80 = 1954047348;
  if (!cf)
  {
    goto LABEL_17;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(cf, @"profileVersion");
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v4);
      v7 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
      if (v7 <= 0x1F)
      {
        buffer = 0u;
        v88 = 0u;
        if (CFStringGetCString(v4, &buffer, v7, 0x8000100u) == 1)
        {
          v8 = strchr(&buffer, 46);
          v9 = v8;
          if (v8)
          {
            v10 = strchr(v8 + 1, 46);
            v11 = v10;
            if (v10)
            {
              v12 = atoi(v10 + 1);
              *v11 = 0;
              LODWORD(v11) = v12 & 0xF;
            }

            v13 = atoi(v9 + 1);
            *v9 = 0;
            LODWORD(v9) = (v11 | (16 * v13)) << 16;
          }

          v14 = v9 | (atoi(&buffer) << 24);
          goto LABEL_18;
        }
      }

LABEL_17:
      v14 = 34603008;
      goto LABEL_18;
    }
  }

  if (!CFDictionaryContainsKey(cf, @"paraR"))
  {
    goto LABEL_17;
  }

  v14 = 34603008;
  if (CFDictionaryContainsKey(cf, @"paraG"))
  {
    if (CFDictionaryContainsKey(cf, @"paraB"))
    {
      v14 = 0x4000000;
    }

    else
    {
      v14 = 34603008;
    }
  }

LABEL_18:
  *&bytes[8] = v14;
  *&buffer = time(0);
  v15 = localtime(&buffer);
  v16 = v15->u16[2] | (v15->i32[0] << 16);
  v17 = vand_s8(v15[1], 0xFFFF0000FFFFLL);
  v18.i64[0] = v17.u32[0];
  v18.i64[1] = v17.u32[1];
  v19 = vshlq_u64(v18, xmmword_19A96DF40);
  v20 = vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] | ((v15[2].i32[0] << 16) + 0x10000) | (v15[2].i32[1] + 1900);
  *&buffer = v20;
  DWORD2(buffer) = v16;
  if (cf)
  {
    v21 = CFGetTypeID(cf);
    if (v21 == CFDictionaryGetTypeID())
    {
      v22 = CFDictionaryGetValue(cf, @"Date");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFArrayGetTypeID() && CFArrayGetCount(v23) == 6)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &buffer);
          v26 = CFArrayGetValueAtIndex(v23, 1);
          CFNumberGetValue(v26, kCFNumberSInt16Type, &buffer + 2);
          v27 = CFArrayGetValueAtIndex(v23, 2);
          CFNumberGetValue(v27, kCFNumberSInt16Type, &buffer + 4);
          v28 = CFArrayGetValueAtIndex(v23, 3);
          CFNumberGetValue(v28, kCFNumberSInt16Type, &buffer + 6);
          v29 = CFArrayGetValueAtIndex(v23, 4);
          CFNumberGetValue(v29, kCFNumberSInt16Type, &buffer + 8);
          v30 = CFArrayGetValueAtIndex(v23, 5);
          CFNumberGetValue(v30, kCFNumberSInt16Type, &buffer + 10);
          v20 = buffer;
          v16 = DWORD2(buffer);
        }
      }
    }
  }

  *&bytes[24] = v20;
  LODWORD(v83) = v16;
  snprintf(&v81[4], 0xC7uLL, "Copyright Apple Inc., %4d", v20);
  if (!cf)
  {
    return 0;
  }

  v31 = CFGetTypeID(cf);
  if (v31 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v32 = CFDictionaryGetValue(cf, @"profileType");
  v33 = v32;
  if (!v32)
  {
    return v33;
  }

  if (!CFEqual(v32, @"abstract"))
  {
    if (CFEqual(v33, @"abstractWithVals"))
    {
      v38 = longFromDictionary(cf, @"gridPoints");
      if (v38 - 51 >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v39 = v38;
      }

      else
      {
        v39 = 17;
      }

      v93 = doubleFromDictionary(cf, @"limitHueMin");
      v94 = doubleFromDictionary(cf, @"limitHueMax");
      *&buffer = doubleFromDictionary(cf, @"brightnessDarks");
      *(&buffer + 1) = doubleFromDictionary(cf, @"brightnessMids");
      *&v88 = doubleFromDictionary(cf, @"brightnessLights");
      v91 = doubleFromDictionary(cf, @"hue");
      v92 = doubleFromDictionary(cf, @"sat");
      v40 = doubleFromDictionary(cf, @"tint");
      if (v40 == 0.0)
      {
        v43 = doubleFromDictionary(cf, @"tintDarks");
        v41 = doubleFromDictionary(cf, @"tintMids");
        v42 = doubleFromDictionary(cf, @"tintLights");
      }

      else
      {
        v41 = v40;
        v42 = v40 * 0.5;
        v43 = 0.0;
      }

      *(&v88 + 1) = v43;
      v89 = v41;
      v90 = v42;
      v50 = create(0, 0, 1, 0);
      v33 = v50;
      if (v50)
      {
        qmemcpy(&bytes[12], "tsba baL baL", 12);
        addXYZTag(v50, @"wtpt", *(&v85 + 4), HIDWORD(v85));
        addAbstractA2B(v33, v39, _LabToLabValsProc, &buffer);
      }
    }

    else
    {
      if (CFEqual(v33, @"displayRGB"))
      {
        DisplayRGB = makeDisplayRGB(bytes, cf, v48);
      }

      else if (CFEqual(v33, @"appleCopy"))
      {
        DisplayRGB = makeAppleCopy(bytes, cf);
      }

      else if (CFEqual(v33, @"calGray"))
      {
        DisplayRGB = makeCalGray(bytes, cf);
      }

      else if (CFEqual(v33, @"calRGB"))
      {
        DisplayRGB = makeCalRGB(bytes, cf);
      }

      else if (CFEqual(v33, @"concatenate"))
      {
        DisplayRGB = makeConcatenated(bytes, cf);
      }

      else if (CFEqual(v33, @"tableBasedRGB"))
      {
        DisplayRGB = makeTableBasedRGB(bytes, cf);
      }

      else if (CFEqual(v33, @"copyTags"))
      {
        DisplayRGB = makeByCopyingTags(bytes, cf);
      }

      else if (CFEqual(v33, @"copyWithGTC"))
      {
        DisplayRGB = makeCopyWithFlexGTC(bytes, cf);
      }

      else if (CFEqual(v33, @"FlexGTC.based.A2B0"))
      {
        DisplayRGB = makeCopyWithFlexGTCBasedA2B0(bytes, cf, 0);
      }

      else if (CFEqual(v33, @"XYZ"))
      {
        DisplayRGB = makeXYZProfile(bytes);
      }

      else
      {
        if (!CFEqual(v33, @"Lab"))
        {
          return 0;
        }

        DisplayRGB = makeLabProfile(bytes, cf);
      }

      v33 = DisplayRGB;
    }

    if (!v33)
    {
      return v33;
    }

    goto LABEL_71;
  }

  v34 = longFromDictionary(cf, @"gridPoints");
  if (v34 - 51 >= 0xFFFFFFFFFFFFFFCFLL)
  {
    v35 = v34;
  }

  else
  {
    v35 = 17;
  }

  v36 = CFDictionaryGetValue(cf, @"refcon");
  if (v36)
  {
    BytePtr = CFDataGetBytePtr(v36);
  }

  else
  {
    BytePtr = 0;
  }

  v44 = CFDictionaryGetValue(cf, @"proc");
  if (!v44)
  {
    return 0;
  }

  v45 = CFDataGetBytePtr(v44);
  if (!v45)
  {
    return 0;
  }

  v46 = v45;
  v47 = create(0, 0, 1, 0);
  v33 = v47;
  if (!v47)
  {
    return v33;
  }

  qmemcpy(&bytes[12], "tsba baL baL", 12);
  addXYZTag(v47, @"wtpt", *(&v85 + 4), HIDWORD(v85));
  addAbstractA2B(v33, v35, v46, BytePtr);
LABEL_71:
  v51 = *MEMORY[0x1E695E498];
  v52 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x1E695E498]);
  if (v52)
  {
    v53 = v52;
    ColorSyncProfileSetHeader(v33, v52);
    CFRelease(v53);
  }

  v54 = CFDictionaryGetValue(cf, @"description");
  v55 = CFDictionaryGetValue(cf, @"asciiName");
  if (v54 | v55)
  {
    ColorSyncProfileSetDescriptionTag(v33, v54, v55);
  }

  v56 = CFDictionaryGetValue(cf, @"copyright");
  v57 = v56;
  if (*&bytes[8] >> 26)
  {
    if (!v56)
    {
      goto LABEL_90;
    }

    v58 = CFGetTypeID(v56);
    if (v58 == CFDictionaryGetTypeID())
    {
      ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v57);
      goto LABEL_94;
    }

    v64 = CFGetTypeID(v57);
    if (v64 == CFStringGetTypeID())
    {
      *&buffer = @"en_US";
      values = v57;
      v65 = CFDictionaryCreate(0, &buffer, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v65)
      {
        goto LABEL_94;
      }

      v63 = v65;
      ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v65);
    }

    else
    {
LABEL_90:
      v66 = strlen(&v81[4]);
      v67 = CFStringCreateWithBytes(0, &v81[4], v66, 0x600u, 0);
      if (!v67)
      {
        goto LABEL_94;
      }

      v63 = v67;
      *&buffer = @"en_US";
      values = v67;
      v68 = CFDictionaryCreate(0, &buffer, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v68)
      {
        v69 = v68;
        ColorSyncProfileSetLocalizedStringDictionary(v33, @"cprt", v68);
        CFRelease(v69);
      }
    }

    goto LABEL_93;
  }

  if (v56 && (v60 = CFGetTypeID(v56), v60 == CFStringGetTypeID()))
  {
    CFStringGetCString(v57, &v81[4], 200, 0x600u);
    v81[203] = 0;
  }

  else if (ColorSyncProfileContainsTag(v33, @"cprt"))
  {
    goto LABEL_94;
  }

  v61 = strlen(&v81[4]);
  v62 = CFDataCreateWithBytesNoCopy(0, v80, v61 + 9, v51);
  if (v62)
  {
    v63 = v62;
    ColorSyncProfileSetTag(v33, @"cprt", v62);
LABEL_93:
    CFRelease(v63);
  }

LABEL_94:
  v70 = CFDictionaryGetValue(cf, @"luminance");
  if (v70)
  {
    *&buffer = 0;
    if (CFNumberGetValue(v70, kCFNumberDoubleType, &buffer) == 1)
    {
      addXYZTag(v33, @"lumi", (*&buffer * 65536.0 + 0.5) << 32, 0);
    }
  }

  v71 = CFDictionaryGetValue(cf, @"addMD5");
  v72 = *MEMORY[0x1E695E4D0];
  if (v71 == *MEMORY[0x1E695E4D0])
  {
    *&v86[4] = ColorSyncProfileGetMD5(v33);
    v73 = CFDataCreateWithBytesNoCopy(0, bytes, 128, v51);
    if (v73)
    {
      v74 = v73;
      ColorSyncProfileSetHeader(v33, v73);
      CFRelease(v74);
    }
  }

  if (CFDictionaryGetValue(cf, @"createImmutableCopy") == v72)
  {
    v75 = ColorSyncProfileCopyData(v33, 0);
    if (v75)
    {
      v76 = v75;
      v77 = ColorSyncProfileCreate(v75, 0);
      if (v77)
      {
        v78 = v77;
        CFRelease(v33);
        v33 = v78;
      }

      CFRelease(v76);
    }
  }

  return v33;
}

ColorSyncProfile *makeDisplayRGB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v440 = *MEMORY[0x1E69E9840];
  v425 = 0;
  v423 = 0u;
  v424 = 0u;
  *v422 = 0u;
  v420 = 0u;
  memset(v421, 0, sizeof(v421));
  v418 = 0u;
  v419 = 0u;
  v416 = 0u;
  v417 = 0u;
  LODWORD(v425) = *(v3 + 8);
  v7 = longFromDictionary(v4, @"whiteTemp");
  if (v7)
  {
    if ((xyFromTemp(v7, &v419, &v419 + 1) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    *&v419 = doubleFromDictionary(v5, @"whitePointx");
    v8 = doubleFromDictionary(v5, @"whitePointy");
    v9 = 0;
    *(&v419 + 1) = v8;
    if (*&v419 == 0.0 || v8 == 0.0)
    {
      return v9;
    }
  }

  if (CFDictionaryContainsKey(v5, @"phosphorSet"))
  {
    Value = CFDictionaryGetValue(v5, @"phosphorSet");
    v9 = Value;
    if (!Value)
    {
      return v9;
    }

    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      v12 = CFEqual(v9, @"P22-EBU");
      v13 = xmmword_19A96DF50;
      v14 = xmmword_19A96DF60;
      v15 = xmmword_19A96DF70;
      if (v12)
      {
        goto LABEL_25;
      }

      v16 = CFEqual(v9, @"HDTV");
      v14 = xmmword_19A96DF60;
      v15 = xmmword_19A96DF70;
      v13 = xmmword_19A96DF50;
      if (v16)
      {
        goto LABEL_25;
      }

      v17 = CFEqual(v9, @"CCIR709");
      v13 = xmmword_19A96DF80;
      v14 = xmmword_19A96DF90;
      v15 = xmmword_19A96DFA0;
      if (v17)
      {
        goto LABEL_25;
      }

      if (CFEqual(v9, @"sRGB"))
      {
        v15 = xmmword_19A96DFA0;
        v13 = xmmword_19A96DF80;
        v14 = xmmword_19A96DF90;
LABEL_25:
        v416 = v15;
        v417 = v14;
        v418 = v13;
        goto LABEL_26;
      }

      if (CFEqual(v9, @"AdobeRGB98"))
      {
        v14 = xmmword_19A96DFB0;
        v15 = xmmword_19A96DFA0;
        v13 = xmmword_19A96DF80;
        goto LABEL_25;
      }

      v20 = CFEqual(v9, @"WideRGB");
      v13 = xmmword_19A96DFC0;
      v14 = xmmword_19A96DFD0;
      v15 = xmmword_19A96DFE0;
      if (v20)
      {
        goto LABEL_25;
      }

      v21 = CFEqual(v9, @"700/525/450nm");
      v14 = xmmword_19A96DFD0;
      v15 = xmmword_19A96DFE0;
      v13 = xmmword_19A96DFC0;
      if (v21)
      {
        goto LABEL_25;
      }

      if (CFEqual(v9, @"Trinitron"))
      {
        v13 = xmmword_19A96DFF0;
        v14 = xmmword_19A96E000;
        v15 = xmmword_19A96E010;
        goto LABEL_25;
      }
    }

    return 0;
  }

  v18 = CFDictionaryGetValue(v5, @"skipPhosphorsCheck");
  if (!primariesFromDictionary(v5, &v416) || v18 != *MEMORY[0x1E695E4D0] && !checkPrimaries(&v416))
  {
    return 0;
  }

LABEL_26:
  v22 = CFDictionaryContainsKey(v5, @"paraR") && CFDictionaryContainsKey(v5, @"paraG") && CFDictionaryContainsKey(v5, @"paraB") != 0;
  v23 = CFDictionaryContainsKey(v5, @"tableR") && CFDictionaryContainsKey(v5, @"tableG") && CFDictionaryContainsKey(v5, @"tableB") != 0;
  v24 = CFDictionaryGetValue(v5, @"sRGBGamma");
  v25 = *MEMORY[0x1E695E4D0];
  if (v24 == *MEMORY[0x1E695E4D0])
  {
    BYTE9(v423) = 1;
    *(v421 + 8) = ksRGBCurve;
    *(&v421[1] + 8) = unk_19A96E5C0;
    *(&v421[2] + 8) = xmmword_19A96E5D0;
    *(&v421[3] + 8) = unk_19A96E5E0;
    *(&v421[4] + 8) = ksRGBCurve;
    *(&v421[5] + 8) = unk_19A96E5C0;
    *(&v421[6] + 8) = xmmword_19A96E5D0;
    *(&v421[7] + 8) = unk_19A96E5E0;
    *(&v421[11] + 8) = unk_19A96E5E0;
    *(&v421[8] + 8) = ksRGBCurve;
    *(&v421[9] + 8) = unk_19A96E5C0;
    *(&v421[10] + 8) = xmmword_19A96E5D0;
  }

  else if (v22)
  {
    BYTE9(v423) = 1;
    gammaCurveFromDictionary(v421 + 8, v5, @"paraR");
    gammaCurveFromDictionary(&v421[4] + 8, v5, @"paraG");
    gammaCurveFromDictionary(&v421[8] + 8, v5, @"paraB");
    v9 = 0;
    if (WORD4(v421[0]) == 255 || WORD4(v421[4]) == 255 || WORD4(v421[8]) == 255)
    {
      return v9;
    }
  }

  else if (v23)
  {
    BYTE10(v423) = 1;
    v66 = gammaTableFromDictionary(v5, @"tableR");
    v9 = v67;
    *(&v421[12] + 1) = v66;
    *&v421[13] = v67;
    v68 = gammaTableFromDictionary(v5, @"tableG");
    v70 = v69;
    *(&v421[14] + 1) = v68;
    *&v421[15] = v69;
    *(&v421[13] + 1) = gammaTableFromDictionary(v5, @"tableB");
    *&v421[14] = v71;
    if (!v9)
    {
      return v9;
    }

    v9 = 0;
    if (!v70 || !v71)
    {
      return v9;
    }
  }

  else
  {
    gammaFromDictionary(v5, @"gammaR");
    v75 = v74;
    *&v420 = v74;
    gammaFromDictionary(v5, @"gammaG");
    v77 = v76;
    *(&v420 + 1) = v76;
    gammaFromDictionary(v5, @"gammaB");
    v9 = 0;
    *v421 = v78;
    if (v75 == 0.0 || v77 == 0.0 || v78 == 0.0)
    {
      return v9;
    }
  }

  if (CFDictionaryContainsKey(v5, @"tableChans") || CFDictionaryContainsKey(v5, @"tableEntries") || CFDictionaryContainsKey(v5, @"tableEntrySize") || CFDictionaryContainsKey(v5, @"tableData"))
  {
    v26 = longFromDictionary(v5, @"tableChans");
    if ((v26 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v27 = v26;
      v28 = longFromDictionary(v5, @"tableEntries");
      if (v28 - 2 <= 0x3FE)
      {
        v29 = v28;
        v30 = longFromDictionary(v5, @"tableEntrySize");
        if (v30 - 1 <= 1)
        {
          v31 = v30;
          v32 = CFDictionaryGetValue(v5, @"tableData");
          if (v32)
          {
            v33 = v32;
            v34 = CFGetTypeID(v32);
            if (v34 == CFDataGetTypeID() && CFDataGetLength(v33) >= v29 * v27 * v31)
            {
              WORD4(v421[15]) = v27;
              WORD5(v421[15]) = v29;
              WORD6(v421[15]) = v31;
              v422[0] = CFDataGetBytePtr(v33);
            }
          }
        }
      }
    }
  }

  *&v423 = longFromDictionary(v5, @"targetWhite");
  gammaFromDictionary(v5, @"targetGamma");
  v422[1] = v35;
  BYTE11(v423) = 1;
  if (CFDictionaryContainsKey(v5, @"slopeLimitGamma"))
  {
    v36 = CFDictionaryGetValue(v5, @"slopeLimitGamma");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFBooleanGetTypeID())
      {
        if (CFEqual(v37, v25))
        {
          BYTE11(v423) = 0;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"noVCGT"))
  {
    v39 = CFDictionaryGetValue(v5, @"noVCGT");
    if (v39)
    {
      v40 = v39;
      v41 = CFGetTypeID(v39);
      if (v41 == CFBooleanGetTypeID())
      {
        if (CFEqual(v40, v25))
        {
          BYTE13(v423) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"noNDIN"))
  {
    v42 = CFDictionaryGetValue(v5, @"noNDIN");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 == CFBooleanGetTypeID())
      {
        if (CFEqual(v43, v25))
        {
          BYTE14(v423) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"noParametricVCGT"))
  {
    v45 = CFDictionaryGetValue(v5, @"noParametricVCGT");
    if (v45)
    {
      v46 = v45;
      v47 = CFGetTypeID(v45);
      if (v47 == CFBooleanGetTypeID())
      {
        if (CFEqual(v46, v25))
        {
          HIBYTE(v423) = 1;
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"allowLargeVCGT"))
  {
    v48 = CFDictionaryGetValue(v5, @"allowLargeVCGT");
    if (v48)
    {
      v49 = v48;
      v50 = CFGetTypeID(v48);
      if (v50 == CFBooleanGetTypeID())
      {
        if (CFEqual(v49, v25))
        {
          LOBYTE(v424) = 1;
        }
      }
    }
  }

  v51 = create(0, 0, 1, 0);
  v9 = v51;
  if (!v51)
  {
    goto LABEL_575;
  }

  qmemcpy((v6 + 12), "rtnm BGR ZYX", 12);
  ColorSyncProfileSetPrimaries(v51, &v416);
  *&v428[4] = 0;
  *v428 = 0;
  v54 = *&v422[1];
  __asm { FMOV            V2.2D, #0.5 }

  if (_ZF && !BYTE9(v423))
  {
    v59 = WORD4(v421[15]);
    if (WORD4(v421[15]) && BYTE8(v423) == 1)
    {
      *bytes = v420;
      *&bytes[16] = *&v421[0];
      v60 = v422[0];
      v61 = WORD5(v421[15]);
      v62 = WORD6(v421[15]);
      v63 = bytes;
      v64 = v9;
      v65 = 0;
LABEL_186:
      fillCurvTable(v64, v60, v59, v61, v62, v63, v65);
      goto LABEL_212;
    }

    v79 = *&v420;
    if (fmax(fmax(*&v420, *(&v420 + 1)), *v421) > 1.8 && !BYTE11(v423))
    {
      __ya = _Q2;
      bzero(bytes, 0x1800uLL);
      *v437 = v79;
      *&v437[8] = *(&v420 + 1);
      *&v437[16] = *&v421[0];
      v80 = 2.2;
      if (v79 >= 2.25 || (v81 = 2.2, v79 <= 2.15))
      {
        if (v79 >= 1.85 || (v81 = 1.8, v79 <= 1.75))
        {
          _NF = v79 > 0.95 && v79 < 1.05;
          v81 = 1.0;
          if (!_NF)
          {
            v81 = v79;
          }
        }
      }

      if (*(&v420 + 1) >= 2.25 || (v83 = 2.2, *(&v420 + 1) <= 2.15))
      {
        if (*(&v420 + 1) >= 1.85 || *(&v420 + 1) <= 1.75)
        {
          v116 = *(&v420 + 1) > 0.95 && *(&v420 + 1) < 1.05;
          v83 = 1.0;
          if (!v116)
          {
            v83 = *(&v420 + 1);
          }
        }

        else
        {
          v83 = 1.8;
        }
      }

      if (*v421 >= 2.25 || *v421 <= 2.15)
      {
        if (*v421 >= 1.85 || *v421 <= 1.75)
        {
          v120 = *v421 > 0.95 && *v421 < 1.05;
          v80 = 1.0;
          if (!v120)
          {
            v80 = *v421;
          }
        }

        else
        {
          v80 = 1.8;
        }
      }

      v121 = 1.8;
      if (v81 > 1.8)
      {
        v121 = (v81 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v122 = 1.8;
      if (v83 > 1.8)
      {
        v122 = (v83 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v123 = 1.8;
      if (v80 > 1.8)
      {
        v123 = (v80 + -1.8) * 0.6 / 0.4 + 1.8;
      }

      v124 = 0.0;
      v125 = 0.0;
      if (v81 > 1.8)
      {
        v125 = (v81 + -1.8) * 0.0521327014 / 0.4;
      }

      if (v83 > 1.8)
      {
        v124 = (v83 + -1.8) * 0.0521327014 / 0.4;
      }

      v126 = 0.0;
      if (v80 > 1.8)
      {
        v126 = (v80 + -1.8) * 0.0521327014 / 0.4;
      }

      v127 = 0;
      v365 = 1.0 - v126;
      v363 = 1.0 - v125;
      v364 = 1.0 - v124;
      v361 = vdupq_lane_s64(*&v124, 0);
      v362 = vdupq_lane_s64(*&v125, 0);
      v360 = vdupq_lane_s64(*&v126, 0);
      v128 = xmmword_19A96E020;
      v129 = xmmword_19A96E030;
      v130 = xmmword_19A96E040;
      v131 = xmmword_19A96E050;
      do
      {
        v375 = v131;
        v404 = v130;
        v407 = v129;
        v409 = v128;
        v132 = vcvtq_f64_u64(v131);
        v133 = vcvtq_f64_u64(v130);
        v134 = vcvtq_f64_u64(v129);
        v135 = vcvtq_f64_u64(v128);
        v136 = vdupq_n_s64(0x408FF80000000000uLL);
        v381 = vaddq_f64(v362, vdivq_f64(vmulq_n_f64(v135, v363), v136));
        v379 = vaddq_f64(v362, vdivq_f64(vmulq_n_f64(v134, v363), v136));
        v377 = vaddq_f64(v362, vdivq_f64(vmulq_n_f64(v133, v363), v136));
        v370 = vaddq_f64(v362, vdivq_f64(vmulq_n_f64(v132, v363), v136));
        v390 = vaddq_f64(v361, vdivq_f64(vmulq_n_f64(v135, v364), v136));
        v388 = vaddq_f64(v361, vdivq_f64(vmulq_n_f64(v134, v364), v136));
        v384 = vaddq_f64(v361, vdivq_f64(vmulq_n_f64(v132, v364), v136));
        v386 = vaddq_f64(v361, vdivq_f64(vmulq_n_f64(v133, v364), v136));
        v397 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v134, v365), v136));
        v401 = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v135, v365), v136));
        *lengtha = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v132, v365), v136));
        __xb = vaddq_f64(v360, vdivq_f64(vmulq_n_f64(v133, v365), v136));
        v372 = pow(v370.f64[0], v121);
        v370.f64[0] = pow(v370.f64[1], v121);
        v368 = pow(v377.f64[0], v121);
        v377.f64[0] = pow(v377.f64[1], v121);
        v367 = pow(v379.f64[0], v121);
        v379.f64[0] = pow(v379.f64[1], v121);
        v366 = pow(v381.f64[0], v121);
        v137 = pow(v381.f64[1], v121);
        v139.f64[0] = v366;
        v138.f64[0] = v367;
        v139.f64[1] = v137;
        v138.f64[1] = v379.f64[0];
        v140.f64[0] = v368;
        v140.f64[1] = v377.f64[0];
        v141.f64[0] = v372;
        v141.f64[1] = v370.f64[0];
        v382 = vdupq_n_s64(0x40EFFFE000000000uLL);
        v142 = &bytes[v127];
        *&bytes[v127] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v141))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v140)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v138))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v139)))));
        v379.f64[0] = pow(v384.f64[0], v122);
        v384.f64[0] = pow(v384.f64[1], v122);
        v377.f64[0] = pow(v386.f64[0], v122);
        v386.f64[0] = pow(v386.f64[1], v122);
        v373 = pow(v388.f64[0], v122);
        v388.f64[0] = pow(v388.f64[1], v122);
        v370.f64[0] = pow(v390.f64[0], v122);
        v143 = pow(v390.f64[1], v122);
        v145.f64[0] = v370.f64[0];
        v144.f64[0] = v373;
        v145.f64[1] = v143;
        v144.f64[1] = v388.f64[0];
        v147.f64[0] = v377.f64[0];
        v146.f64[0] = v379.f64[0];
        v147.f64[1] = v386.f64[0];
        v146.f64[1] = v384.f64[0];
        v142[128] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v146))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v147)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v144))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v145)))));
        v390.f64[0] = pow(*lengtha, v123);
        lengtha[0] = pow(*&lengtha[1], v123);
        v388.f64[0] = pow(__xb.f64[0], v123);
        __xb.f64[0] = pow(__xb.f64[1], v123);
        v386.f64[0] = pow(v397.f64[0], v123);
        v397.f64[0] = pow(v397.f64[1], v123);
        v384.f64[0] = pow(v401.f64[0], v123);
        v148 = pow(v401.f64[1], v123);
        v150.f64[0] = v384.f64[0];
        v149.f64[0] = v386.f64[0];
        v150.f64[1] = v148;
        v149.f64[1] = v397.f64[0];
        v152.f64[0] = v388.f64[0];
        v151.f64[0] = v390.f64[0];
        v152.f64[1] = __xb.f64[0];
        *&v151.f64[1] = lengtha[0];
        v142[256] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v151))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v152)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v149))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__ya, v382, v150)))));
        v153 = vdupq_n_s64(8uLL);
        v129 = vaddq_s64(v407, v153);
        v130 = vaddq_s64(v404, v153);
        v131 = vaddq_s64(v375, v153);
        v128 = vaddq_s64(v409, v153);
        v127 += 16;
      }

      while (v127 != 2048);
      v60 = bytes;
      v63 = v437;
      v64 = v9;
      v59 = 3;
      goto LABEL_185;
    }

    v90 = *&v420 * 256.0;
    if (*&v420 * 256.0 <= 0.0)
    {
      if (*&v420 * 256.0 >= 0.0)
      {
        goto LABEL_139;
      }

      v91 = -0.5;
    }

    else
    {
      v91 = 0.5;
    }

    v90 = v90 + v91;
LABEL_139:
    if (v90 >= 32767.0)
    {
      LOWORD(v113) = 0x7FFF;
    }

    else if (v90 <= -32768.0)
    {
      LOWORD(v113) = 0x8000;
    }

    else
    {
      v113 = v90;
    }

    *v428 = v113;
    v117 = *(&v420 + 1) * 256.0;
    if (*(&v420 + 1) * 256.0 <= 0.0)
    {
      if (*(&v420 + 1) * 256.0 >= 0.0)
      {
        goto LABEL_161;
      }

      v118 = -0.5;
    }

    else
    {
      v118 = 0.5;
    }

    v117 = v117 + v118;
LABEL_161:
    if (v117 >= 32767.0)
    {
      LOWORD(v119) = 0x7FFF;
    }

    else if (v117 <= -32768.0)
    {
      LOWORD(v119) = 0x8000;
    }

    else
    {
      v119 = v117;
    }

    *&v428[2] = v119;
    v154 = *v421 * 256.0;
    if (*v421 * 256.0 <= 0.0)
    {
      if (*v421 * 256.0 >= 0.0)
      {
LABEL_193:
        if (v154 >= 32767.0)
        {
          LOWORD(v156) = 0x7FFF;
        }

        else if (v154 <= -32768.0)
        {
          LOWORD(v156) = 0x8000;
        }

        else
        {
          v156 = v154;
        }

        *&v428[4] = v156;
        goto LABEL_208;
      }

      v155 = -0.5;
    }

    else
    {
      v155 = 0.5;
    }

    v154 = v154 + v155;
    goto LABEL_193;
  }

  v72 = 1.8;
  if (*&v422[1] > 1.8 && !BYTE11(v423) && !BYTE9(v423))
  {
    __y = _Q2;
    bzero(bytes, 0x800uLL);
    *v437 = v54;
    *&v437[8] = v54;
    *&v437[16] = v54;
    if (v54 >= 2.25 || v54 <= 2.15)
    {
      v73 = 0.0;
      if (v54 < 1.85 && v54 > 1.75 || v54 < 1.05 && v54 > 0.95)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v54 = 2.2;
    }

    v72 = (v54 + -1.8) * 0.6 / 0.4 + 1.8;
    v73 = (v54 + -1.8) * 0.0521327014 / 0.4;
LABEL_124:
    v92 = 0;
    v378 = 1.0 - v73;
    v93 = xmmword_19A96E020;
    v94 = xmmword_19A96E030;
    v95 = xmmword_19A96E040;
    v96 = xmmword_19A96E050;
    v374 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v376 = vdupq_n_s64(0x408FF80000000000uLL);
    v369 = vdupq_lane_s64(*&v73, 0);
    v371 = vdupq_n_s64(8uLL);
    do
    {
      length = v96;
      v403 = v95;
      v406 = v94;
      v408 = v93;
      v396 = vaddq_f64(v369, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v94), v378), v376));
      v400 = vaddq_f64(v369, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v93), v378), v376));
      __xa = vaddq_f64(v369, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v95), v378), v376));
      v387 = vaddq_f64(v369, vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v96), v378), v376));
      v389 = pow(v387.f64[0], v72);
      v387.f64[0] = pow(v387.f64[1], v72);
      v385 = pow(__xa.f64[0], v72);
      __xa.f64[0] = pow(__xa.f64[1], v72);
      v383 = pow(v396.f64[0], v72);
      v396.f64[0] = pow(v396.f64[1], v72);
      v380 = pow(v400.f64[0], v72);
      v97 = pow(v400.f64[1], v72);
      v99.f64[0] = v380;
      v98.f64[0] = v383;
      v99.f64[1] = v97;
      v98.f64[1] = v396.f64[0];
      v100.f64[0] = v385;
      v100.f64[1] = __xa.f64[0];
      v101.f64[0] = v389;
      v101.f64[1] = v387.f64[0];
      *&bytes[v92] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v374, v101))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v374, v100)))), vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v374, v98))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(__y, v374, v99)))));
      v94 = vaddq_s64(v406, v371);
      v95 = vaddq_s64(v403, v371);
      v96 = vaddq_s64(length, v371);
      v93 = vaddq_s64(v408, v371);
      v92 += 16;
    }

    while (v92 != 2048);
    v60 = bytes;
    v63 = v437;
    v64 = v9;
    v59 = 1;
LABEL_185:
    v61 = 1024;
    v62 = 2;
    v65 = 1;
    goto LABEL_186;
  }

  if (BYTE9(v423))
  {
    v52.f64[0] = *&v421[1];
    _Q2.f64[0] = *&v421[2];
    v53.f64[0] = *&v421[3];
    ColorSyncProfileSetParametricTRCTag(v9, @"rTRC", WORD4(v421[0]), v52, *(&v421[1] + 1), _Q2, *(&v421[2] + 1), v53, *(&v421[3] + 1), *&v421[4]);
    v84.f64[0] = *&v421[5];
    v85.f64[0] = *&v421[6];
    v86.f64[0] = *&v421[7];
    ColorSyncProfileSetParametricTRCTag(v9, @"gTRC", WORD4(v421[4]), v84, *(&v421[5] + 1), v85, *(&v421[6] + 1), v86, *(&v421[7] + 1), *&v421[8]);
    v87.f64[0] = *&v421[9];
    v88.f64[0] = *&v421[10];
    v89.f64[0] = *&v421[11];
    ColorSyncProfileSetParametricTRCTag(v9, @"bTRC", WORD4(v421[8]), v87, *(&v421[9] + 1), v88, *(&v421[10] + 1), v89, *(&v421[11] + 1), *&v421[12]);
    goto LABEL_212;
  }

  if (BYTE10(v423) != 1)
  {
    v114 = *&v422[1] * 256.0;
    if (*&v422[1] * 256.0 <= 0.0)
    {
      if (*&v422[1] * 256.0 >= 0.0)
      {
LABEL_202:
        if (v114 >= 32767.0)
        {
          LOWORD(v157) = 0x7FFF;
        }

        else if (v114 <= -32768.0)
        {
          LOWORD(v157) = 0x8000;
        }

        else
        {
          v157 = v114;
        }

        *&v428[4] = v157;
        *&v428[2] = v157;
        *v428 = v157;
LABEL_208:
        v158 = 0;
        v159 = *MEMORY[0x1E695E498];
        do
        {
          *bytes = 1987212643;
          *&bytes[8] = 0x1000000;
          *&bytes[12] = bswap32(*&v428[2 * v158]) >> 16;
          v160 = CFDataCreateWithBytesNoCopy(0, bytes, 14, v159);
          ColorSyncProfileSetTag(v9, off_1E7524130[v158], v160);
          if (v160)
          {
            CFRelease(v160);
          }

          ++v158;
        }

        while (v158 != 3);
        goto LABEL_212;
      }

      v115 = -0.5;
    }

    else
    {
      v115 = 0.5;
    }

    v114 = v114 + v115;
    goto LABEL_202;
  }

  v102 = 0;
  *bytes = *(&v421[12] + 8);
  *&bytes[16] = *(&v421[13] + 8);
  *&bytes[32] = *(&v421[14] + 8);
  v103 = *(&v421[12] + 1);
  v104 = 2 * *(&v421[12] + 1);
  do
  {
    v105 = malloc_type_calloc(1uLL, v104 + 12, 0x100004018756113uLL);
    v106 = v105;
    *v105 = 1987212643;
    v107 = &bytes[16 * v102];
    *(v105 + 2) = bswap32(*v107);
    if (v103)
    {
      v108 = *(v107 + 1);
      v109 = v105 + 6;
      v110 = v103;
      do
      {
        v111 = *v108++;
        *v109++ = bswap32(v111) >> 16;
        --v110;
      }

      while (v110);
    }

    v112 = CFDataCreate(0, v105, v104 + 12);
    ColorSyncProfileSetTag(v9, off_1E7524130[v102], v112);
    free(v106);
    if (v112)
    {
      CFRelease(v112);
    }

    ++v102;
  }

  while (v102 != 3);
LABEL_212:
  v161 = CFDictionaryGetKeysAndValues;
  if (BYTE13(v423) && BYTE10(v423) != 1)
  {
    goto LABEL_455;
  }

  v429 = xmmword_19A96E070;
  v430 = xmmword_19A96E060;
  *v428 = xmmword_19A96E080;
  if (!v423)
  {
    v181 = 0x10000;
    v182 = 0x10000;
    v183 = 0x10000;
    goto LABEL_259;
  }

  *bytes = 0;
  *v437 = 0;
  xyFromTemp(v423, bytes, v437);
  v162 = *bytes / *v437;
  v163 = (1.0 - *bytes) / *v437 + -1.0;
  v432 = 0u;
  v433 = 0u;
  memset(bytes, 0, sizeof(bytes));
  convertSpecToXYZ(&v416, bytes, 0);
  v164 = *&bytes[32] * *&v432 - *&bytes[40] * *&bytes[56];
  v165 = *&bytes[24] * *&v432 - *&bytes[40] * *&bytes[48];
  v166 = -v165;
  v167 = *&bytes[24] * *&bytes[56] - *&bytes[32] * *&bytes[48];
  v168 = -(*&bytes[8] * *&v432 - *&bytes[16] * *&bytes[56]);
  v169 = *bytes * v164 - v165 * *&bytes[8] + *&bytes[16] * v167;
  v170 = v166 / v169;
  v171 = -(*bytes * *&bytes[56] - *&bytes[8] * *&bytes[48]) / v169;
  v172 = v170 + v164 / v169 * v162 + v167 / v169 * v163;
  v173 = (*bytes * *&v432 - *&bytes[16] * *&bytes[48]) / v169 + v168 / v169 * v162 + v171 * v163;
  v174 = -(*bytes * *&bytes[40] - *&bytes[16] * *&bytes[24]) / v169 + (*&bytes[8] * *&bytes[40] - *&bytes[16] * *&bytes[32]) / v169 * v162 + (*bytes * *&bytes[32] - *&bytes[8] * *&bytes[24]) / v169 * v163;
  if (v173 <= v172)
  {
    v175 = v172;
  }

  else
  {
    v175 = (*bytes * *&v432 - *&bytes[16] * *&bytes[48]) / v169 + v168 / v169 * v162 + v171 * v163;
  }

  if (v174 <= v175)
  {
    v176 = v175;
  }

  else
  {
    v176 = -(*bytes * *&bytes[40] - *&bytes[16] * *&bytes[24]) / v169 + (*&bytes[8] * *&bytes[40] - *&bytes[16] * *&bytes[32]) / v169 * v162 + (*bytes * *&bytes[32] - *&bytes[8] * *&bytes[24]) / v169 * v163;
  }

  v177 = v173 / v176;
  *v437 = v172 / v176;
  *&v437[8] = v173 / v176;
  v178 = v174 / v176;
  *&v437[16] = v174 / v176;
  if (v172 / v176 > 1.0)
  {
    *v437 = 0x3FF0000000000000;
  }

  if (v177 > 1.0)
  {
    *&v437[8] = 0x3FF0000000000000;
  }

  if (v178 > 1.0)
  {
    *&v437[16] = 0x3FF0000000000000;
  }

  inverseNativeGammaLookup(&v416, v437, v178, 1.0, v174, v176, v172 / v176, v172, v170, v167 / v169);
  v179 = *v437 * 65536.0;
  if (*v437 * 65536.0 <= 0.0)
  {
    if (v179 >= 0.0)
    {
      goto LABEL_233;
    }

    v180 = -0.5;
  }

  else
  {
    v180 = 0.5;
  }

  v179 = v179 + v180;
LABEL_233:
  if (v179 >= 2147483650.0)
  {
    v183 = 0x7FFFFFFF;
  }

  else if (v179 <= -2147483650.0)
  {
    v183 = 0x80000000;
  }

  else
  {
    v183 = v179;
  }

  DWORD1(v429) = v183;
  v184 = *&v437[8] * 65536.0;
  if (*&v437[8] * 65536.0 <= 0.0)
  {
    if (v184 >= 0.0)
    {
      goto LABEL_243;
    }

    v185 = -0.5;
  }

  else
  {
    v185 = 0.5;
  }

  v184 = v184 + v185;
LABEL_243:
  if (v184 >= 2147483650.0)
  {
    v182 = 0x7FFFFFFF;
  }

  else if (v184 <= -2147483650.0)
  {
    v182 = 0x80000000;
  }

  else
  {
    v182 = v184;
  }

  LODWORD(v430) = v182;
  v186 = *&v437[16] * 65536.0;
  if (*&v437[16] * 65536.0 > 0.0)
  {
    v187 = 0.5;
LABEL_252:
    v186 = v186 + v187;
    goto LABEL_253;
  }

  if (v186 < 0.0)
  {
    v187 = -0.5;
    goto LABEL_252;
  }

LABEL_253:
  if (v186 >= 2147483650.0)
  {
    v181 = 0x7FFFFFFF;
  }

  else if (v186 <= -2147483650.0)
  {
    v181 = 0x80000000;
  }

  else
  {
    v181 = v186;
  }

  HIDWORD(v430) = v181;
LABEL_259:
  __yb = v422[1];
  if (*&v422[1] == 0.0)
  {
    v255 = 0x10000;
    v256 = 0x10000;
    v257 = 0x10000;
    goto LABEL_353;
  }

  memset(v436, 0, 64);
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  memset(bytes, 0, sizeof(bytes));
  *bytes = -1;
  LOWORD(v432) = -1;
  LOWORD(v436[0]) = -1;
  if (ColorSyncProfileGetTag(v9, @"aarg") && ColorSyncProfileGetTag(v9, @"aabg") && ColorSyncProfileGetTag(v9, @"aagg"))
  {
    v410 = v183;
    v188 = bytes;
    v189 = &v432;
    v190 = v436;
    Tag = ColorSyncProfileGetTag(v9, @"aarg");
    v192 = ColorSyncProfileGetTag(v9, @"aabg");
    v193 = ColorSyncProfileGetTag(v9, @"aagg");
    BytePtr = CFDataGetBytePtr(Tag);
    v438.i64[0] = BytePtr;
    v195 = CFDataGetBytePtr(v192);
    v438.i64[1] = v195;
    v196 = CFDataGetBytePtr(v193);
    v197 = 0;
    v439 = *&v196;
    v198 = bytes;
    v199 = vdupq_n_s64(0x3EF0000000000000uLL);
    do
    {
      v200 = v438.i64[v197];
      v201 = bswap32(*(v200 + 8)) >> 16;
      if (v201 <= 1)
      {
        if (v201)
        {
          if (v201 == 1)
          {
            v207 = bswap32(*(v200 + 20));
            *v198 = 1;
            v208 = vrev32_s8(*(v200 + 12));
            v209.i64[0] = v208.i32[0];
            v209.i64[1] = v208.i32[1];
            *(v198 + 8) = vmulq_f64(vcvtq_f64_s64(v209), v199);
            *(v198 + 3) = vcvtd_n_f64_s32(v207, 0x10uLL);
          }
        }

        else
        {
          v217 = bswap32(*(v200 + 12));
          *v198 = 0;
          *(v198 + 1) = vcvtd_n_f64_s32(v217, 0x10uLL);
        }
      }

      else
      {
        switch(v201)
        {
          case 2:
            *v198 = 2;
            v210 = vrev32_s8(*(v200 + 12));
            v211.i64[0] = v210.i32[0];
            v211.i64[1] = v210.i32[1];
            *(v198 + 8) = vmulq_f64(vcvtq_f64_s64(v211), v199);
            v212 = vrev32_s8(*(v200 + 20));
            v211.i64[0] = v212.i32[0];
            v211.i64[1] = v212.i32[1];
            *(v198 + 24) = vmulq_f64(vcvtq_f64_s64(v211), v199);
            break;
          case 3:
            v213 = bswap32(*(v200 + 28));
            *v198 = 3;
            v214 = vrev32_s8(*(v200 + 12));
            v215.i64[0] = v214.i32[0];
            v215.i64[1] = v214.i32[1];
            *(v198 + 8) = vmulq_f64(vcvtq_f64_s64(v215), v199);
            v216 = vrev32_s8(*(v200 + 20));
            v215.i64[0] = v216.i32[0];
            v215.i64[1] = v216.i32[1];
            *(v198 + 24) = vmulq_f64(vcvtq_f64_s64(v215), v199);
            *(v198 + 5) = vcvtd_n_f64_s32(v213, 0x10uLL);
            break;
          case 4:
            v202 = bswap32(*(v200 + 36));
            *v198 = 3;
            v203 = vrev32_s8(*(v200 + 12));
            v204.i64[0] = v203.i32[0];
            v204.i64[1] = v203.i32[1];
            *(v198 + 8) = vmulq_f64(vcvtq_f64_s64(v204), v199);
            v205 = vrev32_s8(*(v200 + 20));
            v204.i64[0] = v205.i32[0];
            v204.i64[1] = v205.i32[1];
            *(v198 + 24) = vmulq_f64(vcvtq_f64_s64(v204), v199);
            v206 = vrev32_s8(*(v200 + 28));
            v204.i64[0] = v206.i32[0];
            v204.i64[1] = v206.i32[1];
            *(v198 + 40) = vmulq_f64(vcvtq_f64_s64(v204), v199);
            *(v198 + 7) = vcvtd_n_f64_s32(v202, 0x10uLL);
            break;
        }
      }

      v198 += 64;
      ++v197;
    }

    while (v197 != 3);
    v183 = v410;
    if (!HIBYTE(v423))
    {
      *&v437[52] = 0;
      *&v437[36] = 0u;
      *&v437[20] = 0u;
      *&v437[4] = 0u;
      *v437 = 1885823862;
      *&v437[8] = *(BytePtr + 1);
      *&v437[16] = *(v195 + 1);
      v218 = *(v196 + 1);
      *&v219.f64[0] = v420;
      v219.f64[1] = *v421;
      *&v437[32] = vrev64q_s8(vcvtq_n_s64_f64(v219, 0x20uLL));
      *&v437[24] = v218;
      *&v437[48] = bswap64(vcvtd_n_s64_f64(*(&v420 + 1), 0x20uLL));
      v220 = CFDataCreateWithBytesNoCopy(0, v437, 56, *MEMORY[0x1E695E498]);
      ColorSyncProfileSetTag(v9, @"vcgp", v220);
      if (v220)
      {
        CFRelease(v220);
      }
    }

    v221 = 1;
    v161 = CFDictionaryGetKeysAndValues;
  }

  else
  {
    v221 = 0;
    v188 = v421 + 4;
    v189 = &v421[4] + 4;
    v190 = &v421[8] + 4;
  }

  v222 = WORD4(v421[15]);
  if (WORD4(v421[15]) && BYTE8(v423) == 1)
  {
    v427 = 0;
    v426 = 0;
    v223 = *&v422[1] / *&v420;
    v224 = *&v422[1] / *(&v420 + 1);
    v225 = 2.2;
    if (*&v422[1] / *&v420 >= 2.25 || (v226 = 2.2, v223 <= 2.15))
    {
      if (v223 >= 1.85 || v223 <= 1.75)
      {
        v269 = v223 > 0.95 && v223 < 1.05;
        v226 = 1.0;
        if (!v269)
        {
          v226 = *&v422[1] / *&v420;
        }
      }

      else
      {
        v226 = 1.8;
      }
    }

    v270 = *&v422[1] / *v421;
    if (v224 >= 2.25 || (v271 = 2.2, v224 <= 2.15))
    {
      if (v224 >= 1.85 || v224 <= 1.75)
      {
        v272 = v224 > 0.95 && v224 < 1.05;
        v271 = 1.0;
        if (!v272)
        {
          v271 = *&v422[1] / *(&v420 + 1);
        }
      }

      else
      {
        v271 = 1.8;
      }
    }

    if (v270 >= 2.25 || v270 <= 2.15)
    {
      if (v270 >= 1.85 || v270 <= 1.75)
      {
        v273 = v270 > 0.95 && v270 < 1.05;
        v225 = 1.0;
        if (!v273)
        {
          v225 = *&v422[1] / *v421;
        }
      }

      else
      {
        v225 = 1.8;
      }
    }

    v274 = v226 <= 1.8 || (v226 + -1.8) * 0.04045 / 0.4 <= 0.0;
    v275 = v271 <= 1.8 || (v271 + -1.8) * 0.04045 / 0.4 <= 0.0;
    v276 = v225 <= 1.8 || (v225 + -1.8) * 0.04045 / 0.4 <= 0.0;
    if (v226 <= 1.8)
    {
      v274 = 1;
    }

    v277 = 0.0;
    v411 = 0.0;
    if (!v274)
    {
      v411 = (v226 + -1.8) * 0.0773993808 / 0.4;
    }

    v278 = v271 <= 1.8 || v275;
    if ((v278 & 1) == 0)
    {
      v277 = (v271 + -1.8) * 0.0773993808 / 0.4;
    }

    v398 = v277;
    v279 = v225 <= 1.8 || v276;
    v280 = 0.0;
    if ((v279 & 1) == 0)
    {
      v280 = (v225 + -1.8) * 0.0773993808 / 0.4;
    }

    if (*&v422[1] == 0.0)
    {
      v281 = 48;
    }

    else
    {
      v281 = (WORD4(v421[15]) << 9) | 0x12;
    }

    v282 = malloc_type_calloc(1uLL, v281, 0x1000040EED21634uLL);
    if (v282)
    {
      v283 = 0;
      *v282 = 1952932726;
      v282[2] = 0;
      *(v282 + 6) = __rev16(v222);
      *(v282 + 14) = 33554433;
      __x = v282;
      v405 = v282 + 18;
      v284 = vcvtd_n_f64_s32(v183, 0x10uLL);
      v285 = vcvtd_n_f64_s32(v182, 0x10uLL);
      v286 = vcvtd_n_f64_s32(v181, 0x10uLL);
      __asm { FMOV            V0.2D, #1.0 }

      v402 = _Q0;
      _Q0.f64[0] = v411;
      _Q0.f64[1] = v398;
      v412 = _Q0;
      v399 = vdupq_n_s64(0x406FE00000000000uLL);
      do
      {
        v288 = (255 - v283);
        v289 = v288 / 255.0;
        v290 = v280 * v288 / 255.0;
        v291 = vdivq_f64(vmulq_n_f64(v412, v288), v399);
        v438 = vbslq_s8(vcgtq_f64(v291, v402), v402, v291);
        if (v290 <= 1.0)
        {
          v292 = v290;
        }

        else
        {
          v292 = 1.0;
        }

        v439 = v292;
        *&v437[8] = pow(v289, *&__yb);
        *&v437[16] = *&v437[8];
        *v437 = *&v437[8];
        inverseNativeGammaLookup(&v416, v437, *&v437[8], v293, v294, v295, v296, v297, v298, v299);
        for (i = 0; i != 3; ++i)
        {
          if (i == 1)
          {
            v301 = 8;
          }

          else
          {
            v301 = 16;
          }

          if (!i)
          {
            v301 = 0;
          }

          if (*(&v426 + i) == 1)
          {
            *&v437[v301] = v438.i64[i];
          }

          else
          {
            v302 = *&v438.i64[i];
            if (*&v437[v301] < v302)
            {
              *&v437[v301] = v302;
              *(&v426 + i) = 1;
            }
          }
        }

        v303 = *&v437[8];
        v304 = *&v437[16];
        v305 = v284 * *v437 * 65535.0;
        if (v305 <= 0.0)
        {
          if (v305 < 0.0)
          {
            v305 = v305 + -0.5;
          }
        }

        else
        {
          v305 = v305 + 0.5;
        }

        if (v305 >= 65535.0)
        {
          v306 = -1;
        }

        else if (v305 <= 0.0)
        {
          v306 = 0;
        }

        else
        {
          v306 = __rev16(v305);
        }

        v307 = &v405[2 * (255 - v283)];
        *v307 = v306;
        if (v222 == 3)
        {
          v308 = v285 * v303 * 65535.0;
          if (v308 <= 0.0)
          {
            if (v308 < 0.0)
            {
              v308 = v308 + -0.5;
            }
          }

          else
          {
            v308 = v308 + 0.5;
          }

          v309 = v286 * v304;
          v310 = __rev16(v308);
          if (v308 <= 0.0)
          {
            v310 = 0;
          }

          if (v308 >= 65535.0)
          {
            v310 = -1;
          }

          v307[256] = v310;
          v311 = v309 * 65535.0;
          if (v311 <= 0.0)
          {
            if (v311 < 0.0)
            {
              v311 = v311 + -0.5;
            }
          }

          else
          {
            v311 = v311 + 0.5;
          }

          if (v311 >= 65535.0)
          {
            v312 = -1;
          }

          else if (v311 <= 0.0)
          {
            v312 = 0;
          }

          else
          {
            v312 = __rev16(v311);
          }

          v307[512] = v312;
        }

        ++v283;
      }

      while (v283 != 256);
      v313 = CFDataCreateWithBytesNoCopy(0, __x, v281, *MEMORY[0x1E695E498]);
      ColorSyncProfileSetTag(v9, @"vcgt", v313);
      if (v313)
      {
        CFRelease(v313);
      }

      v254 = __x;
LABEL_454:
      free(v254);
      v161 = CFDictionaryGetKeysAndValues;
      goto LABEL_455;
    }

    goto LABEL_455;
  }

  if (((v221 | BYTE9(v423)) & 1) == 0 || v424 != 1)
  {
    v258 = *&__yb / *&v420 * 65536.0;
    if (v258 < 0.0)
    {
      v259 = v258 + -0.5;
    }

    else
    {
      v259 = *&__yb / *&v420 * 65536.0;
    }

    v260 = 0.5;
    v244 = v258 <= 0.0;
    v261 = v258 + 0.5;
    if (!v244)
    {
      v259 = v261;
    }

    v262 = *(v161 + 305);
    if (v259 > -2147483650.0)
    {
      v263 = v259;
    }

    else
    {
      v263 = 0x80000000;
    }

    if (v259 < v262)
    {
      v257 = v263;
    }

    else
    {
      v257 = 0x7FFFFFFF;
    }

    v264 = *&__yb / *(&v420 + 1) * 65536.0;
    if (v264 <= 0.0)
    {
      if (v264 >= 0.0)
      {
        goto LABEL_337;
      }

      v260 = -0.5;
    }

    v264 = v264 + v260;
LABEL_337:
    if (v264 > -2147483650.0)
    {
      v265 = v264;
    }

    else
    {
      v265 = 0x80000000;
    }

    if (v264 < v262)
    {
      v256 = v265;
    }

    else
    {
      v256 = 0x7FFFFFFF;
    }

    v266 = *&__yb / *v421 * 65536.0;
    if (v266 <= 0.0)
    {
      if (v266 >= 0.0)
      {
        goto LABEL_348;
      }

      v267 = -0.5;
    }

    else
    {
      v267 = 0.5;
    }

    v266 = v266 + v267;
LABEL_348:
    if (v266 >= v262)
    {
      v255 = 0x7FFFFFFF;
    }

    else if (v266 <= -2147483650.0)
    {
      v255 = 0x80000000;
    }

    else
    {
      v255 = v266;
    }

LABEL_353:
    *(&v429 + 4) = _byteswap_uint64(__PAIR64__(v183, v256));
    *&v428[12] = bswap32(v257);
    *&v430 = _byteswap_uint64(__PAIR64__(v182, v255));
    HIDWORD(v430) = bswap32(v181);
    v268 = CFDataCreateWithBytesNoCopy(0, v428, 48, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v9, @"vcgt", v268);
    if (v268)
    {
      CFRelease(v268);
    }

    goto LABEL_455;
  }

  v227 = malloc_type_calloc(1uLL, 0x1812uLL, 0x1000040EED21634uLL);
  if (v227)
  {
    v228 = v227;
    *v227 = 1952932726;
    *(v227 + 1) = 0x4030000000000;
    v229 = vcvtd_n_f64_s32(v183, 0x10uLL);
    v230 = vcvtd_n_f64_s32(v182, 0x10uLL);
    *(v227 + 8) = 512;
    v231 = vcvtd_n_f64_s32(v181, 0x10uLL);
    v232 = 2056;
    v233 = v227;
    do
    {
      *v437 = applyParametricGamma(v188, (v232 - 1033) / 1023.0);
      *&v437[8] = applyParametricGamma(v189, (v232 - 1033) / 1023.0);
      *&v437[16] = applyParametricGamma(v190, (v232 - 1033) / 1023.0);
      inverseNativeGammaLookup(&v416, v437, *&v437[16], v234, v235, v236, v237, v238, v239, v240);
      v241 = v230 * *&v437[8];
      v242 = *&v437[16];
      v243 = v229 * *v437 * 65535.0;
      v244 = v243 <= 0.0;
      v245 = v243 + -0.5;
      if (v243 >= 0.0)
      {
        v245 = v229 * *v437 * 65535.0;
      }

      v246 = v243 + 0.5;
      if (v244)
      {
        v246 = v245;
      }

      v247 = __rev16(v246);
      if (v246 <= 0.0)
      {
        v247 = 0;
      }

      if (v246 >= 65535.0)
      {
        v247 = -1;
      }

      *(v233 + 1032) = v247;
      v248 = v241 * 65535.0;
      if (v248 <= 0.0)
      {
        if (v248 < 0.0)
        {
          v248 = v248 + -0.5;
        }
      }

      else
      {
        v248 = v248 + 0.5;
      }

      v249 = v231 * v242;
      v250 = __rev16(v248);
      if (v248 <= 0.0)
      {
        v250 = 0;
      }

      if (v248 >= 65535.0)
      {
        v250 = -1;
      }

      *(v233 + 2056) = v250;
      v251 = v249 * 65535.0;
      if (v251 <= 0.0)
      {
        if (v251 < 0.0)
        {
          v251 = v251 + -0.5;
        }
      }

      else
      {
        v251 = v251 + 0.5;
      }

      if (v251 >= 65535.0)
      {
        v252 = -1;
      }

      else if (v251 <= 0.0)
      {
        v252 = 0;
      }

      else
      {
        v252 = __rev16(v251);
      }

      *(v233 + 3080) = v252;
      --v232;
      v233 -= 2;
    }

    while (v232 != 1032);
    v253 = CFDataCreateWithBytesNoCopy(0, v228, 6162, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v9, @"vcgt", v253);
    if (v253)
    {
      CFRelease(v253);
    }

    v254 = v228;
    goto LABEL_454;
  }

LABEL_455:
  if (BYTE14(v423) && BYTE10(v423) != 1)
  {
    goto LABEL_575;
  }

  memset(&bytes[4], 0, 60);
  *bytes = 1852400750;
  v314 = *&v416 * 65536.0;
  if (*&v416 * 65536.0 <= 0.0)
  {
    if (*&v416 * 65536.0 >= 0.0)
    {
      goto LABEL_462;
    }

    v315 = -0.5;
  }

  else
  {
    v315 = 0.5;
  }

  v314 = v314 + v315;
LABEL_462:
  v316 = *(v161 + 305);
  if (v314 >= v316)
  {
    v317 = 0x7FFFFFFF;
  }

  else if (v314 <= -2147483650.0)
  {
    v317 = 0x80000000;
  }

  else
  {
    v317 = v314;
  }

  *&bytes[12] = bswap32(v317);
  v318 = *(&v416 + 1) * 65536.0;
  if (*(&v416 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v416 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_472;
    }

    v319 = -0.5;
  }

  else
  {
    v319 = 0.5;
  }

  v318 = v318 + v319;
LABEL_472:
  if (v318 >= v316)
  {
    v320 = 0x7FFFFFFF;
  }

  else if (v318 <= -2147483650.0)
  {
    v320 = 0x80000000;
  }

  else
  {
    v320 = v318;
  }

  *&bytes[16] = bswap32(v320);
  v321 = *&v417 * 65536.0;
  if (*&v417 * 65536.0 <= 0.0)
  {
    if (*&v417 * 65536.0 >= 0.0)
    {
      goto LABEL_482;
    }

    v322 = -0.5;
  }

  else
  {
    v322 = 0.5;
  }

  v321 = v321 + v322;
LABEL_482:
  if (v321 >= v316)
  {
    v323 = 0x7FFFFFFF;
  }

  else if (v321 <= -2147483650.0)
  {
    v323 = 0x80000000;
  }

  else
  {
    v323 = v321;
  }

  *&bytes[20] = bswap32(v323);
  v324 = *(&v417 + 1) * 65536.0;
  if (*(&v417 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v417 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_492;
    }

    v325 = -0.5;
  }

  else
  {
    v325 = 0.5;
  }

  v324 = v324 + v325;
LABEL_492:
  if (v324 >= v316)
  {
    v326 = 0x7FFFFFFF;
  }

  else if (v324 <= -2147483650.0)
  {
    v326 = 0x80000000;
  }

  else
  {
    v326 = v324;
  }

  *&bytes[24] = bswap32(v326);
  v327 = *&v418 * 65536.0;
  if (*&v418 * 65536.0 <= 0.0)
  {
    if (*&v418 * 65536.0 >= 0.0)
    {
      goto LABEL_502;
    }

    v328 = -0.5;
  }

  else
  {
    v328 = 0.5;
  }

  v327 = v327 + v328;
LABEL_502:
  if (v327 >= v316)
  {
    v329 = 0x7FFFFFFF;
  }

  else if (v327 <= -2147483650.0)
  {
    v329 = 0x80000000;
  }

  else
  {
    v329 = v327;
  }

  *&bytes[28] = bswap32(v329);
  v330 = *(&v418 + 1) * 65536.0;
  if (*(&v418 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v418 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_512;
    }

    v331 = -0.5;
  }

  else
  {
    v331 = 0.5;
  }

  v330 = v330 + v331;
LABEL_512:
  if (v330 >= v316)
  {
    v332 = 0x7FFFFFFF;
  }

  else if (v330 <= -2147483650.0)
  {
    v332 = 0x80000000;
  }

  else
  {
    v332 = v330;
  }

  *&bytes[32] = bswap32(v332);
  v333 = *&v419 * 65536.0;
  if (*&v419 * 65536.0 <= 0.0)
  {
    if (*&v419 * 65536.0 >= 0.0)
    {
      goto LABEL_522;
    }

    v334 = -0.5;
  }

  else
  {
    v334 = 0.5;
  }

  v333 = v333 + v334;
LABEL_522:
  if (v333 >= v316)
  {
    v335 = 0x7FFFFFFF;
  }

  else if (v333 <= -2147483650.0)
  {
    v335 = 0x80000000;
  }

  else
  {
    v335 = v333;
  }

  *&bytes[36] = bswap32(v335);
  v336 = *(&v419 + 1) * 65536.0;
  if (*(&v419 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v419 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_532;
    }

    v337 = -0.5;
  }

  else
  {
    v337 = 0.5;
  }

  v336 = v336 + v337;
LABEL_532:
  if (v336 >= v316)
  {
    v338 = 0x7FFFFFFF;
  }

  else if (v336 <= -2147483650.0)
  {
    v338 = 0x80000000;
  }

  else
  {
    v338 = v336;
  }

  *&bytes[40] = bswap32(v338);
  v339 = *&v420 * 65536.0;
  if (*&v420 * 65536.0 <= 0.0)
  {
    if (*&v420 * 65536.0 >= 0.0)
    {
      goto LABEL_542;
    }

    v340 = -0.5;
  }

  else
  {
    v340 = 0.5;
  }

  v339 = v339 + v340;
LABEL_542:
  if (v339 >= v316)
  {
    v341 = 0x7FFFFFFF;
  }

  else if (v339 <= -2147483650.0)
  {
    v341 = 0x80000000;
  }

  else
  {
    v341 = v339;
  }

  *&bytes[44] = bswap32(v341);
  v342 = *(&v420 + 1) * 65536.0;
  if (*(&v420 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v420 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_552;
    }

    v343 = -0.5;
  }

  else
  {
    v343 = 0.5;
  }

  v342 = v342 + v343;
LABEL_552:
  if (v342 >= v316)
  {
    v344 = 0x7FFFFFFF;
  }

  else if (v342 <= -2147483650.0)
  {
    v344 = 0x80000000;
  }

  else
  {
    v344 = v342;
  }

  *&bytes[48] = bswap32(v344);
  v345 = *v421 * 65536.0;
  if (*v421 * 65536.0 > 0.0)
  {
    v346 = 0.5;
LABEL_561:
    v345 = v345 + v346;
    goto LABEL_562;
  }

  if (*v421 * 65536.0 < 0.0)
  {
    v346 = -0.5;
    goto LABEL_561;
  }

LABEL_562:
  if (v345 >= v316)
  {
    v347 = 0x7FFFFFFF;
  }

  else if (v345 <= -2147483650.0)
  {
    v347 = 0x80000000;
  }

  else
  {
    v347 = v345;
  }

  v348 = WORD5(v421[15]) * WORD4(v421[15]) * WORD6(v421[15]);
  *&bytes[52] = bswap32(v347);
  *&bytes[8] = bswap32(v348 + 54);
  *&bytes[56] = __rev16(WORD4(v421[15]));
  *&bytes[58] = __rev16(WORD5(v421[15]));
  *&bytes[60] = __rev16(WORD6(v421[15]));
  if (!v348)
  {
    v354 = CFDataCreateWithBytesNoCopy(0, bytes, 62, *MEMORY[0x1E695E498]);
    v350 = 0;
    goto LABEL_571;
  }

  v349 = malloc_type_malloc(v348 + 62, 0x100004043748019uLL);
  if (v349)
  {
    v350 = v349;
    v351 = *bytes;
    v352 = *&bytes[16];
    v353 = *&bytes[48];
    *(v349 + 2) = *&bytes[32];
    *(v349 + 3) = v353;
    *v349 = v351;
    *(v349 + 1) = v352;
    swab(v422[0], v349 + 62, v348);
    v354 = CFDataCreateWithBytesNoCopy(0, v350, v348 + 62, *MEMORY[0x1E695E498]);
LABEL_571:
    if (v354)
    {
      ColorSyncProfileSetTag(v9, @"ndin", v354);
      CFRelease(v354);
    }

    if (v350)
    {
      free(v350);
    }
  }

LABEL_575:
  if (CFDictionaryContainsKey(v5, @"rXYZ"))
  {
    v355 = CFDictionaryGetValue(v5, @"rXYZ");
    ColorSyncProfileSetTag(v9, @"rXYZ", v355);
  }

  if (CFDictionaryContainsKey(v5, @"gXYZ"))
  {
    v356 = CFDictionaryGetValue(v5, @"gXYZ");
    ColorSyncProfileSetTag(v9, @"gXYZ", v356);
  }

  if (CFDictionaryContainsKey(v5, @"bXYZ"))
  {
    v357 = CFDictionaryGetValue(v5, @"bXYZ");
    ColorSyncProfileSetTag(v9, @"bXYZ", v357);
  }

  if (CFDictionaryContainsKey(v5, @"cicp"))
  {
    v358 = CFDictionaryGetValue(v5, @"cicp");
    v359 = CFGetTypeID(v358);
    if (v359 == CFDataGetTypeID() && CFDataGetLength(v358) >= 12)
    {
      ColorSyncProfileSetTag(v9, @"cicp", v358);
    }
  }

  return v9;
}

const __CFNumber *longFromDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() && !CFNumberIsFloatType(v3))
    {
      if (CFNumberGetValue(v3, kCFNumberLongType, &valuePtr))
      {
        return valuePtr;
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

BOOL primariesFromDictionary(const __CFDictionary *a1, uint64_t a2)
{
  *a2 = doubleFromDictionary(a1, @"phosphorRx");
  *(a2 + 8) = doubleFromDictionary(a1, @"phosphorRy");
  *(a2 + 16) = doubleFromDictionary(a1, @"phosphorGx");
  *(a2 + 24) = doubleFromDictionary(a1, @"phosphorGy");
  *(a2 + 32) = doubleFromDictionary(a1, @"phosphorBx");
  v4 = doubleFromDictionary(a1, @"phosphorBy");
  *(a2 + 40) = v4;
  v5 = &primariesFromDictionary_primaries;
  v6 = *a2;
  v7 = 4;
  while (1)
  {
    if (*v5 + -0.00001 < v6 && *v5 + 0.00001 > v6)
    {
      v9 = *(a2 + 8);
      v10 = *(v5 + 1);
      v11 = v10 + -0.00001;
      v12 = v10 + 0.00001;
      if (v11 < v9 && v12 > v9)
      {
        v14 = *(a2 + 16);
        v15 = *(v5 + 2);
        v16 = v15 + -0.00001;
        v17 = v15 + 0.00001;
        if (v16 < v14 && v17 > v14)
        {
          v19 = *(a2 + 24);
          v20 = *(v5 + 3);
          v21 = v20 + -0.00001;
          v22 = v20 + 0.00001;
          if (v21 < v19 && v22 > v19)
          {
            v24 = *(a2 + 32);
            v25 = *(v5 + 4);
            v26 = v25 + -0.00001;
            v27 = v25 + 0.00001;
            if (v26 < v24 && v27 > v24)
            {
              v29 = *(v5 + 5);
              v30 = v29 + -0.00001;
              v31 = v29 + 0.00001;
              if (v30 < v4 && v31 > v4)
              {
                v33 = *(a2 + 48);
                v34 = *(v5 + 6);
                v35 = v34 + -0.00001;
                v36 = v34 + 0.00001;
                if (v35 < v33 && v36 > v33)
                {
                  v38 = *(a2 + 56);
                  v39 = *(v5 + 7);
                  if (v39 + -0.00001 < v38 && v39 + 0.00001 > v38)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 += 9;
    if (!--v7)
    {
      return v6 != 0.0 && *(a2 + 8) != 0.0 && *(a2 + 16) != 0.0 && *(a2 + 24) != 0.0 && *(a2 + 32) != 0.0 && v4 != 0.0;
    }
  }

  *(a2 + 376) = v5[8];
  return v6 != 0.0 && *(a2 + 8) != 0.0 && *(a2 + 16) != 0.0 && *(a2 + 24) != 0.0 && *(a2 + 32) != 0.0 && v4 != 0.0;
}

void ColorSyncProfileSetPrimaries(ColorSyncProfile *a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v86[1].f64[1] = 0.0;
  *(v87 + 8) = 0u;
  *(v86 + 8) = 0u;
  v86[0].f64[0] = 1.0;
  v87[0].f64[0] = 1.0;
  v87[1].f64[1] = 0.0;
  v88 = 1.0;
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v78 = 0u;
  v79 = 0u;
  convertSpecToXYZ(a2, &v78, 1);
  v7.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(xmmword_19A96E480, *(&v81[1] + 8))), *(&v81[1] + 8)).u32[0];
  v8 = vmovn_s64(vcgtq_f64(*(&v81[1] + 8), xmmword_19A96E490));
  v7.i32[1] = vuzp1_s16(v8, v8).i32[1];
  if ((vminv_u16(v7) & 1) != 0 && *(&v81[2] + 1) > 0.8246 && *(&v81[2] + 1) < 0.8252)
  {
    *(&v81[1] + 8) = xmmword_19A96E220;
    *(&v81[2] + 1) = 0x3FEA6594AF4F0D84;
    v15 = 1;
  }

  else
  {
    ColorSyncConvertDoubleXYZToD50(&v78, (&v81[1] + 8), &v78, 3, v86, v4, v5, v6);
    ColorSyncConvertDoubleXYZToD50((&v79 + 8), (&v81[1] + 8), (&v79 + 8), 3, v86, v9, v10, v11);
    ColorSyncConvertDoubleXYZToD50(v81, (&v81[1] + 8), v81, 3, v86, v12, v13, v14);
    v15 = 0;
  }

  bytes[5] = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  strcpy(bytes, "XYZ ");
  v16 = *(a2 + 376);
  v17 = MEMORY[0x1E695E498];
  if (v16)
  {
    if (CFEqual(v16, @"ITU_R709"))
    {
      if (get_itu709_profile_predicate != -1)
      {
        dispatch_once(&get_itu709_profile_predicate, &__block_literal_global_1034);
      }

      v18 = &get_itu709_profile_itu709;
    }

    else if (CFEqual(*(a2 + 376), @"ITU_R2020"))
    {
      if (get_itu2020_profile_predicate != -1)
      {
        dispatch_once(&get_itu2020_profile_predicate, &__block_literal_global_30);
      }

      v18 = &get_itu2020_profile_itu2020;
    }

    else if (CFEqual(*(a2 + 376), @"P3_D65"))
    {
      if (get_dispP3_profile_predicate != -1)
      {
        dispatch_once(&get_dispP3_profile_predicate, &__block_literal_global_33);
      }

      v18 = &get_dispP3_profile_dispP3;
    }

    else
    {
      if (!CFEqual(*(a2 + 376), @"DCI_P3"))
      {
        __assert_rtn("setPrimariesByName", "ColorSyncMakeDisplayProfile.c", 551, "0");
      }

      if (get_dciP3_profile_predicate != -1)
      {
        dispatch_once(&get_dciP3_profile_predicate, &__block_literal_global_36);
      }

      v18 = &get_dciP3_profile_dciP3;
    }

    v57 = *v18;
    v58 = *(a2 + 384);
    Tag = ColorSyncProfileGetTag(*v18, @"rXYZ");
    ColorSyncProfileSetTag(a1, @"rXYZ", Tag);
    v60 = ColorSyncProfileGetTag(v57, @"gXYZ");
    ColorSyncProfileSetTag(a1, @"gXYZ", v60);
    v61 = ColorSyncProfileGetTag(v57, @"bXYZ");
    ColorSyncProfileSetTag(a1, @"bXYZ", v61);
    if (v58 >> 26)
    {
      v62 = ColorSyncProfileGetTag(v57, @"chad");
      ColorSyncProfileSetTag(a1, @"chad", v62);
    }

    goto LABEL_124;
  }

  v19 = *&v78 * 65536.0;
  if (*&v78 * 65536.0 <= 0.0)
  {
    if (*&v78 * 65536.0 >= 0.0)
    {
      goto LABEL_20;
    }

    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v19 = v19 + v20;
LABEL_20:
  if (v19 >= 2147483650.0)
  {
    v21 = 0x7FFFFFFF;
  }

  else if (v19 <= -2147483650.0)
  {
    v21 = 0x80000000;
  }

  else
  {
    v21 = v19;
  }

  v76 = bswap32(v21);
  v22 = *(&v78 + 1) * 65536.0;
  if (*(&v78 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v78 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_30;
    }

    v23 = -0.5;
  }

  else
  {
    v23 = 0.5;
  }

  v22 = v22 + v23;
LABEL_30:
  if (v22 >= 2147483650.0)
  {
    v24 = 0x7FFFFFFF;
  }

  else if (v22 <= -2147483650.0)
  {
    v24 = 0x80000000;
  }

  else
  {
    v24 = v22;
  }

  LODWORD(v77) = bswap32(v24);
  v25 = *&v79 * 65536.0;
  if (*&v79 * 65536.0 <= 0.0)
  {
    if (*&v79 * 65536.0 >= 0.0)
    {
      goto LABEL_40;
    }

    v26 = -0.5;
  }

  else
  {
    v26 = 0.5;
  }

  v25 = v25 + v26;
LABEL_40:
  if (v25 >= 2147483650.0)
  {
    v27 = 0x7FFFFFFF;
  }

  else if (v25 <= -2147483650.0)
  {
    v27 = 0x80000000;
  }

  else
  {
    v27 = v25;
  }

  HIDWORD(v77) = bswap32(v27);
  v28 = *MEMORY[0x1E695E498];
  v29 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *MEMORY[0x1E695E498]);
  ColorSyncProfileSetTag(a1, @"rXYZ", v29);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(&v79 + 1) * 65536.0;
  if (*(&v79 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v79 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_52;
    }

    v31 = -0.5;
  }

  else
  {
    v31 = 0.5;
  }

  v30 = v30 + v31;
LABEL_52:
  if (v30 >= 2147483650.0)
  {
    v32 = 0x7FFFFFFF;
  }

  else if (v30 <= -2147483650.0)
  {
    v32 = 0x80000000;
  }

  else
  {
    v32 = v30;
  }

  v76 = bswap32(v32);
  v33 = *&v80 * 65536.0;
  if (*&v80 * 65536.0 <= 0.0)
  {
    if (*&v80 * 65536.0 >= 0.0)
    {
      goto LABEL_62;
    }

    v34 = -0.5;
  }

  else
  {
    v34 = 0.5;
  }

  v33 = v33 + v34;
LABEL_62:
  if (v33 >= 2147483650.0)
  {
    v35 = 0x7FFFFFFF;
  }

  else if (v33 <= -2147483650.0)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v77) = bswap32(v35);
  v36 = *(&v80 + 1) * 65536.0;
  if (*(&v80 + 1) * 65536.0 <= 0.0)
  {
    if (*(&v80 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_72;
    }

    v37 = -0.5;
  }

  else
  {
    v37 = 0.5;
  }

  v36 = v36 + v37;
LABEL_72:
  if (v36 >= 2147483650.0)
  {
    v38 = 0x7FFFFFFF;
  }

  else if (v36 <= -2147483650.0)
  {
    v38 = 0x80000000;
  }

  else
  {
    v38 = v36;
  }

  HIDWORD(v77) = bswap32(v38);
  v39 = CFDataCreateWithBytesNoCopy(0, bytes, 20, v28);
  ColorSyncProfileSetTag(a1, @"gXYZ", v39);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *v81 * 65536.0;
  if (*v81 * 65536.0 <= 0.0)
  {
    if (*v81 * 65536.0 >= 0.0)
    {
      goto LABEL_84;
    }

    v41 = -0.5;
  }

  else
  {
    v41 = 0.5;
  }

  v40 = v40 + v41;
LABEL_84:
  if (v40 >= 2147483650.0)
  {
    v42 = 0x7FFFFFFF;
  }

  else if (v40 <= -2147483650.0)
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = v40;
  }

  v76 = bswap32(v42);
  v43 = *(v81 + 1) * 65536.0;
  if (*(v81 + 1) * 65536.0 <= 0.0)
  {
    if (*(v81 + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_94;
    }

    v44 = -0.5;
  }

  else
  {
    v44 = 0.5;
  }

  v43 = v43 + v44;
LABEL_94:
  if (v43 >= 2147483650.0)
  {
    v45 = 0x7FFFFFFF;
  }

  else if (v43 <= -2147483650.0)
  {
    v45 = 0x80000000;
  }

  else
  {
    v45 = v43;
  }

  LODWORD(v77) = bswap32(v45);
  v46 = *&v81[1] * 65536.0;
  if (*&v81[1] * 65536.0 > 0.0)
  {
    v47 = 0.5;
LABEL_103:
    v46 = v46 + v47;
    goto LABEL_104;
  }

  if (*&v81[1] * 65536.0 < 0.0)
  {
    v47 = -0.5;
    goto LABEL_103;
  }

LABEL_104:
  if (v46 >= 2147483650.0)
  {
    v48 = 0x7FFFFFFF;
  }

  else if (v46 <= -2147483650.0)
  {
    v48 = 0x80000000;
  }

  else
  {
    v48 = v46;
  }

  HIDWORD(v77) = bswap32(v48);
  v49 = CFDataCreateWithBytesNoCopy(0, bytes, 20, v28);
  ColorSyncProfileSetTag(a1, @"bXYZ", v49);
  if (v49)
  {
    CFRelease(v49);
  }

  if (*(a2 + 384) >> 26)
  {
    *v82 = 842229363;
    v50 = vdupq_n_s64(0x40F0000000000000uLL);
    __asm { FMOV            V3.2D, #0.5 }

    v83 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v50, v86[0])), vcvtq_s64_f64(vmlaq_f64(_Q3, v50, v86[1]))));
    v84 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v50, v87[0])), vcvtq_s64_f64(vmlaq_f64(_Q3, v50, v87[1]))));
    v85 = bswap32((v88 * 65536.0 + 0.5));
    v56 = CFDataCreateWithBytesNoCopy(0, v82, 44, v28);
    ColorSyncProfileSetTag(a1, @"chad", v56);
    if (v56)
    {
      CFRelease(v56);
    }
  }

LABEL_124:
  if (*(a2 + 384) >> 26)
  {
    v63 = v15;
  }

  else
  {
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    *(&v81[1] + 8) = xmmword_19A96E220;
    *(&v81[2] + 1) = 0x3FEA6594AF4F0D84;
    v64 = 63189.8112;
    goto LABEL_132;
  }

  v64 = *(&v81[1] + 1) * 65536.0;
  if (*(&v81[1] + 1) * 65536.0 > 0.0)
  {
LABEL_132:
    v65 = 0.5;
    goto LABEL_133;
  }

  if (*(&v81[1] + 1) * 65536.0 >= 0.0)
  {
    goto LABEL_134;
  }

  v65 = -0.5;
LABEL_133:
  v64 = v64 + v65;
LABEL_134:
  if (v64 >= 2147483650.0)
  {
    v66 = 0x7FFFFFFF;
  }

  else if (v64 <= -2147483650.0)
  {
    v66 = 0x80000000;
  }

  else
  {
    v66 = v64;
  }

  v76 = bswap32(v66);
  v67 = *&v81[2] * 65536.0;
  if (*&v81[2] * 65536.0 <= 0.0)
  {
    if (*&v81[2] * 65536.0 >= 0.0)
    {
      goto LABEL_144;
    }

    v68 = -0.5;
  }

  else
  {
    v68 = 0.5;
  }

  v67 = v67 + v68;
LABEL_144:
  if (v67 >= 2147483650.0)
  {
    v69 = 0x7FFFFFFF;
  }

  else if (v67 <= -2147483650.0)
  {
    v69 = 0x80000000;
  }

  else
  {
    v69 = v67;
  }

  LODWORD(v77) = bswap32(v69);
  v70 = *(&v81[2] + 1) * 65536.0;
  if (*(&v81[2] + 1) * 65536.0 <= 0.0)
  {
    if (*(&v81[2] + 1) * 65536.0 >= 0.0)
    {
      goto LABEL_154;
    }

    v71 = -0.5;
  }

  else
  {
    v71 = 0.5;
  }

  v70 = v70 + v71;
LABEL_154:
  if (v70 >= 2147483650.0)
  {
    v72 = 0x7FFFFFFF;
  }

  else if (v70 <= -2147483650.0)
  {
    v72 = 0x80000000;
  }

  else
  {
    v72 = v70;
  }

  HIDWORD(v77) = bswap32(v72);
  v73 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *v17);
  ColorSyncProfileSetTag(a1, @"wtpt", v73);
  if (v73)
  {
    CFRelease(v73);
  }
}

double convertSpecToXYZ(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && (v5 = *(a1 + 352)) != 0)
  {
    v33 = 0;
    v34 = 0;
    v6 = &v34;
    v7 = &v33;
    xyFromTemp(v5, &v34, &v33);
  }

  else
  {
    v6 = (a1 + 48);
    v7 = (a1 + 56);
  }

  v8 = *v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *a1 - v12;
  v15 = *a1 - v10;
  v16 = *v7 * ((v10 - v12) * v9 - v14 * v11 + v15 * v13);
  v17 = *v6 - v12;
  v18 = *v6 - v10;
  v19 = v9 * ((v10 - v12) * *v7 - v17 * v11 + v18 * v13) / v16;
  v20 = v14 * *v7 - v17 * v9;
  v21 = *v6 - *a1;
  v22 = -(v11 * (v20 + v21 * v13)) / v16;
  v23 = v13 * (v15 * *v7 - v18 * v9 + v21 * v11) / v16;
  v24 = *a1 * v19 / v9;
  v25 = ((1.0 - *a1) / v9 + -1.0) * v19;
  v26 = v10 * v22 / v11;
  v27 = ((1.0 - v10) / v11 + -1.0) * v22;
  v28 = v12 * v23 / v13;
  v29 = ((1.0 - v12) / v13 + -1.0) * v23;
  v30 = *v6 / *v7;
  v31 = 1.0 - *v6 - *v7;
  *a2 = v24;
  *(a2 + 8) = v19;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v23;
  *(a2 + 64) = v29;
  *(a2 + 72) = v30;
  *(a2 + 80) = 0x3FF0000000000000;
  result = v31 / v8;
  *(a2 + 88) = result;
  return result;
}

ColorSyncProfileRef __get_itu709_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncITUR709Profile);
  get_itu709_profile_itu709 = result;
  return result;
}

double doubleFromDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  valuePtr = 0.0;
  v3 = 0.0;
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v4))
      {
        if (CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v3;
}

double gammaCurveFromDictionary(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 255;
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) == 8)
    {
      valuePtr = 255;
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr) == 1 && valuePtr <= 4u)
      {
        *a1 = valuePtr;
        v16 = 0.0;
        v9 = CFArrayGetValueAtIndex(v6, 1);
        if (CFNumberGetValue(v9, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 8) = v16;
        }

        v10 = CFArrayGetValueAtIndex(v6, 2);
        if (CFNumberGetValue(v10, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 16) = v16;
        }

        v11 = CFArrayGetValueAtIndex(v6, 3);
        if (CFNumberGetValue(v11, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 24) = v16;
        }

        v12 = CFArrayGetValueAtIndex(v6, 4);
        if (CFNumberGetValue(v12, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 32) = v16;
        }

        v13 = CFArrayGetValueAtIndex(v6, 5);
        if (CFNumberGetValue(v13, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 40) = v16;
        }

        v14 = CFArrayGetValueAtIndex(v6, 6);
        if (CFNumberGetValue(v14, kCFNumberDoubleType, &v16) == 1)
        {
          *(a1 + 48) = v16;
        }

        v15 = CFArrayGetValueAtIndex(v6, 7);
        if (CFNumberGetValue(v15, kCFNumberDoubleType, &v16) == 1)
        {
          result = v16;
          *(a1 + 56) = v16;
        }
      }
    }
  }

  return result;
}

double ColorSyncConvertDoubleXYZToD50(__int128 *a1, float64x2_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = xmmword_19A96E220;
  v27 = 0x3FEA6594AF4F0D84;
  v10 = *(a1 + 2);
  *a3 = *a1;
  *(a3 + 2) = v10;
  v32 = 0.0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  ColorSyncGetAdaptationMtx(a4, v28.f64, a2, &v26, a5, a6, a7, a8, v26);
  if (a5)
  {
    v12 = v28;
    v11 = v29;
    *a5 = v28;
    *(a5 + 16) = v11;
    _V4.D[1] = *(&v30 + 1);
    v13 = v31;
    *(a5 + 32) = v30;
    *(a5 + 48) = v13;
    v15 = v32;
    *(a5 + 64) = v32;
  }

  else
  {
    _V4.D[1] = *(&v30 + 1);
    v13 = v31;
    v12 = v28;
    *&v11 = v29;
    v15 = v32;
  }

  v16 = *a3;
  _D5 = *(a3 + 2);
  v18 = *(a3 + 1);
  __asm { FMLA            D16, D5, V4.D[1] }

  v24 = 0.0;
  if (_D16 < 0.0 || (v24 = 1.0, _D16 > 1.0))
  {
    _D16 = v24;
  }

  result = vmuld_lane_f64(v18, v12, 1) + *&v16 * v12.f64[0] + _D5 * *&v11;
  *a3 = result;
  *(a3 + 1) = _D16;
  *(a3 + 2) = vmuld_lane_f64(v18, v13, 1) + *&v16 * v13.f64[0] + _D5 * v15;
  return result;
}

double ColorSyncGetAdaptationMtx(int a1, double *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 2;
  }

  if ((v10 - 4) < 0xFFFFFFFD)
  {
    v10 = 3;
  }

  v11 = &Bradford_mtx;
  if (v10 == 2)
  {
    v11 = &vonKries_mtx;
    v12 = &invVonKries_mtx;
  }

  else
  {
    v12 = &invBradford_mtx;
  }

  if (v10 == 1)
  {
    v13 = &identity_mtx;
  }

  else
  {
    v13 = v11;
  }

  if (v10 == 1)
  {
    v14 = &identity_mtx;
  }

  else
  {
    v14 = v12;
  }

  v15 = a3[1].f64[0];
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v19 = vmuld_lane_f64(v16, *a3, 1) + a3->f64[0] * *v13 + v15 * v17;
  v20 = v13[4];
  v21 = v13[5];
  v22 = vmuld_lane_f64(v20, *a3, 1) + a3->f64[0] * v18 + v15 * v21;
  v23 = v13[6];
  v24 = v13[7];
  v25 = v13[8];
  v26 = vmuld_lane_f64(v24, *a3, 1) + a3->f64[0] * v23 + v15 * v25;
  v27 = a4[1].f64[0];
  v28 = vmuld_lane_f64(v16, *a4, 1) + a4->f64[0] * *v13 + v27 * v17;
  v29 = vmuld_lane_f64(v20, *a4, 1) + a4->f64[0] * v18 + v27 * v21;
  v30 = vmuld_lane_f64(v24, *a4, 1) + a4->f64[0] * v23 + v27 * v25;
  v32[0] = v28 / v19;
  memset(&v32[1], 0, 24);
  v32[4] = v29 / v22;
  memset(&v32[5], 0, 24);
  v32[8] = v30 / v26;
  MatrixMatrix(v13, v32, a2);

  return MatrixMatrix(a2, v14, a2);
}

double MatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

uint64_t tagValueComparer(uint64_t result, CFTypeRef cf1, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v4 = result;
    result = CFEqual(cf1, *a3);
    if (result)
    {
      *(a3 + 8) = v4;
    }
  }

  return result;
}

void ColorSyncProfileSetParametricTRCTag(ColorSyncProfile *a1, const __CFString *a2, unsigned int a3, float64x2_t a4, float64_t a5, float64x2_t a6, float64_t a7, float64x2_t a8, float64_t a9, double a10)
{
  v26 = *MEMORY[0x1E69E9840];
  *bytes = 1634886000;
  v20 = __rev16(a3);
  a6.f64[1] = a7;
  a4.f64[1] = a5;
  v21 = 0;
  v10 = vdupq_n_s64(0x40F0000000000000uLL);
  __asm { FMOV            V3.2D, #0.5 }

  v22 = vrev32q_s8(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a4)), vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a6))));
  a8.f64[1] = a9;
  v23 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q3, v10, a8))));
  v24 = bswap32((a10 * 65536.0 + 0.5));
  v25 = 0;
  if (a3 <= 4)
  {
    v18 = CFDataCreateWithBytesNoCopy(0, bytes, qword_19A96E638[a3], *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(a1, a2, v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }
}

void ColorSyncProfileSetHeader(ColorSyncMutableProfileRef prof, CFDataRef header)
{
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && *(prof + 39) == 1)
    {
      v5 = CFGetTypeID(header);
      if (v5 == CFDataGetTypeID())
      {
        MutableCopy = CFDataCreateMutableCopy(0, 128, header);
        if (MutableCopy)
        {
          v7 = MutableCopy;
          CFDataSetLength(MutableCopy, 128);
          MutableBytePtr = CFDataGetMutableBytePtr(v7);
          *MutableBytePtr = vrev32q_s8(*MutableBytePtr);
          v9 = vrev16_s8(*(MutableBytePtr + 24));
          *(MutableBytePtr + 2) = vrev32_s8(*(MutableBytePtr + 16));
          *(MutableBytePtr + 3) = v9;
          *(MutableBytePtr + 16) = bswap32(*(MutableBytePtr + 16)) >> 16;
          *(MutableBytePtr + 17) = bswap32(*(MutableBytePtr + 17)) >> 16;
          *(MutableBytePtr + 36) = vrev32q_s8(*(MutableBytePtr + 36));
          *(MutableBytePtr + 52) = vrev32q_s8(*(MutableBytePtr + 52));
          *(MutableBytePtr + 68) = vrev32q_s8(*(MutableBytePtr + 68));
          pthread_mutex_lock((prof + 24));
          CFDictionarySetValue(*(prof + 12), @"iccHeader", v7);
          v10 = *(prof + 14);
          if (v10)
          {
            CFRelease(v10);
            *(prof + 14) = 0;
          }

          *(prof + 17) = 0;
          *(prof + 18) = 0;
          pthread_mutex_unlock((prof + 24));

          CFRelease(v7);
        }
      }
    }
  }
}

void ColorSyncProfileSetLocalizedStringDictionary(ColorSyncProfile *a1, const __CFString *a2, const void *a3)
{
  bytes[5] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  strcpy(bytes, "mluc");
  *v32 = 0;
  Mutable = CFDataCreateMutable(0, 0);
  if (!a3)
  {
    goto LABEL_39;
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFDictionaryGetTypeID() || !CFDictionaryGetCount(a3) || !Mutable)
  {
    goto LABEL_39;
  }

  Count = CFDictionaryGetCount(a3);
  v9 = malloc_type_calloc(1uLL, 24 * Count, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    v30 = a1;
    v31 = a2;
    v11 = &v9[Count];
    CFDictionaryGetKeysAndValues(a3, v9, v11);
    if (Count < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = Count;
      do
      {
        if (localeCFStrToChars(*v13, 0) && (v15 = v13[Count]) != 0 && CFStringGetLength(v15))
        {
          ++v12;
        }

        else
        {
          v13[Count] = 0;
          *v13 = 0;
        }

        ++v13;
        --v14;
      }

      while (v14);
    }

    v36 = bswap32(v12);
    LODWORD(v37) = 201326592;
    CFDataAppendBytes(Mutable, bytes, 16);
    if (Count >= 1)
    {
      v16 = 0;
      v17 = &v10[2 * Count];
      v18 = 12 * v12 + 16;
      do
      {
        v19 = v10[v16];
        if (v19)
        {
          localeCFStrToChars(v19, v32);
          v20 = 2 * CFStringGetLength(v11[v16]);
          *&v32[4] = v20;
          v33 = v18;
          v17[v16] = v18;
          if (v16)
          {
            v21 = 0;
            while (1)
            {
              v22 = v11[v21];
              if (v22)
              {
                if (CFEqual(v11[v16], v22))
                {
                  break;
                }
              }

              if (v16 == ++v21)
              {
                v20 = *&v32[4];
                LODWORD(v23) = v33;
                goto LABEL_27;
              }
            }

            v20 = *&v32[4];
            v18 -= *&v32[4];
            v23 = v17[v21];
            v17[v16] = 0;
          }

          else
          {
            LODWORD(v23) = v18;
          }

LABEL_27:
          v18 += v20;
          *&v32[4] = bswap32(v20);
          v33 = bswap32(v23);
          CFDataAppendBytes(Mutable, v32, 12);
        }

        ++v16;
      }

      while (v16 != Count);
      for (i = 0; i != Count; ++i)
      {
        if (v10[i])
        {
          if (v17[i])
          {
            Length = CFStringGetLength(v11[i]);
            v26 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            if (v26)
            {
              v27 = v26;
              v39.location = 0;
              v39.length = Length;
              CFStringGetCharacters(v11[i], v39, v26);
              v28 = Length & 0x7FFFFFFFFFFFFFFFLL;
              if ((Length & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v29 = v27;
                do
                {
                  *v29 = bswap32(*v29) >> 16;
                  v29 += 2;
                  --v28;
                }

                while (v28);
              }

              CFDataAppendBytes(Mutable, v27, 2 * Length);
              free(v27);
            }
          }
        }
      }
    }

    ColorSyncProfileSetTag(v30, v31, Mutable);
    free(v10);
LABEL_39:
    if (!Mutable)
    {
      return;
    }
  }

  CFRelease(Mutable);
}

CFTypeRef create_DisplayP3Profile()
{
  if (create_DisplayP3Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3Profile_predicate, &__block_literal_global_214);
  }

  v1 = create_DisplayP3Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR709Profile()
{
  if (create_ITUR709Profile_predicate != -1)
  {
    dispatch_once(&create_ITUR709Profile_predicate, &__block_literal_global_250);
  }

  v1 = create_ITUR709Profile_profile;

  return CFRetain(v1);
}

void ColorSyncProfileSetTag(ColorSyncMutableProfileRef prof, CFStringRef signature, CFDataRef data)
{
  if (prof)
  {
    v6 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v6 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (data)
      {
        if (*(prof + 39) == 1)
        {
          v7 = CFGetTypeID(data);
          if (v7 == CFDataGetTypeID())
          {
            v11 = data;
            cf2 = 0;
            pthread_mutex_lock((prof + 24));
            CFDictionaryApplyFunction(*(prof + 12), tagValueComparer, &v11);
            if (cf2 && !CFEqual(signature, cf2))
            {
              CFDictionarySetValue(*(prof + 12), signature, cf2);
            }

            else
            {
              Copy = CFDataCreateCopy(0, data);
              if (Copy)
              {
                v9 = Copy;
                if (CFDictionaryContainsValue(*(prof + 12), signature))
                {
                  removeReference(prof, signature);
                }

                CFDictionarySetValue(*(prof + 12), signature, v9);
                v10 = *(prof + 14);
                if (v10)
                {
                  CFRelease(v10);
                  *(prof + 14) = 0;
                }

                *(prof + 17) = 0;
                *(prof + 18) = 0;
                CFRelease(v9);
              }
            }

            pthread_mutex_unlock((prof + 24));
          }
        }
      }
    }
  }
}

void ColorSyncProfileSetDescriptionTag(const ColorSyncProfile *a1, const __CFString *a2, __CFString *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = ColorSyncProfileCopyHeader(a1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(v6);
  if (!BytePtr || *(BytePtr + 9) != 1633907568)
  {
    CFRelease(v7);
    goto LABEL_11;
  }

  v9 = *(BytePtr + 2);
  CFRelease(v7);
  if (!(v9 >> 26))
  {
LABEL_11:
    bzero(buffer, 0x401uLL);
    usedBufLen = 0;
    bzero(v27, 0x802uLL);
    if (!a2)
    {
      goto LABEL_38;
    }

    v11 = CFGetTypeID(a2);
    if (v11 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a2);
      if (CFStringGetCString(a2, buffer, 1024, 0x600u))
      {
        v13 = 0;
      }

      else
      {
        v32.location = 0;
        v32.length = Length;
        CFStringGetBytes(a2, v32, 0x600u, 0x3Fu, 0, buffer, 1024, 0);
        v33.location = 0;
        v33.length = Length;
        CFStringGetBytes(a2, v33, 0x100u, 0x3Fu, 0, v27, 1024, &usedBufLen);
        v13 = ++usedBufLen;
      }

      v19 = strlen(buffer) + 1;
      v21 = v27;
      v20 = a1;
      v22 = v13;
      goto LABEL_31;
    }

    v14 = CFGetTypeID(a2);
    if (v14 == CFDictionaryGetTypeID())
    {
      ColorSyncProfileSetLocalizedStringDictionary(a1, @"dscm", a2);
      if (!a3)
      {
        return;
      }

      v15 = CFGetTypeID(a3);
      if (v15 != CFStringGetTypeID())
      {
        return;
      }

      v16 = CFStringGetLength(a3);
      if (!v16)
      {
        return;
      }

      v31.length = v16;
      v31.location = 0;
      if (!CFStringGetBytes(a3, v31, 0x600u, 0x3Fu, 0, buffer, 1024, 0))
      {
        return;
      }
    }

    else
    {
LABEL_38:
      if (ColorSyncProfileContainsTag(a1, @"desc") || ColorSyncProfileContainsTag(a1, @"dscm"))
      {
        return;
      }

      v17 = a3 ? a3 : @"Unknown";
      v18 = CFGetTypeID(v17);
      if (v18 != CFStringGetTypeID())
      {
        return;
      }

      CFStringGetLength(v17);
      if (!CFStringGetCString(v17, buffer, 1024, 0x600u))
      {
        return;
      }
    }

    v19 = strlen(buffer) + 1;
    v20 = a1;
    v21 = 0;
    v22 = 0;
LABEL_31:
    setDESCTag(v20, buffer, v19, v21, v22);
    return;
  }

  if (a2)
  {
    v10 = CFGetTypeID(a2);
    if (v10 == CFDictionaryGetTypeID())
    {

      ColorSyncProfileSetLocalizedStringDictionary(a1, @"desc", a2);
    }

    else
    {
      v23 = CFGetTypeID(a2);
      if (v23 == CFStringGetTypeID())
      {
        *v27 = @"en_US";
        *buffer = a2;
        v24 = CFDictionaryCreate(0, v27, buffer, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v24)
        {
          v25 = v24;
          ColorSyncProfileSetLocalizedStringDictionary(a1, @"desc", v24);
          CFRelease(v25);
        }
      }
    }
  }
}

CFArrayRef ColorSyncProfileCopyTagSignatures(ColorSyncProfileRef prof)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (prof)
  {
    v3 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v3 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && Mutable != 0)
    {
      if (*(prof + 39) == 1)
      {
        pthread_mutex_lock((prof + 24));
      }

      CFDictionaryApplyFunction(*(prof + 12), tagSignatureAppender, Mutable);
      if (*(prof + 39) == 1)
      {
        pthread_mutex_unlock((prof + 24));
      }

      v6.length = CFArrayGetCount(Mutable);
      v6.location = 0;
      CFArraySortValues(Mutable, v6, compareTags, 0);
    }
  }

  return Mutable;
}

void tagSignatureAppender(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (a1 && CFEqual(a1, @"iccHeader") != 1)
  {

    CFArrayAppendValue(a3, a1);
  }
}

uint64_t localeCFStrToChars(const __CFString *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  *buffer = 0;
  if (a2)
  {
    *a2 = 0;
  }

  result = CFStringGetCString(a1, buffer, 9, 0x600u);
  if (result)
  {
    v4 = strlen(buffer);
    result = 0;
    if (v4 <= 5 && ((1 << v4) & 0x34) != 0)
    {
      if (a2)
      {
        v5 = &buffer[3];
        *a2 = *buffer;
        if (v4 == 4)
        {
          v6 = &buffer[2];
          goto LABEL_11;
        }

        if (v4 == 5)
        {
          v6 = &buffer[3];
          v5 = &buffer[4];
LABEL_11:
          *(a2 + 2) = *v6;
          *(a2 + 3) = *v5;
        }
      }

      return 1;
    }
  }

  return result;
}

__CFData *createProfileData(CFDictionaryRef *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = a1[12];
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"iccHeader");
      Count = CFDictionaryGetCount(a1[12]);
      if (Value)
      {
        if (Count >= 2)
        {
          v6 = Count - 1;
          v7 = a1[12];
          context[0] = Mutable;
          context[1] = v7;
          context[3] = 0;
          BytePtr = CFDataGetBytePtr(Value);
          CFDataAppendBytes(Mutable, BytePtr, 128);
          *bytes = bswap32(v6);
          CFDataAppendBytes(Mutable, bytes, 4);
          CFDataSetLength(Mutable, 12 * v6 + 132);
          context[2] = 12 * v6 + 132;
          v9 = ColorSyncProfileCopyTagSignatures(a1);
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetCount(v9);
            v15.location = 0;
            v15.length = v11;
            CFArrayApplyFunction(v10, v15, tagDataAdder, context);
            v16.location = 0;
            v16.length = v11;
            CFArrayApplyFunction(v10, v16, tagReferenceAdder, context);
            LODWORD(v11) = bswap32(CFDataGetLength(Mutable));
            *CFDataGetMutableBytePtr(Mutable) = v11;
            CFRelease(v10);
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t overlap_verifier(uint64_t result, CFTypeRef cf, uint64_t a3)
{
  if (!cf)
  {
    return result;
  }

  if (*(a3 + 16))
  {
    return result;
  }

  v5 = result;
  v6 = CFGetTypeID(cf);
  result = CFDataGetTypeID();
  if (v6 != result)
  {
    return result;
  }

  BytePtr = CFDataGetBytePtr(cf);
  result = CFDataGetLength(cf);
  if (!BytePtr)
  {
    return result;
  }

  v8 = *a3;
  v9 = *a3 + *(a3 + 8) - (*(a3 + 8) != 0);
  if (*a3 >= BytePtr)
  {
    v11 = &BytePtr[result - (result != 0)];
    if (BytePtr >= v8)
    {
      *(a3 + 16) = v9 != v11;
      if (v9 == v11)
      {
        return result;
      }

      goto LABEL_14;
    }

    v10 = v11 >= v8;
  }

  else
  {
    v10 = v9 >= BytePtr;
  }

  v12 = v10;
  *(a3 + 16) = v12;
  if (v10)
  {
LABEL_14:
    *(a3 + 32) = v5;
  }

  return result;
}

BOOL CMMProfile::Usable(CMMProfile *this)
{
  if (*(this + 17) != 1633907568)
  {
    return 0;
  }

  v2 = *(this + 43) << 24;
  if (v2 != 0x4000000 && v2 != 0x2000000)
  {
    return 0;
  }

  v4 = ColorSyncProfileCopyTagSignatures(*(this + 2));
  if (!v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count)
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; v8 = ++i >= v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(ValueAtIndex);
      v12 = FourCharCodeFromSignature;
      if (FourCharCodeFromSignature > 1633776230)
      {
        if (FourCharCodeFromSignature <= 1733843289)
        {
          if (FourCharCodeFromSignature <= 1649957209)
          {
            if (FourCharCodeFromSignature != 1633776231)
            {
              v15 = 1649693251;
              goto LABEL_39;
            }
          }

          else if (FourCharCodeFromSignature != 1649957210 && FourCharCodeFromSignature != 1667851120)
          {
            v15 = 1733579331;
            goto LABEL_39;
          }
        }

        else if (FourCharCodeFromSignature > 1800688194)
        {
          if (FourCharCodeFromSignature != 1800688195 && FourCharCodeFromSignature != 1918128707)
          {
            v15 = 1918392666;
            goto LABEL_39;
          }
        }

        else if (FourCharCodeFromSignature != 1733843290 && FourCharCodeFromSignature != 1734438260)
        {
          if (FourCharCodeFromSignature == 1751405638)
          {
            if (ColorSyncProfileIsPQBased(*(this + 2)) || ColorSyncProfileIsHLGBased(*(this + 2)))
            {
              v13 = 0;
            }

            else
            {
              v13 = 4294967126;
            }

            CMMThrowExceptionOnError(v13);
          }

          continue;
        }
      }

      else if (FourCharCodeFromSignature > 1633763938)
      {
        if (FourCharCodeFromSignature <= 1633768034)
        {
          if (FourCharCodeFromSignature != 1633763939)
          {
            v14 = 18275;
LABEL_36:
            v15 = v14 | 0x61610000;
LABEL_39:
            if (FourCharCodeFromSignature != v15)
            {
              continue;
            }
          }
        }

        else if (FourCharCodeFromSignature != 1633768035 && FourCharCodeFromSignature != 1633772135)
        {
          v14 = 26471;
          goto LABEL_36;
        }
      }

      else if ((FourCharCodeFromSignature - 1093812784) >= 3 && (FourCharCodeFromSignature - 1110589744) >= 3)
      {
        continue;
      }

      v16 = *(this + 2);
      if (!*(v16 + 156))
      {
        Tag = ColorSyncProfileGetTag(*(this + 2), ValueAtIndex);
        if (Tag)
        {
          v18 = Tag;
          v28 = 0;
          context[0] = CFDataGetBytePtr(Tag);
          context[1] = CFDataGetLength(v18);
          LOBYTE(v28) = 0;
          v29 = ValueAtIndex;
          v30 = 0;
          CFDictionaryApplyFunction(*(v16 + 96), overlap_verifier, context);
          if (v28)
          {
            v19 = v30;
            v20 = ColorSyncProfileCopyDescriptionString(*(this + 2));
            v21 = v20;
            v22 = @"No description";
            if (v20)
            {
              v22 = v20;
            }

            ColorSyncLog(2, "Invalid profile '%@': tags '%@' and '%@' overlap", v22, ValueAtIndex, v19);
            if (v21)
            {
              CFRelease(v21);
            }
          }
        }
      }

      if (!CMMProfile::GetTag(this, v12))
      {
        goto LABEL_55;
      }
    }
  }

  v8 = 1;
LABEL_55:
  v23 = *(this + 20);
  *(this + 20) = 0;
  if (v23)
  {
    do
    {
      v24 = v23[2];
      (*(*v23 + 8))(v23);
      v23 = v24;
    }

    while (v24);
  }

  CFRelease(v5);
  return v8;
}

void sub_19A91CE3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19A91CDE4);
}

uint64_t computeMD5(const __CFData *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  *md = 0;
  v21 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!BytePtr)
  {
    return 0;
  }

  v4 = Length;
  result = 0;
  if (v4 >= 0x80)
  {
    v6 = *BytePtr;
    v7 = *(BytePtr + 1);
    v8 = *(BytePtr + 3);
    v15 = *(BytePtr + 2);
    v10 = *(BytePtr + 6);
    v9 = *(BytePtr + 7);
    v11 = *(BytePtr + 4);
    *v18 = *(BytePtr + 5);
    *&v18[16] = v10;
    v16 = v8;
    v17 = v11;
    data[0] = v6;
    data[1] = v7;
    v19 = v9;
    HIDWORD(v15) = 0;
    LODWORD(v17) = 0;
    *&v18[4] = 0uLL;
    memset(&v13, 0, sizeof(v13));
    CC_MD5_Init(&v13);
    CC_MD5_Update(&v13, data, 0x80u);
    v12 = bswap32(data[0]);
    if (v4 < v12)
    {
      v12 = v4;
    }

    if (v12 - 129 <= 0xFFFFFFFE)
    {
      CC_MD5_Update(&v13, BytePtr + 128, v12 - 128);
    }

    CC_MD5_Final(md, &v13);
    return *md;
  }

  return result;
}

uint64_t AppleCMMValidateProfile(CMMProfileMaker *a1)
{
  v8 = 0;
  CMMMemMgr::CMMMemMgr(&v8);
  Profile = CMMProfileMaker::MakeProfile(a1, &v8, 0);
  v3 = (*(*Profile + 16))(Profile);
  v4 = *(Profile + 2) - 1;
  *(Profile + 2) = v4;
  if (!v4)
  {
    (*(*Profile + 8))(Profile);
  }

  if (v8)
  {
    v5 = *v8;
    if (*v8)
    {
      do
      {
        v6 = *v5;
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  CMMMemMgr::ReleaseMemList(&v8);
  return v3;
}

void sub_19A91D094(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v10)
    {
      v12 = v10[2] - 1;
      v10[2] = v12;
      if (!v12)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (a10)
    {
      v13 = *a10;
      if (*a10)
      {
        do
        {
          v14 = *v13;
          free(v13);
          v13 = v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    if (v10)
    {
      v15 = v10[2] - 1;
      v10[2] = v15;
      if (!v15)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (a10)
    {
      v16 = *a10;
      if (*a10)
      {
        do
        {
          v17 = *v16;
          free(v16);
          v16 = v17;
        }

        while (v17);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A91D070);
}

void sub_19A91D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

CFComparisonResult compareTags(const __CFString *a1, const __CFString *a2)
{
  FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(a1);
  v5 = ColorSyncGetFourCharCodeFromSignature(a2);
  v6 = 0;
  while (FourCharCodeFromSignature != *&aCsedmcsdtrpctp[4 * v6])
  {
    if (++v6 == 28)
    {
      v6 = 1000;
      break;
    }
  }

  v7 = 0;
  while (v5 != *&aCsedmcsdtrpctp[4 * v7])
  {
    if (++v7 == 28)
    {
      v7 = 1000;
      break;
    }
  }

  if (v6 < 0x3E8 || v7 <= 0x3E7)
  {
    v9 = v6 >= v7;
    v10 = v6 == v7;
    v11 = -1;
    if (v9)
    {
      v11 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return CFStringCompare(a1, a2, 0);
  }
}

const __CFString *ColorSyncGetFourCharCodeFromSignature(const __CFString *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    CStringPtr = CFStringGetCStringPtr(result, 0x600u);
    *buffer = 0;
    v5 = 0;
    if (CStringPtr)
    {
      v3 = *CStringPtr;
    }

    else
    {
      if (!CFStringGetCString(v1, buffer, 16, 0x600u))
      {
        return 1061109567;
      }

      v3 = *buffer;
    }

    return bswap32(v3);
  }

  return result;
}

BOOL CMMProfileMaker::TagExists(CMMProfileMaker *this, const ColorSyncProfile *a2)
{
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(a2);
  v4 = ColorSyncProfileContainsTag(this, SignatureFromFourCharCode);
  CFRelease(SignatureFromFourCharCode);
  return v4;
}

void CMMBase::operator delete(pthread_mutex_t **a1)
{
  if (!a1)
  {
    return;
  }

  pthread_mutex_lock(*(a1 - 1));
  v2 = *(a1 - 3);
  if (v2)
  {
    v3 = *(a1 - 4);
LABEL_6:
    *v2 = v3;
    goto LABEL_7;
  }

  v2 = *(a1 - 2);
  v3 = *(a1 - 4);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v3)
  {
    v4 = *(a1 - 2);
    if (v4)
    {
      v5 = 0;
      *(v3 + 16) = v4;
    }

    else
    {
      v5 = *(a1 - 3);
    }

    *(v3 + 8) = v5;
  }

  pthread_mutex_unlock(*(a1 - 1));

  free(a1 - 4);
}

uint64_t CMMCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 1987212643)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(v3 + 32) >= 2 * bswap32(*(*(v3 + 40) + 8)) + 12)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

void CMMTagDataAccess::~CMMTagDataAccess(CMMTagDataAccess *this)
{
  *this = &unk_1F0E08C80;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  CMMTagDataAccess::~CMMTagDataAccess(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMThrowExceptionOnError(uint64_t result)
{
  if (result)
  {
    v1 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v1;
  }

  return result;
}

uint64_t CMMGetChannelCountFromCMMSpace(int a1)
{
  v1 = 0;
  v2 = 0;
  if (a1 > 1145261137)
  {
    if (a1 > 1282766367)
    {
      if (a1 <= 1482250783)
      {
        if (a1 == 1282766368 || a1 == 1347182946)
        {
          goto LABEL_65;
        }

        v10 = 1380401696;
        goto LABEL_56;
      }

      if (a1 <= 1501067551)
      {
        if (a1 == 1482250784)
        {
          goto LABEL_65;
        }

        v10 = 1497588338;
        goto LABEL_56;
      }

      if (a1 == 1501067552)
      {
        goto LABEL_65;
      }

      v5 = 1734438260;
    }

    else
    {
      if (a1 <= 1178815569)
      {
        if (a1 == 1145261138)
        {
          v2 = 1;
          v1 = 13;
          goto LABEL_66;
        }

        if (a1 != 1145856354)
        {
          v3 = a1 == 1162038354;
          v4 = 14;
          goto LABEL_25;
        }

        goto LABEL_65;
      }

      if (a1 > 1212961567)
      {
        if (a1 == 1212961568)
        {
          goto LABEL_65;
        }

        v10 = 1213421088;
        goto LABEL_56;
      }

      if (a1 == 1178815570)
      {
        v2 = 1;
        v1 = 15;
        goto LABEL_66;
      }

      v5 = 1196573017;
    }

    if (a1 != v5)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a1 <= 943934545)
  {
    if (a1 > 876825681)
    {
      if (a1 <= 910380113)
      {
        if (a1 != 876825682)
        {
          v3 = a1 == 893602898;
          v4 = 5;
LABEL_25:
          v2 = v3;
          if (v3)
          {
            v1 = v4;
          }

          else
          {
            v1 = 0;
          }

          goto LABEL_66;
        }

LABEL_60:
        v2 = 1;
        v1 = 4;
        goto LABEL_66;
      }

      v6 = 910380114;
      v7 = 6;
      v8 = a1 == 927157330;
      v9 = 7;
      goto LABEL_43;
    }

    if (a1 != 1)
    {
      if (a1 == 843271250)
      {
        v2 = 1;
        v1 = 2;
        goto LABEL_66;
      }

      v10 = 860048466;
LABEL_56:
      if (a1 != v10)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

LABEL_64:
    v2 = 1;
    v1 = 1;
    goto LABEL_66;
  }

  if (a1 <= 1111706705)
  {
    v6 = 943934546;
    v7 = 8;
    v11 = 10;
    if (a1 != 1094929490)
    {
      v11 = 0;
    }

    v12 = a1 == 960711762 || a1 == 1094929490;
    if (a1 == 960711762)
    {
      v9 = 9;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_48;
  }

  if (a1 > 1129142559)
  {
    if (a1 != 1129142560)
    {
      if (a1 != 1129142603)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v2 = 1;
    v1 = 3;
    goto LABEL_66;
  }

  v6 = 1111706706;
  v7 = 11;
  v8 = a1 == 1128483922;
  v9 = 12;
LABEL_43:
  v12 = v8;
  if (!v8)
  {
    v9 = 0;
  }

LABEL_48:
  v13 = a1 == v6;
  v2 = a1 == v6 || v12;
  if (v13)
  {
    v1 = v7;
  }

  else
  {
    v1 = v9;
  }

LABEL_66:
  if (!a1)
  {
    v2 = 1;
  }

  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294967126;
  }

  CMMThrowExceptionOnError(v14);
  return v1;
}

void CMMMemMgr::ReleaseMemList(void **this)
{
  if (*this)
  {
    pthread_mutex_lock((*this + 8));
    v2 = *this;
    v3 = *(*this + 18) - 1;
    *(v2 + 18) = v3;
    pthread_mutex_unlock((v2 + 8));
    if (!v3)
    {
      pthread_mutex_destroy((*this + 8));
      free(*this);
      *this = 0;
    }
  }
}

uint64_t CMMXYZTag::CMMXYZTag(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 16) = 0;
  if (a5)
  {
    *(a5 + 16) = a1;
  }

  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E09148;
  if (a4 >= 0x14)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return a1;
}

unint64_t CMMProfileInfoContainer::GetMaxNofChannels(CMMProfileInfoContainer *this)
{
  v1 = *(this + 2) - *(this + 1);
  if (!v1)
  {
    return 3;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v1 >> 3);
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = 3;
  do
  {
    v8 = *(this + 1);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v8) >> 3) <= v4)
    {
      std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v8 + v3 + 8);
    v10 = *(v9 + 48);
    if (v10 <= 1296255029)
    {
      if (v10 == 1281450528)
      {
        v10 = 1145856354;
      }

      else if (v10 == 1296255029)
      {
        v10 = 893602898;
      }
    }

    else
    {
      switch(v10)
      {
        case 1296255030:
          v10 = 910380114;
          break;
        case 1296255031:
          v10 = 927157330;
          break;
        case 1296255032:
          v10 = 943934546;
          break;
      }
    }

    v11 = *(v9 + 52);
    if (v11 == 1281450528)
    {
      v12 = 1347182946;
    }

    else
    {
      v12 = v11;
    }

    if (*(v8 + v3 + 16) != 4)
    {
      v13 = CMMGetChannelCountFromCMMSpace(v10);
      if (v7 <= v13)
      {
        v7 = v13;
      }
    }

    v14 = CMMGetChannelCountFromCMMSpace(v12);
    if (v7 <= v14)
    {
      v7 = v14;
    }

    ++v4;
    v3 += 40;
  }

  while (v6 != v4);
  return v7;
}

CFDataRef ColorSyncProfileCopyTag(ColorSyncProfileRef prof, CFStringRef signature)
{
  if (!prof)
  {
    return 0;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_lock((prof + 24));
  }

  Tag = getTag(prof, signature);
  if (Tag)
  {
    Copy = CFDataCreateCopy(0, Tag);
  }

  else
  {
    Copy = 0;
  }

  if (*(prof + 39) == 1)
  {
    pthread_mutex_unlock((prof + 24));
  }

  return Copy;
}

ColorSyncTransformRef ColorSyncTransformCreate(CFArrayRef profileSequence, CFDictionaryRef options)
{
  if (!profileSequence)
  {
    LODWORD(v6) = 0;
    goto LABEL_43;
  }

  v4 = CFGetTypeID(profileSequence);
  if (v4 != CFArrayGetTypeID())
  {
    goto LABEL_21;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(profileSequence, 0);
  v6 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v7 = CFGetTypeID(ValueAtIndex);
    if (v7 != CFDictionaryGetTypeID())
    {
      goto LABEL_21;
    }

    Value = CFDictionaryGetValue(v6, kColorSyncProfile);
    v9 = CFDictionaryGetValue(v6, kColorSyncTransformTag);
    if (!Value)
    {
      goto LABEL_21;
    }

    v10 = v9;
    v11 = CFGetTypeID(Value);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    LODWORD(v6) = 0;
    if (v11 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && v10)
    {
      v12 = ColorSyncProfileCopyHeader(Value);
      if (!CFEqual(v10, kColorSyncTransformDeviceToPCS))
      {
        if (CFEqual(v10, kColorSyncTransformPCSToPCS) || CFEqual(v10, kColorSyncTransformPCSToDevice))
        {
          if (v12)
          {
            BytePtr = CFDataGetBytePtr(v12);
            if (BytePtr)
            {
              v14 = BytePtr + 20;
              goto LABEL_20;
            }

LABEL_37:
            LODWORD(v6) = 0;
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        if (!CFEqual(v10, kColorSyncTransformDeviceToDevice) && !CFEqual(v10, kColorSyncTransformSceneLinearToPCS) && !CFEqual(v10, kColorSyncTransformDisplayLinearToPCS) && !CFEqual(v10, kColorSyncTransformDeviceToSceneLinearPCS))
        {
          LODWORD(v6) = 0;
          if (!v12)
          {
            goto LABEL_22;
          }

          goto LABEL_38;
        }
      }

      if (v12)
      {
        v13 = CFDataGetBytePtr(v12);
        if (v13)
        {
          v14 = v13 + 16;
LABEL_20:
          LODWORD(v6) = *v14;
LABEL_38:
          CFRelease(v12);
          goto LABEL_22;
        }

        goto LABEL_37;
      }

LABEL_21:
      LODWORD(v6) = 0;
    }
  }

LABEL_22:
  v16 = CFGetTypeID(profileSequence);
  if (v16 != CFArrayGetTypeID())
  {
    goto LABEL_43;
  }

  if (CFArrayGetCount(profileSequence) < 1)
  {
    goto LABEL_43;
  }

  Count = CFArrayGetCount(profileSequence);
  v18 = CFArrayGetValueAtIndex(profileSequence, Count - 1);
  if (!v18)
  {
    goto LABEL_43;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  if (v20 != CFDictionaryGetTypeID())
  {
    goto LABEL_43;
  }

  v21 = CFDictionaryGetValue(v19, kColorSyncProfile);
  v22 = CFDictionaryGetValue(v19, kColorSyncTransformTag);
  if (!v21)
  {
    goto LABEL_43;
  }

  v23 = v22;
  v24 = CFGetTypeID(v21);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    v38 = v24;
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    v24 = v38;
  }

  v25 = 0;
  if (v24 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID && v23)
  {
    v26 = ColorSyncProfileCopyHeader(v21);
    if (CFEqual(v23, kColorSyncTransformDeviceToPCS) || CFEqual(v23, kColorSyncTransformPCSToPCS))
    {
LABEL_33:
      if (v26)
      {
        v27 = CFDataGetBytePtr(v26);
        if (v27)
        {
          v28 = (v27 + 20);
LABEL_36:
          v25 = *v28;
LABEL_58:
          CFRelease(v26);
          goto LABEL_44;
        }

        goto LABEL_57;
      }

      goto LABEL_43;
    }

    if (CFEqual(v23, kColorSyncTransformPCSToDevice))
    {
LABEL_40:
      if (v26)
      {
        v29 = CFDataGetBytePtr(v26);
        if (v29)
        {
          v28 = (v29 + 16);
          goto LABEL_36;
        }

LABEL_57:
        v25 = 0;
        goto LABEL_58;
      }

LABEL_43:
      v25 = 0;
      goto LABEL_44;
    }

    if (CFEqual(v23, kColorSyncTransformDeviceToDevice))
    {
      goto LABEL_33;
    }

    if (CFEqual(v23, kColorSyncTransformGamutCheck))
    {
      v25 = 1734438260;
    }

    else
    {
      if (CFEqual(v23, kColorSyncTransformPCSToSceneLinear) || CFEqual(v23, kColorSyncTransformPCSToDisplayLinear) || CFEqual(v23, kColorSyncTransformSceneLinearPCSToDevice))
      {
        goto LABEL_40;
      }

      v25 = 0;
    }

    if (v26)
    {
      goto LABEL_58;
    }
  }

LABEL_44:
  RuntimeInstance = createRuntimeInstance(v6, v25, profileSequence);
  if (RuntimeInstance)
  {
    v31 = ColorSyncCMMCreateAppleCMM();
    if (profileSequence && (v32 = v31, v33 = CFGetTypeID(profileSequence), v33 == CFArrayGetTypeID()) && (!options || (v34 = CFGetTypeID(options), v34 == CFDictionaryGetTypeID())) && (v35 = v32[6]) != 0 && v35(RuntimeInstance, profileSequence, options))
    {
      *(RuntimeInstance + 10) = CFRetain(v32);
      CFDictionarySetValue(*(RuntimeInstance + 14), kColorSyncTransformCreator, @"Apple CMM");
      CFRelease(@"Apple CMM");
      if (options)
      {
        v36 = CFRetain(options);
      }

      else
      {
        v36 = 0;
      }

      *(RuntimeInstance + 16) = v36;
    }

    else
    {
      CFRelease(RuntimeInstance);
      return 0;
    }
  }

  return RuntimeInstance;
}

uint64_t getColorSpacetNofComponents(int a1)
{
  v1 = 0;
  if (a1 > 1145261137)
  {
    if (a1 <= 1281450527)
    {
      if (a1 <= 1196573016)
      {
        v2 = 1145261138;
        v3 = 13;
        v7 = 1162038354;
        v8 = 14;
        v9 = a1 == 1178815570;
        v10 = 15;
        goto LABEL_24;
      }

      if (a1 != 1196573017)
      {
        if (a1 == 1212961568)
        {
          return 3;
        }

        v5 = 1213421088;
        goto LABEL_35;
      }
    }

    else
    {
      if (a1 <= 1482250783)
      {
        if (a1 == 1281450528 || a1 == 1282766368)
        {
          return 3;
        }

        v5 = 1380401696;
        goto LABEL_35;
      }

      if (a1 <= 1501067551)
      {
        if (a1 == 1482250784)
        {
          return 3;
        }

        v5 = 1497588338;
LABEL_35:
        if (a1 != v5)
        {
          return v1;
        }

        return 3;
      }

      if (a1 == 1501067552)
      {
        return 3;
      }

      if (a1 != 1734438260)
      {
        return v1;
      }
    }

    return 1;
  }

  if (a1 <= 943934545)
  {
    if (a1 <= 893602897)
    {
      if (a1 == 843271250)
      {
        return 2;
      }

      if (a1 != 860048466)
      {
        v6 = 876825682;
        goto LABEL_39;
      }

      return 3;
    }

    v2 = 893602898;
    v3 = 5;
    v7 = 910380114;
    v8 = 6;
    v9 = a1 == 927157330;
    v10 = 7;
LABEL_24:
    if (!v9)
    {
      v10 = 0;
    }

    if (a1 == v7)
    {
      v4 = v8;
    }

    else
    {
      v4 = v10;
    }

    goto LABEL_29;
  }

  if (a1 <= 1111706705)
  {
    v2 = 943934546;
    v3 = 8;
    v7 = 960711762;
    v8 = 9;
    v9 = a1 == 1094929490;
    v10 = 10;
    goto LABEL_24;
  }

  if (a1 <= 1129142559)
  {
    v2 = 1111706706;
    v3 = 11;
    v4 = 12;
    if (a1 != 1128483922)
    {
      v4 = 0;
    }

LABEL_29:
    if (a1 == v2)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  if (a1 == 1129142560)
  {
    return 3;
  }

  v6 = 1129142603;
LABEL_39:
  if (a1 == v6)
  {
    return 4;
  }

  return v1;
}