uint64_t _IsValidQuantityForTypeWithIdentifier(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HKObjectType quantityTypeForIdentifier:a1];
  v5 = [v3 _unit];

  v6 = [v4 isCompatibleWithUnit:v5];
  return v6;
}

__CFString *NSStringFromHKElectrocardiogramSupportedState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7385318[a1];
  }
}

uint64_t HKElectrocardiogramIsAvailableForGeolocatedCountryCode(void *a1)
{
  v1 = a1;
  v2 = HKElectrocardiogramSupportedCountries(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

id HKElectrocardiogramSupportedCountries(uint64_t a1)
{
  if (HKElectrocardiogramSupportedCountries_onceToken != -1)
  {
    HKElectrocardiogramSupportedCountries_cold_1();
  }

  v2 = HKElectrocardiogramSupportedCountries_electrocardiogramSupportedCountryCodes;

  return v2;
}

uint64_t HKShouldAdvertiseElectrocardiogramBeforeGeolocationInLocale(void *a1)
{
  v1 = a1;
  v2 = [v1 countryCode];
  if (v2)
  {
    v3 = [v1 countryCode];
    IsAvailableForGeolocatedCountryCode = HKElectrocardiogramIsAvailableForGeolocatedCountryCode(v3);
  }

  else
  {
    IsAvailableForGeolocatedCountryCode = 0;
  }

  return IsAvailableForGeolocatedCountryCode;
}

uint64_t __HKElectrocardiogramSupportedCountries_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AS", @"GU", @"MP", @"PR", @"US", @"UM", @"VI", @"HK", @"GB", @"IE", @"DK", @"NO", @"DE", @"AT", @"CH", @"GR", @"HU", @"FI", @"SE", @"FR", @"BE", @"LU", @"NL", @"PT", @"IT", @"ES", @"RO", @"PL", @"CZ", @"SK", @"IS", @"HR", @"CA", @"SG", @"IN", @"TR", @"CL", @"NZ", @"SA", @"ZA", @"BH", @"BR", @"CO", @"IL", @"KW", @"OM", @"QA", @"AE", @"RU", @"KR", @"TW", @"JP", @"TH", @"PE", @"CN", 0}];
  v1 = HKElectrocardiogramSupportedCountries_electrocardiogramSupportedCountryCodes;
  HKElectrocardiogramSupportedCountries_electrocardiogramSupportedCountryCodes = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_onceToken != -1)
  {
    HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_cold_1();
  }

  v6 = HKMinimumSupportedOSVersionForCurrentVersion(HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_cinnamonSupportedCountries, v5);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
    v9 = v8;
    IsGreaterThanOrEqual_0 = getNRVersionIsGreaterThanOrEqual_0(a2, v8);
    v11 = 3;
    if (a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (((a2 != -1) & IsGreaterThanOrEqual_0) != 0)
    {
      v11 = 1;
    }

    if (v9 == a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

void __HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_block_invoke()
{
  v17[14] = *MEMORY[0x1E69E9840];
  v16[0] = &unk_1F0685A18;
  v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AS", @"GU", @"MP", @"PR", @"US", @"UM", @"VI", 0}];
  v17[0] = v15;
  v16[1] = &unk_1F0685A30;
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"HK", @"GB", @"IE", @"DK", @"NO", @"DE", @"AT", @"CH", @"GR", @"HU", @"FI", @"SE", @"FR", @"BE", @"LU", @"NL", @"PT", @"IT", @"ES", @"RO", 0}];
  v17[1] = v14;
  v16[2] = &unk_1F0685A48;
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"PL", @"CZ", @"SK", @"IS", @"HR", 0}];
  v17[2] = v13;
  v16[3] = &unk_1F0685A60;
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CA", @"SG", 0}];
  v17[3] = v12;
  v16[4] = &unk_1F0685A78;
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"IN", 0}];
  v17[4] = v0;
  v16[5] = &unk_1F0685A90;
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TR", @"CL", @"NZ", 0}];
  v17[5] = v1;
  v16[6] = &unk_1F0685AA8;
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"SA", 0}];
  v17[6] = v2;
  v16[7] = &unk_1F0685AC0;
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ZA", @"BH", @"BR", 0}];
  v17[7] = v3;
  v16[8] = &unk_1F0685AD8;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CO", @"IL", @"KW", @"OM", @"QA", @"AE", 0}];
  v17[8] = v4;
  v16[9] = &unk_1F0685AF0;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"RU", @"KR", 0}];
  v17[9] = v5;
  v16[10] = &unk_1F0685B08;
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TW", 0}];
  v17[10] = v6;
  v16[11] = &unk_1F0685B20;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"JP", @"TH", 0}];
  v17[11] = v7;
  v16[12] = &unk_1F0685B38;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"PE", 0}];
  v17[12] = v8;
  v16[13] = &unk_1F0685B50;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CN", 0}];
  v17[13] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:14];
  v11 = HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_cinnamonSupportedCountries;
  HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion_cinnamonSupportedCountries = v10;
}

id HKMinimumSupportedOSVersionForCurrentVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__56;
  v21 = __Block_byref_object_dispose__56;
  v22 = 0;
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __HKMinimumSupportedOSVersionForCurrentVersion_block_invoke;
  v12[3] = &unk_1E73852E0;
  v7 = v3;
  v13 = v7;
  v8 = v6;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void sub_191BD37CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_onceToken != -1)
  {
    HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_cold_1();
  }

  v6 = HKMinimumSupportedOSVersionForCurrentVersion(HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_cinnamonSupportedCountries, v5);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
    v9 = v8;
    IsGreaterThanOrEqual_0 = getNRVersionIsGreaterThanOrEqual_0(a2, v8);
    v11 = 3;
    if (a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (((a2 != -1) & IsGreaterThanOrEqual_0) != 0)
    {
      v11 = 1;
    }

    if (v9 == a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

void __HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_block_invoke()
{
  v22[14] = *MEMORY[0x1E69E9840];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:786689];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AS", @"GU", @"MP", @"PR", @"US", @"UM", @"VI", 0}];
  v22[0] = v19;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:786944];
  v21[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"HK", @"GB", @"IE", @"DK", @"NO", @"DE", @"AT", @"CH", @"GR", @"HU", @"FI", @"SE", @"FR", @"BE", @"LU", @"NL", @"PT", @"IT", @"ES", @"RO", 0}];
  v22[1] = v17;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:787200];
  v21[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"PL", @"CZ", @"SK", @"IS", @"HR", 0}];
  v22[2] = v15;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:787456];
  v21[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CA", @"SG", 0}];
  v22[3] = v13;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:851968];
  v21[4] = v12;
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"IN", 0}];
  v22[4] = v0;
  v21[5] = &unk_1F0685B68;
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TR", @"CL", @"NZ", 0}];
  v22[5] = v1;
  v21[6] = &unk_1F0685B80;
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"SA", 0}];
  v22[6] = v2;
  v21[7] = &unk_1F0685B98;
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ZA", @"BH", @"BR", 0}];
  v22[7] = v3;
  v21[8] = &unk_1F0685BB0;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CO", @"IL", @"KW", @"OM", @"QA", @"AE", 0}];
  v22[8] = v4;
  v21[9] = &unk_1F0685BC8;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"RU", @"KR", 0}];
  v22[9] = v5;
  v21[10] = &unk_1F0685BE0;
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TW", 0}];
  v22[10] = v6;
  v21[11] = &unk_1F0685BF8;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"JP", @"TH", 0}];
  v22[11] = v7;
  v21[12] = &unk_1F0685C10;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"PE", 0}];
  v22[12] = v8;
  v21[13] = &unk_1F0685C28;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CN", 0}];
  v22[13] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:14];
  v11 = HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_cinnamonSupportedCountries;
  HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion_cinnamonSupportedCountries = v10;
}

__CFString *NSStringFromHKAtrialFibrillationDetectionSupportedState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7385348[a1];
  }
}

uint64_t HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_onceToken != -1)
  {
    HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_cold_1();
  }

  v6 = HKMinimumSupportedOSVersionForCurrentVersion(HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_antimonySupportedCountries, v5);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
    v9 = v8;
    IsGreaterThanOrEqual_0 = getNRVersionIsGreaterThanOrEqual_0(a2, v8);
    v11 = 3;
    if (a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (((a2 != -1) & IsGreaterThanOrEqual_0) != 0)
    {
      v11 = 1;
    }

    if (v9 == a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

void __HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_block_invoke()
{
  v23[19] = *MEMORY[0x1E69E9840];
  v22[0] = &unk_1F0685A18;
  v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AS", @"GU", @"MP", @"PR", @"US", @"UM", @"VI", 0}];
  v23[0] = v21;
  v22[1] = &unk_1F0685A30;
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"HK", @"GB", @"IE", @"DK", @"NO", @"DE", @"AT", @"CH", @"GR", @"HU", @"FI", @"SE", @"FR", @"BE", @"LU", @"NL", @"PT", @"IT", @"ES", @"RO", 0}];
  v23[1] = v20;
  v22[2] = &unk_1F0685A48;
  v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"PL", @"CZ", @"SK", @"IS", @"HR", 0}];
  v23[2] = v19;
  v22[3] = &unk_1F0685A60;
  v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CA", @"SG", 0}];
  v23[3] = v18;
  v22[4] = &unk_1F0685A78;
  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"IN", 0}];
  v23[4] = v17;
  v22[5] = &unk_1F0685A90;
  v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TR", @"CL", @"NZ", 0}];
  v23[5] = v16;
  v22[6] = &unk_1F0685AA8;
  v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"SA", 0}];
  v23[6] = v15;
  v22[7] = &unk_1F0685AC0;
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ZA", @"BH", @"BR", 0}];
  v23[7] = v14;
  v22[8] = &unk_1F0685AD8;
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CO", @"IL", @"KW", @"OM", @"QA", @"AE", 0}];
  v23[8] = v13;
  v22[9] = &unk_1F0685AF0;
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"RU", @"KR", 0}];
  v23[9] = v12;
  v22[10] = &unk_1F0685B08;
  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AW", @"BS", @"BB", @"BM", @"VG", @"KY", @"GF", @"GY", @"LI", @"MO", @"MT", @"MQ", @"RE", @"TT", 0}];
  v23[10] = v11;
  v22[11] = &unk_1F0685B20;
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"JP", @"TH", @"YT", @"PH", @"TW", 0}];
  v23[11] = v10;
  v22[12] = &unk_1F0685C40;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VN", @"AU", 0}];
  v23[12] = v9;
  v22[13] = &unk_1F0685B38;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"MY", @"PE", 0}];
  v23[13] = v8;
  v22[14] = &unk_1F0685C58;
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{@"AI", @"AD", @"BG", @"CY", @"EE", @"TF", @"GI", @"GP", @"GG", @"IM", @"JE", @"MC", @"MS", @"BL", @"SH", @"MF", @"SI", @"UA", @"VA", @"AG", @"VC", @"DM", @"HT", @"KN", @"BN", @"CK", @"FJ", @"SC", @"NF", @"NR", 0, @"AI", v0}];
  v23[14] = v1;
  v22[15] = &unk_1F0685C70;
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"LT", 0}];
  v23[15] = v2;
  v22[16] = &unk_1F0685C88;
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AX", @"CX", @"CC", @"FK", @"FO", @"GW", @"HM", @"MH", @"MU", @"FM", @"NU", @"PN", @"GS", @"SJ", @"TK", 0}];
  v23[16] = v3;
  v22[17] = &unk_1F0685B50;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CN", @"GL", @"GD", @"JM", @"NC", @"LC", @"PM", @"TC", @"TV", @"WF", @"ZW", 0}];
  v23[17] = v4;
  v22[18] = &unk_1F0685CA0;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ID", @"LV", @"MD", 0}];
  v23[18] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:19];
  v7 = HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_antimonySupportedCountries;
  HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion_antimonySupportedCountries = v6;
}

