id _DMTLogOperation(uint64_t a1)
{
  if (_DMTLogOperation_onceToken != -1)
  {
    _DMTLogOperation_cold_1();
  }

  v2 = _DMTLogOperation_logObj;

  return v2;
}

id DMTValidateProfileArray(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFArrayGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

uint64_t DMTValidateProfileBoolean(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [a1 objectForKeyedSubscript:v9];
  v11 = v10;
  if (!v10)
  {
    if (a3)
    {
      goto LABEL_12;
    }

    if (a5)
    {
      v19 = @"kDMTInvalidConfigurationProfileValueErrorKey";
      v20[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = 70;
LABEL_10:
      *a5 = DMTErrorWithCodeAndUserInfo(v15, v14);
    }

LABEL_11:
    a4 = 0;
    goto LABEL_12;
  }

  v12 = CFGetTypeID(v10);
  if (v12 != CFNumberGetTypeID())
  {
    v13 = CFGetTypeID(v11);
    if (v13 != CFBooleanGetTypeID())
    {
      if (a5)
      {
        v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
        v18 = v9;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v15 = 71;
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  a4 = BooleanValueForObject(v11);
LABEL_12:

  return a4;
}

id DMTValidateProfileData(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDataGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

id DMTValidateProfileDate(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDateGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

id DMTValidateProfileDictionary(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

id DMTValidateProfileNumber(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

id DMTValidateProfileString(void *a1, void *a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v15 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v17 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

id DMTLocalizedOrganizationMarketingNameForOrganizationType(uint64_t a1, uint64_t a2)
{
  v3 = DMTBundle();
  v4 = v3;
  if ((a1 - 1) > 2)
  {
    v5 = @"Apple School Manager, Apple Business Manager or Apple Business Essentials";
  }

  else
  {
    v5 = off_278F5E2F8[a1 - 1];
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285B54748 table:0];

  return v6;
}

id DMTFormattedEnrollmentOrganizationNameFrom(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"“%@”", a1];
  }

  else
  {
    v3 = DMTBundle();
    v2 = [v3 localizedStringForKey:@"your organization" value:&stru_285B54748 table:0];
  }

  return v2;
}

id DMTTitleTextAddingDeviceFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Adding iPhone…";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Adding iPad…";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Adding Apple Vision Pro…";
    }

    else
    {
      v4 = @"Adding…";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTCompletionButtonTitleForDeviceClass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Erase iPhone";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Erase iPad";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Erase Apple Vision Pro…";
    }

    else
    {
      v4 = @"Erase Device";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextAddingDeviceBodyFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone will be added to %@ in %@.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad will be added to %@ in %@.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro will be added to %@ in %@.";
    }

    else
    {
      v4 = @"This device will be added to %@ in %@.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTSuccessfulEnrollmentTitleTextForDeviceClass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"iPhone Added";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"iPad Added";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Apple Vision Pro Added";
    }

    else
    {
      v4 = @"Device Added";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextSuccessfulEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone has been added to %@.\n\nAssign this iPhone to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad has been added to %@.\n\nAssign this iPad to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro has been added to %@.\n\nAssign this iPad to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
    }

    else
    {
      v4 = @"This device has been added to %@.\n\nAssign this device to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextSuccessfulEnrollmentWithMDMServerFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone has been added to %@.\n\nThis iPhone has been assigned to device management service “%@” in %@.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad has been added to %@.\n\nThis iPad has been assigned to device management service “%@” in %@.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro has been added to %@.\n\nThis Apple Vision Pro has been assigned to device management service “%@” in %@.";
    }

    else
    {
      v4 = @"This device has been added to %@.\n\nThis device has been assigned to device management service “%@” in %@.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTTitleTextFailureEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Failed to Add iPhone";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Failed to Add iPad";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Failed to Add Apple Vision Pro";
    }

    else
    {
      v4 = @"Failed to Add Device";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextFailureEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"There was a problem adding this iPhone. Tap Erase iPhone to try again.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"There was a problem adding this iPad. Tap Erase iPad to try again.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"There was a problem adding this Apple Vision Pro. Double-click Digital Crown to erase Apple Vision Pro to try again.";
    }

    else
    {
      v4 = @"There was a problem adding this device. Tap Erase device to try again.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id _DMTLogGeneral(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken != -1)
  {
    _DMTLogGeneral_cold_1();
  }

  v2 = _DMTLogGeneral_logObj;

  return v2;
}

void sub_24891FD4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2489202CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892085C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248920C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_0(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_0 != -1)
  {
    _DMTLogGeneral_cold_1_0();
  }

  v2 = _DMTLogGeneral_logObj_0;

  return v2;
}

void sub_2489244D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248924DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_1(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_5 != -1)
  {
    _DMTLogGeneral_cold_1_1();
  }

  v2 = _DMTLogGeneral_logObj_5;

  return v2;
}

void sub_2489253BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v10 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id DMTDescriptionKeyFormattedString(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:a2];

  return v5;
}

id DMTErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (DMTErrorWithCodeAndUserInfo_onceToken != -1)
  {
    DMTErrorWithCodeAndUserInfo_cold_1();
  }

  v6 = DMTisWAPI(v3, v4);
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 objectForKeyedSubscript:@"NSDescriptionKey"];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (a1 > 89)
  {
    switch(a1)
    {
      case 'Z':
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Task server invalidated.";
        break;
      case '[':
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Client Disconnected";
        break;
      case 'd':
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device has already been added to a different organization";
        break;
      default:
LABEL_5:
        v10 = v5;
        goto LABEL_47;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"An unknown error occurred";
        goto LABEL_45;
      case 2:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"A parameter was invalid";
        goto LABEL_45;
      case 3:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"A value was unexpected";
        goto LABEL_45;
      case 4:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"A timeout occurred.";
        goto LABEL_45;
      case 5:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"An internal error occurred";
        goto LABEL_45;
      case 10:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Discovery primitives invalidated";
        goto LABEL_45;
      case 11:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Discovery primitives interrupted";
        goto LABEL_45;
      case 20:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Sharing session invalidated";
        goto LABEL_45;
      case 21:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Sharing session interrupted";
        goto LABEL_45;
      case 30:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Broadcast primitives invalidated";
        goto LABEL_45;
      case 31:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Broadcast primitives interrupted";
        goto LABEL_45;
      case 40:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Broadcast setup invalidated";
        goto LABEL_45;
      case 50:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"No Wi-Fi interface present";
        v14 = @"No WLAN interface present";
        break;
      case 51:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Unable to power on Wi-Fi interface";
        v14 = @"Unable to power on WLAN interface";
        break;
      case 52:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Wi-Fi join cancelled";
        v14 = @"WLAN join cancelled";
        break;
      case 53:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Unable to find Wi-Fi network";
        v14 = @"Unable to find WLAN network";
        break;
      case 54:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Timed out joining Wi-Fi network";
        v14 = @"Timed out joining WLAN network";
        break;
      case 55:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Unable to join Wi-Fi network";
        v14 = @"Unable to join WLAN network";
        break;
      case 56:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Unable to reach the Internet";
        goto LABEL_45;
      case 57:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Unable to reach the Internet with no network configuration shared";
        goto LABEL_45;
      case 58:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v13 = @"Unable to reach the Internet with the Wi-Fi credentials shared";
        v14 = @"Unable to reach the Internet with the WLAN credentials shared";
        break;
      case 59:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Unable to reach the Internet with the Configuration Profile shared";
        goto LABEL_45;
      case 60:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Erase already in progress";
        goto LABEL_45;
      case 70:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile payload value is missing";
        goto LABEL_45;
      case 71:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile payload value is of the wrong type";
        goto LABEL_45;
      case 72:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile payload value is invalid";
        goto LABEL_45;
      case 73:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile payload type is not supported by this software";
        goto LABEL_45;
      case 74:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile failed validation";
        goto LABEL_45;
      case 75:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile payload failed validation";
        goto LABEL_45;
      case 76:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile is missing a required payload";
        goto LABEL_45;
      case 77:
        v11 = DMTErrorWithCodeAndUserInfo_bundle;
        v12 = @"Configuration profile contains a disallowed payload";
        goto LABEL_45;
      default:
        goto LABEL_5;
    }

    if (v6)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

LABEL_45:
  v15 = [v11 cat_localizedStringsForKey:v12 value:&stru_285B54748 table:@"DMTErrors"];
  v23 = _DMTErrorDescriptionsForKey(v15, v16, v17, v18, v19, v20, v21, v22, v29);

  v10 = v5;
  if (v23)
  {
    v24 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __DMTErrorWithCodeAndUserInfo_block_invoke_2;
    v30[3] = &unk_278F5E588;
    v31 = v24;
    v25 = v24;
    [v23 enumerateKeysAndObjectsUsingBlock:v30];
    v26 = [v25 copy];

    v10 = v26;
  }

LABEL_47:
  v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DeviceManagementTools.error" code:a1 userInfo:v10];

  return v27;
}

uint64_t __DMTErrorWithCodeAndUserInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  DMTErrorWithCodeAndUserInfo_bundle = DMTBundle();

  return MEMORY[0x2821F96F8]();
}

id _DMTErrorDescriptionsForKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_opt_new();
  v24 = &a9;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:{v16, v20}];
        v18 = DMTDescriptionKeyFormattedString(v17, v24);
        [v10 setObject:v18 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  return v10;
}

void __DMTErrorWithCodeAndUserInfo_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

id DMTEnrollmentTimeoutErrorForNetworkConfiguration(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 56;
  }

  else
  {
    v2 = qword_248935F98[a1 - 1];
  }

  v3 = DMTErrorWithCodeAndUserInfo(v2, 0);

  return v3;
}

