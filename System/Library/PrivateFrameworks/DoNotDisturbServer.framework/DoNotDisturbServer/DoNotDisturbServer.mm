id _DNDSPrimaryBundleIdentifier(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 containingBundleRecord];
    v4 = [v3 bundleIdentifier];

    v5 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_INFO, "Mapping extension bundle %@ to containing bundle %@.", &v7, 0x16u);
    }

    v2 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

uint64_t DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = DNDSMinorBuildVersionFromBuildVersion(v5);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v9 = *a1;
      if (*a1 >= 8)
      {
        if (![v5 hasPrefix:@"19"])
        {
          goto LABEL_28;
        }

        if (![v5 hasPrefix:@"19R"])
        {
          if ([v5 hasPrefix:@"19S"])
          {
LABEL_49:
            v7 = 10;
            goto LABEL_38;
          }

          v13 = ([v5 hasPrefix:@"19T"] & (v6 < 0x217)) == 0;
          goto LABEL_51;
        }

        v7 = 9;
        if (v6 < 0x115 || v6 - 5266 < 0x14)
        {
          goto LABEL_38;
        }

        v8 = -5286;
        goto LABEL_26;
      }

      if (v9 > 5)
      {
LABEL_34:
        v7 = 8;
        goto LABEL_38;
      }

      if (v9 > 3)
      {
        v7 = 1;
        goto LABEL_38;
      }
    }

    else if (a3 == 4 && *a1 > 0)
    {
      goto LABEL_28;
    }

LABEL_37:
    v7 = 0;
    goto LABEL_38;
  }

  if (a3 == 1)
  {
    if (*a1 >= 15)
    {
      if (![v5 hasPrefix:@"19"])
      {
        goto LABEL_28;
      }

      if (![v5 hasPrefix:@"19A"])
      {
        if ([v5 hasPrefix:@"19B"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"19C") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"19D"))
        {
          goto LABEL_49;
        }

        v12 = @"19E";
LABEL_47:
        v13 = [v5 hasPrefix:v12] == 0;
LABEL_51:
        if (v13)
        {
          v7 = 11;
        }

        else
        {
          v7 = 10;
        }

        goto LABEL_38;
      }

      v7 = 9;
      if (v6 < 0x110 || v6 - 5261 < 0x14)
      {
        goto LABEL_38;
      }

      v8 = -5281;
LABEL_26:
      if (v6 + v8 < 0xFFFFFFFFFFFFFFECLL)
      {
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (*a1 <= 12)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a3 != 2)
  {
    goto LABEL_37;
  }

  if (*a1 < 12)
  {
    v10 = DNDSLogPairedDeviceState;
    if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
    {
      DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion_cold_1(a1, v10);
    }

    goto LABEL_37;
  }

  if (![v5 hasPrefix:@"21"])
  {
LABEL_28:
    v7 = 11;
    goto LABEL_38;
  }

  if (![v5 hasPrefix:@"21A"])
  {
    if ([v5 hasPrefix:@"21B"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"21C") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"21D"))
    {
      goto LABEL_49;
    }

    v12 = @"21E";
    goto LABEL_47;
  }

  v7 = 9;
  if (v6 >= 0xF9 && v6 - 5248 >= 0x14)
  {
    v8 = -5268;
    goto LABEL_26;
  }

LABEL_38:

  return v7;
}

uint64_t DNDSMinorBuildVersionFromBuildVersion(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
  v5 = [v4 invertedSet];
  v6 = [v2 substringFromIndex:{objc_msgSend(v2, "rangeOfCharacterFromSet:", v3)}];

  v7 = [v6 stringByRemovingCharactersFromSet:v5];

  v8 = [v7 unsignedIntValue];
  return v8;
}

uint64_t DNDSConfigurationSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = DNDSMajorBuildVersionFromBuildVersion(v5);
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4 && *a1 > 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    v8 = *a1 < 8;
LABEL_13:
    if (v8 || v6 <= 0x13)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v8 = *a1 < 15;
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    if (*a1 < 12 || v6 <= 0x15)
    {
LABEL_17:
      v11 = *a1;
      v12 = a1[2];
      v7 = DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v11, v5, a3);
      goto LABEL_19;
    }

LABEL_18:
    v7 = 12;
    goto LABEL_19;
  }

LABEL_10:
  v7 = 0;
LABEL_19:

  return v7;
}

uint64_t DNDSMajorBuildVersionFromBuildVersion(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
  v5 = [v4 invertedSet];
  v6 = [v2 substringToIndex:{objc_msgSend(v2, "rangeOfCharacterFromSet:", v3)}];

  v7 = [v6 stringByRemovingCharactersFromSet:v5];

  v8 = [v7 unsignedIntValue];
  return v8;
}

__CFString *DNDSResolutionOutcomeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278F8BDD8[a1];
  }
}

BOOL DNDSPowerLogInterruptionSuppressionForDNDInterruptionSuppression(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

void DNDSPowerLogFocusInterruptionSuppresionEvent(void *a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if ((a2 - 1) <= 1)
  {
    v8[0] = a1;
    v7[0] = @"BundleID";
    v7[1] = @"InterruptionSuppression";
    v3 = MEMORY[0x277CCABB0];
    v4 = a1;
    v5 = [v3 numberWithInteger:a2];
    v7[2] = @"Count";
    v8[1] = v5;
    v8[2] = &unk_285C53688;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

    PLLogRegisteredEvent();
  }
}

uint64_t sub_2491328A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2491328B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC98, &qword_2491FFCC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2491329B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2491329E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

void sub_24913AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24913AE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24913B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

void sub_24913F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24913F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24913FB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249140214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DNDSStringFromUILockState(uint64_t a1)
{
  v1 = @"<invalid>";
  if (a1 == 1)
  {
    v1 = @"UI unlocked";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"UI locked";
  }
}

void sub_249141D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249141EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2491451B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_S_s0_s8_s16_S_s24_s32_s40_s48_S_s56_s64_s72_s80_s88_s96_S_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176_s184_s192_S_s200_s208_S_s216_s224_s232_s240_s248_s256_S_s264_S_s272_s280_s288_s296_s304_s312_s320_S_s328_s336_s344_s352(void *a1, id *a2)
{
  __copy_constructor_8_8_s0_s8_s16(a1, a2);
  __copy_constructor_8_8_s0_s8_s16_s24(a1 + 3, a2 + 3);
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40(a1 + 7, a2 + 7);
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_s56_s64_s72_s80_s88(a1 + 13, a2 + 13);
  a1[25] = a2[25];
  a1[26] = a2[26];
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40(a1 + 27, a2 + 27);
  a1[33] = a2[33];
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48(a1 + 34, a2 + 34);

  return __copy_constructor_8_8_s0_s8_s16_s24(a1 + 41, a2 + 41);
}

id __copy_constructor_8_8_s0_s8_s16(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  result = a2[2];
  a1[2] = result;
  return result;
}

id __copy_constructor_8_8_s0_s8_s16_s24(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  result = a2[3];
  a1[3] = result;
  return result;
}

id __copy_constructor_8_8_s0_s8_s16_s24_s32_s40(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  result = a2[5];
  a1[5] = result;
  return result;
}

id __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_s56_s64_s72_s80_s88(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  result = a2[11];
  a1[11] = result;
  return result;
}

id __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  result = a2[6];
  a1[6] = result;
  return result;
}

void sub_2491468DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DNDOverrideSettingToString(uint64_t a1)
{
  v1 = @"default";
  if (!a1)
  {
    v1 = @"NO";
  }

  if (a1 == 1)
  {
    return @"YES";
  }

  else
  {
    return v1;
  }
}

void sub_2491495D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24914B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

__CFString *DNDStringFromRegionState(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid(%ld)>", a1];
  }

  else
  {
    v2 = off_278F8A878[a1];
  }

  return v2;
}

__CFString *DNDSStringFromLostModeState(uint64_t a1)
{
  v1 = @"<invalid>";
  if (a1 == 1)
  {
    v1 = @"Active";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Inactive";
  }
}

void sub_249157608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249160990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *currentDevicePlatformString()
{
  v0 = [MEMORY[0x277D058F8] currentDevice];
  v1 = [v0 deviceClass];
  v2 = @"unknown";
  if (v1 == 3)
  {
    v2 = @"ipados";
  }

  if (v1 == 1)
  {
    v3 = @"iphoneos";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

unint64_t DNDResolvedPreventAutoReplySetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

uint64_t DNDResolvedModesCanImpactAvailabilitySetting(uint64_t result)
{
  if (!result)
  {
    return 2;
  }

  return result;
}

void *fmlMeDeviceChangedNotificationCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 meDeviceChanged];
  }

  return result;
}

void *fmlDevicesChangedNotificationCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 devicesChanged];
  }

  return result;
}

void sub_24916AB68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24916B304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

BOOL DNDGrantedUserNotificationsAuthorizationForBundleIdentifier(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = MEMORY[0x277D77F68];
  v2 = a1;
  v3 = [v1 currentNotificationSettingsCenter];
  v4 = [v3 notificationSourceWithIdentifier:v2];

  v5 = [v4 sourceSettings];
  v6 = [v5 notificationSettings];
  v7 = [v6 authorizationStatus] == 2;

  return v7;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249172858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2491729D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DNDSyncStateChanged(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = DNDSLogLegacyAssertionSync;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "NPS has sent notification, name=%{public}@", &v7, 0xCu);
  }

  return [a2 _updateForReason:0];
}

uint64_t DNDAssertionStateChanged(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = DNDSLogLegacyAssertionSync;
  if (os_log_type_enabled(DNDSLogLegacyAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "NPS has sent notification, name=%{public}@", &v7, 0xCu);
  }

  return [a2 _updateGizmoAssertionSync];
}

void sub_249176500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2491766F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *DNDSModeConfigurationsMinimumRequiredVersionForConfigurationVersion(void *a1)
{
  if ([a1 integerValue] >= 4)
  {
    return &unk_285C53520;
  }

  else
  {
    return &unk_285C53508;
  }
}

void DNDDrivingTriggerObserverCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DNDSLogDrivingTrigger;
    if (os_log_type_enabled(DNDSLogDrivingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Requestig driving trigger refresh due to CarKit preferences notification", v4, 2u);
    }

    [v2 refresh];
  }
}

__CFString *DNDBMDoNotDisturbWhileDrivingReasonToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"unspecified";
  }

  else
  {
    return off_278F8AE38[a1];
  }
}

void DNDEffectiveOverridesChanged(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v3 _updateScheduleSettingsWithDate:v4];
}

void sub_24917CA28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_24917EB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249181204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2491815F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DNDSMigrateLegacySettings()
{
  v53 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CBEBC0] dnds_legacySettingsFileURL];
  v2 = [v1 path];
  v3 = [v0 fileExistsAtPath:v2];

  if (!v3)
  {
    goto LABEL_46;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v1];
  v50 = 0;
  v5 = [DNDSSettingsRecord recordWithEncodedInfo:v4 error:&v50];
  v6 = v50;
  v7 = v6;
  if (!v5)
  {
    v19 = os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        DNDSMigrateLegacySettings_cold_2();
      }

      _DNDSRequestRadar(@"Error loading legacy settings", v7, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLegacySettingsMigration.m", 68);
    }

    else if (v19)
    {
      DNDSMigrateLegacySettings_cold_3();
    }

    goto LABEL_21;
  }

  v41 = v6;
  v8 = [MEMORY[0x277CBEBC0] dnds_settingsBackingStoreFileURL];
  v9 = [DNDSSettingsRecord backingStoreWithFileURL:v8];
  v10 = [v9 readRecordWithError:0];
  v11 = [v10 scheduleSettings];
  if (v11)
  {
    v12 = [v5 mutableCopy];
    [v12 setScheduleSettings:v11];

    v5 = v12;
  }

  v49 = 0;
  v13 = [v9 writeRecord:v5 error:&v49];
  v14 = v49;
  if (!v13)
  {
    if (os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_ERROR))
    {
      DNDSMigrateLegacySettings_cold_1();
    }

    _DNDSRequestRadar(@"Error writing migrated settings", v14, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLegacySettingsMigration.m", 63);
    goto LABEL_20;
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
      goto LABEL_20;
    }

    v15 = DNDSLogDataMigrator;
    if (!os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v16 = "Successfully wrote migrated settings";
    v17 = v15;
    v18 = 2;
    goto LABEL_16;
  }

  v20 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v14;
    v16 = "Error writing migrated settings, but error can be ignored; error=%{public}@";
    v17 = v20;
    v18 = 12;
LABEL_16:
    _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }

LABEL_20:

  v7 = v41;
LABEL_21:
  v21 = [v4 bs_safeObjectForKey:@"overrideStatus" ofType:objc_opt_class()];
  v22 = [v21 integerValue];
  if (v22)
  {
    v23 = v22;
    v24 = [MEMORY[0x277CBEBC0] dnds_localAssertionBackingStoreFileURL];
    v25 = [v24 path];
    v26 = [v0 fileExistsAtPath:v25];

    if ((v26 & 1) == 0)
    {
      v27 = DNDSLogDataMigrator;
      if (os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Legacy override status present with no pre-existing assertion store, will create", buf, 2u);
      }

      v28 = [v4 bs_safeObjectForKey:@"overrideStatusLastCalculatedTime" ofType:objc_opt_class()];
      [v28 timeIntervalSinceNow];
      if (v29 >= 0.0)
      {
        if (os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_ERROR))
        {
          DNDSMigrateLegacySettings_cold_4();
        }
      }

      else
      {
        v42 = v7;
        v40 = objc_alloc_init(DNDSClientDetailsProvider);
        v30 = [[DNDSModeAssertionManager alloc] initWithBackingStoreURL:v24 clientDetailsProvider:v40];
        v31 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.legacy-migration" deviceIdentifier:0];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __DNDSMigrateLegacySettings_block_invoke;
        v45[3] = &unk_278F8B298;
        v48 = v23;
        v39 = v31;
        v46 = v39;
        v47 = v28;
        v44 = 0;
        v32 = [(DNDSModeAssertionManager *)v30 updateModeAssertionsWithContextHandler:v45 error:&v44];
        v33 = v44;
        v34 = DNDSLogDataMigrator;
        if (v32)
        {
          if (os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Successfully wrote migrated assertions", buf, 2u);
          }
        }

        else
        {
          if (os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_ERROR))
          {
            DNDSMigrateLegacySettings_cold_5();
          }

          _DNDSRequestRadar(@"Error writing migrated assertions", v33, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLegacySettingsMigration.m", 109);
        }

        v7 = v42;
      }
    }
  }

  v43 = 0;
  v35 = [v0 removeItemAtURL:v1 error:&v43];
  v36 = v43;
  v37 = DNDSLogDataMigrator;
  v38 = os_log_type_enabled(DNDSLogDataMigrator, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "Successfully removed legacy settings", buf, 2u);
    }
  }

  else
  {
    if (v38)
    {
      *buf = 138543362;
      v52 = v36;
      _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "Error removing legacy settings, will request radar: error=%{public}@", buf, 0xCu);
    }

    _DNDSRequestRadar(@"Error removing legacy settings", v36, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLegacySettingsMigration.m", 123);
  }

LABEL_46:
}

uint64_t __DNDSMigrateLegacySettings_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (a1[6] == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277D05A40]);
    [v4 setIdentifier:@"legacy-toggle"];
    v5 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
    [v4 setLifetime:v5];

    [v4 setReason:1];
    v6 = [v3 takeAssertionWithDetails:v4 source:a1[4] startDate:a1[5]];
  }

  else
  {
    v4 = +[DNDSModeAssertionInvalidationPredicate predicateForAnyAssertion];
    v7 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:a1[5] source:a1[4] reason:2];
    v8 = [v3 invalidateAssertionsForRequest:v7];
  }

  return 1;
}

void sub_249186DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BMUserFocusModeComputedUpdateReasonForStateUpdateReason(unint64_t a1)
{
  if (a1 > 6)
  {
    return 1;
  }

  else
  {
    return dword_2491FFB10[a1];
  }
}

unint64_t BMUserFocusModeComputedUpdateSourceForStateUpdateSource(unint64_t result)
{
  if (result >= 4)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t BMUserFocusModeComputedSemanticTypeForDNDModeSemanticType(uint64_t a1)
{
  if ((a1 + 1) < 0xB)
  {
    return (a1 + 2);
  }

  else
  {
    return 0;
  }
}

__CFString *DNDSStringFromPairedDeviceClass(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<unhandled>";
  }

  else
  {
    return off_278F8B2E0[a1];
  }
}

