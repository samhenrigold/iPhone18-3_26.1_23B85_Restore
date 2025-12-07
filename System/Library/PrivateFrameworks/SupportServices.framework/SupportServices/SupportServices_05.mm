void TriageRequest.ClientContext.fullTimeZone.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_39_4();
  v5 = OUTLINED_FUNCTION_212_0(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_159(v7 + 112, v6);
  *(v7 + 112) = v2;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t TriageRequest.ClientContext.fullTimeZone.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_4(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 112);
  v6 = *(v5 + 120);
  *(v1 + 48) = *(v5 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD5564C()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    TriageRequest.ClientContext.fullTimeZone.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD65E58(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

double TriageRequest.ClientContext.deprecatedBatteryConfig.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 128, v3);
  return *(v2 + 128);
}

uint64_t TriageRequest.ClientContext.deprecatedBatteryConfig.setter()
{
  v4 = OUTLINED_FUNCTION_302_0();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD65E58(v7);
    *(v0 + v2) = v6;
  }

  result = OUTLINED_FUNCTION_159(v6 + 128, v5);
  *(v6 + 128) = v3;
  return result;
}

uint64_t TriageRequest.ClientContext.deprecatedBatteryConfig.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_48_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 128);
  *(v1 + 72) = *(v4 + 128);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD557E8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v6 = OUTLINED_FUNCTION_231_0();
  v7 = *(v4 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_89_0(v9);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 128) = v5;

  free(v2);
}

uint64_t TriageRequest.ClientContext.locationServicesEnabled.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t TriageRequest.ClientContext.locationServicesEnabled.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_149_1();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 136, v5);
  *(v6 + 136) = a1 & 1;
  return result;
}

uint64_t TriageRequest.ClientContext.locationServicesEnabled.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_38_3(v3);
  v5 = type metadata accessor for TriageRequest.ClientContext(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_127(v0 + 136);
  *(v1 + 84) = *(v0 + 136);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD55974(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t TriageRequest.ClientContext.deviceLocale.getter()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 144, v2);

  return OUTLINED_FUNCTION_147();
}

void TriageRequest.ClientContext.deviceLocale.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_39_4();
  v5 = OUTLINED_FUNCTION_212_0(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_159(v7 + 144, v6);
  *(v7 + 144) = v2;
  *(v7 + 152) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t TriageRequest.ClientContext.deviceLocale.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_4(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 144);
  v6 = *(v5 + 152);
  *(v1 + 48) = *(v5 + 144);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD55B40()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    TriageRequest.ClientContext.deviceLocale.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD65E58(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 144);
    *(v7 + 144) = v3;
    *(v7 + 152) = v2;
  }

  free(v0);
}

double TriageRequest.ClientContext.sessionDuration.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 160, v3);
  return *(v2 + 160);
}

uint64_t TriageRequest.ClientContext.sessionDuration.setter()
{
  v4 = OUTLINED_FUNCTION_302_0();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD65E58(v7);
    *(v0 + v2) = v6;
  }

  result = OUTLINED_FUNCTION_159(v6 + 160, v5);
  *(v6 + 160) = v3;
  return result;
}

uint64_t TriageRequest.ClientContext.sessionDuration.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_48_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 160);
  *(v1 + 72) = *(v4 + 160);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD55CDC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v6 = OUTLINED_FUNCTION_231_0();
  v7 = *(v4 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_89_0(v9);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 160) = v5;

  free(v2);
}

uint64_t TriageRequest.ClientContext.serialNumberInputMethod.getter()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 168, v2);

  return OUTLINED_FUNCTION_147();
}

void TriageRequest.ClientContext.serialNumberInputMethod.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_39_4();
  v5 = OUTLINED_FUNCTION_212_0(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_159(v7 + 168, v6);
  *(v7 + 168) = v2;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t TriageRequest.ClientContext.serialNumberInputMethod.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_4(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 168);
  v6 = *(v5 + 176);
  *(v1 + 48) = *(v5 + 168);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD55EB8()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    TriageRequest.ClientContext.serialNumberInputMethod.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD65E58(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 168);
    *(v7 + 168) = v3;
    *(v7 + 176) = v2;
  }

  free(v0);
}

uint64_t TriageRequest.ClientContext.appLocale.getter()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 184, v2);

  return OUTLINED_FUNCTION_147();
}

void TriageRequest.ClientContext.appLocale.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_39_4();
  v5 = OUTLINED_FUNCTION_212_0(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_159(v7 + 184, v6);
  *(v7 + 184) = v2;
  *(v7 + 192) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t TriageRequest.ClientContext.appLocale.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_4(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 184);
  v6 = *(v5 + 192);
  *(v1 + 48) = *(v5 + 184);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD56098()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    TriageRequest.ClientContext.appLocale.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD65E58(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 184);
    *(v7 + 184) = v3;
    *(v7 + 192) = v2;
  }

  free(v0);
}

uint64_t TriageRequest.ClientContext.isPasscodeSet.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 200, v3);
  return *(v2 + 200);
}

uint64_t TriageRequest.ClientContext.isPasscodeSet.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_149_1();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 200, v5);
  *(v6 + 200) = a1 & 1;
  return result;
}

uint64_t TriageRequest.ClientContext.isPasscodeSet.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_38_3(v3);
  v5 = type metadata accessor for TriageRequest.ClientContext(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_127(v0 + 200);
  *(v1 + 84) = *(v0 + 200);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD56228(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 200) = v3;

  free(v1);
}

uint64_t TriageRequest.ClientContext.isCurrentDevice.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 201, v3);
  return *(v2 + 201);
}

uint64_t TriageRequest.ClientContext.isCurrentDevice.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_149_1();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 201, v5);
  *(v6 + 201) = a1 & 1;
  return result;
}

uint64_t TriageRequest.ClientContext.isCurrentDevice.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_38_3(v3);
  v5 = type metadata accessor for TriageRequest.ClientContext(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_127(v0 + 201);
  *(v1 + 84) = *(v0 + 201);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD563A4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD65E58(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 201) = v3;

  free(v1);
}

uint64_t TriageRequest.ClientContext.phoneNumber.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_77_1(v8);
  OUTLINED_FUNCTION_113_0(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber);
  OUTLINED_FUNCTION_152();
  sub_26BD31AF8();
  type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_23(v1);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v9)
    {
      return sub_26BD04E80(v1, &qword_280449840, &qword_26BDA36D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_65_2();
    return sub_26BD65C08();
  }

  return result;
}

uint64_t TriageRequest.ClientContext.phoneNumber.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_212_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD65E58(v3);
    OUTLINED_FUNCTION_219(v4);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_278_0();
  v5 = type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_127_1(v5);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

void TriageRequest.ClientContext.phoneNumber.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47(v9);
  type metadata accessor for PhoneNumber(v10);
  OUTLINED_FUNCTION_34();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_300(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_57_0(*(v0 + v15) + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_9();
    if (!v16)
    {
      sub_26BD04E80(v1, &qword_280449840, &qword_26BDA36D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_216();
    sub_26BD65C08();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ClientContext.hasPhoneNumber.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ClientContext.clearPhoneNumber()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for TriageRequest.ClientContext(v2);
  if ((OUTLINED_FUNCTION_221_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD65E58(v4);
    OUTLINED_FUNCTION_155(v5);
  }

  v6 = type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_67(v6);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

void TriageRequest.ClientContext.location.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ClientContext.hasLocation.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ClientContext.clearLocation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for TriageRequest.ClientContext(v2);
  if ((OUTLINED_FUNCTION_221_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD65E58(v4);
    OUTLINED_FUNCTION_155(v5);
  }

  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v6);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.ClientContext.iTunesUserDsIDHash.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_4(v3);
  OUTLINED_FUNCTION_124();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_26BCFEFC4(v4, v5);
  return OUTLINED_FUNCTION_133();
}

uint64_t TriageRequest.ClientContext.entryPoint.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_8_4(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ClientContext.isServiceRecommended.modify()
{
  v0 = OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_38_3(v1);
  v3 = type metadata accessor for TriageRequest.ClientContext(v2);
  OUTLINED_FUNCTION_66_1(v3);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_225_0();
  return OUTLINED_FUNCTION_133();
}

double TriageRequest.ClientContext.serviceConfig.getter()
{
  OUTLINED_FUNCTION_48_1();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_154(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig, v4);
  return *(v2 + v3);
}

uint64_t TriageRequest.ClientContext.serviceConfig.setter(double a1)
{
  v4 = OUTLINED_FUNCTION_149_1();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v6 = sub_26BD65E58(v6);
    *(v1 + v2) = v6;
  }

  v7 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  result = OUTLINED_FUNCTION_159(v6 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig, v5);
  *(v6 + v7) = a1;
  return result;
}

uint64_t TriageRequest.ClientContext.serviceConfig.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_48_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_99();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD570DC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v6 = OUTLINED_FUNCTION_231_0();
  v7 = *(v4 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD65E58(v8);
    OUTLINED_FUNCTION_89_0(v9);
  }

  v10 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_212();
  *(v7 + v10) = v5;

  free(v2);
}

void TriageRequest.ClientContext.diagnosticsContext.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ClientContext.hasDiagnosticsContext.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ClientContext.clearDiagnosticsContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for TriageRequest.ClientContext(v2);
  if ((OUTLINED_FUNCTION_221_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_1();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD65E58(v4);
    OUTLINED_FUNCTION_155(v5);
  }

  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v6);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.ClientContext.restartedAfterRecommendation.modify()
{
  v0 = OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_38_3(v1);
  v3 = type metadata accessor for TriageRequest.ClientContext(v2);
  OUTLINED_FUNCTION_66_1(v3);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_225_0();
  return OUTLINED_FUNCTION_133();
}

uint64_t TriageRequest.ClientContext.osBuildNumber.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_8_4(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ClientContext.currentDeviceSerialNumber.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_8_4(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.Customer.alternateFirstName.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t TriageRequest.Customer.homeDial.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t TriageRequest.Customer.homePhone.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t TriageRequest.Customer.officeDial.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t TriageRequest.Customer.officePhone.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t TriageRequest.Customer.phoneType.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t TriageRequest.Customer.customerPhone.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t TriageRequest.Customer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for TriageRequest.Customer(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t TriageRequest.Customer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.Customer(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t TriageRequest.Customer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.Customer(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.ReportingContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.ReportingContext(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD57E5C()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_154(v0 + 16, v3);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD57EA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  TriageRequest.ExecuteSupportOption.solutionTypeString.setter(v1, v2, v3, v4, v5, v6, v7);
}

void sub_26BD57F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_244_0();
  v12 = v11;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_39_4();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_285_0(v17);
  v20 = *(v8 + v10);
  if ((v18 & 1) == 0)
  {
    v14(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_36();
    v22 = v12(v21);
    OUTLINED_FUNCTION_260_0(v22);
  }

  OUTLINED_FUNCTION_159(v20 + 16, v19);
  *(v20 + 16) = v9;
  *(v20 + 24) = v7;

  OUTLINED_FUNCTION_243_0();
}

uint64_t TriageRequest.ExecuteSupportOption.solutionTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD58054()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_282();
    v9 = OUTLINED_FUNCTION_130();
    v8(v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_201_0();
    v11 = *(v5 + v0);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_248_0();
      v4(v12);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_36();
      v14 = v3(v13);
      OUTLINED_FUNCTION_295_0(v14);
    }

    OUTLINED_FUNCTION_191(v11 + 16);
    *(v11 + 16) = v2;
    *(v11 + 24) = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v15);
}

uint64_t sub_26BD58114()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_154(v0 + 32, v3);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD58160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  TriageRequest.ExecuteSupportOption.solutionSubTypeString.setter(v1, v2, v3, v4, v5, v6, v7);
}

void sub_26BD581E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_244_0();
  v12 = v11;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_39_4();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_285_0(v17);
  v20 = *(v8 + v10);
  if ((v18 & 1) == 0)
  {
    v14(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_36();
    v22 = v12(v21);
    OUTLINED_FUNCTION_260_0(v22);
  }

  OUTLINED_FUNCTION_159(v20 + 32, v19);
  *(v20 + 32) = v9;
  *(v20 + 40) = v7;

  OUTLINED_FUNCTION_243_0();
}

uint64_t TriageRequest.ExecuteSupportOption.solutionSubTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD5830C()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_282();
    v9 = OUTLINED_FUNCTION_130();
    v8(v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_201_0();
    v11 = *(v5 + v0);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_248_0();
      v4(v12);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_36();
      v14 = v3(v13);
      OUTLINED_FUNCTION_295_0(v14);
    }

    OUTLINED_FUNCTION_191(v11 + 32);
    *(v11 + 32) = v2;
    *(v11 + 40) = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v15);
}

uint64_t TriageRequest.ExecuteSupportOption.solutionSubTypesString.getter()
{
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 48, v2);
}

uint64_t TriageRequest.ExecuteSupportOption.solutionSubTypesString.setter()
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_213_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD6AF10(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 48, v5);
  *(v6 + 48) = v0;
}

uint64_t TriageRequest.ExecuteSupportOption.solutionSubTypesString.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_45_1();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 48);
  *(v1 + 48) = *(v5 + 48);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD584F4()
{
  OUTLINED_FUNCTION_186();
  v2 = *(v1 + 48);
  if (v3)
  {

    TriageRequest.ExecuteSupportOption.solutionSubTypesString.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_91_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD6AF10(v8);
      OUTLINED_FUNCTION_89_0(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 48);
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t TriageRequest.ExecuteSupportOption.uuid.getter()
{
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 56, v2);

  return OUTLINED_FUNCTION_147();
}

void TriageRequest.ExecuteSupportOption.uuid.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for TriageRequest.ExecuteSupportOption(v4);
  v6 = OUTLINED_FUNCTION_73_0(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BD6AF10(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 56, v7);
  *(v8 + 56) = v2;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t TriageRequest.ExecuteSupportOption.uuid.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 56);
  v6 = *(v5 + 64);
  *(v1 + 48) = *(v5 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD586EC()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    TriageRequest.ExecuteSupportOption.uuid.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_91_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD6AF10(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 56);
    *(v7 + 56) = v3;
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t TriageRequest.ExecuteSupportOption.isForPremiumAdvisor.getter()
{
  OUTLINED_FUNCTION_45_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t TriageRequest.ExecuteSupportOption.isForPremiumAdvisor.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_213_0(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD6AF10(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 72, v5);
  *(v6 + 72) = a1 & 1;
  return result;
}

uint64_t TriageRequest.ExecuteSupportOption.isForPremiumAdvisor.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_38_3(v3);
  v5 = type metadata accessor for TriageRequest.ExecuteSupportOption(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_127(v0 + 72);
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD58880(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD6AF10(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t sub_26BD58918()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_154(v0 + 80, v3);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD58964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  TriageRequest.ExecuteSupportOption.appleID.setter(v1, v2, v3, v4, v5, v6, v7);
}

void sub_26BD589E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_244_0();
  v12 = v11;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_39_4();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_285_0(v17);
  v20 = *(v8 + v10);
  if ((v18 & 1) == 0)
  {
    v14(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_36();
    v22 = v12(v21);
    OUTLINED_FUNCTION_260_0(v22);
  }

  OUTLINED_FUNCTION_159(v20 + 80, v19);
  *(v20 + 80) = v9;
  *(v20 + 88) = v7;

  OUTLINED_FUNCTION_243_0();
}

uint64_t TriageRequest.ExecuteSupportOption.appleID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 80);
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD58B10()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_282();
    v9 = OUTLINED_FUNCTION_130();
    v8(v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_201_0();
    v11 = *(v5 + v0);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_248_0();
      v4(v12);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_36();
      v14 = v3(v13);
      OUTLINED_FUNCTION_295_0(v14);
    }

    OUTLINED_FUNCTION_191(v11 + 80);
    *(v11 + 80) = v2;
    *(v11 + 88) = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v15);
}

void TriageRequest.ExecuteSupportOption.executeDiagnostics.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ExecuteSupportOption.hasExecuteDiagnostics.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearExecuteDiagnostics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredFirstName.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredLastName.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredEmail.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredPhoneNumber.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredCountryCode.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredCountryCharCode.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void TriageRequest.ExecuteSupportOption.userEnteredAddress.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ExecuteSupportOption.hasUserEnteredAddress.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearUserEnteredAddress()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.ExecuteSupportOption.userEnteredSecondaryDetails.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.clickToChatEstimatedWaitTimeID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.chatTransactionID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.rtctOpted.modify()
{
  v0 = OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_38_3(v1);
  v3 = type metadata accessor for TriageRequest.ExecuteSupportOption(v2);
  OUTLINED_FUNCTION_66_1(v3);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_225_0();
  return OUTLINED_FUNCTION_133();
}

uint64_t TriageRequest.ExecuteSupportOption.reservationSlot.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.clickToCallEstimatedWaitTimeID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void TriageRequest.ExecuteSupportOption.reservationData.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ExecuteSupportOption.hasReservationData.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearReservationData()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreURL.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreAddress.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreName.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredPhoneNumber.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.genesysSonarEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.emailAttachmentToken.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.emailTransactionID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.emailAdditionalDetails.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.emailEstimatedWaitTime.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.emailFileAttachmentIds.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_45_1();
  *(v1 + 64) = v4;
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD5B334()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_186();
  v6 = *(v5 + 48);
  if (v7)
  {
    v8 = v4;

    v8(v9);
  }

  else
  {
    v10 = v3;
    OUTLINED_FUNCTION_223_0();
    v11 = *(v0 + 64);
    v12 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_36();
      v16 = v1(v15);
      OUTLINED_FUNCTION_295_0(v16);
    }

    v17 = *v10;
    OUTLINED_FUNCTION_191(v14 + v17);
    *(v14 + v17) = v6;
  }

  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t TriageRequest.ExecuteSupportOption.mobileCarrierReferredName.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.mobileCarrierReferredURL.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.resolvedArticle.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.resolvedArticleTitle.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t TriageRequest.ExecuteSupportOption.resolvedArticleURL.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_5(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD5BAA8()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_282();
    v11 = OUTLINED_FUNCTION_130();
    v10(v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_251_0();
    v13 = *(v7 + v1);
    if ((v12 & 1) == 0)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 64);
      v6(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_36();
      v13 = v5(v16);
      *(v15 + v14) = v13;
    }

    v17 = (v13 + *v4);
    OUTLINED_FUNCTION_235(v17, v0 + 24);
    *v17 = v3;
    v17[1] = v2;
  }

  OUTLINED_FUNCTION_188();

  free(v18);
}

