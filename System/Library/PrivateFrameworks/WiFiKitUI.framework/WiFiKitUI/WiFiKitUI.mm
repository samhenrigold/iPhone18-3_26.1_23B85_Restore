void *sub_273FBB4D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_273FBB4EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_273FBB520()
{
  v1 = type metadata accessor for NetworkListRowView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  swift_unknownObjectRelease();

  if (*(v0 + v3 + 32))
  {
  }

  if (*(v5 + 56))
  {
  }

  v6 = v1[10];
  v7 = sub_274051948();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[11], v7);
  v8(v5 + v1[12], v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_273FBB690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_273FBB6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_274051948();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273FBB7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_274051948();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273FBB854()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB8C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510F8();
  *a1 = result;
  return result;
}

uint64_t sub_273FBB958()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB990()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB9D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274051098();
  *a1 = result;
  return result;
}

uint64_t sub_273FBBA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A8, &qword_27405A0D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBBA98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2740510D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_273FBBB0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_273FBBB84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBBBC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBBC04()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273FBBEA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_273FBBF58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_273FBC024()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC05C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC094()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC0CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC104()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_273FBC25C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273FBC294()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC5DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC614()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBC728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273FBC790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274051058();
  *a1 = result;
  return result;
}

uint64_t sub_273FBC7E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510B8();
  *a1 = result;
  return result;
}

uint64_t sub_273FBC8CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_273FBC95C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_273FBCA00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBCA38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBCA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_274051948();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273FBCB38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_274051948();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273FBCC28()
{
  v1 = sub_274050FE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for NetworkList(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_274051948();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

id sub_273FBCE04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_273FBCE38()
{
  v1 = type metadata accessor for NetworkListRowView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for NetworkList(0);
  v6 = *(*(v5 - 8) + 80);
  v14 = *(*(v5 - 8) + 64);

  v7 = v0 + v3;
  swift_unknownObjectRelease();

  if (*(v0 + v3 + 32))
  {
  }

  if (*(v7 + 56))
  {
  }

  v8 = v2 | v6;
  v9 = (v3 + v4 + v6) & ~v6;

  v10 = v1[10];
  v11 = sub_274051948();
  v12 = *(*(v11 - 8) + 8);
  v12(v7 + v10, v11);
  v12(v7 + v1[11], v11);
  v12(v7 + v1[12], v11);

  v12(v0 + v9 + *(v5 + 24), v11);

  return MEMORY[0x2821FE8E8](v0, v9 + v14, v8 | 7);
}

uint64_t sub_273FBD094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A30, &qword_27405B828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBD150()
{
  v1 = (type metadata accessor for NetworkList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_274051948();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273FBD2BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Class WFManagedConfigurationUIClassFromString(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(v1);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/ManagedConfigurationUI.bundle"];
    [v3 load];
    v2 = NSClassFromString(v1);
  }

  v4 = v2;

  return v2;
}

__CFString *WFStringFromDeviceCapability(uint64_t a1)
{
  v1 = @"WFDeviceCapabilityNone";
  if (a1 == 3)
  {
    v1 = @"WFDeviceCapabilityChinaGreenTea";
  }

  if (a1 == 2)
  {
    return @"WFDeviceCapabilityChinaWiFiOnly";
  }

  else
  {
    return v1;
  }
}

unint64_t WFSignalBarsFromScaledRSSI(float a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  v3 = vcvtps_u32_f32(a1 * 3.0);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t __WFScanRecordAlphaSortCompartor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 title];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 title];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v4 title];

  if (v8)
  {
    v9 = [v5 title];

    if (v9)
    {
      v10 = [v4 title];
      v11 = [v5 title];
      v7 = [v10 caseInsensitiveCompare:v11];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

LABEL_9:

  return v7;
}

uint64_t __WFScanRecordDefaultSortCompartor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isInstantHotspot] && !objc_msgSend(v5, "isInstantHotspot"))
  {
    goto LABEL_11;
  }

  if ([v4 isInstantHotspot] & 1) == 0 && (objc_msgSend(v5, "isInstantHotspot"))
  {
    goto LABEL_12;
  }

  v6 = [v4 title];
  if (v6)
  {

    goto LABEL_8;
  }

  v7 = [v5 title];

  if (v7)
  {
LABEL_8:
    v8 = [v4 title];

    if (v8)
    {
      v9 = [v5 title];

      if (v9)
      {
        v10 = [v4 title];
        v11 = [v5 title];
        v7 = [v10 localizedCaseInsensitiveCompare:v11];

        goto LABEL_13;
      }

LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v7 = -1;
  }

LABEL_13:

  return v7;
}

uint64_t WFCurrentDeviceCapability(uint64_t a1)
{
  if (WFIsGreenTeaDevice___greenTeaCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_1();
  }

  if (WFIsGreenTeaDevice___greenTea)
  {
    return 3;
  }

  if (WFHasWAPICapability___wapiEnabledCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_2();
  }

  if (WFHasWAPICapability___wapiCapability != 1)
  {
    return 1;
  }

  if (WFIsWAPINotAvailable___wapiDisabledToken != -1)
  {
    WFCurrentDeviceCapability_cold_3();
  }

  if (WFIsWAPINotAvailable___wapiDisabled)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t WFIsGreenTeaDevice(uint64_t a1, uint64_t a2)
{
  if (WFIsGreenTeaDevice___greenTeaCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_1();
  }

  return WFIsGreenTeaDevice___greenTea;
}

uint64_t WFHasWAPICapability(uint64_t a1)
{
  if (WFHasWAPICapability___wapiEnabledCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_2();
  }

  return WFHasWAPICapability___wapiCapability;
}

uint64_t WFIsWAPINotAvailable(uint64_t a1)
{
  if (WFIsWAPINotAvailable___wapiDisabledToken != -1)
  {
    WFCurrentDeviceCapability_cold_3();
  }

  return WFIsWAPINotAvailable___wapiDisabled;
}

void __WFIsWAPINotAvailable_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = MGGetProductType();
  v1 = MGGetStringAnswer();
  v2 = MGGetBoolAnswer();
  if (v0 <= 2516717267)
  {
    if (v0 > 2023824666)
    {
      if (v0 > 2262113698)
      {
        if (v0 == 2262113699)
        {
          goto LABEL_26;
        }

        v3 = 2458172802;
      }

      else
      {
        if (v0 == 2023824667)
        {
          goto LABEL_26;
        }

        v3 = 2158787296;
      }
    }

    else if (v0 > 1353145732)
    {
      if (v0 == 1353145733)
      {
        goto LABEL_26;
      }

      v3 = 1868379043;
    }

    else
    {
      if (v0 == 746003606)
      {
        goto LABEL_26;
      }

      v3 = 1119807502;
    }

    goto LABEL_25;
  }

  if (v0 <= 3054476160)
  {
    if (v0 > 2628394913)
    {
      if (v0 == 2628394914)
      {
        goto LABEL_26;
      }

      v3 = 2903084588;
    }

    else
    {
      if (v0 == 2516717268)
      {
        goto LABEL_26;
      }

      v3 = 2614323575;
    }

    goto LABEL_25;
  }

  if (v0 <= 3397214290)
  {
    if (v0 == 3054476161)
    {
      goto LABEL_26;
    }

    v3 = 3101941570;
LABEL_25:
    if (v0 != v3)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v0 != 3397214291 && v0 != 3707345671)
  {
    v3 = 3645319985;
    goto LABEL_25;
  }

LABEL_26:
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v12 = 136315138;
    v13 = "WFIsWAPINotAvailable_block_invoke";
    _os_log_impl(&dword_273FB9000, v4, v6, "%s: wapi capability is disabled for device", &v12, 0xCu);
  }

  WFIsWAPINotAvailable___wapiDisabled = 1;
LABEL_31:
  if ((v2 & 1) == 0 && [v1 intValue] >= 4377)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
    {
      v12 = 136315138;
      v13 = "WFIsWAPINotAvailable_block_invoke";
      _os_log_impl(&dword_273FB9000, v8, v10, "%s: wapi capability is disabled for WiFi-only product", &v12, 0xCu);
    }

    WFIsWAPINotAvailable___wapiDisabled = 1;
  }
}

uint64_t __WFIsGreenTeaDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  WFIsGreenTeaDevice___greenTea = result;
  return result;
}

uint64_t __WFHasWAPICapability_block_invoke()
{
  result = MGGetBoolAnswer();
  WFHasWAPICapability___wapiCapability = result;
  return result;
}

id WFWiFiTitleString()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Wfairportviewc.isa)];
  v1 = WFCurrentDeviceCapability(v0);
  if ((v1 & 6) == 2 || v1 == 4)
  {
    v3 = @"kWFLocWiFiPowerTitleCH";
  }

  else
  {
    v3 = @"kWFLocWiFiPowerTitle";
  }

  v4 = [v0 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v4;
}

uint64_t WFPowerStateToggleToString(unint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 < 4)
  {
    return *(&off_279EC5328 + a1);
  }

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 136315394;
    v8 = "WFPowerStateToggleToString";
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_273FB9000, v3, v5, "%s: %lu is invalid WFPowerState", &v7, 0x16u);
  }

  return 0;
}

id WFWiFiSecurityModeLocalizedStringFromOtherSecurityMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  v3 = v2;
  if ((a1 - 1) > 9)
  {
    v4 = @"kWFLocSecurityNoneTitle";
  }

  else
  {
    v4 = *(&off_279EC5348 + a1 - 1);
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

uint64_t _WFIsSupportedContentSizeCategoryForInsetTableView(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D76820]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D76818]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D767F0]))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D767E8]] ^ 1;
  }

  return v2;
}

__CFString *WFCurrentDeviceType()
{
  v0 = MGCopyAnswer();
  if ([(__CFString *)v0 isEqualToString:@"Unknown"])
  {

    v0 = @"iPhone";
  }

  return v0;
}

CFStringRef WFCopyProcessIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v2 = Identifier;
    CFRetain(Identifier);
    return v2;
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = getprogname();
    v6 = getpid();
    return CFStringCreateWithFormat(v4, 0, @"%s (%d)", v5, v6);
  }
}

uint64_t WFValidPasswordForSecurityMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v6 = [v5 invertedSet];

  v7 = [v3 rangeOfCharacterFromSet:v6];
  if ((a1 - 4) <= 0x3C && ((1 << (a1 - 4)) & 0x1000000000000011) != 0 || a1 == 520 || a1 == 512)
  {
    v9 = v4 == 64 && v7 == 0x7FFFFFFFFFFFFFFFLL;
    v10 = (v4 - 8) < 0x38 || v9;
  }

  else
  {
    v10 = v4 != 0;
  }

  return v10;
}

uint64_t WFSecurityModeRequiresPasswordOnly(unint64_t a1)
{
  v1 = (a1 >> 3) & 1;
  if (a1 == 64 || a1 == 512)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 256)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 4)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

BOOL WFSecurityModeIsEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