__CFString *DNDSStringFromSyncServiceType(uint64_t a1)
{
  v1 = @"<unhandled>";
  if (a1 == 2)
  {
    v1 = @"cloud";
  }

  if (a1 == 1)
  {
    return @"local";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

__CFString *DNDBMSleepModeChangeReasonToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"unspecified";
  }

  else
  {
    return off_278F8B3A0[a1];
  }
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24918EB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2491910F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL DNDSisIOS14EraOSFromOperatingSystemVersionAndDeviceClass(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if (*a1 == 14)
    {
      return 1;
    }
  }

  else
  {
    if (a2 != 3)
    {
      return a2 == 2 && *a1 == 10 && a1[1] == 18;
    }

    if (*a1 == 7)
    {
      return 1;
    }
  }

  return 0;
}

BOOL DNDSsupportsSilenceListsSFromOperatingSystemVersionAndDeviceClass(uint64_t *a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      return a2 == 4 && *a1 > 0;
    }

    if (*a1 > 8)
    {
      return 1;
    }
  }

  else
  {
    if (a2 != 1)
    {
      return a2 == 2 && *a1 > 12;
    }

    if (*a1 > 15)
    {
      return 1;
    }
  }

  return 0;
}

void sub_2491997E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24919E988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _DNDSSysdiagnoseDataProviders(uint64_t a1)
{
  if (_DNDSSysdiagnoseDataProviders_onceToken != -1)
  {
    _DNDSSysdiagnoseDataProviders_cold_1();
  }

  v2 = _DNDSSysdiagnoseDataProviders_sysdiagnoseDataProviders;

  return v2;
}

void DNDSRegisterSysdiagnoseDataProvider(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_dataProvidersLock);
  v3 = _DNDSSysdiagnoseDataProviders(v2);
  v4 = [v3 objectForKey:v1];
  v5 = v4;
  if (v4)
  {
    [v4 unsignedLongValue];
    os_state_remove_handler();
  }

  objc_initWeak(&location, v1);
  v7 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v8, &location);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{os_state_add_handler(), v7, 3221225472, __DNDSRegisterSysdiagnoseDataProvider_block_invoke, &unk_278F8B718}];
  [v3 setObject:v6 forKey:v1];

  os_unfair_lock_unlock(&_dataProvidersLock);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_24919F558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_DWORD *__DNDSRegisterSysdiagnoseDataProvider_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      atomic_fetch_add(&_sysdiagnoseInProgress, 1u);
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = [v6 sysdiagnoseDataIdentifier];
      v9 = DNDSLogSysdiagnose;
      if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v8;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Capturing state from %{public}@; date=%{public}@", buf, 0x16u);
      }

      v10 = [v6 sysdiagnoseDataForDate:v7 redacted:DNDSRedactSysdiagnose()];
      v11 = DNDSLogSysdiagnose;
      if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v8;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Packing sysdiagnose state data from %{public}@...", buf, 0xCu);
      }

      v22 = 0;
      v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v22];
      v13 = v22;
      v14 = [v12 length];
      if (v12)
      {
        v15 = v14;
        if ((v14 + 200) <= 0x8000)
        {
          v16 = malloc_type_calloc(1uLL, v14 + 200, 0x1000040BEF03554uLL);
          v17 = [v6 sysdiagnoseDataIdentifier];
          [v17 cStringUsingEncoding:1];
          __strlcpy_chk();

          *v16 = 1;
          v16[1] = v15;
          [v12 getBytes:v16 + 50 length:v15];
          v18 = DNDSLogSysdiagnose;
          if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v24 = v8;
            _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Sysdiagnose captured from %{public}@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        v20 = DNDSLogSysdiagnose;
        if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_ERROR))
        {
          __DNDSRegisterSysdiagnoseDataProvider_block_invoke_cold_1(v8, v20);
        }
      }

      else
      {
        v19 = DNDSLogSysdiagnose;
        if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_ERROR))
        {
          __DNDSRegisterSysdiagnoseDataProvider_block_invoke_cold_2(v8, v13, v19);
        }
      }

      v16 = 0;
LABEL_18:
      atomic_fetch_add(&_sysdiagnoseInProgress, 0xFFFFFFFF);

      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:
  objc_autoreleasePoolPop(v4);
  return v16;
}

BOOL DNDSRedactSysdiagnose()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DNDSAllowUnredactedSysdiagnose"];

  return ((v1 | os_variant_has_internal_diagnostics()) & 1) == 0;
}

void DNDSUnregisterSysdiagnoseDataProvider(void *a1)
{
  v5 = a1;
  os_unfair_lock_lock(&_dataProvidersLock);
  v2 = _DNDSSysdiagnoseDataProviders(v1);
  v3 = [v2 objectForKey:v5];
  v4 = v3;
  if (v3)
  {
    [v3 unsignedLongValue];
    os_state_remove_handler();
    [v2 removeObjectForKey:v5];
  }

  os_unfair_lock_unlock(&_dataProvidersLock);
}

id DNDSCollectSysdiagnoseState(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&_dataProvidersLock);
  v3 = _DNDSSysdiagnoseDataProviders(v2);
  os_unfair_lock_unlock(&_dataProvidersLock);
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138543362;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 sysdiagnoseDataIdentifier];
        v13 = DNDSLogSysdiagnose;
        if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v16;
          v22 = v12;
          _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Capturing statedump from %{public}@", buf, 0xCu);
        }

        v14 = [v11 sysdiagnoseDataForDate:v1 redacted:DNDSRedactSysdiagnose()];
        [v4 setObject:v14 forKeyedSubscript:v12];
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  return v4;
}

