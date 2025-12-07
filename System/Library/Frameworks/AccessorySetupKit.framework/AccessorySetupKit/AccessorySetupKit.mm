__CFString *ASAccessoryStateToString(uint64_t a1)
{
  v1 = @"Authorized";
  v2 = @"?";
  if (a1 == 10)
  {
    v2 = @"AwaitingAuthorization";
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Unauthorized";
  }
}

void sub_2369C99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  (*(a13 + 16))();
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2369CACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2369CE290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2369CE6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ASDiscoveryDescriptorRangeToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 10)
  {
    v1 = @"Immediate";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Default";
  }
}

__CFString *ASDiscoveryDescriptorWiFiAwareServiceRoleToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 20)
  {
    v1 = @"Publisher";
  }

  if (a1 == 10)
  {
    return @"Subscriber";
  }

  else
  {
    return v1;
  }
}

Class initPSSpecifier()
{
  if (PreferencesLibrary_sOnce != -1)
  {
    initPSSpecifier_cold_1();
  }

  result = objc_getClass("PSSpecifier");
  classPSSpecifier = result;
  getPSSpecifierClass = PSSpecifierFunction;
  return result;
}

void *__PreferencesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Preferences.framework/Preferences", 2);
  PreferencesLibrary_sLib = result;
  return result;
}

id ASErrorF(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v3 arguments:va];
  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = *MEMORY[0x277CCA068];
  v10[0] = @"cuErrorMsg";
  v10[1] = v6;
  v11[0] = v4;
  v11[1] = v4;
  v10[2] = *MEMORY[0x277CCA470];
  v11[2] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = [v5 initWithDomain:@"ASErrorDomain" code:a1 userInfo:v7];

  return v8;
}

__CFString *ASAccessoryEventTypeToString(uint64_t a1)
{
  if (a1 > 30)
  {
    if (a1 > 39)
    {
      if (a1 == 40)
      {
        return @"PickerDidPresent";
      }

      if (a1 == 50)
      {
        return @"PickerDidDismiss";
      }
    }

    else
    {
      if (a1 == 31)
      {
        return @"AccessoryRemoved";
      }

      if (a1 == 32)
      {
        return @"AccessoryChanged";
      }
    }
  }

  else if (a1 > 10)
  {
    if (a1 == 11)
    {
      return @"Invalidated";
    }

    if (a1 == 30)
    {
      return @"AccessoryAdded";
    }
  }

  else
  {
    if (!a1)
    {
      return @"Unknown";
    }

    if (a1 == 10)
    {
      return @"Activated";
    }
  }

  return @"?";
}

__CFString *ASPickerDisplaySettingsDiscoveryTimeoutToString(double a1)
{
  if (a1 == 60.0)
  {
    return @"Short";
  }

  if (a1 == 180.0)
  {
    return @"Medium";
  }

  v2 = @"?";
  if (a1 == INFINITY)
  {
    v2 = @"Unbounded";
  }

  if (a1 == 360.0)
  {
    return @"Long";
  }

  else
  {
    return v2;
  }
}

