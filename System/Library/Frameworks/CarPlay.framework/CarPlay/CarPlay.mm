id CarPlayFrameworkACCNavLogging(uint64_t a1)
{
  if (CarPlayFrameworkACCNavLogging_onceToken != -1)
  {
    CarPlayFrameworkACCNavLogging_cold_1();
  }

  v2 = CarPlayFrameworkACCNavLogging_facility;

  return v2;
}

__CFString *NSStringFromCPGuidanceState(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 7)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %d", a1];
  }

  else
  {
    v5 = off_278A11D00[a1];
  }

  return v5;
}

__CFString *NSStringFromCPManeuverState(unint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %ld", a1];
  }

  else
  {
    v5 = off_278A11D38[a1];
  }

  return v5;
}

uint64_t NotSetFromCPAccNavType(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_278A10FE0 + a1);
  }
}

id NotSetFromCPNavEnum(int a1, unint64_t a2)
{
  if (a1 == 6)
  {
    v3 = &unk_284A044A8;
  }

  else
  {
    v3 = NotSetFromCPAccNavType(a2);
  }

  return v3;
}

__CFString *NSStringFromAccNavRouteGuidanceUpdateInfoType(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return @"DisplayComponentID";
  }

  else
  {
    return off_278A10E50[(a1 - 1)];
  }
}

id NSNumberForCPAccNavTypeFromDouble(uint64_t a1, double a2)
{
  v3 = 0;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
        }
      }

      else
      {
        v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
      }

      goto LABEL_19;
    }

    if (a1 == 2)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
    }

    v3 = LABEL_9:;
    goto LABEL_19;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithInt:a2];
    }

    goto LABEL_9;
  }

  if (a1 == 6)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithShort:a2];
  }

  else if (a1 == 7)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithChar:a2];
  }

LABEL_19:

  return v3;
}

uint64_t CPDistanceUnitsFromNSUnitLength(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAE20] kilometers];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCAE20] miles];
    v6 = [v1 isEqual:v5];

    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v7 = [MEMORY[0x277CCAE20] meters];
      v8 = [v1 isEqual:v7];

      if (v8)
      {
        v4 = 2;
      }

      else
      {
        v9 = [MEMORY[0x277CCAE20] yards];
        v10 = [v1 isEqual:v9];

        if (v10)
        {
          v4 = 3;
        }

        else
        {
          v11 = [MEMORY[0x277CCAE20] feet];
          v12 = [v1 isEqual:v11];

          if (v12)
          {
            v4 = 4;
          }

          else
          {
            v13 = NotSetFromCPAccNavType(3uLL);
            v4 = [v13 integerValue];
          }
        }
      }
    }
  }

  return v4;
}

__CFString *NSStringFromCPDistanceUnits(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %d", a1];
  }

  else
  {
    v5 = off_278A11CD8[a1];
  }

  return v5;
}

__CFString *NSStringFromCPStopType(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %d", a1];
  }

  else
  {
    v5 = off_278A11D58[a1];
  }

  return v5;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t __CarPlayFrameworkACCNavLogging_block_invoke()
{
  v0 = os_log_create("com.apple.carplayframework", "ACCNav");
  v1 = CarPlayFrameworkACCNavLogging_facility;
  CarPlayFrameworkACCNavLogging_facility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id CPLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = CPFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_2849E5A88 table:@"Localizable"];

  return v3;
}

id CPFrameworkBundle()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 objectAtIndex:0];

  v2 = [GSSystemRootDirectory() stringByAppendingPathComponent:v1];
  v3 = [v2 stringByAppendingPathComponent:@"Frameworks/CarPlay.framework"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

void sub_236ED710C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCPChargingStationConnectorType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"CCS1";
  }

  else
  {
    return off_278A10430[a1 - 1];
  }
}

id CPSanitizeImage(void *a1, objc_class *a2)
{
  v3 = a1;
  v4 = [v3 images];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      CPSanitizeImage_cold_1(a2);
    }

    v5 = [v3 images];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void sub_236ED8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236ED909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_debug_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_236EE2E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EE3044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236EE31E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236EE421C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236EE5E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236EE73E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CPRootTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  if (CPPushableTemplateClasses_onceToken != -1)
  {
    [CPInterfaceController pushTemplate:animated:completion:];
  }

  v3 = [v0 setWithSet:CPPushableTemplateClasses_classes];
  [v3 addObject:objc_opt_class()];
  v1 = [v3 copy];
  v2 = CPRootTemplateClasses_classes;
  CPRootTemplateClasses_classes = v1;
}