_BYTE *OUTLINED_FUNCTION_0_3(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void DNDSRegisterLogging()
{
  DNDRegisterLogging();
  if (DNDSRegisterLogging_onceToken != -1)
  {
    DNDSRegisterLogging_cold_1();
  }
}

uint64_t __DNDSRegisterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.donotdisturb", "ServerGeneral");
  v1 = DNDSLogGeneral;
  DNDSLogGeneral = v0;

  v2 = os_log_create("com.apple.donotdisturb", "Resolver");
  v3 = DNDSLogResolver;
  DNDSLogResolver = v2;

  v4 = os_log_create("com.apple.donotdisturb", "ServiceProvider");
  v5 = DNDSLogServiceProvider;
  DNDSLogServiceProvider = v4;

  v6 = os_log_create("com.apple.donotdisturb", "AppConfiguration");
  v7 = DNDSLogAppConfigurationServiceProvider;
  DNDSLogAppConfigurationServiceProvider = v6;

  v8 = os_log_create("com.apple.donotdisturb", "AppFocusConfigurationTask");
  v9 = DNDSLogAppFocusConfigurationTask;
  DNDSLogAppFocusConfigurationTask = v8;

  v10 = os_log_create("com.apple.donotdisturb", "AppFocusConfiguration");
  v11 = DNDSLogAppFocusConfiguration;
  DNDSLogAppFocusConfiguration = v10;

  v12 = os_log_create("com.apple.donotdisturb", "SystemFocusConfiguration");
  v13 = DNDSLogSystemFocusConfiguration;
  DNDSLogSystemFocusConfiguration = v12;

  v14 = os_log_create("com.apple.donotdisturb", "AppSpecificSettingsManager");
  v15 = DNDSLogAppSpecificSettingsManager;
  DNDSLogAppSpecificSettingsManager = v14;

  v16 = os_log_create("com.apple.donotdisturb", "AvailabilityProvider");
  v17 = DNDSLogAvailabilityProvider;
  DNDSLogAvailabilityProvider = v16;

  v18 = os_log_create("com.apple.donotdisturb", "StateProvider");
  v19 = DNDSLogStateProvider;
  DNDSLogStateProvider = v18;

  v20 = os_log_create("com.apple.donotdisturb", "AssertionManager");
  v21 = DNDSLogAssertionManager;
  DNDSLogAssertionManager = v20;

  v22 = os_log_create("com.apple.donotdisturb", "AssertionStore");
  v23 = DNDSLogAssertionStore;
  DNDSLogAssertionStore = v22;

  v24 = os_log_create("com.apple.donotdisturb", "IDSTransport");
  v25 = DNDSLogIDSTransport;
  DNDSLogIDSTransport = v24;

  v26 = os_log_create("com.apple.donotdisturb", "Schedule");
  v27 = DNDSLogSchedule;
  DNDSLogSchedule = v26;

  v28 = os_log_create("com.apple.donotdisturb", "AppForegroundTrigger");
  v29 = DNDSLogAppForegroundTrigger;
  DNDSLogAppForegroundTrigger = v28;

  v30 = os_log_create("com.apple.donotdisturb", "BiomeDonation");
  v31 = DNDSLogBiomeDonation;
  DNDSLogBiomeDonation = v30;

  v32 = os_log_create("com.apple.donotdisturb", "DrivingTrigger");
  v33 = DNDSLogDrivingTrigger;
  DNDSLogDrivingTrigger = v32;

  v34 = os_log_create("com.apple.donotdisturb", "MindfulnessTrigger");
  v35 = DNDSLogMindfulnessTrigger;
  DNDSLogMindfulnessTrigger = v34;

  v36 = os_log_create("com.apple.donotdisturb", "GamingTrigger");
  v37 = DNDSLogGamingTrigger;
  DNDSLogGamingTrigger = v36;

  v38 = os_log_create("com.apple.donotdisturb", "HearingTestTrigger");
  v39 = DNDSLogHearingTestTrigger;
  DNDSLogHearingTestTrigger = v38;

  v40 = os_log_create("com.apple.donotdisturb", "SleepingTrigger");
  v41 = DNDSLogSleepingTrigger;
  DNDSLogSleepingTrigger = v40;

  v42 = os_log_create("com.apple.donotdisturb", "SmartTrigger");
  v43 = DNDSLogSmartTrigger;
  DNDSLogSmartTrigger = v42;

  v44 = os_log_create("com.apple.donotdisturb", "WorkoutTrigger");
  v45 = DNDSLogWorkoutTrigger;
  DNDSLogWorkoutTrigger = v44;

  v46 = os_log_create("com.apple.donotdisturb", "Settings");
  v47 = DNDSLogSettings;
  DNDSLogSettings = v46;

  v48 = os_log_create("com.apple.donotdisturb", "AuxiliaryState");
  v49 = DNDSLogAuxiliaryState;
  DNDSLogAuxiliaryState = v48;

  v50 = os_log_create("com.apple.donotdisturb", "SystemState");
  v51 = DNDSLogSystemState;
  DNDSLogSystemState = v50;

  v52 = os_log_create("com.apple.donotdisturb", "MeDeviceService");
  v53 = DNDSLogMeDeviceService;
  DNDSLogMeDeviceService = v52;

  v54 = os_log_create("com.apple.donotdisturb", "LegacyAssertionSync");
  v55 = DNDSLogLegacyAssertionSync;
  DNDSLogLegacyAssertionSync = v54;

  v56 = os_log_create("com.apple.donotdisturb", "LegacySettingsSync");
  v57 = DNDSLogLegacySettingsSync;
  DNDSLogLegacySettingsSync = v56;

  v58 = os_log_create("com.apple.donotdisturb", "ModernAssertionSync");
  v59 = DNDSLogModernAssertionSync;
  DNDSLogModernAssertionSync = v58;

  v60 = os_log_create("com.apple.donotdisturb", "PairedDeviceState");
  v61 = DNDSLogPairedDeviceState;
  DNDSLogPairedDeviceState = v60;

  v62 = os_log_create("com.apple.donotdisturb", "DateIntervalLifetimeMonitor");
  v63 = DNDSLogDateIntervalLifetimeMonitor;
  DNDSLogDateIntervalLifetimeMonitor = v62;

  v64 = os_log_create("com.apple.donotdisturb", "LocationLifetimeMonitor");
  v65 = DNDSLogLocationLifetimeMonitor;
  DNDSLogLocationLifetimeMonitor = v64;

  v66 = os_log_create("com.apple.donotdisturb", "CalendarEventLifetimeMonitor");
  v67 = DNDSLogCalendarEventLifetimeMonitor;
  DNDSLogCalendarEventLifetimeMonitor = v66;

  v68 = os_log_create("com.apple.donotdisturb", "ScheduleLifetimeMonitor");
  v69 = DNDSLogScheduleLifetimeMonitor;
  DNDSLogScheduleLifetimeMonitor = v68;

  v70 = os_log_create("com.apple.donotdisturb", "DefaultLifetimeMonitor");
  v71 = DNDSLogDefaultLifetimeMonitor;
  DNDSLogDefaultLifetimeMonitor = v70;

  v72 = os_log_create("com.apple.donotdisturb", "DataMigrator");
  v73 = DNDSLogDataMigrator;
  DNDSLogDataMigrator = v72;

  v74 = os_log_create("com.apple.donotdisturb", "Sysdiagnose");
  v75 = DNDSLogSysdiagnose;
  DNDSLogSysdiagnose = v74;

  v76 = os_log_create("com.apple.donotdisturb", "Metrics");
  v77 = DNDSLogMetrics;
  DNDSLogMetrics = v76;

  v78 = os_log_create("com.apple.donotdisturb", "Keybag");
  v79 = DNDSLogKeybag;
  DNDSLogKeybag = v78;

  v80 = os_log_create("com.apple.donotdisturb", "CloudSync");
  v81 = DNDSLogCloudSync;
  DNDSLogCloudSync = v80;

  v82 = os_log_create("com.apple.donotdisturb", "ModeConfigurations");
  v83 = DNDSLogModeConfigurations;
  DNDSLogModeConfigurations = v82;

  v84 = os_log_create("com.apple.donotdisturb", "GlobalConfiguration");
  v85 = DNDSLogGlobalConfiguration;
  DNDSLogGlobalConfiguration = v84;

  v86 = os_log_create("com.apple.donotdisturb", "IDSSyncEngine");
  v87 = DNDSLogIDSSyncEngine;
  DNDSLogIDSSyncEngine = v86;

  v88 = os_log_create("com.apple.donotdisturb", "XPCEventPublisher");
  v89 = DNDSLogXPCEventPublisher;
  DNDSLogXPCEventPublisher = v88;

  return MEMORY[0x2821F96F8](v88, v89);
}

void sub_2491A499C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2491A9D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2491AA638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491AAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2491AB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2491ABB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491AC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491ACDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491AD850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2491ADFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2491AE950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_2491B8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2491B8718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491B89B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491B8B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491B8E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491B90C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2491B935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___intersect_clientIdentifier_modeIdentifier_priority_block_invoke()
{
  v6[29] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.private.SpringBoard.focus.intents";
  v5[1] = @"com.apple.donotdisturb.control-center.module";
  v6[0] = &unk_285C536E0;
  v6[1] = &unk_285C53708;
  v5[2] = @"com.apple.donotdisturb.siri.assistant";
  v5[3] = @"com.apple.donotdisturb.preferences";
  v6[2] = &unk_285C53730;
  v6[3] = &unk_285C53758;
  v5[4] = @"com.apple.siri.Settings";
  v5[5] = @"com.apple.springboard.donotdisturb.hid";
  v6[4] = &unk_285C53780;
  v6[5] = &unk_285C537A8;
  v5[6] = @"com.apple.donotdisturb.DoNotDisturbAppIntents";
  v5[7] = @"com.apple.DoNotDisturb.Intents";
  v6[6] = &unk_285C537D0;
  v6[7] = &unk_285C537F8;
  v5[8] = @"com.apple.donotdisturb.private.intents";
  v5[9] = @"com.apple.donotdisturb.private.intents.user-interactive";
  v6[8] = &unk_285C53820;
  v6[9] = &unk_285C53848;
  v5[10] = @"com.apple.private.dndtool";
  v5[11] = @"com.apple.private.dndtool.user-requested";
  v6[10] = &unk_285C53870;
  v6[11] = &unk_285C53898;
  v5[12] = @"com.apple.carkitd.assertion-service";
  v5[13] = @"com.apple.donotdisturb.private.driving-trigger";
  v6[12] = &unk_285C538C0;
  v6[13] = &unk_285C538E8;
  v5[14] = @"com.apple.private.Carousel.school-mode.DND.state";
  v5[15] = @"com.apple.donotdisturb.private.app-launch";
  v6[14] = &unk_285C53910;
  v6[15] = &unk_285C53938;
  v5[16] = @"com.apple.donotdisturb.private.gaming-trigger";
  v5[17] = @"com.apple.donotdisturb.private.hearing-trigger";
  v6[16] = &unk_285C53960;
  v6[17] = &unk_285C53988;
  v5[18] = @"com.apple.donotdisturb.private.mindfulness-trigger";
  v5[19] = @"com.apple.donotdisturb.private.workout-trigger";
  v6[18] = &unk_285C539B0;
  v6[19] = &unk_285C539D8;
  v5[20] = @"com.apple.HealthDaemon.assertion-service";
  v5[21] = @"com.apple.sleep.sleep-mode";
  v6[20] = &unk_285C53A00;
  v6[21] = &unk_285C53A28;
  v5[22] = @"com.apple.donotdisturb.private.sleeping-trigger";
  v5[23] = @"com.apple.sleep.sleep-mode-legacy";
  v6[22] = &unk_285C53A50;
  v6[23] = &unk_285C53A78;
  v6[24] = &unk_285C53AA0;
  v5[24] = @"com.apple.mobiletimer.bedtime-mode";
  v5[25] = @"com.apple.donotdisturb.private.schedule";
  v3[0] = *MEMORY[0x277D05868];
  v3[1] = @"*";
  v4[0] = &unk_285C53610;
  v4[1] = &unk_285C53628;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v6[25] = v0;
  v6[26] = &unk_285C53AC8;
  v5[26] = @"com.apple.donotdisturb.private.region";
  v5[27] = @"com.apple.donotdisturb.private.smart-trigger";
  v5[28] = @"*";
  v6[27] = &unk_285C53AF0;
  v6[28] = &unk_285C53B18;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:29];
  v2 = _intersect_clientIdentifier_modeIdentifier_priority_dict;
  _intersect_clientIdentifier_modeIdentifier_priority_dict = v1;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t DNDSPowerLogFocusUpdateReasonForDNDStateUpdateReason(uint64_t a1)
{
  v1 = 1;
  if (a1 == 5)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unint64_t DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType(unint64_t result)
{
  if (result >= 0xA)
  {
    return -1;
  }

  return result;
}

void DNDSPowerLogFocusStatusChangeEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v20[0] = a1;
  v19[0] = @"timestamp";
  v19[1] = @"Available";
  v11 = MEMORY[0x277CCABB0];
  v12 = a1;
  v13 = [v11 numberWithInteger:a2];
  v20[1] = v13;
  v19[2] = @"Source";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v20[2] = v14;
  v19[3] = @"Reason";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v20[3] = v15;
  v19[4] = @"SemanticType";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v20[4] = v16;
  v19[5] = @"ExtensionCount";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v20[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];

  PLLogRegisteredEvent();
}

void DNDSPowerLogFocusFilterPerformEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v17[0] = a1;
  v16[0] = @"timestamp";
  v16[1] = @"Source";
  v9 = MEMORY[0x277CCABB0];
  v10 = a1;
  v11 = [v9 numberWithInteger:a2];
  v17[1] = v11;
  v16[2] = @"Reason";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v17[2] = v12;
  v16[3] = @"SemanticType";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17[3] = v13;
  v16[4] = @"ExtensionCount";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v17[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  PLLogRegisteredEvent();
}

void sub_2491BC4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DNDSSyncEngineStateIsAvailable(unint64_t a1)
{
  v1 = HIDWORD(a1) & 1;
  if ((~a1 & 0x1010100) != 0)
  {
    LODWORD(v1) = 0;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t DNDSSyncEngineStateIsEnabled(uint64_t a1)
{
  if ((a1 & 0x10000000000) != 0)
  {
    return 1;
  }

  if ((~a1 & 0x1010100) != 0)
  {
    return 0;
  }

  if (a1)
  {
    return BYTE4(a1) & 1;
  }

  return 0;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id _DNDSContainingBundleIdentifier(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 containingBundleRecord];
    v4 = [v3 bundleIdentifier];

    v5 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_INFO, "Mapping extension bundle %@ to containing bundle %@.", &v7, 0x16u);
    }

    v2 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

void sub_2491CBB58(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2491CBCE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2491CBF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void _DNDSRequestRadar(void *a1, void *a2, int a3, void *a4, uint64_t a5)
{
  v55[10] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  if (os_variant_has_internal_content() && !DNDSIsSysdiagnoseBeingCaptured())
  {
    v40 = [MEMORY[0x277CBEAA8] date];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
    v41 = [v12 lastPathComponent];

    v13 = MEMORY[0x277CCACA8];
    if (v10)
    {
      v14 = [v10 domain];
      v15 = [v13 stringWithFormat:@" -- %@:%lu", v14, objc_msgSend(v10, "code")];
      v42 = [v13 stringWithFormat:@"[AUTO GENERATED] %@ (%@:%lu%@)", v9, v41, a5, v15];
    }

    else
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"[AUTO GENERATED] %@ (%@:%lu%@)", v9, v41, a5, &stru_285C26090];
    }

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Please describe what you were doing:\n\n\n--- Do not edit below this line ---\n\nError: %@\n\nOriginal title: %@", v10, v42];
    v16 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v16 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v17 = MEMORY[0x277CBEB38];
    v54[0] = @"Title";
    v54[1] = @"Description";
    v54[2] = @"Classification";
    v54[3] = @"ComponentID";
    v55[2] = @"Serious Bug";
    v55[3] = @"960036";
    v54[4] = @"ComponentName";
    v54[5] = @"ComponentVersion";
    v55[4] = @"Do Not Disturb (iOS)";
    v55[5] = @"New Bugs";
    v54[6] = @"Reproducibility";
    v54[7] = @"IncludeDevicePrefixInTitle";
    v55[0] = v42;
    v55[1] = v39;
    v55[6] = @"Not Applicable";
    v55[7] = @"1";
    v54[8] = @"TimeOfIssue";
    v18 = [v16 stringFromDate:v40];
    v55[8] = v18;
    v54[9] = @"DeviceClasses";
    if (a3)
    {
      v19 = @"iPhone,iPad,Watch,Mac";
    }

    else
    {
      v19 = &stru_285C26090;
    }

    v55[9] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:10];
    v21 = [v17 dictionaryWithDictionary:v20];

    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = ___DNDSRequestRadar_block_invoke;
    v43[3] = &unk_278F8BF78;
    v23 = v22;
    v44 = v23;
    [v21 bs_each:v43];
    v24 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v24 setScheme:@"tap-to-radar"];
    [v24 setHost:@"new"];
    [v24 setQueryItems:v23];
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v25 = getUNUserNotificationCenterClass_softClass;
    v53 = getUNUserNotificationCenterClass_softClass;
    if (!getUNUserNotificationCenterClass_softClass)
    {
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __getUNUserNotificationCenterClass_block_invoke;
      v48 = &unk_278F8BFA0;
      v49 = &v50;
      __getUNUserNotificationCenterClass_block_invoke(&v45);
      v25 = v51[3];
    }

    v26 = v25;
    _Block_object_dispose(&v50, 8);
    v27 = [[v25 alloc] initWithBundleIdentifier:@"com.apple.donotdisturb"];
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v28 = getUNMutableNotificationContentClass_softClass;
    v53 = getUNMutableNotificationContentClass_softClass;
    if (!getUNMutableNotificationContentClass_softClass)
    {
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __getUNMutableNotificationContentClass_block_invoke;
      v48 = &unk_278F8BFA0;
      v49 = &v50;
      __getUNMutableNotificationContentClass_block_invoke(&v45);
      v28 = v51[3];
    }

    v29 = v28;
    _Block_object_dispose(&v50, 8);
    v30 = objc_alloc_init(v28);
    [v30 setTitle:@"Focus Radar Request (internal)"];
    [v30 setBody:@"Focus encountered an unexpected state. Please file a Radar to help us diagnose this issue!"];
    [v30 setThreadIdentifier:@"com.apple.donotdisturbd"];
    [v30 setInterruptionLevel:1];
    v31 = [v24 URL];
    [v30 setDefaultActionURL:v31];

    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:36000.0];
    [v30 setExpirationDate:v32];

    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v33 = getUNNotificationIconClass_softClass;
    v53 = getUNNotificationIconClass_softClass;
    if (!getUNNotificationIconClass_softClass)
    {
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __getUNNotificationIconClass_block_invoke;
      v48 = &unk_278F8BFA0;
      v49 = &v50;
      __getUNNotificationIconClass_block_invoke(&v45);
      v33 = v51[3];
    }

    v34 = v33;
    _Block_object_dispose(&v50, 8);
    v35 = [v33 iconForApplicationIdentifier:@"com.apple.TapToRadar"];
    [v30 setIcon:v35];

    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v36 = getUNNotificationRequestClass_softClass;
    v53 = getUNNotificationRequestClass_softClass;
    if (!getUNNotificationRequestClass_softClass)
    {
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __getUNNotificationRequestClass_block_invoke;
      v48 = &unk_278F8BFA0;
      v49 = &v50;
      __getUNNotificationRequestClass_block_invoke(&v45);
      v36 = v51[3];
    }

    v37 = v36;
    _Block_object_dispose(&v50, 8);
    v38 = [v36 requestWithIdentifier:@"com.apple.donotdisturbd.blah" content:v30 trigger:0];
    [v27 addNotificationRequest:v38 withCompletionHandler:&__block_literal_global_38];
  }
}