id ASDiscoveredAccessory.bluetoothRSSI.getter()
{
  v1 = [v0 bluetoothRSSI];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_2369D9C80(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE60490, type metadata accessor for ASError, &unk_2369E440C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2369D9CEC(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE60490, type metadata accessor for ASError, &unk_2369E440C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2369D9D5C(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2369D9DE8(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2369D9E54(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2369D9EC0(void *a1, uint64_t a2)
{
  v4 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2369D9F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2369D9FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2369E1BB8();
  sub_2369E1978();
  return sub_2369E1BC8();
}

void *sub_2369DA050@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2369DA06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2369DA138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2369DA2FC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_2369DA394()
{
  result = qword_27DE604B8;
  if (!qword_27DE604B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE604B8);
  }

  return result;
}

uint64_t sub_2369DA494()
{
  v0 = sub_2369E1928();
  __swift_allocate_value_buffer(v0, qword_27DE60C40);
  __swift_project_value_buffer(v0, qword_27DE60C40);
  return sub_2369E1918();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2369DA5B0()
{
  v0 = sub_2369E1928();
  __swift_allocate_value_buffer(v0, qword_27DE60540);
  v1 = __swift_project_value_buffer(v0, qword_27DE60540);
  if (qword_27DE603A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DE60C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2369DA678()
{
  result = [objc_allocWithZone(type metadata accessor for ASUIClientManager()) init];
  qword_27DE60558 = result;
  return result;
}

id ASUIClientManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ASUIClientManager.shared.getter()
{
  if (qword_27DE603B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DE60558;

  return v1;
}

void sub_2369DA794(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = v7;
  v143 = a5;
  v145 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60560, &qword_2369E45B0);
  MEMORY[0x28223BE20]();
  v142 = &v134 - v15;
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v16 = sub_2369E1928();
  __swift_project_value_buffer(v16, qword_27DE60540);
  v17 = sub_2369E1908();
  v18 = sub_2369E1A38();
  if (os_log_type_enabled(v17, v18))
  {
    v8 = a2;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2369C4000, v17, v18, "activateConnection", v19, 2u);
    v20 = v19;
    a2 = v8;
    MEMORY[0x2383B4B10](v20, -1, -1);
  }

  v21 = (v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v22 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v23 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v21 = a6;
  v21[1] = a7;

  sub_2369DBAC4(v22, v23);
  if (*(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection))
  {
    v24 = sub_2369E1908();
    v25 = sub_2369E1A28();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2369C4000, v24, v25, "Picker already activated", v26, 2u);
      MEMORY[0x2383B4B10](v26, -1, -1);
    }

    type metadata accessor for ASError(0);
    v27 = 500;
    goto LABEL_47;
  }

  v28 = mach_absolute_time();
  v29 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull;
  v30 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull);
  if (!v30)
  {
    *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull) = v28;
    v30 = v28;
  }

  if (v28 >= v30)
  {
    if (UpTicksToSeconds() >= 0x10)
    {
      *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = 0;
    }

    v31 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter);
    if (v31 > 2)
    {
      v47 = sub_2369E1908();
      v48 = sub_2369E1A28();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "Picker rate limited for repeated calls";
LABEL_45:
        _os_log_impl(&dword_2369C4000, v47, v48, v50, v49, 2u);
        MEMORY[0x2383B4B10](v49, -1, -1);
      }

LABEL_46:

      type metadata accessor for ASError(0);
      v27 = 550;
LABEL_47:
      v146 = v27;
      sub_2369DF294(MEMORY[0x277D84F90]);
      sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
      sub_2369E18B8();
      v61 = v147;
      sub_2369DD5C4(v147);

      return;
    }

    *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = v31 + 1;
    *(v9 + v29) = mach_absolute_time();
    v8 = sub_2369DF3A4(a2);
    a6 = v32;
    if (!(v32 >> 62))
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  if (!sub_2369E1B58())
  {
    goto LABEL_28;
  }

LABEL_18:

  v33 = sub_2369E1908();
  v34 = sub_2369E1A28();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v144 = a2;
    v36 = v35;
    v139 = swift_slowAlloc();
    v147 = v139;
    *v36 = 136315138;
    v37 = sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
    v38 = a3;
    v39 = MEMORY[0x2383B4160](a6, v37);
    v140 = v8;
    v40 = a4;
    v42 = v41;

    v43 = v39;
    a3 = v38;
    v44 = sub_2369DEBBC(v43, v42, &v147);
    a4 = v40;
    v8 = v140;

    *(v36 + 4) = v44;
    _os_log_impl(&dword_2369C4000, v33, v34, "Ignoring invalid display items: %s", v36, 0xCu);
    v45 = v139;
    __swift_destroy_boxed_opaque_existential_0(v139);
    MEMORY[0x2383B4B10](v45, -1, -1);
    v46 = v36;
    a2 = v144;
    MEMORY[0x2383B4B10](v46, -1, -1);
  }

  else
  {
  }

  if (v8 >> 62)
  {
    goto LABEL_147;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    v47 = sub_2369E1908();
    v48 = sub_2369E1A28();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "Cannot launch picker due to no valid display item";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_29:
  sub_2369DC808();
  v51 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (!v51)
  {

    v47 = sub_2369E1908();
    v48 = sub_2369E1A28();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "No server connection available";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  swift_unknownObjectWeakAssign();
  v52 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems;
  *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems) = v8;
  swift_unknownObjectRetain();

  if (*(v9 + v52) >> 62)
  {
    sub_2369E1B58();
  }

  v139 = a4;
  v137 = v51;
  v136 = sub_2369DFC4C(0, &qword_27DE605A8, 0x277CCABB0);
  v140 = sub_2369E1A88();
  v141 = a3;
  v144 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v138 = sub_2369E1B58();
    v135 = v138 > 0;
    v53 = sub_2369E1B58();
  }

  else
  {
    v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v135 = v53 != 0;
    v138 = v53;
  }

  v54 = 0;
  v145 = a2 & 0xC000000000000001;
  v55 = &qword_27DE605B0;
  v56 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
  v57 = off_278A01738;
  do
  {
    if (v53 == v54)
    {
      v62 = a2;
      v8 = v138;
      v63 = v141;
      v64 = v135;
      if (!v53 || v138 != 1)
      {
        if (!v135)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

LABEL_54:
      if (v145)
      {
        v65 = MEMORY[0x2383B4250](0, v62);
      }

      else
      {
        if (!*(v144 + 16))
        {
          __break(1u);
          return;
        }

        v65 = *(v62 + 32);
      }

      v56 = v65;
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      if (!v66 || (v67 = v66, ![v66 upgradeAccessory]))
      {

        if (!v64)
        {
          goto LABEL_64;
        }

LABEL_62:
        v70 = sub_2369E1A98();
        v71 = v137;
        [v137 updateMigrationDisplayCount_];

        if (v143)
        {
          v72 = sub_2369E1988();
        }

        else
        {
          v72 = 0;
        }

        [v71 showMigrationPickerWithOverrideBundleID_];
        swift_unknownObjectRelease();

        goto LABEL_115;
      }

      [v63 discoveryTimeout];
      if (v68 >= 30.0)
      {
        [v63 discoveryTimeout];
        v69 = v112;
      }

      else
      {
        v69 = 30.0;
      }

      v8 = v137;
      v113 = v142;
      v114 = [v67 peripheralIdentifier];
      if (v114)
      {
        v115 = v114;
        sub_2369E18E8();

        v116 = sub_2369E18F8();
        (*(*(v116 - 8) + 56))(v113, 0, 1, v116);
        sub_2369DFC94(v113, &qword_27DE60560, &qword_2369E45B0);
        v117 = [v67 descriptor];
        v118 = [v117 wifiAwareServiceName];
        if (v118)
        {

          v119 = [v67 accessoryIdentifier];
          if (!v119)
          {
            sub_2369E1998();
            v119 = sub_2369E1988();
          }

          v120 = sub_2369E1A88();
          v121 = sub_2369E1A88();
          v122 = sub_2369E1A88();
          v123 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          if (v143)
          {
            v124 = sub_2369E1988();
          }

          else
          {
            v124 = 0;
          }

          [v8 upgradeAccessory:v119 needsBluetooth:v120 needsWiFi:v121 needsDeviceOTANameBroadcast:v122 discoveryTimeout:v123 overrideBundleID:v124];

          goto LABEL_139;
        }

        v129 = sub_2369E1908();
        v130 = sub_2369E1A28();
        if (!os_log_type_enabled(v129, v130))
        {
          goto LABEL_138;
        }

        v131 = swift_slowAlloc();
        *v131 = 0;
        v132 = "MigrationDisplayItem does not have wi-fi aware descriptor";
      }

      else
      {
        v125 = sub_2369E18F8();
        (*(*(v125 - 8) + 56))(v113, 1, 1, v125);
        sub_2369DFC94(v113, &qword_27DE60560, &qword_2369E45B0);
        if (![v67 wifiAwarePairedDeviceID])
        {
LABEL_139:
          swift_unknownObjectRelease();
          goto LABEL_140;
        }

        v126 = [v67 descriptor];
        v127 = sub_2369DB96C();

        if (v127)
        {
          v54 = [v67 accessoryIdentifier];
          if (!v54)
          {
            sub_2369E1998();
            v54 = sub_2369E1988();
          }

          v55 = sub_2369E1A88();
          v57 = sub_2369E1A88();
          v53 = sub_2369E1A88();
          v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          if (!v143)
          {
            goto LABEL_143;
          }

          v128 = sub_2369E1988();
          goto LABEL_144;
        }

        v129 = sub_2369E1908();
        v130 = sub_2369E1A28();
        if (!os_log_type_enabled(v129, v130))
        {
LABEL_138:

          type metadata accessor for ASError(0);
          v146 = 450;
          sub_2369DF294(MEMORY[0x277D84F90]);
          sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
          sub_2369E18B8();
          v133 = v147;
          sub_2369DD5C4(v147);

          goto LABEL_139;
        }

        v131 = swift_slowAlloc();
        *v131 = 0;
        v132 = "MigrationDisplayItem does not have bluetooth descriptor";
      }

      _os_log_impl(&dword_2369C4000, v129, v130, v132, v131, 2u);
      MEMORY[0x2383B4B10](v131, -1, -1);
      goto LABEL_138;
    }

    if (v145)
    {
      v8 = a2;
      v58 = MEMORY[0x2383B4250](v54, a2);
    }

    else
    {
      if (v54 >= *(v144 + 16))
      {
        goto LABEL_142;
      }

      v8 = a2;
      v58 = *(a2 + 8 * v54 + 32);
    }

    v59 = v58;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v128 = 0;
LABEL_144:
      [v8 upgradeAccessory:v54 needsBluetooth:v55 needsWiFi:v57 needsDeviceOTANameBroadcast:v53 discoveryTimeout:v9 overrideBundleID:{v128, v134}];
      swift_unknownObjectRelease();

LABEL_140:
      return;
    }

    sub_2369DFC4C(0, &qword_27DE605B0, off_278A01738);
    v60 = [v59 isKindOfClass_];

    ++v54;
    a2 = v8;
  }

  while ((v60 & 1) != 0);
  v62 = v8;
  v8 = v138;
  v63 = v141;
  if (v138 == 1)
  {
    v64 = 0;
    goto LABEL_54;
  }

LABEL_64:
  if (v53)
  {
    v9 = 0;
    LODWORD(v73) = 0;
    a3 = 0;
    a4 = 0;
    LODWORD(v142) = 0;
    a2 = v62;
    v134 = v53;
    do
    {
      if (v145)
      {
        v74 = MEMORY[0x2383B4250](v9, a2);
      }

      else
      {
        if (v9 >= *(v144 + 16))
        {
          goto LABEL_146;
        }

        v74 = *(a2 + 8 * v9 + 32);
      }

      v75 = v74;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        if (!sub_2369E1B58())
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

      if (a4)
      {
        if (v142)
        {

          break;
        }

        a4 = 1;
        goto LABEL_80;
      }

      v76 = [v74 descriptor];
      if (![v76 bluetoothCompanyIdentifier])
      {
        v77 = [v76 bluetoothManufacturerDataBlob];
        if (!v77)
        {
          LODWORD(v138) = v73;
          v91 = [v76 bluetoothManufacturerDataMask];
          if (v91)
          {
            goto LABEL_92;
          }

          v98 = [v76 bluetoothNameSubstring];
          if (v98)
          {
            v99 = v98;

            goto LABEL_95;
          }

          v91 = [v76 bluetoothServiceDataBlob];
          if (v91 || (v91 = [v76 bluetoothServiceDataMask]) != 0)
          {
LABEL_92:
            v92 = v91;
            v93 = sub_2369E18D8();
            v94 = a2;
            v96 = v95;

            v97 = v96;
            a2 = v94;
            sub_2369DF7DC(v93, v97);
          }

          else
          {
            v99 = [v76 bluetoothServiceUUID];

            if (!v99)
            {
              a4 = 0;
              if (a3)
              {
                v84 = 1;
                LOBYTE(v73) = v138;
                goto LABEL_85;
              }

              LOBYTE(v73) = v138;
LABEL_80:
              v85 = [v75 descriptor];
              v86 = [v85 SSID];
              if (v86 || (v86 = [v85 SSIDPrefix]) != 0)
              {
                v87 = v86;
                v88 = v85;
                v85 = v87;
                goto LABEL_83;
              }

              v88 = [v85 wifiAwareServiceName];
              if (v88)
              {
LABEL_83:

                v84 = 1;
              }

              else
              {
                v84 = 0;
              }

              LODWORD(v142) = v84;
              goto LABEL_85;
            }

LABEL_95:
          }

          a4 = 1;
          v84 = 1;
          LOBYTE(v73) = v138;
          if (a3)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        }

        v78 = v73;
        v73 = v77;
        v79 = sub_2369E18D8();
        v80 = a2;
        v82 = v81;

        LOBYTE(v73) = v78;
        v53 = v134;
        v83 = v82;
        a2 = v80;
        sub_2369DF7DC(v79, v83);
      }

      a4 = 1;
      v84 = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_85:
      if (v73)
      {
        LODWORD(v73) = 1;
      }

      else
      {
        v73 = [v75 descriptor];
        v89 = [v73 wifiAwareServiceName];
        v90 = v89 != 0;
        if (v89)
        {
        }

        LODWORD(v73) = v90;
      }

      ++v9;
      a3 = v84;
    }

    while (v8 != v53);
  }

  v100 = v141;
  [v141 discoveryTimeout];
  if (v101 >= 30.0)
  {
    [v100 discoveryTimeout];
    v102 = v103;
  }

  else
  {
    v102 = 30.0;
  }

  v104 = v137;
  if (v143)
  {
    v105 = sub_2369E1988();
  }

  else
  {
    v105 = 0;
  }

  v106 = sub_2369E1A88();
  v107 = sub_2369E1A88();
  v108 = sub_2369E1A88();
  v109 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v100 options];
  v110 = sub_2369E1A88();
  [v104 showPickerWithOverrideBundleID:v105 shouldRetrieveDisplayItems:v140 needsBluetooth:v106 needsWiFi:v107 needsDeviceOTANameBroadcast:v108 discoveryTimeout:v109 filterInApp:v110];
  swift_unknownObjectRelease();

LABEL_115:
  v111 = v140;
}

uint64_t sub_2369DB96C()
{
  if ([v0 bluetoothCompanyIdentifier])
  {
    return 1;
  }

  v1 = [v0 bluetoothManufacturerDataBlob];
  if (v1)
  {
    goto LABEL_4;
  }

  v1 = [v0 bluetoothManufacturerDataMask];
  if (v1)
  {
    goto LABEL_4;
  }

  result = [v0 bluetoothNameSubstring];
  if (result)
  {
    goto LABEL_7;
  }

  v1 = [v0 bluetoothServiceDataBlob];
  if (v1 || (v1 = [v0 bluetoothServiceDataMask]) != 0)
  {
LABEL_4:
    v2 = v1;
    v3 = sub_2369E18D8();
    v5 = v4;

    sub_2369DF7DC(v3, v5);
    return 1;
  }

  result = [v0 bluetoothServiceUUID];
  if (result)
  {
LABEL_7:

    return 1;
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

uint64_t sub_2369DBAC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_2369DBC00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2369E18C8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2369DBC64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_2369DBAC4(v6, v7);
  v8 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v8)
  {
    swift_unknownObjectRetain();
    v9 = [a1 identifier];
    if (!v9)
    {
      sub_2369E1998();
      v10 = sub_2369E1988();

      v9 = v10;
    }

    v11 = v9;
    [v8 failAccessory_];
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
    sub_2369E18B8();
    sub_2369DD5C4(v12);
  }
}

void sub_2369DBE80(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = (v6 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v11 = *(v6 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v12 = v10[1];
  *v10 = a5;
  v10[1] = a6;

  sub_2369DBAC4(v11, v12);
  sub_2369DC808();
  v13 = *(v7 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (!v13)
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
    sub_2369E18B8();
    sub_2369DD5C4(v20);

    return;
  }

  swift_unknownObjectRetain();
  v14 = [a1 SSID];
  if (v14)
  {
  }

  sub_2369DFC4C(0, &qword_27DE605A8, 0x277CCABB0);
  v15 = sub_2369E1A88();
  v16 = [a1 identifier];
  if (!v16)
  {
    sub_2369E1998();
    v16 = sub_2369E1988();
  }

  v17 = [a1 displayName];
  if (!v17)
  {
    sub_2369E1998();
    v17 = sub_2369E1988();

    if (a4)
    {
      goto LABEL_9;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = sub_2369E1988();
LABEL_12:
  v19 = v18;
  [v13 renameAccessory:v16 currentName:v17 updateSSID:v15 overrideBundleID:?];
  swift_unknownObjectRelease();
}

void sub_2369DC1D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_2369DBAC4(v6, v7);
  v8 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v8)
  {
    swift_unknownObjectRetain();
    sub_2369DC338(a1);
    v9 = sub_2369E19D8();

    [v8 updatePickerWith_];
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
    sub_2369E18B8();
    sub_2369DD5C4(v10);
  }
}

char *sub_2369DC338(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2369E1B58();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2369DF164(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2383B4250](i, a1);
        sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2369DF164((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2369DFBAC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2369DF164((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2369DFBAC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_2369DC5F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_2369DBAC4(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v6)
  {

    [v6 endDiscoveryInPicker];
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError, &unk_2369E4450);
    sub_2369E18B8();
    sub_2369DD5C4(v7);
  }
}

uint64_t sub_2369DC79C()
{
  v1 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection;
  v2 = *(v0 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server) = 0;

  return swift_unknownObjectRelease();
}

void sub_2369DC808()
{
  v1 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server;
  if (*&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for ASUIClientWrapper()) init];
  v3 = *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager];
  *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager] = v0;
  v4 = v0;

  v5 = *&v4[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper];
  *&v4[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = v2;
  v6 = v2;

  v7 = sub_2369E1988();
  v47 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v47 setServer_];

  v10 = [v8 protocolForProtocol_];
  [v47 setClient_];

  [v47 setClientMessagingExpectation_];
  v11 = sub_2369E1988();
  v12 = sub_2369E1988();
  v13 = [objc_opt_self() endpointForMachName:v11 service:v12 instance:0];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 connectionWithEndpoint_];
    if (v16)
    {
      v17 = v16;
      v55 = &unk_2849C2280;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        v19 = v18;
        v46 = v1;
        v20 = swift_allocObject();
        *(v20 + 16) = v47;
        *(v20 + 24) = v6;
        *(v20 + 32) = v4;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_2369DFC08;
        *(v21 + 24) = v20;
        v53 = sub_2369DFC24;
        v54 = v21;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v52 = sub_2369DD570;
        *(&v52 + 1) = &block_descriptor_70;
        v22 = _Block_copy(&aBlock);
        v23 = v4;
        v24 = v6;
        v25 = v47;

        v26 = v17;

        [v19 configureConnection_];

        _Block_release(v22);
        LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

        if (v20)
        {
          __break(1u);
        }

        else
        {
          v27 = *&v23[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
          *&v23[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection] = v19;
          v28 = v26;

          [v19 activate];
          v29 = sub_2369E1988();
          v30 = sub_2369E1988();
          v31 = [objc_opt_self() attributeWithDomain:v29 name:v30];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60708, &qword_2369E4648);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_2369E45A0;
          *(v32 + 32) = v31;
          sub_2369DFC4C(0, &qword_27DE60710, 0x277D46DD8);
          v33 = v31;
          v34 = sub_2369E19D8();

          v35 = [v19 remoteTargetWithLaunchingAssertionAttributes_];

          if (v35)
          {
            sub_2369E1AB8();
            swift_unknownObjectRelease();
          }

          else
          {

            v49 = 0u;
            v50 = 0u;
          }

          aBlock = v49;
          v52 = v50;
          if (*(&v50 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60720, &qword_2369E4658);
            v44 = swift_dynamicCast();
            v45 = v48;
            if (!v44)
            {
              v45 = 0;
            }
          }

          else
          {
            sub_2369DFC94(&aBlock, &qword_27DE60718, &qword_2369E4650);
            v45 = 0;
          }

          *&v0[v46] = v45;

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    else
    {
    }

    if (qword_27DE603A8 != -1)
    {
      swift_once();
    }

    v40 = sub_2369E1928();
    __swift_project_value_buffer(v40, qword_27DE60540);
    v41 = sub_2369E1908();
    v42 = sub_2369E1A28();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2369C4000, v41, v42, "No valid endpoint's connection available", v43, 2u);
      MEMORY[0x2383B4B10](v43, -1, -1);
    }
  }

  else
  {
    if (qword_27DE603A8 != -1)
    {
      swift_once();
    }

    v36 = sub_2369E1928();
    __swift_project_value_buffer(v36, qword_27DE60540);
    v37 = sub_2369E1908();
    v38 = sub_2369E1A28();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2369C4000, v37, v38, "No server endpoint available", v39, 2u);
      MEMORY[0x2383B4B10](v39, -1, -1);
    }
  }
}