void TriageRequest.ExecuteSupportOption.paymentFlowData.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ExecuteSupportOption.hasPaymentFlowData.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearPaymentFlowData()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

void TriageRequest.ExecuteSupportOption.manageCoverageData.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.ExecuteSupportOption.hasManageCoverageData.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearManageCoverageData()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t sub_26BD5C1B8(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_196_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_230(*(v2 + *(v6 + 20)) + *a2, v10);
  v7 = OUTLINED_FUNCTION_259();
  sub_26BCFEFC4(v7, v8);
  return OUTLINED_FUNCTION_259();
}

void sub_26BD5C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_244_0();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23;
  v34 = OUTLINED_FUNCTION_90();
  v36 = *(v35(v34) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v23 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_36();
    v38 = v30(v39);
    *(v33 + v36) = v38;
  }

  v40 = (v38 + *v28);
  OUTLINED_FUNCTION_235(v40, &a10);
  v41 = *v40;
  v42 = v40[1];
  *v40 = v24;
  v40[1] = v22;
  sub_26BCFF01C(v41, v42);
  OUTLINED_FUNCTION_243_0();
}

uint64_t TriageRequest.ExecuteSupportOption.applicationData.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_5(v3);
  OUTLINED_FUNCTION_124();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_26BCFEFC4(v4, v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD5C3F4()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    v10 = v8;
    v11 = OUTLINED_FUNCTION_130();
    sub_26BCFEFC4(v11, v12);
    v13 = OUTLINED_FUNCTION_130();
    v10(v13);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_251_0();
    v17 = *(v7 + v1);
    if ((v16 & 1) == 0)
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);
      v6(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_36();
      v17 = v5(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v4);
    OUTLINED_FUNCTION_235(v21, v0 + 24);
    v14 = *v21;
    v15 = v21[1];
    *v21 = v3;
    v21[1] = v2;
  }

  sub_26BCFF01C(v14, v15);
  OUTLINED_FUNCTION_188();

  free(v22);
}

uint64_t TriageRequest.ExecuteSupportOption.isCustomerOptedForSms.modify()
{
  v0 = OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_38_3(v1);
  v3 = type metadata accessor for TriageRequest.ExecuteSupportOption(v2);
  OUTLINED_FUNCTION_66_1(v3);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_225_0();
  return OUTLINED_FUNCTION_133();
}

void TriageRequest.ExecuteSupportOption.smbRepairRequestDetails.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD5C780()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[4];
    (*(v8 + 16))(*(*v0 + 56), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v9 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v9);
  OUTLINED_FUNCTION_283();

  free(v10);
}

uint64_t TriageRequest.ExecuteSupportOption.hasSmbRepairRequestDetails.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_88_1(v4);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71_1();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v5);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall TriageRequest.ExecuteSupportOption.clearSmbRepairRequestDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_213_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BD6AF10(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  swift_endAccess();
}

uint64_t TriageRequest.Product.carrierName.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t TriageRequest.Product.smbEnrollmentType.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for TriageRequest.Product(v5);
  OUTLINED_FUNCTION_141();
  sub_26BD31AF8();
  sub_26BDA0810();
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v7();
  }

  return result;
}

uint64_t TriageRequest.Product.smbEnrollmentType.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for TriageRequest.Product(v1);
  sub_26BD04E80(v0 + *(v2 + 64), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_152();
  v3();
  v4 = OUTLINED_FUNCTION_120_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void TriageRequest.Product.smbEnrollmentType.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.Product(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 64));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.Product.hasSmbEnrollmentType.getter()
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for TriageRequest.Product(v5);
  sub_26BD31AF8();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return v0;
}