uint64_t __CPAllowedTemplateClassesForCurrentEntitlement_block_invoke()
{
  if (CPCurrentProcessHasMapsEntitlement())
  {
    if (CPNavigationTemplateClasses_onceToken != -1)
    {
      __CPAllowedTemplateClassesForCurrentEntitlement_block_invoke_cold_4();
    }

    v0 = CPNavigationTemplateClasses_classes;
LABEL_18:
    v1 = v0;
    goto LABEL_19;
  }

  if (CPCurrentProcessHasAudioEntitlement())
  {
    if (CPAudioTemplateClasses_onceToken != -1)
    {
      __CPAllowedTemplateClassesForCurrentEntitlement_block_invoke_cold_3();
    }

    v0 = CPAudioTemplateClasses_classes;
    goto LABEL_18;
  }

  if (CPCurrentProcessHasCommunicationEntitlement())
  {
    if (CPCommunicationTemplateClasses_onceToken != -1)
    {
      __CPAllowedTemplateClassesForCurrentEntitlement_block_invoke_cold_2();
    }

    v0 = CPCommunicationTemplateClasses_classes;
    goto LABEL_18;
  }

  if ((CPCurrentProcessHasChargingEntitlement() & 1) != 0 || CPCurrentProcessHasParkingEntitlement())
  {
    if (CPChargingParkingTemplateClasses_onceToken != -1)
    {
      __CPAllowedTemplateClassesForCurrentEntitlement_block_invoke_cold_1();
    }

    v0 = CPChargingParkingTemplateClasses_classes;
    goto LABEL_18;
  }

  HasQuickOrderingEntitlement = CPCurrentProcessHasQuickOrderingEntitlement();
  if (HasQuickOrderingEntitlement)
  {
    v1 = CPQuickOrderingTemplateClasses(HasQuickOrderingEntitlement);
  }

  else
  {
    HasPublicSafetyEntitlement = CPCurrentProcessHasPublicSafetyEntitlement();
    if (HasPublicSafetyEntitlement)
    {
      v1 = CPPublicSafetyTemplateClasses(HasPublicSafetyEntitlement);
    }

    else
    {
      HasFuelingEntitlement = CPCurrentProcessHasFuelingEntitlement();
      if (HasFuelingEntitlement)
      {
        v1 = CPFuelingTemplateClasses(HasFuelingEntitlement);
      }

      else
      {
        HasDrivingTaskEntitlement = CPCurrentProcessHasDrivingTaskEntitlement();
        if (HasDrivingTaskEntitlement)
        {
          v1 = CPDrivingTaskTemplateClasses(HasDrivingTaskEntitlement);
        }

        else
        {
          result = CPCurrentProcessHasVideoEntitlement();
          if (!result)
          {
            return result;
          }

          v1 = CPVideoTemplateClasses(result);
        }
      }
    }
  }

LABEL_19:
  v2 = CPAllowedTemplateClassesForCurrentEntitlement_allowedTemplateClasses;
  CPAllowedTemplateClassesForCurrentEntitlement_allowedTemplateClasses = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

id CPQuickOrderingTemplateClasses(uint64_t a1)
{
  if (CPQuickOrderingTemplateClasses_onceToken != -1)
  {
    CPQuickOrderingTemplateClasses_cold_1();
  }

  v2 = CPQuickOrderingTemplateClasses_classes;

  return v2;
}

id CPPublicSafetyTemplateClasses(uint64_t a1)
{
  if (CPPublicSafetyTemplateClasses_onceToken != -1)
  {
    CPPublicSafetyTemplateClasses_cold_1();
  }

  v2 = CPPublicSafetyTemplateClasses_classes;

  return v2;
}

id CPFuelingTemplateClasses(uint64_t a1)
{
  if (CPFuelingTemplateClasses_onceToken != -1)
  {
    CPFuelingTemplateClasses_cold_1();
  }

  v2 = CPFuelingTemplateClasses_classes;

  return v2;
}

id CPDrivingTaskTemplateClasses(uint64_t a1)
{
  if (CPDrivingTaskTemplateClasses_onceToken != -1)
  {
    CPDrivingTaskTemplateClasses_cold_1();
  }

  v2 = CPDrivingTaskTemplateClasses_classes;

  return v2;
}

id CPVideoTemplateClasses(uint64_t a1)
{
  if (CPVideoTemplateClasses_onceToken != -1)
  {
    CPVideoTemplateClasses_cold_1();
  }

  v2 = CPVideoTemplateClasses_classes;

  return v2;
}

uint64_t __CPNavigationTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = CPNavigationTemplateClasses_classes;
  CPNavigationTemplateClasses_classes = v10;

  return MEMORY[0x2821F96F8](v10, v11);
}

uint64_t __CPAudioTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = CPAudioTemplateClasses_classes;
  CPAudioTemplateClasses_classes = v7;

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t __CPCommunicationTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = CPCommunicationTemplateClasses_classes;
  CPCommunicationTemplateClasses_classes = v9;

  return MEMORY[0x2821F96F8](v9, v10);
}

uint64_t __CPChargingParkingTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = CPChargingParkingTemplateClasses_classes;
  CPChargingParkingTemplateClasses_classes = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __CPQuickOrderingTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = CPQuickOrderingTemplateClasses_classes;
  CPQuickOrderingTemplateClasses_classes = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __CPPublicSafetyTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = CPPublicSafetyTemplateClasses_classes;
  CPPublicSafetyTemplateClasses_classes = v10;

  return MEMORY[0x2821F96F8](v10, v11);
}

uint64_t __CPFuelingTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = CPFuelingTemplateClasses_classes;
  CPFuelingTemplateClasses_classes = v7;

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t __CPDrivingTaskTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = CPDrivingTaskTemplateClasses_classes;
  CPDrivingTaskTemplateClasses_classes = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __CPVideoTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = CPVideoTemplateClasses_classes;
  CPVideoTemplateClasses_classes = v7;

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t __CPPushableTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = CPPushableTemplateClasses_classes;
  CPPushableTemplateClasses_classes = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __CPPresentableTemplateClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = CPPresentableTemplateClasses_classes;
  CPPresentableTemplateClasses_classes = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_236EE99E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EEAECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EEB2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromAccNavLaneGuidanceInfoUpdateInfoType(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"DisplayComponentID";
  }

  else
  {
    return off_278A10DB8[(a1 - 1)];
  }
}

__CFString *NSStringFromAccNavLaneGuidanceInfoUpdateLaneInfoInfoType(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Index";
  }

  else
  {
    return off_278A10DD0[(a1 - 1)];
  }
}

__CFString *NSStringFromAccNavManeuverInfoUpdateInfoType(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"DisplayComponentID";
  }

  else
  {
    return off_278A10DE8[(a1 - 1)];
  }
}

__CFString *NSStringFromCPAccNavType(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_278A10F70[a1];
  }
}

void __CPWhiteListedTemplates_block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  if (CPTabTemplates_onceToken != -1)
  {
    __CPWhiteListedTemplates_block_invoke_cold_1();
  }

  v1 = CPTabTemplates_classes;
  v2 = [v0 setWithSet:v1];

  [v2 addObject:objc_opt_class()];
  v3 = CPWhiteListedTemplates_classes;
  CPWhiteListedTemplates_classes = v2;
}

uint64_t __CPTabTemplates_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((CPCurrentProcessHasAudioEntitlement() & 1) != 0 || CPCurrentProcessHasVideoEntitlement())
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = objc_opt_class();
    [v2 setWithObjects:{v3, objc_opt_class(), 0, v11, v12}];
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  }
  v8 = ;
  v9 = CPTabTemplates_classes;
  CPTabTemplates_classes = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

void sub_236EF2024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EF2774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236EF4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void CPAssertAllowedClass(void *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  v6 = [MEMORY[0x277CBEB98] setWithObject:a2];
  v10 = v5;
  if (([v6 containsObject:object_getClass(v10)] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = NSStringFromSelector(a3);
    [v7 raise:v8 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v10, v9, v6, 0}];
  }
}

void sub_236EF5808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236EF6360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EF6F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236EF9D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236EFD7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236EFE2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F03238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236F03524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236F07D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236F080EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236F0BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236F0BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236F0FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236F12280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CarPlayFrameworkGeneralLogging(uint64_t a1)
{
  if (CarPlayFrameworkGeneralLogging_onceToken != -1)
  {
    CarPlayFrameworkGeneralLogging_cold_1();
  }

  v2 = CarPlayFrameworkGeneralLogging_facility;

  return v2;
}