void sub_2491D7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNUserNotificationCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUNUserNotificationCenterClass_block_invoke_cold_1();
    UserNotificationsLibrary();
  }
}

void UserNotificationsLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UserNotificationsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278F8BFC0;
    v3 = 0;
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUNMutableNotificationContentClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNMutableNotificationContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNMutableNotificationContentClass_block_invoke_cold_1();
    return __getUNNotificationIconClass_block_invoke(v3);
  }

  return result;
}

Class __getUNNotificationIconClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNNotificationIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNNotificationIconClass_block_invoke_cold_1();
    return __getUNNotificationRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getUNNotificationRequestClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNNotificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUNNotificationRequestClass_block_invoke_cold_1();
    return DNDSGetLifetimePhase(v3, v4, v5);
  }

  return result;
}

uint64_t DNDSGetLifetimePhase(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 compare:a2] == -1)
  {
    v7 = 0;
  }

  else if ([v5 compare:v6] == -1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

void sub_2491D7DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DNDSHandleLostModeStateChange(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D08F78];
  v3 = a2;
  v4 = [v2 sharedInstance];
  v5 = [v4 lostModeIsActive];

  v6 = v5;
  v7 = DNDSLogSystemState;
  if (os_log_type_enabled(DNDSLogSystemState, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = DNDSStringFromLostModeState(v6);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received new lost mode state: state=%@", &v10, 0xCu);
  }

  [v3 _setLostModeState:v6 error:0];
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2491E0920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DNDSRunServer(uint64_t a1, uint64_t a2)
{
  if (DNDSRunServer_onceToken != -1)
  {
    DNDSRunServer_cold_1();
  }

  return 0;
}

void __DNDSRunServer_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  DNDSRegisterLogging();
  DNDSRegisterSysdiagnose(v1);
  signal(15, 1);
  v2 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, 0);
  v3 = _block_invoke_sigterm_source;
  _block_invoke_sigterm_source = v2;

  dispatch_source_set_event_handler(_block_invoke_sigterm_source, &__block_literal_global_2);
  dispatch_activate(_block_invoke_sigterm_source);
  DNDSMigrateLegacySettings();
  v4 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Starting up...", v7, 2u);
  }

  v5 = objc_alloc_init(DNDSServer);
  v6 = server;
  server = v5;

  [server resume];
  objc_autoreleasePoolPop(v0);
}

uint64_t __DNDSRunServer_block_invoke_2()
{
  v0 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_24912E000, v0, OS_LOG_TYPE_DEFAULT, "Received SIGTERM", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_2491E4B74()
{
  v0 = sub_2491F3DB8();
  __swift_allocate_value_buffer(v0, qword_28137D140);
  __swift_project_value_buffer(v0, qword_28137D140);
  return sub_2491F3DA8();
}

uint64_t sub_2491E4BF4()
{
  if (qword_28137CFB8 != -1)
  {
    swift_once();
  }

  v0 = sub_2491F3DB8();

  return __swift_project_value_buffer(v0, qword_28137D140);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2491E4C90@<X0>(uint64_t a1@<X8>)
{
  if (qword_28137CFB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2491F3DB8();
  v3 = __swift_project_value_buffer(v2, qword_28137D140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

DNDSPlatformEligibility __swiftcall DNDSPlatformEligibility.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2491E4E00()
{
  if (MEMORY[0x277D0E358])
  {
    v2 = MEMORY[0x277D0E360] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x277D0E368] == 0)
  {
    return 0;
  }

  v26[12] = v0;
  v26[13] = v1;
  v5 = sub_2491F3D88();
  v26[1] = v26;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2491F3D48();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2491F3D68();
  MEMORY[0x28223BE20]();
  (*(v14 + 104))(v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0E2D0]);
  sub_2491F3D38();
  sub_2491F3D78();
  (*(v10 + 8))(v12, v9);
  v15 = sub_2491F3D28();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2491F3D58();
  v19 = (*(v16 + 88))(v18, v15);
  if (MEMORY[0x277D0DFB8] && v19 == *MEMORY[0x277D0DFB8])
  {
    if (qword_28137CFB8 != -1)
    {
      swift_once();
    }

    v20 = sub_2491F3DB8();
    __swift_project_value_buffer(v20, qword_28137D140);
    v21 = sub_2491F3D98();
    v22 = sub_2491F3E78();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Generative models unavailable.";
    goto LABEL_23;
  }

  if (MEMORY[0x277D0E270] && v19 == *MEMORY[0x277D0E270])
  {
    (*(v6 + 8))(v8, v5);
    return 1;
  }

  if (qword_28137CFB8 != -1)
  {
    swift_once();
  }

  v25 = sub_2491F3DB8();
  __swift_project_value_buffer(v25, qword_28137D140);
  v21 = sub_2491F3D98();
  v22 = sub_2491F3E68();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Received unknown generative models availability state";
LABEL_23:
    _os_log_impl(&dword_24912E000, v21, v22, v24, v23, 2u);
    MEMORY[0x24C1F3F30](v23, -1, -1);
  }

LABEL_24:

  (*(v6 + 8))(v8, v5);
  (*(v16 + 8))(v18, v15);
  return 0;
}

unint64_t type metadata accessor for DNDSPlatformEligibility()
{
  result = qword_27EEDFD38[0];
  if (!qword_27EEDFD38[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EEDFD38);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t DNDFMDevice.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_identifier);

  return v1;
}

uint64_t DNDFMDevice.deviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_deviceName);

  return v1;
}

id sub_2491E5480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_identifier];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v11[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_deviceName];
  *v13 = a3;
  v13[1] = a4;
  v11[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_isThisDevice] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_2491E5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_identifier];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v5[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_deviceName];
  *v13 = a3;
  v13[1] = a4;
  v5[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_isThisDevice] = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_2491E55A0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = sub_2491F3CC8();
  v6 = &v4[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_identifier];
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_2491F3CB8();
  v9 = &v4[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_deviceName];
  *v9 = v8;
  v9[1] = v10;
  v4[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_isThisDevice] = sub_2491F3CA8() & 1;
  v14.receiver = v4;
  v14.super_class = v2;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = sub_2491F3CD8();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_2491E5670(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2491F3CC8();
  v6 = &v2[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_identifier];
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_2491F3CB8();
  v9 = &v2[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_deviceName];
  *v9 = v8;
  v9[1] = v10;
  v2[OBJC_IVAR____TtC18DoNotDisturbServer11DNDFMDevice_isThisDevice] = sub_2491F3CA8() & 1;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = sub_2491F3CD8();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id DNDFMDevice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DNDFMDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2491E58C4()
{
  v0 = sub_2491F3DB8();
  __swift_allocate_value_buffer(v0, qword_28137D170);
  __swift_project_value_buffer(v0, qword_28137D170);
  return sub_2491F3DA8();
}

uint64_t sub_2491E5968@<X0>(uint64_t a1@<X8>)
{
  if (qword_28137CFD0 != -1)
  {
    swift_once();
  }

  v2 = sub_2491F3DB8();
  v3 = __swift_project_value_buffer(v2, qword_28137D170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2491E5A40()
{
  sub_2491F3F08();
  MEMORY[0x24C1F3040](0);
  return sub_2491F3F28();
}

uint64_t sub_2491E5A84(uint64_t a1)
{
  sub_2491F3F08();
  MEMORY[0x24C1F3040](0);
  return sub_2491F3F28();
}

uint64_t sub_2491E5BBC()
{
  v1 = (v0 + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_2491328A4(*v1, v1[1]);
  return v2;
}

void sub_2491E5C18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2491E5D44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2491E5DA4(v6, v7);
}

uint64_t sub_2491E5DA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2491E5DB4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_2491EAEF8;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_2491E5E54(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2491EAEC0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  sub_2491328A4(v3, v4);
  return v7(v6, v5);
}

uint64_t sub_2491E5F80()
{
  v0 = sub_2491F3C58();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2491F3C68();
  MEMORY[0x28223BE20]();
  (*(v1 + 104))(v3, *MEMORY[0x277D09060], v0);
  sub_2491F3C78();
  sub_2491F3D08();
  swift_allocObject();
  return sub_2491F3D18();
}

uint64_t sub_2491E60D0()
{
  v0 = sub_2491F3DB8();
  __swift_allocate_value_buffer(v0, qword_28137D158);
  v1 = __swift_project_value_buffer(v0, qword_28137D158);
  if (qword_28137CFD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28137D170);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2491E61BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2491F3DB8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2491E6210@<X0>(uint64_t a1@<X8>)
{
  if (qword_28137CFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_2491F3DB8();
  v3 = __swift_project_value_buffer(v2, qword_28137D158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2491E62B8()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  v1[4] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC98, &qword_2491FFCC0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2491E63DC, 0, 0);
}

uint64_t sub_2491E63DC()
{
  v0[10] = *(v0[2] + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_session);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_2491E6494;
  v2 = v0[9];

  return MEMORY[0x28215FB78](v2);
}

uint64_t sub_2491E6494()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2491E67D4;
  }

  else
  {

    v2 = sub_2491E65B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2491E65B0()
{
  v1 = v0[2];
  v19 = OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_preferenceChangesTask;
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_preferenceChangesTask])
  {

    sub_2491F3E58();

    v2 = v0[2];
  }

  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v17 = v4;
  v18 = v0[3];
  v9 = sub_2491F3E28();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v6 + 16))(v3, v4, v8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v6 + 32))(v12 + v10, v3, v8);
  *(v12 + v11) = v2;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v13 = v2;
  v14 = sub_2491E75B0(0, 0, v7, &unk_2491FFCD0, v12);
  (*(v6 + 8))(v17, v8);
  *&v1[v19] = v14;

  v15 = v0[1];

  return v15();
}