Swift::Void __swiftcall TriageRequest.Product.clearSmbEnrollmentType()()
{
  v1 = type metadata accessor for TriageRequest.Product(0);
  sub_26BD04E80(v0 + *(v1 + 64), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t TriageRequest.Product.productName.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t TriageRequest.Product.operatingSystemVersion.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t TriageRequest.Product.eligibleProductID.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t TriageRequest.Product.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for TriageRequest.Product(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t TriageRequest.Product.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.Product(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t TriageRequest.Product.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.Product(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.SymptomInformation.symptomDescription.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TriageRequest.SymptomInformation.userUtterance.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TriageRequest.SymptomInformation.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for TriageRequest.SymptomInformation(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t TriageRequest.SymptomInformation.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.SymptomInformation(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t TriageRequest.SymptomInformation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.SymptomInformation(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.HMTContext.settingsGroups.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.suggestedUserActions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.executedUserActions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.suggestedArticles.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.openedArticles.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.suggestedBcsArticles.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.openedBcsArticles.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.userSelections.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t TriageRequest.HMTContext.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for TriageRequest.HMTContext(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t TriageRequest.HMTContext.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t TriageRequest.HMTContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.HMTContext.SettingsGroup.pre.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_22();
  type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v7);
  OUTLINED_FUNCTION_152();
  sub_26BD31AF8();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_23(v1);
  if (v8)
  {
    *a1 = MEMORY[0x277D84F90];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v8)
    {
      return sub_26BD04E80(v1, &qword_2804495B8, &qword_26BDA7810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    return sub_26BD65C08();
  }

  return result;
}

uint64_t TriageRequest.HMTContext.SettingsGroup.pre.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_2804495B8, &qword_26BDA7810);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_143();
  sub_26BD65C08();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t TriageRequest.HMTContext.SettingsEvent.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void TriageRequest.HMTContext.SettingsGroup.pre.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_59(v1);
  v2 = OUTLINED_FUNCTION_117_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  v0[2] = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v0[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[4] = v9;
  v10 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
  OUTLINED_FUNCTION_279_0(*(v10 + 24));
  OUTLINED_FUNCTION_9();
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_9();
    if (!v11)
    {
      sub_26BD04E80(v6, &qword_2804495B8, &qword_26BDA7810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_216();
    sub_26BD65C08();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t TriageRequest.HMTContext.SettingsGroup.post.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_22();
  type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v7);
  OUTLINED_FUNCTION_152();
  sub_26BD31AF8();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_23(v1);
  if (v8)
  {
    *a1 = MEMORY[0x277D84F90];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v8)
    {
      return sub_26BD04E80(v1, &qword_2804495B8, &qword_26BDA7810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    return sub_26BD65C08();
  }

  return result;
}

uint64_t sub_26BD5DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = OUTLINED_FUNCTION_246_0();
  v11 = v10(v9);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_173();
  sub_26BD65C5C();
  return a7(v7);
}

uint64_t TriageRequest.HMTContext.SettingsGroup.post.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v1);
  sub_26BD04E80(v0 + *(v2 + 28), &qword_2804495B8, &qword_26BDA7810);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_143();
  sub_26BD65C08();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void TriageRequest.HMTContext.SettingsGroup.post.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_59(v1);
  v2 = OUTLINED_FUNCTION_117_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  v0[2] = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v0[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[4] = v9;
  v10 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
  OUTLINED_FUNCTION_279_0(*(v10 + 28));
  OUTLINED_FUNCTION_9();
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA07E0();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_9();
    if (!v11)
    {
      sub_26BD04E80(v6, &qword_2804495B8, &qword_26BDA7810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_216();
    sub_26BD65C08();
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BD5DED8()
{
  OUTLINED_FUNCTION_284();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    sub_26BD65C5C();
    sub_26BD04E80(v6 + v1, &qword_2804495B8, &qword_26BDA7810);
    sub_26BD65C08();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    sub_26BD65CB0();
  }

  else
  {
    sub_26BD04E80(v6 + v1, &qword_2804495B8, &qword_26BDA7810);
    OUTLINED_FUNCTION_6_2();
    sub_26BD65C08();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t TriageRequest.HMTContext.SettingsGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.HMTContext.SettingsGroup.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v1 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

uint64_t TriageRequest.HMTContext.SettingsEvent.capturedTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v5);
  OUTLINED_FUNCTION_141();
  sub_26BD31AF8();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    sub_26BDA07D0();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v7();
  }

  return result;
}

uint64_t TriageRequest.HMTContext.SettingsEvent.capturedTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280449520, &unk_26BDA44F0);
  sub_26BDA07E0();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_152();
  v3();
  v4 = OUTLINED_FUNCTION_120_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void TriageRequest.HMTContext.SettingsEvent.capturedTimestamp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 24));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

void sub_26BD5E420()
{
  OUTLINED_FUNCTION_189();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_100_1();
    v10(v9);
    OUTLINED_FUNCTION_293_0();
    sub_26BD04E80(v11, v12, v13);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
    v17 = OUTLINED_FUNCTION_122();
    v18(v17);
  }

  else
  {
    OUTLINED_FUNCTION_293_0();
    sub_26BD04E80(v19, v20, v21);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_188();

  free(v25);
}

uint64_t sub_26BD5E57C()
{
  OUTLINED_FUNCTION_177();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_85_1();
  v1(v6);
  OUTLINED_FUNCTION_236_0();
  sub_26BD31AF8();
  v0(0);
  v7 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v12, v13, v14);
  return v11;
}

uint64_t sub_26BD5E664()
{
  OUTLINED_FUNCTION_177();
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t TriageRequest.HMTContext.SettingsEvent.settings.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_26BD5E744()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD5E7CC()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t TriageRequest.HMTContext.SettingsEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD5E8CC()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD5E954()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t TriageRequest.HMTContext.Setting.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.Setting(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.HMTContext.Setting.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  type metadata accessor for TriageRequest.HMTContext.Setting(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t TriageRequest.HMTContext.UserAction.capturedTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for TriageRequest.HMTContext.UserAction(v5);
  OUTLINED_FUNCTION_141();
  sub_26BD31AF8();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    sub_26BDA07D0();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v7();
  }

  return result;
}

uint64_t TriageRequest.HMTContext.UserAction.capturedTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for TriageRequest.HMTContext.UserAction(v1);
  sub_26BD04E80(v0 + *(v2 + 28), &qword_280449520, &unk_26BDA44F0);
  sub_26BDA07E0();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_152();
  v3();
  v4 = OUTLINED_FUNCTION_120_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void TriageRequest.HMTContext.UserAction.capturedTimestamp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.HMTContext.UserAction(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 28));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD5ED38()
{
  OUTLINED_FUNCTION_177();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_85_1();
  v1(v6);
  OUTLINED_FUNCTION_236_0();
  sub_26BD31AF8();
  v0(0);
  v7 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v12, v13, v14);
  return v11;
}

uint64_t sub_26BD5EE20()
{
  OUTLINED_FUNCTION_177();
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t TriageRequest.HMTContext.UserAction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.UserAction(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t TriageRequest.HMTContext.UserAction.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  type metadata accessor for TriageRequest.HMTContext.UserAction(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void TriageRequest.HMTContext.Article.capturedTimestamp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.HMTContext.Article(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 32));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD5F1A0()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD5F228()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t TriageRequest.HMTContext.Article.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.Article(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD5F308(void (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_256();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  a1(v7);
  OUTLINED_FUNCTION_261();
  sub_26BD31AF8();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_14();
  if (v8)
  {
    sub_26BDA07D0();
    result = OUTLINED_FUNCTION_14();
    if (!v8)
    {
      return sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v9();
  }

  return result;
}

uint64_t sub_26BD5F420()
{
  v1 = OUTLINED_FUNCTION_134();
  v3 = v2(v1);
  sub_26BD04E80(v0 + *(v3 + 32), &qword_280449520, &unk_26BDA44F0);
  sub_26BDA07E0();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_152();
  v4();
  v5 = OUTLINED_FUNCTION_120_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void TriageRequest.HMTContext.BCSArticle.capturedTimestamp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.HMTContext.BCSArticle(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 32));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD5F61C(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_150();
  a1(0);
  sub_26BD31AF8();
  v5 = sub_26BDA07E0();
  OUTLINED_FUNCTION_112(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_216();
  sub_26BD04E80(v8, v9, &unk_26BDA44F0);
  return v7;
}

uint64_t sub_26BD5F6FC()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v3 = v2(v1);
  sub_26BD04E80(v0 + *(v3 + 32), &qword_280449520, &unk_26BDA44F0);
  sub_26BDA07E0();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t TriageRequest.HMTContext.BCSArticle.id.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TriageRequest.HMTContext.BCSArticle.title.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TriageRequest.HMTContext.BCSArticle.url.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TriageRequest.HMTContext.BCSArticle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.BCSArticle(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD5F95C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26BD5F9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = OUTLINED_FUNCTION_130();
  v11(v10);
  return a6(v9);
}

void TriageRequest.HMTContext.UserSelection.capturedTimestamp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_117_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_117_1(v8);
  *(v1 + 16) = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_257(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_180(v13);
  v15 = type metadata accessor for TriageRequest.HMTContext.UserSelection(v14);
  OUTLINED_FUNCTION_78_0(*(v15 + 32));
  OUTLINED_FUNCTION_43();
  if (v16)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_43();
    if (!v16)
    {
      sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_100();
    v18(v17);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t TriageRequest.HMTContext.UserSelection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for TriageRequest.HMTContext.UserSelection(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD5FD20()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A678);
  __swift_project_value_buffer(v0, qword_28044A678);
  return sub_26BDA0B00();
}

uint64_t TriageRequest.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_126();
    result = sub_26BDA0900();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static TriageRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_142_0();
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v0, v1, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_242();
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD5FEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AF08, type metadata accessor for TriageRequest, &protocol conformance descriptor for TriageRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD5FF74(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044ABC0, type metadata accessor for TriageRequest, &protocol conformance descriptor for TriageRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD5FFE4(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044ABC0, type metadata accessor for TriageRequest, &protocol conformance descriptor for TriageRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BD6007C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A690);
  __swift_project_value_buffer(v0, qword_28044A690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26BDA77A0;
  v4 = v65 + v3;
  v5 = v65 + v3 + v1[14];
  *(v65 + v3) = 1;
  *v5 = "product";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "symptom_information";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  *(v9 + 24) = "topic";
  *(v9 + 32) = 5;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "trigger_details";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "diagnostics";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v1[14];
  v15 = (v4 + 4 * v2);
  *v15 = 5;
  v16 = v15 + v14;
  *v16 = "support_option";
  *(v16 + 1) = 14;
  v16[16] = 2;
  *(v16 + 3) = "solution";
  *(v16 + 4) = 8;
  v16[40] = 2;
  v8();
  v17 = v1[14];
  v18 = (v4 + 5 * v2);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "internal_case_action_type_string";
  *(v19 + 1) = 32;
  v19[16] = 2;
  *(v19 + 3) = "caseAction";
  *(v19 + 4) = 10;
  v19[40] = 2;
  v8();
  v20 = (v4 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "case_id";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = (v4 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "article_id";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "comptia_code";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = v1[14];
  v27 = (v4 + 9 * v2);
  *v27 = 10;
  v28 = v27 + v26;
  *v28 = "diagnostics_capture_id";
  *(v28 + 1) = 22;
  v28[16] = 2;
  *(v28 + 3) = "diagnosticCaptureId";
  *(v28 + 4) = 19;
  v28[40] = 2;
  v8();
  v29 = v1[14];
  v30 = (v4 + 10 * v2);
  *v30 = 11;
  v31 = v30 + v29;
  *v31 = "is_diagnostics_completed_successfully";
  *(v31 + 1) = 37;
  v31[16] = 2;
  *(v31 + 3) = "isDiagnosticRun";
  *(v31 + 4) = 15;
  v31[40] = 2;
  v8();
  v32 = v1[14];
  v33 = (v4 + 11 * v2);
  *v33 = 12;
  v34 = v33 + v32;
  *v34 = "deep_dive_caller";
  *(v34 + 1) = 16;
  v34[16] = 2;
  *(v34 + 3) = "caller";
  *(v34 + 4) = 6;
  v34[40] = 2;
  v8();
  v35 = v1[14];
  v36 = (v4 + 12 * v2);
  *v36 = 13;
  v37 = v36 + v35;
  *v37 = "override_language";
  *(v37 + 1) = 17;
  v37[16] = 2;
  *(v37 + 3) = "overrideLocale";
  *(v37 + 4) = 14;
  v37[40] = 2;
  v8();
  v38 = v1[14];
  v39 = (v4 + 13 * v2);
  *v39 = 14;
  v40 = v39 + v38;
  *v40 = "recommended_solution_search_intent_id";
  *(v40 + 1) = 37;
  v40[16] = 2;
  *(v40 + 3) = "solutionIntent";
  *(v40 + 4) = 14;
  v40[40] = 2;
  v8();
  v41 = (v4 + 14 * v2);
  v42 = v41 + v1[14];
  *v41 = 15;
  *v42 = "kb_mini_id";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v8();
  v43 = v1[14];
  v44 = (v4 + 15 * v2);
  *v44 = 16;
  v45 = v44 + v43;
  *v45 = "call_to_action_url";
  *(v45 + 1) = 18;
  v45[16] = 2;
  *(v45 + 3) = "url";
  *(v45 + 4) = 3;
  v45[40] = 2;
  v8();
  v46 = v1[14];
  v47 = (v4 + 16 * v2);
  *v47 = 17;
  v48 = v47 + v46;
  *v48 = "deep_dive_action";
  *(v48 + 1) = 16;
  v48[16] = 2;
  *(v48 + 3) = "action";
  *(v48 + 4) = 6;
  v48[40] = 2;
  v8();
  v49 = (v4 + 17 * v2);
  v50 = v49 + v1[14];
  *v49 = 18;
  *v50 = "solution_intent_has_aml_articles";
  *(v50 + 1) = 32;
  v50[16] = 2;
  v8();
  v51 = (v4 + 18 * v2);
  v52 = v51 + v1[14];
  *v51 = 19;
  *v52 = "solution_intent_has_configured_solution";
  *(v52 + 1) = 39;
  v52[16] = 2;
  v8();
  v53 = (v4 + 19 * v2);
  v54 = v53 + v1[14];
  *v53 = 20;
  *v54 = "excluded_article_ids";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v8();
  v55 = v1[14];
  v56 = (v4 + 20 * v2);
  *v56 = 21;
  v57 = v56 + v55;
  *v57 = "recommended_solution_search_intent_solutions";
  *(v57 + 1) = 44;
  v57[16] = 2;
  *(v57 + 3) = "intentSolutions";
  *(v57 + 4) = 15;
  v57[40] = 2;
  v8();
  v58 = (v4 + 21 * v2);
  v59 = v58 + v1[14];
  *v58 = 22;
  *v59 = "original_selected_support_option";
  *(v59 + 1) = 32;
  v59[16] = 2;
  v8();
  v60 = (v4 + 22 * v2);
  v61 = v60 + v1[14];
  *v60 = 23;
  *v61 = "triage_configuration_id";
  *(v61 + 1) = 23;
  v61[16] = 2;
  v8();
  v62 = (v4 + 23 * v2);
  v63 = v62 + v1[14];
  *v62 = 24;
  *v63 = "original_selected_product";
  *(v63 + 1) = 25;
  v63[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD608EC()
{
  v1 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product;
  v2 = type metadata accessor for TriageRequest.Product(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation;
  v4 = type metadata accessor for TriageRequest.SymptomInformation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics;
  v7 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption;
  v9 = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully) = 0;
  v15 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveCaller);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__overrideLanguage);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__kbMiniID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__callToActionURL);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles) = 0;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution) = 0;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds) = v5;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions) = v5;
  v20 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption;
  v21 = type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
  __swift_storeEnumTagSinglePayload(v0 + v20, 1, 1, v21);
  v22 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triageConfigurationID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct, 1, 1, v2);
  return v0;
}

void sub_26BD60B14()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A968, &unk_26BDA7800);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_280();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_280();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8B8, &qword_26BDA77F8);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_280();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8A8, &qword_26BDA77F0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_280();
  v13 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product;
  v93 = type metadata accessor for TriageRequest.Product(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v94 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation;
  type metadata accessor for TriageRequest.SymptomInformation(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails;
  v23 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails) = MEMORY[0x277D84F90];
  v96 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics;
  v24 = sub_26BDA0810();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v97 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption;
  type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID);
  v95 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode);
  v98 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID);
  v99 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v100 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully) = 0;
  v37 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveCaller);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__overrideLanguage);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentID);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__kbMiniID);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v41 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__callToActionURL);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v101 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction;
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v24);
  v102 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles) = 0;
  v103 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution) = 0;
  v104 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds) = v23;
  v105 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions) = v23;
  v106 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption;
  type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triageConfigurationID);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  v107 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct;
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v93);
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product, &v149);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v13, v148);
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation, v148);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v94, v147);
  sub_26BD2E160();
  swift_endAccess();
  v53 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails, v147);
  v54 = *(v2 + v53);
  OUTLINED_FUNCTION_235(v0 + v22, &v146);
  *(v0 + v22) = v54;

  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics, &v145);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v96, v144);
  OUTLINED_FUNCTION_298_0();
  swift_endAccess();
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption, v144);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v97, v143);
  OUTLINED_FUNCTION_298_0();
  swift_endAccess();
  v55 = (v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString);
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString, v143);
  v56 = *v55;
  v57 = v55[1];
  OUTLINED_FUNCTION_235(v32, &v142);
  *v32 = v56;
  v32[1] = v57;

  v58 = (v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID);
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID, &v141);
  v59 = *v58;
  v60 = v58[1];
  OUTLINED_FUNCTION_235(v33, &v140);
  *v33 = v59;
  v33[1] = v60;

  v62 = (v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID);
  OUTLINED_FUNCTION_107_0(v61, &v139);
  v64 = *v62;
  v63 = v62[1];
  OUTLINED_FUNCTION_235(v95, &v138);
  *v95 = v64;
  v95[1] = v63;

  v66 = (v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode);
  OUTLINED_FUNCTION_107_0(v65, &v137);
  v68 = *v66;
  v67 = v66[1];
  OUTLINED_FUNCTION_235(v98, &v136);
  *v98 = v68;
  v98[1] = v67;

  v70 = (v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID);
  v71 = OUTLINED_FUNCTION_107_0(v69, &v135);
  v73 = *v70;
  v72 = v70[1];
  OUTLINED_FUNCTION_125_0(v71, &v134);
  *v99 = v73;
  v99[1] = v72;

  v74 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully, &v133);
  LOBYTE(v74) = *(v2 + v74);
  v75 = OUTLINED_FUNCTION_235(v0 + v100, &v132);
  *(v0 + v100) = v74;
  v76 = OUTLINED_FUNCTION_107_0(v75, &v131);
  OUTLINED_FUNCTION_125_0(v76, &v130);
  OUTLINED_FUNCTION_156_1();

  v78 = OUTLINED_FUNCTION_107_0(v77, &v129);
  OUTLINED_FUNCTION_125_0(v78, &v128);
  OUTLINED_FUNCTION_156_1();

  v80 = OUTLINED_FUNCTION_107_0(v79, &v127);
  OUTLINED_FUNCTION_125_0(v80, &v126);
  OUTLINED_FUNCTION_156_1();

  v82 = OUTLINED_FUNCTION_107_0(v81, &v125);
  OUTLINED_FUNCTION_125_0(v82, &v124);
  OUTLINED_FUNCTION_156_1();

  v84 = OUTLINED_FUNCTION_107_0(v83, &v123);
  OUTLINED_FUNCTION_125_0(v84, &v122);
  OUTLINED_FUNCTION_156_1();

  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction, &v121);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v101, v120);
  sub_26BD2E160();
  swift_endAccess();
  v85 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles, v120);
  LOBYTE(v85) = *(v2 + v85);
  OUTLINED_FUNCTION_235(v0 + v102, &v119);
  *(v0 + v102) = v85;
  v86 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution, &v118);
  LOBYTE(v86) = *(v2 + v86);
  OUTLINED_FUNCTION_235(v0 + v103, &v117);
  *(v0 + v103) = v86;
  v87 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds, &v116);
  v88 = *(v2 + v87);
  OUTLINED_FUNCTION_235(v0 + v104, &v115);
  *(v0 + v104) = v88;

  v89 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions, &v114);
  v90 = *(v2 + v89);
  OUTLINED_FUNCTION_235(v0 + v105, &v113);
  *(v0 + v105) = v90;

  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption, &v112);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v0 + v106, v111);
  OUTLINED_FUNCTION_214_0();
  sub_26BD2E160();
  v91 = swift_endAccess();
  v92 = OUTLINED_FUNCTION_107_0(v91, v111);
  OUTLINED_FUNCTION_125_0(v92, &v110);
  OUTLINED_FUNCTION_156_1();

  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct, &v109);
  sub_26BD31AF8();

  OUTLINED_FUNCTION_236(v0 + v107, &v108);
  OUTLINED_FUNCTION_214_0();
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD61524()
{
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product, &qword_28044A8A8, &qword_26BDA77F0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation, &qword_28044A8B8, &qword_26BDA77F8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption, &qword_28044A8D8, &unk_26BDA9DC0);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption, &qword_28044A968, &unk_26BDA7800);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct, &qword_28044A8A8, &qword_26BDA77F0);
  return v0;
}

uint64_t sub_26BD617B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        type metadata accessor for TriageRequest.Product(0);
        v8 = type metadata accessor for TriageRequest.Product;
        v9 = &protocol conformance descriptor for TriageRequest.Product;
        v10 = &qword_28044AC48;
        goto LABEL_11;
      case 2:
        swift_beginAccess();
        type metadata accessor for TriageRequest.SymptomInformation(0);
        v8 = type metadata accessor for TriageRequest.SymptomInformation;
        v9 = &protocol conformance descriptor for TriageRequest.SymptomInformation;
        v10 = &qword_28044AC60;
        goto LABEL_11;
      case 3:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09A0();
        goto LABEL_12;
      case 4:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = MEMORY[0x277D215C8];
        v9 = MEMORY[0x277D215C0];
        v10 = &qword_280449130;
        goto LABEL_11;
      case 5:
        swift_beginAccess();
        type metadata accessor for TriageRequest.ExecuteSupportOption(0);
        v8 = type metadata accessor for TriageRequest.ExecuteSupportOption;
        v9 = &protocol conformance descriptor for TriageRequest.ExecuteSupportOption;
        v10 = &qword_28044AC30;
LABEL_11:
        sub_26BD6C1DC(v10, v8, v9);
        sub_26BDA09B0();
        goto LABEL_12;
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 23:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_12;
      case 11:
      case 18:
      case 19:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_12;
      case 17:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        goto LABEL_14;
      case 20:
      case 21:
        swift_beginAccess();
        sub_26BDA0970();
        goto LABEL_12;
      case 22:
        swift_beginAccess();
        type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
        sub_26BD6C1DC(&qword_28044ABE8, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, &protocol conformance descriptor for TriageRequest.CaseMetaData.SupportOptionReference);
LABEL_14:
        sub_26BDA09B0();
LABEL_12:
        v5 = 0;
        swift_endAccess();
        break;
      case 24:
        swift_beginAccess();
        type metadata accessor for TriageRequest.Product(0);
        sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD61E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = a3;
  v113 = a4;
  v114 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A968, &unk_26BDA7800);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = v95 - v6;
  v98 = type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
  MEMORY[0x28223BE20](v98);
  v95[2] = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = v95 - v9;
  v104 = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  MEMORY[0x28223BE20](v104);
  v101 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v100 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v105 = v95 - v14;
  v108 = sub_26BDA0810();
  v102 = *(v108 - 8);
  v15 = MEMORY[0x28223BE20](v108);
  v99 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v107 = v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8B8, &qword_26BDA77F8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v95 - v19;
  v109 = type metadata accessor for TriageRequest.SymptomInformation(0);
  MEMORY[0x28223BE20](v109);
  v106 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8A8, &qword_26BDA77F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v96 = v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v95 - v25;
  v27 = type metadata accessor for TriageRequest.Product(0);
  v28 = MEMORY[0x28223BE20](v27);
  v95[1] = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  swift_beginAccess();
  v110 = a1;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    v95[0] = v27;
    sub_26BD04E80(v26, &qword_28044A8A8, &qword_26BDA77F0);
    v30 = v111;
  }

  else
  {
    sub_26BD65C08();
    sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);
    v31 = v111;
    sub_26BDA0AD0();
    v30 = v31;
    if (v31)
    {
      return sub_26BD65CB0();
    }

    v95[0] = v27;
    sub_26BD65CB0();
  }

  v32 = v110;
  swift_beginAccess();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v109) == 1)
  {
    sub_26BD04E80(v20, &qword_28044A8B8, &qword_26BDA77F8);
  }

  else
  {
    sub_26BD65C08();
    sub_26BD6C1DC(&qword_28044AC60, type metadata accessor for TriageRequest.SymptomInformation, &protocol conformance descriptor for TriageRequest.SymptomInformation);
    sub_26BDA0AD0();
    if (v30)
    {
      return sub_26BD65CB0();
    }

    sub_26BD65CB0();
  }

  v33 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails;
  swift_beginAccess();
  v35 = v107;
  v34 = v108;
  if (*(*(v32 + v33) + 16))
  {
    sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

    sub_26BDA0AC0();
    if (v30)
    {
    }
  }

  swift_beginAccess();
  v36 = v105;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
  {
    sub_26BD04E80(v36, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v37 = v36;
    v38 = v102;
    (*(v102 + 32))(v35, v37, v34);
    sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    sub_26BDA0AD0();
    if (v30)
    {
      return (*(v38 + 8))(v35, v34);
    }

    (*(v38 + 8))(v35, v34);
  }

  swift_beginAccess();
  v40 = v103;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v40, 1, v104) == 1)
  {
    sub_26BD04E80(v40, &qword_28044A8D8, &unk_26BDA9DC0);
    goto LABEL_22;
  }

  sub_26BD65C08();
  sub_26BD6C1DC(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption, &protocol conformance descriptor for TriageRequest.ExecuteSupportOption);
  sub_26BDA0AD0();
  if (v30)
  {
    return sub_26BD65CB0();
  }

  sub_26BD65CB0();
  v34 = v108;