CFTypeRef WFCreateSecTrustFromCertificateChain(void *a1)
{
  v1 = a1;
  v2 = WFCreateSecTrustFromCertificateChain___eapLibraryPointer;
  if (!WFCreateSecTrustFromCertificateChain___eapLibraryPointer)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/EAP8021X.framework/EAP8021X", 1);
    WFCreateSecTrustFromCertificateChain___eapLibraryPointer = v2;
  }

  if (v2)
  {
    v3 = WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy = dlsym(v2, "EAPSecPolicyCopy");
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      v10 = SecCertificateCreateWithData(v9, [v1 objectAtIndex:v8]);
      if (v10)
      {
        v11 = v10;
        [v4 addObject:v10];
        CFRelease(v11);
      }

      cf = 0;
      if (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
      {
        (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)(&cf);
        if (cf)
        {
          [v5 addObject:?];
          CFRelease(cf);
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }

  if ([v4 count])
  {
    cf = 0;
    if (SecTrustCreateWithCertificates(v4, v5, &cf))
    {
      v12 = 0;
    }

    else
    {
      v12 = cf;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t WFWiFiSecurityModeFromOtherSecurityMode(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_274059148[a1 - 1];
  }
}

id WFWiFiLocalizedStringFromSecurityMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  v3 = v2;
  v4 = @"kWFLocSecurityWEPTitle";
  if (a1 <= 63)
  {
    if (a1 <= 7)
    {
      if (a1 == 1)
      {
        goto LABEL_30;
      }

      if (a1 != 2)
      {
        if (a1 == 4)
        {
          v4 = @"kWFLocSecurityWPAPersonalTitle";
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      v4 = @"kWFLocSecurityDynamicWEPTitle";
      goto LABEL_30;
    }

    switch(a1)
    {
      case 8:
        v4 = @"kWFLocSecurityWPA2PersonalTitle";
        goto LABEL_30;
      case 16:
        v4 = @"kWFLocSecurityWPAEnterpriseTitle";
        goto LABEL_30;
      case 32:
LABEL_22:
        v4 = @"kWFLocSecurityWPA2EnterpriseTitle";
        goto LABEL_30;
    }

LABEL_19:
    v4 = @"kWFLocSecurityNoneTitle";
    goto LABEL_30;
  }

  if (a1 <= 511)
  {
    switch(a1)
    {
      case 64:
        v4 = @"kWFLocSecurityWAPITitle";
        break;
      case 128:
        v4 = @"kWFLocSecurityWAPIEnterpriseTitle";
        break;
      case 256:
        goto LABEL_30;
      default:
        goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (a1 > 1023)
  {
    if (a1 == 1024)
    {
      v4 = @"kWFLocSecurityWPA3EnterpriseTitle";
      goto LABEL_30;
    }

    if (a1 == 1075)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (a1 != 512)
  {
    if (a1 == 520)
    {
      v4 = @"kWFLocSecurityWPA2WPA3PersonalTitle";
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v4 = @"kWFLocSecurityWPA3PersonalTitle";
LABEL_30:
  v5 = [v2 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

__CFString *WFStringFromWFSecurityMode(uint64_t a1)
{
  if (a1 <= 63)
  {
    v1 = @"WPA Enterprise";
    v10 = @"WPA2 Enterprise";
    if (a1 != 32)
    {
      v10 = 0;
    }

    if (a1 != 16)
    {
      v1 = v10;
    }

    v11 = @"WPA Personal";
    v12 = @"WPA2 Personal";
    if (a1 != 8)
    {
      v12 = 0;
    }

    if (a1 != 4)
    {
      v11 = v12;
    }

    if (a1 <= 15)
    {
      v1 = v11;
    }

    v5 = @"Open";
    v13 = @"WEP";
    v14 = @"LEAP";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 1)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 3;
  }

  else
  {
    v1 = @"Any EAP Encryption";
    v2 = @"OWE";
    if (a1 != 2048)
    {
      v2 = 0;
    }

    if (a1 != 1075)
    {
      v1 = v2;
    }

    v3 = @"WPA3 Transition";
    v4 = @"WPA3 Enterprise";
    if (a1 != 1024)
    {
      v4 = 0;
    }

    if (a1 != 520)
    {
      v3 = v4;
    }

    if (a1 <= 1074)
    {
      v1 = v3;
    }

    v5 = @"WEP 40_128";
    v6 = @"WPA3 Personal";
    if (a1 != 512)
    {
      v6 = 0;
    }

    if (a1 != 256)
    {
      v5 = v6;
    }

    v7 = @"WAPI Personal";
    v8 = @"WAPI Enterprise";
    if (a1 != 128)
    {
      v8 = 0;
    }

    if (a1 != 64)
    {
      v7 = v8;
    }

    if (a1 <= 255)
    {
      v5 = v7;
    }

    v9 = a1 <= 519;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

__CFString *WFStringFromWFSecurityModeExt(uint64_t a1)
{
  v1 = a1;
  if (a1 > 127)
  {
    if (a1 > 1074)
    {
      if (a1 == 1075)
      {
        v2 = @"Any EAP Encryption";
        goto LABEL_27;
      }

      if (a1 == 2048)
      {
        v2 = @"OWE";
        goto LABEL_27;
      }
    }

    else
    {
      if (a1 == 128)
      {
        v2 = @"WAPI Enterprise";
        goto LABEL_27;
      }

      if (a1 == 256)
      {
        v2 = @"WEP 40_128";
        goto LABEL_27;
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"LEAP";
      goto LABEL_27;
    }

    if (a1 == 64)
    {
      v2 = @"WAPI Personal";
      goto LABEL_27;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = @"Open";
      goto LABEL_27;
    }

    if (a1 == 1)
    {
      v2 = @"WEP";
      goto LABEL_27;
    }
  }

  v3 = [MEMORY[0x277CCAB68] string];
  v2 = v3;
  if ((v1 & 0x400) != 0)
  {
    [(__CFString *)v3 appendString:@"'WPA3 Enterprise'"];
    if ((v1 & 0x20) == 0)
    {
LABEL_22:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  [(__CFString *)v2 appendString:@"'WPA2 Enterprise'"];
  if ((v1 & 0x10) == 0)
  {
LABEL_23:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  [(__CFString *)v2 appendString:@"'WPA Enterprise'"];
  if ((v1 & 0x200) == 0)
  {
LABEL_24:
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  [(__CFString *)v2 appendString:@"'WPA3 Personal'"];
  if ((v1 & 8) == 0)
  {
LABEL_25:
    if ((v1 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_34:
  [(__CFString *)v2 appendString:@"'WPA2 Personal'"];
  if ((v1 & 4) != 0)
  {
LABEL_26:
    [(__CFString *)v2 appendString:@"'WPA Personal'"];
  }

LABEL_27:

  return v2;
}

uint64_t WFSSIDIsValid(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@" "] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFAllIdentities(OSStatus *a1)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  keys[4] = *MEMORY[0x277CDC5D0];
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = @"com.apple.identities";
  values[4] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 == -25300)
  {
LABEL_6:
    v7 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    NSLog(&cfstr_SStatusLd.isa, "WFAllIdentities", a1);
    goto LABEL_6;
  }

  v7 = result;
  if (a1)
  {
LABEL_7:
    *a1 = v6;
  }

LABEL_8:

  return v7;
}

uint64_t WFWAPIRootCertificateListCreate(CFTypeRef *a1)
{
  keys[4] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDC5D0];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC230];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 != -25300)
  {
    if (v6)
    {
      NSLog(&cfstr_SStatusLd.isa, "WFWAPIRootCertificateListCreate", v6);
    }

    else
    {
      *a1 = result;
    }
  }

  return v6;
}

uint64_t WFWAPIIdentityListCreate(__CFArray **a1, __CFArray **a2)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v4 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v4;
  v5 = *MEMORY[0x277CDC428];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v5;
  keys[4] = *MEMORY[0x277CDC5D0];
  values[0] = *MEMORY[0x277CDC238];
  values[1] = @"com.apple.managedconfiguration.wapi-identity";
  v6 = *MEMORY[0x277CDC430];
  v31 = *MEMORY[0x277CBED28];
  v32 = v6;
  v33 = v31;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = SecItemCopyMatching(v8, &result);
  CFRelease(v8);
  if (v9 || !result)
  {
    if (v9 == -25300)
    {
      return v9;
    }

LABEL_24:
    NSLog(&cfstr_SStatusLd.isa, "WFWAPIIdentityListCreate", v9);
    return v9;
  }

  v10 = CFGetTypeID(result);
  if (v10 != CFArrayGetTypeID() || !CFArrayGetCount(result))
  {
    goto LABEL_24;
  }

  if (CFArrayGetCount(result) >= 1)
  {
    v11 = 0;
    Mutable = 0;
    v13 = 0;
    do
    {
      error = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(result, v11);
      if (ValueAtIndex)
      {
        format = kCFPropertyListXMLFormat_v1_0;
        v15 = CFPropertyListCreateWithData(v7, ValueAtIndex, 0, &format, &error);
        if (v15)
        {
          v16 = v15;
          Value = CFDictionaryGetValue(v15, @"certData");
          if (Value)
          {
            v18 = Value;
            v19 = SecCertificateCreateWithData(v7, Value);
            if (v19)
            {
              v20 = v19;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              CFArrayAppendValue(Mutable, v20);
              if (!v13)
              {
                v13 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              *v28 = xmmword_279EC53C0;
              v29 = @"certData";
              v21 = CFDictionaryGetValue(v16, @"pemData");
              v27[0] = v20;
              v27[1] = v21;
              v27[2] = v18;
              v22 = CFDictionaryCreate(v7, v28, v27, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFArrayAppendValue(v13, v22);
              CFRelease(v22);
              CFRelease(v20);
            }
          }

          CFRelease(v16);
        }

        else
        {
          NSLog(&cfstr_SCfpropertylis.isa, "WFWAPIIdentityListCreate", error);
        }
      }

      ++v11;
    }

    while (CFArrayGetCount(result) > v11);
    if (!a1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 0;
  Mutable = 0;
  if (a1)
  {
LABEL_20:
    *a1 = Mutable;
  }

LABEL_21:
  if (a2)
  {
    *a2 = v13;
  }

  return v9;
}

id WFBase64Encode(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v4 = v2 % 3;
  v3 = 4 * (v2 / 3);
  v5 = v3 + 4 * (v2 % 3 != 0);
  if (v5 < v2)
  {
    NSLog(&cfstr_SDataIsTooLarg.isa, "NSString *WFBase64Encode(NSData *__strong)");
LABEL_17:
    v16 = 0;
    goto LABEL_21;
  }

  v6 = v2;
  v7 = malloc_type_malloc(v3 + 4 * (v2 % 3 != 0), 0x100004077774924uLL);
  if (!v7)
  {
    NSLog(&cfstr_SUnableToAlloc.isa, "NSString *WFBase64Encode(NSData *__strong)", v5);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v1 bytes];
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 % 3 == 2)
      {
        v13 = &v8[v10];
        *v13 = WFBase64Encode_DataEncodeTable[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F];
        v10 += 2;
        v13[1] = WFBase64Encode_DataEncodeTable[*v9 & 0x3F];
      }

      else
      {
        if (v11 % 3 == 1)
        {
          v12 = ((*v9 | (*(v9 - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v12 = *v9 >> 2;
        }

        v8[v10++] = WFBase64Encode_DataEncodeTable[v12];
      }

      ++v11;
      ++v9;
      --v6;
    }

    while (v6);
    if (v4 == 2)
    {
      v17 = &v8[v10];
      *v17 = WFBase64Encode_DataEncodeTable[4 * (*(v9 - 1) & 0xF)];
      v15 = v17 + 1;
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      v14 = &v8[v10];
      *v14 = WFBase64Encode_DataEncodeTable[16 * (*(v9 - 1) & 3)];
      v14[1] = 61;
      v15 = v14 + 2;
LABEL_19:
      *v15 = 61;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:v5 encoding:1 freeWhenDone:1];
LABEL_21:

  return v16;
}

id WFWAPICertificateBlobString(SecCertificateRef a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    certificateRef = 0;
    v6 = CFGetTypeID(a1);
    if (v6 == SecIdentityGetTypeID())
    {
      v7 = SecIdentityCopyCertificate(a1, &certificateRef) != 0;
      a1 = certificateRef;
      if (!certificateRef)
      {
LABEL_14:
        if (a1)
        {
          CFRelease(a1);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = CFGetTypeID(a1);
      if (v8 != SecCertificateGetTypeID())
      {
LABEL_16:
        v5 = 0;
        goto LABEL_17;
      }

      v7 = 0;
      certificateRef = a1;
    }

    if (v7)
    {
      goto LABEL_14;
    }

    v9 = SecCertificateCopyData(a1);
    v10 = WFBase64Encode(v9);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    v12 = [v10 mutableCopy];
    v13 = [v10 length];
    if (v13 >= 0x41)
    {
      v14 = v13 + 1;
      v15 = 64;
      do
      {
        [v12 insertString:@"\n" atIndex:v15];
        v15 += 65;
      }

      while (v15 < v14++);
    }

    [v12 appendString:@"\n"];
    [v12 insertString:@"-----BEGIN ASU CERTIFICATE-----\n" atIndex:0];
    [v12 appendString:@"-----END ASU CERTIFICATE-----\n"];
    [v12 appendString:v11];
    v17 = [v12 rangeOfString:@"-----BEGIN CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v17 withString:{v18, @"-----BEGIN USER CERTIFICATE-----"}];
    v19 = [v12 rangeOfString:@"-----END CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v19 withString:{v20, @"-----END USER CERTIFICATE-----"}];
    v5 = v12;
  }

LABEL_17:

  return v5;
}

unint64_t WFSecurityModeIsWPAPersonal(unint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return (a1 >> 3) & 1;
  }
}

BOOL WFSecurityModeIsWPAEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

uint64_t WFSecurityModeIsEquivalentWPA(uint64_t a1, uint64_t a2)
{
  if ((a1 == 4 || (a1 & 8) != 0) && (a2 == 4 || (a2 & 8) != 0) || (a1 == 16 || a1 == 1024 || a1 == 32) && (a2 == 16 || a2 == 32 || a2 == 1024))
  {
    return 1;
  }

  else
  {
    return WFSecurityModeIsEquivalentEAPEncryption(a1, a2);
  }
}

uint64_t WFSecurityModeIsEquivalentEAPEncryption(uint64_t a1, uint64_t a2)
{
  if (a1 == 1075)
  {
    result = 1;
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        return result;
      }
    }

    else if (a2 == 16 || a2 == 32)
    {
      return result;
    }

    return 0;
  }

  if (a2 != 1075)
  {
    return 0;
  }

  result = 1;
  if (a1 != 16 && a1 != 32 && a1 != 1024)
  {
    return 0;
  }

  return result;
}

float WFScaleRSSI(uint64_t a1)
{
  v1 = a1 + 77.5;
  v2 = fabsf(sqrtf((v1 * v1) + 450.0));
  return (v1 / (v2 + v2)) + 0.5;
}

uint64_t WFScanRecordDeleteEnterprisePath()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" stringByDeletingLastPathComponent];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 fileExistsAtPath:v0];

  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" error:&v11];
    v5 = v11;

    if (v4)
    {
      v2 = 1;
    }

    else
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(3uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_273FB9000, v6, v8, "Removing LastNetworkEnterprise failed with error: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v2;
}

__CFString *WFSettingsURLPathForType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279EC53D8[a1];
  }
}

uint64_t _WFOpenSettingsPathWithPathType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_279EC53D8[a1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=WIFI&path=%@", v1];
}

void WFOpenSettingsURLWithType(unint64_t a1)
{
  v3 = _WFOpenSettingsPathWithPathType(a1);
  v1 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:v1 withOptions:0];
}

uint64_t WFCompareSecurityModeExt(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1 & 0x430;
  if ((v3 != 0) != ((a2 & 0x430) != 0))
  {
    goto LABEL_4;
  }

  if ((a1 & 0x430) != 0)
  {
    if ((a1 & 0x20) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if ((a1 & 0x20) == (a2 & 0x20))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    if ((a1 & 0x400) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if ((a1 & 0x400) == (a2 & 0x400))
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = a1 & 0x20C;
    if ((v3 != 0) != ((a2 & 0x20C) != 0))
    {
LABEL_4:
      if (v3)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    v7 = a1 & 0x200;
    if ((a1 & 0x200 & a2) == 0)
    {
      goto LABEL_36;
    }

    if ((a1 & 0xFFFFFFFFFFFFF9CFLL) == 0)
    {
      return 1;
    }

    if ((a2 & 0xFFFFFFFFFFFFFDFFLL) == 0)
    {
      return -1;
    }

    else
    {
LABEL_36:
      if (v7 == (a2 & 0x200))
      {
        v7 = a1 & 8;
        if (v7 == (a2 & 8))
        {
          if ((a1 & 8) != 0)
          {
            return 0;
          }

          v7 = a1 & 4;
          if (v7 == (a2 & 4))
          {
            v7 = a1 & 1;
            if (v7 == (a2 & 1))
            {
              return 0;
            }
          }
        }
      }

      if (v7)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }
}

BOOL WFIsSecurityModeMatch(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & a1) != 0;
  if (a2 == 512)
  {
    v2 = 0;
  }

  if (a1 == 512)
  {
    v2 = 0;
  }

  return a1 == a2 || v2;
}

uint64_t _WFNetworkUsesSecurityCiphers(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:a2];
  v11 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v12 = [v7 containsObject:v10];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v12 = [v13 intersectsSet:v14];
  }

LABEL_7:

  return v12;
}

uint64_t WFDetermineNetworkCipherTypeObsolete(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"WPA_IE"];
  v3 = [v1 objectForKey:@"RSN_IE"];

  if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288322A68) & 1) != 0 || v3 && (_WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288322A80) & 1) != 0)
  {
    v4 = 1;
  }

  else if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288322A98) & 1) != 0 || v3 && _WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288322AB0))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *WFConvertEthernetNetworkAddressToString(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%x:%x:%x:%x:%x:%x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]);

  return v2;
}

void WFErrorLogCurrentCallStackThread(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v17 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_288308678;
  }

  [MEMORY[0x277CCACC8] callStackSymbols];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    v10 = a2 - 1;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(1uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
      {
        *buf = 138412546;
        v23 = v4;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_273FB9000, v13, v15, "%@%@", buf, 0x16u);
      }

      if (v10 == v8)
      {
        break;
      }

      ++v11;
      ++v8;
      if (v7 == v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

void sub_273FC1BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FC270C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

void sub_273FC3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273FC3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return OSLogForWFLogLevel(1uLL);
}

BOOL OUTLINED_FUNCTION_2()
{

  return os_log_type_enabled(v0, v1);
}

void sub_273FC4554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FCA5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273FCB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_273FD3D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FD43E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_273FD5150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return OSLogForWFLogLevel(4uLL);
}

uint64_t __WFHasWAPICapability_block_invoke_0()
{
  result = MGGetBoolAnswer();
  WFHasWAPICapability___wapiCapability_0 = result;
  return result;
}

void sub_273FD7A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FE0794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273FE6338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FE8134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, v11, a4, va, 0xCu);
}

void sub_273FE9EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_273FEA410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_273FEEC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF1450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_273FF249C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

__CFString *WFDescriptionFromIdentity(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = CFGetTypeID(v1);
  if (v3 != SecIdentityGetTypeID())
  {
    v5 = CFGetTypeID(v2);
    if (v5 == SecCertificateGetTypeID())
    {
      v4 = SecCertificateCopySubjectSummary(v2);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  certificateRef = 0;
  v4 = 0;
  if (!SecIdentityCopyCertificate(v2, &certificateRef) && certificateRef)
  {
    v4 = SecCertificateCopySubjectSummary(certificateRef);
    CFRelease(certificateRef);
  }

LABEL_9:

  return v4;
}

void sub_273FF55EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_273FF5B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_273FF5F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF6518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_273FF695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF88A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF8CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF90F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF9544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF9908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274000C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_2740038B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *stringForIpv6LinkLocalAddress(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    if ([v1 length] >= 2)
    {
      v3 = 0;
      v4 = 0;
      v5 = &stru_288308678;
      do
      {
        v6 = [v1 subdataWithRange:{v3, 2}];
        v7 = [v6 bytes];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x", *v7, v7[1]];
        if ([(__CFString *)v8 isEqualToString:@"0000"])
        {

          v8 = @"0";
        }

        if (v4 == ([v1 length] >> 1) - 1)
        {
          v9 = @"%@%@";
        }

        else
        {
          v9 = @"%@%@:";
        }

        v2 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5, v8];

        ++v4;
        v3 += 2;
        v5 = v2;
      }

      while (v4 < [v1 length] >> 1);
    }

    else
    {
      v2 = &stru_288308678;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t OSLogForWFLogLevel(unint64_t a1)
{
  v1 = 0x201011000uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t WFCurrentLogLevel(uint64_t a1, uint64_t a2)
{
  if (WFIsInternalInstall___internalInstallOnceToken != -1)
  {
    WFCurrentLogLevel_cold_1();
  }

  if ((WFIsInternalInstall___internalInstall & 1) != 0 || __extraLoggingEnabled == 1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

id WFLogForCategory(unint64_t a1)
{
  if (WFLogForCategory_onceToken != -1)
  {
    WFLogForCategory_cold_1();
  }

  v2 = MEMORY[0x277D86220];
  v3 = MEMORY[0x277D86220];
  if (a1 <= 8)
  {
    v2 = *off_279EC6180[a1];
  }

  return v2;
}

uint64_t __WFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.wifikit", "general");
  v1 = _WFLogGeneral;
  _WFLogGeneral = v0;

  v2 = os_log_create("com.apple.wifikit", "alertprovider");
  v3 = _WFLogAlertProvider;
  _WFLogAlertProvider = v2;

  v4 = os_log_create("com.apple.wifikit", "captive");
  v5 = _WFLogCaptive;
  _WFLogCaptive = v4;

  v6 = os_log_create("com.apple.wifikit", "picker");
  v7 = _WFLogPicker;
  _WFLogPicker = v6;

  v8 = os_log_create("com.apple.wifikit", "personalhotspot");
  v9 = _WFLogPersonalHotspot;
  _WFLogPersonalHotspot = v8;

  v10 = os_log_create("com.apple.wifikit", "association");
  v11 = _WFLogAssociation;
  _WFLogAssociation = v10;

  v12 = os_log_create("com.apple.wifikit", "scanning");
  v13 = _WFLogScanning;
  _WFLogScanning = v12;

  v14 = os_log_create("com.apple.wifikit", "controlcenter");
  v15 = _WFLogControlCenter;
  _WFLogControlCenter = v14;

  v16 = os_log_create("com.apple.wifikit", "private-address");
  v17 = _WFLogPrivateAddress;
  _WFLogPrivateAddress = v16;

  return MEMORY[0x2821F96F8](v16, v17);
}

uint64_t __WFIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  WFIsInternalInstall___internalInstall = result;
  return result;
}

void sub_274012CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2740155DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_274016074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v55 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_274016BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiPlacardView.body.getter()
{
  type metadata accessor for PlacardCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v3;
  MobileGestalt_get_wapiCapability();

  v10 = sub_2740517C8();

  v11 = sub_2740517C8();
  v12 = [v2 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_2740517D8();
  v15 = v14;

  v16 = [v1 bundleForClass_];
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2821AD748](v3, v4, v5, v6, v7, v8);
  }

  v17 = v3;
  MobileGestalt_get_wapiCapability();

  v18 = sub_2740517C8();

  v19 = sub_2740517C8();
  v20 = [v16 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_2740517D8();
  v23 = v22;

  v8 = 0x8000000274066090;
  v3 = v13;
  v4 = v15;
  v5 = v21;
  v6 = v23;
  v7 = 0xD00000000000001BLL;

  return MEMORY[0x2821AD748](v3, v4, v5, v6, v7, v8);
}

id PlacardCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PlacardCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlacardCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_27401977C(void *a1, uint64_t *a2)
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

id sub_2740197E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2740517C8();
  }

  else
  {
    v3 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for PlacardCell();
  v4 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 0, v3);

  v5 = v4;
  [v5 setSelectionStyle_];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934E40, &unk_274059560);
  v7[4] = sub_274019AF0();
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_274019C00();
  sub_2740512D8();
  MEMORY[0x2743E36F0](v7);

  return v5;
}

uint64_t getEnumTagSinglePayload for WiFiPlacardView(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WiFiPlacardView(_WORD *result, int a2, int a3)
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

unint64_t sub_2740199D8()
{
  result = qword_280934E08;
  if (!qword_280934E08)
  {
    sub_274051748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E08);
  }

  return result;
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

unint64_t sub_274019AF0()
{
  result = qword_280934E48;
  if (!qword_280934E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280934E40, &unk_274059560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E48);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_274019C00()
{
  result = qword_280934E50;
  if (!qword_280934E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E50);
  }

  return result;
}

void sub_274019C68(uint64_t a1, unint64_t *a2, uint64_t a3)
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

double WFBatteryView.body.getter@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = 257;
  return result;
}

double sub_274019D08@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = 257;
  return result;
}

uint64_t getEnumTagSinglePayload for WFBatteryView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFBatteryView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_274019D88()
{
  result = qword_280934F20;
  if (!qword_280934F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280934F28, &qword_274059668);
    sub_274019E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934F20);
  }

  return result;
}

unint64_t sub_274019E14()
{
  result = qword_280934F30;
  if (!qword_280934F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934F30);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFBatteryViewWrapper(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WFBatteryViewWrapper(uint64_t result, int a2, int a3)
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

id sub_274019ED0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75E10]) init];
  [v0 setSizeCategory_];
  [v0 setShowsInlineChargingIndicator_];
  return v0;
}

id sub_274019F30(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  [a1 setChargePercent_];

  return [a1 setChargingState_];
}

uint64_t sub_274019FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27401A0D8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27401A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27401A0D8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27401A0B0(uint64_t a1)
{
  sub_27401A0D8();
  sub_274051288();
  __break(1u);
}

unint64_t sub_27401A0D8()
{
  result = qword_280934F38[0];
  if (!qword_280934F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280934F38);
  }

  return result;
}

id UseAutoLayout.wrappedValue.setter(void *a1)
{
  *v1 = a1;

  return [a1 setTranslatesAutoresizingMaskIntoConstraints_];
}

id **sub_27401A1D4(id **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [**result setTranslatesAutoresizingMaskIntoConstraints_];
  }

  return result;
}