id _DMTLogGeneral_2(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_6 != -1)
  {
    _DMTLogGeneral_cold_1_2();
  }

  v2 = _DMTLogGeneral_logObj_6;

  return v2;
}

id _DMTLogEnrollment(uint64_t a1)
{
  if (_DMTLogEnrollment_onceToken != -1)
  {
    _DMTLogEnrollment_cold_1();
  }

  v2 = _DMTLogEnrollment_logObj;

  return v2;
}

void sub_2489286E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248928998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248928C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248929018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248929478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id _DMTLogGeneral_3(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_7 != -1)
  {
    _DMTLogGeneral_cold_1_3();
  }

  v2 = _DMTLogGeneral_logObj_7;

  return v2;
}

void sub_24892B924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_4(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_8 != -1)
  {
    _DMTLogGeneral_cold_1_4();
  }

  v2 = _DMTLogGeneral_logObj_8;

  return v2;
}

void sub_24892BC98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24892C14C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 88));
  _Unwind_Resume(a1);
}

void sub_24892C69C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24892C910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892CD70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v3 - 120), 8);
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id _DMTLogOperation_0(uint64_t a1)
{
  if (_DMTLogOperation_onceToken_0 != -1)
  {
    _DMTLogOperation_cold_1_0();
  }

  v2 = _DMTLogOperation_logObj_0;

  return v2;
}