LABEL_22:
  v41 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v45 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v49 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v53 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v57 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v61 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully;
  swift_beginAccess();
  if (*(v32 + v61) == 1)
  {
    result = sub_26BDA0A40();
    if (v30)
    {
      return result;
    }
  }

  v62 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveCaller);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v66 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__overrideLanguage);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v70 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentID);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  v73 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v73 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (v73)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  v74 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__kbMiniID);
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {

    sub_26BDA0AB0();
    if (!v30)
    {

      goto LABEL_69;
    }
  }

LABEL_69:
  v78 = (v32 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__callToActionURL);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (v81)
  {

    sub_26BDA0AB0();
    if (v30)
    {
    }
  }

  swift_beginAccess();
  v82 = v100;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v82, 1, v34) == 1)
  {
    sub_26BD04E80(v82, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v83 = v82;
    v84 = v102;
    (*(v102 + 32))(v99, v83, v34);
    sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    sub_26BDA0AD0();
    if (v30)
    {
      return (*(v84 + 8))(v99, v34);
    }

    (*(v84 + 8))(v99, v34);
  }

  v85 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles;
  swift_beginAccess();
  if (*(v32 + v85) != 1 || (result = sub_26BDA0A40(), !v30))
  {
    v86 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution;
    swift_beginAccess();
    if (*(v32 + v86) != 1 || (result = sub_26BDA0A40(), !v30))
    {
      v87 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds;
      swift_beginAccess();
      if (!*(*(v32 + v87) + 16) || (, sub_26BDA0A90(), result = , !v30))
      {
        v88 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions;
        swift_beginAccess();
        if (!*(*(v32 + v88) + 16) || (, sub_26BDA0A90(), result = , !v30))
        {
          swift_beginAccess();
          v89 = v97;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v89, 1, v98) == 1)
          {
            sub_26BD04E80(v89, &qword_28044A968, &unk_26BDA7800);
          }

          else
          {
            sub_26BD65C08();
            sub_26BD6C1DC(&qword_28044ABE8, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, &protocol conformance descriptor for TriageRequest.CaseMetaData.SupportOptionReference);
            sub_26BDA0AD0();
            result = sub_26BD65CB0();
            if (v30)
            {
              return result;
            }
          }

          v90 = (v110 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triageConfigurationID);
          swift_beginAccess();
          v91 = *v90;
          v92 = v90[1];
          v93 = HIBYTE(v92) & 0xF;
          if ((v92 & 0x2000000000000000) == 0)
          {
            v93 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (!v93 || (, sub_26BDA0AB0(), result = , !v30))
          {
            swift_beginAccess();
            v94 = v96;
            sub_26BD31AF8();
            if (__swift_getEnumTagSinglePayload(v94, 1, v95[0]) == 1)
            {
              return sub_26BD04E80(v96, &qword_28044A8A8, &qword_26BDA77F0);
            }

            else
            {
              sub_26BD65C08();
              sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);
              sub_26BDA0AD0();
              return sub_26BD65CB0();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26BD631C8()
{
  OUTLINED_FUNCTION_189();
  v1 = v0;
  v3 = v2;
  v259 = type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v251[0] = v6 - v5;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF10, &qword_26BDA9370);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_280();
  v257 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A968, &unk_26BDA7800);
  v10 = OUTLINED_FUNCTION_110(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38();
  v256 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_252();
  v258 = v13;
  v14 = OUTLINED_FUNCTION_176();
  v267 = type metadata accessor for TriageRequest.ExecuteSupportOption(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_44();
  v263 = v17 - v16;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF18, &qword_26BDA9378);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_280();
  v269 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  v21 = OUTLINED_FUNCTION_110(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  v265 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_252();
  v268 = v24;
  OUTLINED_FUNCTION_176();
  v276 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v271 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_44();
  v264 = v28 - v27;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38();
  v261 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_252();
  v272 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v34 = OUTLINED_FUNCTION_110(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_38();
  v260 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_193();
  v262 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_193();
  v270 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_252();
  v275 = v41;
  v42 = OUTLINED_FUNCTION_176();
  v281 = type metadata accessor for TriageRequest.SymptomInformation(v42);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_44();
  v274 = v45 - v44;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF20, &qword_26BDA9380);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_280();
  v282 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8B8, &qword_26BDA77F8);
  v49 = OUTLINED_FUNCTION_110(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_38();
  v277 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_252();
  v280 = v52;
  v53 = OUTLINED_FUNCTION_176();
  v284 = type metadata accessor for TriageRequest.Product(v53);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_44();
  v278 = v56 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF28, &qword_26BDA9388);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_38();
  v254 = v59;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v60);
  v62 = v251 - v61;
  v63 = OUTLINED_FUNCTION_154_0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
  v66 = OUTLINED_FUNCTION_110(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_38();
  v251[1] = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_193();
  v253 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_193();
  v283 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  v74 = v251 - v73;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product, &v332);
  OUTLINED_FUNCTION_235_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__product, &v331);
  v252 = v57;
  v75 = *(v57 + 48);
  OUTLINED_FUNCTION_235_0();
  sub_26BD31AF8();
  v76 = v1;
  OUTLINED_FUNCTION_235_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v62);
  if (v77)
  {

    sub_26BD04E80(v74, &qword_28044A8A8, &qword_26BDA77F0);
    OUTLINED_FUNCTION_28(&v62[v75]);
    if (v77)
    {
      sub_26BD04E80(v62, &qword_28044A8A8, &qword_26BDA77F0);
      goto LABEL_12;
    }

LABEL_9:
    v78 = &qword_28044AF28;
    v79 = &qword_26BDA9388;
LABEL_10:
    v80 = v62;
LABEL_22:
    sub_26BD04E80(v80, v78, v79);
    goto LABEL_23;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(&v62[v75]);
  if (v77)
  {

    sub_26BD04E80(v74, &qword_28044A8A8, &qword_26BDA77F0);
    OUTLINED_FUNCTION_183_0();
    sub_26BD65CB0();
    goto LABEL_9;
  }

  sub_26BD65C08();

  OUTLINED_FUNCTION_290_0();
  static TriageRequest.Product.== infix(_:_:)();
  v82 = v81;
  OUTLINED_FUNCTION_173();
  sub_26BD65CB0();
  sub_26BD04E80(v74, &qword_28044A8A8, &qword_26BDA77F0);
  sub_26BD65CB0();
  sub_26BD04E80(v62, &qword_28044A8A8, &qword_26BDA77F0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation, &v330);
  v83 = v280;
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__symptomInformation, &v329);
  v84 = *(v279 + 48);
  v85 = v282;
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v85, 1, v281);
  if (v77)
  {
    sub_26BD04E80(v83, &qword_28044A8B8, &qword_26BDA77F8);
    OUTLINED_FUNCTION_23(v85 + v84);
    if (v77)
    {
      sub_26BD04E80(v85, &qword_28044A8B8, &qword_26BDA77F8);
      goto LABEL_26;
    }

LABEL_20:
    v78 = &qword_28044AF20;
    v79 = &qword_26BDA9380;
LABEL_21:
    v80 = v85;
    goto LABEL_22;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_23(v85 + v84);
  if (v86)
  {
    sub_26BD04E80(v83, &qword_28044A8B8, &qword_26BDA77F8);
    sub_26BD65CB0();
    goto LABEL_20;
  }

  sub_26BD65C08();
  v87 = OUTLINED_FUNCTION_216();
  v88 = static TriageRequest.SymptomInformation.== infix(_:_:)(v87);
  sub_26BD65CB0();
  sub_26BD04E80(v83, &qword_28044A8B8, &qword_26BDA77F8);
  OUTLINED_FUNCTION_167();
  sub_26BD65CB0();
  v89 = OUTLINED_FUNCTION_100_1();
  sub_26BD04E80(v89, v90, &qword_26BDA77F8);
  if ((v88 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails, &v328);
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triggerDetails, &v327);

  v91 = OUTLINED_FUNCTION_100_1();
  sub_26BD01478(v91, v92);
  v94 = v93;

  if ((v94 & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics, &v326);
  v95 = v275;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnostics, &v325);
  v96 = v272;
  v97 = *(v273 + 48);
  OUTLINED_FUNCTION_286_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_232_0();
  v98 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v98, v99, v276);
  if (v77)
  {
    sub_26BD04E80(v95, &qword_280448F88, &qword_26BDA5440);
    OUTLINED_FUNCTION_112(v96 + v97, 1, v276);
    if (v77)
    {
      sub_26BD04E80(v96, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_37;
    }

LABEL_35:
    v78 = &qword_2804490C8;
    v79 = &qword_26BDA7780;
    v80 = v96;
    goto LABEL_22;
  }

  v100 = v270;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v96 + v97, 1, v276);
  if (v101)
  {
    sub_26BD04E80(v275, &qword_280448F88, &qword_26BDA5440);
    (*(v271 + 8))(v100, v276);
    goto LABEL_35;
  }

  v102 = v271;
  v103 = OUTLINED_FUNCTION_287();
  v104(v103);
  OUTLINED_FUNCTION_5_2();
  sub_26BD6C1DC(v105, v106, MEMORY[0x277D215D8]);
  OUTLINED_FUNCTION_100_1();
  v107 = sub_26BDA0BB0();
  v108 = *(v102 + 8);
  v108(&qword_26BDA5440, v95);
  sub_26BD04E80(v275, &qword_280448F88, &qword_26BDA5440);
  v108(v100, v95);
  v109 = OUTLINED_FUNCTION_100_1();
  sub_26BD04E80(v109, v110, &qword_26BDA5440);
  if ((v107 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption, &v324);
  v111 = v268;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption, &v323);
  v112 = *(v266 + 48);
  v62 = v269;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_232_0();
  v113 = v267;
  OUTLINED_FUNCTION_112(v62, 1, v267);
  if (v77)
  {
    sub_26BD04E80(v111, &qword_28044A8D8, &unk_26BDA9DC0);
    OUTLINED_FUNCTION_112(&v62[v112], 1, v113);
    if (v77)
    {
      v114 = sub_26BD04E80(v62, &qword_28044A8D8, &unk_26BDA9DC0);
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v115 = v265;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(&v62[v112], 1, v113);
  if (v116)
  {
    sub_26BD04E80(v111, &qword_28044A8D8, &unk_26BDA9DC0);
    sub_26BD65CB0();
LABEL_45:
    v78 = &qword_28044AF18;
    v79 = &qword_26BDA9378;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_35_3();
  v117 = v263;
  sub_26BD65C08();
  if (*(v115 + *(v113 + 20)) != *(v117 + *(v113 + 20)))
  {

    v118 = OUTLINED_FUNCTION_100_1();
    v120 = sub_26BD6E6BC(v118, v119);

    if (!v120)
    {
      sub_26BD65CB0();
      OUTLINED_FUNCTION_263_0();
      sub_26BD04E80(v196, v197, v198);
      sub_26BD65CB0();
      OUTLINED_FUNCTION_263_0();
      goto LABEL_22;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v121, v122, MEMORY[0x277D216D0]);
  v123 = sub_26BDA0BB0();
  sub_26BD65CB0();
  OUTLINED_FUNCTION_261();
  sub_26BD04E80(v124, v125, v126);
  sub_26BD65CB0();
  OUTLINED_FUNCTION_261();
  v114 = sub_26BD04E80(v127, v128, v129);
  if ((v123 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_49:
  v130 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__internalCaseActionTypeString;
  v131 = OUTLINED_FUNCTION_138_1(v114, &v322);
  v132 = *(v130 + 8);
  OUTLINED_FUNCTION_107_0(v131, &v321);
  OUTLINED_FUNCTION_188_0();
  if (v77)
  {
    v135 = v132 == v134;
  }

  else
  {
    v135 = 0;
  }

  if (!v135)
  {
    OUTLINED_FUNCTION_100_1();
    v133 = sub_26BDA0FB0();
    if ((v133 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v136 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__caseID;
  v137 = OUTLINED_FUNCTION_138_1(v133, &v320);
  v138 = *(v136 + 8);
  OUTLINED_FUNCTION_107_0(v137, &v319);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v138 != v140)
  {
    OUTLINED_FUNCTION_100_1();
    v139 = sub_26BDA0FB0();
    if ((v139 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v142 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__articleID;
  v143 = OUTLINED_FUNCTION_138_1(v139, &v318);
  v144 = *(v142 + 8);
  OUTLINED_FUNCTION_107_0(v143, &v317);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v144 != v146)
  {
    OUTLINED_FUNCTION_100_1();
    v145 = sub_26BDA0FB0();
    if ((v145 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v148 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__comptiaCode;
  v149 = OUTLINED_FUNCTION_138_1(v145, &v316);
  v150 = *(v148 + 8);
  OUTLINED_FUNCTION_107_0(v149, &v315);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v150 != v152)
  {
    OUTLINED_FUNCTION_100_1();
    v151 = sub_26BDA0FB0();
    if ((v151 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v154 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsCaptureID;
  v155 = OUTLINED_FUNCTION_138_1(v151, &v314);
  v156 = *(v154 + 8);
  OUTLINED_FUNCTION_107_0(v155, &v313);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v156 != v157)
  {
    OUTLINED_FUNCTION_100_1();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v159 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully, &v312);
  LODWORD(v159) = *(v3 + v159);
  v160 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully;
  v161 = OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isDiagnosticsCompletedSuccessfully, &v311);
  if (v159 != *(v76 + v160))
  {
    goto LABEL_23;
  }

  v162 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveCaller;
  v163 = OUTLINED_FUNCTION_138_1(v161, &v310);
  v164 = *(v162 + 8);
  OUTLINED_FUNCTION_107_0(v163, &v309);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v164 != v166)
  {
    OUTLINED_FUNCTION_100_1();
    v165 = sub_26BDA0FB0();
    if ((v165 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v168 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__overrideLanguage;
  v169 = OUTLINED_FUNCTION_138_1(v165, &v308);
  v170 = *(v168 + 8);
  OUTLINED_FUNCTION_107_0(v169, &v307);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v170 != v172)
  {
    OUTLINED_FUNCTION_100_1();
    v171 = sub_26BDA0FB0();
    if ((v171 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v174 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentID;
  v175 = OUTLINED_FUNCTION_138_1(v171, &v306);
  v176 = *(v174 + 8);
  OUTLINED_FUNCTION_107_0(v175, &v305);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v176 != v178)
  {
    OUTLINED_FUNCTION_100_1();
    v177 = sub_26BDA0FB0();
    if ((v177 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v180 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__kbMiniID;
  v181 = OUTLINED_FUNCTION_138_1(v177, &v304);
  v182 = *(v180 + 8);
  OUTLINED_FUNCTION_107_0(v181, &v303);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v182 != v184)
  {
    OUTLINED_FUNCTION_100_1();
    v183 = sub_26BDA0FB0();
    if ((v183 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v186 = v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__callToActionURL;
  v187 = OUTLINED_FUNCTION_138_1(v183, &v302);
  v188 = *(v186 + 8);
  OUTLINED_FUNCTION_107_0(v187, &v301);
  OUTLINED_FUNCTION_188_0();
  if (!v77 || v188 != v189)
  {
    OUTLINED_FUNCTION_100_1();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction, &v300);
  v191 = v262;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__deepDiveAction, &v299);
  v192 = *(v273 + 48);
  v193 = v261;
  OUTLINED_FUNCTION_232_0();
  v85 = v193;
  sub_26BD31AF8();
  v194 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v194, v195, v276);
  if (v77)
  {
    sub_26BD04E80(v191, &qword_280448F88, &qword_26BDA5440);
    OUTLINED_FUNCTION_112(v193 + v192, 1, v276);
    if (v77)
    {
      sub_26BD04E80(v193, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v199 = v260;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v193 + v192, 1, v276);
  if (v200)
  {
    sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
    (*(v271 + 8))(v199, v276);
LABEL_109:
    v78 = &qword_2804490C8;
    v79 = &qword_26BDA7780;
    goto LABEL_21;
  }

  v201 = v271;
  v202 = OUTLINED_FUNCTION_287();
  v203(v202);
  OUTLINED_FUNCTION_5_2();
  sub_26BD6C1DC(v204, v205, MEMORY[0x277D215D8]);
  v206 = sub_26BDA0BB0();
  v207 = *(v201 + 8);
  v207(&qword_26BDA5440, v111);
  OUTLINED_FUNCTION_263_0();
  sub_26BD04E80(v208, v209, v210);
  v207(v199, v111);
  OUTLINED_FUNCTION_263_0();
  sub_26BD04E80(v211, v212, v213);
  if ((v206 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_111:
  v214 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles, &v298);
  LODWORD(v214) = *(v3 + v214);
  v215 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles;
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasAmlArticles, &v297);
  if (v214 != *(v76 + v215))
  {
    goto LABEL_23;
  }

  v216 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution, &v296);
  v217 = v3;
  LODWORD(v216) = *(v3 + v216);
  v218 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution;
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__solutionIntentHasConfiguredSolution, &v295);
  if (v216 != *(v76 + v218))
  {
    goto LABEL_23;
  }

  v219 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds, &v294);
  v220 = *(v3 + v219);
  v221 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds;
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__excludedArticleIds, &v293);
  if ((sub_26BCFF1F4(v220, *(v76 + v221)) & 1) == 0)
  {
    goto LABEL_23;
  }

  v222 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions;
  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions, &v292);
  v223 = *(v3 + v222);
  v224 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions;
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__recommendedSolutionSearchIntentSolutions, &v291);
  if ((sub_26BCFF1F4(v223, *(v76 + v224)) & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_230(v3 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption, &v290);
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedSupportOption, &v289);
  v225 = *(v255 + 48);
  v226 = v257;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_112(v226, 1, v259);
  if (!v77)
  {
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v226 + v225, 1, v259);
    if (!v228)
    {
      sub_26BD65C08();
      OUTLINED_FUNCTION_290_0();
      v229 = static TriageRequest.CaseMetaData.SupportOptionReference.== infix(_:_:)();
      OUTLINED_FUNCTION_170();
      sub_26BD65CB0();
      OUTLINED_FUNCTION_261();
      sub_26BD04E80(v230, v231, v232);
      sub_26BD65CB0();
      OUTLINED_FUNCTION_261();
      v227 = sub_26BD04E80(v233, v234, v235);
      if (v229)
      {
        goto LABEL_126;
      }

LABEL_23:

      goto LABEL_24;
    }

    sub_26BD04E80(v258, &qword_28044A968, &unk_26BDA7800);
    sub_26BD65CB0();
LABEL_123:
    sub_26BD04E80(v226, &qword_28044AF10, &qword_26BDA9370);
    goto LABEL_23;
  }

  sub_26BD04E80(v258, &qword_28044A968, &unk_26BDA7800);
  OUTLINED_FUNCTION_112(v226 + v225, 1, v259);
  if (!v77)
  {
    goto LABEL_123;
  }

  v227 = sub_26BD04E80(v226, &qword_28044A968, &unk_26BDA7800);
LABEL_126:
  v236 = v217 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__triageConfigurationID;
  v237 = OUTLINED_FUNCTION_138_1(v227, &v288);
  v238 = *(v236 + 8);
  OUTLINED_FUNCTION_107_0(v237, &v287);
  OUTLINED_FUNCTION_188_0();
  if (v77)
  {
    v240 = v238 == v239;
  }

  else
  {
    v240 = 0;
  }

  if (!v240)
  {
    OUTLINED_FUNCTION_100_1();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_230(v217 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct, &v286);
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_230(v76 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__originalSelectedProduct, &v285);
  v241 = *(v252 + 48);
  v242 = v254;
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_112(v242, 1, v284);
  if (!v77)
  {
    v243 = v254;
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v243 + v241, 1, v284);
    if (!v244)
    {
      sub_26BD65C08();
      OUTLINED_FUNCTION_290_0();
      static TriageRequest.Product.== infix(_:_:)();

      OUTLINED_FUNCTION_170();
      sub_26BD65CB0();
      OUTLINED_FUNCTION_261();
      sub_26BD04E80(v245, v246, v247);
      sub_26BD65CB0();
      OUTLINED_FUNCTION_261();
      sub_26BD04E80(v248, v249, v250);
      goto LABEL_24;
    }

    sub_26BD04E80(v253, &qword_28044A8A8, &qword_26BDA77F0);
    OUTLINED_FUNCTION_183_0();
    sub_26BD65CB0();
LABEL_139:
    sub_26BD04E80(v254, &qword_28044AF28, &qword_26BDA9388);
    goto LABEL_24;
  }

  sub_26BD04E80(v253, &qword_28044A8A8, &qword_26BDA77F0);
  OUTLINED_FUNCTION_112(v254 + v241, 1, v284);
  if (!v77)
  {
    goto LABEL_139;
  }

  sub_26BD04E80(v254, &qword_28044A8A8, &qword_26BDA77F0);
LABEL_24:
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD64A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AF00, type metadata accessor for TriageRequest.CaseMetaData, &protocol conformance descriptor for TriageRequest.CaseMetaData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD64AC4(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData, &protocol conformance descriptor for TriageRequest.CaseMetaData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD64B34(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData, &protocol conformance descriptor for TriageRequest.CaseMetaData);

  return sub_26BDA0A00();
}

uint64_t sub_26BD64BB4()
{
  result = MEMORY[0x26D695B80](0xD000000000000017, 0x800000026BDAF7F0);
  qword_28044A6B0 = 0xD00000000000001ALL;
  *algn_28044A6B8 = 0x800000026BDADF90;
  return result;
}

uint64_t sub_26BD64C48()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A6C0);
  __swift_project_value_buffer(v0, qword_28044A6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_type_string";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.CaseMetaData.SupportOptionReference.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_236_0();
      sub_26BDA0990();
LABEL_8:
      v0 = 0;
    }

    else if (result == 1)
    {
      sub_26BD04DD8();
      OUTLINED_FUNCTION_35_0();
      sub_26BDA0930();
      goto LABEL_8;
    }
  }
}

uint64_t TriageRequest.CaseMetaData.SupportOptionReference.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (!*v0 || (sub_26BD04DD8(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0A50(), !v1))
  {
    OUTLINED_FUNCTION_29();
    if (!v5 || (result = OUTLINED_FUNCTION_103(v3, v4, 2), !v1))
    {
      type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t static TriageRequest.CaseMetaData.SupportOptionReference.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v1 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v1 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v1 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v1 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v1 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v1 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v1 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_221();
    v6 = v6 && v4 == v5;
    if (v6 || (sub_26BDA0FB0() & 1) != 0)
    {
      type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference(0);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_8();
      sub_26BD6C1DC(v7, v8, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_105() & 1;
    }
  }

  return 0;
}

uint64_t sub_26BD65174(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEF8, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, &protocol conformance descriptor for TriageRequest.CaseMetaData.SupportOptionReference);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD651F4(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044ABE8, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, &protocol conformance descriptor for TriageRequest.CaseMetaData.SupportOptionReference);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD65264(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044ABE8, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, &protocol conformance descriptor for TriageRequest.CaseMetaData.SupportOptionReference);

  return sub_26BDA0A00();
}

uint64_t sub_26BD652FC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A6D8);
  __swift_project_value_buffer(v0, qword_28044A6D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26BDA61D0;
  v4 = v59 + v3;
  v5 = v59 + v3 + v1[14];
  *(v59 + v3) = 1;
  *v5 = "device_name";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "device_os";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  *(v9 + 24) = "deviceOS";
  *(v9 + 32) = 8;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ip_address";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ds_id";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "email";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "time_zone";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "full_time_zone";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = v1[14];
  v21 = (v4 + 7 * v2);
  *v21 = 8;
  v22 = v21 + v20;
  *v22 = "deprecated_battery_config";
  *(v22 + 1) = 25;
  v22[16] = 2;
  *(v22 + 3) = "batteryConfig";
  *(v22 + 4) = 13;
  v22[40] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "location_services_enabled";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "device_locale";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "session_duration";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = v1[14];
  v30 = (v4 + 11 * v2);
  *v30 = 12;
  v31 = v30 + v29;
  *v31 = "serial_number_input_method";
  *(v31 + 1) = 26;
  v31[16] = 2;
  *(v31 + 3) = "snInputMethod";
  *(v31 + 4) = 13;
  v31[40] = 2;
  v8();
  v32 = (v4 + 12 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "app_locale";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 13 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "is_passcode_set";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 14 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "is_current_device";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v8();
  v38 = (v4 + 15 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "phone_number";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v4 + 16 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "location";
  *(v41 + 1) = 8;
  v41[16] = 2;
  v8();
  v42 = (v4 + 17 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "i_tunes_user_ds_id_hash";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  v44 = (v4 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "entry_point";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v8();
  v46 = (v4 + 19 * v2);
  v47 = v46 + v1[14];
  *v46 = 100;
  *v47 = "is_service_recommended";
  *(v47 + 1) = 22;
  v47[16] = 2;
  v8();
  v48 = (v4 + 20 * v2);
  v49 = v48 + v1[14];
  *v48 = 101;
  *v49 = "service_config";
  *(v49 + 1) = 14;
  v49[16] = 2;
  v8();
  v50 = (v4 + 21 * v2);
  v51 = v50 + v1[14];
  *v50 = 102;
  *v51 = "diagnostics_context";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v4 + 22 * v2);
  v53 = v52 + v1[14];
  *v52 = 103;
  *v53 = "restarted_after_recommendation";
  *(v53 + 1) = 30;
  v53[16] = 2;
  v8();
  v54 = (v4 + 23 * v2);
  v55 = v54 + v1[14];
  *v54 = 104;
  *v55 = "os_build_number";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v4 + 24 * v2);
  v57 = v56 + v1[14];
  *v56 = 105;
  *v57 = "current_device_serial_number";
  *(v57 + 1) = 28;
  v57[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD65AF8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_119();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26BD65C08()
{
  v1 = OUTLINED_FUNCTION_142_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v0;
}

uint64_t sub_26BD65C5C()
{
  v1 = OUTLINED_FUNCTION_142_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v0;
}

uint64_t sub_26BD65CB0()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26BD65D24()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  v1 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber;
  v2 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location;
  v4 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash) = xmmword_26BDA19C0;
  v5 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended) = 0;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation) = 0;
  v6 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_26BD65E58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_280();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_280();
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 168) = 0;
  *(v1 + 160) = 0;
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  v70 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber;
  type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v71 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location;
  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v72 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash);
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash) = xmmword_26BDA19C0;
  v15 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v73 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended) = 0;
  v74 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig) = 0;
  v75 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext;
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  v76 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation) = 0;
  v19 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  v77 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_230(a1 + 16, v124);
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  OUTLINED_FUNCTION_235(v1 + 16, v123);
  *(v1 + 16) = v22;
  *(v1 + 24) = v21;
  OUTLINED_FUNCTION_230(a1 + 32, v122);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  OUTLINED_FUNCTION_235(v1 + 32, v121);
  *(v1 + 32) = v23;
  *(v1 + 40) = v24;

  OUTLINED_FUNCTION_230(a1 + 48, v120);
  v26 = *(a1 + 48);
  v25 = *(a1 + 56);
  OUTLINED_FUNCTION_235(v1 + 48, v119);
  *(v1 + 48) = v26;
  *(v1 + 56) = v25;

  v27 = OUTLINED_FUNCTION_230(a1 + 64, &v118);
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  OUTLINED_FUNCTION_125_0(v27, &v117);
  *(v1 + 64) = v29;
  *(v1 + 72) = v28;

  OUTLINED_FUNCTION_230(a1 + 80, &v116);
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  OUTLINED_FUNCTION_235(v1 + 80, &v115);
  *(v1 + 80) = v31;
  *(v1 + 88) = v30;

  v32 = OUTLINED_FUNCTION_230(a1 + 96, &v114);
  v34 = *(a1 + 96);
  v33 = *(a1 + 104);
  OUTLINED_FUNCTION_125_0(v32, &v113);
  *(v1 + 96) = v34;
  *(v1 + 104) = v33;

  v35 = OUTLINED_FUNCTION_230(a1 + 112, &v112);
  v37 = *(a1 + 112);
  v36 = *(a1 + 120);
  OUTLINED_FUNCTION_125_0(v35, &v111);
  *(v1 + 112) = v37;
  *(v1 + 120) = v36;

  OUTLINED_FUNCTION_230(a1 + 128, &v110);
  v38 = *(a1 + 128);
  OUTLINED_FUNCTION_235(v1 + 128, &v109);
  *(v1 + 128) = v38;
  OUTLINED_FUNCTION_230(a1 + 136, &v108);
  LOBYTE(v36) = *(a1 + 136);
  OUTLINED_FUNCTION_235(v1 + 136, &v107);
  *(v1 + 136) = v36;
  v39 = OUTLINED_FUNCTION_230(a1 + 144, &v106);
  v41 = *(a1 + 144);
  v40 = *(a1 + 152);
  OUTLINED_FUNCTION_125_0(v39, &v105);
  *(v1 + 144) = v41;
  *(v1 + 152) = v40;

  OUTLINED_FUNCTION_230(a1 + 160, &v104);
  v42 = *(a1 + 160);
  OUTLINED_FUNCTION_235(v1 + 160, &v103);
  *(v1 + 160) = v42;
  v43 = OUTLINED_FUNCTION_230(a1 + 168, &v102);
  v45 = *(a1 + 168);
  v44 = *(a1 + 176);
  OUTLINED_FUNCTION_125_0(v43, &v101);
  *(v1 + 168) = v45;
  *(v1 + 176) = v44;

  v46 = OUTLINED_FUNCTION_230(a1 + 184, &v100);
  v48 = *(a1 + 184);
  v47 = *(a1 + 192);
  OUTLINED_FUNCTION_125_0(v46, &v99);
  *(v1 + 184) = v48;
  *(v1 + 192) = v47;

  OUTLINED_FUNCTION_230(a1 + 200, &v98);
  LOBYTE(v47) = *(a1 + 200);
  OUTLINED_FUNCTION_235(v1 + 200, &v97);
  *(v1 + 200) = v47;
  OUTLINED_FUNCTION_230(a1 + 201, &v96);
  LOBYTE(v47) = *(a1 + 201);
  OUTLINED_FUNCTION_235(v1 + 201, &v95);
  *(v1 + 201) = v47;
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber, &v94);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v1 + v70, v93);
  OUTLINED_FUNCTION_214_0();
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location, v93);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v1 + v71, v92);
  OUTLINED_FUNCTION_202();
  sub_26BD2E160();
  v49 = swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash);
  OUTLINED_FUNCTION_107_0(v49, v92);
  v52 = *v50;
  v51 = v50[1];
  OUTLINED_FUNCTION_235(v72, &v91);
  *v72 = v52;
  v72[1] = v51;
  v53 = OUTLINED_FUNCTION_167();
  sub_26BCFEFC4(v53, v54);
  v55 = OUTLINED_FUNCTION_131();
  v57 = sub_26BCFF01C(v55, v56);
  v58 = OUTLINED_FUNCTION_107_0(v57, &v90);
  OUTLINED_FUNCTION_125_0(v58, &v89);
  OUTLINED_FUNCTION_156_1();

  v59 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended, &v88);
  LOBYTE(v59) = *(a1 + v59);
  OUTLINED_FUNCTION_235(v1 + v73, &v87);
  *(v1 + v73) = v59;
  v60 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig, &v86);
  v61 = *(a1 + v60);
  OUTLINED_FUNCTION_235(v1 + v74, &v85);
  *(v1 + v74) = v61;
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext, &v84);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_236(v1 + v75, v83);
  OUTLINED_FUNCTION_202();
  sub_26BD2E160();
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  OUTLINED_FUNCTION_230(a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation, v83);
  LOBYTE(v62) = *(a1 + v62);
  v63 = OUTLINED_FUNCTION_235(v1 + v76, &v82);
  *(v1 + v76) = v62;
  v64 = OUTLINED_FUNCTION_107_0(v63, &v81);
  OUTLINED_FUNCTION_125_0(v64, &v80);
  OUTLINED_FUNCTION_156_1();

  v66 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  OUTLINED_FUNCTION_107_0(v65, &v79);
  v68 = *v66;
  v67 = v66[1];

  OUTLINED_FUNCTION_235(v77, &v78);
  *v77 = v68;
  v77[1] = v67;

  return v1;
}