uint64_t sub_27401A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27401A250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_27401A298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27401A324()
{
  sub_274051B38();
  MEMORY[0x2743E3950](0);
  return sub_274051B68();
}

uint64_t sub_27401A390(uint64_t a1)
{
  sub_274051B38();
  MEMORY[0x2743E3950](0);
  return sub_274051B68();
}

void NetworkListRowView.init(config:network:infoButtonHandler:deleteButtonHandler:)(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  sub_274051568();
  *(a7 + 72) = v25;
  *(a7 + 80) = *(&v25 + 1);
  type metadata accessor for NetworkListRowView(0);
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v11 = qword_280937200;
  sub_274051938();
  v12 = [v9 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v13 = qword_280937208;
  sub_274051938();
  v14 = [v9 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v15 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel(0);
  sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
  v16 = a1;
  *a7 = sub_274050F88();
  *(a7 + 8) = v17;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a7 + 16) = v25;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  v18 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  v19 = *&v16[v18];

  v20 = -4.0;
  if (!v19)
  {
    v20 = 0.0;
  }

  *(a7 + 48) = v20;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
}

uint64_t type metadata accessor for NetworkListRowView(uint64_t a1)
{
  result = qword_280935028;
  if (!qword_280935028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkListRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkListRowView(0);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FD0, &qword_274059810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v68 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FD8, &qword_274059818);
  MEMORY[0x28223BE20](v70);
  v11 = &v68 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FE0, &qword_274059820);
  MEMORY[0x28223BE20](v71);
  v72 = &v68 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FE8, &qword_274059828);
  MEMORY[0x28223BE20](v73);
  v74 = &v68 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FF0, &qword_274059830);
  MEMORY[0x28223BE20](v75);
  v79 = &v68 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FF8, &unk_274059838);
  v81 = *(v82 - 8);
  v15 = MEMORY[0x28223BE20](v82);
  v78 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v68 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v18 = v84;
  v19 = 1;
  if (v84)
  {
    v83 = v4;
    *v9 = sub_274051118();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935000, &qword_274059890) + 44)];
    v68 = v18;
    sub_27401AFD8(v2, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2740597E0;
    v22 = sub_274051328();
    *(inited + 32) = v22;
    v23 = sub_274051338();
    *(inited + 33) = v23;
    v24 = sub_274051358();
    sub_274051358();
    if (sub_274051358() != v22)
    {
      v24 = sub_274051358();
    }

    sub_274051358();
    v25 = sub_274051358();
    v69 = a1;
    v80 = v5;
    if (v25 != v23)
    {
      v24 = sub_274051358();
    }

    sub_274050E98();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_274020F50(v9, v11, &qword_280934FD0, &qword_274059810);
    v34 = &v11[*(v70 + 36)];
    *v34 = v24;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    sub_274051638();
    sub_274050FF8();
    v35 = v72;
    sub_274020F50(v11, v72, &qword_280934FD8, &qword_274059818);
    v36 = &v35[*(v71 + 36)];
    v37 = v89;
    *(v36 + 4) = v88;
    *(v36 + 5) = v37;
    *(v36 + 6) = v90;
    v38 = v85;
    *v36 = v84;
    *(v36 + 1) = v38;
    v39 = v87;
    *(v36 + 2) = v86;
    *(v36 + 3) = v39;
    v40 = v2;
    v41 = v83[10];
    sub_274020058(v2, v6);
    v42 = *(v76 + 80);
    v76 = (v42 + 16) & ~v42;
    v43 = swift_allocObject();
    sub_2740200BC(v6, v43 + ((v42 + 16) & ~v42));
    v44 = v35;
    v45 = v74;
    sub_274020F50(v44, v74, &qword_280934FE0, &qword_274059820);
    v46 = v73;
    v47 = *(v73 + 52);
    v48 = sub_274051948();
    v49 = *(v48 - 8);
    v50 = *(v49 + 16);
    v51 = v49 + 16;
    v52 = v45 + v47;
    v53 = v48;
    v50(v52, v40 + v41);
    v71 = v51;
    v72 = v50;
    v54 = (v45 + *(v46 + 56));
    *v54 = sub_274020120;
    v54[1] = v43;
    v73 = v83[11];
    sub_274020058(v40, v6);
    v55 = swift_allocObject();
    *(v55 + 16) = v68;
    sub_2740200BC(v6, v55 + ((v42 + 24) & ~v42));
    v56 = v79;
    sub_274020F50(v45, v79, &qword_280934FE8, &qword_274059828);
    v57 = v75;
    (v50)(v56 + *(v75 + 52), v40 + v73, v53);
    v58 = (v56 + *(v57 + 56));
    *v58 = sub_274020138;
    v58[1] = v55;
    v59 = v83[12];
    sub_274020058(v40, v6);
    v60 = v76;
    v61 = swift_allocObject();
    sub_2740200BC(v6, v61 + v60);
    v62 = v78;
    sub_274020F50(v56, v78, &qword_280934FF0, &qword_274059830);
    v63 = v82;
    (v72)(v62 + *(v82 + 52), v40 + v59, v53);
    v64 = (v62 + *(v63 + 56));
    *v64 = sub_2740201AC;
    v64[1] = v61;
    v65 = v77;
    sub_274020F50(v62, v77, &qword_280934FF8, &unk_274059838);
    v66 = v65;
    a1 = v69;
    sub_274020F50(v66, v69, &qword_280934FF8, &unk_274059838);
    v19 = 0;
  }

  else
  {
    v63 = v82;
  }

  return (*(v81 + 56))(a1, v19, 1, v63);
}

uint64_t sub_27401AFD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v85 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C0, &qword_274059A58);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C8, &qword_274059A60);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350D0, &qword_274059A68);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v89 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v72 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350D8, &qword_274059A70);
  MEMORY[0x28223BE20](v84);
  v13 = (&v72 - v12);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350E0, &qword_274059A78);
  MEMORY[0x28223BE20](v77);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350E8, &qword_274059A80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v88 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350F0, &qword_274059A88);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350F8, &qword_274059A90);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v92 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - v27;
  *(&v111 + 1) = &type metadata for SwiftListFeatureFlags;
  v78 = sub_274020A34();
  *&v112 = v78;
  v29 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(&v110);
  if ((v29 & 1) != 0 && (v30 = *(a1 + 8), v31 = OBJC_IVAR___WFNetworkRowConfig_isEditable, swift_beginAccess(), *(v30 + v31) == 1))
  {
    sub_27401BB4C(v23);
    sub_274020F50(v23, v28, &qword_2809350F0, &qword_274059A88);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v21 + 56))(v28, v32, 1, v20);
  v33 = *(a1 + 8);
  v34 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  if (*(v33 + v34))
  {
    v82 = 0u;
    v83 = xmmword_2740597F0;
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v35 = vdupq_n_s64(1uLL);
    v35.i64[0] = v110;
    v83 = v35;
    sub_274051638();
    sub_274050F38();
    v82 = v117;
    v80 = v119;
    v81 = v118;
  }

  v36 = v79;
  v91 = v28;
  v37 = [v79 isInstantHotspot];
  v74 = a1;
  if (v37)
  {
    v38 = sub_274051118();
    LOBYTE(v101[0]) = 1;
    sub_27401E340(v36, &v103);
    v39 = v103;
    v40 = v104;
    v41 = BYTE8(v104);
    v42 = v105;

    sub_274020AD4(*(&v39 + 1), v40, v41);

    sub_27402029C(*(&v39 + 1), v40, v41);

    LOBYTE(v103) = v41;
    v43 = v101[0];
    *v15 = v38;
    *(v15 + 1) = 0;
    v15[16] = v43;
    *(v15 + 24) = v39;
    *(v15 + 5) = v40;
    v15[48] = v41;
    *(v15 + 56) = v42;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935110, &qword_280935108, &qword_274059A98, MEMORY[0x277CE1138]);
    sub_27402179C(&qword_280935118, &qword_2809350D8, &qword_274059A70, MEMORY[0x277CE14C0]);
    sub_2740512B8();
  }

  else
  {
    sub_27401C46C(v36, v13);
    sub_274021180(v13, v15, &qword_2809350D8, &qword_274059A70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935110, &qword_280935108, &qword_274059A98, MEMORY[0x277CE1138]);
    sub_27402179C(&qword_280935118, &qword_2809350D8, &qword_274059A70, MEMORY[0x277CE14C0]);
    sub_2740512B8();
    sub_2740211E8(v13, &qword_2809350D8, &qword_274059A70);
  }

  *(&v104 + 1) = &type metadata for SwiftListFeatureFlags;
  *&v105 = v78;
  v44 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(&v103);
  v45 = 1;
  v46 = v91;
  if (v44)
  {
    v47 = *(v74 + 80);
    LOBYTE(v103) = *(v74 + 72);
    *(&v103 + 1) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
    sub_274051578();
    if (LOBYTE(v101[0]) == 1 && (v48 = OBJC_IVAR___WFNetworkRowConfig_isEditable, swift_beginAccess(), *(v33 + v48) == 1))
    {
      v49 = v72;
      sub_27401D30C(v72);
      v50 = v73;
      sub_274020F50(v49, v73, &qword_2809350C0, &qword_274059A58);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v50 = v73;
    }

    (*(v75 + 56))(v50, v51, 1, v76);
    sub_274020F50(v50, v90, &qword_2809350C8, &qword_274059A60);
    v45 = 0;
  }

  v52 = v90;
  (*(v86 + 56))(v90, v45, 1, v87);
  v53 = v92;
  sub_274021180(v46, v92, &qword_2809350F8, &qword_274059A90);
  v98 = v114;
  v99 = v115;
  v100[0] = v116[0];
  *(v100 + 10) = *(v116 + 10);
  v94 = v110;
  v95 = v111;
  v96 = v112;
  v97 = v113;
  v54 = v88;
  sub_274021180(v93, v88, &qword_2809350E8, &qword_274059A80);
  v55 = v89;
  sub_274021180(v52, v89, &qword_2809350D0, &qword_274059A68);
  v56 = v53;
  v57 = v85;
  sub_274021180(v56, v85, &qword_2809350F8, &qword_274059A90);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935120, &qword_274059AA0);
  v59 = (v57 + v58[12]);
  v60 = v82;
  *v59 = v83;
  v59[1] = v60;
  v61 = v80;
  v59[2] = v81;
  v59[3] = v61;
  v62 = v58[16];
  v63 = v94;
  v64 = v95;
  v101[0] = v94;
  v101[1] = v95;
  v65 = v96;
  v66 = v97;
  v101[2] = v96;
  v101[3] = v97;
  v67 = v99;
  v101[4] = v98;
  v101[5] = v99;
  v68 = v100[0];
  v102[0] = v100[0];
  *(v102 + 10) = *(v100 + 10);
  v69 = (v57 + v62);
  v69[4] = v98;
  v69[5] = v67;
  v69[6] = v68;
  *(v69 + 106) = *(v100 + 10);
  *v69 = v63;
  v69[1] = v64;
  v69[2] = v65;
  v69[3] = v66;
  v70 = v57 + v58[20];
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_274021180(v54, v57 + v58[24], &qword_2809350E8, &qword_274059A80);
  sub_274021180(v55, v57 + v58[28], &qword_2809350D0, &qword_274059A68);
  sub_274021180(v101, &v103, &qword_280935128, &qword_274059AA8);
  sub_2740211E8(v52, &qword_2809350D0, &qword_274059A68);
  sub_2740211E8(v93, &qword_2809350E8, &qword_274059A80);
  sub_2740211E8(v91, &qword_2809350F8, &qword_274059A90);
  sub_2740211E8(v55, &qword_2809350D0, &qword_274059A68);
  sub_2740211E8(v54, &qword_2809350E8, &qword_274059A80);
  v107 = v98;
  v108 = v99;
  v109[0] = v100[0];
  *(v109 + 10) = *(v100 + 10);
  v103 = v94;
  v104 = v95;
  v105 = v96;
  v106 = v97;
  sub_2740211E8(&v103, &qword_280935128, &qword_274059AA8);
  return sub_2740211E8(v92, &qword_2809350F8, &qword_274059A90);
}

uint64_t sub_27401BB4C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NetworkListRowView(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935130, &qword_274059AB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935138, &qword_274059AB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v23[3] = &type metadata for SwiftListFeatureFlags;
  v23[4] = sub_274020A34();
  v12 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v12)
  {
    v20 = a1;
    v13 = *(v22 + 8);
    v14 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      sub_274020058(v22, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v16 = swift_allocObject();
      sub_2740200BC(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935140, &unk_274059AC0);
      sub_274020AFC();
      sub_2740515B8();
      (*(v5 + 32))(v11, v7, v4);
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    (*(v5 + 56))(v11, v17, 1, v4);
    a1 = v20;
    sub_274020F50(v11, v20, &qword_280935138, &qword_274059AB8);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v9 + 56))(a1, v18, 1, v8);
}

double sub_27401BE98@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v53 && (v4 = [v53 title], swift_unknownObjectRelease(), v4) || (v53 = *(v2 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350A8, &qword_2740599E8), sub_274051578(), v46) && (v4 = objc_msgSend(v46, sel_title), swift_unknownObjectRelease(), v4))
  {
    v5 = sub_2740517D8();
    v7 = v6;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v8 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v9 = v53;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (!v53 || (v22 = [v53 subtitle], swift_unknownObjectRelease(), !v22))
      {
        *&v53 = v5;
        *(&v53 + 1) = v7;
        sub_274020248();
        v24 = sub_274051468();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_2740597E0;
        v32 = sub_274051328();
        *(v31 + 32) = v32;
        v33 = sub_274051338();
        *(v31 + 33) = v33;
        v34 = sub_274051358();
        sub_274051358();
        if (sub_274051358() != v32)
        {
          v34 = sub_274051358();
        }

        sub_274051358();
        if (sub_274051358() != v33)
        {
          v34 = sub_274051358();
        }

        sub_274050E98();
        *&v53 = v24;
        *(&v53 + 1) = v26;
        v54[0] = v28 & 1;
        *&v54[8] = v30;
        v54[16] = v34;
        *&v54[24] = v35;
        *v55 = v36;
        *&v55[8] = v37;
        *&v55[16] = v38;
        v55[24] = 0;
        sub_274021440(&v53);
        goto LABEL_21;
      }

      v9 = sub_2740517D8();
      v8 = v23;
    }

    v44 = sub_2740511D8();
    sub_27401E214(v5, v9, v8, &v53);
    v10 = v53;
    v11 = v54[0];
    v12 = *&v54[8];
    v13 = *&v54[16];
    v43 = v55[0];
    sub_274020AD4(v53, *(&v53 + 1), v54[0]);

    sub_27402029C(v10, *(&v10 + 1), v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2740597E0;
    v15 = sub_274051328();
    *(v14 + 32) = v15;
    v16 = sub_274051338();
    *(v14 + 33) = v16;
    v17 = sub_274051358();
    sub_274051358();
    if (sub_274051358() != v15)
    {
      v17 = sub_274051358();
    }

    sub_274051358();
    if (sub_274051358() != v16)
    {
      v17 = sub_274051358();
    }

    sub_274050E98();
    v53 = v44;
    v54[0] = 1;
    *&v54[8] = v10;
    v54[24] = v11;
    *v55 = v12;
    *&v55[8] = v13;
    v55[24] = v43;
    LOBYTE(v56) = v17;
    *(&v56 + 1) = v18;
    *v57 = v19;
    *&v57[8] = v20;
    *&v57[16] = v21;
    v57[24] = 0;
    sub_274021588(&v53);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935278, &qword_274059D80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935280, &qword_274059D88);
    sub_27402144C();
    sub_274021504();
    sub_2740512B8();
    *v45 = *v52;
    *&v45[10] = *&v52[10];
    nullsub_1();
    *&v55[16] = v50;
    v56 = v51;
    *v57 = *v45;
    *&v57[10] = *&v52[10];
    v53 = v46;
    *v54 = v47;
    *&v54[16] = v48;
    *v55 = v49;
    goto LABEL_22;
  }

  sub_27402141C(&v53);