id sub_2369DCF90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v8 = sub_2369E1928();
  __swift_project_value_buffer(v8, qword_27DE60540);
  v9 = sub_2369E1908();
  v10 = sub_2369E1A38();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2369C4000, v9, v10, "configuring connection", v11, 2u);
    MEMORY[0x2383B4B10](v11, -1, -1);
  }

  v12 = sub_2369E1988();
  [a1 setName_];

  v13 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v24 = sub_2369DD308;
  v25 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_73;
  v14 = _Block_copy(&v20);
  [a1 setActivationHandler_];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_2369DFD2C;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_79;
  v16 = _Block_copy(&v20);

  [a1 setInvalidationHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_2369DFD50;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_83;
  v18 = _Block_copy(&v20);

  [a1 setInterruptionHandler_];
  _Block_release(v18);
  return [a1 setTargetQueue_];
}

void sub_2369DD308()
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v0 = sub_2369E1928();
  __swift_project_value_buffer(v0, qword_27DE60540);
  oslog = sub_2369E1908();
  v1 = sub_2369E1A38();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2369C4000, oslog, v1, "angel connection activated", v2, 2u);
    MEMORY[0x2383B4B10](v2, -1, -1);
  }
}

void sub_2369DD3F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2369DD458(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v4 = sub_2369E1928();
  __swift_project_value_buffer(v4, qword_27DE60540);
  v5 = sub_2369E1908();
  v6 = sub_2369E1A38();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2369C4000, v5, v6, a3, v7, 2u);
    MEMORY[0x2383B4B10](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_2369DC79C();
  }
}