uint64_t __CarPlayFrameworkGeneralLogging_block_invoke()
{
  v0 = os_log_create("com.apple.carplayframework", "General");
  v1 = CarPlayFrameworkGeneralLogging_facility;
  CarPlayFrameworkGeneralLogging_facility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id CarPlayFrameworkStateCaptureLogging(uint64_t a1)
{
  if (CarPlayFrameworkStateCaptureLogging_onceToken != -1)
  {
    CarPlayFrameworkStateCaptureLogging_cold_1();
  }

  v2 = CarPlayFrameworkStateCaptureLogging_facility;

  return v2;
}

uint64_t __CarPlayFrameworkStateCaptureLogging_block_invoke()
{
  v0 = os_log_create("com.apple.carplayframework", "StateCapture");
  v1 = CarPlayFrameworkStateCaptureLogging_facility;
  CarPlayFrameworkStateCaptureLogging_facility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_236F14B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double luminanceComponent(double a1)
{
  if (a1 <= 0.03928)
  {
    return a1 / 12.9200001;
  }

  v1 = (a1 + 0.0549999997) / 1.05499995;
  return powf(v1, 2.4);
}

double CPLuminanceForColor(void *a1)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  [a1 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  if (v11 <= 0.03928)
  {
    v2 = v11 / 12.9200001;
  }

  else
  {
    v1 = (v11 + 0.0549999997) / 1.05499995;
    v2 = powf(v1, 2.4);
  }

  if (v10 <= 0.03928)
  {
    v4 = v10 / 12.9200001;
  }

  else
  {
    v3 = (v10 + 0.0549999997) / 1.05499995;
    v4 = powf(v3, 2.4);
  }

  if (v9 <= 0.03928)
  {
    v6 = v9 / 12.9200001;
  }

  else
  {
    v5 = (v9 + 0.0549999997) / 1.05499995;
    v6 = powf(v5, 2.4);
  }

  return v4 * 0.715200007 + v2 * 0.212599993 + v6 * 0.0722000003;
}

double CPContrastRatioForColors(void *a1, void *a2)
{
  v3 = a2;
  v4 = CPLuminanceForColor(a1);
  v5 = CPLuminanceForColor(v3);

  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 <= v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return (v6 + 0.0500000007) / (v7 + 0.0500000007);
}

id CPContrastingColorForColor(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D75348] whiteColor];
  v3 = CPContrastRatioForColors(v2, v1);

  if (v3 > 7.0)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
LABEL_5:
    v7 = v4;
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277D75348] blackColor];
  v6 = CPContrastRatioForColors(v5, v1);

  if (v6 > 7.0)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

BOOL CPColorMeetsContrastRequirement(void *a1)
{
  v1 = CPContrastingColorForColor(a1);
  v2 = v1 != 0;

  return v2;
}

uint64_t CPGuidanceStyleForColor(void *a1, void *a2)
{
  v3 = MEMORY[0x277D75C80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 _currentTraitCollection];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v4];

  v7 = MEMORY[0x277D75348];
  v8 = [v5 CGColor];

  v9 = [v7 colorWithCGColor:v8];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v6];
  v10 = CPContrastingColorForColor(v9);
  v11 = [MEMORY[0x277D75348] whiteColor];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

id CPImageByScalingImageToSize(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [MEMORY[0x277D759A0] _carScreen];
  v7 = [v6 traitCollection];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277D75C80] _currentTraitCollection];
  }

  v10 = v9;

  if ([v5 isSymbolImage] || (objc_msgSend(v5, "size"), v12 <= a2) && (objc_msgSend(v5, "size"), v13 <= a3))
  {
    v11 = v5;
  }

  else
  {
    [v5 size];
    v15 = a2 / v14;
    [v5 size];
    if (v15 >= a3 / v16)
    {
      v15 = a3 / v16;
    }

    [v5 size];
    v18 = v17 * v15;
    [v5 size];
    v20 = v19 * v15;
    v21 = objc_alloc(MEMORY[0x277D75560]);
    v22 = [MEMORY[0x277D75568] formatForTraitCollection:v10];
    v23 = [v21 initWithSize:v22 format:{v18, v20}];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __CPImageByScalingImageToSize_block_invoke;
    v27[3] = &unk_278A11A80;
    v24 = v5;
    v28 = v24;
    v29 = v18;
    v30 = v20;
    v25 = [v23 imageWithActions:v27];
    v11 = [v25 imageWithRenderingMode:{objc_msgSend(v24, "renderingMode")}];
  }

  return v11;
}

id CPSanitizedBackgroundColor(void *a1)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D75C80];
  v2 = a1;
  v3 = [v1 _currentTraitCollection];
  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v5 = MEMORY[0x277D75C80];
  v41[0] = v4;
  v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v41[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v8 = [v5 traitCollectionWithTraitsFromCollections:v7];

  v9 = MEMORY[0x277D75C80];
  v35 = v4;
  v40[0] = v4;
  v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v40[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v12 = [v9 traitCollectionWithTraitsFromCollections:v11];

  v34 = v8;
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v8];
  v13 = [MEMORY[0x277D75348] tableBackgroundColor];
  v14 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(v2, "CGColor")}];
  v15 = [v14 colorWithAlphaComponent:1.0];

  v33 = v12;
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v12];
  v16 = [MEMORY[0x277D75348] tableBackgroundColor];
  v17 = MEMORY[0x277D75348];
  v18 = [v2 CGColor];

  v19 = [v17 colorWithCGColor:v18];
  v20 = [v19 colorWithAlphaComponent:1.0];

  v36 = v3;
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v3];
  if (CPColorMeetsContrastRequirement(v15))
  {
    v21 = [v15 copy];

    v13 = v21;
  }

  if (CPColorMeetsContrastRequirement(v20))
  {
    v22 = [v20 copy];

    v16 = v22;
  }

  v23 = MEMORY[0x277D75C80];
  v24 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v39[0] = v24;
  v25 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:-1];
  v39[1] = v25;
  v26 = [MEMORY[0x277D75C80] traitCollectionWithDisplayGamut:-1];
  v39[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v28 = [v23 traitCollectionWithTraitsFromCollections:v27];

  v29 = MEMORY[0x277D75348];
  v37[0] = v34;
  v37[1] = v33;
  v38[0] = v13;
  v38[1] = v16;
  v37[2] = v28;
  v38[2] = v16;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v31 = [v29 _dynamicColorWithColorsByTraitCollection:v30];

  return v31;
}