LABEL_22:
  v39 = v56;
  a1[4] = *&v55[16];
  a1[5] = v39;
  a1[6] = *v57;
  *(a1 + 106) = *&v57[10];
  v40 = *v54;
  *a1 = v53;
  a1[1] = v40;
  result = *&v54[16];
  v42 = *v55;
  a1[2] = *&v54[16];
  a1[3] = v42;
  return result;
}

uint64_t sub_27401C46C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v81 = sub_2740511B8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NetworkListRowView(0);
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v5;
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935130, &qword_274059AB0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351C8, &qword_274059B90);
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351D0, &qword_274059B98);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v94 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v68 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351D8, &qword_274059BA0);
  MEMORY[0x28223BE20](v69);
  v14 = (&v68 - v13);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351E0, &qword_274059BA8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v68 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351E8, &qword_274059BB0);
  MEMORY[0x28223BE20](v86);
  v17 = &v68 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F0, &qword_274059BB8);
  MEMORY[0x28223BE20](v85);
  v19 = &v68 - v18;
  v20 = sub_274051198();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0);
  MEMORY[0x28223BE20](v83);
  v25 = &v68 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935200, &qword_274059BC8);
  MEMORY[0x28223BE20](v84);
  v27 = &v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935208, qword_274059BD0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v89 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v96 = &v68 - v31;
  if ([a1 isSecure] && (objc_msgSend(a1, sel_isInstantHotspot) & 1) == 0)
  {
    v32 = sub_274051558();
    v87 = (sub_2740512C8() << 32) | 0x101;
    v88 = v32;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  if ([a1 iOSHotspot])
  {
    v98 = sub_274051558();
    sub_274051168();
    sub_2740514C8();

    sub_274051188();
    sub_274050FC8();
    (*(v21 + 8))(v23, v20);
    sub_2740211E8(v25, &qword_2809351F8, &qword_274059BC0);
    v33 = sub_274051388();
    KeyPath = swift_getKeyPath();
    v35 = &v27[*(v84 + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    sub_274021180(v27, v19, &qword_280935200, &qword_274059BC8);
    swift_storeEnumTagMultiPayload();
    sub_274020FB8();
    sub_274021070();
    sub_2740512B8();
    sub_2740211E8(v27, &qword_280935200, &qword_274059BC8);
    v36 = v90;
    v37 = *(v90 + 8);
  }

  else
  {
    v36 = v90;
    v37 = *(v90 + 8);
    v38 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    if (*(v37 + v38))
    {
      v39 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v97[0] == 1)
      {
        sub_27401E604(3, v25);
        sub_274021180(v25, v14, &qword_2809351F8, &qword_274059BC0);
        swift_storeEnumTagMultiPayload();
        sub_274020E4C();
        v40 = v70;
        sub_2740512B8();
        sub_2740211E8(v25, &qword_2809351F8, &qword_274059BC0);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        sub_27401FB0C(*v97, v25);
        v41 = sub_274020E4C();
        v42 = sub_27401E958(v83, v41);
        sub_2740211E8(v25, &qword_2809351F8, &qword_274059BC0);
        *v14 = v42;
        swift_storeEnumTagMultiPayload();
        v40 = v70;
        sub_2740512B8();
      }

      sub_274020F50(v40, v17, &qword_2809351E0, &qword_274059BA8);
      v39 = 0;
    }

    (*(v71 + 56))(v17, v39, 1, v72);
    sub_274021180(v17, v19, &qword_2809351E8, &qword_274059BB0);
    swift_storeEnumTagMultiPayload();
    sub_274020FB8();
    sub_274021070();
    sub_2740512B8();
    sub_2740211E8(v17, &qword_2809351E8, &qword_274059BB0);
  }

  v43 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v44 = v93;
  if (*(v37 + v43) == 1)
  {
    v45 = v75;
    sub_274020058(v36, v75);
    v46 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v47 = swift_allocObject();
    sub_2740200BC(v45, v47 + v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935140, &unk_274059AC0);
    sub_274020AFC();
    v48 = v76;
    sub_2740515B8();
    v49 = v79;
    sub_2740511A8();
    sub_27402179C(&qword_280935250, &qword_280935130, &qword_274059AB0, MEMORY[0x277CDF028]);
    sub_274020F08(&qword_2809351B8, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v50 = v82;
    v51 = v78;
    v52 = v81;
    sub_2740514A8();
    (*(v80 + 8))(v49, v52);
    (*(v77 + 8))(v48, v51);
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935258, &qword_274059CA8) + 36)) = 256;
    v53 = sub_2740512C8();
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935260, &qword_274059CB0) + 36)) = v53;
    v54 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935268, &qword_274059CB8) + 36));
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
    v56 = *MEMORY[0x277CDF418];
    v57 = sub_274050ED8();
    (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
    *v54 = swift_getKeyPath();
    v58 = v92;
    v59 = (v50 + *(v92 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935178, &qword_274059B10);
    sub_274051018();
    *v59 = swift_getKeyPath();
    sub_274020F50(v50, v44, &qword_2809351C8, &qword_274059B90);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v92;
  }

  (*(v91 + 56))(v44, v60, 1, v58);
  v61 = v96;
  v62 = v89;
  sub_274021180(v96, v89, &qword_280935208, qword_274059BD0);
  v63 = v94;
  sub_274021180(v44, v94, &qword_2809351D0, &qword_274059B98);
  v64 = v95;
  v65 = v87;
  *v95 = v88;
  v64[1] = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935248, &qword_274059CA0);
  sub_274021180(v62, v64 + *(v66 + 48), &qword_280935208, qword_274059BD0);
  sub_274021180(v63, v64 + *(v66 + 64), &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v44, &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v61, &qword_280935208, qword_274059BD0);
  sub_2740211E8(v63, &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v62, &qword_280935208, qword_274059BD0);
}

uint64_t sub_27401D30C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740511B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkListRowView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935160, &qword_274059B00);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  sub_274020058(v2, v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_2740200BC(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2740515B8();
  sub_274050F58();
  v16 = [objc_opt_self() mainScreen];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = v24;
  *&v40[1] = CGRectGetWidth(v41) / 3.0;
  v40[0] = 0;
  sub_274020C5C();
  sub_274050F68();
  v25 = sub_274050F48();

  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935170, &qword_274059B08) + 36)] = v25;
  v26 = &v13[*(v11 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935178, &qword_274059B10);
  sub_274051008();
  *v26 = swift_getKeyPath();
  sub_2740511A8();
  sub_274020CB0();
  sub_274020F08(&qword_2809351B8, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  sub_2740514A8();
  (*(v5 + 8))(v7, v4);
  sub_2740211E8(v13, &qword_280935160, &qword_274059B00);
  v27 = sub_2740514F8();
  KeyPath = swift_getKeyPath();
  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351C0, &qword_274059B88) + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  LOBYTE(v27) = sub_274051318();
  sub_274050E98();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C0, &qword_274059A58);
  v39 = a1 + *(result + 36);
  *v39 = v27;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_27401D7A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_274050D58();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  *&v21 = 0x4E6B726F7774656ELL;
  *(&v21 + 1) = 0xEB00000000656D61;
  sub_2740519B8();
  if (!*(v6 + 16) || (v7 = sub_2740317FC(v20), (v8 & 1) == 0))
  {

    sub_274020984(v20);
LABEL_12:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  sub_2740209D8(*(v6 + 56) + 32 * v7, &v21);
  sub_274020984(v20);

  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_2740211E8(&v21, &qword_2809350B0, qword_2740599F0);
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v20[0];
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v20[1];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v12 = [a2 ssid];
  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v13 = v12;
  v14 = sub_2740517D8();
  v16 = v15;

  if (!v11)
  {
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  if (!v16)
  {
  }

  if (v10 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = sub_274051B08();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  v19 = *(a3 + 8);
  sub_27403EB84(1);
  swift_getKeyPath();
  swift_getKeyPath();
  v20[0] = 1;
  return sub_274050E78();
}

void *sub_27401D9CC(uint64_t a1, void *a2)
{
  v3 = a2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (!v34)
  {
    goto LABEL_27;
  }

  v4 = [v34 isInstantHotspot];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = sub_274050D58();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v36[0] = 0x4E6B726F7774656ELL;
  v36[1] = 0xEB00000000656D61;
  sub_2740519B8();
  if (!*(v6 + 16) || (v7 = sub_2740317FC(&v34), (v8 & 1) == 0))
  {

    sub_274020984(&v34);
LABEL_14:
    *v36 = 0u;
    v37 = 0u;
    goto LABEL_15;
  }

  sub_2740209D8(*(v6 + 56) + 32 * v7, v36);
  sub_274020984(&v34);

  if (!*(&v37 + 1))
  {
LABEL_15:
    sub_2740211E8(v36, &qword_2809350B0, qword_2740599F0);
    v10 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v34;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v35;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v12 = v34;
  if (v34)
  {
    v13 = [v34 ssid];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = sub_2740517D8();
      v12 = v15;

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_25:
      if (!v12)
      {
LABEL_58:
        v33 = v3;
        sub_27403EB84(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v34 = 0;
        return sub_274050E78();
      }

      goto LABEL_26;
    }

    v14 = 0;
    v12 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

LABEL_19:
  if (!v12)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (v10 == v14 && v11 == v12)
  {
LABEL_48:

    goto LABEL_58;
  }

  v16 = sub_274051B08();

  if (v16)
  {
    goto LABEL_58;
  }

LABEL_27:
  v17 = a2[2];
  v18 = a2[3];
  v34 = v17;
  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350A8, &qword_2740599E8);
  result = sub_274051578();
  if (v36[0])
  {
    v20 = [v36[0] isInstantHotspot];
    result = swift_unknownObjectRelease();
    if (v20)
    {
      v21 = sub_274050D58();
      if (v21)
      {
        v22 = v21;
        v36[0] = 0x4E6B726F7774656ELL;
        v36[1] = 0xEB00000000656D61;
        sub_2740519B8();
        if (*(v22 + 16))
        {
          v23 = sub_2740317FC(&v34);
          if (v24)
          {
            sub_2740209D8(*(v22 + 56) + 32 * v23, v36);
            sub_274020984(&v34);

            if (*(&v37 + 1))
            {
              v25 = swift_dynamicCast();
              if (v25)
              {
                v26 = v34;
              }

              else
              {
                v26 = 0;
              }

              if (v25)
              {
                v27 = v35;
              }

              else
              {
                v27 = 0;
              }

LABEL_42:
              v34 = v17;
              v35 = v18;
              sub_274051578();
              v28 = v36[0];
              if (v36[0])
              {
                v29 = [v36[0] ssid];
                swift_unknownObjectRelease();
                if (v29)
                {
                  v30 = sub_2740517D8();
                  v28 = v31;

                  if (v27)
                  {
                    goto LABEL_45;
                  }

LABEL_50:
                  if (!v28)
                  {
                    goto LABEL_58;
                  }
                }

                v30 = 0;
                v28 = 0;
                if (!v27)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v30 = 0;
                if (!v27)
                {
                  goto LABEL_50;
                }
              }

LABEL_45:
              if (v28)
              {
                if (v26 != v30 || v27 != v28)
                {
                  v32 = sub_274051B08();

                  if ((v32 & 1) == 0)
                  {
                    return result;
                  }

                  goto LABEL_58;
                }

                goto LABEL_48;
              }
            }

LABEL_41:
            sub_2740211E8(v36, &qword_2809350B0, qword_2740599F0);
            v26 = 0;
            v27 = 0;
            goto LABEL_42;
          }
        }

        sub_274020984(&v34);
      }

      *v36 = 0u;
      v37 = 0u;
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t sub_27401DEF0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
  sub_274051578();
  sub_274051588();
}

uint64_t sub_27401DFA0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27401E09C(uint64_t a1)
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27401E108(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
  sub_274051578();
  sub_274051588();
}

uint64_t sub_27401E1B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274051558();
  v3 = sub_2740514F8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_27401E214@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v17 = a1;
  sub_274020248();

  v9 = sub_274051468();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_274050E68();

  *a6 = v9;
  *(a6 + 8) = v11;
  *(a6 + 16) = v13 & 1;
  *(a6 + 24) = v15;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = v17;
  sub_274020AD4(v9, v11, v13 & 1);

  sub_27402029C(v9, v11, v13 & 1);
}

void sub_27401E340(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedImageCache];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_2740517C8();
  v7 = [a1 hotspotSignalStrength];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 doubleValue];
  v10 = v9;

  v11 = [v5 imageNamed:v6 variableValue:{fmin(v10 * 0.25, 1.0)}];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = sub_274051538();
  v12 = [a1 hotspotCellularProtocol];
  v36 = a1;
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  sub_2740517D8();

  sub_274020248();
  v14 = sub_274051468();
  v16 = v15;
  v18 = v17;
  sub_274051388();
  v19 = sub_274051448();
  v21 = v20;
  v23 = v22;

  sub_27402029C(v14, v16, v18 & 1);

  sub_274051518();
  v24 = sub_274051428();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_27402029C(v19, v21, v23 & 1);

  v31 = [v36 hotspotBatteryLife];
  if (v31)
  {
    v32 = v31;
    [v31 doubleValue];
    v34 = v33;

    *a2 = v35;
    *(a2 + 8) = v24;
    *(a2 + 16) = v26;
    *(a2 + 24) = v28 & 1;
    *(a2 + 32) = v30;
    *(a2 + 40) = v34 / 100.0;

    sub_274020AD4(v24, v26, v28 & 1);

    sub_27402029C(v24, v26, v28 & 1);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_27401E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_274051198();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274050DB8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2740517B8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_274051798();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v18 = sub_274051548();
  sub_274051788();
  sub_274051778();
  v16 = a1;
  sub_274051768();
  sub_274051778();
  sub_2740517A8();
  sub_274050D78();
  v16 = sub_2740517E8();
  v17 = v13;
  sub_274020248();
  sub_2740514D8();

  sub_274051188();
  sub_274050FC8();
  (*(v4 + 8))(v6, v3);
  return sub_2740211E8(v12, &qword_2809351F8, &qword_274059BC0);
}

uint64_t sub_27401E958(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_2740515D8();
}

uint64_t sub_27401EA20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274051558();
  v3 = sub_274051518();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

double NetworkSubtitleView.body.getter@<D0>(uint64_t a2@<X8>)
{
  if (*(v2 + 16) == 1)
  {
    *(&v35 + 1) = *(v2 + 1);
    sub_274020248();

    v4 = sub_274051468();
    v6 = v5;
    v8 = v7;
    sub_2740513C8();
    v9 = sub_274051448();
    v11 = v10;
    v13 = v12;

    sub_27402029C(v4, v6, v8 & 1);

    sub_2740513A8();
    v14 = sub_274051418();
    v16 = v15;
    v18 = v17;
    sub_27402029C(v9, v11, v13 & 1);

    *&v35 = sub_274051508();
    sub_274051438();
    sub_27402029C(v14, v16, v18 & 1);
  }

  else
  {
    v35 = *v2;
    sub_274020248();

    v19 = sub_274051468();
    v21 = v20;
    v23 = v22;
    sub_2740513C8();
    v24 = sub_274051448();
    v26 = v25;
    v28 = v27;

    sub_27402029C(v19, v21, v23 & 1);

    sub_2740513B8();
    v29 = sub_274051418();
    v31 = v30;
    v33 = v32;
    sub_27402029C(v24, v26, v28 & 1);

    LODWORD(v35) = sub_2740512C8();
    sub_274051438();
    sub_27402029C(v29, v31, v33 & 1);
  }

  sub_2740512B8();
  result = *&v35;
  *a2 = v35;
  *(a2 + 16) = v36;
  *(a2 + 32) = v37;
  return result;
}

uint64_t sub_27401ED88()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NetworkListRow();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return MEMORY[0x2743E36F0](v2);
}

void *sub_27401EE84()
{
  v1 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27401EF54(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    sub_27401F4EC(v5);
  }
}

void sub_27401EFC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  if (v2)
  {
    sub_27401F4EC(v6);
  }
}

uint64_t (*sub_27401F03C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_27401F0C4;
}

void sub_27401F0C4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      sub_27401F4EC(v5);
    }
  }

  free(v3);
}