uint64_t HKAtrialFibrillationDetectionIsAvailableForGeolocatedCountryCode(void *a1)
{
  v1 = a1;
  v2 = HKAtrialFibrillationDetectionSupportedCountries(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

id HKAtrialFibrillationDetectionSupportedCountries(uint64_t a1)
{
  if (HKAtrialFibrillationDetectionSupportedCountries_onceToken != -1)
  {
    HKAtrialFibrillationDetectionSupportedCountries_cold_1();
  }

  v2 = HKAtrialFibrillationDetectionSupportedCountries_atrialFibrillationDetectionSupportedCountryCodes;

  return v2;
}

uint64_t HKShouldAdvertiseAtrialFibrillationDetectionBeforeGeolocationInLocale(void *a1)
{
  v1 = a1;
  v2 = [v1 countryCode];
  if (v2)
  {
    v3 = [v1 countryCode];
    IsAvailableForGeolocatedCountryCode = HKAtrialFibrillationDetectionIsAvailableForGeolocatedCountryCode(v3);
  }

  else
  {
    IsAvailableForGeolocatedCountryCode = 0;
  }

  return IsAvailableForGeolocatedCountryCode;
}

uint64_t __HKAtrialFibrillationDetectionSupportedCountries_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AS", @"GU", @"MP", @"PR", @"US", @"UM", @"VI", @"HK", @"GB", @"IE", @"DK", @"NO", @"DE", @"AT", @"CH", @"GR", @"HU", @"FI", @"SE", @"FR", @"BE", @"LU", @"NL", @"PT", @"IT", @"ES", @"RO", @"PL", @"CZ", @"SK", @"IS", @"HR", @"CA", @"SG", @"IN", @"TR", @"CL", @"NZ", @"SA", @"ZA", @"BH", @"BR", @"CO", @"IL", @"KW", @"OM", @"QA", @"AE", @"RU", @"KR", @"AW", @"BS", @"BB", @"BM", @"VG", @"KY", @"GF", @"GY", @"LI", @"MO", @"MT"}];
  v1 = HKAtrialFibrillationDetectionSupportedCountries_atrialFibrillationDetectionSupportedCountryCodes;
  HKAtrialFibrillationDetectionSupportedCountries_atrialFibrillationDetectionSupportedCountryCodes = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HKMinimumSupportedOSVersionForCurrentVersion_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if ([v10 containsObject:*(a1 + 48)])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t getNRVersionIsGreaterThanOrEqual_0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr_0;
  v10 = getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr_0;
  if (!getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_0;
    v6[3] = &unk_1E7378388;
    v6[4] = &v7;
    __getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_0(v6);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    getNRVersionIsGreaterThanOrEqual_cold_1_0();
  }

  return v4(a1, a2);
}

void sub_191BD5910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7385300;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  v2 = NanoRegistryLibraryCore_frameworkLibrary_7;
  if (!NanoRegistryLibraryCore_frameworkLibrary_7)
  {
    __getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "NRVersionIsGreaterThanOrEqual");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRVersionIsGreaterThanOrEqualSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_7(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_7 = result;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HKStringForDeviceType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E73854E8[a1];
  }

  return v2;
}

void sub_191BE1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void *HKAppleSleepingBreathingDisturbancesClassificationForQuantity(void *a1)
{
  v1 = a1;
  v2 = +[HKUnit countUnit];
  if ([v1 isCompatibleWithUnit:v2])
  {
    [v1 doubleValueForUnit:v2];
    v4 = &unk_1F0685CB8;
    if (v3 < 11.0)
    {
      v4 = &unk_1F0685CD0;
    }

    if (v3 >= 0.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification(void *a1)
{
  if (a1 == 1)
  {
    v2 = +[HKUnit countUnit];
    v3 = 11.0;
    goto LABEL_5;
  }

  v1 = a1;
  if (!a1)
  {
    v2 = +[HKUnit countUnit];
    v3 = 0.0;
LABEL_5:
    v1 = [HKQuantity quantityWithUnit:v2 doubleValue:v3];
    goto LABEL_7;
  }

  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKQuantity * _Nonnull HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification(HKAppleSleepingBreathingDisturbancesClassification)"];
  [v2 handleFailureInFunction:v4 file:@"HKAppleSleepingBreathingDisturbancesClassification.m" lineNumber:47 description:{@"Invalid classification: %ld", v1}];

LABEL_7:

  return v1;
}

uint64_t HKAuthorizationBooleanResultForConceptAuthorizationRecordStatus(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_191BE3994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191BE4AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191BE56F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191BE68C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_191BE8450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAADeviceManagerClass_block_invoke(uint64_t a1)
{
  AudioAccessoryServicesLibrary();
  result = objc_getClass("AADeviceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAADeviceManagerClass_block_invoke_cold_1();
  }

  getAADeviceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AudioAccessoryServicesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AudioAccessoryServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E73859B8;
    v2 = 0;
    AudioAccessoryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    AudioAccessoryServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AudioAccessoryServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AudioAccessoryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAASystemStateMonitorClass_block_invoke(uint64_t a1)
{
  AudioAccessoryServicesLibrary();
  result = objc_getClass("AASystemStateMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAASystemStateMonitorClass_block_invoke_cold_1();
  }

  getAASystemStateMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAADeviceConfigClass_block_invoke(uint64_t a1)
{
  AudioAccessoryServicesLibrary();
  result = objc_getClass("AADeviceConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAADeviceConfigClass_block_invoke_cold_1();
  }

  getAADeviceConfigClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

id HKProfileStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8798];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_getAllProfilesWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t HKSleepScheduleWeekdayFromWeekdayComponent(uint64_t a1)
{
  if ((a1 - 1) < 7)
  {
    return qword_191DCE6B8[a1 - 1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKSleepScheduleWeekdays HKSleepScheduleWeekdayFromWeekdayComponent(NSInteger)"];
  [v3 handleFailureInFunction:v4 file:@"HKSleepSchedule.m" lineNumber:45 description:{@"Invalid weekday component: %ld", a1}];

  return 0;
}

uint64_t NSWeekdayComponentFromHKSleepScheduleWeekday(uint64_t a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if (a1)
    {
      if (a1 == 2)
      {
        v1 = 3;
      }

      if (a1 == 1)
      {
        return 2;
      }

      else
      {
        return v1;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger NSWeekdayComponentFromHKSleepScheduleWeekday(HKSleepScheduleWeekdays)"];
      [v5 handleFailureInFunction:v6 file:@"HKSleepSchedule.m" lineNumber:53 description:@"None does not have an equivalent weekday component"];

      return 0;
    }
  }

  else
  {
    v2 = 6;
    v3 = 7;
    if (a1 != 32)
    {
      v3 = 1;
    }

    if (a1 != 16)
    {
      v2 = v3;
    }

    if (a1 == 8)
    {
      v1 = 5;
    }

    if (a1 == 4)
    {
      v1 = 4;
    }

    if (a1 <= 15)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id HKSleepScheduleWeekdayArrayFromWeekdays(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (!a1)
  {
    v4 = &unk_1F0685D48;
LABEL_18:
    [v3 addObject:v4];
    goto LABEL_19;
  }

  if (a1)
  {
    [v2 addObject:&unk_1F0685D60];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:&unk_1F0685D78];
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:&unk_1F0685D90];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:&unk_1F0685DA8];
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:&unk_1F0685DD8];
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v3 addObject:&unk_1F0685DC0];
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 0x40) != 0)
  {
LABEL_17:
    v4 = &unk_1F0685DF0;
    goto LABEL_18;
  }

LABEL_19:

  return v3;
}

__CFString *NSStringFromHKSleepScheduleWeekdays(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = HKSleepScheduleWeekdayArrayFromWeekdays(a1);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v4)
    {
      goto LABEL_29;
    }

    v5 = v4;
    v6 = *v13;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) integerValue];
        if (v8 > 7)
        {
          if (v8 > 31)
          {
            if (v8 == 32)
            {
              v9 = @"S";
              goto LABEL_27;
            }

            if (v8 == 64)
            {
              v9 = @"U";
              goto LABEL_27;
            }
          }

          else
          {
            if (v8 == 8)
            {
              v9 = @"R";
              goto LABEL_27;
            }

            if (v8 == 16)
            {
              v9 = @"F";
              goto LABEL_27;
            }
          }
        }

        else if (v8 > 1)
        {
          if (v8 == 2)
          {
            v9 = @"T";
            goto LABEL_27;
          }

          if (v8 == 4)
          {
            v9 = @"W";
            goto LABEL_27;
          }
        }

        else
        {
          if (!v8)
          {
            v9 = @"-";
            goto LABEL_27;
          }

          v9 = @"M";
          if (v8 == 1)
          {
            goto LABEL_27;
          }
        }

        v9 = &stru_1F05FF230;
LABEL_27:
        [v2 appendString:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v5)
      {
LABEL_29:

        v10 = [v2 copy];
        goto LABEL_31;
      }
    }
  }

  v10 = @"-";
LABEL_31:

  return v10;
}

uint64_t HKSleepScheduleWeekdaysFromNSString(void *a1)
{
  v1 = a1;
  v2 = 0;
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = [v1 substringWithRange:{v3, 1}];
      v5 = 1;
      if (([v4 isEqualToString:@"M"] & 1) == 0)
      {
        if ([v4 isEqualToString:@"T"])
        {
          v5 = 2;
        }

        else if ([v4 isEqualToString:@"W"])
        {
          v5 = 4;
        }

        else if ([v4 isEqualToString:@"R"])
        {
          v5 = 8;
        }

        else if ([v4 isEqualToString:@"F"])
        {
          v5 = 16;
        }

        else if ([v4 isEqualToString:@"S"])
        {
          v5 = 32;
        }

        else if ([v4 isEqualToString:@"U"])
        {
          v5 = 64;
        }

        else
        {
          if (([v4 isEqualToString:@"-"] & 1) == 0)
          {
            v6 = [MEMORY[0x1E696AAA8] currentHandler];
            v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKSleepScheduleWeekdays _WeekdayFromCharacterString(NSString * _Nonnull __strong)"];
            [v6 handleFailureInFunction:v7 file:@"HKSleepSchedule.m" lineNumber:147 description:{@"Invalid character string: %@", v4}];
          }

          v5 = 0;
        }
      }

      v2 |= v5;
      ++v3;
    }

    while (v3 < [v1 length]);
  }

  return v2;
}

uint64_t HKSleepScheduleWeekdaysMake(unsigned int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = a1;
  if (a2)
  {
    v7 = a1 | 2;
  }

  if (a3)
  {
    v7 |= 4uLL;
  }

  if (a4)
  {
    v7 |= 8uLL;
  }

  if (a5)
  {
    v7 |= 0x10uLL;
  }

  if (a6)
  {
    v7 |= 0x20uLL;
  }

  if (a7)
  {
    return v7 | 0x40;
  }

  else
  {
    return v7;
  }
}

void OUTLINED_FUNCTION_1_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t _IsValueValidForDevicePropertyKeyPath(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = objc_opt_class();
    [v5 hk_assignError:a2 code:3 format:{@"Expected value of type %@, received %@", v6, objc_opt_class()}];
  }

  return isKindOfClass & 1;
}

uint64_t _IsMetadataValueValidForOperatorType(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 != 10)
  {
    if (v5)
    {
      if ([MEMORY[0x1E695DF20] hk_acceptsMetadataValue:v5 allowPrivateMetadata:0])
      {
        goto LABEL_9;
      }

      v7 = MEMORY[0x1E696ABC0];
      v8 = [MEMORY[0x1E695DF20] hk_acceptedPublicMetadataValueClasses];
      [v7 hk_assignError:a3 code:3 format:{@"Expected constant value of type from set %@ received %@", v8, objc_opt_class()}];
    }

    else
    {
      if (a1 == 5)
      {
        goto LABEL_9;
      }

      v10 = MEMORY[0x1E696ABC0];
      v8 = HKStringFromPredicateOperatorType(5);
      [v10 hk_assignError:a3 code:3 format:{@"Nil constant value only supported with operator type /'%@/'", v8, v12}];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"Expected value of class NSArray or NSSet, received %@", objc_opt_class()}];
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }
  }

LABEL_9:
  v9 = 1;
LABEL_13:

  return v9;
}

id _HKPrivateElectrocardiogramSymptomsGetList(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 0x80) != 0)
  {
    [v2 addObject:&unk_1F0685E08];
  }

  if ((a1 & 0x200) != 0)
  {
    [v3 addObject:&unk_1F0685E20];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:&unk_1F0685E38];
  }

  if ((a1 & 0x100) != 0)
  {
    [v3 addObject:&unk_1F0685E50];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:&unk_1F0685E68];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 addObject:&unk_1F0685E80];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:&unk_1F0685E98];
  }

  if ((a1 & 0x40) != 0)
  {
    [v3 addObject:&unk_1F0685EB0];
  }

  if (a1)
  {
    [v3 addObject:&unk_1F0685EC8];
  }

  return v3;
}

void sub_191BF3BE8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_191BF3E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_191BF4354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _HKAllECGSymptomTypes()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierFainting"];
  v10[0] = v0;
  v1 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierDizziness"];
  v10[1] = v1;
  v2 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat"];
  v10[2] = v2;
  v3 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierChestTightnessOrPain"];
  v10[3] = v3;
  v4 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierShortnessOfBreath"];
  v10[4] = v4;
  v5 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierFatigue"];
  v10[5] = v5;
  v6 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierSkippedHeartbeat"];
  v10[6] = v6;
  v7 = [(HKObjectType *)HKCategoryType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierECGOtherSymptom"];
  v10[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];

  return v8;
}

id _HKCategoryTypesForSymptomsBitmask(__int16 a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = _HKAllECGSymptomTypes();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 code];
        if (v8 > 204)
        {
          if (v8 > 206)
          {
            if (v8 == 207)
            {
              if ((a1 & 4) == 0)
              {
                continue;
              }

LABEL_31:
              [v2 addObject:v7];
              continue;
            }

            if (v8 == 211 && (a1 & 0x40) != 0)
            {
              goto LABEL_31;
            }
          }

          else if (v8 == 205)
          {
            if ((a1 & 2) != 0)
            {
              goto LABEL_31;
            }
          }

          else if ((a1 & 0x10) != 0)
          {
            goto LABEL_31;
          }
        }

        else if (v8 > 201)
        {
          if (v8 == 202)
          {
            if ((a1 & 0x200) != 0)
            {
              goto LABEL_31;
            }
          }

          else if (v8 == 204 && (a1 & 0x100) != 0)
          {
            goto LABEL_31;
          }
        }

        else if (v8 == 167)
        {
          if ((a1 & 8) != 0)
          {
            goto LABEL_31;
          }
        }

        else if (v8 == 201 && (a1 & 0x80) != 0)
        {
          goto LABEL_31;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t HKElectrocardiogramSymptomsStatusFromPrivateElectrocardiogramSymptoms(uint64_t a1)
{
  v1 = 1;
  if (a1 != 1)
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

id HKBloodPressureClassificationCategoryData.init(classificationGuidelines:identifier:systolicRange:diastolicRange:rangeRelationship:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithClassificationGuidelines:a1 identifier:a2 systolicRange:a3 diastolicRange:a4 rangeRelationship:a5];

  return v8;
}

{
  v8 = sub_191BF7828(a1, a2, a3, a4, a5);

  return v8;
}

void __swiftcall HKBloodPressureClassificationCategoryData.init()(HKBloodPressureClassificationCategoryData *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t HKBloodPressureClassificationCategoryRangeRelationship.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 29295;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_191BF66B8()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 29295;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6581857;
  }
}