__CFString *CPSStringFromBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t CPCurrentProcessHasTemplateEntitlement(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (CPCurrentProcessHasMapsEntitlement() & 1) != 0 || (CPCurrentProcessHasAudioEntitlement() & 1) != 0 || (CPCurrentProcessHasCommunicationEntitlement() & 1) != 0 || (CPCurrentProcessHasChargingEntitlement() & 1) != 0 || (CPCurrentProcessHasParkingEntitlement() & 1) != 0 || (CPCurrentProcessHasQuickOrderingEntitlement() & 1) != 0 || (CPCurrentProcessHasPublicSafetyEntitlement() & 1) != 0 || (CPCurrentProcessHasFuelingEntitlement() & 1) != 0 || (CPCurrentProcessHasDrivingTaskEntitlement())
  {
    return 1;
  }

  return CPCurrentProcessHasVideoEntitlement();
}

uint64_t CPCurrentProcessHasMapsEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-maps"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-maps"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares maps entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasAudioEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-audio"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-audio"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares audio entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasCommunicationEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-communication"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-communication"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares communications entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasChargingEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-charging"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-charging"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares charging entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasParkingEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-parking"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-parking"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares parking entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasQuickOrderingEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-quick-ordering"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-quick-ordering"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares quick ordering entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasPublicSafetyEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-public-safety"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-public-safety"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares public safety entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasFuelingEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-fueling"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-fueling"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares fueling entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasDrivingTaskEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-driving-task"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-driving-task"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares driving task entitlement.", v7, 2u);
    }
  }

  return v3;
}

uint64_t CPCurrentProcessHasVideoEntitlement()
{
  v0 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.developer.carplay-video"];
  v2 = [v0 entitlementValuesForKeys:v1];

  v3 = [v2 BOOLForKey:@"com.apple.developer.carplay-video"];
  if (v3)
  {
    v5 = CarPlayFrameworkGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Application declares video entitlement.", v7, 2u);
    }
  }

  return v3;
}

__CFString *NSStringFromCPManeuverType(unint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 0x36)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %lu", a1];
  }

  else
  {
    v5 = off_278A11B10[a1];
  }

  return v5;
}

__CFString *NSStringFromCPJunctionType(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v5 = @"Roundabout";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %lu", a1];
    }
  }

  else
  {
    v5 = @"Intersection";
  }

  return v5;
}

__CFString *NSStringFromCPTrafficSide(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v5 = @"Left";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %lu", a1];
    }
  }

  else
  {
    v5 = @"Right";
  }

  return v5;
}

__CFString *NSStringFromCPLaneStatus(unint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
  }

  else if (a1 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %ld", a1];
  }

  else
  {
    v5 = off_278A11CC0[a1];
  }

  return v5;
}

id NSUnitLengthFromCPDistanceUnits(uint64_t a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  v3 = NotSetFromCPAccNavType(3uLL);
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = 0;
    goto LABEL_3;
  }

  if (v1 <= 1)
  {
    if (!v1)
    {
      v5 = [MEMORY[0x277CCAE20] kilometers];
      goto LABEL_3;
    }

    if (v1 == 1)
    {
      v5 = [MEMORY[0x277CCAE20] miles];
      goto LABEL_3;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v5 = [MEMORY[0x277CCAE20] meters];
        goto LABEL_3;
      case 3:
        v5 = [MEMORY[0x277CCAE20] yards];
        goto LABEL_3;
      case 4:
        v5 = [MEMORY[0x277CCAE20] feet];
        goto LABEL_3;
    }
  }

  v5 = [MEMORY[0x277CCAE20] millimeters];
LABEL_3:

  return v5;
}

__CFString *NSStringFromCPRerouteReason(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return @"Unknown";
  }

  else
  {
    return off_278A11D78[(a1 - 1)];
  }
}

__CFString *NSStringFromCPNavEnum(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %d", a1];
  }

  else
  {
    v2 = off_278A11D98[a1];
  }

  return v2;
}

void sub_236F18994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236F1B648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CPBridgeNavigationWaypoint.caf.getter()
{
  v1 = v0;
  v2 = Optional<A>.coordinates(count:)([v0 entryPointsCount], objc_msgSend(v0, sel_entryPoints));
  [v0 centerPoint];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277CF83E0]);
  *&v10 = v4;
  *&v11 = v6;
  *&v12 = v8;
  v13 = [v9 initWithAltitude:v10 latitude:v11 longitude:v12];
  v14 = [v0 locationThreshold];
  v15 = [v1 address];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [v1 name];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v2)
    {
LABEL_6:
      type metadata accessor for CAFCoordinate(0, &lazy cache variable for type metadata for CAFCoordinate, 0x277CF83E0);
      v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v19)
      {
        goto LABEL_7;
      }

LABEL_11:
      v26 = 0;
      if (v24)
      {
        goto LABEL_8;
      }

LABEL_12:
      v27 = 0;
      goto LABEL_13;
    }
  }

  v25.super.isa = 0;
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_7:
  v26 = MEMORY[0x2383C2360](v17, v19);

  if (!v24)
  {
    goto LABEL_12;
  }

LABEL_8:
  v27 = MEMORY[0x2383C2360](v22, v24);

LABEL_13:
  v28 = [objc_allocWithZone(MEMORY[0x277CF8598]) initWithEntryPoints:v25.super.isa location:v13 locationThreshold:v14 userVisibleAddress:v26 userVisibleName:v27];

  return v28;
}

uint64_t Optional<A>.coordinates(count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  v11 = MEMORY[0x277D84F90];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v3 = (a2 + 16);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = objc_allocWithZone(MEMORY[0x277CF83E0]);
      *&v8 = v4;
      *&v9 = v5;
      *&v10 = v6;
      [v7 initWithAltitude:v8 latitude:v9 longitude:v10];
      MEMORY[0x2383C23A0]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 += 3;
      --v2;
    }

    while (v2);
    return v11;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

id CPBridgeRouteLine.legs.getter()
{
  v1 = [v0 routeLegs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CPBridgeRouteLeg_pMd, &_sSo16CPBridgeRouteLeg_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:

    type metadata accessor for CAFCoordinate(0, &lazy cache variable for type metadata for CAFRouteLeg, 0x277CF85F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [objc_opt_self() routeLegsWithRouteLegs_];

    return v8;
  }

  if (v2 < 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x2383C24D0](v6);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383C2460](v5, v2);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v5;
      swift_unknownObjectRetain();
      CPBridgeRouteLeg.caf.getter();
      swift_unknownObjectRelease_n();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v3 != v5);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id CPBridgeRouteLeg.caf.getter()
{
  v1 = Optional<A>.coordinates(count:)([v0 coordinates3DCount], objc_msgSend(v0, sel_coordinates3D));
  v2 = [v0 destinationLocation];
  v3 = CPBridgeNavigationWaypoint.caf.getter();
  swift_unknownObjectRelease();
  v4 = [v0 originLocation];
  v5 = CPBridgeNavigationWaypoint.caf.getter();
  swift_unknownObjectRelease();
  if (v1)
  {
    type metadata accessor for CAFCoordinate(0, &lazy cache variable for type metadata for CAFCoordinate, 0x277CF83E0);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CF85F0]) initWithCoordinates:v6.super.isa destination:v3 origin:v5];

  return v7;
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