id NetworkListRow.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id NetworkListRow.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___WFNetworkListRow_config] = 0;
  if (a3)
  {
    v4 = sub_2740517C8();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v3;
  v7.super_class = type metadata accessor for NetworkListRow();
  v5 = objc_msgSendSuper2(&v7, sel_initWithStyle_reuseIdentifier_, 0, v4);

  return v5;
}

id NetworkListRow.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void NetworkListRow.init(coder:)()
{
  *(v0 + OBJC_IVAR___WFNetworkListRow_config) = 0;
  sub_274051A88();
  __break(1u);
}

void sub_27401F3E4(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_27401F4EC(v5);
  sub_27401F4EC(v5);
}

void sub_27401F4EC(void *a1)
{
  type metadata accessor for WFNetworkRowConfigModel(0);
  v2 = static WFNetworkRowConfigModel.modelFrom(rowConfig:)(a1);
  if (v2)
  {
    v3 = MEMORY[0x28223BE20](v2);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935090, &qword_2740599E0);
    v11[4] = sub_27402179C(&qword_280935098, &qword_280935090, &qword_2740599E0, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v11);
    type metadata accessor for NetworkListRowView(0);
    sub_274020F08(&qword_2809350A0, type metadata accessor for NetworkListRowView, &protocol conformance descriptor for NetworkListRowView);
    sub_2740512D8();
    MEMORY[0x2743E36F0](v11);
  }

  else
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v4 = sub_274050E28();
    __swift_project_value_buffer(v4, qword_280937140);
    v5 = a1;
    v10 = sub_274050E08();
    v6 = sub_2740518D8();

    if (os_log_type_enabled(v10, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_273FB9000, v10, v6, "Fail to construct WFNetworkRowConfigModel from config: %@", v7, 0xCu);
      sub_2740211E8(v8, &qword_280935088, &qword_2740599D8);
      MEMORY[0x2743E44F0](v8, -1, -1);
      MEMORY[0x2743E44F0](v7, -1, -1);
    }
  }
}

uint64_t sub_27401F774@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  [a1 network];
  v5 = [a1 infoButtonHandler];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v20 = sub_2740208B4;
  }

  else
  {
    v20 = 0;
    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  sub_274051568();
  *(a3 + 72) = v22;
  *(a3 + 80) = *(&v22 + 1);
  type metadata accessor for NetworkListRowView(0);
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v10 = qword_280937200;
  sub_274051938();
  v11 = [v8 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v12 = qword_280937208;
  sub_274051938();
  v13 = [v8 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v14 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel(0);
  sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
  v15 = a2;
  *a3 = sub_274050F88();
  *(a3 + 8) = v16;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a3 + 16) = v22;
  *(a3 + 32) = v20;
  *(a3 + 40) = v7;
  v17 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  v19 = -4.0;
  if (!*&v15[v17])
  {
    v19 = 0.0;
  }

  *(a3 + 48) = v19;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

id NetworkListRow.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NetworkListRow();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_27401FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_274051198();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274050DB8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2740517B8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_274051798();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v18 = sub_274051548();
  sub_274051788();
  sub_274051778();
  v16 = a1;
  sub_274051768();
  sub_274051778();
  sub_2740517A8();
  sub_274050D78();
  v16 = sub_2740517E8();
  v17 = v13;
  sub_274020248();
  sub_2740514D8();

  sub_274051188();
  sub_274050FC8();
  (*(v4 + 8))(v6, v3);
  return sub_2740211E8(v12, &qword_2809351F8, &qword_274059BC0);
}

uint64_t sub_27401FE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352B0, &qword_274059EC0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352B8, &qword_274059EC8) + 36));
  *v7 = v5;
  v7[1] = 0;
  v8 = sub_274051678();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352C0, &qword_274059ED0);
  v10 = (a2 + *(result + 36));
  *v10 = v8;
  v10[1] = v5;
  return result;
}

uint64_t sub_27401FF58@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_27401FFD8(id *a1, void **a2)
{
  v2 = *a2;
  sub_27403DF48(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_274020058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkListRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740200BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkListRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274020138(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkListRowView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_27401D7A0(a1, v4, v5);
}

uint64_t sub_2740201C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NetworkListRowView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_274020248()
{
  result = qword_280935010;
  if (!qword_280935010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935010);
  }

  return result;
}

uint64_t sub_27402029C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_274020330(uint64_t a1)
{
  sub_27402046C(319);
  if (v1 <= 0x3F)
  {
    sub_274020500(319, &qword_280935040, &unk_280934FC0, &qword_27405A4A0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_274020500(319, &qword_280935048, &qword_280935050, &qword_274059968, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_274020564();
        if (v4 <= 0x3F)
        {
          sub_274051948();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27402046C(uint64_t a1)
{
  if (!qword_280935038)
  {
    type metadata accessor for WFNetworkRowConfigModel(255);
    sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
    v1 = sub_274050FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_280935038);
    }
  }
}

void sub_274020500(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_274020564()
{
  if (!qword_280935058)
  {
    v0 = sub_2740515A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280935058);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2740205C8(uint64_t a1, int a2)
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

uint64_t sub_274020610(uint64_t result, int a2, int a3)
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

unint64_t sub_274020748()
{
  result = qword_280935060;
  if (!qword_280935060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935068, &qword_2740599C8);
    sub_27402179C(&qword_280935070, &qword_280934FF8, &unk_274059838, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935060);
  }

  return result;
}

unint64_t sub_2740207F8()
{
  result = qword_280935078;
  if (!qword_280935078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935080, &qword_2740599D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935078);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2740208BC(uint64_t a1)
{
  v2 = sub_274051028();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_274051088();
}

uint64_t sub_2740209D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_274020A34()
{
  result = qword_280935100;
  if (!qword_280935100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_274020AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_274020AFC()
{
  result = qword_280935A10;
  if (!qword_280935A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935140, &unk_274059AC0);
    sub_27402179C(&qword_280935150, &qword_280935158, &unk_27405AD70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935A10);
  }

  return result;
}

uint64_t sub_274020BE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkListRowView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274020C5C()
{
  result = qword_280935168;
  if (!qword_280935168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935168);
  }

  return result;
}

unint64_t sub_274020CB0()
{
  result = qword_280935180;
  if (!qword_280935180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935160, &qword_274059B00);
    sub_274020D68();
    sub_27402179C(&qword_2809351B0, &qword_280935178, &qword_274059B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935180);
  }

  return result;
}

unint64_t sub_274020D68()
{
  result = qword_280935188;
  if (!qword_280935188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935170, &qword_274059B08);
    sub_27402179C(&qword_280935190, &qword_280935198, &qword_274059B48, MEMORY[0x277CDF028]);
    sub_27402179C(&qword_2809351A0, &qword_2809351A8, &qword_274059B50, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935188);
  }

  return result;
}

unint64_t sub_274020E4C()
{
  result = qword_280935210;
  if (!qword_280935210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351F8, &qword_274059BC0);
    sub_274020F08(&qword_280935218, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935210);
  }

  return result;
}

uint64_t sub_274020F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274020F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_274020FB8()
{
  result = qword_280935220;
  if (!qword_280935220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935200, &qword_274059BC8);
    sub_274020E4C();
    sub_27402179C(&unk_280935A20, &qword_280935230, &qword_274059C98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935220);
  }

  return result;
}

unint64_t sub_274021070()
{
  result = qword_280935238;
  if (!qword_280935238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351E8, &qword_274059BB0);
    sub_2740210F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935238);
  }

  return result;
}

unint64_t sub_2740210F4()
{
  result = qword_280935240;
  if (!qword_280935240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351E0, &qword_274059BA8);
    sub_274020E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935240);
  }

  return result;
}

uint64_t sub_274021180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740211E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for NetworkListRowView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  swift_unknownObjectRelease();

  if (*(v0 + v3 + 32))
  {
  }

  if (*(v5 + 56))
  {
  }

  v6 = v1[10];
  v7 = sub_274051948();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[11], v7);
  v8(v5 + v1[12], v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740213B0()
{
  v1 = type metadata accessor for NetworkListRowView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 32);
  if (v4)
  {
    return v4();
  }

  return result;
}

double sub_27402141C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

unint64_t sub_27402144C()
{
  result = qword_280935288;
  if (!qword_280935288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935278, &qword_274059D80);
    sub_27402179C(&qword_280935290, &qword_280935298, &qword_274059D90, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935288);
  }

  return result;
}

unint64_t sub_274021504()
{
  result = qword_2809352A0;
  if (!qword_2809352A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935280, &qword_274059D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352A0);
  }

  return result;
}

unint64_t sub_2740215BC()
{
  result = qword_2809352A8;
  if (!qword_2809352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352A8);
  }

  return result;
}

unint64_t sub_27402162C()
{
  result = qword_2809352C8;
  if (!qword_2809352C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809352C0, &qword_274059ED0);
    sub_2740216E4();
    sub_27402179C(&qword_2809352E0, &qword_2809352E8, &qword_274059ED8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352C8);
  }

  return result;
}

unint64_t sub_2740216E4()
{
  result = qword_2809352D0;
  if (!qword_2809352D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809352B8, &qword_274059EC8);
    sub_27402179C(&qword_2809352D8, &qword_2809352B0, &qword_274059EC0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352D0);
  }

  return result;
}

uint64_t sub_27402179C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id WFPasswordPromptViewController.__allocating_init(networkName:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v10 = a1;
  *(v10 + 1) = a2;
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WFPasswordPromptViewController.init(networkName:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v5 = a1;
  *(v5 + 1) = a2;
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274021A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2740517C8();
  (*(a5 + 16))(a5, v6, v7);
}

id WFPasswordPromptViewController.__allocating_init(alertMessage:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WFPasswordPromptViewController.init(alertMessage:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274021D10()
{
  v52.receiver = v0;
  v52.super_class = type metadata accessor for WFPasswordPromptViewController();
  objc_msgSendSuper2(&v52, sel_viewDidLoad);
  if (*&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage + 8])
  {
    v33 = *&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
    v1 = *&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage + 8];
  }

  else
  {
    v33 = 0;
    v1 = 0xE000000000000000;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;

  v5 = sub_27403D76C(0xD00000000000001CLL, 0x8000000274066360, 0xD000000000000019, 0x8000000274066380);
  v7 = v6;
  sub_274051568();
  v32 = v45;
  v8 = v46;
  sub_274051568();
  v9 = v45;
  v10 = v46;
  sub_274022364();
  sub_274050EC8();
  v11 = v45;
  v12 = *(&v45 + 1);
  v13 = v46;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = v5;
  *&v46 = v7;
  *(&v46 + 1) = v33;
  *v47 = v1;
  memset(&v47[8], 0, 32);
  *&v47[40] = sub_274022344;
  *&v48 = v2;
  *(&v48 + 1) = sub_27402235C;
  *v49 = v3;
  *&v49[8] = v32;
  *&v49[24] = v8;
  v50 = v9;
  *v51 = v10;
  v51[8] = v11;
  *&v51[16] = v12;
  v51[24] = v13;
  v43 = v9;
  v44[0] = *v51;
  *(v44 + 9) = *&v51[9];
  v39 = *&v47[32];
  v40 = v48;
  v41 = *v49;
  v42 = *&v49[16];
  v37 = *v47;
  v38 = *&v47[16];
  v35 = v45;
  v36 = v46;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935310, &unk_274059EF0));
  sub_2740223B8(&v45, v34);
  v15 = sub_2740511E8();
  [v4 addChildViewController_];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v4 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame_];
  v28 = [v15 view];

  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v28 setAutoresizingMask_];

  v29 = [v4 view];
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v15 view];

  if (v31)
  {
    [v30 addSubview_];

    [v15 didMoveToParentViewController_];
    sub_274022414(&v45);
    return;
  }

LABEL_14:
  __break(1u);
}

id sub_2740220D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *&a5[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  if (v6)
  {
    v11 = *&a5[OBJC_IVAR___WFPasswordPromptViewController_joinHandler + 8];

    v6(a1, a2, a3, a4);
    sub_273FBD2BC(v6, v11);
  }

  return [a5 dismissViewControllerAnimated:1 completion:0];
}

id WFPasswordPromptViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFPasswordPromptViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_274022364()
{
  result = qword_280935308;
  if (!qword_280935308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935308);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2740224F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274022538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740225D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v118 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935330, &qword_27405A040);
  v119 = *(v123 - 8);
  v3 = MEMORY[0x28223BE20](v123);
  v122 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v125 = &v113 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935338, &qword_27405A048);
  v6 = MEMORY[0x28223BE20](v117);
  v121 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = (&v113 - v8);
  v9 = a1[6];
  v120 = a1;
  if (v9)
  {
    *&v146 = a1[5];
    *(&v146 + 1) = v9;
    sub_274020248();

    v10 = sub_274051468();
    v12 = v11;
    v14 = v13;
    sub_274051378();
    v15 = sub_274051448();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_27402029C(v10, v12, v14 & 1);

    LOBYTE(v10) = sub_274051328();
    sub_274050E98();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    LOBYTE(v146) = v19 & 1;
    LOBYTE(v141) = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v131[0]) = 0;
    *&v141 = v15;
    *(&v141 + 1) = v17;
    LOBYTE(v142) = v19 & 1;
    *(&v142 + 1) = v21;
    LOBYTE(v143) = v10;
    *(&v143 + 1) = v23;
    *&v144 = v25;
    *(&v144 + 1) = v27;
    *&v145[0] = v29;
    BYTE8(v145[0]) = 0;
    *&v145[1] = KeyPath;
    v31 = 1;
  }

  else
  {
    v32 = a1[4];
    *&v146 = a1[3];
    *(&v146 + 1) = v32;
    sub_274020248();

    v33 = sub_274051468();
    v35 = v34;
    v37 = v36;
    sub_274051378();
    v38 = sub_274051448();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_27402029C(v33, v35, v37 & 1);

    LOBYTE(v33) = sub_274051328();
    sub_274050E98();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LOBYTE(v146) = v42 & 1;
    LOBYTE(v141) = 0;
    v53 = swift_getKeyPath();
    LOBYTE(v131[0]) = 1;
    *&v141 = v38;
    *(&v141 + 1) = v40;
    LOBYTE(v142) = v42 & 1;
    *(&v142 + 1) = v44;
    LOBYTE(v143) = v33;
    *(&v143 + 1) = v46;
    *&v144 = v48;
    *(&v144 + 1) = v50;
    *&v145[0] = v52;
    BYTE8(v145[0]) = 0;
    *&v145[1] = v53;
    v31 = 257;
  }

  WORD4(v145[1]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935340, &unk_27405A080);
  sub_274024680();
  sub_2740512B8();
  v54 = sub_274051118();
  v55 = v124;
  *v124 = v54;
  v55[1] = 0;
  *(v55 + 16) = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935360, &qword_27405A098);
  v57 = v120;
  sub_274022E30(v120, v55 + *(v56 + 44));
  v58 = sub_274051318();
  v59 = sub_274050E98();
  v60 = v55 + *(v117 + 36);
  *v60 = v58;
  *(v60 + 1) = v61;
  *(v60 + 2) = v62;
  *(v60 + 3) = v63;
  *(v60 + 4) = v64;
  v60[40] = 0;
  MEMORY[0x28223BE20](v59);
  *(&v113 - 2) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935368, &qword_27405A0A0);
  sub_274024740();
  sub_2740513F8();
  v65 = v57[8];
  if (v65)
  {
    *&v141 = v57[7];
    *(&v141 + 1) = v65;
    sub_274020248();

    v66 = sub_274051468();
    v68 = v67;
    v70 = v69;
    sub_274051378();
    v71 = sub_274051448();
    v73 = v72;
    v75 = v74;

    sub_27402029C(v66, v68, v70 & 1);

    LODWORD(v141) = sub_2740512C8();
    v76 = sub_274051438();
    v116 = v77;
    v117 = v76;
    LOBYTE(v66) = v78;
    v115 = v79;
    sub_27402029C(v71, v73, v75 & 1);

    v114 = swift_getKeyPath();
    v80 = sub_274051308();
    sub_274050E98();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    LOBYTE(v141) = v66 & 1;
    LOBYTE(v131[0]) = 0;
    v120 = (v66 & 1);
    v113 = v80;
  }

  else
  {
    v116 = 0;
    v117 = 0;
    v114 = 0;
    v115 = 0;
    v113 = 0;
    v120 = 0;
    v82 = 0;
    v84 = 0;
    v86 = 0;
    v88 = 0;
  }

  v128 = v148;
  v129 = v149;
  v130[0] = v150[0];
  *(v130 + 10) = *(v150 + 10);
  v126 = v146;
  v127 = v147;
  v89 = v121;
  sub_274021180(v124, v121, &qword_280935338, &qword_27405A048);
  v90 = v119;
  v91 = *(v119 + 16);
  v92 = v122;
  v93 = v123;
  v91(v122, v125, v123);
  v94 = v129;
  v95 = v130[0];
  v131[3] = v129;
  v132[0] = v130[0];
  v96 = *(v130 + 10);
  *(v132 + 10) = *(v130 + 10);
  v97 = v126;
  v98 = v127;
  v131[0] = v126;
  v131[1] = v127;
  v131[2] = v128;
  v99 = v118;
  v118[2] = v128;
  v99[3] = v94;
  v99[4] = v95;
  *(v99 + 74) = v96;
  *v99 = v97;
  v99[1] = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935388, &qword_27405A0B0);
  sub_274021180(v89, v99 + v100[12], &qword_280935338, &qword_27405A048);
  v91(v99 + v100[16], v92, v93);
  v101 = (v99 + v100[20]);
  v103 = v116;
  v102 = v117;
  *&v133 = v117;
  *(&v133 + 1) = v116;
  v105 = v114;
  v104 = v115;
  *&v134 = v120;
  *(&v134 + 1) = v115;
  v135 = v114;
  v136 = 0;
  v106 = v113;
  *&v137 = v113;
  *(&v137 + 1) = v82;
  *&v138[0] = v84;
  *(&v138[0] + 1) = v86;
  *&v138[1] = v88;
  BYTE8(v138[1]) = 0;
  v107 = v137;
  v101[2] = v114;
  v101[3] = v107;
  v101[4] = v138[0];
  v108 = v134;
  *v101 = v133;
  v101[1] = v108;
  *(v101 + 73) = *(v138 + 9);
  v109 = v99 + v100[24];
  *v109 = 0;
  v109[8] = 1;
  sub_274021180(v131, &v141, &qword_280935390, &qword_27405A0B8);
  sub_274021180(&v133, &v141, &qword_280935398, &qword_27405A0C0);
  v110 = *(v90 + 8);
  v111 = v123;
  v110(v125, v123);
  sub_2740211E8(v124, &qword_280935338, &qword_27405A048);
  v139[0] = v102;
  v139[1] = v103;
  v139[2] = v120;
  v139[3] = v104;
  v139[4] = v105;
  v139[5] = 0;
  v139[6] = v106;
  v139[7] = v82;
  v139[8] = v84;
  v139[9] = v86;
  v139[10] = v88;
  v140 = 0;
  sub_2740211E8(v139, &qword_280935398, &qword_27405A0C0);
  v110(v122, v111);
  sub_2740211E8(v121, &qword_280935338, &qword_27405A048);
  v143 = v128;
  v144 = v129;
  v145[0] = v130[0];
  *(v145 + 10) = *(v130 + 10);
  v141 = v126;
  v142 = v127;
  return sub_2740211E8(&v141, &qword_280935390, &qword_27405A0B8);
}