void *sub_26BD66638()
{

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber, &qword_280449840, &qword_26BDA36D8);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash), *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash + 8));

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext, &qword_280448F88, &qword_26BDA5440);

  return v0;
}

void sub_26BD667D0()
{
  OUTLINED_FUNCTION_246();
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_36();
    *(v0 + v7) = v9(v8);
  }

  OUTLINED_FUNCTION_293_0();
  v2();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD66880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        swift_beginAccess();
        sub_26BDA0990();
        swift_endAccess();
        continue;
      case 6:
      case 7:
      case 10:
      case 12:
      case 13:
      case 19:
LABEL_12:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_15;
      case 8:
      case 11:
LABEL_13:
        swift_beginAccess();
        sub_26BDA0980();
        goto LABEL_15;
      case 9:
      case 14:
      case 15:
LABEL_14:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_15;
      case 16:
        swift_beginAccess();
        type metadata accessor for PhoneNumber(0);
        v8 = type metadata accessor for PhoneNumber;
        v9 = &protocol conformance descriptor for PhoneNumber;
        v10 = &qword_280449910;
        goto LABEL_9;
      case 17:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = MEMORY[0x277D215C8];
        v9 = MEMORY[0x277D215C0];
        v10 = &qword_280449130;
LABEL_9:
        sub_26BD6C1DC(v10, v8, v9);
        sub_26BDA09B0();
        goto LABEL_15;
      case 18:
        swift_beginAccess();
        sub_26BDA0940();