uint64_t type metadata accessor for CAFCoordinate(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t one-time initialization function for vehicleStateManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.vehicleStateManager);
  __swift_project_value_buffer(v0, static Logger.vehicleStateManager);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.vehicleStateManager.unsafeMutableAddressor()
{
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.vehicleStateManager);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.vehicleStateManager.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.vehicleStateManager);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *RouteSharingState.enabled.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result vehicleEnabled];

    if (!v3)
    {
      return 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result userEnabled];

    if (v5 && *(v0 + 32) == 1)
    {
      return *(v0 + 33);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void RouteSharingState.supportsRouteSharing.didset()
{
  v1 = v0;
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.vehicleStateManager);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = *(v1 + 32);

    _os_log_impl(&dword_236ED4000, oslog, v3, "didSet supportsRouteSharing: %{BOOL}d", v4, 8u);
    MEMORY[0x2383C2D60](v4, -1, -1);
  }

  else
  {
  }
}

void RouteSharingState.ownsNavigation.didset(char a1)
{
  v2 = v1;
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.vehicleStateManager);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    if (*(v2 + 33))
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (*(v2 + 33))
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_236ED4000, oslog, v5, "didSet ownsNavigation= %s oldValue=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C2D60](v7, -1, -1);
    MEMORY[0x2383C2D60](v6, -1, -1);
  }
}

uint64_t RouteSharingState.__deallocating_deinit()
{
  outlined destroy of weak CPVehicleStateManagerDelegate?(v0 + 16);
  MEMORY[0x2383C2DB0](v0 + 24);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t RouteSharingState.description.getter()
{
  v1 = v0;
  v2 = 0x65736C6166;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(124);
  v40 = v38;
  v41 = v39;
  MEMORY[0x2383C2380](0xD00000000000001CLL, 0x8000000236F31390);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = [Strong vehicleEnabled], v10, v11) && (v12 = swift_unknownObjectWeakLoadStrong()) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_userEnabled), v13, v14) && *(v1 + 32) == 1 && (*(v1 + 33) & 1) != 0)
  {
    v15 = 0xE400000000000000;
    v16 = 1702195828;
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x65736C6166;
  }

  MEMORY[0x2383C2380](v16, v15);

  MEMORY[0x2383C2380](0xD000000000000010, 0x8000000236F313B0);
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17 && (v18 = v17, v19 = [v17 vehicleEnabled], v18, (v19 & 1) != 0))
  {
    v20 = 0xE400000000000000;
    v21 = 1702195828;
  }

  else
  {
    v20 = 0xE500000000000000;
    v21 = 0x65736C6166;
  }

  MEMORY[0x2383C2380](v21, v20);

  MEMORY[0x2383C2380](0x616E457265737520, 0xED00003D64656C62);
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22 && (v23 = v22, v24 = [v22 userEnabled], v23, (v24 & 1) != 0))
  {
    v25 = 0xE400000000000000;
    v2 = 1702195828;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x2383C2380](v2, v25);

  MEMORY[0x2383C2380](0xD000000000000016, 0x8000000236F313D0);
  if (*(v1 + 32))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2383C2380](v26, v27);

  MEMORY[0x2383C2380](0xD000000000000010, 0x8000000236F313F0);
  if (*(v1 + 33))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v1 + 33))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x2383C2380](v28, v29);

  MEMORY[0x2383C2380](0xD000000000000010, 0x8000000236F31410);
  v30 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v30, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v4 + 48))(v8, 1, v3))
  {
    outlined destroy of UUID?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    v33 = v37;
    (*(v4 + 16))(v37, v8, v3);
    outlined destroy of UUID?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v34 = UUID.uuidString.getter();
    v31 = v35;
    (*(v4 + 8))(v33, v3);
    v32 = v34;
  }

  MEMORY[0x2383C2380](v32, v31);

  MEMORY[0x2383C2380](62, 0xE100000000000000);
  return v40;
}

id @objc CPVehicleStateManager.currentCar.getter(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = a1;
  v7 = [v6 *a3];
  v8 = [v7 *a4];

  return v8;
}

char *CPVehicleStateManager.init(delegate:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = [objc_allocWithZone(MEMORY[0x277CF83A0]) init];
  *&v1[OBJC_IVAR___CPVehicleStateManager_carManager] = v2;
  type metadata accessor for RouteSharingState(0);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *&v1[OBJC_IVAR___CPVehicleStateManager_routeSharingState] = v3;
  v10.receiver = v1;
  v10.super_class = CPVehicleStateManager;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectWeakAssign();
  v7 = *&v6[OBJC_IVAR___CPVehicleStateManager_carManager];
  v8 = v6;
  [v7 registerObserver_];

  swift_unknownObjectRelease();
  return v8;
}