uint64_t sub_2491E67D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2491E68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2491F3CD8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCE8, &qword_2491FFEB8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_2491F3C98();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCF0, &qword_2491FFEC0);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCF8, &qword_2491FFEC8);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2491E6AD0, 0, 0);
}

uint64_t sub_2491E6AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC98, &qword_2491FFCC0);
  sub_2491F3E38();
  v1 = *MEMORY[0x277D09178];
  *(v0 + 168) = *MEMORY[0x277D091A0];
  *(v0 + 172) = v1;
  v2 = *MEMORY[0x277D09180];
  *(v0 + 176) = *MEMORY[0x277D09198];
  *(v0 + 180) = v2;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_2491E6BD0;
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_2491E6BD0()
{

  return MEMORY[0x2822009F8](sub_2491E6CCC, 0, 0);
}

uint64_t sub_2491E6CCC()
{
  v68 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    if (qword_28137CFC8 != -1)
    {
      swift_once();
    }

    v4 = sub_2491F3DB8();
    __swift_project_value_buffer(v4, qword_28137D158);
    v5 = sub_2491F3D98();
    v6 = sub_2491F3E88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24912E000, v5, v6, "Successfully startMonitoringPreferencesChange", v7, 2u);
      MEMORY[0x24C1F3F30](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 120);
    (*(v3 + 32))(v11, v1, v2);
    v12 = (*(v3 + 88))(v11, v2);
    if (v12 == v10)
    {
      v13 = *(v0 + 120);
      v14 = *(v0 + 96);
      (*(*(v0 + 112) + 96))(v13, *(v0 + 104));
      sub_2491EB03C(v13, v14);
      if (qword_28137CFC8 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 88);
      v16 = *(v0 + 96);
      v17 = sub_2491F3DB8();
      __swift_project_value_buffer(v17, qword_28137D158);
      sub_2491EB0AC(v16, v15, &qword_27EEDFCE8, &qword_2491FFEB8);
      v18 = sub_2491F3D98();
      v19 = sub_2491F3E88();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 88);
      if (v20)
      {
        v22 = *(v0 + 80);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v67 = v24;
        *v23 = 136315138;
        sub_2491EB0AC(v21, v22, &qword_27EEDFCE8, &qword_2491FFEB8);
        v25 = sub_2491F3DD8();
        v27 = v26;
        sub_2491EB114(v21, &qword_27EEDFCE8, &qword_2491FFEB8);
        v28 = sub_2491E9CF4(v25, v27, &v67);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_24912E000, v18, v19, "Preferences stream receive meDevice updated: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1F3F30](v24, -1, -1);
        MEMORY[0x24C1F3F30](v23, -1, -1);
      }

      else
      {

        sub_2491EB114(v21, &qword_27EEDFCE8, &qword_2491FFEB8);
      }

      v35 = *(v0 + 72);
      v36 = *(v0 + 32);
      v37 = *(v0 + 40);
      sub_2491EB0AC(*(v0 + 96), v35, &qword_27EEDFCE8, &qword_2491FFEB8);
      if ((*(v37 + 48))(v35, 1, v36) == 1)
      {
        v38 = *(v0 + 24);
        v39 = sub_2491EB114(*(v0 + 72), &qword_27EEDFCE8, &qword_2491FFEB8);
        v40 = (*((*MEMORY[0x277D85000] & *v38) + 0x78))(v39);
        if (v40)
        {
          v42 = v40;
          v43 = v41;
          v40(0);
          sub_2491E5DA4(v42, v43);
        }

        v44 = *(v0 + 96);
      }

      else
      {
        v52 = *(v0 + 24);
        v53 = (*(*(v0 + 40) + 32))(*(v0 + 56), *(v0 + 72), *(v0 + 32));
        v54 = (*((*MEMORY[0x277D85000] & *v52) + 0x78))(v53);
        if (v54)
        {
          v56 = v54;
          v57 = v55;
          v59 = *(v0 + 48);
          v58 = *(v0 + 56);
          v60 = *(v0 + 32);
          v61 = *(v0 + 40);
          type metadata accessor for DNDFMDevice();
          (*(v61 + 16))(v59, v58, v60);
          v62 = sub_2491E55A0(v59);
          v56();

          sub_2491E5DA4(v56, v57);
        }

        v63 = *(v0 + 96);
        (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
        v44 = v63;
      }

      sub_2491EB114(v44, &qword_27EEDFCE8, &qword_2491FFEB8);
    }

    else if (v12 == *(v0 + 172) || v12 == *(v0 + 176) || v12 == *(v0 + 180))
    {
      if (qword_28137CFC8 != -1)
      {
        swift_once();
      }

      v31 = sub_2491F3DB8();
      __swift_project_value_buffer(v31, qword_28137D158);
      v32 = sub_2491F3D98();
      v33 = sub_2491F3E88();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24912E000, v32, v33, "Preferences stream, update received but meDevice did not change", v34, 2u);
        MEMORY[0x24C1F3F30](v34, -1, -1);
      }
    }

    else
    {
      if (qword_28137CFC8 != -1)
      {
        swift_once();
      }

      v45 = sub_2491F3DB8();
      __swift_project_value_buffer(v45, qword_28137D158);
      v46 = sub_2491F3D98();
      v47 = sub_2491F3E78();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_24912E000, v46, v47, "Unknown update type, meDevice did not change", v48, 2u);
        MEMORY[0x24C1F3F30](v48, -1, -1);
      }

      v50 = *(v0 + 112);
      v49 = *(v0 + 120);
      v51 = *(v0 + 104);

      (*(v50 + 8))(v49, v51);
    }

    v64 = swift_task_alloc();
    *(v0 + 160) = v64;
    *v64 = v0;
    v64[1] = sub_2491E6BD0;
    v65 = *(v0 + 128);
    v66 = *(v0 + 136);

    return MEMORY[0x2822003E8](v65, 0, 0, v66);
  }
}

uint64_t sub_2491E74A4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC98, &qword_2491FFCC0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2491EB188;

  return sub_2491E68A8(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_2491E75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_2491EB0AC(a3, v24 - v9, &qword_27EEDFC90, &qword_2491FFCB8);
  v11 = sub_2491F3E28();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2491EB114(v10, &qword_27EEDFC90, &qword_2491FFCB8);
  }

  else
  {
    sub_2491F3E18();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2491F3E08();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2491F3DE8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2491EB114(a3, &qword_27EEDFC90, &qword_2491FFCB8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2491EB114(a3, &qword_27EEDFC90, &qword_2491FFCB8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2491E7A24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2491EB194;

  return sub_2491E62B8();
}

uint64_t sub_2491E7AEC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_preferenceChangesTask;
  if (*(v1 + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_preferenceChangesTask))
  {

    sub_2491F3E58();
  }

  *(v1 + v2) = 0;

  if (qword_28137CFC8 != -1)
  {
    swift_once();
  }

  v3 = sub_2491F3DB8();
  __swift_project_value_buffer(v3, qword_28137D158);
  v4 = sub_2491F3D98();
  v5 = sub_2491F3E88();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24912E000, v4, v5, "FindMyLocateSession: Successfully stopMonitoringPreferencesChange", v6, 2u);
    MEMORY[0x24C1F3F30](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2491E7DD0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2491E7E78;

  return sub_2491E7ACC();
}

uint64_t sub_2491E7E78()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_2491F3C48();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2491E7FFC()
{
  v1[3] = v0;
  v2 = sub_2491F3C88();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_2491F3CD8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2491E8148, 0, 0);
}