uint64_t sub_2369DD570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void *sub_2369DD5C4(void *a1)
{
  v3 = sub_2369E1938();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2369E1968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v7;
    v12 = result;
    v19 = [result queue];

    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = a1;
    aBlock[4] = sub_2369DFE4C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2369DD93C;
    aBlock[3] = &block_descriptor_90;
    v14 = _Block_copy(aBlock);
    v15 = v1;
    v16 = a1;
    sub_2369E1948();
    v21 = MEMORY[0x277D84F90];
    sub_2369DFAD0(&qword_27DE60680, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60688, &qword_2369E4628);
    sub_2369DFB18(&qword_27DE60690, &qword_27DE60688, &qword_2369E4628);
    sub_2369E1AC8();
    v17 = v19;
    MEMORY[0x2383B41D0](0, v10, v6, v14);
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v20);
  }

  return result;
}

uint64_t sub_2369DD8B8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v3 = *(a1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  if (v3)
  {
    v5 = v2[1];

    v3(a2);
    sub_2369DBAC4(v3, v5);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  return sub_2369DBAC4(v6, v7);
}

uint64_t sub_2369DD93C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id ASUIClientManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASUIClientManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ASUIClientManager.init()()
{
  v10 = sub_2369E1A58();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2369E1A48();
  MEMORY[0x28223BE20]();
  sub_2369E1968();
  MEMORY[0x28223BE20]();
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_queue;
  v8 = sub_2369DFC4C(0, &qword_27DE605C8, 0x277D85C78);
  sub_2369E1958();
  v12 = v4;
  sub_2369DFAD0(&qword_27DE605D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE605D8, &qword_2369E45B8);
  sub_2369DFB18(&qword_27DE605E0, &qword_27DE605D8, &qword_2369E45B8);
  sub_2369E1AC8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  *&v0[v9] = sub_2369E1A78();
  v5 = &v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter] = 0;
  v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_pickerDidPresent] = 0;
  v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_showPermissionPromptCalled] = 0;
  v6 = type metadata accessor for ASUIClientManager();
  v11.receiver = v0;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_2369DDE5C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v8 = [v4 initWithEventType_];
    if (a1)
    {
      v6 = sub_2369E18C8();
    }

    else
    {
      v6 = 0;
    }

    [v8 setError_];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];
  }
}