Swift::Void __swiftcall CPVehicleStateManager.willReleaseNavigationOwnership()()
{
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.vehicleStateManager);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000236F314E0, &v7);
    *(v5 + 12) = 1024;
    *(v5 + 14) = *(*&v2[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33);

    _os_log_impl(&dword_236ED4000, v3, v4, "%s ownsNavigation=%{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2383C2D60](v6, -1, -1);
    MEMORY[0x2383C2D60](v5, -1, -1);
  }

  else
  {
  }

  if (*(*&v2[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33) == 1)
  {

    [v2 clearRoute];
  }
}

Swift::Void __swiftcall CPVehicleStateManager.didUpdateNavigationOwnership()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34[-1] - v2;
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.vehicleStateManager);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = &selRef_control_setSelected_;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000236F314C0, v34);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(*&v5[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33);

    *(v9 + 18) = 2080;
    v11 = [v5 delegate];
    if (v11)
    {
      v12 = [v11 description];
      swift_unknownObjectRelease();
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v8 = &selRef_control_setSelected_;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v34);

    *(v9 + 20) = v16;
    _os_log_impl(&dword_236ED4000, v6, v7, "%s ownsNavigation=%{BOOL}d delegate=%s", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x2383C2D60](v10, -1, -1);
    MEMORY[0x2383C2D60](v9, -1, -1);
  }

  else
  {
  }

  v17 = [v5 v8[53]];
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR___CPVehicleStateManager_routeSharingState;
    v20 = *(*&v5[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33);
    if (v20 != [v17 ownsNavigation])
    {
      v21 = *&v5[v19];

      v22 = [v18 ownsNavigation];
      v23 = *(v21 + 33);
      *(v21 + 33) = v22;
      RouteSharingState.ownsNavigation.didset(v23);

      CPVehicleStateManager.forceUserEnabledIfAllowed(reason:)(0);
      if (*(*&v5[v19] + 33) != 1)
      {
        swift_unknownObjectRelease();
        v30 = *&v5[v19];
        v31 = type metadata accessor for UUID();
        (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
        v32 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
        swift_beginAccess();

        outlined assign with take of UUID?(v3, v30 + v32);
        swift_endAccess();

        return;
      }

      v24 = [v5 route];
      if (v24)
      {
        v25 = v24;
        [v24 setApplicationEnabled_];
      }

      v26 = [v5 route];
      if (v26)
      {
        v27 = v26;
        v28 = [v18 bundleName];
        if (!v28)
        {
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = MEMORY[0x2383C2360](v29);
        }

        [v27 setUserVisibleApplicationName_];
      }
    }

    swift_unknownObjectRelease();
  }
}

void CPVehicleStateManager.forceUserEnabledIfAllowed(reason:)(unsigned __int8 a1)
{
  v3 = *&v1[OBJC_IVAR___CPVehicleStateManager_routeSharingState];
  if (*(v3 + 32) != 1)
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.vehicleStateManager);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v52[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000236F31430, v52);
      *(v9 + 12) = 2080;
      if (a1)
      {
        if (a1 == 1)
        {
          v14 = 0xD000000000000017;
        }

        else
        {
          v14 = 0x74756F52646E6573;
        }

        if (a1 == 1)
        {
          v15 = 0x8000000236F31460;
        }

        else
        {
          v15 = 0xED0000656E694C65;
        }
      }

      else
      {
        v15 = 0x8000000236F31480;
        v14 = 0xD000000000000019;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v52);

      *(v9 + 14) = v19;
      v20 = "%s reason=%s, failed: routeSharingState.supportsRouteSharing is false";
      goto LABEL_68;
    }

LABEL_35:

    return;
  }

  if (*(v3 + 33) != 1)
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.vehicleStateManager);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v52[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000236F31430, v52);
      *(v9 + 12) = 2080;
      if (a1)
      {
        if (a1 == 1)
        {
          v17 = 0xD000000000000017;
        }

        else
        {
          v17 = 0x74756F52646E6573;
        }

        if (a1 == 1)
        {
          v18 = 0x8000000236F31460;
        }

        else
        {
          v18 = 0xED0000656E694C65;
        }
      }

      else
      {
        v18 = 0x8000000236F31480;
        v17 = 0xD000000000000019;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v52);

      *(v9 + 14) = v25;
      v20 = "%s reason=%s, failed: routeLineSupport.ownsNavigation is false";
      goto LABEL_68;
    }

    goto LABEL_35;
  }

  v4 = [v1 route];
  if (!v4 || (v5 = v4, v6 = [v4 userEnabled], v5, (v6 & 1) != 0))
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.vehicleStateManager);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v52[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000236F31430, v52);
      *(v9 + 12) = 2080;
      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0xD000000000000017;
        }

        else
        {
          v11 = 0x74756F52646E6573;
        }

        if (a1 == 1)
        {
          v12 = 0x8000000236F31460;
        }

        else
        {
          v12 = 0xED0000656E694C65;
        }
      }

      else
      {
        v12 = 0x8000000236F31480;
        v11 = 0xD000000000000019;
      }

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v52);

      *(v9 + 14) = v43;
      v20 = "%s reason=%s, userEnabled is already true";
LABEL_68:
      _os_log_impl(&dword_236ED4000, oslog, v8, v20, v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383C2D60](v10, -1, -1);
      MEMORY[0x2383C2D60](v9, -1, -1);

      return;
    }

    goto LABEL_35;
  }

  v21 = 0xD000000000000017;
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = MEMORY[0x2383C2360](0xD000000000000015, 0x8000000236F314A0);
  v24 = [v22 objectForKey_];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52[0] = v50;
  v52[1] = v51;
  if (*(&v51 + 1))
  {
    if (swift_dynamicCast() && (v49 & 1) == 0)
    {
      if (one-time initialization token for vehicleStateManager != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.vehicleStateManager);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v52[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000236F31430, v52);
        *(v29 + 12) = 2080;
        if (a1)
        {
          if (a1 == 1)
          {
            v31 = 0x8000000236F31460;
          }

          else
          {
            v21 = 0x74756F52646E6573;
            v31 = 0xED0000656E694C65;
          }
        }

        else
        {
          v31 = 0x8000000236F31480;
          v21 = 0xD000000000000019;
        }

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v31, v52);

        *(v29 + 14) = v47;
        _os_log_impl(&dword_236ED4000, v27, v28, "%s reason=%s, not touching userEnabled", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2383C2D60](v30, -1, -1);
        MEMORY[0x2383C2D60](v29, -1, -1);
      }

      return;
    }
  }

  else
  {
    outlined destroy of UUID?(v52, &_sypSgMd, &_sypSgMR);
  }

  v32 = v1;
  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.vehicleStateManager);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v52[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000236F31430, v52);
    *(v36 + 12) = 2080;
    v39 = a1;
    v38 = a1 == 0;
    v40 = v32;
    if (v38)
    {
      v42 = 0x8000000236F31480;
      v41 = 0xD000000000000019;
    }

    else
    {
      if (v39 == 1)
      {
        v41 = 0xD000000000000017;
      }

      else
      {
        v41 = 0x74756F52646E6573;
      }

      if (v39 == 1)
      {
        v42 = 0x8000000236F31460;
      }

      else
      {
        v42 = 0xED0000656E694C65;
      }
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v52);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_236ED4000, v34, v35, "%s reason=%s, forcing userEnabled", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C2D60](v37, -1, -1);
    MEMORY[0x2383C2D60](v36, -1, -1);
  }

  else
  {

    v40 = v32;
  }

  v45 = [v40 route];
  if (v45)
  {
    v46 = v45;
    [v45 setUserEnabled_];
  }
}