LABEL_15:
        v5 = 0;
        swift_endAccess();
        break;
      default:
        switch(result)
        {
          case 'd':
          case 'g':
            goto LABEL_14;
          case 'e':
            goto LABEL_13;
          case 'f':
            swift_beginAccess();
            sub_26BDA0810();
            sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA09B0();
            swift_endAccess();
            break;
          case 'h':
          case 'i':
            goto LABEL_12;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_26BD66E90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_129();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD66F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = v70 - v11;
  v76 = sub_26BDA0810();
  v73 = *(v76 - 8);
  v12 = MEMORY[0x28223BE20](v76);
  v71 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v70 - v16;
  v18 = type metadata accessor for PhoneNumber(0);
  MEMORY[0x28223BE20](v18);
  v74 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 40);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 56);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 72);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 88);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 104);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 128) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 136) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 152);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 160) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 176);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_50;
  }

  sub_26BDA0AB0();
  if (v4)
  {
  }

LABEL_50:
  swift_beginAccess();
  v39 = *(a1 + 192);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 200) != 1 || (result = sub_26BDA0A40(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 201) != 1 || (result = sub_26BDA0A40(), !v4))
    {
      swift_beginAccess();
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
      {
        sub_26BD04E80(v17, &qword_280449840, &qword_26BDA36D8);
        v41 = v77;
      }

      else
      {
        sub_26BD65C08();
        sub_26BD6C1DC(&qword_280449910, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);
        sub_26BDA0AD0();
        if (v4)
        {
          return sub_26BD65CB0();
        }

        v41 = v77;
        sub_26BD65CB0();
      }

      swift_beginAccess();
      v42 = v75;
      sub_26BD31AF8();
      v43 = v76;
      if (__swift_getEnumTagSinglePayload(v42, 1, v76) == 1)
      {
        sub_26BD04E80(v42, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        v44 = v42;
        v45 = v73;
        (*(v73 + 32))(v41, v44, v43);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA0AD0();
        if (v4)
        {
          return (*(v45 + 8))(v41, v43);
        }

        (*(v45 + 8))(v41, v43);
      }

      v46 = a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash;
      swift_beginAccess();
      if (sub_26BD50FE4(*v46, *(v46 + 8)) || (v48 = *v46, v47 = *(v46 + 8), sub_26BCFEFC4(v48, v47), sub_26BDA0A60(), result = sub_26BCFF01C(v48, v47), !v4))
      {
        v49 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
        swift_beginAccess();
        v50 = *v49;
        v51 = v49[1];
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (!v52 || (, sub_26BDA0AB0(), result = , !v5))
        {
          v53 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
          swift_beginAccess();
          if (*(a1 + v53) != 1 || (result = sub_26BDA0A40(), !v5))
          {
            v54 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
            swift_beginAccess();
            v55 = *(a1 + v54);
            v70[1] = a3;
            if (v55 == 0.0 || (result = sub_26BDA0AA0(), !v5))
            {
              swift_beginAccess();
              v56 = v72;
              sub_26BD31AF8();
              v57 = v76;
              if (__swift_getEnumTagSinglePayload(v56, 1, v76) == 1)
              {
                sub_26BD04E80(v56, &qword_280448F88, &qword_26BDA5440);
              }

              else
              {
                v58 = v56;
                v59 = v73;
                v60 = v71;
                (*(v73 + 32))(v71, v58, v57);
                sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
                sub_26BDA0AD0();
                if (v5)
                {
                  return (*(v59 + 8))(v60, v57);
                }

                (*(v59 + 8))(v60, v57);
              }

              v61 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
              swift_beginAccess();
              if (*(a1 + v61) != 1 || (result = sub_26BDA0A40(), !v5))
              {
                v62 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
                swift_beginAccess();
                v63 = *v62;
                v64 = v62[1];
                v65 = HIBYTE(v64) & 0xF;
                if ((v64 & 0x2000000000000000) == 0)
                {
                  v65 = v63 & 0xFFFFFFFFFFFFLL;
                }

                if (!v65 || (, sub_26BDA0AB0(), result = , !v5))
                {
                  v66 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
                  result = swift_beginAccess();
                  v67 = *v66;
                  v68 = v66[1];
                  v69 = HIBYTE(v68) & 0xF;
                  if ((v68 & 0x2000000000000000) == 0)
                  {
                    v69 = v67 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v69)
                  {

                    sub_26BDA0AB0();
                  }
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

BOOL sub_26BD67C6C()
{
  OUTLINED_FUNCTION_246_0();
  v156 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v152 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v150 = v5 - v4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_38();
  v149 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_252();
  v154 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v11 = OUTLINED_FUNCTION_110(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38();
  v147 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_193();
  v148 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_193();
  v151 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_252();
  v153 = v18;
  v19 = OUTLINED_FUNCTION_176();
  v20 = type metadata accessor for PhoneNumber(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_280();
  v157 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v25 = OUTLINED_FUNCTION_110(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v26);
  v28 = &v147 - v27;
  OUTLINED_FUNCTION_230(v1 + 16, v207);
  v30 = *(v1 + 16);
  v29 = *(v1 + 24);
  OUTLINED_FUNCTION_230(v0 + 16, v206);
  v31 = v30 == *(v0 + 16) && v29 == *(v0 + 24);
  if (!v31 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 32, v205);
  v32 = *(v1 + 32);
  v33 = *(v1 + 40);
  OUTLINED_FUNCTION_230(v0 + 32, v204);
  v34 = v32 == *(v0 + 32) && v33 == *(v0 + 40);
  if (!v34 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 48, v203);
  v35 = *(v1 + 48);
  v36 = *(v1 + 56);
  OUTLINED_FUNCTION_230(v0 + 48, v202);
  v37 = v35 == *(v0 + 48) && v36 == *(v0 + 56);
  if (!v37 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 64, &v201);
  v38 = *(v1 + 64);
  v39 = *(v1 + 72);
  OUTLINED_FUNCTION_230(v0 + 64, &v200);
  v40 = v38 == *(v0 + 64) && v39 == *(v0 + 72);
  if (!v40 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 80, &v199);
  v41 = *(v1 + 80);
  v42 = *(v1 + 88);
  OUTLINED_FUNCTION_230(v0 + 80, &v198);
  v43 = v41 == *(v0 + 80) && v42 == *(v0 + 88);
  if (!v43 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 96, &v197);
  v44 = *(v1 + 96);
  v45 = *(v1 + 104);
  OUTLINED_FUNCTION_230(v0 + 96, &v196);
  v46 = v44 == *(v0 + 96) && v45 == *(v0 + 104);
  if (!v46 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 112, &v195);
  v47 = *(v1 + 112);
  v48 = *(v1 + 120);
  OUTLINED_FUNCTION_230(v0 + 112, &v194);
  v49 = v47 == *(v0 + 112) && v48 == *(v0 + 120);
  if (!v49 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 128, &v193);
  v50 = *(v1 + 128);
  OUTLINED_FUNCTION_230(v0 + 128, &v192);
  if (v50 != *(v0 + 128))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 136, &v191);
  v51 = *(v1 + 136);
  OUTLINED_FUNCTION_230(v0 + 136, &v190);
  if (v51 != *(v0 + 136))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 144, &v189);
  v52 = *(v1 + 144);
  v53 = *(v1 + 152);
  OUTLINED_FUNCTION_230(v0 + 144, &v188);
  v54 = v52 == *(v0 + 144) && v53 == *(v0 + 152);
  if (!v54 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 160, &v187);
  v55 = *(v1 + 160);
  OUTLINED_FUNCTION_230(v0 + 160, &v186);
  if (v55 != *(v0 + 160))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 168, &v185);
  v56 = *(v1 + 168);
  v57 = *(v1 + 176);
  OUTLINED_FUNCTION_230(v0 + 168, &v184);
  v58 = v56 == *(v0 + 168) && v57 == *(v0 + 176);
  if (!v58 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 184, &v183);
  v59 = *(v1 + 184);
  v60 = *(v1 + 192);
  OUTLINED_FUNCTION_230(v0 + 184, &v182);
  v61 = v59 == *(v0 + 184) && v60 == *(v0 + 192);
  if (!v61 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 200, &v181);
  v62 = *(v1 + 200);
  OUTLINED_FUNCTION_230(v0 + 200, &v180);
  if (v62 != *(v0 + 200))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + 201, &v179);
  v63 = *(v1 + 201);
  OUTLINED_FUNCTION_230(v0 + 201, &v178);
  if (v63 != *(v0 + 201))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber, &v177);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__phoneNumber, &v176);
  v64 = v157;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v65 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v65, v66, v20);
  if (v31)
  {

    sub_26BD04E80(v28, &qword_280449840, &qword_26BDA36D8);
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_112(v67, v68, v69);
    if (v31)
    {
      sub_26BD04E80(v64, &qword_280449840, &qword_26BDA36D8);
      goto LABEL_66;
    }

LABEL_64:
    v74 = &qword_280449920;
    v75 = &qword_26BDA9390;
    v76 = v64;
LABEL_75:
    sub_26BD04E80(v76, v74, v75);
    goto LABEL_76;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_238_0();
  OUTLINED_FUNCTION_112(v70, v71, v72);
  if (v73)
  {

    sub_26BD04E80(v28, &qword_280449840, &qword_26BDA36D8);
    sub_26BD65CB0();
    goto LABEL_64;
  }

  sub_26BD65C08();

  v77 = static PhoneNumber.== infix(_:_:)();
  OUTLINED_FUNCTION_222_0();
  sub_26BD65CB0();
  sub_26BD04E80(v28, &qword_280449840, &qword_26BDA36D8);
  sub_26BD65CB0();
  sub_26BD04E80(v64, &qword_280449840, &qword_26BDA36D8);
  if ((v77 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_66:
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location, &v175);
  v78 = v153;
  OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__location, &v174);
  v79 = v154;
  v80 = *(v155 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  v81 = v156;
  OUTLINED_FUNCTION_112(v79, 1, v156);
  if (v31)
  {
    sub_26BD04E80(v78, &qword_280448F88, &qword_26BDA5440);
    OUTLINED_FUNCTION_258_0();
    OUTLINED_FUNCTION_112(v82, v83, v84);
    if (v31)
    {
      sub_26BD04E80(v79, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_79;
    }

    goto LABEL_74;
  }

  v85 = v151;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_112(v86, v87, v88);
  if (v89)
  {
    sub_26BD04E80(v78, &qword_280448F88, &qword_26BDA5440);
    (*(v152 + 8))(v85, v81);
LABEL_74:
    v74 = &qword_2804490C8;
    v75 = &qword_26BDA7780;
    v76 = v79;
    goto LABEL_75;
  }

  v91 = v152;
  v92 = v150;
  (*(v152 + 32))(v150, v79 + v80, v81);
  OUTLINED_FUNCTION_5_2();
  sub_26BD6C1DC(v93, v94, MEMORY[0x277D215D8]);
  OUTLINED_FUNCTION_242();
  v95 = v85;
  LODWORD(v157) = sub_26BDA0BB0();
  v96 = *(v91 + 8);
  v96(v92, v81);
  v97 = OUTLINED_FUNCTION_163_0();
  v99 = v98;
  sub_26BD04E80(v97, v100, v98);
  v96(v95, v81);
  sub_26BD04E80(v79, &qword_280448F88, v99);
  if ((v157 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_79:
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash, &v173);
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash, &v172);
  v101 = OUTLINED_FUNCTION_222();
  sub_26BCFEFC4(v101, v102);
  v103 = OUTLINED_FUNCTION_286_0();
  sub_26BCFEFC4(v103, v104);
  v105 = OUTLINED_FUNCTION_222();
  v106 = MEMORY[0x26D695520](v105);
  v107 = OUTLINED_FUNCTION_286_0();
  sub_26BCFF01C(v107, v108);
  v109 = OUTLINED_FUNCTION_222();
  sub_26BCFF01C(v109, v110);
  if ((v106 & 1) == 0)
  {
    goto LABEL_76;
  }

  v111 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint, &v171);
  v112 = *v111;
  v113 = v111[1];
  v114 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint, &v170);
  if (v112 != *v114 || v113 != v114[1])
  {
    OUTLINED_FUNCTION_163_0();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v116 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended, &v169);
  LODWORD(v116) = *(v1 + v116);
  v117 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended, &v168);
  if (v116 != *(v0 + v117))
  {
    goto LABEL_76;
  }

  v118 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig, &v167);
  v119 = *(v1 + v118);
  v120 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig, &v166);
  if (v119 != *(v0 + v120))
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext, &v165);
  OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__diagnosticsContext, &v164);
  v121 = *(v155 + 48);
  v122 = v149;
  OUTLINED_FUNCTION_277_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v122, 1, v156);
  if (!v31)
  {
    v123 = v149;
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v123 + v121, 1, v156);
    if (!v124)
    {
      v125 = v152;
      v127 = v149;
      v126 = v150;
      v128 = v156;
      (*(v152 + 32))(v150, v149 + v121, v156);
      OUTLINED_FUNCTION_5_2();
      sub_26BD6C1DC(v129, v130, MEMORY[0x277D215D8]);
      v131 = v147;
      OUTLINED_FUNCTION_204();
      v132 = sub_26BDA0BB0();
      v133 = *(v125 + 8);
      v133(v126, v128);
      sub_26BD04E80(v148, &qword_280448F88, &qword_26BDA5440);
      v133(v131, v128);
      sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
      if (v132)
      {
        goto LABEL_97;
      }

LABEL_76:

      return 0;
    }

    sub_26BD04E80(v148, &qword_280448F88, &qword_26BDA5440);
    (*(v152 + 8))(v147, v156);
    goto LABEL_95;
  }

  sub_26BD04E80(v148, &qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_112(v149 + v121, 1, v156);
  if (!v31)
  {
LABEL_95:
    v74 = &qword_2804490C8;
    v75 = &qword_26BDA7780;
    v76 = v149;
    goto LABEL_75;
  }

  sub_26BD04E80(v149, &qword_280448F88, &qword_26BDA5440);
LABEL_97:
  v134 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation, &v163);
  LODWORD(v134) = *(v1 + v134);
  v135 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation, &v162);
  if (v134 != *(v0 + v135))
  {
    goto LABEL_76;
  }

  v136 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber, &v161);
  v137 = *v136;
  v138 = v136[1];
  v139 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber, &v160);
  if (v137 != *v139 || v138 != v139[1])
  {
    OUTLINED_FUNCTION_163_0();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v141 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber, &v159);
  v142 = *v141;
  v143 = v141[1];
  v144 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  OUTLINED_FUNCTION_230(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber, &v158);
  if (v142 != *v144 || v143 != v144[1])
  {
    OUTLINED_FUNCTION_163_0();
    v146 = sub_26BDA0FB0();

    return (v146 & 1) != 0;
  }

  return 1;
}