void sub_2369DE050(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v7 = [v4 initWithEventType_];
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];
  }
}

void sub_2369DE15C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v6 = [v4 initWithEventType_];
    if (a1)
    {
      a1 = sub_2369E18C8();
    }

    [v6 setError_];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];

    v8 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection;
    v9 = *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
    if (v9)
    {
      v10 = v9;
      [v10 invalidate];
    }

    v11 = *&v5[v8];
    *&v5[v8] = 0;

    *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server] = 0;
    swift_unknownObjectRelease();
    v12 = *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper];
    *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = 0;
  }
}

void *sub_2369DE320(void *a1)
{
  v2 = v1;
  v4 = sub_2369E1938();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2369E1968();
  result = MEMORY[0x28223BE20]();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager;
  v14 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v14)
  {
    v27 = v10;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = result;
      v16 = v14;
      v26 = v2;
      v17 = v16;
      v25 = [v15 queue];

      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      aBlock[4] = sub_2369DFAB0;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2369DD93C;
      aBlock[3] = &block_descriptor;
      v19 = _Block_copy(aBlock);
      v24 = v17;
      v20 = a1;
      sub_2369E1948();
      v28 = MEMORY[0x277D84F90];
      sub_2369DFAD0(&qword_27DE60680, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v23 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60688, &qword_2369E4628);
      v2 = v26;
      sub_2369DFB18(&qword_27DE60690, &qword_27DE60688, &qword_2369E4628);
      sub_2369E1AC8();
      v21 = v25;
      MEMORY[0x2383B41D0](0, v12, v7, v19);
      _Block_release(v19);

      (*(v5 + 8))(v7, v4);
      (*(v27 + 8))(v12, v23);
    }

    v22 = *(v2 + v13);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_showPermissionPromptCalled) = 0;
    }
  }

  return result;
}