void CPVehicleStateManager.send(_:)(unsigned __int8 a1)
{
  if (*(*&v1[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33) != 1)
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.vehicleStateManager);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, &v12);
    v9 = "%s failed: routeLineSupport.ownsNavigation is false";
    goto LABEL_15;
  }

  v3 = [v1 route];
  if (!v3)
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.vehicleStateManager);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, &v12);
    v9 = "%s failed: route is nil";
LABEL_15:
    _os_log_impl(&dword_236ED4000, oslog, v6, v9, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C2D60](v8, -1, -1);
    MEMORY[0x2383C2D60](v7, -1, -1);

    return;
  }

  if (a1 >= 7u)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  [v3 setRouteState_];
LABEL_16:
}

void CPVehicleStateManager.send(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v131 = (&v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v121 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v121 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v121 - v19;
  v21 = OBJC_IVAR___CPVehicleStateManager_routeSharingState;
  if (*(*&v2[OBJC_IVAR___CPVehicleStateManager_routeSharingState] + 33) != 1)
  {
    if (one-time initialization token for vehicleStateManager != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.vehicleStateManager);
    v131 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v131, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v134[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, v134);
      v41 = "%s failed: routeLineSupport.ownsNavigation is false";
LABEL_16:
      _os_log_impl(&dword_236ED4000, v131, v38, v41, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2383C2D60](v40, -1, -1);
      MEMORY[0x2383C2D60](v39, -1, -1);
LABEL_17:

      return;
    }

LABEL_47:
    v79 = v131;

    return;
  }

  v128 = v18;
  v129 = v5;
  v130 = a1;
  CPVehicleStateManager.forceUserEnabledIfAllowed(reason:)(2u);
  v22 = *&v2[v21];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v127 = v4;

    v25 = [v24 vehicleEnabled];

    if (v25 && (v26 = swift_unknownObjectWeakLoadStrong()) != 0 && (v27 = v26, v28 = [v26 userEnabled], v27, v28) && (*(v22 + 32) & 1) != 0)
    {
      v29 = *(v22 + 33);

      v30 = v127;
      if (v29)
      {
        v31 = [v2 delegate];
        if (v31)
        {
          v32 = v31;
          v126 = [v2 route];
          if (v126)
          {
            v124 = v32;
            if (v130)
            {
              v33 = [v130 identifier];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v34 = *(v129 + 56);
              v35 = v20;
              v36 = 0;
            }

            else
            {
              v34 = *(v129 + 56);
              v35 = v20;
              v36 = 1;
            }

            v122 = v34;
            v34(v35, v36, 1, v30);
            v57 = *&v2[v21];
            v58 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
            swift_beginAccess();
            v59 = *(v7 + 48);
            outlined init with copy of UUID?(v20, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v125 = v59;
            outlined init with copy of UUID?(v57 + v58, &v9[v59], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v60 = v129;
            v61 = *(v129 + 48);
            v62 = v127;
            v123 = v129 + 48;
            if (v61(v9, 1, v127) == 1)
            {
              outlined destroy of UUID?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v61(&v9[v125], 1, v62) == 1)
              {
                v121 = v61;
                outlined destroy of UUID?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_51:
                if (one-time initialization token for vehicleStateManager != -1)
                {
                  swift_once();
                }

                v82 = type metadata accessor for Logger();
                __swift_project_value_buffer(v82, static Logger.vehicleStateManager);
                swift_unknownObjectRetain();
                v83 = v2;
                v84 = Logger.logObject.getter();
                v85 = static os_log_type_t.debug.getter();

                v86 = v130;
                swift_unknownObjectRelease();
                if (os_log_type_enabled(v84, v85))
                {
                  LODWORD(v128) = v85;
                  v87 = swift_slowAlloc();
                  v125 = swift_slowAlloc();
                  v132 = v125;
                  *v87 = 136315650;
                  *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, &v132);
                  *(v87 + 12) = 2080;
                  if (v86)
                  {
                    v88 = [v86 identifier];
                    v89 = v131;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v90 = UUID.uuidString.getter();
                    v92 = v91;
                    v93 = v127;
                    (*(v129 + 8))(v89, v127);
                  }

                  else
                  {
                    v92 = 0xE300000000000000;
                    v90 = 7104878;
                    v93 = v127;
                  }

                  v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v132);

                  *(v87 + 14) = v110;
                  *(v87 + 22) = 2080;
                  v111 = *&v2[v21];
                  v112 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
                  swift_beginAccess();
                  outlined init with copy of UUID?(v111 + v112, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  if (v121(v13, 1, v93))
                  {
                    outlined destroy of UUID?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    v113 = 0xE300000000000000;
                    v114 = 7104878;
                  }

                  else
                  {
                    v115 = v129;
                    v116 = v131;
                    (*(v129 + 16))(v131, v13, v93);
                    outlined destroy of UUID?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    v117 = UUID.uuidString.getter();
                    v113 = v118;
                    (*(v115 + 8))(v116, v93);
                    v114 = v117;
                  }

                  v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, &v132);

                  *(v87 + 24) = v119;
                  _os_log_impl(&dword_236ED4000, v84, v128, "%s failed: routeLine.identifier=%s  lastRouteLineIdentifier=%s", v87, 0x20u);
                  v120 = v125;
                  swift_arrayDestroy();
                  MEMORY[0x2383C2D60](v120, -1, -1);
                  MEMORY[0x2383C2D60](v87, -1, -1);
                }

                swift_unknownObjectRelease();

                return;
              }
            }

            else
            {
              outlined init with copy of UUID?(v9, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v61(&v9[v125], 1, v62) != 1)
              {
                v121 = v61;
                v80 = v131;
                (*(v60 + 32))(v131, &v9[v125], v62);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                LODWORD(v125) = dispatch thunk of static Equatable.== infix(_:_:)();
                v81 = *(v60 + 8);
                v81(v80, v62);
                outlined destroy of UUID?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v81(v17, v62);
                outlined destroy of UUID?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v63 = v130;
                if (v125)
                {
                  goto LABEL_51;
                }

                goto LABEL_41;
              }

              outlined destroy of UUID?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              (*(v60 + 8))(v17, v62);
            }

            outlined destroy of UUID?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            v63 = v130;
LABEL_41:
            if (one-time initialization token for vehicleStateManager != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            __swift_project_value_buffer(v64, static Logger.vehicleStateManager);
            swift_unknownObjectRetain();
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();
            v67 = os_log_type_enabled(v65, v66);
            v68 = v124;
            if (v67)
            {
              v69 = v63;
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v133[0] = v71;
              *v70 = 136315394;
              *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, v133);
              *(v70 + 12) = 2080;
              v72 = v129;
              if (v69)
              {
                v73 = [v69 identifier];
                v74 = v131;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v75 = UUID.uuidString.getter();
                v77 = v76;
                v78 = v74;
                v68 = v124;
                (*(v72 + 8))(v78, v127);
              }

              else
              {
                v75 = 7104878;
                v77 = 0xE300000000000000;
              }

              v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v133);

              *(v70 + 14) = v94;
              _os_log_impl(&dword_236ED4000, v65, v66, "%s sending routeLine.identifier %s", v70, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2383C2D60](v71, -1, -1);
              MEMORY[0x2383C2D60](v70, -1, -1);
            }

            v95 = v126;
            v96 = v130;
            if (v130)
            {
              swift_getObjectType();
              v97 = [swift_unknownObjectRetain() geodeticSystem];
              if (v97 == 2)
              {
                v98 = 2;
              }

              else
              {
                v98 = v97 == 1;
              }

              [v95 setGeodeticSystem_];
              v99 = CPBridgeRouteLine.legs.getter();
              [v95 setLegs_];

              v100 = [v96 originLocation];
              swift_getObjectType();
              v101 = CPBridgeNavigationWaypoint.caf.getter();
              swift_unknownObjectRelease();
              [v95 setOrigin_];

              v102 = [v96 destinationLocation];
              swift_getObjectType();
              v103 = CPBridgeNavigationWaypoint.caf.getter();
              swift_unknownObjectRelease();
              [v95 setDestination_];

              v104 = [v68 identifier];
              if (!v104)
              {
                v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v104 = MEMORY[0x2383C2360](v105);
              }

              [v95 setUserVisibleApplicationName_];

              v106 = *&v2[v21];

              v107 = [v96 identifier];
              v108 = v128;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v122(v108, 0, 1, v127);
              v109 = OBJC_IVAR____TtC7CarPlay17RouteSharingState_lastIdentifier;
              swift_beginAccess();
              outlined assign with take of UUID?(v108, v106 + v109);
              swift_endAccess();
            }

            else
            {
              [v2 clearRouteLine];
              swift_unknownObjectRelease();
            }

            return;
          }

          if (one-time initialization token for vehicleStateManager != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static Logger.vehicleStateManager);
          v131 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v131, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v134[0] = v56;
            *v55 = 136315138;
            *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, v134);
            _os_log_impl(&dword_236ED4000, v131, v54, "%s failed: route is nil", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x2383C2D60](v56, -1, -1);
            MEMORY[0x2383C2D60](v55, -1, -1);
            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        if (one-time initialization token for vehicleStateManager != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.vehicleStateManager);
        v131 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v131, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v134[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, v134);
          v41 = "%s failed: delegate is nil";
          goto LABEL_16;
        }

        goto LABEL_47;
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for vehicleStateManager != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.vehicleStateManager);
  v43 = v2;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v134[0] = v47;
    *v46 = 136315394;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x293A5F28646E6573, 0xE800000000000000, v134);
    *(v46 + 12) = 2080;

    v48 = RouteSharingState.description.getter();
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v134);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_236ED4000, v44, v45, "%s failed: routeLineSupport.enabled is false - %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C2D60](v47, -1, -1);
    MEMORY[0x2383C2D60](v46, -1, -1);
  }

  [v43 clearRouteLine];
}