uint64_t HKBloodPressureClassificationCategoryData.description.getter()
{
  sub_191CC6FC8();
  v1 = [v0 identifier];
  v2 = sub_191CC67B8();

  MEMORY[0x193B01F90](0x6C6F747379732820, 0xEB00000000206369);
  sub_191C86A70();
  MEMORY[0x193B01F90]();

  MEMORY[0x193B01F90](32, 0xE100000000000000);
  v3 = [v0 rangeRelationship];
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v3 == 1)
  {
    v5 = 29295;
    v4 = 0xE200000000000000;
  }

  v6 = v3 == 0;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6581857;
  }

  if (v6)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x193B01F90](v7, v8);

  MEMORY[0x193B01F90](0x6C6F747361696420, 0xEB00000000206369);
  sub_191C86A70();
  MEMORY[0x193B01F90]();

  MEMORY[0x193B01F90](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_191BF6904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_191BF695C(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA670, type metadata accessor for HKError, &unk_191DD06C4);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_191BF69C8(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA670, type metadata accessor for HKError, &unk_191DD06C4);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_191BF6A34(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

BOOL sub_191BF6AEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_191BF6B1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_191BF6B48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_191BF6C20()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t sub_191BF6C68(uint64_t a1)
{
  v2 = *v1;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  return sub_191CC7508();
}

uint64_t sub_191BF6CAC(uint64_t a1, id *a2)
{
  result = sub_191CC6798();
  *a2 = 0;
  return result;
}

uint64_t sub_191BF6D24(uint64_t a1, id *a2)
{
  v3 = sub_191CC67A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_191BF6DA4@<X0>(uint64_t *a2@<X8>)
{
  sub_191CC67B8();
  v3 = sub_191CC6778();

  *a2 = v3;
  return result;
}

uint64_t sub_191BF6DF8(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_191BF6E64(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_191BF6ED0(void *a1, uint64_t a2)
{
  v4 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_191BF6F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_191BF7000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191CC74C8();
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191BF7060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_191BF8A60(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_191BF70AC(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA520, type metadata accessor for HKBloodPressureClassificationCategory, &unk_191DCEF7C);
  v3 = sub_191BF7F20(&qword_1EADCA528, type metadata accessor for HKBloodPressureClassificationCategory, &unk_191DCEF24);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF7168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191BF7F20(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_191BF71EC(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA4E0, type metadata accessor for HKVerifiableClinicalRecordCredentialType, &unk_191DCF940);
  v3 = sub_191BF7F20(&qword_1EADCA4E8, type metadata accessor for HKVerifiableClinicalRecordCredentialType, &unk_191DCF8E0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF72A8(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA4D0, type metadata accessor for HKVerifiableClinicalRecordSourceType, &unk_191DCFA98);
  v3 = sub_191BF7F20(&qword_1EADCA4D8, type metadata accessor for HKVerifiableClinicalRecordSourceType, &unk_191DCFA38);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF7364@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_191CC6778();

  *a2 = v3;
  return result;
}

uint64_t sub_191BF73AC(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA6A0, type metadata accessor for HKCountryCode, &unk_191DD07C0);
  v3 = sub_191BF7F20(&qword_1EADCA6A8, type metadata accessor for HKCountryCode, &unk_191DD0768);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF7468(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA510, type metadata accessor for HKFeatureIdentifier, &unk_191DCF3E0);
  v3 = sub_191BF7F20(&qword_1EADCA518, type metadata accessor for HKFeatureIdentifier, &unk_191DCF388);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF7524(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA500, type metadata accessor for HKFeatureAvailabilityContext, &unk_191DCF520);
  v3 = sub_191BF7F20(&qword_1EADCA508, type metadata accessor for HKFeatureAvailabilityContext, &unk_191DCF4C8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF75E0(uint64_t a1)
{
  v2 = sub_191BF7F20(&qword_1EADCA4F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_191DCF660);
  v3 = sub_191BF7F20(&qword_1EADCA4F8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_191DCF608);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_191BF769C()
{
  v0 = sub_191CC67B8();
  v1 = MEMORY[0x193B01FB0](v0);

  return v1;
}

uint64_t sub_191BF76D8(uint64_t a1)
{
  sub_191CC67B8();
  sub_191CC67E8();
}

uint64_t sub_191BF772C(uint64_t a1)
{
  sub_191CC67B8();
  sub_191CC74C8();
  sub_191CC67E8();
  v1 = sub_191CC7508();

  return v1;
}

uint64_t sub_191BF77A0(void *a1, uint64_t *a2)
{
  v2 = sub_191CC67B8();
  v4 = v3;
  if (v2 == sub_191CC67B8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_191CC73E8();
  }

  return v7 & 1;
}

id sub_191BF7828(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_classificationGuidelines] = a1;
  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_identifier] = a2;
  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_systolicRange] = a3;
  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_diastolicRange] = a4;
  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_rangeRelationship] = a5;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 maximum];
  v12 = objc_opt_self();
  v13 = [v12 millimeterOfMercuryUnit];
  [v11 doubleValueForUnit_];
  v15 = v14;

  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_systolicUpperBound] = v15;
  v16 = [v9 minimum];
  v17 = [v12 millimeterOfMercuryUnit];
  [v16 doubleValueForUnit_];
  v19 = v18;

  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_systolicLowerBound] = v19;
  v20 = [v10 maximum];
  v21 = [v12 millimeterOfMercuryUnit];
  [v20 doubleValueForUnit_];
  v23 = v22;

  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_diastolicUpperBound] = v23;
  v24 = [v10 minimum];
  v25 = [v12 millimeterOfMercuryUnit];
  [v24 doubleValueForUnit_];
  v27 = v26;

  *&v5[OBJC_IVAR___HKBloodPressureClassificationCategoryData_diastolicLowerBound] = v27;
  v29.receiver = v5;
  v29.super_class = HKBloodPressureClassificationCategoryData;
  return objc_msgSendSuper2(&v29, sel_init);
}

unint64_t type metadata accessor for HKBloodPressureClassificationCategoryData()
{
  result = qword_1EADCA1E8;
  if (!qword_1EADCA1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA1E8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_191BF7D18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191BF7D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_191BF7D94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191BF7DB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_191BF7F20(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191BF8A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_191BF8B4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_191BF8EB4()
{
  result = qword_1EADCA698;
  if (!qword_1EADCA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCA698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKDatabase(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HKDatabase(_WORD *result, int a2, int a3)
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

uint64_t HKMCPregnancyStateQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

__n128 HKMCPregnancyStateQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t HKMCPregnancyStateQueryDescriptor.init(debugIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = a2;
  a3[2] = -1;
  *a3 = result;
  return result;
}

uint64_t HKMCPregnancyStateQueryDescriptor.Results.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  sub_191BF98CC(0, &qword_1EADCA770, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87B8]);
  *v1 = v0;
  v1[1] = sub_191BF9198;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_191BF9198()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_191BF92C8;
  }

  else
  {
    v2 = sub_191BF92AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_191BF92E0()
{
  result = qword_1EADCC450;
  if (!qword_1EADCC450)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCC450);
  }

  return result;
}

uint64_t sub_191BF9344(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  sub_191BF98CC(0, &qword_1EADCA770, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87B8]);
  *v2 = v1;
  v2[1] = sub_191BF9418;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_191BF9418()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_191BF954C;
  }

  else
  {
    v2 = sub_191BF952C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191BF9564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_191BF961C;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_191BF961C()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_191CC69B8();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_191BF97D0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_191CC69B8();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_191BF97AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_191BF97D0()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  sub_191BF92E0();
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t HKMCPregnancyStateQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191BF98CC(0, &qword_1EADCA780, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

void sub_191BF98CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_191BFAE6C(255, a3, a4);
    v9 = sub_191BF92E0();
    v10 = a5(a1, v8, v9, MEMORY[0x1E69E7288]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_191BF994C()
{
  sub_191BF98CC(0, &qword_1EADCA780, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191BFA728(v0);
}

uint64_t HKMCPregnancyStateQueryDescriptor.results(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  sub_191BF98CC(0, &qword_1EADCA788, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E8798]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  v14[4] = sub_191BF9DD0;
  v14[5] = v12;
  v14[6] = a1;
  sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);

  sub_191CC6AF8();
}

id sub_191BF9B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = objc_allocWithZone(HKMCPregnancyStateQuery);
  aBlock[4] = sub_191BFAF1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithUpdateHandler_];
  _Block_release(v15);

  v17 = v16;
  if (a3)
  {

    v18 = sub_191CC6778();
  }

  else
  {
    v18 = 0;
  }

  [v17 setDebugIdentifier_];

  [v17 setQualityOfService_];

  return v17;
}

uint64_t sub_191BF9DDC(uint64_t a1, void *a2, void *a3)
{
  sub_191BF98CC(0, qword_1EADCA838, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if (a2)
  {
    v15 = a2;
    sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);
    v10 = a2;
    sub_191CC6A88();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v14 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFA364(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v12 = v15;
    }

    v15 = v12;
    v13 = a3;
    sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191BF9FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  sub_191BF98CC(0, &qword_1EADCA788, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E8798]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  v14[4] = sub_191BFAFEC;
  v14[5] = v12;
  v14[6] = a1;
  sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);

  sub_191CC6AF8();
}

void sub_191BFA1A0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v5 = a2();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = v5;
  sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);
  v7 = a4;
  v8 = v5;
  sub_191CC6A68();
  [v7 executeQuery_];
}

uint64_t sub_191BFA364(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191BFA3CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_191BFA418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_191BFA474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, void *, __objc2_class **))
{
  v8 = (a6)(0, a4, &qword_1EADCA778, off_1E7375158, a5);
  v9 = *(*(v8 - 8) + 48);

  return v9(a1, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, void *, __objc2_class **, uint64_t))
{
  v9 = a7(0, a5, &qword_1EADCA778, off_1E7375158, a6);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, a2, a2, v9);
}

uint64_t sub_191BFA6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t *, __objc2_class **, uint64_t))
{
  result = a6(319, a4, &qword_1EADCA778, off_1E7375158, a5);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191BFA728(uint64_t a1)
{
  v2 = type metadata accessor for HKMCPregnancyStateQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191BFA7B4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = a2();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = v11;
  sub_191BFAEB4(0, a6, a7);
  v13 = a4;
  v14 = v11;
  sub_191CC6A68();
  [v13 executeQuery_];
}

void sub_191BFA890(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v5 = a2();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = v5;
  sub_191BFAD64(0, &qword_1EADCA810, &qword_1EADCA818, &qword_1EADCA820, 0x1E6985C40);
  v7 = a4;
  v8 = v5;
  sub_191CC6A68();
  [v7 executeQuery_];
}

void sub_191BFA9B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v5 = a2();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = v5;
  sub_191BFAD64(0, &qword_1EADCA7F0, &qword_1EADCA7F8, &qword_1EADCA800, off_1E7374AA8);
  v7 = a4;
  v8 = v5;
  sub_191CC6A68();
  [v7 executeQuery_];
}

void sub_191BFAAA0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v5 = a2();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = v5;
  sub_191BF98CC(0, &qword_1EADCA7E0, &qword_1EADCA7E8, off_1E7374E88, MEMORY[0x1E69E87A0]);
  v7 = a4;
  v8 = v5;
  sub_191CC6A68();
  [v7 executeQuery_];
}

void sub_191BFABCC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v5 = a2();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = v5;
  sub_191BFAC9C(0);
  v7 = a4;
  v8 = v5;
  sub_191CC6A68();
  [v7 executeQuery_];
}

void sub_191BFAC9C(uint64_t a1)
{
  if (!qword_1EADCA7C8)
  {
    sub_191BFAD0C(255);
    sub_191BF92E0();
    v1 = sub_191CC6AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCA7C8);
    }
  }
}

void sub_191BFAD0C(uint64_t a1)
{
  if (!qword_1EADCA7D0)
  {
    type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(255);
    v1 = sub_191CC6978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCA7D0);
    }
  }
}