void sub_2369DE770(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (!v2)
  {
    return;
  }

  v7 = v2;
  if (!sub_2369DE888(a1))
  {
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2369DFC4C(0, &qword_27DE60678, 0x277D04758);
    v6 = sub_2369E19D8();

    [v5 pickerDidReport_];

LABEL_5:

    return;
  }
}

uint64_t sub_2369DE888(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2369E1B28();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2369DFA50(i, v5);
    sub_2369DFC4C(0, &qword_27DE60678, 0x277D04758);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2369E1B08();
    sub_2369E1B38();
    sub_2369E1B48();
    sub_2369E1B18();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_2369DEA48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIClientWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2369DEA8C(uint64_t a1, uint64_t a2)
{
  sub_2369E1BB8();
  sub_2369E19A8();
  v4 = sub_2369E1BC8();

  return sub_2369DEB04(a1, a2, v4);
}

unint64_t sub_2369DEB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2369E1B78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2369DEBBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2369DEC88(v11, 0, 0, 1, a1, a2);
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
    sub_2369DFA50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2369DEC88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2369DED94(a5, a6);
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
    result = sub_2369E1AF8();
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

void *sub_2369DED94(uint64_t a1, unint64_t a2)
{
  v3 = sub_2369DEDE0(a1, a2);
  sub_2369DEF10(&unk_28499D388);
  return v3;
}

void *sub_2369DEDE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2369DEFFC(v5, 0);
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

  result = sub_2369E1AF8();
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
        v10 = sub_2369E19B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2369DEFFC(v10, 0);
        result = sub_2369E1AD8();
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

uint64_t sub_2369DEF10(uint64_t result)
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

  result = sub_2369DF070(result, v11, 1, v3);
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

void *sub_2369DEFFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE606A0, &unk_2369E4638);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2369DF070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE606A0, &unk_2369E4638);
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