uint64_t sub_2491E8148()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_session;
  v0[14] = OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_session;
  v0[15] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2491E8208;
  v4 = v0[13];

  return MEMORY[0x28215FB40](v4, 1);
}

uint64_t sub_2491E8208()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2491E85D8;
  }

  else
  {

    v2 = sub_2491E8324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2491E8324()
{
  v30 = v0;
  if (qword_28137CFC8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_2491F3DB8();
  __swift_project_value_buffer(v5, qword_28137D158);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_2491F3D98();
  v8 = sub_2491F3E88();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v13 = 136315138;
    sub_2491EA29C();
    v26 = sub_2491F3EB8();
    v28 = v6;
    v15 = v14;
    v16 = v11;
    v17 = *(v12 + 8);
    v17(v10, v16);
    v18 = sub_2491E9CF4(v26, v15, &v29);
    v6 = v28;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24912E000, v7, v8, "Successfully got active location sharing device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1F3F30](v27, -1, -1);
    MEMORY[0x24C1F3F30](v13, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = *(v12 + 8);
    v17(v10, v19);
  }

  v20 = v0[13];
  v21 = v0[11];
  v22 = v0[7];
  type metadata accessor for DNDFMDevice();
  v6(v21, v20, v22);
  v23 = sub_2491E55A0(v21);
  v17(v20, v22);

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_2491E85D8()
{
  v1 = *(v0 + 136);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCB0, &qword_2491FFCE8);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) == *MEMORY[0x277D090B0])
    {

      if (qword_28137CFC8 != -1)
      {
        swift_once();
      }

      v3 = sub_2491F3DB8();
      *(v0 + 144) = __swift_project_value_buffer(v3, qword_28137D158);
      v4 = sub_2491F3D98();
      v5 = sub_2491F3E88();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_24912E000, v4, v5, "Error getting cached location sharing device, trying not cached.", v6, 2u);
        MEMORY[0x24C1F3F30](v6, -1, -1);
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 24);

      *(v0 + 152) = *(v8 + v7);

      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_2491E89A8;
      v10 = *(v0 + 80);

      return MEMORY[0x28215FB40](v10, 0);
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  if (qword_28137CFC8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 136);
  v12 = sub_2491F3DB8();
  __swift_project_value_buffer(v12, qword_28137D158);
  v13 = v11;
  v14 = sub_2491F3D98();
  v15 = sub_2491F3E78();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_2491F3C48();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_24912E000, v14, v15, "Error getting active location sharing device: %{public}@", v16, 0xCu);
    sub_2491EB114(v17, &qword_27EEDFCB8, &qword_2491FFCF0);
    MEMORY[0x24C1F3F30](v17, -1, -1);
    MEMORY[0x24C1F3F30](v16, -1, -1);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2491E89A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2491E8D40;
  }

  else
  {
    v2 = sub_2491E8ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2491E8ADC()
{
  v25 = v0;
  v1 = *(*(v0 + 64) + 16);
  v1(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  v2 = sub_2491F3D98();
  v3 = sub_2491F3E88();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v8 = 136315138;
    sub_2491EA29C();
    v21 = sub_2491F3EB8();
    v23 = v1;
    v10 = v9;
    v11 = v7;
    v12 = *(v6 + 8);
    v12(v5, v11);
    v13 = sub_2491E9CF4(v21, v10, &v24);
    v1 = v23;

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24912E000, v2, v3, "Successfully got non-cached active location sharing device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1F3F30](v22, -1, -1);
    MEMORY[0x24C1F3F30](v8, -1, -1);
  }

  else
  {

    v14 = v7;
    v12 = *(v6 + 8);
    v12(v5, v14);
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 56);
  type metadata accessor for DNDFMDevice();
  v1(v16, v15, v17);
  v18 = sub_2491E55A0(v16);
  v12(v15, v17);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_2491E8D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2491E8F64(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2491E900C;

  return sub_2491E7FFC();
}

uint64_t sub_2491E900C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2491F3C48();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_2491F3C58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2491F3C68();
  MEMORY[0x28223BE20]();
  v6 = &v1[OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_session;
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2);
  sub_2491F3C78();
  sub_2491F3D08();
  swift_allocObject();
  *&v1[v7] = sub_2491F3D18();
  v1[OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_isInitialized] = 0;
  *&v1[OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_initContinuations] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_preferenceChangesTask] = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v10.receiver = v1;
  v10.super_class = Session;
  return objc_msgSendSuper2(&v10, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2491E944C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2491E9544;

  return v6(a1);
}

uint64_t sub_2491E9544()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2491E963C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2491EB188;

  return v6();
}

uint64_t sub_2491E9724(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2491E980C;

  return v7();
}

uint64_t sub_2491E980C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2491E9900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_2491EB0AC(a3, v22 - v9, &qword_27EEDFC90, &qword_2491FFCB8);
  v11 = sub_2491F3E28();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2491EB114(v10, &qword_27EEDFC90, &qword_2491FFCB8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2491F3E18();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_2491F3E08();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_2491F3DE8() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_2491EB114(a3, &qword_27EEDFC90, &qword_2491FFCB8);

    return v20;
  }

LABEL_8:
  sub_2491EB114(a3, &qword_27EEDFC90, &qword_2491FFCB8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2491E9BFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2491EB18C;

  return v6(a1);
}

unint64_t sub_2491E9CF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2491E9DC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2491EAF24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2491E9DC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2491E9ECC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2491F3EA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2491E9ECC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2491E9F18(a1, a2);
  sub_2491EA048(&unk_285C256E8);
  return v3;
}

void *sub_2491E9F18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2491EA134(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2491F3EA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2491F3DF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2491EA134(v10, 0);
        result = sub_2491F3E98();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2491EA048(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2491EA1A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2491EA134(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCE0, &qword_2491FFE98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2491EA1A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCE0, &qword_2491FFE98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2491EA29C()
{
  result = qword_27EEDFCC0;
  if (!qword_27EEDFCC0)
  {
    sub_2491F3CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDFCC0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2491EA368()
{
  result = qword_27EEDFCD8;
  if (!qword_27EEDFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDFCD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMLSessionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMLSessionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t dispatch thunk of FindMyLocateSession.startMonitoringPreferencesChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2491EB188;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.stopMonitoringPreferenceChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2491E980C;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2491EA8D0;

  return v5();
}

uint64_t sub_2491EA8D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2491EA9CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2491E980C;

  return sub_2491E8F64(v2, v3);
}

uint64_t sub_2491EAA78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2491EB188;

  return sub_2491E963C(v2, v3, v4);
}

uint64_t sub_2491EAB38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2491EB188;

  return sub_2491E9724(a1, v4, v5, v6);
}

uint64_t sub_2491EAC04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2491EB188;

  return sub_2491E9BFC(a1, v4);
}

uint64_t sub_2491EACBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2491EB188;

  return sub_2491E7DD0(v2, v3);
}

uint64_t objectdestroy_28Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2491EADA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2491EB188;

  return sub_2491E7A24(v2, v3);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2491EAEC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2491EAF24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2491EAF84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2491EB188;

  return sub_2491E944C(a1, v4);
}

uint64_t sub_2491EB03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFCE8, &qword_2491FFEB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2491EB0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2491EB114(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion_cold_1(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *a1;
  v5 = a2;
  v6 = [v3 numberWithInteger:v4];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[1]];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Unexpected macOS version: %@.%@", &v8, 0x16u);
}

void __DNDSRegisterSysdiagnoseDataProvider_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Could not capture sysdiagnose from %{public}@ due to too much data", &v2, 0xCu);
}

void __DNDSRegisterSysdiagnoseDataProvider_block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Could not capture sysdiagnose from %{public}@ due to unable to make Plist: error=%{public}@", &v3, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}