uint64_t sub_274022E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935428, &qword_27405A138) - 8;
  MEMORY[0x28223BE20](v89);
  v88 = &v80[-v3];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935430, &unk_27405A140) - 8;
  v4 = MEMORY[0x28223BE20](v91);
  v92 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v90 = &v80[-v7];
  MEMORY[0x28223BE20](v6);
  v95 = &v80[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935198, &qword_274059B48);
  v82 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v80[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935438, &qword_27405A150);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v94 = &v80[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v80[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v80[-v22];
  v86 = &v80[-v22];
  v24 = swift_allocObject();
  v25 = *(a1 + 144);
  v24[9] = *(a1 + 128);
  v24[10] = v25;
  *(v24 + 169) = *(a1 + 153);
  v26 = *(a1 + 80);
  v24[5] = *(a1 + 64);
  v24[6] = v26;
  v27 = *(a1 + 112);
  v24[7] = *(a1 + 96);
  v24[8] = v27;
  v28 = *(a1 + 16);
  v24[1] = *a1;
  v24[2] = v28;
  v29 = *(a1 + 48);
  v24[3] = *(a1 + 32);
  v24[4] = v29;
  sub_2740223B8(a1, &v114);
  sub_2740515B8();
  sub_274051648();
  sub_274050FF8();
  v30 = *(v10 + 32);
  v30(v21, v14, v9);
  v31 = &v21[*(v16 + 44)];
  v32 = v129;
  v31[4] = v128;
  v31[5] = v32;
  v31[6] = v130;
  v33 = v125;
  *v31 = v124;
  v31[1] = v33;
  v34 = v127;
  v31[2] = v126;
  v31[3] = v34;
  sub_274020F50(v21, v23, &qword_280935438, &qword_27405A150);
  v35 = *(a1 + 16);
  *&v114 = *(a1 + 8);
  *(&v114 + 1) = v35;
  sub_274020248();

  v36 = sub_274051468();
  v38 = v37;
  LOBYTE(v16) = v39;
  sub_2740513E8();
  v40 = sub_274051448();
  v83 = v41;
  v84 = v40;
  LOBYTE(v23) = v42;
  v85 = v43;

  sub_27402029C(v36, v38, v16 & 1);

  sub_274051638();
  sub_274050FF8();
  v81 = v23 & 1;
  v113 = v23 & 1;
  v44 = swift_allocObject();
  v45 = *(a1 + 144);
  v44[9] = *(a1 + 128);
  v44[10] = v45;
  *(v44 + 169) = *(a1 + 153);
  v46 = *(a1 + 80);
  v44[5] = *(a1 + 64);
  v44[6] = v46;
  v47 = *(a1 + 112);
  v44[7] = *(a1 + 96);
  v44[8] = v47;
  v48 = *(a1 + 16);
  v44[1] = *a1;
  v44[2] = v48;
  v49 = *(a1 + 48);
  v44[3] = *(a1 + 32);
  v44[4] = v49;
  sub_2740223B8(a1, &v114);
  v50 = v87;
  sub_2740515B8();
  v114 = *(a1 + 128);
  v115 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051578();
  v51 = v103;

  v52 = HIBYTE(*(&v51 + 1)) & 0xFLL;
  if ((*(&v51 + 1) & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v53 = v52 == 0;
  KeyPath = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = v88;
  v30(v88, v50, v82);
  v57 = (v56 + *(v89 + 44));
  *v57 = KeyPath;
  v57[1] = sub_2740249AC;
  v57[2] = v55;
  sub_274051658();
  sub_274050FF8();
  v58 = v90;
  sub_274020F50(v56, v90, &qword_280935428, &qword_27405A138);
  v59 = &v58[*(v91 + 44)];
  v60 = v136;
  v59[4] = v135;
  v59[5] = v60;
  v59[6] = v137;
  v61 = v132;
  *v59 = v131;
  v59[1] = v61;
  v62 = v134;
  v59[2] = v133;
  v59[3] = v62;
  v63 = v95;
  sub_274020F50(v58, v95, &qword_280935430, &unk_27405A140);
  v64 = v86;
  v65 = v94;
  sub_274021180(v86, v94, &qword_280935438, &qword_27405A150);
  v66 = v63;
  v67 = v92;
  sub_274021180(v66, v92, &qword_280935430, &unk_27405A140);
  v68 = v65;
  v69 = v93;
  sub_274021180(v68, v93, &qword_280935438, &qword_27405A150);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935440, &qword_27405A188);
  v71 = (v69 + *(v70 + 48));
  v73 = v83;
  v72 = v84;
  *&v103 = v84;
  *(&v103 + 1) = v83;
  LOBYTE(v56) = v81;
  LOBYTE(v104) = v81;
  *(&v104 + 1) = *v112;
  DWORD1(v104) = *&v112[3];
  v74 = v85;
  *(&v104 + 1) = v85;
  v109 = v100;
  v110 = v101;
  v111 = v102;
  v107 = v98;
  v108 = v99;
  v105 = v96;
  v106 = v97;
  v75 = v101;
  v71[6] = v100;
  v71[7] = v75;
  v71[8] = v111;
  v76 = v106;
  v71[2] = v105;
  v71[3] = v76;
  v77 = v108;
  v71[4] = v107;
  v71[5] = v77;
  v78 = v104;
  *v71 = v103;
  v71[1] = v78;
  sub_274021180(v67, v69 + *(v70 + 64), &qword_280935430, &unk_27405A140);
  sub_274021180(&v103, &v114, &qword_280935448, &qword_27405A190);
  sub_2740211E8(v95, &qword_280935430, &unk_27405A140);
  sub_2740211E8(v64, &qword_280935438, &qword_27405A150);
  sub_2740211E8(v67, &qword_280935430, &unk_27405A140);
  *&v114 = v72;
  *(&v114 + 1) = v73;
  LOBYTE(v115) = v56;
  *(&v115 + 1) = *v112;
  HIDWORD(v115) = *&v112[3];
  v116 = v74;
  v121 = v100;
  v122 = v101;
  v123 = v102;
  v117 = v96;
  v118 = v97;
  v119 = v98;
  v120 = v99;
  sub_2740211E8(&v114, &qword_280935448, &qword_27405A190);
  return sub_2740211E8(v94, &qword_280935438, &qword_27405A150);
}

uint64_t sub_2740236D8@<X0>(uint64_t a1@<X8>)
{
  sub_27403D76C(0xD000000000000018, 0x80000002740664F0, 0xD000000000000021, 0x8000000274066510);
  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274023764(uint64_t a1)
{
  v1 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051578();
  sub_274051578();
  v1();
}

uint64_t sub_27402382C@<X0>(uint64_t a1@<X8>)
{
  sub_27403D76C(0xD000000000000016, 0x80000002740664B0, 0xD00000000000001FLL, 0x80000002740664D0);
  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2740238BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935380, &qword_27405A0A8);
  sub_27402179C(&qword_280935378, &qword_280935380, &qword_27405A0A8, MEMORY[0x277CE14C0]);
  return sub_274051618();
}

uint64_t sub_274023960@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A0, &qword_27405A0C8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A8, &qword_27405A0D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353B0, &qword_27405A0D8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  if (*a1)
  {
    *v13 = sub_274051118();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353C8, &qword_27405A0F0);
    sub_274023C7C(a1, &v13[*(v20 + 44)]);
    sub_273FBBA28(v13, v19);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(&v24 - v18, 1, 1, v10);
  }

  *v9 = sub_274051118();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353B8, &qword_27405A0E0);
  sub_2740240C0(a1, &v9[*(v21 + 44)]);
  sub_274021180(v19, v17, &qword_2809353B0, &qword_27405A0D8);
  sub_274021180(v9, v7, &qword_2809353A0, &qword_27405A0C8);
  sub_274021180(v17, a2, &qword_2809353B0, &qword_27405A0D8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353C0, &qword_27405A0E8);
  sub_274021180(v7, a2 + *(v22 + 48), &qword_2809353A0, &qword_27405A0C8);
  sub_2740211E8(v9, &qword_2809353A0, &qword_27405A0C8);
  sub_2740211E8(v19, &qword_2809353B0, &qword_27405A0D8);
  sub_2740211E8(v7, &qword_2809353A0, &qword_27405A0C8);
  return sub_2740211E8(v17, &qword_2809353B0, &qword_27405A0D8);
}

uint64_t sub_274023C7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353D0, &qword_27405A0F8);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353D8, &qword_27405A100);
  v31 = *(v8 - 8);
  v9 = v31;
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v12;
  *&v40 = sub_27403D76C(0xD00000000000001ALL, 0x8000000274066470, 0x656D616E72657355, 0xEE00646C65696620);
  *(&v40 + 1) = v13;
  sub_274020248();
  v14 = sub_274051468();
  v33 = v15;
  v34 = v14;
  v35 = v16;
  v36 = v17;
  sub_274051168();
  v42 = *(a1 + 104);
  v43 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051598();
  sub_274051698();
  v40 = *(a1 + 152);
  LOBYTE(v41) = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935328, &qword_27405A038);
  sub_274050EB8();
  v40 = v42;
  LOBYTE(v41) = v43;
  LOBYTE(v42) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E8, &qword_27405A110);
  sub_27402179C(&qword_2809353F0, &qword_2809353D0, &qword_27405A0F8, MEMORY[0x277CDF1A8]);
  sub_274024804();
  v18 = v32;
  v19 = v38;
  sub_2740514E8();

  (*(v39 + 8))(v7, v19);
  v20 = *(v9 + 16);
  v21 = v37;
  v20(v37, v18, v8);
  v22 = v34;
  v23 = a2;
  *a2 = v34;
  v24 = v33;
  v23[1] = v33;
  v25 = v35 & 1;
  *(v23 + 16) = v35 & 1;
  v23[3] = v36;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935400, &qword_27405A118);
  v20(v23 + *(v26 + 48), v21, v8);
  v27 = v24;
  sub_274020AD4(v22, v24, v25);
  v28 = *(v31 + 8);

  v28(v18, v8);
  v28(v21, v8);
  sub_27402029C(v22, v27, v25);
}

uint64_t sub_2740240C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935408, &qword_27405A120);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935410, &qword_27405A128);
  v31 = *(v8 - 8);
  v9 = v31;
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v12;
  *&v40 = sub_27403D76C(0xD00000000000001ALL, 0x8000000274066490, 0x64726F7773736150, 0xEE00646C65696620);
  *(&v40 + 1) = v13;
  sub_274020248();
  v14 = sub_274051468();
  v33 = v15;
  v34 = v14;
  v35 = v16;
  v36 = v17;
  sub_274051168();
  v42 = *(a1 + 128);
  v43 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051598();
  sub_274050EE8();
  v40 = *(a1 + 152);
  LOBYTE(v41) = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935328, &qword_27405A038);
  sub_274050EB8();
  v40 = v42;
  LOBYTE(v41) = v43;
  LOBYTE(v42) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E8, &qword_27405A110);
  sub_27402179C(&qword_280935418, &qword_280935408, &qword_27405A120, MEMORY[0x277CDD798]);
  sub_274024804();
  v18 = v32;
  v19 = v38;
  sub_2740514E8();

  (*(v39 + 8))(v7, v19);
  v20 = *(v9 + 16);
  v21 = v37;
  v20(v37, v18, v8);
  v22 = v34;
  v23 = a2;
  *a2 = v34;
  v24 = v33;
  v23[1] = v33;
  v25 = v35 & 1;
  *(v23 + 16) = v35 & 1;
  v23[3] = v36;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935420, &qword_27405A130);
  v20(v23 + *(v26 + 48), v21, v8);
  v27 = v24;
  sub_274020AD4(v22, v24, v25);
  v28 = *(v31 + 8);

  v28(v18, v8);
  v28(v21, v8);
  sub_27402029C(v22, v27, v25);
}

uint64_t sub_274024558@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v26 = v1[8];
  v27[0] = v3;
  *(v27 + 9) = *(v1 + 153);
  v4 = v1[5];
  v22 = v1[4];
  v23 = v4;
  v5 = v1[7];
  v24 = v1[6];
  v25 = v5;
  v6 = v1[1];
  v18 = *v1;
  v19 = v6;
  v7 = v1[3];
  v20 = v1[2];
  v21 = v7;
  *a1 = sub_2740511C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935318, &qword_27405A028);
  sub_2740225D0(&v18, (a1 + *(v8 + 44)));
  v9 = swift_allocObject();
  v10 = v27[0];
  v9[9] = v26;
  v9[10] = v10;
  *(v9 + 169) = *(v27 + 9);
  v11 = v23;
  v9[5] = v22;
  v9[6] = v11;
  v12 = v25;
  v9[7] = v24;
  v9[8] = v12;
  v13 = v19;
  v9[1] = v18;
  v9[2] = v13;
  v14 = v21;
  v9[3] = v20;
  v9[4] = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935320, &qword_27405A030) + 36));
  *v15 = sub_274024678;
  v15[1] = v9;
  v15[2] = 0;
  v15[3] = 0;
  return sub_2740223B8(&v18, &v17);
}

unint64_t sub_274024680()
{
  result = qword_280935348;
  if (!qword_280935348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935340, &unk_27405A080);
    sub_274021504();
    sub_27402179C(&qword_280935350, &qword_280935358, &qword_27405A090, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935348);
  }

  return result;
}

unint64_t sub_274024740()
{
  result = qword_280935370;
  if (!qword_280935370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935368, &qword_27405A0A0);
    sub_27402179C(&qword_280935378, &qword_280935380, &qword_27405A0A8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935370);
  }

  return result;
}

unint64_t sub_274024804()
{
  result = qword_2809353F8;
  if (!qword_2809353F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809353E8, &qword_27405A110);
    sub_274022364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809353F8);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_274024940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2740510D8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2740249C4()
{
  result = qword_280935450;
  if (!qword_280935450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935320, &qword_27405A030);
    sub_27402179C(&qword_280935458, &qword_280935460, qword_27405A198, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935450);
  }

  return result;
}

uint64_t sub_274024A90()
{
  v0 = sub_274050E28();
  __swift_allocate_value_buffer(v0, qword_280935468);
  __swift_project_value_buffer(v0, qword_280935468);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_2740517D8();
  }

  return sub_274050E18();
}