char *sub_2369DF164(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2369DF184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2369DF184(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60698, &qword_2369E4630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2369DF294(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60728, &qword_2369E4660);
    v3 = sub_2369E1B68();
    v4 = a1 + 32;

    while (1)
    {
      sub_2369DFDB4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2369DEA8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2369DFBAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2369DF3A4(unint64_t result)
{
  v1 = result;
  v32 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_2369E1B58();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0x6E4920656C707041;
    v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383B4250](v3, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        if ([v10 upgradeAccessory])
        {
          MEMORY[0x2383B4130]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2369E1A08();
          }

          sub_2369E1A18();

LABEL_18:
          v31 = v33;
          goto LABEL_9;
        }
      }

      v12 = [v8 descriptor];
      v13 = [v12 wifiAwareVendorNameMatch];

      if (v13)
      {
        v14 = v4;
        v15 = [v13 string];
        v16 = sub_2369E1998();
        v18 = v17;

        v4 = v14;
        if (v16 == v14 && v18 == 0xEA00000000002E63)
        {

LABEL_34:
          v30 = v8;
          MEMORY[0x2383B4130]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2369E1A08();
          }

          sub_2369E1A18();

          goto LABEL_8;
        }

        v20 = sub_2369E1B78();

        if (v20)
        {
          goto LABEL_34;
        }

        v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
      }

      v21 = [v8 v5[366]];
      v22 = [v21 imageAsset];

      if (v22)
      {

        v23 = [v8 v5[366]];
        [v23 size];
        v25 = v24;

        if (v25 != 0.0)
        {
          v26 = [v8 v5[366]];
          [v26 size];
          v28 = v27;

          if (v28 != 0.0)
          {
            v29 = v8;
            MEMORY[0x2383B4130]();
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2369E1A08();
            }

            sub_2369E1A18();

            goto LABEL_18;
          }
        }
      }

      v6 = v8;
      MEMORY[0x2383B4130]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2369E1A08();
      }

      sub_2369E1A18();

LABEL_8:
      v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
LABEL_9:
      if (v2 == ++v3)
      {
        return v31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2369DF7DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

uint64_t sub_2369DFA50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2369DFAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2369DFB18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2369DFB6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

_OWORD *sub_2369DFBAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2369DFBC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2369DFC4C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2369DFC94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2369DFCF4()
{
  MEMORY[0x2383B4B50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2369DFDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE60730, &qword_2369E4668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}