CFDataRef ExtractSignedData(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  numSignersOut = 0;
  cmsDecoderOut = 0;
  v2 = CMSDecoderCreate(&cmsDecoderOut);
  if (v2)
  {
    v3 = _DMTLogGeneral_5(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ExtractSignedData_cold_1();
    }

    v4 = 0;
    goto LABEL_18;
  }

  updated = CMSDecoderUpdateMessage(cmsDecoderOut, [v1 bytes], objc_msgSend(v1, "length"));
  if (!updated)
  {
    v7 = CMSDecoderFinalizeMessage(cmsDecoderOut);
    if (v7)
    {
      v6 = _DMTLogGeneral_5(v7);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_3();
      }

      goto LABEL_14;
    }

    NumSigners = CMSDecoderGetNumSigners(cmsDecoderOut, &numSignersOut);
    if (NumSigners)
    {
      v6 = _DMTLogGeneral_5(NumSigners);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_4();
      }

      goto LABEL_14;
    }

    if (!numSignersOut)
    {
      v18 = _DMTLogGeneral_5(NumSigners);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24891B000, v18, OS_LOG_TYPE_INFO, "Data does not appear to be signed", buf, 2u);
      }

      goto LABEL_15;
    }

    BasicX509 = SecPolicyCreateBasicX509();
    if (numSignersOut < 1)
    {
LABEL_28:
      contentOut = 0;
      v16 = CMSDecoderCopyContent(cmsDecoderOut, &contentOut);
      if (!v16)
      {
        v4 = contentOut;
LABEL_40:
        if (BasicX509)
        {
          CFRelease(BasicX509);
        }

        goto LABEL_16;
      }

      v17 = _DMTLogGeneral_5(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_6();
      }
    }

    else
    {
      v11 = 0;
      while (1)
      {
        signerStatusOut = kCMSSignerInvalidIndex;
        v12 = CMSDecoderCopySignerStatus(cmsDecoderOut, v11, BasicX509, 0, &signerStatusOut, 0, 0);
        v13 = v12;
        v14 = _DMTLogGeneral_5(v12);
        v15 = v14;
        if (v13)
        {
          break;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v24 = "ExtractSignedData";
          v25 = 2050;
          v26 = v11;
          v27 = 1026;
          v28 = signerStatusOut;
          _os_log_impl(&dword_24891B000, v15, OS_LOG_TYPE_INFO, "%{public}s: signerIndex = %{public}ld, signStatus = %{public}d", buf, 0x1Cu);
        }

        if (++v11 >= numSignersOut)
        {
          goto LABEL_28;
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_4();
      }
    }

    v4 = 0;
    goto LABEL_40;
  }

  v6 = _DMTLogGeneral_5(updated);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ExtractSignedData_cold_2();
  }