uint64_t sub_274024B78(void *a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v36 = a1;
  v4 = sub_274050DE8();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274051728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274050DD8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = [v2 traitCollection];
  sub_274051918();

  v18 = [v3 traitCollection];
  sub_274051928();

  v19 = sub_2740516E8();
  v30 = *(v7 + 8);
  v31 = v6;
  v30(v9, v6);
  v38[3] = &type metadata for SettingsNavigationFeatureFlags;
  v38[4] = sub_2740255E0();
  LOBYTE(v18) = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v18 & 1) != 0 && ((*(v11 + 104))(v14, *MEMORY[0x277D40278], v10), sub_274025698(&qword_280935488, MEMORY[0x277D40290], MEMORY[0x277D402C8]), sub_274051828(), sub_274051828(), v20 = *(v11 + 8), v20(v14, v10), ((v38[0] == v37) & v19) == 1))
  {
    v21 = v20;
    v22 = [v3 traitCollection];
    sub_274051928();

    v23 = v36;
    v24 = v32;
    sub_274050DF8();
    sub_274025698(&qword_280935490, MEMORY[0x277D402E0], MEMORY[0x277D402F0]);
    v25 = v34;
    sub_2740516F8();
    (*(v33 + 8))(v24, v25);
    v30(v9, v31);
    return v21(v16, v10);
  }

  else
  {
    v27 = [v3 navigationController];
    if (v27)
    {
      v28 = v27;
      [v27 pushViewController:v36 animated:v35 & 1];
    }

    return (*(v11 + 8))(v16, v10);
  }
}

void sub_274024FD4(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  sub_274024B78(v6, a4);
}

uint64_t sub_274025044(int a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_274051728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274050DD8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = [v1 traitCollection];
  v43 = v13;
  sub_274051918();

  v15 = [v2 traitCollection];
  sub_274051928();

  v41 = sub_2740516E8();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v42 = v2;
  v17 = [v2 traitCollection];
  sub_274051928();

  v18 = sub_274051718();
  v39 = v3;
  v19 = v3;
  v20 = v8;
  v21 = v16;
  v16(v6, v19);
  v45[3] = &type metadata for SettingsNavigationFeatureFlags;
  v45[4] = sub_2740255E0();
  LOBYTE(v17) = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v45);
  if ((v17 & 1) != 0 && ((*(v20 + 104))(v11, *MEMORY[0x277D40278], v7), sub_274025698(&qword_280935488, MEMORY[0x277D40290], MEMORY[0x277D402C8]), v22 = v7, sub_274051828(), sub_274051828(), v23 = *(v20 + 8), v23(v11, v7), !((v45[0] != v44 || (v41 & 1) == 0) | v18 & 1)))
  {
    v33 = v23;
    if (qword_280934D70 != -1)
    {
      swift_once();
    }

    v34 = sub_274050E28();
    __swift_project_value_buffer(v34, qword_280935468);
    v35 = sub_274050E08();
    v36 = sub_2740518D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_273FB9000, v35, v36, "state driven pop", v37, 2u);
      MEMORY[0x2743E44F0](v37, -1, -1);
    }

    v38 = [v42 traitCollection];
    sub_274051928();

    sub_274051708();
    v21(v6, v39);
    return v33(v43, v22);
  }

  else
  {
    if (qword_280934D70 != -1)
    {
      swift_once();
    }

    v24 = sub_274050E28();
    __swift_project_value_buffer(v24, qword_280935468);
    v25 = sub_274050E08();
    v26 = sub_2740518D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v7;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_273FB9000, v25, v26, "normal pop", v28, 2u);
      v29 = v28;
      v7 = v27;
      MEMORY[0x2743E44F0](v29, -1, -1);
    }

    v30 = [v42 navigationController];
    if (v30)
    {
      v31 = v30;
    }

    return (*(v20 + 8))(v43, v7);
  }
}

void sub_27402558C(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  sub_274025044(a3);
}

unint64_t sub_2740255E0()
{
  result = qword_280935480;
  if (!qword_280935480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935480);
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

uint64_t sub_274025698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2740256F4()
{
  result = qword_280935498;
  if (!qword_280935498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935498);
  }

  return result;
}

uint64_t sub_274025770(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v3;
}

uint64_t sub_2740257DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();
}

uint64_t sub_2740258F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_274025968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_274025A24(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = v1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);
    sub_273FBBB0C(v6, v7);

    v6(v8);
    sub_273FBD2BC(v6, v7);
  }

  return result;
}

uint64_t (*sub_274025AE0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_274025B68;
}

void sub_274025B68(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 8);
      sub_273FBBB0C(v5, v6);

      v5(v7);
      sub_273FBD2BC(v5, v6);
    }
  }

  free(v3);
}

uint64_t sub_274025C1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v1 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2743E3810](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v2 = *(v7 + v1 + 4);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v7)
      {
        if ([v7 respondsToSelector_])
        {
          v5 = [v7 byte_279EC64F8];
          swift_unknownObjectRelease();

          if (v5)
          {
            i = 1;
            goto LABEL_17;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v1;
      if (v4 == i)
      {
        i = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_17:

  return i;
}

uint64_t sub_274025DF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v1 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2743E3810](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v2 = *(v7 + v1 + 4);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v7)
      {
        if ([v7 respondsToSelector_])
        {
          v5 = [v7 byte_279EC64F8];
          swift_unknownObjectRelease();

          if ((v5 & 1) == 0)
          {
            i = 1;
            goto LABEL_17;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v1;
      if (v4 == i)
      {
        i = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_17:

  return i;
}

uint64_t sub_274025FC4()
{
  if ((sub_274025C1C() & 1) == 0)
  {
    return 0;
  }

  return sub_274025DF0();
}

uint64_t sub_274025FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v1 = v9;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2743E3810](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = v4;
      v7 = sub_27402614C(&v9, v0);

      if (v7)
      {

        return 1;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_27402614C(uint64_t *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v2 = v13;
  if (!v13)
  {
    return v2 & 1;
  }

  if (([v13 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = [v13 cellularSlicingIsEnabled];
  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_7:
    v2 = 0;
    return v2 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v4 = [v13 ssid];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = sub_2740517D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v9 = [v13 ssid];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = sub_2740517D8();
    v12 = v11;

    if (v7)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (!v12)
    {
      v2 = 1;
      return v2 & 1;
    }

    goto LABEL_18;
  }

  v10 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!v12)
  {
LABEL_18:

    goto LABEL_7;
  }

  if (v5 == v10 && v7 == v12)
  {

    v2 = 1;
  }

  else
  {
    v2 = sub_274051B08();
  }

  return v2 & 1;
}

uint64_t sub_2740263DC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_networkTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036918;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_27402647C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_networkTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_2740265E4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036690;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274026684(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_274036654;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_2740267EC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_associationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036628;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_27402688C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_associationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_2740269F4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274026A94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274026BFC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274026C9C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274026E08@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036580;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274026EA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_274036540;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274026F90(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_274027018(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_2740270DC()
{
  v2 = v0;
  v3 = sub_2740516B8();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2740516D8();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = OBJC_IVAR___WFNetworkListDataSource_scanResults;
  v6 = *&v0[OBJC_IVAR___WFNetworkListDataSource_scanResults];
  aBlock[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_158;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v8 = &selRef__stringForSettingsSection_;
  v101 = v2;
  if (v7)
  {
    v9 = 0;
    v102 = v6 & 0xFFFFFFFFFFFFFF8;
    v103 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v103)
      {
        v10 = MEMORY[0x2743E3810](v9, v6);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 >= *(v102 + 16))
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          v7 = sub_274051A98();
          goto LABEL_3;
        }

        v10 = *(v6 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_33;
        }
      }

      if (([v10 isKnown] & 1) == 0 && !objc_msgSend(v10, v8[482]))
      {
        goto LABEL_5;
      }

      v12 = [v10 ssid];
      if (v12)
      {
        v13 = v12;
        v14 = sub_2740517D8();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v1 = v105[0];
      if (!v105[0])
      {
        goto LABEL_21;
      }

      v17 = [v105[0] ssid];
      swift_unknownObjectRelease();
      if (!v17)
      {
        break;
      }

      v1 = sub_2740517D8();
      v19 = v18;

      v8 = &selRef__stringForSettingsSection_;
      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_22:
      if (!v19)
      {
        goto LABEL_26;
      }

      if (v14 == v1 && v16 == v19)
      {
        swift_unknownObjectRelease();

        v2 = v101;
        goto LABEL_6;
      }

      v20 = sub_274051B08();

      v2 = v101;
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_5:
      swift_unknownObjectRelease();
LABEL_6:
      ++v9;
      if (v11 == v7)
      {
        goto LABEL_34;
      }
    }

    v1 = 0;
LABEL_21:
    v19 = 0;
    v8 = &selRef__stringForSettingsSection_;
    if (!v16)
    {
LABEL_18:
      if (!v19)
      {
        swift_unknownObjectRelease();
        v2 = v101;
        goto LABEL_6;
      }

LABEL_26:

      v2 = v101;
LABEL_27:
      sub_274051A38();
      sub_274051A58();
      sub_274051A68();
      sub_274051A48();
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_34:

  v6 = v2;

  aBlock[0] = sub_2740333D4(v21);
  sub_2740350C8(aBlock, v6, &unk_288307940, sub_2740336B4);

  v102 = v6;
  v93 = aBlock[0];
  v22 = *&v2[v100];
  v103 = 0;
  aBlock[0] = MEMORY[0x277D84F90];
  if (v22 >> 62)
  {
    v23 = sub_274051A98();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
    v92 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v25 = 0;
  v1 = v22 & 0xC000000000000001;
  v2 = (v22 & 0xFFFFFFFFFFFFFF8);
  while (v1)
  {
    v26 = MEMORY[0x2743E3810](v25, v22);
    v6 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_47;
    }

LABEL_43:
    if ([v26 v8[482]])
    {
      sub_274051A38();
      sub_274051A58();
      v8 = &selRef__stringForSettingsSection_;
      sub_274051A68();
      sub_274051A48();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v25;
    if (v6 == v23)
    {
      goto LABEL_48;
    }
  }

  if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_153;
  }

  v26 = *(v22 + 8 * v25 + 32);
  swift_unknownObjectRetain();
  v6 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v92 = aBlock[0];
  v2 = v101;
LABEL_50:

  v27 = *&v2[v100];
  aBlock[0] = v24;
  if (v27 >> 62)
  {
    v28 = sub_274051A98();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  v30 = &selRef__stringForSettingsSection_;
  if (!v28)
  {
    goto LABEL_70;
  }

  v31 = 0;
  v6 = v27 & 0xC000000000000001;
  v2 = (v27 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if (v6)
    {
      v32 = MEMORY[0x2743E3810](v31, v27);
      v1 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      goto LABEL_57;
    }

    if (v31 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_154;
    }

    v32 = *(v27 + 8 * v31 + 32);
    swift_unknownObjectRetain();
    v1 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
LABEL_57:
      if (![v32 isPopular] || (objc_msgSend(v32, sel_isKnown) & 1) != 0 || (objc_msgSend(v32, v8[482]) & 1) != 0 || (objc_msgSend(v32, sel_isAdhoc) & 1) != 0 || objc_msgSend(v32, v30[496]))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_274051A38();
        sub_274051A58();
        v8 = &selRef__stringForSettingsSection_;
        sub_274051A68();
        sub_274051A48();
        v30 = &selRef__stringForSettingsSection_;
      }

      ++v31;
      if (v1 == v28)
      {
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_69:
  v2 = v101;
  v29 = MEMORY[0x277D84F90];
LABEL_70:

  v33 = v102;

  aBlock[0] = sub_2740333D4(v34);
  v35 = v103;
  sub_2740350C8(aBlock, v33, &unk_288307850, sub_274034474);
  if (v35)
  {

    while (1)
    {

      __break(1u);
    }
  }

  v103 = aBlock[0];
  aBlock[0] = v29;
  v36 = *&v2[v100];
  if (v36 >> 62)
  {
    v37 = sub_274051A98();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = &selRef__stringForSettingsSection_;

  if (!v37)
  {
    goto LABEL_91;
  }

  v102 = v33;
  v39 = 0;
  v6 = v36 & 0xC000000000000001;
  v2 = (v36 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if (v6)
    {
      v40 = MEMORY[0x2743E3810](v39, v36);
      v1 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      goto LABEL_78;
    }

    if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_155;
    }

    v40 = *(v36 + 8 * v39 + 32);
    swift_unknownObjectRetain();
    v1 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
LABEL_78:
      if (([v40 v8[482]] & 1) != 0 || (objc_msgSend(v40, sel_isAdhoc) & 1) != 0 || (objc_msgSend(v40, v38[496]) & 1) != 0 || (objc_msgSend(v40, sel_isPopular) & 1) != 0 || objc_msgSend(v40, sel_isKnown))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_274051A38();
        sub_274051A58();
        v8 = &selRef__stringForSettingsSection_;
        sub_274051A68();
        sub_274051A48();
        v38 = &selRef__stringForSettingsSection_;
      }

      ++v39;
      if (v1 == v37)
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_90:
  v2 = v101;
  v33 = v102;
  v29 = MEMORY[0x277D84F90];
LABEL_91:

  v6 = v33;

  aBlock[0] = sub_2740333D4(v41);
  sub_2740350C8(aBlock, v6, &unk_288307760, sub_274034608);

  v102 = aBlock[0];
  v42 = *&v2[v100];
  aBlock[0] = v29;
  if (v42 >> 62)
  {
    v43 = sub_274051A98();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = MEMORY[0x277D84F90];
  if (!v43)
  {
    goto LABEL_106;
  }

  v91 = v6;
  v45 = 0;
  v2 = (v42 & 0xC000000000000001);
  while (2)
  {
    if (v2)
    {
      v46 = MEMORY[0x2743E3810](v45, v42);
      v6 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      goto LABEL_100;
    }

    if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_156;
    }

    v46 = *(v42 + 8 * v45 + 32);
    swift_unknownObjectRetain();
    v6 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
LABEL_100:
      if ([v46 isAdhoc])
      {
        sub_274051A38();
        v1 = *(aBlock[0] + 16);
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v45;
      if (v6 == v43)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_105:
  v2 = v101;
  v6 = v91;
  v44 = MEMORY[0x277D84F90];
LABEL_106:

  v47 = v6;

  aBlock[0] = sub_2740333D4(v48);
  sub_2740350C8(aBlock, v47, &unk_288307670, sub_27403479C);

  v101 = aBlock[0];
  v49 = *&v2[v100];
  aBlock[0] = v44;
  if (v49 >> 62)
  {
    v50 = sub_274051A98();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = &selRef__stringForSettingsSection_;

  if (!v50)
  {
    goto LABEL_121;
  }

  v100 = v47;
  v1 = 0;
  v6 = v49 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x2743E3810](v1, v49);
      v53 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      goto LABEL_115;
    }

    if (v1 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_157;
    }

    v52 = *(v49 + 8 * v1 + 32);
    swift_unknownObjectRetain();
    v53 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
LABEL_115:
      if ([v52 v51[496]])
      {
        sub_274051A38();
        v2 = *(aBlock[0] + 16);
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
        v51 = &selRef__stringForSettingsSection_;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v1;
      if (v53 == v50)
      {
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  v47 = v100;
LABEL_121:

  v54 = v47;

  aBlock[0] = sub_2740333D4(v55);
  sub_2740350C8(aBlock, v54, &unk_288307580, sub_274034930);

  v56 = aBlock[0];
  v57 = (aBlock[0] >> 62) & 1;
  if (aBlock[0] < 0)
  {
    LODWORD(v57) = 1;
  }

  LODWORD(v100) = v57;
  if (v57)
  {
    v58 = sub_274051A98();
  }

  else
  {
    v58 = *(aBlock[0] + 16);
  }

  if (v58 >= 1)
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v59 = sub_274050E28();
    __swift_project_value_buffer(v59, qword_280937140);
    v60 = sub_274050E08();
    v61 = sub_2740518C8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_2740310C4(0x757365526E616373, 0xEB0000000073746CLL, aBlock);
      _os_log_impl(&dword_273FB9000, v60, v61, "%s:updating UnconfiguredSectionTitle because there's at least one unconfiguredNetworks", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x2743E44F0](v63, -1, -1);
      MEMORY[0x2743E44F0](v62, -1, -1);
    }

    sub_27402E498();
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v64 = sub_274050E28();
  __swift_project_value_buffer(v64, qword_280937140);
  v65 = v103;
  swift_retain_n();
  v66 = v102;
  swift_retain_n();
  v67 = v101;
  swift_retain_n();
  swift_retain_n();
  v68 = v93;

  v69 = v92;

  v70 = sub_274050E08();
  v71 = sub_2740518C8();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136316674;
    *(v72 + 4) = sub_2740310C4(0x757365526E616373, 0xEB0000000073746CLL, aBlock);
    *(v72 + 12) = 2048;
    if (v68 < 0 || (v68 & 0x4000000000000000) != 0)
    {
      v74 = sub_274051A98();
    }

    else
    {
      v74 = *(v68 + 16);
    }

    *(v72 + 14) = v74;

    *(v72 + 22) = 2080;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
    v76 = MEMORY[0x2743E3670](v69, v75);
    v78 = sub_2740310C4(v76, v77, aBlock);

    *(v72 + 24) = v78;
    *(v72 + 32) = 2048;
    if ((v103 & 0x8000000000000000) != 0 || (v103 & 0x4000000000000000) != 0)
    {
      v79 = sub_274051A98();
    }

    else
    {
      v79 = *(v103 + 16);
    }

    *(v72 + 34) = v79;

    *(v72 + 42) = 2048;
    if (v102 < 0 || (v102 & 0x4000000000000000) != 0)
    {
      v80 = sub_274051A98();
    }

    else
    {
      v80 = *(v102 + 16);
    }

    *(v72 + 44) = v80;

    *(v72 + 52) = 2048;
    if (v101 < 0 || (v101 & 0x4000000000000000) != 0)
    {
      v81 = sub_274051A98();
    }

    else
    {
      v81 = *(v101 + 16);
    }

    *(v72 + 54) = v81;

    *(v72 + 62) = 2048;
    if (v100)
    {
      v82 = sub_274051A98();
    }

    else
    {
      v82 = *(v56 + 16);
    }

    *(v72 + 64) = v82;

    _os_log_impl(&dword_273FB9000, v70, v71, "%s: known networks count:%ld, ph networks: %s, public networks count: %ld, infraNetworks count: %ld, adhocNetworks count: %ld, unconfiguredNetworks count: %ld", v72, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v73, -1, -1);
    MEMORY[0x2743E44F0](v72, -1, -1);

    v66 = v102;
    v65 = v103;
    v67 = v101;
  }

  else
  {
  }

  sub_274031704();
  v83 = sub_2740518F8();
  v84 = swift_allocObject();
  v84[2] = v54;
  v84[3] = v68;
  v84[4] = v69;
  v84[5] = v65;
  v84[6] = v66;
  v84[7] = v67;
  v84[8] = v56;
  aBlock[4] = sub_2740367C0;
  aBlock[5] = v84;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_324;
  v85 = _Block_copy(aBlock);
  v86 = v54;

  v87 = v94;
  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  v88 = v96;
  v89 = v99;
  sub_274051978();
  MEMORY[0x2743E3710](0, v87, v88, v85);
  _Block_release(v85);

  (*(v98 + 8))(v88, v89);
  return (*(v95 + 8))(v87, v97);
}

uint64_t sub_274028314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402838C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = a2;
  v62 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_48;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v56 = a1;
    v57 = a3;
    v12 = 0;
    a3 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743E3810](v12, v8);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        swift_unknownObjectRetain();
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v10 = sub_274051A98();
          goto LABEL_3;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v14 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v14);
      a1 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v12;
      if (v13 == v10)
      {
        a1 = v56;
        a3 = v57;
        v11 = MEMORY[0x277D84F90];
        break;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;
  sub_274050E78();
  v62 = v11;
  if (a3 >> 62)
  {
    v16 = sub_274051A98();
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = MEMORY[0x277D84F90];
  if (v16)
  {
    v8 = 0;
    v17 = a3 & 0xC000000000000001;
    a1 = a3;
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
    do
    {
      if (v17)
      {
        MEMORY[0x2743E3810](v8, a1);
        v18 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v8 >= *(a3 + 16))
        {
          goto LABEL_45;
        }

        swift_unknownObjectRetain();
        v18 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_44;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v19 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v19);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v8;
    }

    while (v18 != v16);
    a1 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v15;
  sub_274050E78();
  v62 = a1;
  v21 = a4;
  if (a4 >> 62)
  {
    v26 = sub_274051A98();
    v21 = a4;
    v22 = v26;
    if (v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_31:
      v23 = 0;
      v24 = v21 & 0xC000000000000001;
      a3 = v21 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v24)
        {
          MEMORY[0x2743E3810](v23, v21);
          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v23 >= *(a3 + 16))
          {
            goto LABEL_47;
          }

          swift_unknownObjectRetain();
          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_46;
          }
        }

        WFNetworkListRecord.settingsModel.getter();
        v25 = swift_unknownObjectRelease();
        MEMORY[0x2743E3640](v25);
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_274051878();
        }

        sub_274051898();
        ++v23;
        v21 = a4;
      }

      while (v8 != v22);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v20;
  sub_274050E78();
  v63 = a1;
  v28 = a5;
  if (a5 >> 62)
  {
    goto LABEL_98;
  }

  v29 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = 0;
    v32 = v28 & 0xC000000000000001;
    v33 = v28 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v32)
      {
        MEMORY[0x2743E3810](v31, v28);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v31 >= *(v33 + 16))
        {
          goto LABEL_93;
        }

        swift_unknownObjectRetain();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          v51 = sub_274051A98();
          v28 = a5;
          v29 = v51;
          goto LABEL_53;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v35 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v35);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v31;
      v28 = a5;
    }

    while (v34 != v29);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v27;
  sub_274050E78();
  v63 = v30;
  v37 = a6;
  if (a6 >> 62)
  {
    v52 = sub_274051A98();
    v37 = a6;
    v38 = v52;
  }

  else
  {
    v38 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v27 = 0;
    v40 = v37 & 0xC000000000000001;
    v41 = v37 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v40)
      {
        MEMORY[0x2743E3810](v27, v37);
        v42 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v27 >= *(v41 + 16))
        {
          goto LABEL_95;
        }

        swift_unknownObjectRetain();
        v42 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_94;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v43 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v43);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v27;
      v37 = a6;
    }

    while (v42 != v38);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v36;
  sub_274050E78();
  v63 = v39;
  v45 = a7;
  if (a7 >> 62)
  {
    v53 = sub_274051A98();
    v45 = a7;
    v46 = v53;
    if (v53)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v46 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
LABEL_81:
      v47 = 0;
      v27 = (v45 & 0xC000000000000001);
      v48 = v45 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v27)
        {
          MEMORY[0x2743E3810](v47, v45);
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v47 >= *(v48 + 16))
          {
            goto LABEL_97;
          }

          swift_unknownObjectRetain();
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_96;
          }
        }

        WFNetworkListRecord.settingsModel.getter();
        v50 = swift_unknownObjectRelease();
        MEMORY[0x2743E3640](v50);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_274051878();
        }

        sub_274051898();
        ++v47;
        v45 = a7;
      }

      while (v49 != v46);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v44;
  return sub_274050E78();
}