void sub_191BFAD64(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_191BFADF4(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    sub_191BF92E0();
    v6 = sub_191CC6AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_191BFADF4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_191BFAE6C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191BFAE6C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_191BFAEB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_191BF92E0();
    v4 = sub_191CC6AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_191BFAF1C(uint64_t a1, void *a2, void *a3)
{
  sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);

  return sub_191BF9DDC(a1, a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191BFAFFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for HKSampleQueryDescriptor(0, *(a3 + a4 - 8), a3, a4);

  return HKSampleQueryDescriptor.predicates.setter(v5, Descriptor);
}

uint64_t HKSampleQueryDescriptor.predicates.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;

  return sub_191BFB098(a2);
}

uint64_t sub_191BFB098(uint64_t a1)
{
  v3 = v1[1];
  v14[0] = *v1;
  v14[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v15[0] = v1[2];
  *(v15 + 9) = *(v1 + 41);
  v11 = v5;
  v12 = v4;
  *v13 = v1[2];
  *&v13[9] = *(v1 + 41);
  v6 = *(a1 - 8);
  (*(v6 + 16))(v16, v14, a1);
  sub_191BFB17C(a1, v7, v8, v9);
  v16[0] = v11;
  v16[1] = v12;
  v17[0] = *v13;
  *(v17 + 9) = *&v13[9];
  return (*(v6 + 8))(v16, a1);
}

uint64_t sub_191BFB17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKSamplePredicate(255, *(a1 + 16), a3, a4);
  sub_191CC6978();
  swift_getWitnessTable();
  result = sub_191CC6C38();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t *(*HKSampleQueryDescriptor.predicates.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_191BFB21C;
}

uint64_t *sub_191BFB21C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_191BFB098(*result);
  }

  return result;
}

uint64_t HKSampleQueryDescriptor.sortDescriptors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HKSampleQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HKSampleQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

__n128 HKSampleQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[2] = v4;
  v1[3].n128_u64[0] = v2;
  return result;
}

uint64_t HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  a6[2] = 0uLL;
  *(a6 + 6) = -1;
  *(a6 + 56) = 0;
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 24) = a4 & 1;
  v6 = a6[1];
  v18[0] = *a6;
  v18[1] = v6;
  v8 = *a6;
  v7 = a6[1];
  v19[0] = a6[2];
  *(v19 + 9) = *(a6 + 41);
  v15 = v8;
  v16 = v7;
  *v17 = a6[2];
  *&v17[9] = *(a6 + 41);
  Descriptor = type metadata accessor for HKSampleQueryDescriptor(0, a5, a3, a4);
  v10 = *(Descriptor - 8);
  (*(v10 + 16))(v20, v18, Descriptor);
  sub_191BFB17C(Descriptor, v11, v12, v13);
  v20[0] = v15;
  v20[1] = v16;
  v21[0] = *v17;
  *(v21 + 9) = *&v17[9];
  return (*(v10 + 8))(v20, Descriptor);
}

uint64_t HKSampleQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  v4 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v4;
  *(v3 + 48) = v2[2];
  *(v3 + 57) = *(v2 + 41);
  return MEMORY[0x1EEE6DFA0](sub_191BFB4E4, 0, 0);
}

uint64_t sub_191BFB4E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = *(v1 + 16);
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_191CC6978();
  *v4 = v0;
  v4[1] = sub_191BFB5EC;

  return (sub_191BFBCE8)(v0 + 10, 0, 0, sub_191BFBAA0, v3, v5);
}

uint64_t sub_191BFB5EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_191BFB724;
  }

  else
  {

    v2 = sub_191BFB708;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191BFB724()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_191BFB788(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = *(a2 + 8);
  *&aBlock = v31;
  v24[2] = a4;
  sub_191CC5DD8();
  v8 = sub_191CC6978();
  v9 = sub_191BFAE6C(0, &qword_1EADCA8C0, 0x1E696AEB0);

  WitnessTable = swift_getWitnessTable();
  sub_191C69C84(sub_191BFC2A8, v24, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  (*(*(v8 - 8) + 8))(&v31, v8);
  sub_191BFAE6C(0, &qword_1EADCA8C8, off_1E73753D8);
  sub_191C03C1C(*a2, a4, v12, v13);
  if (*(a2 + 24))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 16);
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a3;
  v15[4] = a1;
  v16 = objc_allocWithZone(HKSampleQuery);
  v17 = a3;
  v18 = sub_191CC68D8();

  v19 = sub_191CC68D8();

  v29 = sub_191BFC2C8;
  v30 = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_191BFC1F0;
  v28 = &block_descriptor_0;
  v20 = _Block_copy(&aBlock);
  v21 = [v16 initWithQueryDescriptors:v18 limit:v14 sortDescriptors:v19 resultsHandler:v20];

  _Block_release(v20);

  [v21 setIncludeAutomaticTimeZones_];
  aBlock = *(a2 + 32);
  v27 = *(a2 + 48);
  v22 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v25);
    v22 = sub_191CC6778();
  }

  v23 = v27;
  [v21 setDebugIdentifier_];

  [v21 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v17 executeQuery_];
}

uint64_t sub_191BFBAAC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_191CC5DD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_191BFAE6C(0, &qword_1EADCA8C0, 0x1E696AEB0);
  (*(v6 + 16))(v8, a1, v5);
  result = sub_191CC6CC8();
  *a3 = result;
  return result;
}

uint64_t sub_191BFBBB8(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5, uint64_t a6)
{
  [a4 stopQuery_];
  if (a2)
  {
    v15 = a2;
    v9 = sub_191CC6978();
    sub_191BF92E0();

    return sub_191C1D248(&v15, a5, v9);
  }

  else
  {
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v11 = v15;
    }

    v15 = v11;
    v12 = a3;
    v13 = sub_191CC6978();
    v14 = sub_191BF92E0();
    return sub_191C1D1B4(&v15, a5, v13, v14, MEMORY[0x1E69E7288]);
  }
}

uint64_t sub_191BFBCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_191CC69B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_191BFBD7C, v6, v8);
}

uint64_t sub_191BFBD7C()
{
  v1 = v0 + 2;
  v2 = v0[11];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_191BFBE34;
  v4 = swift_continuation_init();
  sub_191BF92E0();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_191BFBE34()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_191BFBF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_191BFBFE4;

  return HKSampleQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_191BFBFE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_191BFC0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_191BFC158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191BFC1A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191BFC1F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCA8D0, off_1E7375440);
    v5 = sub_191CC68E8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191BFC39C()
{
  result = qword_1EADCD100;
  if (!qword_1EADCD100)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD100);
  }

  return result;
}

id HKStatisticsCollectionQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKStatisticsCollectionQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKStatisticsCollectionQueryDescriptor.anchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKStatisticsCollectionQueryDescriptor.anchorDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKStatisticsCollectionQueryDescriptor.intervalComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 28);
  v4 = sub_191CC5DC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKStatisticsCollectionQueryDescriptor.intervalComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 28);
  v4 = sub_191CC5DC8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKStatisticsCollectionQueryDescriptor.CacheSettings.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKStatisticsCollectionQueryDescriptor.CacheSettings.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthKit::HKStatisticsCollectionQueryDescriptor::CacheSettings::Mode_optional __swiftcall HKStatisticsCollectionQueryDescriptor.CacheSettings.Mode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_191BFC838()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t sub_191BFC880(uint64_t a1)
{
  v2 = *v1;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  return sub_191CC7508();
}

void *sub_191BFC8C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

HealthKit::HKStatisticsCollectionQueryDescriptor::CacheSettings __swiftcall HKStatisticsCollectionQueryDescriptor.CacheSettings.init(identifier:mode:)(HealthKit::HKStatisticsCollectionQueryDescriptor::CacheSettings identifier, HealthKit::HKStatisticsCollectionQueryDescriptor::CacheSettings::Mode mode)
{
  v3 = *mode;
  *v2 = identifier.identifier;
  *(v2 + 16) = v3;
  identifier.mode = mode;
  return identifier;
}

uint64_t HKStatisticsCollectionQueryDescriptor.cacheSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t HKStatisticsCollectionQueryDescriptor.cacheSettings.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 32);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t HKStatisticsCollectionQueryDescriptor.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 36);

  return sub_191BFCA60(v3, a1);
}

uint64_t sub_191BFCA60(uint64_t a1, uint64_t a2)
{
  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HKStatisticsCollectionQueryDescriptor.dateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 36);

  return sub_191BFCB38(a1, v3);
}

uint64_t sub_191BFCB38(uint64_t a1, uint64_t a2)
{
  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKStatisticsCollectionQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 40);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 HKStatisticsCollectionQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) + 40));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t HKStatisticsCollectionQueryDescriptor.init(predicate:options:anchorDate:intervalComponents:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v12 = &a5[Descriptor[8]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = Descriptor[9];
  v14 = sub_191CC5CF8();
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[Descriptor[10]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = -1;
  *a5 = v9;
  *(a5 + 1) = v10;
  *(a5 + 2) = a2;
  v16 = Descriptor[6];
  v17 = sub_191CC6148();
  (*(*(v17 - 8) + 32))(&a5[v16], a3, v17);
  v18 = Descriptor[7];
  v19 = sub_191CC5DC8();
  v20 = *(*(v19 - 8) + 32);

  return v20(&a5[v18], a4, v19);
}

void sub_191BFCE54(void *a1)
{
  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v7 = v1 + Descriptor[10];
  v8 = *(v7 + 16);
  if (*(v7 + 8))
  {

    v9 = sub_191CC6778();
  }

  else
  {
    v9 = 0;
  }

  [a1 setDebugIdentifier_];

  [a1 setQualityOfService_];

  v10 = v1 + Descriptor[8];
  if (*(v10 + 8))
  {
    v11 = *(v10 + 16);
    v12 = objc_allocWithZone(HKStatisticsCollectionCacheSettings);

    v13 = sub_191CC6778();

    v14 = [v12 initWithIdentifier:v13 mode:v11 & 1];

    [a1 setCacheSettings_];
  }

  sub_191BFCA60(v1 + Descriptor[9], v5);
  v15 = sub_191CC5CF8();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v5, 1, v15) != 1)
  {
    v17 = sub_191CC5C88();
    (*(v16 + 8))(v5, v15);
  }

  [a1 setDateInterval_];
}

uint64_t HKStatisticsCollectionQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191BFD0C0, 0, 0);
}

uint64_t sub_191BFD0C0()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD16C;
  v3 = swift_continuation_init();
  sub_191BFD2AC(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191BFD16C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 80);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

void sub_191BFD2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v9 = objc_allocWithZone(HKStatisticsCollectionQuery);
  v10 = v5;
  v11 = sub_191CC60A8();
  v12 = sub_191CC5D48();
  v13 = [v9 initWithQuantityType:v6 quantitySamplePredicate:v7 options:v8 anchorDate:v11 intervalComponents:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_191BFF950;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [v13 setInitialResultsHandler_];
  _Block_release(v15);
  sub_191BFCE54(v13);
  [v16 executeQuery_];
}

uint64_t sub_191BFD470(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFED28(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v10 = v13;
    }

    sub_191BF92E0();
    swift_allocError();
    *v11 = v10;
    v12 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

void sub_191BFD5BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_191BFD65C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191BFD680, 0, 0);
}

uint64_t sub_191BFD680()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD72C;
  v3 = swift_continuation_init();
  sub_191BFD2AC(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191BFD72C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 112) = *(*v0 + 80);

    return MEMORY[0x1EEE6DFA0](sub_191BFD878, 0, 0);
  }
}