id CPVehicleStateManager.clearRoute()()
{
  v1 = [v0 route];
  if (v1)
  {
    v2 = v1;
    [v1 setApplicationEnabled_];
  }

  v3 = [v0 route];
  if (v3)
  {
    v4 = v3;
    [v3 setRouteState_];
  }

  v5 = [v0 route];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x2383C2360](0, 0xE000000000000000);
    [v6 setUserVisibleApplicationName_];
  }

  return [v0 clearRouteLine];
}

void CPVehicleStateManager.clearRouteLine()()
{
  v1 = [v0 route];
  if (v1)
  {
    v2 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v4 = [objc_opt_self() routeLegsWithArray_];

    [v2 setLegs_];
  }

  v5 = [v0 route];
  if (v5)
  {
    v6 = v5;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v7 = objc_allocWithZone(MEMORY[0x277CF8598]);
    v8 = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithDictionary_];

    [v6 setOrigin_];
  }

  v10 = [v0 route];
  if (v10)
  {
    v11 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v12 = objc_allocWithZone(MEMORY[0x277CF8598]);
    v13 = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v12 initWithDictionary_];

    [v11 setDestination_];
  }
}

id CPVehicleStateManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void CPVehicleStateManager.carManager(_:didUpdateCurrentCar:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    [v3 registerObserver_];
    [v2 carDidUpdateAccessories_];
  }
}

void CPVehicleStateManager.carDidUpdateAccessories(_:)()
{
  v1 = [v0 route];
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver_];
    swift_unknownObjectWeakAssign();
  }
}

id CPVehicleStateManager.routeService(_:didUpdateApplicationEnabled:)()
{
  result = [v0 delegate];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *&v0[OBJC_IVAR___CPVehicleStateManager_routeSharingState];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;

  v6 = [v5 vehicleEnabled];

  if ((v6 & 1) == 0 || (v7 = swift_unknownObjectWeakLoadStrong()) == 0 || (v8 = v7, v9 = [v7 userEnabled], v8, !v9) || (*(v3 + 32) & 1) == 0)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = *(v3 + 33);

  v11 = v10;
LABEL_11:
  [v2 vehicleStateManager:v0 didUpdateRouteSharingEnabled:v11];

  return swift_unknownObjectRelease();
}

void @objc CPVehicleStateManager.routeService(_:didUpdateApplicationEnabled:)(void *a1)
{
  v4 = a1;
  v1 = [v4 delegate];
  if (v1)
  {
    v2 = v1;

    v3 = RouteSharingState.enabled.getter();

    [v2 vehicleStateManager:v4 didUpdateRouteSharingEnabled:v3 & 1];
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for RouteSharingState(uint64_t a1)
{
  result = type metadata singleton initialization cache for RouteSharingState;
  if (!type metadata singleton initialization cache for RouteSharingState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RouteSharingState(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

unint64_t type metadata accessor for CPVehicleStateManager(uint64_t a1, uint64_t a2)
{
  result = lazy cache variable for type metadata for CPVehicleStateManager;
  if (!lazy cache variable for type metadata for CPVehicleStateManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPVehicleStateManager);
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383C2430](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of UUID?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
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

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void CPSanitizeImage_cold_1(objc_class *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(a1);
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v3 = 138412546;
  v4 = v1;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_236ED4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Animated images are not supported by %@. Using the first image instead.\n%@", &v3, 0x16u);
}