void WFNetworkListRecord.settingsModel.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_2809354A0);
  swift_endAccess();
  if (v2)
  {
    sub_274051968();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_27403169C(v37);
LABEL_8:
    type metadata accessor for WFNetworkRowConfigModel(0);
    v3 = static WFNetworkRowConfigModel.settingsNetworkRowConfig()();
    sub_27403DF48(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v1;
    v4 = v3;
    swift_unknownObjectRetain();
    sub_274050E78();
    [v1 scaledRSSI];
    sub_274041648(v5);
    v7 = v6;
    sub_27403F65C(v6);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v7;
    v8 = v4;
    sub_274050E78();
    v9 = [v1 subtitle];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2740517D8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    sub_27403E520(v11, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v11;
    *(&v37[0] + 1) = v13;
    v14 = v8;
    sub_274050E78();
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v15 = sub_274050E28();
    __swift_project_value_buffer(v15, qword_280937140);
    swift_unknownObjectRetain_n();
    v16 = v14;
    v17 = sub_274050E08();
    v18 = sub_2740518C8();
    if (!os_log_type_enabled(v17, v18))
    {

      swift_unknownObjectRelease_n();
LABEL_34:
      swift_beginAccess();
      v34 = v16;
      objc_setAssociatedObject(v1, &unk_2809354A0, v34, 1);
      swift_endAccess();

      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v35 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_2740310C4(0x73676E6974746573, 0xED00006C65646F4DLL, &v35);
    *(v19 + 12) = 2080;
    v21 = [v1 ssid];
    if (!v21)
    {
LABEL_38:
      swift_unknownObjectRelease_n();

      __break(1u);
      return;
    }

    v22 = v21;

    v23 = sub_2740517D8();
    v25 = v24;

    v26 = sub_2740310C4(v23, v25, &v35);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2048;
    [v1 scaledRSSI];
    if (v27 < 0.0)
    {
      swift_unknownObjectRelease();
      v28 = 0;
LABEL_27:
      *(v19 + 24) = v28;
      swift_unknownObjectRelease();
      *(v19 + 32) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (*(&v37[0] + 1))
      {
        v31 = *&v37[0];
      }

      else
      {
        v31 = 0;
      }

      if (*(&v37[0] + 1))
      {
        v32 = *(&v37[0] + 1);
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v33 = sub_2740310C4(v31, v32, &v35);

      *(v19 + 34) = v33;
      _os_log_impl(&dword_273FB9000, v17, v18, "%s: network: %s, signal bar: %lu, subtitle: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2743E44F0](v20, -1, -1);
      MEMORY[0x2743E44F0](v19, -1, -1);

      goto LABEL_34;
    }

    v29 = v27;
    swift_unknownObjectRelease();
    if (v29 > 1.0)
    {
      v28 = 0;
      goto LABEL_27;
    }

    v30 = ceilf(v29 * 3.0);
    if ((LODWORD(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v30 > -9.2234e18)
    {
      if (v30 < 9.2234e18)
      {
        v28 = v30;
        if (v30 >= 3)
        {
          v28 = 3;
        }

        if (v28 <= 1)
        {
          v28 = 1;
        }

        goto LABEL_27;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  type metadata accessor for WFNetworkRowConfigModel(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }
}

uint64_t sub_274029168(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2740291AC(void *a1)
{
  v3 = sub_2740516B8();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2740516D8();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27402EB64(a1);
  sub_274031704();
  v9 = sub_2740518F8();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_274031750;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v8, v5, v11);
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_2740294A0(uint64_t a1, uint64_t a2)
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402950C(void *a1, id a2)
{
  KeyPath = [a2 network];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v96 = MEMORY[0x277D84F90];
  if (KeyPath >> 62)
  {
    goto LABEL_104;
  }

  v6 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  v8 = &selRef_setTableViewStyle_;
  if (v6)
  {
    v75 = v5;
    v5 = 0;
    v87 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v91 = KeyPath & 0xC000000000000001;
    v79 = v6;
    v83 = KeyPath;
    while (1)
    {
      if (v91)
      {
        v9 = MEMORY[0x2743E3810](v5, KeyPath);
      }

      else
      {
        if (v5 >= *(v87 + 16))
        {
          goto LABEL_99;
        }

        v9 = *(KeyPath + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v6 = sub_274051A98();
        goto LABEL_3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v95 && (v12 = [v95 v8[56]], swift_unknownObjectRelease(), v12))
      {
        v13 = sub_2740517D8();
        v15 = v14;

        if (!a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = 0;
        v15 = 0;
        if (!a2)
        {
          goto LABEL_19;
        }
      }

      v16 = [a2 network];
      if (!v16)
      {
LABEL_19:
        v18 = 0;
        v20 = 0;
        if (!v15)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v17 = [v16 v8[56]];
      swift_unknownObjectRelease();
      if (v17)
      {
        v18 = sub_2740517D8();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v15)
      {
LABEL_28:
        if (v20)
        {
LABEL_29:

LABEL_30:
          sub_274051A38();
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_6;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v20)
      {
        goto LABEL_29;
      }

      if (v13 == v18 && v15 == v20)
      {

        goto LABEL_6;
      }

      v21 = sub_274051B08();

      if ((v21 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_5:

LABEL_6:
      v7 = MEMORY[0x277D84F90];
      ++v5;
      KeyPath = v83;
      if (v11 == v79)
      {
        v22 = v96;
        v5 = v75;
        goto LABEL_34;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_34:

  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v22;
  v23 = v5;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  KeyPath = v96;
  v96 = v7;
  if (KeyPath >> 62)
  {
    v24 = sub_274051A98();
  }

  else
  {
    v24 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v76 = v23;
    v5 = 0;
    v88 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v92 = KeyPath & 0xC000000000000001;
    v80 = v24;
    v84 = KeyPath;
    while (1)
    {
      if (v92)
      {
        v26 = MEMORY[0x2743E3810](v5, KeyPath);
      }

      else
      {
        if (v5 >= *(v88 + 16))
        {
          goto LABEL_101;
        }

        v26 = *(KeyPath + 8 * v5 + 32);
      }

      v27 = v26;
      v28 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_100;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v95 && (v29 = [v95 v8[56]], swift_unknownObjectRelease(), v29))
      {
        v30 = sub_2740517D8();
        v32 = v31;

        if (!a2)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v30 = 0;
        v32 = 0;
        if (!a2)
        {
          goto LABEL_52;
        }
      }

      v33 = [a2 network];
      if (!v33)
      {
LABEL_52:
        v35 = 0;
        v37 = 0;
        if (!v32)
        {
          goto LABEL_61;
        }

        goto LABEL_53;
      }

      v34 = [v33 v8[56]];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = sub_2740517D8();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v32)
      {
LABEL_61:
        if (v37)
        {
LABEL_62:

LABEL_63:
          sub_274051A38();
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_53:
      if (!v37)
      {
        goto LABEL_62;
      }

      if (v30 == v35 && v32 == v37)
      {

        goto LABEL_39;
      }

      v38 = sub_274051B08();

      if ((v38 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_38:

LABEL_39:
      ++v5;
      KeyPath = v84;
      if (v28 == v80)
      {
        v39 = v96;
        v23 = v76;
        v25 = MEMORY[0x277D84F90];
        goto LABEL_67;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_67:

  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v39;
  v40 = v23;
  sub_274050E78();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_274050E68();

  v41 = v96;
  v96 = v25;
  if (v41 >> 62)
  {
    v56 = v41;
    v42 = sub_274051A98();
    v41 = v56;
    if (v42)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_69:
      v77 = v40;
      v5 = 0;
      v89 = v41 & 0xFFFFFFFFFFFFFF8;
      v93 = v41 & 0xC000000000000001;
      v81 = v42;
      v85 = v41;
      while (1)
      {
        if (v93)
        {
          v43 = MEMORY[0x2743E3810](v5, v41);
        }

        else
        {
          if (v5 >= *(v89 + 16))
          {
            goto LABEL_103;
          }

          v43 = *(v41 + 8 * v5 + 32);
        }

        v44 = v43;
        v45 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_102;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        if (v95 && (v46 = [v95 v8[56]], swift_unknownObjectRelease(), v46))
        {
          v47 = sub_2740517D8();
          v49 = v48;

          if (!a2)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v47 = 0;
          v49 = 0;
          if (!a2)
          {
            goto LABEL_84;
          }
        }

        v50 = [a2 network];
        if (!v50)
        {
LABEL_84:
          v52 = 0;
          KeyPath = 0;
          if (!v49)
          {
            goto LABEL_93;
          }

          goto LABEL_85;
        }

        v51 = [v50 v8[56]];
        swift_unknownObjectRelease();
        if (v51)
        {
          v52 = sub_2740517D8();
          KeyPath = v53;
        }

        else
        {
          v52 = 0;
          KeyPath = 0;
        }

        v8 = &selRef_setTableViewStyle_;
        if (!v49)
        {
LABEL_93:
          if (KeyPath)
          {
LABEL_94:

LABEL_95:
            sub_274051A38();
            sub_274051A58();
            sub_274051A68();
            KeyPath = &v96;
            sub_274051A48();
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_85:
        if (!KeyPath)
        {
          goto LABEL_94;
        }

        if (v47 == v52 && v49 == KeyPath)
        {

          goto LABEL_71;
        }

        v54 = sub_274051B08();

        if ((v54 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_70:

LABEL_71:
        v41 = v85;
        ++v5;
        if (v45 == v81)
        {
          v55 = v96;
          v40 = v77;
          v25 = MEMORY[0x277D84F90];
          goto LABEL_108;
        }
      }
    }
  }

  v55 = v25;
LABEL_108:

  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v55;
  v57 = v40;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v58 = v96;
  v96 = v25;
  if (v58 >> 62)
  {
    goto LABEL_141;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v59)
  {
LABEL_110:
    v78 = v57;
    v60 = 0;
    v90 = v58 & 0xFFFFFFFFFFFFFF8;
    v94 = v58 & 0xC000000000000001;
    v82 = v59;
    v86 = v58;
    while (1)
    {
      if (v94)
      {
        v58 = MEMORY[0x2743E3810](v60, v58);
      }

      else
      {
        if (v60 >= *(v90 + 16))
        {
          goto LABEL_140;
        }

        v58 = *(v58 + 8 * v60 + 32);
      }

      v61 = v58;
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v72 = v58;
        v59 = sub_274051A98();
        v58 = v72;
        if (!v59)
        {
          break;
        }

        goto LABEL_110;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v95 && (v63 = [v95 v8[56]], swift_unknownObjectRelease(), v63))
      {
        v57 = sub_2740517D8();
        v65 = v64;

        if (!a2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v57 = 0;
        v65 = 0;
        if (!a2)
        {
          goto LABEL_125;
        }
      }

      v66 = [a2 network];
      if (!v66)
      {
LABEL_125:
        v68 = 0;
        v70 = 0;
        if (!v65)
        {
          goto LABEL_134;
        }

        goto LABEL_126;
      }

      v67 = [v66 v8[56]];
      swift_unknownObjectRelease();
      if (v67)
      {
        v68 = sub_2740517D8();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v65)
      {
LABEL_134:
        if (v70)
        {
LABEL_135:

LABEL_136:
          sub_274051A38();
          v57 = *(v96 + 16);
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_112;
        }

        goto LABEL_111;
      }

LABEL_126:
      if (!v70)
      {
        goto LABEL_135;
      }

      if (v57 == v68 && v65 == v70)
      {

        goto LABEL_112;
      }

      v57 = sub_274051B08();

      if ((v57 & 1) == 0)
      {
        goto LABEL_136;
      }

LABEL_111:

LABEL_112:
      v58 = v86;
      ++v60;
      if (v62 == v82)
      {
        v71 = v96;
        v57 = v78;
        goto LABEL_143;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_143:

  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v71;
  v73 = v57;
  return sub_274050E78();
}