uint64_t HKStatisticsCollectionQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  sub_191BFF890(0, &qword_1EADCA8E0, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191BFD978;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_191BFD978()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_191BFDA6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  sub_191BFF890(0, &qword_1EADCA8E0, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191BFF960;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_191BFDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_191BFDBF4;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_191BFDBF4()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_191CC69B8();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_191BFDD64, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_191BFDD64()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  sub_191BF92E0();
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t HKStatisticsCollectionQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191BFF890(0, &qword_1EADCA8E8, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

uint64_t sub_191BFDE50()
{
  sub_191BFF890(0, &qword_1EADCA8E8, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191BFF620(v0);
}

uint64_t HKStatisticsCollectionQueryDescriptor.results(for:)(uint64_t a1)
{
  v2 = v1;
  sub_191BFF890(0, &qword_1EADCA8F0, MEMORY[0x1E69E8798]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v10 = *(Descriptor - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  sub_191BFE418(v2, &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_191BFE47C(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v16 = sub_191BFE4E0;
  v17 = v13;
  v18 = a1;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  sub_191CC6AF8();
}

id sub_191BFE0B0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
  v28 = v3;
  v4 = *(v3 - 8);
  v27 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - v5;
  v6 = *a2;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v29 = a2;
  type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v10 = objc_allocWithZone(HKStatisticsCollectionQuery);
  v11 = v6;
  v12 = sub_191CC60A8();
  v13 = sub_191CC5D48();
  v14 = [v10 initWithQuantityType:v7 quantitySamplePredicate:v8 options:v9 anchorDate:v12 intervalComponents:v13];

  v25 = *(v4 + 16);
  v15 = v26;
  v16 = v28;
  v25(v26, v30, v28);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v24 = *(v4 + 32);
  v24(v18 + v17, v15, v16);
  v35 = sub_191BFF67C;
  v36 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_191BFD5BC;
  v34 = &block_descriptor_1;
  v19 = _Block_copy(&aBlock);

  [v14 setInitialResultsHandler_];
  _Block_release(v19);
  v25(v15, v30, v16);
  v20 = swift_allocObject();
  v24(v20 + v17, v15, v16);
  v35 = sub_191BFF7DC;
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_191BFE95C;
  v34 = &block_descriptor_55;
  v21 = _Block_copy(&aBlock);

  [v14 setStatisticsUpdateHandler_];
  _Block_release(v21);
  sub_191BFCE54(v14);
  return v14;
}

uint64_t sub_191BFE418(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_191BFE47C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  (*(*(Descriptor - 8) + 32))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_191BFE4E4(uint64_t a1, void *a2, void *a3)
{
  sub_191BFF890(0, &qword_1EADCA960, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if (a2)
  {
    v15 = a2;
    v16 = 0;
    sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
    v10 = a2;
    sub_191CC6A88();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v17 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFED28(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v12 = v15;
    }

    v15 = v12;
    v13 = a3;
    sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191BFE6D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_191BFF890(0, &qword_1EADCA960, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  if (a3)
  {
    if (a2)
    {
      sub_191BFF900(0, qword_1EADCD520, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_191DD0B70;
      *(v12 + 32) = a2;
      v20 = a3;
      v21 = v12;
      sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
      v13 = a3;
      v14 = a2;
    }

    else
    {
      v20 = a3;
      v21 = 0;
      sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
      v18 = a3;
    }

    sub_191CC6A88();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = a4;
    if (!a4)
    {
      type metadata accessor for HKError(0);
      v22 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFED28(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v15 = v20;
    }

    v20 = v15;
    v16 = a4;
    sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

void sub_191BFE95C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(v13, a3, a4, a5);
}

uint64_t sub_191BFEA18(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_191BFF890(0, &qword_1EADCA8F0, MEMORY[0x1E69E8798]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-v10];
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_191BFE418(v4, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_191BFE47C(v14, v16 + v15);
  v19 = sub_191BFF970;
  v20 = v16;
  v21 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8790], v7);
  sub_191CC6AF8();
}

unint64_t sub_191BFEC24()
{
  result = qword_1EADCA8F8;
  if (!qword_1EADCA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCA8F8);
  }

  return result;
}

uint64_t sub_191BFED28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_191BFEDB8(uint64_t a1)
{
  sub_191BFEF28(319, &qword_1EADCA920, sub_191BFEF8C, type metadata accessor for HKSamplePredicate);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKStatisticsOptions(319);
    if (v2 <= 0x3F)
    {
      sub_191CC6148();
      if (v3 <= 0x3F)
      {
        sub_191CC5DC8();
        if (v4 <= 0x3F)
        {
          sub_191BFF900(319, &qword_1EADCA930, &type metadata for HKStatisticsCollectionQueryDescriptor.CacheSettings, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_191BFEF28(319, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_191BFEF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_191BFEF8C()
{
  result = qword_1EADCA928;
  if (!qword_1EADCA928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA928);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_191BFEFEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191BFF034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKStatisticsCollectionQueryDescriptor.CacheSettings.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKStatisticsCollectionQueryDescriptor.CacheSettings.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191BFF1E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191BFF228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191BFF29C(uint64_t a1)
{
  sub_191BFF900(319, &qword_1EADCA938, &type metadata for HKStatisticsCollectionQueryDescriptor.Result, type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191BFF354(uint64_t a1)
{
  sub_191BFF890(319, &qword_1EADCA8E0, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroyTm()
{
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor(0);
  v2 = *(*(Descriptor - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(Descriptor - 1) + 64);

  v5 = Descriptor[6];
  v6 = sub_191CC6148();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = Descriptor[7];
  v8 = sub_191CC5DC8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = Descriptor[9];
  v10 = sub_191CC5CF8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v3 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_191BFF5B0(uint64_t a1)
{
  v3 = *(type metadata accessor for HKStatisticsCollectionQueryDescriptor(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_191BFE0B0(a1, v4);
}

uint64_t sub_191BFF620(uint64_t a1)
{
  v2 = type metadata accessor for HKStatisticsCollectionQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191BFF67C(uint64_t a1, void *a2, void *a3)
{
  sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);

  return sub_191BFE4E4(a1, a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_191C00E88(a2 + 32, a1 + 32);
}

uint64_t objectdestroy_48Tm()
{
  sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_191BFF7DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_191BFF890(0, &qword_1EADCA828, MEMORY[0x1E69E87A0]);

  return sub_191BFE6D0(a1, a2, a3, a4);
}

void sub_191BFF890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BF92E0();
    v7 = a3(a1, &type metadata for HKStatisticsCollectionQueryDescriptor.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_191BFF900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t HKVerifiableClinicalRecordQueryDescriptor.recordTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HKVerifiableClinicalRecordQueryDescriptor.sourceTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void *HKVerifiableClinicalRecordQueryDescriptor.predicate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t HKVerifiableClinicalRecordQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
}

__n128 HKVerifiableClinicalRecordQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t HKVerifiableClinicalRecordQueryDescriptor.init(recordTypes:sourceTypes:predicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[4] = 0;
  a4[5] = -1;
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

uint64_t HKVerifiableClinicalRecordQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  v3 = v1[1];
  *(v2 + 80) = *v1;
  *(v2 + 96) = v3;
  *(v2 + 112) = v1[2];
  return MEMORY[0x1EEE6DFA0](sub_191BFFB50, 0, 0);
}

uint64_t sub_191BFFB50()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_191BFFBF4;
  v2 = swift_continuation_init();
  sub_191BFFD34(v2, v0 + 10, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191BFFBF4()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 128);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

void sub_191BFFD34(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = *(*a2 + 16);
  if (v7)
  {
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v7, 0);
    v8 = aBlock;
    v9 = v6 + 32;
    do
    {
      v10 = sub_191CC67B8();
      *&aBlock = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_191C07DDC((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = aBlock;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 8;
      --v7;
    }

    while (v7);
  }

  v17 = a2[2];
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  v19 = objc_allocWithZone(HKVerifiableClinicalRecordQuery);
  v20 = a3;
  v21 = sub_191CC68D8();

  type metadata accessor for HKVerifiableClinicalRecordSourceType(0);
  v22 = sub_191CC68D8();
  v31 = sub_191C0047C;
  v32 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_191C003D4;
  v30 = &block_descriptor_2;
  v23 = _Block_copy(&aBlock);
  v24 = [v19 initWithRecordTypes:v21 sourceTypes:v22 predicate:v17 resultsHandler:v23];

  _Block_release(v23);

  aBlock = *(a2 + 3);
  v29 = a2[5];
  v25 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v27);
    v25 = sub_191CC6778();
  }

  v26 = v29;
  [v24 setDebugIdentifier_];

  [v24 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v20 executeQuery_];
}

uint64_t sub_191BFFFB8(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v9 = v12;
    }

    sub_191BF92E0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C000D8(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  v4 = v2[1];
  *(v3 + 80) = *v2;
  *(v3 + 96) = v4;
  *(v3 + 112) = v2[2];
  return MEMORY[0x1EEE6DFA0](sub_191C00108, 0, 0);
}

uint64_t sub_191C00108()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_191C001AC;
  v2 = swift_continuation_init();
  sub_191BFFD34(v2, v0 + 10, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C001AC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 152) = *(*v0 + 128);

    return MEMORY[0x1EEE6DFA0](sub_191C002F8, 0, 0);
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_191C00330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C00378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C003D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_191C0049C();
    v5 = sub_191CC68E8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

unint64_t sub_191C0049C()
{
  result = qword_1EADCA968;
  if (!qword_1EADCA968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA968);
  }

  return result;
}

void HKAttachmentStore.addAttachment(to:name:contentType:url:metadata:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_191CC6778();
  v14 = sub_191CC6318();
  v15 = sub_191CC5FD8();
  v16 = sub_191CC6638();
  v18[4] = a7;
  v18[5] = a8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_191C006E0;
  v18[3] = &block_descriptor_3;
  v17 = _Block_copy(v18);

  [v9 addAttachmentToObject:a1 name:v13 contentType:v14 URL:v15 metadata:v16 completion:v17];
  _Block_release(v17);
}

void sub_191C006E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKAttachmentStore.addAttachment(to:name:contentType:url:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  sub_191C00CB8(0);
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C00850, 0, 0);
}

uint64_t sub_191C00850()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v10 = v0[19];
  v11 = v0[25];
  v9 = sub_191CC6778();
  v0[29] = v9;
  v8 = sub_191CC6318();
  v0[30] = v8;
  v4 = sub_191CC5FD8();
  v0[31] = v4;
  v5 = sub_191CC6638();
  v0[32] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_191C00A74;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_191C00D28();
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_191C00DD8;
  v0[13] = &block_descriptor_3;
  [v11 addAttachmentToObject:v10 name:v9 contentType:v8 URL:v4 metadata:v5 completion:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C00A74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_191C00C1C;
  }

  else
  {
    v2 = sub_191C00B84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C00B84()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_191C00C1C()
{
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_191C00CB8(uint64_t a1)
{
  if (!qword_1EADCA970)
  {
    sub_191C00D28();
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCA970);
    }
  }
}

unint64_t sub_191C00D28()
{
  result = qword_1EADCA978;
  if (!qword_1EADCA978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA978);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_191C00DD8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_191C00CB8(0);
    v5 = a3;
    sub_191CC69D8();
  }

  else if (a2)
  {
    sub_191C00CB8(0);
    v6 = a2;
    sub_191CC69E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191C00E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *HKAttachmentStore.dataReader(for:)(void *a1)
{
  type metadata accessor for HKAttachmentDataReader();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = a1;
  v4 = v1;
  v5 = [objc_opt_self() progressWithTotalUnitCount_];
  v3[4] = v5;
  v6 = v5;
  [v6 setCompletedUnitCount_];

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t HKWorkoutRouteQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKWorkoutRouteQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKWorkoutRouteQueryDescriptor.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t HKWorkoutRouteQueryDescriptor.Results.Iterator.locationIterator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKWorkoutRouteQueryDescriptor.Results.Iterator(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKWorkoutRouteQueryDescriptor.Results.Iterator.nextLocationIterator()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  sub_191C02778(0, &qword_1EADCA980, MEMORY[0x1E69E87B8]);
  *v1 = v0;
  v1[1] = sub_191C012B8;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_191C012B8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_191BF92C8;
  }

  else
  {
    v2 = sub_191C013CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_191C01420()
{
  result = qword_1EADCA820;
  if (!qword_1EADCA820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA820);
  }

  return result;
}

uint64_t sub_191C0148C()
{
  v2 = HKWorkoutRouteQueryDescriptor.Results.Iterator.locationIterator.modify();
  v3 = *v1;
  if (!*v1 || (v3 >> 62 ? (v13 = v1, v4 = sub_191CC6EE8(), v1 = v13) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), v5 = v1[1], v5 == v4))
  {
    (v2)(v0 + 2, 0);
    v6 = swift_task_alloc();
    v0[12] = v6;
    sub_191C02778(0, &qword_1EADCA980, MEMORY[0x1E69E87B8]);
    v1 = v7;
    *v6 = v0;
    v6[1] = sub_191C01678;
    v4 = v0 + 10;

    return MEMORY[0x1EEE6DB98](v4, v1);
  }

  v8 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v9 = v1;
    v4 = sub_191C025AC(v1[1], *v1);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      return MEMORY[0x1EEE6DB98](v4, v1);
    }

    v9 = v1;
    v4 = *(v8 + 8 * v5 + 32);
  }

  v10 = v4;
  if (__OFADD__(v5, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9[1] = v5 + 1;
  (v2)(v0 + 2, 0);
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_191C01678()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_191C018E4;
  }

  else
  {
    v2 = sub_191C0178C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_191C0178C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = (v1 + *(type metadata accessor for HKWorkoutRouteQueryDescriptor.Results.Iterator(0) + 20));

  *v3 = v2;
  v3[1] = 0;
  v5 = HKWorkoutRouteQueryDescriptor.Results.Iterator.locationIterator.modify();
  v6 = *v4;
  if (*v4)
  {
    if (v6 >> 62)
    {
      v13 = v4;
      result = sub_191CC6EE8();
      v4 = v13;
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4[1];
    if (v8 != result)
    {
      v10 = *v4;
      if ((*v4 & 0xC000000000000001) != 0)
      {
        v11 = v4;
        result = sub_191C025AC(v4[1], *v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_19:
          __break(1u);
          return result;
        }

        v11 = v4;
        result = *(v10 + 8 * v8 + 32);
      }

      v9 = result;
      if (!__OFADD__(v8, 1))
      {
        v11[1] = v8 + 1;
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  v9 = 0;
LABEL_12:
  (v5)(v0 + 6, 0);
  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_191C018FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_191BFBFE4;

  return HKWorkoutRouteQueryDescriptor.Results.Iterator.next()();
}

uint64_t sub_191C0198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_191C01A20;

  return HKWorkoutRouteQueryDescriptor.Results.Iterator.next()();
}

uint64_t sub_191C01A20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_191CC69B8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_191C01BD0;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_191CC69B8();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v4 + 72) = a1;
    v10 = sub_191C01BAC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

uint64_t sub_191C01BD0()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  sub_191BF92E0();
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t HKWorkoutRouteQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_191C02778(0, &qword_1EADCA988, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  result = type metadata accessor for HKWorkoutRouteQueryDescriptor.Results.Iterator(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_191C01CC4@<X0>(uint64_t a1@<X8>)
{
  sub_191C02778(0, &qword_1EADCA988, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C02CA8(v1);
  result = type metadata accessor for HKWorkoutRouteQueryDescriptor.Results.Iterator(0);
  v4 = (a1 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t HKWorkoutRouteQueryDescriptor.results(for:)(void *a1)
{
  sub_191C02778(0, &qword_1EADCA990, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = a1;
  v17 = sub_191C027F0;
  v18 = v12;
  v19 = a1;
  sub_191C013EC(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v9;
  sub_191CC6AF8();
}

id sub_191C01EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26[1] = a3;
  sub_191C02778(0, &qword_1EADCA810, MEMORY[0x1E69E87A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  (*(v13 + 16))(v26 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v19 = objc_allocWithZone(HKWorkoutRouteQuery);
  aBlock[4] = sub_191C02D04;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C024F0;
  aBlock[3] = &block_descriptor_4;
  v20 = _Block_copy(aBlock);
  v21 = a6;
  v22 = [v19 initWithRoute:a2 dataHandler:v20];
  _Block_release(v20);

  v23 = v22;
  if (a4)
  {

    v24 = sub_191CC6778();
  }

  else
  {
    v24 = 0;
  }

  [v23 setDebugIdentifier_];

  [v23 setQualityOfService_];

  return v23;
}

uint64_t sub_191C0212C(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, void *a6)
{
  sub_191C02778(0, &qword_1EADCA9E8, MEMORY[0x1E69E8780]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a2;
    sub_191C02778(0, &qword_1EADCA810, MEMORY[0x1E69E87A0]);

    sub_191CC6A88();
    result = (*(v13 + 8))(v15, v12);
    if ((a3 & 1) == 0)
    {
      return result;
    }

    [a6 stopQuery_];
    v20 = 0;
  }

  else
  {
    v17 = a4;
    if (!a4)
    {
      type metadata accessor for HKError(0);
      v19 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C02890(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v17 = v20;
    }

    v20 = v17;
    v18 = a4;
    sub_191C02778(0, &qword_1EADCA810, MEMORY[0x1E69E87A0]);
  }

  return sub_191CC6A98();
}

uint64_t sub_191C0235C(void *a1)
{
  sub_191C02778(0, &qword_1EADCA990, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = a1;
  v17 = sub_191C02E00;
  v18 = v12;
  v19 = a1;
  sub_191C013EC(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v9;
  sub_191CC6AF8();
}

uint64_t sub_191C024F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_191C01420();
    v7 = sub_191CC68E8();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_191C025AC(unint64_t a1, unint64_t a2)
{
  sub_191C01420();
  if (a2 >> 62)
  {
    v4 = sub_191CC7178();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_191CC6FC8();
    v6 = 0xD000000000000046;
    v5 = 0x8000000191D2B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_191CC6FC8();
  v5 = 0x8000000191D2B680;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x193B01F90](v6, v5);
  v8 = sub_191CC76A8();
  MEMORY[0x193B01F90](v8);

  MEMORY[0x193B01F90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_191CC76A8();
  MEMORY[0x193B01F90](v9);

  result = sub_191CC7128();
  __break(1u);
  return result;
}

void sub_191C02778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_191C013EC(255);
    v7 = v6;
    v8 = sub_191BF92E0();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191C02890(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_191C02904(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C0294C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191C029B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_191C02A28(uint64_t a1)
{
  sub_191C029B0(319, &qword_1EADCA9A8, sub_191C013EC, type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C02AEC(uint64_t a1)
{
  sub_191C02778(319, &qword_1EADCA980, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    sub_191C029B0(319, &qword_1EADCA9D0, sub_191C02BBC, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C02BBC(uint64_t a1)
{
  if (!qword_1EADCA9D8)
  {
    sub_191C013EC(255);
    sub_191C02890(&qword_1EADCA9E0, sub_191C013EC, MEMORY[0x1E69E6340]);
    v1 = sub_191CC7108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCA9D8);
    }
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_191C02CA8(uint64_t a1)
{
  v2 = type metadata accessor for HKWorkoutRouteQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C02D04(uint64_t a1, void *a2, char a3, void *a4)
{
  sub_191C02778(0, &qword_1EADCA810, MEMORY[0x1E69E87A0]);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_191C0212C(a1, a2, a3, a4, v4 + v11, v12);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKDayIndexRange.init(range:)(uint64_t *a1)
{
  result = *a1;
  if (__OFSUB__(a1[1], result))
  {
    __break(1u);
  }

  return result;
}

uint64_t HKDayIndexRange.last.getter(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = a1 + a2 - 1;
  }

  if (v2 == sub_191CC5BD8())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t HKDayIndexRange.dayIndexClosedRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a1 + a2 - 1;
  }

  result = sub_191CC5BD8();
  if (v5 == result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  else if (v5 < a1)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    *(a3 + 8) = v5;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t HKDayIndexRange.dayIndexClosedRange.setter(uint64_t result)
{
  if (*(result + 16))
  {
    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  v2 = *(result + 8);
  v3 = __OFSUB__(v2, *result);
  v4 = v2 - *result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v3 = __OFADD__(v4, 1);
    v5 = v4 + 1;
    if (!v3)
    {
      *v1 = *result;
      v1[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*HKDayIndexRange.dayIndexClosedRange.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v4 = *v1;
  v3 = v1[1];
  if (v3 <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = *v1 + v3 - 1;
  }

  result = sub_191CC5BD8();
  if (v5 == result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return sub_191C02FEC;
  }

  if (v5 >= v4)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    return sub_191C02FEC;
  }

  __break(1u);
  return result;
}

void *sub_191C02FEC(void *result, char a2)
{
  if (a2)
  {
    if (result[2])
    {
LABEL_8:
      v2 = 0;
      v6 = 0;
LABEL_11:
      v9 = result[3];
      *v9 = v2;
      v9[1] = v6;
      return result;
    }

    v2 = *result;
    v3 = result[1];
    v4 = __OFSUB__(v3, *result);
    v5 = v3 - *result;
    if (v4)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v4 = __OFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v4)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (result[2])
  {
    goto LABEL_8;
  }

  v2 = *result;
  v7 = result[1];
  v4 = __OFSUB__(v7, *result);
  v8 = v7 - *result;
  if (v4)
  {
    goto LABEL_13;
  }

  v4 = __OFADD__(v8, 1);
  v6 = v8 + 1;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t HKDayIndexRange.dayIndexRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a1 + a2 - 1;
  }

  result = sub_191CC5BD8();
  if (v5 == result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return result;
  }

  v7 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else if (v7 >= a1)
  {
    *a3 = a1;
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t HKDayIndexRange.dayIndexRange.setter(uint64_t result)
{
  if (*(result + 16))
  {
    *v1 = 0;
    v1[1] = 0;
  }

  else
  {
    v2 = *(result + 8);
    v3 = __OFSUB__(v2, *result);
    v4 = v2 - *result;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *v1 = *result;
      v1[1] = v4;
    }
  }

  return result;
}

uint64_t *(*HKDayIndexRange.dayIndexRange.modify(uint64_t a1))(uint64_t *result, char a2)
{
  *(a1 + 24) = v1;
  v4 = *v1;
  v3 = v1[1];
  if (v3 <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = *v1 + v3 - 1;
  }

  result = sub_191CC5BD8();
  if (v5 == result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return sub_191C031A0;
  }

  v7 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else if (v7 >= v4)
  {
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    return sub_191C031A0;
  }

  __break(1u);
  return result;
}

uint64_t *sub_191C031A0(uint64_t *result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 16);
  if (a2)
  {
    if (result[2])
    {
LABEL_7:
      v2 = 0;
      v3 = 0;
LABEL_9:
      v7 = result[3];
      *v7 = v2;
      v7[1] = v3;
      return result;
    }

    v4 = result[1];
    v5 = __OFSUB__(v4, v2);
    v3 = v4 - v2;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_7;
  }

  v6 = result[1];
  v5 = __OFSUB__(v6, v2);
  v3 = v6 - v2;
  if (!v5)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t HKDayIndexRange.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  if (a2 <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a1 + a2 - 1;
  }

  result = sub_191CC5BD8();
  if (v5 == result)
  {
    v3 = 0;
    v7 = 1;
LABEL_8:
    *a3 = v3;
    a3[1] = v7;
    a3[2] = v3;
    return result;
  }

  v7 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else if (v7 >= v3)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_191C032D8(uint64_t a1, uint64_t a2)
{
  result = HKDayIndexRange.makeIterator()(a1, a2, &v24);
  v5 = v25;
  v6 = v26;
  if (__OFSUB__(v25, v26))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v3 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v25;
    while (v5 != v6)
    {
      if (v8 < v24)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v8 = v25;
      if (v6 < v24 || v6 >= v25)
      {
        goto LABEL_32;
      }

      v26 = v6 + 1;
      if (!v3)
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_191C03A88();
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 25;
        }

        v16 = v15 >> 3;
        v13[2] = v12;
        v13[3] = 2 * (v15 >> 3);
        v17 = (v13 + 4);
        v18 = v2[3] >> 1;
        if (v2[2])
        {
          v19 = v2 + 4;
          if (v13 != v2 || v17 >= v19 + 8 * v18)
          {
            memmove(v13 + 4, v19, 8 * v18);
          }

          v2[2] = 0;
        }

        v7 = (v17 + 8 * v18);
        v3 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

        v2 = v13;
      }

      v20 = __OFSUB__(v3--, 1);
      if (v20)
      {
        goto LABEL_33;
      }

      *v7++ = v6;
      v6 = v26;
      if (__OFSUB__(v5, v26))
      {
        goto LABEL_26;
      }
    }
  }

  v21 = v2[3];
  if (v21 < 2)
  {
    return v2;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v3);
  v23 = v22 - v3;
  if (!v20)
  {
    v2[2] = v23;
    return v2;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_191C03468(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = HKDayIndexRange.makeIterator()(a4, a5, &v18);
  if (!a2)
  {
LABEL_14:
    a3 = 0;
LABEL_15:
    v10 = v18;
    v11 = v19;
LABEL_18:
    *a1 = v10;
    *(a1 + 16) = v11;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(&v18 + 1);
    v12 = v18;
    v13 = *(&v18 + 1) - v19;
    v14 = v19 - *(&v18 + 1);
    v15 = 1;
    while (1)
    {
      v16 = v9 + v15 - 1;
      if (__OFSUB__(v11, v16))
      {
        break;
      }

      if (v14 + v15 == 1)
      {
        a3 = v13;
        goto LABEL_18;
      }

      if (v11 < v12)
      {
        goto LABEL_20;
      }

      if (v16 >= v11 || v9 < v12)
      {
        goto LABEL_21;
      }

      *a2 = v16;
      if (a3 == v15)
      {
        v11 = v9 + v15;
        goto LABEL_18;
      }

      ++a2;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_191C03564(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_191CC6EA8();
  sub_191C03ADC();
  sub_191C03B28(&qword_1EADCAA38, sub_191C03ADC, MEMORY[0x1E69E81B8]);
  result = sub_191CC6B78();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_191CC6F18())
      {
        goto LABEL_30;
      }

      sub_191C03ADC();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t _sSo15HKDayIndexRangea9HealthKitE06closedC0ABSNyAC03DayB0VG_tcfC_0(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFADD__(v5, 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_191C03800(uint64_t a1)
{
  if (!qword_1EADCA9F8)
  {
    sub_191C03864(255);
    sub_191C03914();
    v1 = sub_191CC7108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCA9F8);
    }
  }
}

void sub_191C03864(uint64_t a1)
{
  if (!qword_1EADCAA00)
  {
    sub_191C038C0();
    v1 = sub_191CC6C68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAA00);
    }
  }
}

unint64_t sub_191C038C0()
{
  result = qword_1EADCAA08;
  if (!qword_1EADCAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA08);
  }

  return result;
}

unint64_t sub_191C03914()
{
  result = qword_1EADCAA10;
  if (!qword_1EADCAA10)
  {
    sub_191C03864(255);
    sub_191C03994();
    sub_191C039E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA10);
  }

  return result;
}

unint64_t sub_191C03994()
{
  result = qword_1EADCAA18;
  if (!qword_1EADCAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA18);
  }

  return result;
}

unint64_t sub_191C039E8()
{
  result = qword_1EADCAA20;
  if (!qword_1EADCAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA20);
  }

  return result;
}

double keypath_getTm@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, void, void)@<X3>, uint64_t a3@<X8>)
{
  a2(&v6, *a1, a1[1]);
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

void sub_191C03A88()
{
  if (!qword_1EADCAA28)
  {
    v0 = sub_191CC73A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAA28);
    }
  }
}

unint64_t sub_191C03ADC()
{
  result = qword_1EADCAA30;
  if (!qword_1EADCAA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCAA30);
  }

  return result;
}

uint64_t sub_191C03B28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKQueryAttributes.init(debugIdentifier:qualityOfService:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id HKQuery.setAttributes(_:)(void *a1)
{
  v2 = a1[2];
  if (a1[1])
  {
    v3 = sub_191CC6778();
  }

  else
  {
    v3 = 0;
  }

  [v1 setDebugIdentifier_];

  return [v1 setQualityOfService_];
}

void *sub_191C03C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a1;
  v9[2] = a2;
  type metadata accessor for HKSamplePredicate(255, a2, a3, a4);
  v4 = sub_191CC6978();
  v5 = sub_191C04110();
  WitnessTable = swift_getWitnessTable();
  return sub_191C69C84(sub_191C040AC, v9, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t static HKQuery.effectiveLimit(for:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t HKQueryAttributes.debugIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKQueryAttributes.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKQueryAttributes.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_191CC74E8();
    sub_191CC67E8();
  }

  else
  {
    sub_191CC74E8();
  }

  return MEMORY[0x193B02C70](v2);
}

uint64_t HKQueryAttributes.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_191CC74C8();
  sub_191CC74E8();
  if (v1)
  {
    sub_191CC67E8();
  }

  MEMORY[0x193B02C70](v2);
  return sub_191CC7508();
}

uint64_t sub_191C03E7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_191CC74C8();
  sub_191CC74E8();
  if (v1)
  {
    sub_191CC67E8();
  }

  MEMORY[0x193B02C70](v2);
  return sub_191CC7508();
}

uint64_t sub_191C03EFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_191CC74E8();
    sub_191CC67E8();
  }

  else
  {
    sub_191CC74E8();
  }

  return MEMORY[0x193B02C70](v2);
}

uint64_t sub_191C03F60(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_191CC74C8();
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  MEMORY[0x193B02C70](v3);
  return sub_191CC7508();
}

BOOL _s9HealthKit17HKQueryAttributesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_191CC73E8() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

unint64_t sub_191C04048()
{
  result = qword_1EADCAA40;
  if (!qword_1EADCAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA40);
  }

  return result;
}

id sub_191C040AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HKSamplePredicate(0, v6, a3, a4);
  result = [objc_allocWithZone(HKQueryDescriptor) initWithSampleType:v7 predicate:v8];
  *a2 = result;
  return result;
}

unint64_t sub_191C04110()
{
  result = qword_1EADCA8C8;
  if (!qword_1EADCA8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA8C8);
  }

  return result;
}

uint64_t sub_191C04174(uint64_t a1)
{
  v2 = sub_191C04354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C041B0(uint64_t a1)
{
  v2 = sub_191C04354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKBaseObject.encode(to:)(void *a1)
{
  sub_191C042F8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C04354();
  sub_191CC7548();
  return (*(v4 + 8))(v6, v3);
}

void sub_191C042F8(uint64_t a1)
{
  if (!qword_1EADCAA48)
  {
    sub_191C04354();
    v1 = sub_191CC7378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAA48);
    }
  }
}

unint64_t sub_191C04354()
{
  result = qword_1EADCAA50;
  if (!qword_1EADCAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA50);
  }

  return result;
}

uint64_t sub_191C043F8(void *a1)
{
  sub_191C042F8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C04354();
  sub_191CC7548();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_191C04528()
{
  result = qword_1EADCAA58;
  if (!qword_1EADCAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA58);
  }

  return result;
}

unint64_t sub_191C04580()
{
  result = qword_1EADCAA60;
  if (!qword_1EADCAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA60);
  }

  return result;
}

uint64_t HKHeartbeatSeriesQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKHeartbeatSeriesQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKHeartbeatSeriesQueryDescriptor.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

HealthKit::HKHeartbeatSeriesQueryDescriptor::Heartbeat __swiftcall HKHeartbeatSeriesQueryDescriptor.Heartbeat.init(timeIntervalSinceStart:precededByGap:)(Swift::Double timeIntervalSinceStart, Swift::Bool precededByGap)
{
  *v2 = timeIntervalSinceStart;
  *(v2 + 8) = precededByGap;
  result.timeIntervalSinceStart = timeIntervalSinceStart;
  result.precededByGap = precededByGap;
  return result;
}

uint64_t static HKHeartbeatSeriesQueryDescriptor.Heartbeat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t HKHeartbeatSeriesQueryDescriptor.Heartbeat.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B02C90](*&v1);
  return sub_191CC74E8();
}

uint64_t HKHeartbeatSeriesQueryDescriptor.Heartbeat.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193B02C90](*&v2);
  sub_191CC74E8();
  return sub_191CC7508();
}

uint64_t sub_191C047BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C047F0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B02C90](*&v1);
  return sub_191CC74E8();
}

uint64_t sub_191C04840(uint64_t a1)
{
  v2 = *v1;
  sub_191CC74C8();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193B02C90](*&v3);
  sub_191CC74E8();
  return sub_191CC7508();
}

uint64_t HKHeartbeatSeriesQueryDescriptor.Results.Iterator.heartbeatIterator.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results.Iterator(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_191C04918(v4, v5);
}

uint64_t sub_191C04918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_191C0492C(a1, a2);
  }

  return a1;
}

uint64_t sub_191C0492C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 HKHeartbeatSeriesQueryDescriptor.Results.Iterator.heartbeatIterator.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results.Iterator(0) + 20);
  sub_191C049C4(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t sub_191C049C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_191C049D8(a1, a2);
  }

  return a1;
}

uint64_t sub_191C049D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t HKHeartbeatSeriesQueryDescriptor.Results.Iterator.nextHeartbeatIterator()(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  sub_191C06398(0, &qword_1EADCAA68, MEMORY[0x1E69E87B8]);
  *v2 = v1;
  v2[1] = sub_191C04B38;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_191C04B38()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_191C04D14;
  }

  else
  {
    v2 = sub_191C04C4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C04C4C()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0;
    v1 = 0xF000000000000000;
  }

  else
  {
    v2 = v0[2];
    sub_191C0492C(v2, v0[3]);
    v4 = sub_191CC6028();
    v3 = HKHeartbeatSeriesDatumCountFromData(v4);

    sub_191C049C4(v2, v1);
  }

  v5 = v0[4];
  *v5 = v2;
  v5[1] = v1;
  v5[2] = v3;
  v5[3] = 0;
  v6 = v0[1];

  return v6();
}

uint64_t HKHeartbeatSeriesQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C04D4C, 0, 0);
}

uint64_t sub_191C04D4C()
{
  v2 = HKHeartbeatSeriesQueryDescriptor.Results.Iterator.heartbeatIterator.modify();
  if (v1[1] >> 60 == 15 || (v3 = v1[3], v3 >= v1[2]))
  {
    (v2)(v0 + 2, 0);
    v12 = swift_task_alloc();
    v0[14] = v12;
    sub_191C06398(0, &qword_1EADCAA68, MEMORY[0x1E69E87B8]);
    *v12 = v0;
    v12[1] = sub_191C04F00;

    return MEMORY[0x1EEE6DB98](v0 + 10, v13);
  }

  else
  {
    v4 = v0[12];
    v5 = v1;
    v6 = sub_191CC6028();
    v7 = HKHeartbeatSeriesDatumAtIndex(v6, v3);
    v9 = v8;

    v5[3] = v3 + 1;
    (v2)(v0 + 2, 0);
    *v4 = v7;
    *(v4 + 8) = v9 & 1;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_191C04F00()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_191C05168;
  }

  else
  {
    v2 = sub_191C05014;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C05014()
{
  v1 = v0[11];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0;
    v1 = 0xF000000000000000;
  }

  else
  {
    v2 = v0[10];
    sub_191C0492C(v2, v0[11]);
    v4 = sub_191CC6028();
    v3 = HKHeartbeatSeriesDatumCountFromData(v4);

    sub_191C049C4(v2, v1);
  }

  v5 = v0[13];
  v6 = (v5 + *(type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results.Iterator(0) + 20));
  sub_191C049C4(*v6, v6[1]);
  *v6 = v2;
  v6[1] = v1;
  v6[2] = v3;
  v6[3] = 0;
  v7 = HKHeartbeatSeriesQueryDescriptor.Results.Iterator.heartbeatIterator.modify();
  v9 = v0[12];
  if (*(v8 + 8) >> 60 == 15)
  {
    (v7)(v0 + 6, 0);
    *v9 = 0;
    *(v9 + 8) = 2;
  }

  else
  {
    *&v10 = HKHeartbeatSeriesQueryDescriptor.Results.HeartbeatIterator.next()();
    (v7)(v0 + 6, 0, v10);
  }

  v11 = v0[1];

  return v11();
}

HealthKit::HKHeartbeatSeriesQueryDescriptor::Heartbeat_optional __swiftcall HKHeartbeatSeriesQueryDescriptor.Results.HeartbeatIterator.next()()
{
  v2 = v0;
  v3 = *(v1 + 24);
  if (v3 >= *(v1 + 16))
  {
    v5 = 0;
    v10 = 2;
  }

  else
  {
    v4 = sub_191CC6028();
    v5 = HKHeartbeatSeriesDatumAtIndex(v4, v3);
    v7 = v6;

    v10 = v7 & 1;
    *(v1 + 24) = v3 + 1;
  }

  *v2 = v5;
  *(v2 + 8) = v10;
  result.value.timeIntervalSinceStart = v9;
  result.value.precededByGap = v8;
  return result;
}

uint64_t sub_191C051FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_191BFD978;

  return HKHeartbeatSeriesQueryDescriptor.Results.Iterator.next()(a1);
}

uint64_t sub_191C05294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_191BFDBF4;

  return HKHeartbeatSeriesQueryDescriptor.Results.Iterator.next()(a1);
}

double HKHeartbeatSeriesQueryDescriptor.Results.makeAsyncIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_191C06398(0, &qword_1EADCAA70, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  v2 = a1 + *(type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results.Iterator(0) + 20);
  result = 0.0;
  *v2 = xmmword_191DD1380;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  return result;
}

uint64_t sub_191C053AC(uint64_t a1, uint64_t a2)
{
  sub_191C0603C(0, &qword_1EADCAA78, MEMORY[0x1E6969080], type metadata accessor for HKQueryAsyncStream);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_191C05434@<D0>(uint64_t a1@<X8>)
{
  sub_191C06398(0, &qword_1EADCAA70, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C0616C(v1);
  v3 = a1 + *(type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results.Iterator(0) + 20);
  result = 0.0;
  *v3 = xmmword_191DD1380;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  return result;
}

uint64_t HKHeartbeatSeriesQueryDescriptor.results(for:)(void *a1)
{
  sub_191C06398(0, &qword_1EADCAA80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = a1;
  v17 = sub_191C058A0;
  v18 = v12;
  v19 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v8;
  sub_191CC6AF8();
}

id sub_191C05634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26[1] = a3;
  sub_191C06398(0, &qword_1EADCA808, MEMORY[0x1E69E87A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  (*(v13 + 16))(v26 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v19 = objc_allocWithZone(HKHeartbeatSeriesQuery);
  aBlock[4] = sub_191C061C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C062B0;
  aBlock[3] = &block_descriptor_5;
  v20 = _Block_copy(aBlock);
  v21 = a6;
  v22 = [v19 initWithHeartbeatSeries:a2 bufferHandler:v20];
  _Block_release(v20);

  v23 = v22;
  if (a4)
  {

    v24 = sub_191CC6778();
  }

  else
  {
    v24 = 0;
  }

  [v23 setDebugIdentifier_];

  [v23 setQualityOfService_];

  return v23;
}

uint64_t sub_191C058A4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, uint64_t a6, void *a7)
{
  sub_191C06398(0, &qword_1EADCAAC8, MEMORY[0x1E69E8780]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  if (a3 >> 60 == 15)
  {
    v18 = a5;
    if (!a5)
    {
      type metadata accessor for HKError(0);
      v24 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C05D64(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v18 = v22;
    }

    v22 = v18;
    v19 = a5;
    sub_191C06398(0, &qword_1EADCA808, MEMORY[0x1E69E87A0]);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_191C0492C(a2, a3);
    sub_191C06398(0, &qword_1EADCA808, MEMORY[0x1E69E87A0]);
    sub_191CC6A88();
    result = (*(v15 + 8))(v17, v14);
    if ((a4 & 1) == 0)
    {
      return result;
    }

    [a7 stopQuery_];
    v22 = 0;
  }

  return sub_191CC6A98();
}

uint64_t sub_191C05AE4(void *a1)
{
  sub_191C06398(0, &qword_1EADCAA80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = a1;
  v17 = sub_191C0640C;
  v18 = v12;
  v19 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v8;
  sub_191CC6AF8();
}

unint64_t sub_191C05C80()
{
  result = qword_1EADCAA88;
  if (!qword_1EADCAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA88);
  }

  return result;
}

uint64_t sub_191C05D64(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HKHeartbeatSeriesQueryDescriptor.Heartbeat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HKHeartbeatSeriesQueryDescriptor.Heartbeat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_191C05EC0(uint64_t a1)
{
  sub_191C0603C(319, &qword_1EADCAA78, MEMORY[0x1E6969080], type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C05F78(uint64_t a1)
{
  sub_191C06398(319, &qword_1EADCAA68, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    sub_191C0603C(319, &qword_1EADCAAC0, &type metadata for HKHeartbeatSeriesQueryDescriptor.Results.HeartbeatIterator, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C0603C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_191C060A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_191C060FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_191C0616C(uint64_t a1)
{
  v2 = type metadata accessor for HKHeartbeatSeriesQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C061C8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_191C06398(0, &qword_1EADCA808, MEMORY[0x1E69E87A0]);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = *(v5 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_191C058A4(a1, a2, a3, a4, a5, v5 + v13, v14);
}

uint64_t sub_191C062B0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {

    v10 = a2;
    v11 = v7;
    v7 = sub_191CC6048();
    v13 = v12;
  }

  else
  {

    v14 = a2;
    v13 = 0xF000000000000000;
  }

  v15 = a5;
  v9(a2, v7, v13, a4, a5);

  sub_191C049C4(v7, v13);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_191C06398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BF92E0();
    v7 = a3(a1, MEMORY[0x1E6969080], v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id static HKSamplePredicate.stateOfMind(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_191BFAE6C(0, &qword_1EADCAAD0, off_1E7375460);
  *a2 = [swift_getObjCClassFromMetadata() stateOfMindType];
  a2[1] = a1;

  return a1;
}

id HKStateOfMindValenceClassification.init(valence:)(double a1)
{
  v1 = HKStateOfMindValenceClassificationForValence(a1);
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

char *static HKStateOfMindLabel.optionsForValence(_:)(double a1)
{
  v1 = HKStateOfMindLabelOptionsForValence(a1);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v2 = sub_191CC68E8();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B02790](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_191C07870(0, *(v5 + 2) + 1, 1, v5, &qword_1EADCAB58, type metadata accessor for Label);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_191C07870((v10 > 1), v11 + 1, 1, v5, &qword_1EADCAB58, type metadata accessor for Label);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

id HKStateOfMind.init(date:kind:valence:labels:associations:metadata:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a5;
  v33 = a2;
  v10 = sub_191CC6148();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v34 = v15;
  v35 = a1;
  v14(v13, a1);
  v31 = sub_191CC60A8();
  v16 = *(a3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_191CC7098();
    v18 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v18 += 8;
      --v16;
    }

    while (v16);
  }

  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v19 = sub_191CC68D8();

  v20 = *(a4 + 16);
  if (v20)
  {
    v36 = v17;
    sub_191CC7098();
    v21 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v22 = sub_191CC68D8();

  if (v32)
  {
    v23 = sub_191CC6638();
  }

  else
  {
    v23 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v31;
  v26 = [ObjCClassFromMetadata stateOfMindWithDate:v31 kind:v33 valence:v19 labels:v22 associations:0 context:v23 metadata:a6];

  v27 = *(v11 + 8);
  v28 = v34;
  v27(v35, v34);
  v27(v13, v28);
  return v26;
}

id HKStateOfMind.init(date:kind:valence:labels:associations:context:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v13 = sub_191CC60A8();
  v14 = *(a3 + 16);
  if (v14)
  {
    sub_191CC7098();
    v15 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v16 = sub_191CC68D8();

  v17 = *(a4 + 16);
  if (v17)
  {
    v27 = a2;
    v18 = v13;
    v19 = a1;
    sub_191CC7098();
    v20 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v20 += 8;
      --v17;
    }

    while (v17);

    a1 = v19;
    v13 = v18;
    a2 = v27;
  }

  else
  {
  }

  v21 = sub_191CC68D8();

  if (!a6)
  {
    v22 = 0;
    if (a7)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = sub_191CC6778();

  if (!a7)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_191CC6638();

LABEL_14:
  v24 = [swift_getObjCClassFromMetadata() stateOfMindWithDate:v13 kind:a2 valence:v16 labels:v21 associations:v22 context:v23 metadata:a8];

  v25 = sub_191CC6148();
  (*(*(v25 - 8) + 8))(a1, v25);
  return v24;
}

id HKStateOfMind.init(date:reflectiveInterval:valence:labels:domains:context:metadata:)(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v47 = a7;
  v45 = a6;
  v12 = sub_191CC6148();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v49 = v17;
  v50 = a1;
  v16(v15, a1);
  HKStateOfMindKindFromReflectiveInterval();
  v46 = v18;
  v19 = *(a5 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_191C07E58(0, v19, 0);
    v21 = 32;
    v22 = v51;
    do
    {
      HKStateOfMindAssociationFromDomain();
      v51 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = v23;
        sub_191C07E58((v24 > 1), v25 + 1, 1);
        v23 = v26;
        v22 = v51;
      }

      *(v22 + 16) = v25 + 1;
      *(v22 + 8 * v25 + 32) = v23;
      v21 += 8;
      --v19;
    }

    while (v19);

    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v27 = sub_191CC60A8();
  v28 = *(a4 + 16);
  if (v28)
  {
    v51 = v20;
    sub_191CC7098();
    v29 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v29 += 8;
      --v28;
    }

    while (v28);

    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v30 = sub_191CC68D8();

  v31 = *(v22 + 16);
  if (v31)
  {
    v44 = v13;
    v32 = v15;
    v33 = v27;
    v51 = v20;
    sub_191CC7098();
    v34 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v34 += 8;
      --v31;
    }

    while (v31);

    v27 = v33;
    v15 = v32;
    v13 = v44;
  }

  else
  {
  }

  v35 = sub_191CC68D8();

  if (v47)
  {
    v36 = sub_191CC6778();
  }

  else
  {
    v36 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = sub_191CC6638();

  v39 = [ObjCClassFromMetadata stateOfMindWithDate:v27 kind:v46 valence:v30 labels:v35 associations:v36 context:v38 metadata:a2];

  v40 = *(v13 + 8);
  v41 = v49;
  v40(v50, v49);
  v40(v15, v41);
  return v39;
}

char *sub_191C07174(SEL *a1, unint64_t *a2, unint64_t a3)
{
  v6 = [v3 *a1];
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v7 = sub_191CC68E8();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v16 = a2;
    v17 = a3;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193B02790](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      a2 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v11 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_191C07870(0, *(v10 + 2) + 1, 1, v10, v16, v17);
      }

      a3 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (a3 >= v14 >> 1)
      {
        v10 = sub_191C07870((v14 > 1), a3 + 1, 1, v10, v16, v17);
      }

      *(v10 + 2) = a3 + 1;
      *&v10[8 * a3 + 32] = v13;
      ++v9;
      if (a2 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v10;
}

uint64_t sub_191C07360(uint64_t (*a1)(void), uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = a1();
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v4 = sub_191CC68E8();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_191CC6EE8();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = a2(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193B02790](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = *(v14 + 16);
      v12 = *(v14 + 24);
      if (v13 >= v12 >> 1)
      {
        a2(v12 > 1, v13 + 1, 1);
      }

      ++v7;
      *(v14 + 16) = v13 + 1;
      *(v14 + 8 * v13 + 32) = v11;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

char *HKStateOfMindDomainCategory.domains.getter(uint64_t a1)
{
  v1 = HKStateOfMindDomainsInCategory(a1);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v2 = sub_191CC68E8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_191CC6EE8();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_191C07E94(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v12;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193B02790](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_191C07E94((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

char *sub_191C0775C(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C08610(0, &qword_1EADCAB18, sub_191C08558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_191C07870(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_191C08610(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_191C07970(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C0850C(0, &qword_1EADCAB08, &type metadata for SleepClockTime);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_191C07A90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_191C08610(0, &qword_1EADCAB00, type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result);
  v10 = *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_191C07C98(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C0850C(0, &qword_1EADCAAE8, MEMORY[0x1E69E69B8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_191C07DDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C07FC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_191C07DFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C080D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_191C07E1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08224(a1, a2, a3, *v3, &qword_1EADCAB58, type metadata accessor for Label);
  *v3 = result;
  return result;
}

char *sub_191C07E58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08224(a1, a2, a3, *v3, &qword_1EADCAB50, type metadata accessor for Association);
  *v3 = result;
  return result;
}

char *sub_191C07E94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08224(a1, a2, a3, *v3, &qword_1EADCAB48, type metadata accessor for __HKStateOfMindDomain);
  *v3 = result;
  return result;
}

char *sub_191C07ED0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08224(a1, a2, a3, *v3, &qword_1EADCAB40, type metadata accessor for __HKStateOfMindDomainCategory);
  *v3 = result;
  return result;
}

unint64_t sub_191C07F0C()
{
  result = qword_1EADCAAD8;
  if (!qword_1EADCAAD8)
  {
    type metadata accessor for __HKStateOfMindDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAAD8);
  }

  return result;
}

void *sub_191C07F64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_191C07F84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_191C08224(a1, a2, a3, *v3, &qword_1EADCAAF0, type metadata accessor for HKCategoryValueSleepAnalysis);
  *v3 = result;
  return result;
}

char *sub_191C07FC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C0850C(0, &qword_1EADCAB10, MEMORY[0x1E69E6158]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_191C080D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_191C08610(0, &qword_1EADCAB28, sub_191C085B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_191C085B0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_191C08224(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_191C08610(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_191C08324(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_191C08610(0, &qword_1EADCAB38, type metadata accessor for UserDomainConceptLinkStruct);
  v10 = *(type metadata accessor for UserDomainConceptLinkStruct(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UserDomainConceptLinkStruct(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_191C0850C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_191CC73A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_191C08558()
{
  if (!qword_1EADCAB20)
  {
    v0 = sub_191CC6C68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAB20);
    }
  }
}

void sub_191C085B0()
{
  if (!qword_1EADCAB30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCAB30);
    }
  }
}

void sub_191C08610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_191CC73A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HKStatisticsQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKStatisticsQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKStatisticsQueryDescriptor.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor(0) + 24);

  return sub_191BFCA60(v3, a1);
}

uint64_t type metadata accessor for HKStatisticsQueryDescriptor(uint64_t a1)
{
  result = qword_1EADCAB60;
  if (!qword_1EADCAB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKStatisticsQueryDescriptor.dateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor(0) + 24);

  return sub_191BFCB38(a1, v3);
}

uint64_t HKStatisticsQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKStatisticsQueryDescriptor(0) + 28);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 HKStatisticsQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for HKStatisticsQueryDescriptor(0) + 28));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t HKStatisticsQueryDescriptor.init(predicate:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor(0);
  v8 = *(Descriptor + 24);
  v9 = sub_191CC5CF8();
  result = (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v11 = &a3[*(Descriptor + 28)];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = -1;
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 2) = a2;
  return result;
}

uint64_t HKStatisticsQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C089FC, 0, 0);
}

uint64_t sub_191C089FC()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD16C;
  v3 = swift_continuation_init();
  sub_191C08AA8(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191C08AA8(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = a2[1];
  v11 = a2[2];
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  v13 = objc_allocWithZone(HKStatisticsQuery);
  aBlock[4] = sub_191C09190;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = [v13 initWithQuantityType:v9 quantitySamplePredicate:v10 options:v11 completionHandler:v14];
  _Block_release(v14);

  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor(0);
  v18 = a2 + *(Descriptor + 28);
  v19 = *(v18 + 2);
  if (*(v18 + 1))
  {

    v20 = sub_191CC6778();
  }

  else
  {
    v20 = 0;
  }

  [v16 setDebugIdentifier_];

  [v16 setQualityOfService_];

  sub_191BFCA60(a2 + *(Descriptor + 24), v8);
  v21 = sub_191CC5CF8();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v8, 1, v21) != 1)
  {
    v23 = sub_191CC5C88();
    (*(v22 + 8))(v8, v21);
  }

  [v16 _setDateInterval_];

  [v15 executeQuery_];
}

void sub_191C08D9C(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    v8 = a2;

    swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      type metadata accessor for Code(0);
      v9 = a3;
      sub_191C091B0(&qword_1EADCA688, type metadata accessor for Code, &unk_191DD08B0);
      if (sub_191CC5EA8())
      {
        **(*(a5 + 64) + 40) = 0;
        swift_continuation_throwingResume();

        return;
      }

      sub_191BF92E0();
      swift_allocError();
      *v11 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C091B0(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      sub_191BF92E0();
      swift_allocError();
      *v10 = v12;
    }

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C08F94(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C08FB8, 0, 0);
}

uint64_t sub_191C08FB8()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD72C;
  v3 = swift_continuation_init();
  sub_191C08AA8(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191C0908C(uint64_t a1)
{
  sub_191BFEF28(319, &qword_1EADCA920, sub_191BFEF8C, type metadata accessor for HKSamplePredicate);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKStatisticsOptions(319);
    if (v2 <= 0x3F)
    {
      sub_191BFEF28(319, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C091B0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HKActivitySummaryQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HKActivitySummaryQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKActivitySummaryQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKActivitySummaryQueryDescriptor.init(predicate:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t HKActivitySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  v3 = v1[1];
  *(v2 + 144) = *v1;
  *(v2 + 160) = v3;
  return MEMORY[0x1EEE6DFA0](sub_191C09320, 0, 0);
}

uint64_t sub_191C09320()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[20];
  v8 = v1[17];
  v7 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191BFFBF4;
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = objc_allocWithZone(HKActivitySummaryQuery);
  v1[14] = sub_191C0966C;
  v1[15] = v10;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C09FF0;
  v1[13] = &block_descriptor_7;
  v12 = _Block_copy(v4);
  v13 = v8;
  v14 = [v11 initWithPredicate:v7 resultsHandler:v12];
  _Block_release(v12);

  if (v6)
  {

    v15 = sub_191CC6778();
  }

  else
  {
    v15 = 0;
  }

  v16 = v1[21];
  v17 = v1[17];
  [v14 setDebugIdentifier_];

  [v14 setQualityOfService_];

  [v17 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v3);
}