LABEL_14:

LABEL_15:
  v4 = 0;
LABEL_16:
  if (cmsDecoderOut)
  {
    CFRelease(cmsDecoderOut);
  }

LABEL_18:

  return v4;
}

id _DMTLogGeneral_5(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_9 != -1)
  {
    _DMTLogGeneral_cold_1_5();
  }

  v2 = _DMTLogGeneral_logObj_9;

  return v2;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id _DMTLogGeneral_6(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_10 != -1)
  {
    _DMTLogGeneral_cold_1_6();
  }

  v2 = _DMTLogGeneral_logObj_10;

  return v2;
}

void sub_24892EFF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t DMTisWAPI(uint64_t a1, uint64_t a2)
{
  if (DMTisWAPI_onceToken != -1)
  {
    DMTisWAPI_cold_1();
  }

  return DMTisWAPI_wapi;
}

uint64_t __DMTisWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  DMTisWAPI_wapi = result;
  return result;
}

uint64_t BooleanValueForObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    TypeID = CFBooleanGetTypeID();

    if (v3 == TypeID)
    {
      Value = CFBooleanGetValue(v2);
LABEL_18:
      v11 = Value != 0;
      goto LABEL_20;
    }

    v6 = CFGetTypeID(v2);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [v2 stringByTrimmingCharactersInSet:v7];

      if (![v8 length] || (v9 = objc_msgSend(v8, "characterAtIndex:", 0), v10 = ((v9 - 70) >> 3) | ((v9 - 70) << 13), v10 < 6u) && ((0x33u >> v10) & 1) != 0)
      {
        v11 = 0;
LABEL_9:

        goto LABEL_20;
      }

      if (v9 - 84) < 0x26 && ((0x2100000021uLL >> (v9 - 84)))
      {
        v11 = 1;
        goto LABEL_9;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_20;
    }

    Value = [v2 intValue];
    goto LABEL_18;
  }

  v11 = [v2 BOOLValue];
LABEL_20:

  return v11;
}

id _DMTLogGeneral_7(uint64_t a1)
{
  if (_DMTLogGeneral_onceToken_12 != -1)
  {
    _DMTLogGeneral_cold_1_7();
  }

  v2 = _DMTLogGeneral_logObj_12;

  return v2;
}