uint64_t sub_26BD68ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEF0, type metadata accessor for TriageRequest.ClientContext, &protocol conformance descriptor for TriageRequest.ClientContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD68B5C(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext, &protocol conformance descriptor for TriageRequest.ClientContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD68BCC(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext, &protocol conformance descriptor for TriageRequest.ClientContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD68C64()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A6F8);
  __swift_project_value_buffer(v0, qword_28044A6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26BDA77B0;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "ds_id";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "first_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "customerFirstName";
  *(v9 + 32) = 17;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "last_name";
  *(v12 + 1) = 9;
  v12[16] = 2;
  *(v12 + 3) = "customerLastName";
  *(v12 + 4) = 16;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v4 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "email";
  *(v15 + 1) = 5;
  v15[16] = 2;
  *(v15 + 3) = "customerEmail";
  *(v15 + 4) = 13;
  v15[40] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "country";
  *(v18 + 1) = 7;
  v18[16] = 2;
  *(v18 + 3) = "custCountry";
  *(v18 + 4) = 11;
  v18[40] = 2;
  v8();
  v19 = (v4 + 5 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "alternate_last_name";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v8();
  v21 = (v4 + 6 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "alternate_first_name";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v8();
  v23 = (v4 + 7 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "home_dial";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 8 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "home_phone";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 9 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "office_dial";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 10 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "office_phone";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v4 + 11 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "phone_type";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v8();
  v33 = (v4 + 12 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "customer_phone";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.Customer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      default:
        continue;
    }
  }
}

uint64_t TriageRequest.Customer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v10 || (result = OUTLINED_FUNCTION_103(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v13 || (result = OUTLINED_FUNCTION_103(v11, v12, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v16 || (result = OUTLINED_FUNCTION_103(v14, v15, 5), !v0))
          {
            OUTLINED_FUNCTION_29();
            if (!v19 || (result = OUTLINED_FUNCTION_103(v17, v18, 6), !v0))
            {
              OUTLINED_FUNCTION_29();
              if (!v22 || (result = OUTLINED_FUNCTION_103(v20, v21, 7), !v0))
              {
                OUTLINED_FUNCTION_29();
                if (!v25 || (result = OUTLINED_FUNCTION_103(v23, v24, 8), !v0))
                {
                  OUTLINED_FUNCTION_29();
                  if (!v28 || (result = OUTLINED_FUNCTION_103(v26, v27, 9), !v0))
                  {
                    OUTLINED_FUNCTION_29();
                    if (!v31 || (result = OUTLINED_FUNCTION_103(v29, v30, 10), !v0))
                    {
                      OUTLINED_FUNCTION_29();
                      if (!v34 || (result = OUTLINED_FUNCTION_103(v32, v33, 11), !v0))
                      {
                        OUTLINED_FUNCTION_29();
                        if (!v37 || (result = OUTLINED_FUNCTION_103(v35, v36, 12), !v0))
                        {
                          OUTLINED_FUNCTION_29();
                          if (!v40 || (result = OUTLINED_FUNCTION_103(v38, v39, 13), !v0))
                          {
                            type metadata accessor for TriageRequest.Customer(0);
                            return OUTLINED_FUNCTION_104();
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
  }

  return result;
}

uint64_t static TriageRequest.Customer.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_249_0();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v14 = v2[10] == v1[10] && v2[11] == v1[11];
  if (!v14 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v15 = v2[12] == v1[12] && v2[13] == v1[13];
  if (!v15 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v16 = v2[14] == v1[14] && v2[15] == v1[15];
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v17 = v2[16] == v1[16] && v2[17] == v1[17];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v18 = v2[18] == v1[18] && v2[19] == v1[19];
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v19 = v2[20] == v1[20] && v2[21] == v1[21];
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v20 = v2[22] == v1[22] && v2[23] == v1[23];
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v21 = v2[24] == v1[24] && v2[25] == v1[25];
  if (!v21 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TriageRequest.Customer(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v22, v23, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD696BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEE8, type metadata accessor for TriageRequest.Customer, &protocol conformance descriptor for TriageRequest.Customer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD6973C(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A668, type metadata accessor for TriageRequest.Customer, &protocol conformance descriptor for TriageRequest.Customer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD697AC(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044A668, type metadata accessor for TriageRequest.Customer, &protocol conformance descriptor for TriageRequest.Customer);

  return sub_26BDA0A00();
}

uint64_t sub_26BD69844()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A710);
  __swift_project_value_buffer(v0, qword_28044A710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "solutions_offered";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "solutions_not_offered";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "solutions_uuid";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.ReportingContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t TriageRequest.ReportingContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v10 || (result = OUTLINED_FUNCTION_103(v8, v9, 3), !v0))
      {
        type metadata accessor for TriageRequest.ReportingContext(0);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static TriageRequest.ReportingContext.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_249_0();
  v9 = v3 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TriageRequest.ReportingContext(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD69CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEE0, type metadata accessor for TriageRequest.ReportingContext, &protocol conformance descriptor for TriageRequest.ReportingContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD69D58(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A670, type metadata accessor for TriageRequest.ReportingContext, &protocol conformance descriptor for TriageRequest.ReportingContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD69DC8(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044A670, type metadata accessor for TriageRequest.ReportingContext, &protocol conformance descriptor for TriageRequest.ReportingContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD69E60()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A728);
  __swift_project_value_buffer(v0, qword_28044A728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26BDA77C0;
  v4 = v107 + v3 + v1[14];
  *(v107 + v3) = 1;
  *v4 = "solution_type_string";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v107 + v3 + v2 + v1[14];
  *(v107 + v3 + v2) = 2;
  *v8 = "solution_sub_type_string";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v107 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "solution_sub_types_string";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v107 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  *(v12 + 3) = "uuId";
  *(v12 + 4) = 4;
  v12[40] = 2;
  v7();
  v13 = v1[14];
  v14 = (v107 + v3 + 4 * v2);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "is_for_premium_advisor";
  *(v15 + 1) = 22;
  v15[16] = 2;
  *(v15 + 3) = "premiumAdvisorFlag";
  *(v15 + 4) = 18;
  v15[40] = 2;
  v7();
  v16 = (v107 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "apple_id";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v107 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "execute_diagnostics";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v7();
  v20 = (v107 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "user_entered_first_name";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v7();
  v22 = (v107 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "user_entered_last_name";
  *(v23 + 1) = 22;
  v23[16] = 2;
  v7();
  v24 = (v107 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "user_entered_email";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v7();
  v26 = (v107 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "user_entered_phone_number";
  *(v27 + 1) = 25;
  v27[16] = 2;
  v7();
  v28 = (v107 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "user_entered_country_code";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v7();
  v30 = (v107 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "user_entered_country_char_code";
  *(v31 + 1) = 30;
  v31[16] = 2;
  v7();
  v32 = (v107 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "user_entered_address";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v7();
  v34 = (v107 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "user_entered_secondary_details";
  *(v35 + 1) = 30;
  v35[16] = 2;
  v7();
  v36 = v1[14];
  v37 = (v107 + v3 + 15 * v2);
  *v37 = 30;
  v38 = v37 + v36;
  *v38 = "click_to_chat_estimated_wait_time_id";
  *(v38 + 1) = 36;
  v38[16] = 2;
  *(v38 + 3) = "c2chEwt";
  *(v38 + 4) = 7;
  v38[40] = 2;
  v7();
  v39 = v1[14];
  v40 = (v107 + v3 + 16 * v2);
  *v40 = 40;
  v41 = v40 + v39;
  *v41 = "chat_transaction_id";
  *(v41 + 1) = 19;
  v41[16] = 2;
  *(v41 + 3) = "transactionId";
  *(v41 + 4) = 13;
  v41[40] = 2;
  v7();
  v42 = (v107 + v3 + 17 * v2);
  v43 = v42 + v1[14];
  *v42 = 41;
  *v43 = "rtct_opted";
  *(v43 + 1) = 10;
  v43[16] = 2;
  v7();
  v44 = (v107 + v3 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 50;
  *v45 = "reservation_slot";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v7();
  v46 = v1[14];
  v47 = (v107 + v3 + 19 * v2);
  *v47 = 60;
  v48 = v47 + v46;
  *v48 = "click_to_call_estimated_wait_time_id";
  *(v48 + 1) = 36;
  v48[16] = 2;
  *(v48 + 3) = "c2cEwt";
  *(v48 + 4) = 6;
  v48[40] = 2;
  v7();
  v49 = (v107 + v3 + 20 * v2);
  v50 = v49 + v1[14];
  *v49 = 70;
  *v50 = "reservation_data";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v7();
  v51 = v1[14];
  v52 = (v107 + v3 + 21 * v2);
  *v52 = 80;
  v53 = v52 + v51;
  *v53 = "authorized_service_provider_referred_store_id";
  *(v53 + 1) = 45;
  v53[16] = 2;
  *(v53 + 3) = "aspReferredStoreId";
  *(v53 + 4) = 18;
  v53[40] = 2;
  v7();
  v54 = v1[14];
  v55 = (v107 + v3 + 22 * v2);
  *v55 = 81;
  v56 = v55 + v54;
  *v56 = "authorized_service_provider_referred_store_url";
  *(v56 + 1) = 46;
  v56[16] = 2;
  *(v56 + 3) = "aspReferredUrl";
  *(v56 + 4) = 14;
  v56[40] = 2;
  v7();
  v57 = v1[14];
  v58 = (v107 + v3 + 23 * v2);
  *v58 = 82;
  v59 = v58 + v57;
  *v59 = "authorized_service_provider_referred_store_address";
  *(v59 + 1) = 50;
  v59[16] = 2;
  *(v59 + 3) = "aspReferredAddress";
  *(v59 + 4) = 18;
  v59[40] = 2;
  v7();
  v60 = v1[14];
  v61 = (v107 + v3 + 24 * v2);
  *v61 = 83;
  v62 = v61 + v60;
  *v62 = "authorized_service_provider_referred_store_name";
  *(v62 + 1) = 47;
  v62[16] = 2;
  *(v62 + 3) = "aspReferred";
  *(v62 + 4) = 11;
  v62[40] = 2;
  v7();
  v63 = v1[14];
  v64 = (v107 + v3 + 25 * v2);
  *v64 = 90;
  v65 = v64 + v63;
  *v65 = "authorized_service_provider_referred_phone_number";
  *(v65 + 1) = 49;
  v65[16] = 2;
  *(v65 + 3) = "aspReferredPhoneNumber";
  *(v65 + 4) = 22;
  v65[40] = 2;
  v7();
  v66 = (v107 + v3 + 26 * v2);
  v67 = v66 + v1[14];
  *v66 = 100;
  *v67 = "genesys_sonar_email_address";
  *(v67 + 1) = 27;
  v67[16] = 2;
  v7();
  v68 = v1[14];
  v69 = (v107 + v3 + 27 * v2);
  *v69 = 101;
  v70 = v69 + v68;
  *v70 = "email_attachment_token";
  *(v70 + 1) = 22;
  v70[16] = 2;
  *(v70 + 3) = "attachmentToken";
  *(v70 + 4) = 15;
  v70[40] = 2;
  v7();
  v71 = v1[14];
  v72 = (v107 + v3 + 28 * v2);
  *v72 = 102;
  v73 = v72 + v71;
  *v73 = "email_transaction_id";
  *(v73 + 1) = 20;
  v73[16] = 2;
  *(v73 + 3) = "emailTransaction";
  *(v73 + 4) = 16;
  v73[40] = 2;
  v7();
  v74 = v1[14];
  v75 = (v107 + v3 + 29 * v2);
  *v75 = 103;
  v76 = v75 + v74;
  *v76 = "email_additional_details";
  *(v76 + 1) = 24;
  v76[16] = 2;
  *(v76 + 3) = "additionalDetails";
  *(v76 + 4) = 17;
  v76[40] = 2;
  v7();
  v77 = v1[14];
  v78 = (v107 + v3 + 30 * v2);
  *v78 = 104;
  v79 = v78 + v77;
  *v79 = "email_estimated_wait_time";
  *(v79 + 1) = 25;
  v79[16] = 2;
  *(v79 + 3) = "emlSla";
  *(v79 + 4) = 6;
  v79[40] = 2;
  v7();
  v80 = v1[14];
  v81 = (v107 + v3 + 31 * v2);
  *v81 = 105;
  v82 = v81 + v80;
  *v82 = "email_file_attachment_ids";
  *(v82 + 1) = 25;
  v82[16] = 2;
  *(v82 + 3) = "attachmentFileIds";
  *(v82 + 4) = 17;
  v82[40] = 2;
  v7();
  v83 = (v107 + v3 + 32 * v2);
  v84 = v83 + v1[14];
  *v83 = 110;
  *v84 = "mobile_carrier_referred_name";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v7();
  v85 = v1[14];
  v86 = (v107 + v3 + 33 * v2);
  *v86 = 111;
  v87 = v86 + v85;
  *v87 = "mobile_carrier_referred_url";
  *(v87 + 1) = 27;
  v87[16] = 2;
  *(v87 + 3) = "mobileCarrierReferredURL";
  *(v87 + 4) = 24;
  v87[40] = 2;
  v7();
  v88 = (v107 + v3 + 34 * v2);
  v89 = v88 + v1[14];
  *v88 = 120;
  *v89 = "resolved_article";
  *(v89 + 1) = 16;
  v89[16] = 2;
  v7();
  v90 = v1[14];
  v91 = (v107 + v3 + 35 * v2);
  *v91 = 121;
  v92 = v91 + v90;
  *v92 = "resolved_article_title";
  *(v92 + 1) = 22;
  v92[16] = 2;
  *(v92 + 3) = "resArticleTitle";
  *(v92 + 4) = 15;
  v92[40] = 2;
  v7();
  v93 = v1[14];
  v94 = (v107 + v3 + 36 * v2);
  *v94 = 122;
  v95 = v94 + v93;
  *v95 = "resolved_article_url";
  *(v95 + 1) = 20;
  v95[16] = 2;
  *(v95 + 3) = "resArticleTitleUrl";
  *(v95 + 4) = 18;
  v95[40] = 2;
  v7();
  v96 = (v107 + v3 + 37 * v2);
  v97 = v96 + v1[14];
  *v96 = 130;
  *v97 = "payment_flow_data";
  *(v97 + 1) = 17;
  v97[16] = 2;
  v7();
  v98 = (v107 + v3 + 38 * v2);
  v99 = v98 + v1[14];
  *v98 = 131;
  *v99 = "manage_coverage_data";
  *(v99 + 1) = 20;
  v99[16] = 2;
  v7();
  v100 = (v107 + v3 + 39 * v2);
  v101 = v100 + v1[14];
  *v100 = 140;
  *v101 = "application_data";
  *(v101 + 1) = 16;
  v101[16] = 2;
  v7();
  v102 = (v107 + v3 + 40 * v2);
  v103 = v102 + v1[14];
  *v102 = 150;
  *v103 = "is_customer_opted_for_sms";
  *(v103 + 1) = 25;
  v103[16] = 2;
  v7();
  v104 = (v107 + v3 + 41 * v2);
  v105 = v104 + v1[14];
  *v104 = 160;
  *v105 = "smb_repair_request_details";
  *(v105 + 1) = 26;
  v105[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD6AC30()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v3 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, 1, 1, v3);
  v10 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted) = 0;
  v13 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, 1, 1, v3);
  v15 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds) = v1;
  v25 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData) = xmmword_26BDA19C0;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, 1, 1, v3);
  return v0;
}

uint64_t sub_26BD6AF10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  MEMORY[0x28223BE20](v3 - 8);
  v166 = &v162 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  v162 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v163 = (v1 + 72);
  *(v1 + 80) = 0;
  v164 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v165 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v6 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  v167 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  v168 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  v169 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  v170 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v171 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, 1, 1, v6);
  v13 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  v172 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  v173 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  v174 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v175 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted) = 0;
  v16 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  v176 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  v177 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v178 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, 1, 1, v6);
  v18 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  v179 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  v180 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  v181 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  v182 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  v183 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  v184 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  v185 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  v186 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  v187 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  v188 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v189 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds) = MEMORY[0x277D84F90];
  v28 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  v190 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  v191 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  v192 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  v193 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  v194 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v195 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, 1, 1, v6);
  v196 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, 1, 1, v6);
  v197 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData) = xmmword_26BDA19C0;
  v198 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms) = 0;
  v199 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, 1, 1, v6);
  swift_beginAccess();
  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v34;
  *(v1 + 24) = v33;
  swift_beginAccess();
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v35;
  *(v1 + 40) = v36;

  swift_beginAccess();
  v37 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v37;

  swift_beginAccess();
  v39 = *(a1 + 56);
  v38 = *(a1 + 64);
  v40 = v162;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 64) = v38;

  swift_beginAccess();
  LOBYTE(v38) = *(a1 + 72);
  v41 = v163;
  swift_beginAccess();
  *v41 = v38;
  swift_beginAccess();
  v43 = *(a1 + 80);
  v42 = *(a1 + 88);
  v44 = v164;
  swift_beginAccess();
  *v44 = v43;
  *(v1 + 88) = v42;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  swift_beginAccess();
  *v7 = v47;
  v7[1] = v46;

  v48 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  swift_beginAccess();
  *v8 = v50;
  v8[1] = v49;

  v51 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = v167;
  swift_beginAccess();
  *v54 = v53;
  v54[1] = v52;

  v55 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v168;
  swift_beginAccess();
  *v58 = v57;
  v58[1] = v56;

  v59 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v169;
  swift_beginAccess();
  *v62 = v61;
  v62[1] = v60;

  v63 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v170;
  swift_beginAccess();
  *v66 = v65;
  v66[1] = v64;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v67 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v172;
  swift_beginAccess();
  *v70 = v69;
  v70[1] = v68;

  v71 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  v74 = v173;
  swift_beginAccess();
  *v74 = v73;
  v74[1] = v72;

  v75 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v77 = *v75;
  v76 = v75[1];
  v78 = v174;
  swift_beginAccess();
  *v78 = v77;
  v78[1] = v76;

  v79 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  LOBYTE(v79) = *(a1 + v79);
  v80 = v175;
  swift_beginAccess();
  *(v1 + v80) = v79;
  v81 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  v84 = v176;
  swift_beginAccess();
  *v84 = v83;
  v84[1] = v82;

  v85 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v87 = *v85;
  v86 = v85[1];
  v88 = v177;
  swift_beginAccess();
  *v88 = v87;
  v88[1] = v86;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v89 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v91 = *v89;
  v90 = v89[1];
  v92 = v179;
  swift_beginAccess();
  *v92 = v91;
  v92[1] = v90;

  v93 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v95 = *v93;
  v94 = v93[1];
  v96 = v180;
  swift_beginAccess();
  *v96 = v95;
  v96[1] = v94;

  v97 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v99 = *v97;
  v98 = v97[1];
  v100 = v181;
  swift_beginAccess();
  *v100 = v99;
  v100[1] = v98;

  v101 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v103 = *v101;
  v102 = v101[1];
  v104 = v182;
  swift_beginAccess();
  *v104 = v103;
  v104[1] = v102;

  v105 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v107 = *v105;
  v106 = v105[1];
  v108 = v183;
  swift_beginAccess();
  *v108 = v107;
  v108[1] = v106;

  v109 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v111 = *v109;
  v110 = v109[1];
  v112 = v184;
  swift_beginAccess();
  *v112 = v111;
  v112[1] = v110;

  v113 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v115 = *v113;
  v114 = v113[1];
  v116 = v185;
  swift_beginAccess();
  *v116 = v115;
  v116[1] = v114;

  v117 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v119 = *v117;
  v118 = v117[1];
  v120 = v186;
  swift_beginAccess();
  *v120 = v119;
  v120[1] = v118;

  v121 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v123 = *v121;
  v122 = v121[1];
  v124 = v187;
  swift_beginAccess();
  *v124 = v123;
  v124[1] = v122;

  v125 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v127 = *v125;
  v126 = v125[1];
  v128 = v188;
  swift_beginAccess();
  *v128 = v127;
  v128[1] = v126;

  v129 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  v130 = *(a1 + v129);
  v131 = v189;
  swift_beginAccess();
  *(v1 + v131) = v130;

  v132 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v134 = *v132;
  v133 = v132[1];
  v135 = v190;
  swift_beginAccess();
  *v135 = v134;
  v135[1] = v133;

  v136 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v138 = *v136;
  v137 = v136[1];
  v139 = v191;
  swift_beginAccess();
  *v139 = v138;
  v139[1] = v137;

  v140 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v142 = *v140;
  v141 = v140[1];
  v143 = v192;
  swift_beginAccess();
  *v143 = v142;
  v143[1] = v141;

  v144 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v146 = *v144;
  v145 = v144[1];
  v147 = v193;
  swift_beginAccess();
  *v147 = v146;
  v147[1] = v145;

  v148 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v150 = *v148;
  v149 = v148[1];
  v151 = v194;
  swift_beginAccess();
  *v151 = v150;
  v151[1] = v149;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v152 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v154 = *v152;
  v153 = v152[1];
  v155 = v197;
  swift_beginAccess();
  v156 = v155;
  v157 = *v155;
  v158 = v156[1];
  *v156 = v154;
  v156[1] = v153;
  sub_26BCFEFC4(v154, v153);
  sub_26BCFF01C(v157, v158);
  v159 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  LOBYTE(v159) = *(a1 + v159);
  v160 = v198;
  swift_beginAccess();
  *(v1 + v160) = v159;
  swift_beginAccess();
  sub_26BD31AF8();

  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD6C1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26BD6C224()
{

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData + 8));
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BD6C558(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26BD6C608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    if (!(!v7 & v6))
    {
      switch(result)
      {
        case 1:
        case 2:
        case 4:
        case 6:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 15:
        case 30:
        case 40:
          goto LABEL_22;
        case 3:
          goto LABEL_19;
        case 5:
        case 41:
          goto LABEL_21;
        case 7:
        case 14:
          goto LABEL_20;
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
          continue;
        default:
          goto LABEL_25;
      }
    }

    switch(result)
    {
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'Z':
      case 'd':
      case 'e':
      case 'f':
      case 'g':
      case 'h':
      case 'n':
      case 'o':
        goto LABEL_22;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
        continue;
      case 'i':
LABEL_19:
        swift_beginAccess();
        sub_26BDA0970();
        goto LABEL_23;
      default:
        if (!(!v7 & v6))
        {
          switch(result)
          {
            case 120:
            case 121:
            case 122:
              goto LABEL_22;
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
              continue;
            case 130:
            case 131:
              goto LABEL_20;
            default:
LABEL_25:
              JUMPOUT(0);
          }
        }

        switch(result)
        {
          case 50:
          case 60:
LABEL_22:
            swift_beginAccess();
            sub_26BDA0990();
            goto LABEL_23;
          case 70:
LABEL_20:
            swift_beginAccess();
            sub_26BDA0810();
            sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA09B0();
            goto LABEL_23;
          case 140:
            swift_beginAccess();
            sub_26BDA0940();
LABEL_23:
            v5 = 0;
            swift_endAccess();
            continue;
          case 150:
LABEL_21:
            swift_beginAccess();
            sub_26BDA0920();
            goto LABEL_23;
          case 160:
            swift_beginAccess();
            sub_26BDA0810();
            sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA09B0();
            swift_endAccess();
            break;
        }

        break;
    }
  }
}

uint64_t sub_26BD6CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v164 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v162 = &v159 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v160 = &v159 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v166 = &v159 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v168 = &v159 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v159 - v18;
  v170 = sub_26BDA0810();
  v169 = *(v170 - 8);
  v20 = MEMORY[0x28223BE20](v170);
  v163 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v161 = &v159 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v159 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v165 = &v159 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v167 = &v159 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v159 - v30;
  swift_beginAccess();
  v32 = *(a1 + 24);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 40);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {

    sub_26BDA0A90();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 64);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_26BDA0AB0();
    if (!v4)
    {

      goto LABEL_19;
    }
  }

LABEL_19:
  swift_beginAccess();
  if (*(a1 + 72) != 1 || (result = sub_26BDA0A40(), !v4))
  {
    swift_beginAccess();
    v39 = *(a1 + 88);
    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      sub_26BDA0AB0();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    sub_26BD31AF8();
    v41 = v170;
    if (__swift_getEnumTagSinglePayload(v19, 1, v170) == 1)
    {
      sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v169 + 32))(v31, v19, v41);
      sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v4)
      {
        return (*(v169 + 8))(v31, v170);
      }

      v41 = v170;
      (*(v169 + 8))(v31, v170);
    }

    v42 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
    swift_beginAccess();
    v43 = *v42;
    v44 = v42[1];
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v46 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v50 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
    swift_beginAccess();
    v51 = *v50;
    v52 = v50[1];
    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v54 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
    swift_beginAccess();
    v55 = *v54;
    v56 = v54[1];
    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v58 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v62 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
    swift_beginAccess();
    v63 = *v62;
    v64 = v62[1];
    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    swift_beginAccess();
    v66 = v168;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v66, 1, v41) == 1)
    {
      sub_26BD04E80(v66, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v67 = v169;
      v68 = v167;
      (*(v169 + 32))();
      sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v5)
      {
        return (*(v67 + 8))(v68, v41);
      }

      (*(v67 + 8))(v68, v41);
    }

    v69 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
    swift_beginAccess();
    v70 = *v69;
    v71 = v69[1];
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v70 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v73 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
    swift_beginAccess();
    v74 = *v73;
    v75 = v73[1];
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v77 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
    swift_beginAccess();
    v78 = *v77;
    v79 = v77[1];
    v80 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v80 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {

      sub_26BDA0AB0();
      if (v5)
      {
      }
    }

    v81 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
    swift_beginAccess();
    if (*(a1 + v81) != 1 || (result = sub_26BDA0A40(), !v5))
    {
      v82 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
      swift_beginAccess();
      v83 = *v82;
      v84 = v82[1];
      v85 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v85 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v86 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
      swift_beginAccess();
      v87 = *v86;
      v88 = v86[1];
      v89 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v89 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      swift_beginAccess();
      v90 = v166;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v90, 1, v170) == 1)
      {
        sub_26BD04E80(v90, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v169 + 32))(v165, v90, v170);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA0AD0();
        if (v5)
        {
          return (*(v169 + 8))(v165, v170);
        }

        (*(v169 + 8))(v165, v170);
      }

      v91 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
      swift_beginAccess();
      v92 = *v91;
      v93 = v91[1];
      v94 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v94 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v94)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v95 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
      swift_beginAccess();
      v96 = *v95;
      v97 = v95[1];
      v98 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v98 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v98)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v99 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
      swift_beginAccess();
      v100 = *v99;
      v101 = v99[1];
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      if (v102)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v103 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
      swift_beginAccess();
      v104 = *v103;
      v105 = v103[1];
      v106 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v106 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v107 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
      swift_beginAccess();
      v108 = *v107;
      v109 = v107[1];
      v110 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v110 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v110)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v111 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
      swift_beginAccess();
      v112 = *v111;
      v113 = v111[1];
      v114 = HIBYTE(v113) & 0xF;
      if ((v113 & 0x2000000000000000) == 0)
      {
        v114 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v115 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
      swift_beginAccess();
      v116 = *v115;
      v117 = v115[1];
      v118 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v118 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v118)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v119 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
      swift_beginAccess();
      v120 = *v119;
      v121 = v119[1];
      v122 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v122 = v120 & 0xFFFFFFFFFFFFLL;
      }

      if (v122)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v123 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
      swift_beginAccess();
      v124 = *v123;
      v125 = v123[1];
      v126 = HIBYTE(v125) & 0xF;
      if ((v125 & 0x2000000000000000) == 0)
      {
        v126 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v126)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v127 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
      swift_beginAccess();
      v128 = *v127;
      v129 = v127[1];
      v130 = HIBYTE(v129) & 0xF;
      if ((v129 & 0x2000000000000000) == 0)
      {
        v130 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (v130)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v131 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
      swift_beginAccess();
      if (*(*(a1 + v131) + 16))
      {

        sub_26BDA0A90();
        if (v5)
        {
        }
      }

      v132 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
      swift_beginAccess();
      v133 = *v132;
      v134 = v132[1];
      v135 = HIBYTE(v134) & 0xF;
      if ((v134 & 0x2000000000000000) == 0)
      {
        v135 = v133 & 0xFFFFFFFFFFFFLL;
      }

      if (v135)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v136 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
      swift_beginAccess();
      v137 = *v136;
      v138 = v136[1];
      v139 = HIBYTE(v138) & 0xF;
      if ((v138 & 0x2000000000000000) == 0)
      {
        v139 = v137 & 0xFFFFFFFFFFFFLL;
      }

      if (v139)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v140 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
      swift_beginAccess();
      v141 = *v140;
      v142 = v140[1];
      v143 = HIBYTE(v142) & 0xF;
      if ((v142 & 0x2000000000000000) == 0)
      {
        v143 = v141 & 0xFFFFFFFFFFFFLL;
      }

      if (v143)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v144 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
      swift_beginAccess();
      v145 = *v144;
      v146 = v144[1];
      v147 = HIBYTE(v146) & 0xF;
      if ((v146 & 0x2000000000000000) == 0)
      {
        v147 = v145 & 0xFFFFFFFFFFFFLL;
      }

      if (v147)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      v148 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
      swift_beginAccess();
      v149 = *v148;
      v150 = v148[1];
      v151 = HIBYTE(v150) & 0xF;
      if ((v150 & 0x2000000000000000) == 0)
      {
        v151 = v149 & 0xFFFFFFFFFFFFLL;
      }

      if (v151)
      {

        sub_26BDA0AB0();
        if (v5)
        {
        }
      }

      swift_beginAccess();
      v152 = v160;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v152, 1, v170) == 1)
      {
        sub_26BD04E80(v160, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v169 + 32))(v159, v160, v170);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA0AD0();
        if (v5)
        {
          return (*(v169 + 8))(v159, v170);
        }

        (*(v169 + 8))(v159, v170);
      }

      swift_beginAccess();
      v153 = v162;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v153, 1, v170) == 1)
      {
        sub_26BD04E80(v162, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v169 + 32))(v161, v162, v170);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA0AD0();
        if (v5)
        {
          return (*(v169 + 8))(v161, v170);
        }

        (*(v169 + 8))(v161, v170);
      }

      v154 = a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData;
      swift_beginAccess();
      if (!sub_26BD50FE4(*v154, *(v154 + 8)))
      {
        v155 = *v154;
        v156 = *(v154 + 8);
        sub_26BCFEFC4(v155, v156);
        sub_26BDA0A60();
        if (v5)
        {
          return sub_26BCFF01C(v155, v156);
        }

        sub_26BCFF01C(v155, v156);
      }

      v157 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
      swift_beginAccess();
      if (*(a1 + v157) != 1 || (result = sub_26BDA0A40(), !v5))
      {
        swift_beginAccess();
        v158 = v164;
        sub_26BD31AF8();
        if (__swift_getEnumTagSinglePayload(v158, 1, v170) == 1)
        {
          return sub_26BD04E80(v164, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          (*(v169 + 32))(v163, v164, v170);
          sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
          sub_26BDA0AD0();
          return (*(v169 + 8))(v163, v170);
        }
      }
    }
  }

  return result;
}