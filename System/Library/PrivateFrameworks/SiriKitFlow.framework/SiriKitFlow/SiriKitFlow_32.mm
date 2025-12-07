uint64_t sub_1DCE440F4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_12_3();
  return v2(v1);
}

uint64_t sub_1DCE44144()
{
  OUTLINED_FUNCTION_16_42();
  v0 = OUTLINED_FUNCTION_7_1();
  return v1(v0);
}

uint64_t sub_1DCE44180()
{
  OUTLINED_FUNCTION_16_42();
  v0 = OUTLINED_FUNCTION_7_1();
  return v1(v0);
}

uint64_t sub_1DCE441BC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_12_3();
  return v2(v1);
}

uint64_t sub_1DCE44220()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_41_5(*(v0 + 16));
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_51(v1);

  return v3(v2);
}

uint64_t sub_1DCE4431C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();

  return v5(v2);
}

uint64_t sub_1DCE44418()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_41_5(*(v0 + 16));
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_51(v1);

  return v3(v2);
}

uint64_t sub_1DCE44514(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCC453B0;

  return sub_1DCE4384C(a1, a2, a3);
}

uint64_t sub_1DCE445C4(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCC453B0;

  return sub_1DCE43C40(a1, a2, a3);
}

uint64_t sub_1DCE44674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCC3C670;

  return sub_1DCE43E88(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCE44814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return sub_1DCE4420C();
}

uint64_t sub_1DCE448A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCE44404();
}

uint64_t dispatch thunk of PerformOperation.run(context:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DCB4AD3C;

  return v10(v6, v4, v1, v0);
}

uint64_t sub_1DCE44AAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  result = sub_1DD0DE97C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DCE44BDC()
{
  result = qword_1ECCA7F60;
  if (!qword_1ECCA7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F60);
  }

  return result;
}

uint64_t dispatch thunk of PersistenceHandler.save(flowDescriptor:variables:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_56_0(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_10_6(v5);

  return v7(v6);
}

uint64_t dispatch thunk of PersistenceHandler.restore(flowDescriptor:variableNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_56_0(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_10_6(v5);

  return v7(v6);
}

void sub_1DCE44EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD0FBF38;
  v9[5] = 0;
  v9[6] = a1;
  v9[7] = a2;
  sub_1DD0DCF8C();
}

void PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1DD0DE4BC();
  v7 = OUTLINED_FUNCTION_86_1();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD0FBF38;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE450AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()(a1, a2, a3);
}

uint64_t sub_1DCE4517C()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_32_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCE45268;
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCE45268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE45384()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE453F8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCC0BDCC;
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE454F8(uint64_t a1)
{
  v1[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  v1[47] = swift_task_alloc();
  v2 = sub_1DD0DB04C();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE45628, 0, 0);
}

void sub_1DCE45628()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  v0[51] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v1;
  sub_1DD0DCA6C();
}

uint64_t sub_1DCE4574C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 432) = v0;

  sub_1DCB185D0(v3 + 240, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCE45860()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7958]) init];
  sub_1DD0DB03C();
  v5 = sub_1DD0DAFFC();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_1DCB4D8E8(v5, v7, v4);

  sub_1DD0DD4CC();
}

uint64_t sub_1DCE45B50()
{
  OUTLINED_FUNCTION_39();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCE45BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - v9;
  (*(v7 + 16))(&v15 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DD0FBF38;
  v14[5] = 0;
  v14[6] = sub_1DCE4AAC4;
  v14[7] = v12;
  sub_1DCBC61E8();
}

uint64_t sub_1DCE45DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 8))(sub_1DCE4AAC4, v13, a3, a4);
}

uint64_t sub_1DCE45F40(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()();
}

uint64_t sub_1DCE45FD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE454F8(a1);
}

uint64_t PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE454F8(v1);
}

uint64_t sub_1DCE460FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse()(a1);
}

uint64_t sub_1DCE461B4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_22(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_53(v2);

  return sub_1DCE46858(v4, v5);
}

uint64_t sub_1DCE46264()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE46394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)(a1);
}

uint64_t sub_1DCE46450()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_22(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_53(v2);

  return sub_1DCE46858(v4, v5);
}

uint64_t sub_1DCE46500()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE4661C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE4668C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)();
}

uint64_t sub_1DCE4672C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE46858(a1, a2);
}

uint64_t PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCE46858(v5, v1);
}

uint64_t sub_1DCE46858(uint64_t a1, uint64_t a2)
{
  v2[40] = a1;
  v2[41] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  v2[45] = swift_task_alloc();
  v3 = sub_1DD0DB04C();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE469CC, 0, 0);
}

void sub_1DCE469CC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  v0[49] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE46B10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCE46C14()
{
  v1 = v0;
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  sub_1DD0DCA6C();
}

void sub_1DCE46F44()
{
  v15 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = sub_1DD0DD8FC();
  v4 = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_1DCB17C3C(v1, v2, &unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_86_1();
  if (__swift_getEnumTagSinglePayload(v6, v7, v3) == 1)
  {
    sub_1DCB185D0(*(v0 + 344), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v10 = 136315650;
      v11 = sub_1DD0DEC3C();
      v13 = sub_1DCB10E9C(v11, v12, &v14);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 168;
      *(v10 + 22) = 2080;
      *(v10 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &v14);
      _os_log_impl(&dword_1DCAFC000, v8, v9, "FatalError at %s:%lu - %s", v10, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    (*(v5 + 8))(*(v0 + 344), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCE471F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE4515C(a1);
}

uint64_t sub_1DCE472A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE45FD8(a1);
}

uint64_t sub_1DCE47350(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE46194(a1);
}

uint64_t sub_1DCE473FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return (sub_1DCE46430)(a1, a2);
}

uint64_t sub_1DCE474B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE4672C(a1, a2);
}

void sub_1DCE4757C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void PersonalDomainCheckFlow.init(strategy:)(void *a1)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCE47790(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

void sub_1DCE47888()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for IdentifiedUser(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[5] = swift_task_alloc();
  sub_1DD0DCFCC();
}

uint64_t sub_1DCE479EC()
{
  v1 = v0[3];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v16))
    {
      v17 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v17);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_21_31();
    v38 = v0[3];
    static ExecuteResponse.complete()();
    *(v38 + 16) = 1;

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v41 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v1[11];
  v10 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v9);
  (*(v10 + 184))(v9, v10);
  (*(v8 + 104))(v5, *off_1E86486A8, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  v11 = *(v41 + 48);
  sub_1DCB17C3C(v4, v6, &qword_1ECCA1BE8, &unk_1DD0EB600);
  sub_1DCB17C3C(v5, v6 + v11, &qword_1ECCA1BE8, &unk_1DD0EB600);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v12 = v0[13];
    v13 = v0[6];
    sub_1DCB185D0(v0[12], &qword_1ECCA1BE8, &unk_1DD0EB600);
    sub_1DCB185D0(v12, &qword_1ECCA1BE8, &unk_1DD0EB600);
    if (__swift_getEnumTagSinglePayload(v6 + v11, 1, v13) == 1)
    {
      sub_1DCB185D0(v0[10], &qword_1ECCA1BE8, &unk_1DD0EB600);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v23 = v0[6];
  sub_1DCB17C3C(v0[10], v0[11], &qword_1ECCA1BE8, &unk_1DD0EB600);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6 + v11, 1, v23);
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  if (EnumTagSinglePayload == 1)
  {
    v28 = v0[6];
    v29 = v0[7];
    sub_1DCB185D0(v0[12], &qword_1ECCA1BE8, &unk_1DD0EB600);
    sub_1DCB185D0(v25, &qword_1ECCA1BE8, &unk_1DD0EB600);
    (*(v29 + 8))(v27, v28);
LABEL_12:
    sub_1DCB185D0(v0[10], &qword_1ECCA7F68, &unk_1DD0FBFC8);
    goto LABEL_13;
  }

  v42 = v0[10];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  (*(v31 + 32))(v30, v6 + v11, v32);
  sub_1DCE49FB4(&qword_1ECCA7F70, 255, off_1E86486B0, off_1E86486B8);
  v33 = sub_1DD0DDF7C();
  v34 = *(v31 + 8);
  v34(v30, v32);
  sub_1DCB185D0(v26, &qword_1ECCA1BE8, &unk_1DD0EB600);
  sub_1DCB185D0(v25, &qword_1ECCA1BE8, &unk_1DD0EB600);
  v34(v27, v32);
  sub_1DCB185D0(v42, &qword_1ECCA1BE8, &unk_1DD0EB600);
  if ((v33 & 1) == 0)
  {
LABEL_13:
    sub_1DCE4757C();
  }

LABEL_15:
  v35 = swift_task_alloc();
  v0[14] = v35;
  *v35 = v0;
  v35[1] = sub_1DCE480E4;
  OUTLINED_FUNCTION_117();

  return sub_1DCE48410();
}

uint64_t sub_1DCE480E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE481CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_21_31();
  v11 = *(v10 + 24);
  static ExecuteResponse.complete()();
  *(v11 + 16) = 2;

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1DCE48268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE4836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_21_31();
  v11 = *(v10 + 24);
  static ExecuteResponse.complete()();
  *(v11 + 16) = 4;

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1DCE48424()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[12] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Device is a homepod and authentication mode is for secured requests. This setting is no longer supported, so this flow will exit with validation failure and a notification will be issued to the personal device.", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v7);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_62();
  }

  v13 = v0[11];

  v15 = v13[16];
  v14 = v13[17];
  __swift_project_boxed_opaque_existential_1(v13 + 13, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[13] = v16;
  *v16 = v17;
  v16[1] = sub_1DCE485CC;
  v18 = v0[11];

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FC330, v18, v15, v14);
}

uint64_t sub_1DCE485CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE486CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = v18[14];
  v22 = v21;
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v18[14];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    a9 = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "Unable to make response for unsupported personal domain authentication mode. Will ignore and Flow should exit. %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v31 = v18[14];
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1DCE48824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE48844, 0, 0);
}

uint64_t sub_1DCE48844()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  OUTLINED_FUNCTION_8();
  v9 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v5;
  *v5 = v6;
  v5[1] = sub_1DCB3F98C;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_1DCE48964(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE48978()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[10] = v6;
  *v6 = v7;
  v6[1] = sub_1DCE48A64;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FC340, v5, v4, v3);
}

uint64_t sub_1DCE48A64()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE48B9C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB185D0(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE48C04()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_1DCB185D0(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE48C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE48D28, 0, 0);
}

uint64_t sub_1DCE48D28()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  OUTLINED_FUNCTION_8();
  v10 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[23] = v5;
  *v5 = v6;
  v5[1] = sub_1DCE48E4C;
  v7 = v0[20];
  v8 = v0[18];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_1DCE48E4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

void sub_1DCE48F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v21 = sub_1DD0DD8FC();
  v18[25] = v21;
  v18[26] = __swift_project_value_buffer(v21, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE491A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCE492A8()
{
  v13 = v0;
  *(v0 + 56) = 0u;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1DCB185D0(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
  v5 = *(v2 - 8);
  (*(v5 + 16))(v3, v1, v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_1DCB17C3C(v3, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v2) == 1)
  {
    sub_1DCB185D0(*(v0 + 168), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = sub_1DD0DEC3C();
      v11 = sub_1DCB10E9C(v9, v10, &v12);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 348;
      *(v8 + 22) = 2080;
      *(v8 + 24) = sub_1DCB10E9C(0xD00000000000002ELL, 0x80000001DD11FB40, &v12);
      _os_log_impl(&dword_1DCAFC000, v6, v7, "FatalError at %s:%lu - %s", v8, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v5 + 8))(*(v0 + 168), *(v0 + 200));
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000002ELL, 0x80000001DD11FB40);
}

uint64_t sub_1DCE49558()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 144);

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  sub_1DCAFF9E8((v0 + 16), v1);

  OUTLINED_FUNCTION_29();

  return v2();
}

void *PersonalDomainCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return v0;
}

uint64_t PersonalDomainCheckFlow.__deallocating_deinit()
{
  PersonalDomainCheckFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCE496E8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  sub_1DCE47888();
}

BOOL sub_1DCE49770@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE4756C();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE4979C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE497BC, 0, 0);
}

uint64_t sub_1DCE497BC()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v1 = v0;
  v1[1] = sub_1DCE49890;
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1DCE49890()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCE499AC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[5];
  v10 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 8))(sub_1DCE4A8A4, v12, v9, v10);
}

uint64_t sub_1DCE49B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE4979C(a1);
}

uint64_t sub_1DCE49BC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)(a1);
}

void sub_1DCE49C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonalDomainCheckFlow();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  sub_1DCE49D9C(v9, v10, a3, a4);
}

void sub_1DCE49D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = a3;
  v7[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCE49F00(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiedUser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE49F5C(uint64_t a1, uint64_t a2)
{
  result = sub_1DCE49FB4(&qword_1ECCA7F78, a2, type metadata accessor for PersonalDomainCheckFlow, &protocol conformance descriptor for PersonalDomainCheckFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCE49FB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_24_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_24_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_24_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_8();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_8();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of PersonalDomainCheckFlow.__allocating_init(strategy:)()
{
  return (*(v0 + 168))();
}

{
  return (*(v0 + 176))();
}

uint64_t dispatch thunk of PersonalDomainCheckFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v6 = (*(*v0 + 200) + **(*v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for PersonalDomainCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCE4A844()
{
  result = qword_1ECCA7F80;
  if (!qword_1ECCA7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F80);
  }

  return result;
}

uint64_t sub_1DCE4A8A8()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCE48824(v4, v0);
}

uint64_t sub_1DCE4A930()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCE48C7C(v6, v2, v1);
}

uint64_t objectdestroy_41Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCE4AA58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v2);
  return sub_1DCD75750(a1);
}

uint64_t PlatformErrorFlow.__allocating_init(outputPublisher:deviceState:)(uint64_t a1, uint64_t a2)
{
  sub_1DCB28B08(a1, &v8, &qword_1ECCA57C8, &unk_1DD0F2D20);
  if (!v9)
  {
    sub_1DCB82888();
  }

  sub_1DCAFF9E8(&v8, &v11);
  sub_1DCB28B08(a2, &v6, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (!v7)
  {
    if (qword_1EDE46628 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDE46630;
    sub_1DCB4E718(&v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v9 = type metadata accessor for RefreshableDeviceState();
    v10 = &protocol witness table for RefreshableDeviceState;
    *&v8 = v4;
    sub_1DD0DCF8C();
  }

  sub_1DCB16D50(a2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB16D50(a1, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCAFF9E8(&v6, &v8);
  type metadata accessor for PlatformErrorFlow();
  swift_allocObject();
  return sub_1DCE4ACE0(&v11, &v8);
}

uint64_t sub_1DCE4ACE0(__int128 *a1, __int128 *a2)
{
  *(v2 + 16) = 3;
  sub_1DCAFF9E8(a1, v2 + 24);
  sub_1DCAFF9E8(a2, v2 + 64);
  return v2;
}

BOOL sub_1DCE4AD20(uint64_t a1)
{
  v3 = type metadata accessor for Input(0);
  static SiriKitPlatformErrorCase.fromParse(_:)(a1 + *(v3 + 20), &v10);
  v4 = v10;
  if (v10 == 3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "PlatformErrorFlow: Unknown input, returning false", v8, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    *(v1 + 16) = v10;
  }

  return v4 != 3;
}

uint64_t sub_1DCE4AE24()
{
  OUTLINED_FUNCTION_42();
  v1[36] = v2;
  v1[37] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for AceOutput(0);
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE4AF30, 0, 0);
}

uint64_t sub_1DCE4AF30()
{
  OUTLINED_FUNCTION_39();
  if (*(v0[37] + 16) != 3)
  {
    if (qword_1EDE48CE8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE57D40;
    v0[23] = type metadata accessor for CATTemplateExecutor();
    v0[24] = &off_1F58563F0;
    v0[20] = v7;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "PlatformErrorFlow: execute() called with no error case. Was on(input:) called?", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE4B190()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
    *(v3 + 360) = v0;
    v6 = sub_1DCE4B614;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 160));
    v6 = sub_1DCE4B2A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCE4B2A8()
{
  v7 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  (*(v4 + 96))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  *(v0 + 232) = 0;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCE4B4F8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1DCE4B9CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 240));
    v6 = sub_1DCE4B948;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCE4B614()
{
  v19 = v0;
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  sub_1DD0DEC1C();

  v17 = 0xD00000000000001CLL;
  v18 = 0x80000001DD11CA50;
  v0[35] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v3);

  v4 = v17;
  v5 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v7 = v0[38];
  v6 = v0[39];
  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v6, v9, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  sub_1DCB28B08(v6, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DCB16D50(v0[38], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {

    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v17);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 53;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(v4, v5, &v17);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v0[38], v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v4, v5);
}

uint64_t sub_1DCE4B948()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB6FFD8(*(v0 + 336));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE4B9CC()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB6FFD8(*(v0 + 336));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t PlatformErrorFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t PlatformErrorFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE4BB84()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCE4AE24();
}

unint64_t sub_1DCE4BC18(uint64_t a1)
{
  result = sub_1DCE4BC40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCE4BC40()
{
  result = qword_1ECCA7F98;
  if (!qword_1ECCA7F98)
  {
    type metadata accessor for PlatformErrorFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F98);
  }

  return result;
}

uint64_t dispatch thunk of PlatformErrorFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v7 = (*(*v0 + 152) + **(*v0 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v3);
}

unsigned __int8 *getEnumTagSinglePayload for PlatformErrorFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformErrorFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCE4BF90(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DCE4BFA4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t PluginAction.input.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = v1 + *(type metadata accessor for PluginAction(v2) + 20);

  return sub_1DCC174D4(v3, v0);
}

double PluginAction.userData.getter()
{
  type metadata accessor for PluginAction(0);

  return result;
}

void *PluginAction.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginAction(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t PluginAction.utterance.getter()
{
  type metadata accessor for PluginAction(0);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t PluginAction.actionParaphrase.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for PluginAction(v2);
  return sub_1DCB09970(v1 + *(v3 + 36), v0, &qword_1ECCA4B28, &unk_1DD0EE960);
}

uint64_t PluginAction.loggingId.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for PluginAction(v2);
  return sub_1DCB09970(v1 + *(v3 + 40), v0, &qword_1ECCA2618, &unk_1DD0E5C50);
}

uint64_t PluginAction.init(flowHandlerId:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for PluginAction(0);
  v9 = v8[10];
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(a4 + v9, v11, v12, v10);
  v13 = v8[9];
  v14 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(a4 + v13, v15, v16, v14);
  *a4 = a1;
  a4[1] = a2;
  result = sub_1DCC333DC(a3, a4 + v8[5]);
  *(a4 + v8[6]) = 0;
  *(a4 + v8[7]) = 0;
  v18 = (a4 + v8[8]);
  *v18 = 0;
  v18[1] = 0;
  *(a4 + v8[11]) = 1;
  return result;
}

void PluginAction.init(flowHandlerId:input:speechPackage:userData:loggingId:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_82();
  v9 = v8;
  v10 = type metadata accessor for PluginAction(0);
  v11 = v10[9];
  v12 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(v9 + v11, v13, v14, v12);
  *v9 = v3;
  v9[1] = v2;
  sub_1DCC333DC(v1, v9 + v10[5]);
  *(v9 + v10[6]) = v7;
  *(v9 + v10[7]) = v0;
  v15 = (v9 + v10[8]);
  *v15 = 0;
  v15[1] = 0;
  sub_1DCC91890(v5, v9 + v10[10], &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v9 + v10[11]) = 1;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:preventCircularRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = OUTLINED_FUNCTION_22_31();
  v7 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_12_51(v7);
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_51(v8);
  OUTLINED_FUNCTION_30_29();
  *(v4 + *(v6 + 24)) = 0;
  OUTLINED_FUNCTION_13_54();
  *(v4 + v9) = a4;
}

void PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:preventCircularRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_10_58();
  *v27 = v25;
  v27[1] = v26;
  v28 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_28_26(v28);
  OUTLINED_FUNCTION_8_61();
  sub_1DCC91890(v22, v23 + v29, &qword_1ECCA4B28, &unk_1DD0EE960);
  sub_1DCC91890(a21, v23 + *(v24 + 40), &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v23 + *(v24 + 44)) = a22;
  OUTLINED_FUNCTION_49();
}

uint64_t PluginAction.init(flowHandlerId:input:loggingId:)()
{
  OUTLINED_FUNCTION_27_27();
  v5 = OUTLINED_FUNCTION_4();
  v6 = type metadata accessor for PluginAction(v5);
  v7 = v6[10];
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 32))(&v0[v7], v1, v8);
  __swift_storeEnumTagSinglePayload(&v0[v7], 0, 1, v8);
  v10 = v6[9];
  v11 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(&v0[v10], v12, v13, v11);
  *v0 = v4;
  *(v0 + 1) = v3;
  result = sub_1DCC333DC(v2, &v0[v6[5]]);
  *&v0[v6[6]] = 0;
  *&v0[v6[7]] = 0;
  v15 = &v0[v6[8]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v0[v6[11]] = 1;
  return result;
}

void PluginAction.init(flowHandlerId:input:loggingId:preventCircularRedirect:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_4_82();
  v7 = v6;
  v8 = type metadata accessor for PluginAction(0);
  v9 = v8[9];
  v10 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(&v7[v9], v11, v12, v10);
  v13 = v8[10];
  v14 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  (*(v15 + 32))(&v7[v13], v0, v14);
  __swift_storeEnumTagSinglePayload(&v7[v13], 0, 1, v14);
  *v7 = v3;
  *(v7 + 1) = v2;
  sub_1DCC333DC(v1, &v7[v8[5]]);
  *&v7[v8[6]] = 0;
  *&v7[v8[7]] = 0;
  v16 = &v7[v8[8]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v7[v8[11]] = v5;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:userData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_22_31();
  v7 = *(v6 + 40);
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(v4 + v7, v9, v10, v8);
  v11 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_12_51(v11);
  OUTLINED_FUNCTION_30_29();
  *(v4 + *(v6 + 24)) = a4;
  OUTLINED_FUNCTION_13_54();
  *(v4 + v12) = 1;
}

void PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_10_58();
  *v26 = v24;
  v26[1] = v25;
  v27 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_28_26(v27);
  OUTLINED_FUNCTION_8_61();
  sub_1DCC91890(v21, v22 + v28, &qword_1ECCA4B28, &unk_1DD0EE960);
  sub_1DCC91890(a21, v22 + *(v23 + 40), &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v22 + *(v23 + 44)) = 1;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:speechPackage:userData:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_27_27();
  v7 = v6;
  v8 = type metadata accessor for PluginAction(0);
  v9 = v8[10];
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(v7 + v9, v11, v12, v10);
  v13 = v8[9];
  v14 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(v7 + v13, v15, v16, v14);
  *v7 = v3;
  v7[1] = v2;
  sub_1DCC333DC(v1, v7 + v8[5]);
  *(v7 + v8[6]) = v5;
  *(v7 + v8[7]) = v0;
  v17 = (v7 + v8[8]);
  *v17 = 0;
  v17[1] = 0;
  *(v7 + v8[11]) = 1;
  OUTLINED_FUNCTION_49();
}

uint64_t PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for PluginAction(0);
  sub_1DCC333DC(a3, a7 + v12[5]);
  *(a7 + v12[6]) = 0;
  *(a7 + v12[7]) = a4;
  v13 = (a7 + v12[8]);
  *v13 = 0;
  v13[1] = 0;
  sub_1DCC91890(a5, a7 + v12[9], &qword_1ECCA4B28, &unk_1DD0EE960);
  result = sub_1DCC91890(a6, a7 + v12[10], &qword_1ECCA2618, &unk_1DD0E5C50);
  *(a7 + v12[11]) = 1;
  return result;
}

void PluginAction.description.getter()
{
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001CLL, 0x80000001DD11FC90);
  MEMORY[0x1E12A6780](*v0, v0[1]);
  MEMORY[0x1E12A6780](0x3A7475706E69202CLL, 0xE900000000000020);
  v5 = type metadata accessor for PluginAction(0);
  v6 = Input.description.getter();
  MEMORY[0x1E12A6780](v6);

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11FCB0);
  v13 = *(v0 + v5[7]);
  v7 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4920, &qword_1DD0ED848);
  v8 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v8);

  MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD11FCD0);
  sub_1DCB09970(v0 + v5[9], v4, &qword_1ECCA4B28, &unk_1DD0EE960);
  v9 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v9);

  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD11FCF0);
  if (*(v0 + v5[11]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v5[11]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v10, v11);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE4CA6C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_32();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_7_8(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_7_8(0x7475706E69, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_7_8(0x6174614472657375, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000011 && 0x80000001DD11FD10 == a2;
        if (v10 || (OUTLINED_FUNCTION_7_8(0xD000000000000011, 0x80000001DD11FD10) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000010 && 0x80000001DD11FD30 == a2;
          if (v11 || (OUTLINED_FUNCTION_7_8(0xD000000000000010, 0x80000001DD11FD30) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x49676E6967676F6CLL && a2 == 0xE900000000000064;
            if (v12 || (OUTLINED_FUNCTION_7_8(0x49676E6967676F6CLL, 0xE900000000000064) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
              if (v13 || (OUTLINED_FUNCTION_7_8(0x636E617265747475, 0xE900000000000065) & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x80000001DD11FD50 == a2)
              {

                return 7;
              }

              else
              {
                v15 = OUTLINED_FUNCTION_7_8(0xD000000000000017, 0x80000001DD11FD50);

                if (v15)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DCE4CC7C()
{
  result = OUTLINED_FUNCTION_21_32();
  switch(v1)
  {
    case 1:
      result = 0x7475706E69;
      break;
    case 2:
      result = 0x6174614472657375;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x49676E6967676F6CLL;
      break;
    case 6:
      result = 0x636E617265747475;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE4CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE4CA6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE4CDB8(uint64_t a1)
{
  v2 = sub_1DCE4D684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE4CDF4(uint64_t a1)
{
  v2 = sub_1DCE4D684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v74 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v61 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v61 - v10;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7FA0, &qword_1DD0FC4B8);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DCE4D684();
  v17 = v69;
  sub_1DD0DF23C();
  if (!v17)
  {
    v69 = v11;
    LOBYTE(v72) = 0;
    OUTLINED_FUNCTION_9_60();
    v18 = sub_1DD0DEF0C();
    v20 = v19;
    v66 = v18;
    LOBYTE(v72) = 1;
    OUTLINED_FUNCTION_6_57();
    sub_1DCE4DD64(v21, v22, &protocol conformance descriptor for Input);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEF4C();
    v23 = v3;
    v65 = v20;
    type metadata accessor for ActionParaphrase(0);
    LOBYTE(v72) = 4;
    OUTLINED_FUNCTION_4_84();
    sub_1DCE4DD64(v24, v25, &protocol conformance descriptor for ActionParaphrase);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    sub_1DD0DB04C();
    LOBYTE(v72) = 5;
    OUTLINED_FUNCTION_7_52();
    sub_1DCE4DD64(v26, v27, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    LOBYTE(v71) = 2;
    v28 = sub_1DCB5414C();
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    v63 = v28;
    v29 = v2;
    v64 = v73;
    if (v73 >> 60 == 15)
    {
      v64 = 0;
    }

    else
    {
      v30 = v23;
      v31 = v72;
      v32 = objc_opt_self();
      v33 = sub_1DD0DAEFC();
      v72 = 0;
      v34 = [v32 propertyListWithData:v33 options:0 format:0 error:&v72];

      if (!v34)
      {
        v42 = v72;

        sub_1DD0DAE0C();

        swift_willThrow();
        sub_1DCB2C520(v31, v64);
        sub_1DCB0E9D8(v68, &qword_1ECCA2618, &unk_1DD0E5C50);
        sub_1DCB0E9D8(v69, &qword_1ECCA4B28, &unk_1DD0EE960);
        OUTLINED_FUNCTION_0_81();
        sub_1DCE50774(v30, v52);
        v53 = OUTLINED_FUNCTION_25_22();
        v38(v53, v29);
        return __swift_destroy_boxed_opaque_existential_1Tm(v70);
      }

      v35 = v72;
      sub_1DD0DEA6C();
      sub_1DCB2C520(v31, v64);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      v36 = swift_dynamicCast();
      v37 = v71;
      if (!v36)
      {
        v37 = 0;
      }

      v64 = v37;
      v23 = v30;
    }

    LOBYTE(v71) = 3;
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    v63 = v23;
    v40 = v73;
    if (v73 >> 60 == 15)
    {
      v41 = 0;
    }

    else
    {
      v43 = v72;
      v44 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      sub_1DCC91E80(v43, v40);
      v45 = sub_1DCE2EE68(v43, v40);
      sub_1DCE4DD20();
      v46 = v43;
      sub_1DD0DDFBC();
      v47 = sub_1DD0DE88C();
      sub_1DCB2C520(v46, v40);
      v41 = v47;
    }

    v48 = v68;
    LOBYTE(v72) = 6;
    OUTLINED_FUNCTION_9_60();
    v49 = sub_1DD0DEEDC();
    v51 = v50;
    v62 = v49;
    LOBYTE(v72) = 7;
    OUTLINED_FUNCTION_9_60();
    v54 = sub_1DD0DEF1C();
    v55 = OUTLINED_FUNCTION_25_22();
    v56(v55, v29);
    v57 = type metadata accessor for PluginAction(0);
    v58 = v67;
    sub_1DCC333DC(v63, v67 + v57[5]);
    sub_1DCC91890(v69, v58 + v57[9], &qword_1ECCA4B28, &unk_1DD0EE960);
    sub_1DCC91890(v48, v58 + v57[10], &qword_1ECCA2618, &unk_1DD0E5C50);
    v59 = v65;
    *v58 = v66;
    v58[1] = v59;
    *(v58 + v57[6]) = v64;
    *(v58 + v57[7]) = v41;
    v60 = (v58 + v57[8]);
    *v60 = v62;
    v60[1] = v51;
    *(v58 + v57[11]) = v54 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

unint64_t sub_1DCE4D684()
{
  result = qword_1ECCA7FA8;
  if (!qword_1ECCA7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FA8);
  }

  return result;
}

uint64_t PluginAction.encode(to:)(void *a1)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7FC0, &qword_1DD0FC4C0);
  OUTLINED_FUNCTION_22_0();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE4D684();
  sub_1DD0DF24C();
  LOBYTE(v31) = 0;
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFBC();
  if (!v3)
  {
    v12 = type metadata accessor for PluginAction(0);
    LOBYTE(v31) = 1;
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_6_57();
    sub_1DCE4DD64(v13, v14, &protocol conformance descriptor for Input);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFFC();
    LOBYTE(v31) = 5;
    sub_1DD0DB04C();
    OUTLINED_FUNCTION_7_52();
    sub_1DCE4DD64(v15, v16, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFAC();
    LOBYTE(v31) = 4;
    type metadata accessor for ActionParaphrase(0);
    OUTLINED_FUNCTION_4_84();
    sub_1DCE4DD64(v17, v18, &protocol conformance descriptor for ActionParaphrase);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFAC();
    v20 = *(v4 + *(v12 + 28));
    if (v20)
    {
      v21 = objc_allocWithZone(MEMORY[0x1E696ACC8]);
      v22 = v20;
      v23 = [v21 initRequiringSecureCoding_];
      v24 = *MEMORY[0x1E696A508];
      v30 = v22;
      [v23 encodeObject:v22 forKey:v24];
      v29 = v23;
      v25 = [v23 encodedData];
      v26 = sub_1DD0DAF2C();
      v28 = v27;

      v31 = v26;
      v32 = v28;
      v33 = 3;
      sub_1DCB51540();
      OUTLINED_FUNCTION_56_2();
      sub_1DD0DEFFC();
      sub_1DCB21A14(v31, v32);
    }

    LOBYTE(v31) = 6;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEF8C();
    LOBYTE(v31) = 7;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFCC();
  }

  return (*(v7 + 8))(v11, v1);
}

uint64_t PluginAction.init(data:)(uint64_t a1, unint64_t a2)
{
  v7 = OUTLINED_FUNCTION_4();
  v8 = type metadata accessor for PluginAction(v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16_44();
  sub_1DD0DAC9C();
  swift_allocObject();
  sub_1DD0DAC8C();
  OUTLINED_FUNCTION_5_78();
  sub_1DCE4DD64(v11, v12, &protocol conformance descriptor for PluginAction);
  sub_1DD0DAC7C();

  result = sub_1DCB21A14(a1, a2);
  if (!v3)
  {
    v14 = v4[1];
    v23 = *v4;
    sub_1DCC174D4(v4 + v8[5], v2 + v8[5]);
    v15 = *(v4 + v8[7]);
    v16 = (v4 + v8[8]);
    v17 = v16[1];
    v22 = *v16;
    sub_1DCB09970(v4 + v8[9], v2 + v8[9], &qword_1ECCA4B28, &unk_1DD0EE960);
    v18 = *(v4 + v8[6]);
    sub_1DCB09970(v4 + v8[10], v2 + v8[10], &qword_1ECCA2618, &unk_1DD0E5C50);
    v19 = *(v4 + v8[11]);

    v20 = v15;

    result = sub_1DCE50774(v4, type metadata accessor for PluginAction);
    *v2 = v23;
    v2[1] = v14;
    *(v2 + v8[6]) = v18;
    *(v2 + v8[7]) = v15;
    v21 = (v2 + v8[8]);
    *v21 = v22;
    v21[1] = v17;
    *(v2 + v8[11]) = v19;
  }

  return result;
}

uint64_t PluginAction.serialize()()
{
  sub_1DD0DACDC();
  swift_allocObject();
  sub_1DD0DACCC();
  sub_1DD0DACAC();
  type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_5_78();
  sub_1DCE4DD64(v0, v1, &protocol conformance descriptor for PluginAction);
  v2 = sub_1DD0DACBC();

  return v2;
}

unint64_t sub_1DCE4DD20()
{
  result = qword_1ECCA7FB8;
  if (!qword_1ECCA7FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA7FB8);
  }

  return result;
}

uint64_t sub_1DCE4DD64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *initializeBufferWithCopyOfBuffer for PluginAction(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = sub_1DD0DB04C();
  v11 = *(*(v10 - 8) + 16);

  v123 = v11;
  v11(v8, v9, v10);
  v12 = type metadata accessor for Input(0);
  v13 = v12[5];
  v14 = &v8[v13];
  v15 = &v9[v13];
  v16 = type metadata accessor for Parse(0);
  v124 = v10;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v17 = sub_1DD0DC76C();
      (*(*(v17 - 8) + 16))(v14, v15, v17);
      goto LABEL_27;
    case 1u:
      v25 = sub_1DD0DC76C();
      (*(*(v25 - 8) + 16))(v14, v15, v25);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v14[*(v26 + 48)] = *&v15[*(v26 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v20 = *(v15 + 1);
      *v14 = *v15;
      *(v14 + 1) = v20;
      *(v14 + 2) = *(v15 + 2);

      goto LABEL_27;
    case 3u:
      *v14 = *v15;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v18 = sub_1DD0DB1EC();
      (*(*(v18 - 8) + 16))(v14, v15, v18);
      goto LABEL_27;
    case 5u:
      v27 = *v15;
      *v14 = *v15;
      v28 = v27;
      goto LABEL_27;
    case 6u:
      v29 = sub_1DD0DB4BC();
      (*(*(v29 - 8) + 16))(v14, v15, v29);
      v120 = type metadata accessor for USOParse(0);
      v30 = v120[5];
      v31 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v31))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v14[v30], &v15[v30], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(*(v31 - 8) + 16))(&v14[v30], &v15[v30], v31);
        __swift_storeEnumTagSinglePayload(&v14[v30], 0, 1, v31);
      }

      v62 = v120[6];
      v63 = &v14[v62];
      v64 = &v15[v62];
      v65 = *(v64 + 1);
      *v63 = *v64;
      *(v63 + 1) = v65;
      v66 = v120[7];
      v67 = &v14[v66];
      v68 = &v15[v66];
      v67[4] = v68[4];
      *v67 = *v68;

      goto LABEL_27;
    case 7u:
      v21 = sub_1DD0DB4BC();
      (*(*(v21 - 8) + 16))(v14, v15, v21);
      v119 = type metadata accessor for USOParse(0);
      v22 = v119[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v15[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v14[v22], &v15[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&v14[v22], &v15[v22], v23);
        __swift_storeEnumTagSinglePayload(&v14[v22], 0, 1, v23);
      }

      v43 = v119[6];
      v44 = &v14[v43];
      v45 = &v15[v43];
      v117 = *(v45 + 1);
      *v44 = *v45;
      *(v44 + 1) = v117;
      v46 = v119[7];
      v47 = &v14[v46];
      v48 = &v15[v46];
      v47[4] = v48[4];
      *v47 = *v48;
      v49 = type metadata accessor for LinkParse(0);
      v50 = v49[5];
      v51 = &v14[v50];
      v52 = &v15[v50];
      v53 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v53;
      v54 = v49[6];
      v55 = &v14[v54];
      v56 = &v15[v54];
      v57 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = v49[7];
      v59 = &v14[v58];
      v60 = &v15[v58];
      v61 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v61;

      goto LABEL_27;
    case 8u:
      v33 = sub_1DD0DD12C();
      (*(*(v33 - 8) + 16))(v14, v15, v33);
      v34 = type metadata accessor for NLRouterParse(0);
      v35 = *(v34 + 20);
      v36 = &v14[v35];
      v37 = &v15[v35];
      v38 = *(v37 + 1);
      *v36 = *v37;
      *(v36 + 1) = v38;
      v114 = v34;
      v39 = *(v34 + 24);
      v121 = &v14[v39];
      v40 = &v15[v39];
      v115 = type metadata accessor for USOParse(0);

      v116 = v40;
      if (__swift_getEnumTagSinglePayload(v40, 1, v115))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v121, v40, *(*(v41 - 8) + 64));
        v42 = v114;
      }

      else
      {
        v69 = sub_1DD0DB4BC();
        (*(*(v69 - 8) + 16))(v121, v40, v69);
        v70 = v115[5];
        v71 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v116[v70], 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v121[v70], &v116[v70], *(*(v72 - 8) + 64));
        }

        else
        {
          (*(*(v71 - 8) + 16))(&v121[v70], &v116[v70], v71);
          __swift_storeEnumTagSinglePayload(&v121[v70], 0, 1, v71);
        }

        v73 = v115[6];
        v74 = &v121[v73];
        v75 = &v116[v73];
        v76 = *(v75 + 1);
        *v74 = *v75;
        *(v74 + 1) = v76;
        v77 = v115[7];
        v78 = &v121[v77];
        v79 = &v116[v77];
        v78[4] = v79[4];
        *v78 = *v79;

        __swift_storeEnumTagSinglePayload(v121, 0, 1, v115);
        v42 = v114;
      }

      v80 = *(v42 + 28);
      v81 = *&v15[v80];
      *&v14[v80] = v81;
      v82 = v81;
      goto LABEL_27;
    case 9u:
      v19 = sub_1DD0DD08C();
      (*(*(v19 - 8) + 16))(v14, v15, v19);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v14, v15, *(*(v16 - 8) + 64));
      break;
  }

  *&v8[v12[6]] = *&v9[v12[6]];
  v83 = v12[7];
  v84 = &v8[v83];
  v85 = &v9[v83];
  v86 = *&v9[v83 + 24];

  if (v86)
  {
    v87 = *(v85 + 4);
    *(v84 + 3) = v86;
    *(v84 + 4) = v87;
    (**(v86 - 8))(v84, v85, v86);
  }

  else
  {
    v88 = *(v85 + 1);
    *v84 = *v85;
    *(v84 + 1) = v88;
    *(v84 + 4) = *(v85 + 4);
  }

  v8[v12[8]] = v9[v12[8]];
  v89 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v90 = *&a2[v89];
  *&a1[v89] = v90;
  v91 = a3[8];
  v92 = a3[9];
  v93 = &a1[v91];
  v94 = &a2[v91];
  v95 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 1) = v95;
  v96 = &a1[v92];
  v97 = &a2[v92];
  v98 = type metadata accessor for ActionParaphrase(0);

  v99 = v90;

  if (__swift_getEnumTagSinglePayload(v97, 1, v98))
  {
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v96, v97, *(*(v100 - 8) + 64));
    v101 = v124;
  }

  else
  {
    v102 = *(v97 + 1);
    *v96 = *v97;
    *(v96 + 1) = v102;
    v103 = *(v98 + 20);
    v104 = &v96[v103];
    v105 = &v97[v103];
    v106 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

    if (__swift_getEnumTagSinglePayload(v105, 1, v106))
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v104, v105, *(*(v107 - 8) + 64));
    }

    else
    {
      v108 = *(v105 + 1);
      *v104 = *v105;
      *(v104 + 1) = v108;
      v109 = *(v105 + 3);
      *(v104 + 2) = *(v105 + 2);
      *(v104 + 3) = v109;
      v122 = *(v106 + 24);
      v110 = sub_1DD0DB66C();
      v118 = *(*(v110 - 8) + 16);

      v118(&v104[v122], &v105[v122], v110);
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
    }

    v101 = v124;
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v98);
  }

  v111 = a3[10];
  if (__swift_getEnumTagSinglePayload(&a2[v111], 1, v101))
  {
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v111], &a2[v111], *(*(v112 - 8) + 64));
  }

  else
  {
    v123(&a1[v111], &a2[v111], v101);
    __swift_storeEnumTagSinglePayload(&a1[v111], 0, 1, v101);
  }

  a1[a3[11]] = a2[a3[11]];
  return a1;
}

uint64_t destroy for PluginAction(uint64_t a1, int *a2)
{

  v4 = a1 + a2[5];
  v5 = sub_1DD0DB04C();
  v36 = *(*(v5 - 8) + 8);
  v36(v4, v5);
  v6 = type metadata accessor for Input(0);
  v7 = (v4 + *(v6 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 8))(v7, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_15;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      v8 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v13 = *v7;
      goto LABEL_21;
    case 6u:
      v14 = sub_1DD0DB4BC();
      (*(*(v14 - 8) + 8))(v7, v14);
      v15 = *(type metadata accessor for USOParse(0) + 20);
      v16 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v7 + v15, 1, v16))
      {
        (*(*(v16 - 8) + 8))(v7 + v15, v16);
      }

      goto LABEL_15;
    case 7u:
      v9 = sub_1DD0DB4BC();
      (*(*(v9 - 8) + 8))(v7, v9);
      v10 = *(type metadata accessor for USOParse(0) + 20);
      v11 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v7 + v10, 1, v11))
      {
        (*(*(v11 - 8) + 8))(v7 + v10, v11);
      }

      type metadata accessor for LinkParse(0);

LABEL_15:

      break;
    case 8u:
      v17 = sub_1DD0DD12C();
      (*(*(v17 - 8) + 8))(v7, v17);
      v18 = type metadata accessor for NLRouterParse(0);

      v19 = v7 + *(v18 + 24);
      v20 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v19, 1, v20))
      {
        v21 = sub_1DD0DB4BC();
        (*(*(v21 - 8) + 8))(v19, v21);
        v22 = *(v20 + 20);
        v23 = sub_1DD0DB3EC();
        v35 = v22;
        v24 = v19 + v22;
        v25 = v23;
        if (!__swift_getEnumTagSinglePayload(v24, 1, v23))
        {
          (*(*(v25 - 8) + 8))(v19 + v35, v25);
        }
      }

      v13 = *(v7 + *(v18 + 28));
LABEL_21:

      break;
    case 9u:
      v8 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v8 - 8) + 8))(v7, v8);
      break;
    default:
      break;
  }

  v26 = (v4 + *(v6 + 28));
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v27 = a1 + a2[9];
  v28 = type metadata accessor for ActionParaphrase(0);
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {

    v29 = v27 + *(v28 + 20);
    v30 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (!__swift_getEnumTagSinglePayload(v29, 1, v30))
    {

      v31 = *(v30 + 24);
      v32 = sub_1DD0DB66C();
      (*(*(v32 - 8) + 8))(v29 + v31, v32);
    }
  }

  v33 = a2[10];
  result = __swift_getEnumTagSinglePayload(a1 + v33, 1, v5);
  if (!result)
  {

    return (v36)(a1 + v33, v5);
  }

  return result;
}

char *initializeWithCopy for PluginAction(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1DD0DB04C();
  v10 = *(*(v9 - 8) + 16);

  v126 = v10;
  v127 = v9;
  v10(v7, v8, v9);
  v11 = type metadata accessor for Input(0);
  v12 = v11[5];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(v13, v14, v16);
      goto LABEL_25;
    case 1u:
      v24 = sub_1DD0DC76C();
      (*(*(v24 - 8) + 16))(v13, v14, v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v13[*(v25 + 48)] = *&v14[*(v25 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v19 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v19;
      *(v13 + 2) = *(v14 + 2);

      goto LABEL_25;
    case 3u:
      *v13 = *v14;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v17 = sub_1DD0DB1EC();
      (*(*(v17 - 8) + 16))(v13, v14, v17);
      goto LABEL_25;
    case 5u:
      v26 = *v14;
      *v13 = *v14;
      v27 = v26;
      goto LABEL_25;
    case 6u:
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 16))(v13, v14, v28);
      __dsta = type metadata accessor for USOParse(0);
      v29 = __dsta[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v14[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v13[v29], &v14[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 16))(&v13[v29], &v14[v29], v30);
        __swift_storeEnumTagSinglePayload(&v13[v29], 0, 1, v30);
      }

      v62 = __dsta[6];
      v63 = &v13[v62];
      v64 = &v14[v62];
      v65 = *(v64 + 1);
      *v63 = *v64;
      *(v63 + 1) = v65;
      v66 = __dsta[7];
      v67 = &v13[v66];
      v68 = &v14[v66];
      v67[4] = v68[4];
      *v67 = *v68;

      goto LABEL_25;
    case 7u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(v13, v14, v20);
      __dst = type metadata accessor for USOParse(0);
      v21 = __dst[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v14[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v13[v21], &v14[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 16))(&v13[v21], &v14[v21], v22);
        __swift_storeEnumTagSinglePayload(&v13[v21], 0, 1, v22);
      }

      v42 = __dst[6];
      v43 = &v13[v42];
      v44 = &v14[v42];
      v45 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v45;
      v46 = __dst[7];
      v47 = &v13[v46];
      v48 = &v14[v46];
      v47[4] = v48[4];
      *v47 = *v48;
      v49 = type metadata accessor for LinkParse(0);
      v50 = v49[5];
      v51 = &v13[v50];
      v52 = &v14[v50];
      v53 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v53;
      v54 = v49[6];
      v55 = &v13[v54];
      v56 = &v14[v54];
      v57 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = v49[7];
      v59 = &v13[v58];
      v60 = &v14[v58];
      v61 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v61;

      goto LABEL_25;
    case 8u:
      v32 = sub_1DD0DD12C();
      (*(*(v32 - 8) + 16))(v13, v14, v32);
      v33 = type metadata accessor for NLRouterParse(0);
      v34 = *(v33 + 20);
      v35 = &v13[v34];
      v36 = &v14[v34];
      v37 = *(v36 + 1);
      *v35 = *v36;
      *(v35 + 1) = v37;
      v120 = v33;
      v38 = *(v33 + 24);
      __dstb = &v13[v38];
      v39 = &v14[v38];
      v40 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v39, 1, v40))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dstb, v39, *(*(v41 - 8) + 64));
      }

      else
      {
        v69 = sub_1DD0DB4BC();
        (*(*(v69 - 8) + 16))(__dstb, v39, v69);
        v119 = v40;
        v70 = *(v40 + 20);
        v71 = sub_1DD0DB3EC();
        v72 = v39;
        v73 = v71;
        v118 = v72;
        if (__swift_getEnumTagSinglePayload(&v72[v70], 1, v71))
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          v75 = v118;
          memcpy(&__dstb[v70], &v118[v70], *(*(v74 - 8) + 64));
        }

        else
        {
          (*(*(v73 - 8) + 16))(&__dstb[v70], &v118[v70], v73);
          v76 = v73;
          v75 = v118;
          __swift_storeEnumTagSinglePayload(&__dstb[v70], 0, 1, v76);
        }

        v77 = *(v119 + 24);
        v78 = &__dstb[v77];
        v79 = &v75[v77];
        v80 = *(v79 + 1);
        *v78 = *v79;
        *(v78 + 1) = v80;
        v81 = *(v119 + 28);
        v82 = &__dstb[v81];
        v83 = &v75[v81];
        v82[4] = v83[4];
        *v82 = *v83;

        __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v119);
      }

      v84 = *(v120 + 28);
      v85 = *&v14[v84];
      *&v13[v84] = v85;
      v86 = v85;
      goto LABEL_25;
    case 9u:
      v18 = sub_1DD0DD08C();
      (*(*(v18 - 8) + 16))(v13, v14, v18);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v13, v14, *(*(v15 - 8) + 64));
      break;
  }

  *&v7[v11[6]] = *&v8[v11[6]];
  v87 = v11[7];
  v88 = &v7[v87];
  v89 = &v8[v87];
  v90 = *&v8[v87 + 24];

  v91 = a3;
  if (v90)
  {
    v92 = *(v89 + 4);
    *(v88 + 3) = v90;
    *(v88 + 4) = v92;
    (**(v90 - 8))(v88, v89, v90);
  }

  else
  {
    v93 = *(v89 + 1);
    *v88 = *v89;
    *(v88 + 1) = v93;
    *(v88 + 4) = *(v89 + 4);
  }

  v7[v11[8]] = v8[v11[8]];
  v94 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v95 = *&a2[v94];
  *&a1[v94] = v95;
  v96 = a3[8];
  v97 = a3[9];
  v98 = &a1[v96];
  v99 = &a2[v96];
  v100 = *(v99 + 1);
  *v98 = *v99;
  *(v98 + 1) = v100;
  v101 = &a1[v97];
  v102 = &a2[v97];
  v103 = type metadata accessor for ActionParaphrase(0);

  v104 = v95;

  if (__swift_getEnumTagSinglePayload(v102, 1, v103))
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v101, v102, *(*(v105 - 8) + 64));
  }

  else
  {
    v106 = *(v102 + 1);
    *v101 = *v102;
    *(v101 + 1) = v106;
    v107 = *(v103 + 20);
    v108 = &v101[v107];
    v109 = &v102[v107];
    v110 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

    if (__swift_getEnumTagSinglePayload(v109, 1, v110))
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v108, v109, *(*(v111 - 8) + 64));
    }

    else
    {
      v112 = *(v109 + 1);
      *v108 = *v109;
      *(v108 + 1) = v112;
      v113 = *(v109 + 3);
      *(v108 + 2) = *(v109 + 2);
      *(v108 + 3) = v113;
      __dstc = *(v110 + 24);
      v114 = sub_1DD0DB66C();
      v121 = *(*(v114 - 8) + 16);

      v91 = a3;

      v121(&__dstc[v108], &__dstc[v109], v114);
      __swift_storeEnumTagSinglePayload(v108, 0, 1, v110);
    }

    __swift_storeEnumTagSinglePayload(v101, 0, 1, v103);
  }

  v115 = v91[10];
  if (__swift_getEnumTagSinglePayload(&a2[v115], 1, v127))
  {
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v115], &a2[v115], *(*(v116 - 8) + 64));
  }

  else
  {
    v126(&a1[v115], &a2[v115], v127);
    __swift_storeEnumTagSinglePayload(&a1[v115], 0, 1, v127);
  }

  a1[v91[11]] = a2[v91[11]];
  return a1;
}

char *assignWithCopy for PluginAction(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1DD0DB04C();
  v134 = *(v9 - 8);
  v133 = *(v134 + 24);
  v133(v7, v8, v9);
  v10 = type metadata accessor for Input(0);
  v11 = v10;
  if (a1 != a2)
  {
    v135 = v9;
    v12 = *(v10 + 20);
    v13 = &v7[v12];
    v14 = &v8[v12];
    sub_1DCE50774(&v7[v12], type metadata accessor for Parse);
    v15 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 16))(v13, v14, v16);
        goto LABEL_26;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 16))(v13, v14, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v13[*(v24 + 48)] = *&v14[*(v24 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        *(v13 + 2) = *(v14 + 2);

        goto LABEL_26;
      case 3u:
        *v13 = *v14;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v17 = sub_1DD0DB1EC();
        (*(*(v17 - 8) + 16))(v13, v14, v17);
        goto LABEL_26;
      case 5u:
        v25 = *v14;
        *v13 = *v14;
        v26 = v25;
        goto LABEL_26;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 16))(v13, v14, v27);
        v129 = type metadata accessor for USOParse(0);
        v28 = v129[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v28], &v14[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 16))(&v13[v28], &v14[v28], v29);
          __swift_storeEnumTagSinglePayload(&v13[v28], 0, 1, v29);
        }

        v57 = v129[6];
        v58 = &v13[v57];
        v59 = &v14[v57];
        *v58 = *v59;
        *(v58 + 1) = *(v59 + 1);
        v60 = v129[7];
        v61 = &v13[v60];
        v62 = &v14[v60];
        v63 = *v62;
        v61[4] = v62[4];
        *v61 = v63;

        goto LABEL_26;
      case 7u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 16))(v13, v14, v19);
        v128 = type metadata accessor for USOParse(0);
        v20 = v128[5];
        v21 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v14[v20], 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v13[v20], &v14[v20], *(*(v22 - 8) + 64));
        }

        else
        {
          (*(*(v21 - 8) + 16))(&v13[v20], &v14[v20], v21);
          __swift_storeEnumTagSinglePayload(&v13[v20], 0, 1, v21);
        }

        v40 = v128[6];
        v41 = &v13[v40];
        v42 = &v14[v40];
        *v41 = *v42;
        *(v41 + 1) = *(v42 + 1);
        v43 = v128[7];
        v44 = &v13[v43];
        v45 = &v14[v43];
        v46 = *v45;
        v44[4] = v45[4];
        *v44 = v46;
        v47 = type metadata accessor for LinkParse(0);
        v48 = v47[5];
        v49 = &v13[v48];
        v50 = &v14[v48];
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);
        v51 = v47[6];
        v52 = &v13[v51];
        v53 = &v14[v51];
        *v52 = *v53;
        *(v52 + 1) = *(v53 + 1);
        v54 = v47[7];
        v55 = &v13[v54];
        v56 = &v14[v54];
        *v55 = *v56;
        *(v55 + 1) = *(v56 + 1);

        goto LABEL_26;
      case 8u:
        v31 = sub_1DD0DD12C();
        (*(*(v31 - 8) + 16))(v13, v14, v31);
        v32 = type metadata accessor for NLRouterParse(0);
        v33 = *(v32 + 20);
        v34 = &v13[v33];
        v35 = &v14[v33];
        *v34 = *v35;
        *(v34 + 1) = *(v35 + 1);
        v124 = v32;
        v36 = *(v32 + 24);
        v130 = &v13[v36];
        v37 = &v14[v36];
        v125 = type metadata accessor for USOParse(0);

        v126 = v37;
        if (__swift_getEnumTagSinglePayload(v37, 1, v125))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v130, v37, *(*(v38 - 8) + 64));
          v39 = v124;
        }

        else
        {
          v64 = sub_1DD0DB4BC();
          (*(*(v64 - 8) + 16))(v130, v37, v64);
          v65 = v125[5];
          v66 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v126[v65], 1, v66))
          {
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v130[v65], &v126[v65], *(*(v67 - 8) + 64));
          }

          else
          {
            (*(*(v66 - 8) + 16))(&v130[v65], &v126[v65], v66);
            __swift_storeEnumTagSinglePayload(&v130[v65], 0, 1, v66);
          }

          v39 = v124;
          v68 = v125[6];
          v69 = &v130[v68];
          v70 = &v126[v68];
          *v69 = *v70;
          *(v69 + 1) = *(v70 + 1);
          v71 = v125[7];
          v72 = &v130[v71];
          v73 = &v126[v71];
          v74 = *v73;
          v72[4] = v73[4];
          *v72 = v74;

          __swift_storeEnumTagSinglePayload(v130, 0, 1, v125);
        }

        v75 = *(v39 + 28);
        v76 = *&v14[v75];
        *&v13[v75] = v76;
        v77 = v76;
        goto LABEL_26;
      case 9u:
        v18 = sub_1DD0DD08C();
        (*(*(v18 - 8) + 16))(v13, v14, v18);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v13, v14, *(*(v15 - 8) + 64));
        break;
    }

    v9 = v135;
  }

  *&v7[v11[6]] = *&v8[v11[6]];

  v78 = v11[7];
  v79 = &v7[v78];
  v80 = &v8[v78];
  v81 = *&v8[v78 + 24];
  if (*&v7[v78 + 24])
  {
    if (v81)
    {
      __swift_assign_boxed_opaque_existential_1(v79, v80);
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v79);
  }

  else if (v81)
  {
    *(v79 + 3) = v81;
    *(v79 + 4) = *(v80 + 4);
    (**(v81 - 8))(v79, v80);
    goto LABEL_35;
  }

  v82 = *v80;
  v83 = *(v80 + 1);
  *(v79 + 4) = *(v80 + 4);
  *v79 = v82;
  *(v79 + 1) = v83;
LABEL_35:
  v7[v11[8]] = v8[v11[8]];
  *&a1[a3[6]] = *&a2[a3[6]];

  v84 = a3[7];
  v85 = *&a1[v84];
  v86 = *&a2[v84];
  *&a1[v84] = v86;
  v87 = v86;

  v88 = a3[8];
  v89 = &a1[v88];
  v90 = &a2[v88];
  *v89 = *v90;
  *(v89 + 1) = *(v90 + 1);

  v91 = a3[9];
  v92 = &a1[v91];
  v93 = &a2[v91];
  v94 = type metadata accessor for ActionParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v94);
  v96 = __swift_getEnumTagSinglePayload(v93, 1, v94);
  if (EnumTagSinglePayload)
  {
    if (!v96)
    {
      *v92 = *v93;
      *(v92 + 1) = *(v93 + 1);
      v97 = *(v94 + 20);
      v98 = &v92[v97];
      v99 = &v93[v97];
      v100 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

      if (__swift_getEnumTagSinglePayload(v99, 1, v100))
      {
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v98, v99, *(*(v101 - 8) + 64));
      }

      else
      {
        *v98 = *v99;
        *(v98 + 1) = *(v99 + 1);
        *(v98 + 2) = *(v99 + 2);
        *(v98 + 3) = *(v99 + 3);
        v132 = *(v100 + 24);
        v116 = sub_1DD0DB66C();
        v127 = *(*(v116 - 8) + 16);

        v127(&v98[v132], &v99[v132], v116);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v100);
      }

      v114 = v92;
      v115 = v94;
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v96)
  {
    sub_1DCE50774(v92, type metadata accessor for ActionParaphrase);
LABEL_41:
    v102 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v103 = v92;
    v104 = v93;
LABEL_42:
    memcpy(v103, v104, v102);
    goto LABEL_49;
  }

  *v92 = *v93;
  *(v92 + 1) = *(v93 + 1);

  v105 = *(v94 + 20);
  v106 = &v92[v105];
  v107 = &v93[v105];
  v108 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v109 = __swift_getEnumTagSinglePayload(v106, 1, v108);
  v110 = __swift_getEnumTagSinglePayload(v107, 1, v108);
  if (v109)
  {
    if (!v110)
    {
      *v106 = *v107;
      *(v106 + 1) = *(v107 + 1);
      *(v106 + 2) = *(v107 + 2);
      *(v106 + 3) = *(v107 + 3);
      v111 = *(v108 + 24);
      v136 = v9;
      v112 = sub_1DD0DB66C();
      v131 = *(*(v112 - 8) + 16);

      v113 = v112;
      v9 = v136;
      v131(&v106[v111], &v107[v111], v113);
      v114 = v106;
      v115 = v108;
LABEL_48:
      __swift_storeEnumTagSinglePayload(v114, 0, 1, v115);
      goto LABEL_49;
    }

    goto LABEL_59;
  }

  if (v110)
  {
    sub_1DCE50774(v106, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
LABEL_59:
    v102 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
    v103 = v106;
    v104 = v107;
    goto LABEL_42;
  }

  *v106 = *v107;
  *(v106 + 1) = *(v107 + 1);

  *(v106 + 2) = *(v107 + 2);
  *(v106 + 3) = *(v107 + 3);

  v122 = *(v108 + 24);
  v123 = sub_1DD0DB66C();
  (*(*(v123 - 8) + 24))(&v106[v122], &v107[v122], v123);
LABEL_49:
  v117 = a3[10];
  v118 = __swift_getEnumTagSinglePayload(&a1[v117], 1, v9);
  v119 = __swift_getEnumTagSinglePayload(&a2[v117], 1, v9);
  if (!v118)
  {
    if (!v119)
    {
      v133(&a1[v117], &a2[v117], v9);
      goto LABEL_55;
    }

    (*(v134 + 8))(&a1[v117], v9);
    goto LABEL_54;
  }

  if (v119)
  {
LABEL_54:
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v117], &a2[v117], *(*(v120 - 8) + 64));
    goto LABEL_55;
  }

  (*(v134 + 16))(&a1[v117], &a2[v117], v9);
  __swift_storeEnumTagSinglePayload(&a1[v117], 0, 1, v9);
LABEL_55:
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

uint64_t sub_1DCE50774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

char *initializeWithTake for PluginAction(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1DD0DB04C();
  v80 = *(*(v9 - 8) + 32);
  v80(v7, v8, v9);
  v10 = type metadata accessor for Input(0);
  v11 = v10[5];
  v12 = &v7[v11];
  v13 = &v8[v11];
  v14 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 32))(v12, v13, v15);
      goto LABEL_23;
    case 1u:
      v24 = sub_1DD0DC76C();
      (*(*(v24 - 8) + 32))(v12, v13, v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v12[*(v25 + 48)] = *&v13[*(v25 + 48)];
      goto LABEL_23;
    case 4u:
      v27 = sub_1DD0DB1EC();
      (*(*(v27 - 8) + 32))(v12, v13, v27);
      goto LABEL_23;
    case 6u:
      v79 = v9;
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 32))(v12, v13, v28);
      v76 = type metadata accessor for USOParse(0);
      v29 = v76[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v13[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v12[v29], &v13[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 32))(&v12[v29], &v13[v29], v30);
        __swift_storeEnumTagSinglePayload(&v12[v29], 0, 1, v30);
      }

      *&v12[v76[6]] = *&v13[v76[6]];
      v40 = v76[7];
      v41 = &v12[v40];
      v42 = &v13[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      goto LABEL_19;
    case 7u:
      v79 = v9;
      v32 = sub_1DD0DB4BC();
      (*(*(v32 - 8) + 32))(v12, v13, v32);
      v77 = type metadata accessor for USOParse(0);
      v33 = v77[5];
      v34 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v13[v33], 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v12[v33], &v13[v33], *(*(v35 - 8) + 64));
      }

      else
      {
        (*(*(v34 - 8) + 32))(&v12[v33], &v13[v33], v34);
        __swift_storeEnumTagSinglePayload(&v12[v33], 0, 1, v34);
      }

      *&v12[v77[6]] = *&v13[v77[6]];
      v43 = v77[7];
      v44 = &v12[v43];
      v45 = &v13[v43];
      v44[4] = v45[4];
      *v44 = *v45;
      v46 = type metadata accessor for LinkParse(0);
      *&v12[v46[5]] = *&v13[v46[5]];
      *&v12[v46[6]] = *&v13[v46[6]];
      *&v12[v46[7]] = *&v13[v46[7]];
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v9 = v79;
      break;
    case 8u:
      v73 = v10;
      v16 = sub_1DD0DD12C();
      (*(*(v16 - 8) + 32))(v12, v13, v16);
      v17 = type metadata accessor for NLRouterParse(0);
      *&v12[*(v17 + 20)] = *&v13[*(v17 + 20)];
      v74 = v17;
      v18 = *(v17 + 24);
      v78 = &v12[v18];
      v19 = &v13[v18];
      v20 = type metadata accessor for USOParse(0);
      v75 = v19;
      v21 = v19;
      v22 = v20;
      if (__swift_getEnumTagSinglePayload(v21, 1, v20))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v78, v75, *(*(v23 - 8) + 64));
        v10 = v73;
      }

      else
      {
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v78, v75, v36);
        v72 = v22;
        v37 = *(v22 + 20);
        v38 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v75[v37], 1, v38))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v78[v37], &v75[v37], *(*(v39 - 8) + 64));
        }

        else
        {
          (*(*(v38 - 8) + 32))(&v78[v37], &v75[v37], v38);
          __swift_storeEnumTagSinglePayload(&v78[v37], 0, 1, v38);
        }

        v10 = v73;
        *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
        v47 = *(v72 + 28);
        v48 = &v78[v47];
        v49 = &v75[v47];
        v48[4] = v49[4];
        *v48 = *v49;
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
      }

      *&v12[*(v74 + 28)] = *&v13[*(v74 + 28)];
      goto LABEL_23;
    case 9u:
      v26 = sub_1DD0DD08C();
      (*(*(v26 - 8) + 32))(v12, v13, v26);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v12, v13, *(*(v14 - 8) + 64));
      break;
  }

  *&v7[v10[6]] = *&v8[v10[6]];
  v50 = v10[7];
  v51 = &v7[v50];
  v52 = &v8[v50];
  v53 = *(v52 + 1);
  *v51 = *v52;
  *(v51 + 1) = v53;
  *(v51 + 4) = *(v52 + 4);
  v7[v10[8]] = v8[v10[8]];
  v54 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v54] = *&a2[v54];
  v55 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v56 = &a1[v55];
  v57 = &a2[v55];
  v58 = type metadata accessor for ActionParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58))
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v56, v57, *(*(v59 - 8) + 64));
  }

  else
  {
    v60 = v9;
    *v56 = *v57;
    v61 = *(v58 + 20);
    v62 = &v56[v61];
    v63 = &v57[v61];
    v64 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64))
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v62, v63, *(*(v65 - 8) + 64));
    }

    else
    {
      v66 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v66;
      v67 = *(v64 + 24);
      v68 = sub_1DD0DB66C();
      (*(*(v68 - 8) + 32))(&v62[v67], &v63[v67], v68);
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v64);
    }

    v9 = v60;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
  }

  v69 = a3[10];
  if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v9))
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
  }

  else
  {
    v80(&a1[v69], &a2[v69], v9);
    __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v9);
  }

  a1[a3[11]] = a2[a3[11]];
  return a1;
}

char *assignWithTake for PluginAction(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = sub_1DD0DB04C();
  v11 = *(v10 - 8);
  v111 = *(v11 + 40);
  v111(v8, v9, v10);
  v12 = type metadata accessor for Input(0);
  v13 = v12;
  if (a1 != a2)
  {
    v112 = v11;
    v14 = *(v12 + 20);
    v15 = &v8[v14];
    v16 = &v9[v14];
    sub_1DCE50774(&v8[v14], type metadata accessor for Parse);
    v17 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v15, v16, v18);
        goto LABEL_23;
      case 1u:
        v27 = sub_1DD0DC76C();
        (*(*(v27 - 8) + 32))(v15, v16, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v15[*(v28 + 48)] = *&v16[*(v28 + 48)];
        goto LABEL_23;
      case 4u:
        v30 = sub_1DD0DB1EC();
        (*(*(v30 - 8) + 32))(v15, v16, v30);
        goto LABEL_23;
      case 6u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v15, v16, v31);
        v109 = type metadata accessor for USOParse(0);
        v32 = v109[5];
        v106 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v16[v32], 1, v106))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v15[v32], &v16[v32], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v106 - 8) + 32))(&v15[v32], &v16[v32]);
          __swift_storeEnumTagSinglePayload(&v15[v32], 0, 1, v106);
        }

        *&v15[v109[6]] = *&v16[v109[6]];
        v41 = v109[7];
        v42 = &v15[v41];
        v43 = &v16[v41];
        v42[4] = v43[4];
        *v42 = *v43;
        goto LABEL_23;
      case 7u:
        v34 = sub_1DD0DB4BC();
        (*(*(v34 - 8) + 32))(v15, v16, v34);
        v110 = type metadata accessor for USOParse(0);
        v35 = v110[5];
        v107 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v16[v35], 1, v107))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v15[v35], &v16[v35], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(*(v107 - 8) + 32))(&v15[v35], &v16[v35]);
          __swift_storeEnumTagSinglePayload(&v15[v35], 0, 1, v107);
        }

        *&v15[v110[6]] = *&v16[v110[6]];
        v44 = v110[7];
        v45 = &v15[v44];
        v46 = &v16[v44];
        v45[4] = v46[4];
        *v45 = *v46;
        v47 = type metadata accessor for LinkParse(0);
        *&v15[v47[5]] = *&v16[v47[5]];
        *&v15[v47[6]] = *&v16[v47[6]];
        *&v15[v47[7]] = *&v16[v47[7]];
        goto LABEL_23;
      case 8u:
        v103 = v10;
        v19 = sub_1DD0DD12C();
        (*(*(v19 - 8) + 32))(v15, v16, v19);
        v20 = type metadata accessor for NLRouterParse(0);
        *&v15[*(v20 + 20)] = *&v16[*(v20 + 20)];
        v104 = v20;
        v21 = *(v20 + 24);
        v108 = &v15[v21];
        v22 = &v16[v21];
        v23 = type metadata accessor for USOParse(0);
        v105 = v22;
        v24 = v22;
        v25 = v23;
        if (__swift_getEnumTagSinglePayload(v24, 1, v23))
        {
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v108, v105, *(*(v26 - 8) + 64));
          v10 = v103;
        }

        else
        {
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 32))(v108, v105, v37);
          v102 = v25;
          v38 = *(v25 + 20);
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v105[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v108[v38], &v105[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 32))(&v108[v38], &v105[v38], v39);
            __swift_storeEnumTagSinglePayload(&v108[v38], 0, 1, v39);
          }

          v10 = v103;
          *&v108[*(v102 + 24)] = *&v105[*(v102 + 24)];
          v48 = *(v102 + 28);
          v49 = &v108[v48];
          v50 = &v105[v48];
          v49[4] = v50[4];
          *v49 = *v50;
          __swift_storeEnumTagSinglePayload(v108, 0, 1, v102);
        }

        *&v15[*(v104 + 28)] = *&v16[*(v104 + 28)];
        goto LABEL_23;
      case 9u:
        v29 = sub_1DD0DD08C();
        (*(*(v29 - 8) + 32))(v15, v16, v29);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v15, v16, *(*(v17 - 8) + 64));
        break;
    }

    v11 = v112;
  }

  *&v8[v13[6]] = *&v9[v13[6]];

  v51 = v13[7];
  v52 = &v8[v51];
  v53 = &v9[v51];
  if (*&v8[v51 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  v54 = *(v53 + 1);
  *v52 = *v53;
  *(v52 + 1) = v54;
  *(v52 + 4) = *(v53 + 4);
  v8[v13[8]] = v9[v13[8]];
  *&a1[a3[6]] = *&a2[a3[6]];

  v55 = a3[7];
  v56 = *&a1[v55];
  *&a1[v55] = *&a2[v55];

  v57 = a3[8];
  v58 = &a1[v57];
  v59 = &a2[v57];
  v61 = *v59;
  v60 = *(v59 + 1);
  *v58 = v61;
  *(v58 + 1) = v60;

  v62 = a3[9];
  v63 = &a1[v62];
  v64 = &a2[v62];
  v65 = type metadata accessor for ActionParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v65);
  v67 = __swift_getEnumTagSinglePayload(v64, 1, v65);
  if (EnumTagSinglePayload)
  {
    if (!v67)
    {
      *v63 = *v64;
      v68 = *(v65 + 20);
      v69 = &v63[v68];
      v70 = &v64[v68];
      v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v70, 1, v71))
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v69, v70, *(*(v72 - 8) + 64));
      }

      else
      {
        v88 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v88;
        v113 = v11;
        v89 = *(v71 + 24);
        v90 = sub_1DD0DB66C();
        v91 = &v69[v89];
        v92 = &v70[v89];
        v11 = v113;
        (*(*(v90 - 8) + 32))(v91, v92, v90);
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v71);
      }

      v86 = v63;
      v87 = v65;
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v67)
  {
    sub_1DCE50774(v63, type metadata accessor for ActionParaphrase);
LABEL_33:
    v73 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v74 = v63;
    v75 = v64;
LABEL_34:
    memcpy(v74, v75, v73);
    goto LABEL_41;
  }

  v76 = *(v64 + 1);
  *v63 = *v64;
  *(v63 + 1) = v76;

  v77 = *(v65 + 20);
  v78 = &v63[v77];
  v79 = &v64[v77];
  v80 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v81 = __swift_getEnumTagSinglePayload(v78, 1, v80);
  v82 = __swift_getEnumTagSinglePayload(v79, 1, v80);
  if (v81)
  {
    if (!v82)
    {
      v83 = *(v79 + 16);
      *v78 = *v79;
      *(v78 + 16) = v83;
      v84 = *(v80 + 24);
      v85 = sub_1DD0DB66C();
      (*(*(v85 - 8) + 32))(v78 + v84, v79 + v84, v85);
      v86 = v78;
      v87 = v80;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  if (v82)
  {
    sub_1DCE50774(v78, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
LABEL_51:
    v73 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
    v74 = v78;
    v75 = v79;
    goto LABEL_34;
  }

  v98 = *(v79 + 8);
  *v78 = *v79;
  *(v78 + 8) = v98;

  v99 = *(v79 + 24);
  *(v78 + 16) = *(v79 + 16);
  *(v78 + 24) = v99;

  v100 = *(v80 + 24);
  v101 = sub_1DD0DB66C();
  (*(*(v101 - 8) + 40))(v78 + v100, v79 + v100, v101);
LABEL_41:
  v93 = a3[10];
  v94 = __swift_getEnumTagSinglePayload(&a1[v93], 1, v10);
  v95 = __swift_getEnumTagSinglePayload(&a2[v93], 1, v10);
  if (!v94)
  {
    if (!v95)
    {
      v111(&a1[v93], &a2[v93], v10);
      goto LABEL_47;
    }

    (*(v11 + 8))(&a1[v93], v10);
    goto LABEL_46;
  }

  if (v95)
  {
LABEL_46:
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v93], &a2[v93], *(*(v96 - 8) + 64));
    goto LABEL_47;
  }

  (*(v11 + 32))(&a1[v93], &a2[v93], v10);
  __swift_storeEnumTagSinglePayload(&a1[v93], 0, 1, v10);
LABEL_47:
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

void sub_1DCE51CDC(uint64_t a1)
{
  type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    sub_1DCE51E40(319, qword_1EDE4E6F8, type metadata accessor for ActionParaphrase);
    if (v2 <= 0x3F)
    {
      sub_1DCE51E40(319, &qword_1EDE4F1E8, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1DCE51E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD0DE97C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PluginAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCE51F74()
{
  result = qword_1ECCA7FE0;
  if (!qword_1ECCA7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FE0);
  }

  return result;
}

unint64_t sub_1DCE51FCC()
{
  result = qword_1ECCA7FE8;
  if (!qword_1ECCA7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FE8);
  }

  return result;
}

unint64_t sub_1DCE52024()
{
  result = qword_1ECCA7FF0;
  if (!qword_1ECCA7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FF0);
  }

  return result;
}

uint64_t sub_1DCE52078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCE5211C;

  return PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(a1, a2);
}

uint64_t sub_1DCE5211C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v4 = *v3;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE52248()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DCE52340;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE52340()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE52444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 8))(sub_1DCE543AC, v13, a3, a4);
}

uint64_t sub_1DCE525C0()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v2 = OUTLINED_FUNCTION_48_1();
  if ((v3(v2, v1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag), v4);
  return (*(v5 + 8))(v4, v5) & 1;
}

uint64_t PostPersonalDomainActivityNotificationFlow.__allocating_init(strategy:)(void *a1)
{
  v2 = swift_allocObject();
  PostPersonalDomainActivityNotificationFlow.init(strategy:)(a1);
  return v2;
}

uint64_t PostPersonalDomainActivityNotificationFlow.init(strategy:)(void *a1)
{
  sub_1DCB17CA0(a1, v7);
  v3 = swift_allocObject();
  sub_1DCAFF9E8(v7, v3 + 16);
  *(v1 + 16) = &unk_1DD0FC720;
  *(v1 + 24) = v3;
  if (qword_1EDE4BFB0 != -1)
  {
    OUTLINED_FUNCTION_6_58(&qword_1EDE4BFB0);
  }

  sub_1DCB17CA0(&qword_1EDE4BFB8, v1 + 32);
  if (qword_1EDE4BF58 != -1)
  {
    OUTLINED_FUNCTION_5_79(&qword_1EDE4BF58);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  v5 = __swift_project_value_buffer(v4, qword_1EDE4BF60);
  sub_1DCE53A10(v5, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo);
  if (qword_1EDE4BFE0 != -1)
  {
    OUTLINED_FUNCTION_4_85(&qword_1EDE4BFE0);
  }

  sub_1DCB17CA0(&qword_1EDE4BFE8, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_aceService);
  if (qword_1EDE4BF78 != -1)
  {
    OUTLINED_FUNCTION_3_92(&qword_1EDE4BF78);
  }

  sub_1DCB17CA0(&byte_1EDE4BF80, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DCAFF9E8(v7, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag);
  return v1;
}

uint64_t sub_1DCE52834()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DCE52924;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE52924()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE52A44()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCE52ACC;

  return sub_1DCE52814(v0 + 16);
}

uint64_t sub_1DCE52ACC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

uint64_t sub_1DCE52BC4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 8))(sub_1DCE5428C, v12, v9, v10);
}

uint64_t sub_1DCE52D3C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
    return sub_1DD0DE45C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
    return sub_1DD0DE46C();
  }
}

void PostPersonalDomainActivityNotificationFlow.__allocating_init(notificationBodyProvider:)()
{
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_48_1();
  PostPersonalDomainActivityNotificationFlow.init(notificationBodyProvider:)(v1, v0);
}

void PostPersonalDomainActivityNotificationFlow.init(notificationBodyProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE52F3C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DCE52FC8;

  return sub_1DCE532F0();
}

uint64_t sub_1DCE52FC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE530C4()
{
  OUTLINED_FUNCTION_42();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE5311C()
{
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Got error generating body for personal request activity notification. Will ignore... %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCE532F0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  v1[3] = swift_task_alloc();
  v2 = sub_1DD0DB04C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE533E0()
{
  OUTLINED_FUNCTION_42();
  if (sub_1DCE525C0())
  {
    v4 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_1DCE53518;

    return v4();
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v3();
  }
}

uint64_t sub_1DCE53518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v2)
  {

    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 64) = a2;
    *(v7 + 72) = a1;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

void sub_1DCE53674()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7950]) init];
  sub_1DD0DB03C();
  v8 = sub_1DD0DAFFC();
  v10 = v9;
  (*(v4 + 8))(v3, v5);
  sub_1DCB4D8E8(v8, v10, v7);
  sub_1DCE54220(v1, v2, v7);
  v11 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v6[7]);
  v12 = OUTLINED_FUNCTION_48_1();
  v13(v12, v11);
  if (v14)
  {
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
    v3 = 0;
  }

  v15 = v0[2];
  v16 = v0[3];
  [v7 setOriginatingDeviceName_];

  sub_1DCE53A10(v15 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo, v16);
  sub_1DD0DD00C();
}

void sub_1DCE538D8()
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  v0 = qword_1EDE46630;
  qword_1EDE4BFD0 = type metadata accessor for RefreshableDeviceState();
  unk_1EDE4BFD8 = &protocol witness table for RefreshableDeviceState;
  qword_1EDE4BFB8 = v0;
  sub_1DD0DCF8C();
}

void sub_1DCE53970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  __swift_allocate_value_buffer(v0, qword_1EDE4BF60);
  __swift_project_value_buffer(v0, qword_1EDE4BF60);
  sub_1DD0DCA6C();
}

uint64_t sub_1DCE53A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCE53A80()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCE53B18()
{
  qword_1EDE4BF98 = &type metadata for FeatureFlagDefinitions.PersonalDomains;
  unk_1EDE4BFA0 = &off_1F585CB28;
  byte_1EDE4BF80 = 0;
}

uint64_t PostPersonalDomainActivityNotificationFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_1DCE53D18(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag));
  return v0;
}

uint64_t PostPersonalDomainActivityNotificationFlow.__deallocating_deinit()
{
  PostPersonalDomainActivityNotificationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE53C88()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCE52F3C();
}

uint64_t sub_1DCE53D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DCE53D80(uint64_t a1)
{
  result = sub_1DCE53DA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCE53DA8()
{
  result = qword_1ECCA7FF8;
  if (!qword_1ECCA7FF8)
  {
    type metadata accessor for PostPersonalDomainActivityNotificationFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FF8);
  }

  return result;
}

uint64_t type metadata accessor for PostPersonalDomainActivityNotificationFlow(uint64_t a1)
{
  result = qword_1EDE4BEF8;
  if (!qword_1EDE4BEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()()
{
  OUTLINED_FUNCTION_60();
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCE543B4;

  return v6(v1, v0);
}

void sub_1DCE53F7C(uint64_t a1)
{
  sub_1DCE541C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PostPersonalDomainActivityNotificationFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v7 = (*(*v0 + 168) + **(*v0 + 168));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v2);
}

void sub_1DCE541C8(uint64_t a1)
{
  if (!qword_1EDE46348)
  {
    sub_1DD0DD00C();
  }
}

void sub_1DCE54220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setNotificationBody_];
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t PrepareResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t static PrepareResponse.ongoing(needsExecute:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t static PrepareResponse.ongoing<A>(next:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_0_82(a1, a2, a3);
  *v3 = 0;
  *(v3 + 8) = result;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  return result;
}

void static PrepareResponse.ongoing<A>(next:childCompletion:)()
{
  Flow.eraseToAnyFlow()();
  type metadata accessor for AnyChildCompletion();
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void static PrepareResponse.complete()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t static PrepareResponse.complete<A>(next:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_0_82(a1, a2, a3);
  *v3 = 1;
  *(v3 + 8) = result;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  return result;
}

unint64_t sub_1DCE545BC()
{
  result = qword_1ECCA8008;
  if (!qword_1ECCA8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrepareResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void initializeWithCopy for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_1DD0DCF8C();
}

void assignWithCopy for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for PrepareResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PrepareResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ResponseComponents.init(dialog:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *(v0 + 8) = v1;
  *(v0 + 24) = v1;
  *(v0 + 40) = v1;
  *(v0 + 56) = v1;
  *(v0 + 72) = v1;
  *(v0 + 88) = v1;
  *(v0 + 104) = v1;
  sub_1DD0DCC3C();
}

id static PresentationElements.responseFrameworkPattern(patternExecutionResult:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t ResponseComponents.dialog.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ResponseComponents.viewId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ResponseComponents.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

void ResponseComponents.init(resultModel:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *v0 = v1;
  *(v0 + 16) = v1;
  *(v0 + 32) = v1;
  *(v0 + 48) = v1;
  *(v0 + 64) = v1;
  *(v0 + 80) = v1;
  *(v0 + 96) = v1;
  *(v0 + 112) = 0;
  sub_1DD0DCC3C();
}

void ResponseComponents.init(conversationModel:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *v0 = v1;
  *(v0 + 16) = v1;
  *(v0 + 32) = v1;
  *(v0 + 64) = v1;
  *(v0 + 80) = v1;
  *(v0 + 96) = v1;
  *(v0 + 112) = 0;
  *(v0 + 48) = v1;
  sub_1DD0DCC3C();
}

uint64_t ResponseUpdateComponents.init(viewId:update:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_1DCAFF9E8(a3, (a4 + 2));
}

void static PresentationElements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ResponseComponents(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v90 = (&v86 - v7);
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  OUTLINED_FUNCTION_2();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v86 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = (&v86 - v19);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v86 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8018, &qword_1DD0FC970);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v28 = &v86 - v27;
  v29 = &v86 + *(v26 + 56) - v27;
  sub_1DCE56C60();
  sub_1DCE56C60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_83();
      v37 = v28;
      sub_1DCE56C60();
      v38 = *v20;
      if (OUTLINED_FUNCTION_20_25() != 1)
      {

        v28 = v37;
        goto LABEL_21;
      }

      v39 = *v29;
      v40 = [v38 patternId];
      v41 = sub_1DD0DDFBC();
      v43 = v42;

      v44 = [v39 patternId];
      v45 = sub_1DD0DDFBC();
      v47 = v46;

      if (v41 != v45 || v43 != v47)
      {
        sub_1DD0DF0AC();
      }

      OUTLINED_FUNCTION_1_91();
      v63 = v37;
      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_0_83();
      sub_1DCE56C60();
      if (OUTLINED_FUNCTION_20_25() == 2)
      {
        v32 = v90;
        sub_1DCE56B8C(v16, v90);
        v33 = v91;
        sub_1DCE56B8C(v29, v91);
        sub_1DCE555D0(v32, v33);
        sub_1DCE56B34(v33, type metadata accessor for ResponseComponents);
        sub_1DCE56B34(v32, type metadata accessor for ResponseComponents);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_86();
      sub_1DCE56B34(v16, v49);
      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_0_83();
      sub_1DCE56C60();
      if (OUTLINED_FUNCTION_20_25() != 3)
      {
        sub_1DCBB5C74(v12);
        goto LABEL_21;
      }

      v34 = *(v12 + 1);
      v94[0] = *v12;
      v94[1] = v34;
      v94[2] = *(v12 + 2);
      v95 = *(v12 + 6);
      v35 = *(v29 + 1);
      v92[0] = *v29;
      v92[1] = v35;
      v92[2] = *(v29 + 2);
      v93 = *(v29 + 6);
      if (*&v94[0] != *&v92[0] || *(&v94[0] + 1) != *(&v92[0] + 1))
      {
        sub_1DD0DF0AC();
      }

      sub_1DCBB5C74(v92);
      sub_1DCBB5C74(v94);
LABEL_29:
      OUTLINED_FUNCTION_1_91();
      v63 = v28;
LABEL_31:
      sub_1DCE56B34(v63, v62);
      return;
    default:
      OUTLINED_FUNCTION_0_83();
      v89 = v28;
      sub_1DCE56C60();
      v31 = *v23;
      v30 = *(v23 + 1);
      if (OUTLINED_FUNCTION_20_25())
      {

        v28 = v89;
LABEL_21:
        sub_1DCB0E9D8(v28, &qword_1ECCA8018, &qword_1DD0FC970);
        return;
      }

      v50 = *v29;
      v51 = *(v29 + 1);
      v52 = [v31 catId];
      v53 = sub_1DD0DDFBC();
      v55 = v54;

      v56 = [v50 catId];
      v57 = sub_1DD0DDFBC();
      v59 = v58;

      if (v53 == v57 && v55 == v59)
      {
      }

      else
      {
        v61 = sub_1DD0DF0AC();

        if ((v61 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v64 = sub_1DCB08B14(v30);
      if (v64 != sub_1DCB08B14(v51))
      {
LABEL_57:

        goto LABEL_58;
      }

      v87 = v31;
      v88 = v50;
      v65 = sub_1DCB08B14(v30);
      v90 = (v30 & 0xFFFFFFFFFFFFFF8);
      v91 = v30 & 0xC000000000000001;
      v66 = v51 & 0xC000000000000001;
      v67 = v51;
      v68 = v51 & 0xFFFFFFFFFFFFFF8;
      v69 = -v65;
      for (i = 4; ; ++i)
      {
        if (v69 + i == 4)
        {

          OUTLINED_FUNCTION_1_91();
          sub_1DCE56B34(v89, v85);
          return;
        }

        v71 = i - 4;
        if (v91)
        {
          v83 = OUTLINED_FUNCTION_33_1();
          v72 = MEMORY[0x1E12A72C0](v83);
        }

        else
        {
          if (v71 >= v90[2])
          {
            goto LABEL_62;
          }

          v72 = *(v30 + 8 * i);
        }

        if (__OFADD__(v71, 1))
        {
          break;
        }

        v73 = v72;
        v74 = sub_1DCE56BF0(v73);
        v76 = v75;
        if (v66)
        {
          v77 = MEMORY[0x1E12A72C0](i - 4, v67);
        }

        else
        {
          if (v71 >= *(v68 + 16))
          {
            goto LABEL_63;
          }

          v77 = *(v67 + 8 * i);
        }

        v78 = sub_1DCE56BF0(v77);
        v80 = v79;
        if (v76)
        {
          if (!v79)
          {

            goto LABEL_58;
          }

          if (v74 == v78 && v76 == v79)
          {
          }

          else
          {
            v82 = sub_1DD0DF0AC();

            if ((v82 & 1) == 0)
            {

LABEL_58:

              OUTLINED_FUNCTION_1_91();
              sub_1DCE56B34(v89, v84);
              return;
            }
          }
        }

        else
        {

          if (v80)
          {

            goto LABEL_58;
          }
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      return;
  }
}

void sub_1DCE555D0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[12];
  v5 = a2[12];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    v6 = a1[11] == a2[11] && v4 == v5;
    if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return;
    }
  }

  else if (v5)
  {
    return;
  }

  v7 = a1[14];
  v8 = a2[14];
  if (v7)
  {
    if (!v8)
    {
      return;
    }

    v9 = a1[13] == a2[13] && v7 == v8;
    if (!v9 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return;
    }
  }

  else if (v8)
  {
    return;
  }

  sub_1DCB8878C();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v10 = sub_1DD0DB28C();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  sub_1DCB8878C();
  if (!v49)
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    if (v12 >> 60 != 15)
    {
      goto LABEL_69;
    }

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(v48, v49);
  v13 = sub_1DD0DB28C();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_70;
    }

LABEL_27:
    sub_1DCB2C520(v10, v12);
    goto LABEL_28;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_70;
  }

  sub_1DCC91E6C(v10, v12);
  sub_1DCC91E6C(v13, v15);
  v17 = MEMORY[0x1E12A3570](v10, v12, v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v10, v12);
  sub_1DCB2C520(v10, v12);
  if ((v17 & 1) == 0)
  {
    return;
  }

LABEL_28:
  sub_1DCB8878C();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v10 = sub_1DD0DB28C();
    v12 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  sub_1DCB8878C();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v13 = sub_1DD0DB28C();
    v15 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    if (v12 >> 60 == 15)
    {
      if (v15 >> 60 != 15)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    if (v15 >> 60 != 15)
    {
      sub_1DCC91E6C(v10, v12);
      sub_1DCC91E6C(v13, v15);
      v45 = MEMORY[0x1E12A3570](v10, v12, v13, v15);
      sub_1DCB2C520(v13, v15);
      sub_1DCB2C520(v13, v15);
      sub_1DCB2C520(v10, v12);
      sub_1DCB2C520(v10, v12);
      if ((v45 & 1) == 0)
      {
        return;
      }

      goto LABEL_40;
    }

LABEL_70:
    sub_1DCB2C520(v10, v12);
    sub_1DCB2C520(v13, v15);
    return;
  }

  sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
  if (v12 >> 60 != 15)
  {
LABEL_69:
    v13 = 0;
    v15 = 0xF000000000000000;
    goto LABEL_70;
  }

LABEL_39:
  sub_1DCB2C520(v10, v12);
LABEL_40:
  v19 = *a1;
  if (*a1)
  {
    v20 = *a2;
    if (v20)
    {
      v21 = sub_1DCB08B14(*a1);
      if (v21 == sub_1DCB08B14(v20))
      {
        v22 = sub_1DCB08B14(v19);
        v46 = v20 & 0xFFFFFFFFFFFFFF8;

        v47 = -v22;
        v23 = 4;
        while (1)
        {
          if (v47 + v23 == 4)
          {
            goto LABEL_76;
          }

          v24 = v23 - 4;
          if ((v19 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1E12A72C0](v23 - 4, v19);
          }

          else
          {
            if (v24 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v25 = *(v19 + 8 * v23);
          }

          v26 = v25;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if ((v20 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1E12A72C0](v23 - 4, v20);
          }

          else
          {
            if (v24 >= *(v46 + 16))
            {
              goto LABEL_79;
            }

            v27 = *(v20 + 8 * v23);
          }

          v28 = v27;
          v29 = [v26 catId];
          v30 = sub_1DD0DDFBC();
          v32 = v31;

          v33 = [v28 catId];
          v34 = sub_1DD0DDFBC();
          v36 = v35;

          if (v30 == v34 && v32 == v36)
          {
          }

          else
          {
            v38 = sub_1DD0DF0AC();

            if ((v38 & 1) == 0)
            {

LABEL_76:

              return;
            }
          }

          v39 = [v26 dialog];
          sub_1DCE5993C();
          v40 = sub_1DD0DE2EC();

          if (v40 >> 62)
          {
            v41 = sub_1DD0DEB3C();
          }

          else
          {
            v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = [v28 dialog];
          v43 = sub_1DD0DE2EC();

          if (v43 >> 62)
          {
            v44 = sub_1DD0DEB3C();
          }

          else
          {
            v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v23;
          if (v41 != v44)
          {
            goto LABEL_76;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }
    }
  }
}

double static PresentationElements.legacy(catResult:snippets:)@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1DCC6E8F0();
  *a2 = v4;
  a2[1] = a1;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();

  return result;
}

double static PresentationElements.legacy(dialogExecutionResult:snippets:)()
{
  OUTLINED_FUNCTION_21();
  *v3 = v1;
  v3[1] = v2;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  v4 = v0;

  return result;
}

uint64_t static PresentationElements.responseFramework(responseComponents:)()
{
  sub_1DCE56C60();
  OUTLINED_FUNCTION_6_59();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PresentationElements.responseFrameworkUpdate(updateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCE56CB8(a1, a2);
  OUTLINED_FUNCTION_6_59();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCE55DC0()
{
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_83();
  sub_1DCE56C60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DCE56B34(v3, type metadata accessor for PresentationElements.PresentationElementsBase);
      v4 = 0xD000000000000019;
      break;
    case 2u:
      v4 = 0xD000000000000012;
      OUTLINED_FUNCTION_4_86();
      sub_1DCE56B34(v3, v5);
      break;
    case 3u:
      sub_1DCBB5C74(v3);
      v4 = 0xD000000000000018;
      break;
    default:
      sub_1DCE56B34(v3, type metadata accessor for PresentationElements.PresentationElementsBase);
      v4 = 0x79636167656C2ELL;
      break;
  }

  return v4;
}

uint64_t sub_1DCE55F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v10[1] = sub_1DCB4AE1C;

  return PresentationElementsProviding.makePresentationElements(responseId:catId:catParameters:visualParameters:)(v10, v11, v12, v13, v14, v15, v16, a8);
}

uint64_t sub_1DCE55FF0()
{
  OUTLINED_FUNCTION_16_45();
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  v0 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v0);

  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780](0xD000000000000012);
  sub_1DCE56CF0();
  swift_allocError();
  *v1 = v4;
  v1[1] = v5;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE5611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_task_alloc();
  *(v7 + 16) = v9;
  *v9 = v7;
  v9[1] = sub_1DCB4AE1C;

  return PresentationElementsProviding.makePresentationElements(responseId:patternId:patternParameters:)(v9, v10, v11, v12, v13, v14, a7);
}

uint64_t sub_1DCE561C4()
{
  OUTLINED_FUNCTION_16_45();
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  v0 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v0);

  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780](0xD000000000000012);
  sub_1DCE56CF0();
  swift_allocError();
  *v1 = v4;
  v1[1] = v5;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE562F0(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  return 0x6D656C706D696E55;
}

uint64_t sub_1DCE56380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCA8010 = result;
  return result;
}

uint64_t sub_1DCE56418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE56434()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v2 = v1[2];
  if (qword_1ECCA1350 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECCA8010;
  v0[7] = qword_1ECCA8010;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_17_35(v4);

  return sub_1DCC70910(v2, v5, v6, v7, 0, v3);
}

uint64_t sub_1DCE56534(uint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 72) = a1;
    v10 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCE56690()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  *v1 = *(v0 + 72);
  v1[1] = v2;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE56708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE56724()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v2 = v1[2];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_17_35(v3);

  return sub_1DCC71374(v2, v4, v5, v6);
}

uint64_t sub_1DCE567C4(uint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 64) = a1;
    v10 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCE568F8()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE56968()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE569A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AD3C;

  return sub_1DCE56418(a1, v11, v12, a4, a5, a6);
}

uint64_t sub_1DCE56A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return sub_1DCE56708(a1, v11, v12, a4, a5, a6);
}

uint64_t sub_1DCE56B34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCE56B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE56BF0(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCE56C60()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

unint64_t sub_1DCE56CF0()
{
  result = qword_1ECCA8020;
  if (!qword_1ECCA8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8020);
  }

  return result;
}

void initializeBufferWithCopyOfBuffer for ResponseComponents(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    v6 = a2[4];

    if (v6)
    {
      v7 = a2[5];
      *(a1 + 32) = v6;
      *(a1 + 40) = v7;
      (**(v6 - 8))(a1 + 8, a2 + 1, v6);
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = a2[5];
    }

    v8 = a2[9];
    if (v8)
    {
      v9 = a2[10];
      *(a1 + 72) = v8;
      *(a1 + 80) = v9;
      (**(v8 - 8))(a1 + 48, a2 + 6);
    }

    else
    {
      v10 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v10;
      *(a1 + 80) = a2[10];
    }

    v11 = a2[12];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = v11;
    v12 = a2[14];
    *(a1 + 104) = a2[13];
    *(a1 + 112) = v12;
    sub_1DD0DCC3C();
  }

  sub_1DD0DCF8C();
}

void destroy for ResponseComponents(char *a1, uint64_t a2)
{

  if (*(a1 + 4))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  if (*(a1 + 9))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  sub_1DD0DCC3C();
}

void initializeWithCopy for ResponseComponents(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = a2[4];

  if (v6)
  {
    v7 = a2[5];
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
    (**(v6 - 8))(a1 + 8, a2 + 1, v6);
  }

  else
  {
    v8 = *(a2 + 3);
    *v5 = *(a2 + 1);
    *(a1 + 24) = v8;
    *(a1 + 40) = a2[5];
  }

  v9 = a2[9];
  if (v9)
  {
    v10 = a2[10];
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    (**(v9 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v11 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v11;
    *(a1 + 80) = a2[10];
  }

  v12 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v12;
  v13 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v13;
  sub_1DD0DCC3C();
}

void assignWithCopy for ResponseComponents(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v5 = a2[4];
  if (*(a1 + 32))
  {
    v6 = (a1 + 8);
    if (v5)
    {
      __swift_assign_boxed_opaque_existential_1(v6, a2 + 1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else if (v5)
  {
    *(a1 + 32) = v5;
    *(a1 + 40) = a2[5];
    (**(v5 - 8))(a1 + 8, a2 + 1);
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(a1 + 40) = a2[5];
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
LABEL_8:
  v9 = a2[9];
  if (*(a1 + 72))
  {
    v10 = (a1 + 48);
    if (v9)
    {
      __swift_assign_boxed_opaque_existential_1(v10, a2 + 6);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else if (v9)
  {
    *(a1 + 72) = v9;
    *(a1 + 80) = a2[10];
    (**(v9 - 8))(a1 + 48, a2 + 6);
    goto LABEL_15;
  }

  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
LABEL_15:
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];

  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];

  sub_1DD0DCC3C();
}

void initializeWithTake for ResponseComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  sub_1DD0DCC3C();
}

void assignWithTake for ResponseComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 8;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v6 = *(v5 + 16);
  *(a1 + 8) = *v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = *(v5 + 32);
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  }

  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  *(a1 + 96) = *(a2 + 96);

  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;

  sub_1DD0DCC3C();
}

void sub_1DCE57798(uint64_t a1)
{
  sub_1DCE57848(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCE57848(uint64_t a1)
{
  if (!qword_1ECCA8038)
  {
    sub_1DD0DCC3C();
  }
}

uint64_t destroy for ResponseUpdateComponents(uint64_t a1)
{

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
}

uint64_t initializeWithCopy for ResponseUpdateComponents(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 16, v6);
  return a1;
}

void *assignWithCopy for ResponseUpdateComponents(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
  return a1;
}

uint64_t assignWithTake for ResponseUpdateComponents(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResponseUpdateComponents(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResponseUpdateComponents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for PresentationElements(char *a1, char **a2)
{
  if ((*(*(type metadata accessor for PresentationElements.PresentationElementsBase(0) - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      break;
    case 2u:
      *a1 = *a2;
      v7 = a2[4];

      if (v7)
      {
        v8 = a2[5];
        *(a1 + 4) = v7;
        *(a1 + 5) = v8;
        (**(v7 - 1))(a1 + 8, a2 + 1, v7);
      }

      else
      {
        v15 = *(a2 + 3);
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 24) = v15;
        *(a1 + 5) = a2[5];
      }

      v16 = a2[9];
      if (v16)
      {
        v17 = a2[10];
        *(a1 + 9) = v16;
        *(a1 + 10) = v17;
        (**(v16 - 1))(a1 + 48, a2 + 6);
      }

      else
      {
        v18 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v18;
        *(a1 + 10) = a2[10];
      }

      v19 = a2[12];
      *(a1 + 11) = a2[11];
      *(a1 + 12) = v19;
      v20 = a2[14];
      *(a1 + 13) = a2[13];
      *(a1 + 14) = v20;
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:
      v9 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v9;
      v10 = *(a2 + 5);
      *(a1 + 40) = v10;
      v11 = v10;
      v12 = **(v10 - 8);

      v12(a1 + 16, a2 + 2, v11);
      break;
    default:
      v4 = *a2;
      v5 = a2[1];
      *a1 = v4;
      *(a1 + 1) = v5;
      v6 = v4;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for PresentationElements(uint64_t a1)
{
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      break;
    case 1u:
      v2 = *a1;

      break;
    case 2u:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
      }

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for PresentationElements(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      break;
    case 2u:
      *a1 = *a2;
      v7 = *(a2 + 32);

      if (v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 8, v7);
      }

      else
      {
        v15 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v15;
        *(a1 + 40) = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      if (v16)
      {
        v17 = *(a2 + 80);
        *(a1 + 72) = v16;
        *(a1 + 80) = v17;
        (**(v16 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v18 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);
      }

      v19 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v19;
      v20 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v20;
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:
      v9 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v9;
      v10 = *(a2 + 40);
      *(a1 + 40) = v10;
      v11 = v10;
      v12 = **(v10 - 8);

      v12(a1 + 16, a2 + 16, v11);
      break;
    default:
      v4 = *a2;
      v5 = *(a2 + 8);
      *a1 = v4;
      *(a1 + 8) = v5;
      v6 = v4;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for PresentationElements(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    type metadata accessor for PresentationElements.PresentationElementsBase(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v9 = *a2;
        *a1 = *a2;
        v10 = v9;
        break;
      case 2u:
        *a1 = *a2;
        v6 = *(a2 + 32);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 40);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v11 = *(a2 + 8);
          v12 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
        }

        v13 = *(a2 + 72);
        if (v13)
        {
          *(a1 + 72) = v13;
          *(a1 + 80) = *(a2 + 80);
          (**(v13 - 8))(a1 + 48, a2 + 48);
        }

        else
        {
          v14 = *(a2 + 48);
          v15 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v14;
          *(a1 + 64) = v15;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        type metadata accessor for ResponseComponents(0);
        sub_1DD0DCC3C();
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 40);
        *(a1 + 40) = v7;
        *(a1 + 48) = *(a2 + 48);
        v8 = **(v7 - 8);

        v8(a1 + 16, a2 + 16, v7);
        break;
      default:
        v4 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v5 = v4;

        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for PresentationElements(char *a1, char *a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 5) = *(a2 + 5);
    v5 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v5;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    type metadata accessor for ResponseComponents(0);
    sub_1DD0DCC3C();
  }

  v6 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v6);
}

char *assignWithTake for PresentationElements(char *a1, char *a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v2 = *a2;
      *(v2 + 8) = *(a2 + 8);
      *(v2 + 24) = *(a2 + 24);
      *(v2 + 5) = *(a2 + 5);
      v5 = *(a2 + 4);
      *(v2 + 3) = *(a2 + 3);
      *(v2 + 4) = v5;
      *(v2 + 10) = *(a2 + 10);
      *(v2 + 88) = *(a2 + 88);
      *(v2 + 104) = *(a2 + 104);
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    }

    v6 = *(*(v4 - 8) + 64);

    return memcpy(v2, a2, v6);
  }

  return a1;
}

uint64_t sub_1DCE58848(uint64_t a1)
{
  result = type metadata accessor for PresentationElements.PresentationElementsBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PresentationElementsProviding.makePresentationElements(responseId:catId:catParameters:visualParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_11_13();
  v13 = (*(a9 + 8) + **(a9 + 8));
  v10 = swift_task_alloc();
  *(v9 + 16) = v10;
  *v10 = v9;
  v10[1] = sub_1DCB4AD3C;
  v11 = OUTLINED_FUNCTION_8_6();

  return v13(v11);
}

uint64_t dispatch thunk of PresentationElementsProviding.makePresentationElements(responseId:patternId:patternParameters:)()
{
  OUTLINED_FUNCTION_11_13();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_8_6();

  return v5(v3);
}

char *sub_1DCE58B70(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      break;
    case 2u:
      *a1 = *a2;
      v8 = a2[4];

      if (v8)
      {
        v9 = a2[5];
        *(a1 + 4) = v8;
        *(a1 + 5) = v9;
        (**(v8 - 1))(a1 + 8, a2 + 1, v8);
      }

      else
      {
        v16 = *(a2 + 3);
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 24) = v16;
        *(a1 + 5) = a2[5];
      }

      v17 = a2[9];
      if (v17)
      {
        v18 = a2[10];
        *(a1 + 9) = v17;
        *(a1 + 10) = v18;
        (**(v17 - 1))(a1 + 48, a2 + 6);
      }

      else
      {
        v19 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v19;
        *(a1 + 10) = a2[10];
      }

      v20 = a2[12];
      *(a1 + 11) = a2[11];
      *(a1 + 12) = v20;
      v21 = a2[14];
      *(a1 + 13) = a2[13];
      *(a1 + 14) = v21;
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:
      v10 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = *(a2 + 5);
      *(a1 + 40) = v11;
      v12 = v11;
      v13 = **(v11 - 8);

      v13(a1 + 16, a2 + 2, v12);
      break;
    default:
      v5 = *a2;
      v6 = a2[1];
      *a1 = v5;
      *(a1 + 1) = v6;
      v7 = v5;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCE58E68(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      break;
    case 1u:
      v3 = *a1;

      break;
    case 2u:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
      }

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      break;
    default:
      return;
  }
}

uint64_t sub_1DCE58FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      break;
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 32);

      if (v8)
      {
        v9 = *(a2 + 40);
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        (**(v8 - 8))(a1 + 8, a2 + 8, v8);
      }

      else
      {
        v16 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v16;
        *(a1 + 40) = *(a2 + 40);
      }

      v17 = *(a2 + 72);
      if (v17)
      {
        v18 = *(a2 + 80);
        *(a1 + 72) = v17;
        *(a1 + 80) = v18;
        (**(v17 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v19 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v19;
        *(a1 + 80) = *(a2 + 80);
      }

      v20 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v20;
      v21 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v21;
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    case 3u:
      v10 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v10;
      v11 = *(a2 + 40);
      *(a1 + 40) = v11;
      v12 = v11;
      v13 = **(v11 - 8);

      v13(a1 + 16, a2 + 16, v12);
      break;
    default:
      v5 = *a2;
      v6 = *(a2 + 8);
      *a1 = v5;
      *(a1 + 8) = v6;
      v7 = v5;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCE59278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v10 = *a2;
        *a1 = *a2;
        v11 = v10;
        break;
      case 2u:
        *a1 = *a2;
        v7 = *(a2 + 32);

        if (v7)
        {
          *(a1 + 32) = v7;
          *(a1 + 40) = *(a2 + 40);
          (**(v7 - 8))(a1 + 8, a2 + 8, v7);
        }

        else
        {
          v12 = *(a2 + 8);
          v13 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 8) = v12;
          *(a1 + 24) = v13;
        }

        v14 = *(a2 + 72);
        if (v14)
        {
          *(a1 + 72) = v14;
          *(a1 + 80) = *(a2 + 80);
          (**(v14 - 8))(a1 + 48, a2 + 48);
        }

        else
        {
          v15 = *(a2 + 48);
          v16 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v15;
          *(a1 + 64) = v16;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        type metadata accessor for ResponseComponents(0);
        sub_1DD0DCC3C();
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v8 = *(a2 + 40);
        *(a1 + 40) = v8;
        *(a1 + 48) = *(a2 + 48);
        v9 = **(v8 - 8);

        v9(a1 + 16, a2 + 16, v8);
        break;
      default:
        v5 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v6 = v5;

        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1DCE59554(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 5) = *(a2 + 5);
    v6 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v6;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    type metadata accessor for ResponseComponents(0);
    sub_1DD0DCC3C();
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *sub_1DCE596E0(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v3 = *a2;
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 5) = *(a2 + 5);
      v6 = *(a2 + 4);
      *(v3 + 3) = *(a2 + 3);
      *(v3 + 4) = v6;
      *(v3 + 10) = *(a2 + 10);
      *(v3 + 88) = *(a2 + 88);
      *(v3 + 104) = *(a2 + 104);
      type metadata accessor for ResponseComponents(0);
      sub_1DD0DCC3C();
    }

    v7 = *(*(a3 - 8) + 64);

    return memcpy(v3, a2, v7);
  }

  return a1;
}

uint64_t sub_1DCE59890(uint64_t a1)
{
  result = type metadata accessor for ResponseComponents(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_1DCE5993C()
{
  result = qword_1EDE46220;
  if (!qword_1EDE46220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46220);
  }

  return result;
}

uint64_t Prompt.__allocating_init(for:interpreter:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_86();
  Prompt.init(for:interpreter:)(v1, v2);
  return v0;
}

void sub_1DCE599CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCE59A5C(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
  sub_1DCDB2688(a1);
  sub_1DCDB2698(v3);
  sub_1DD0DCF8C();
}

void sub_1DCE59AC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE59B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCE1B7E8;

  return PromptProviding.segue()();
}

uint64_t PromptProviding.segue()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCE59CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCE1AF64;

  return PromptProviding.repromptOnEmptyParse()();
}

uint64_t PromptProviding.repromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCE59E54(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE1B7E8;

  return PromptProviding.repromptOnLowConfidence()();
}

uint64_t PromptProviding.repromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCE1B7E8;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE59F78@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  v5 = *(v4 + 104);
  swift_beginAccess();
  type metadata accessor for Prompt.State(0, *(v2 + 80), v6, v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v5);
}

uint64_t sub_1DCE5A014(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  v5 = *(v4 + 104);
  swift_beginAccess();
  type metadata accessor for Prompt.State(0, *(v2 + 80), v6, v7);
  OUTLINED_FUNCTION_2();
  (*(v8 + 40))(v1 + v5, a1);
  return swift_endAccess();
}

uint64_t sub_1DCE5A0FC()
{
  OUTLINED_FUNCTION_66();
  v2 = (v0 + *(v1 + 112));
  *v2 = v3;
  v2[1] = v4;
}

uint64_t Prompt.init(for:interpreter:)(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_23_2();
  v5 = (v2 + *(v4 + 112));
  *v5 = nullsub_1;
  v5[1] = 0;
  sub_1DCAFF9E8(v6, v2 + 16);
  sub_1DCAFF9E8(a2, v2 + 56);
  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v2 + v8, 1, 3, v9);
  return v2;
}

void Prompt.accept(input:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v82 = a1;
  v6 = *v2;
  v78 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v77 = v10 - v9;
  v11 = *(v6 + 80);
  v12 = OUTLINED_FUNCTION_27_28();
  type metadata accessor for Prompt.Event(v12, v13, v14, v15);
  OUTLINED_FUNCTION_9();
  v80 = v17;
  v81 = v16;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v79 = (&v74 - v20);
  v21 = OUTLINED_FUNCTION_27_28();
  v25 = type metadata accessor for Interpretable(v21, v22, v23, v24);
  OUTLINED_FUNCTION_9();
  v75 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v76 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v74 - v32;
  v34 = OUTLINED_FUNCTION_27_28();
  v38 = type metadata accessor for Prompt.State(v34, v35, v36, v37);
  OUTLINED_FUNCTION_9();
  v40 = v39;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v74 - v43;
  sub_1DCE59F78(&v74 - v43);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_27_28();
  v45 = sub_1DD0DF22C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 3, v45);
  (*(v40 + 8))(v44, v38);
  if (EnumTagSinglePayload == 3)
  {
    v47 = v4[10];
    v48 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v47);
    (*(v48 + 16))(v82, v47, v48);
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) != 1)
    {
      v58 = v76;
      (*(v76 + 32))(v33, v3, v11);
      v59 = v79;
      (*(v58 + 16))(v79, v33, v11);
      swift_storeEnumTagMultiPayload();
      sub_1DCE5BB14(v59);
    }

    (*(v75 + 8))(v3, v25);
    v49 = type metadata accessor for Input(0);
    v50 = v77;
    sub_1DCB29E58(v82 + *(v49 + 20), v77);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCB28638(v50, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v52 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v52, qword_1EDE57E00);
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v55, v56, "Prompt received empty parse. Will re-prompt.");
        OUTLINED_FUNCTION_52();
      }

      v57 = type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26(v57);
      sub_1DCD8FC04(&unk_1DD0FCC90, v4);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5C718, v4);
    }

    if (sub_1DCE968C8(v82))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v60 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v60, qword_1EDE57E00);
      v61 = sub_1DD0DD8EC();
      v62 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v62))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v63, v64, "Prompt received received low confidence input. Treating as misunderstood and will re-prompt.");
        OUTLINED_FUNCTION_52();
      }

      v65 = type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26(v65);
      sub_1DCD8FC04(&unk_1DD0FCC78, v4);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5ED04, v4);
    }

    sub_1DCE2FF24();
    if (v66)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v67 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v67, qword_1EDE57E00);
      v68 = sub_1DD0DD8EC();
      v69 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v69))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v70, v71, "Prompt received user cancellation.");
        OUTLINED_FUNCTION_52();
      }

      sub_1DCC9FB70();
      v72 = swift_allocError();
      v73 = v79;
      *v79 = v72;
      swift_storeEnumTagMultiPayload();
      sub_1DCE5BB14(v73);
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 2;
}

uint64_t sub_1DCE5A9E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5AA04, 0, 0);
}

uint64_t sub_1DCE5AA04()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_7_54();
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_80(v1);

  return v4(v3);
}

uint64_t sub_1DCE5AAFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5AB1C, 0, 0);
}

uint64_t sub_1DCE5AB1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_7_54();
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_80(v1);

  return v4(v3);
}

uint64_t sub_1DCE5AC14()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_1DCE5ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Prompt.Event(0, *(*a1 + 80), a3, a4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCE5C2C8();
}

uint64_t Prompt.action.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_66_0();
  v3 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43[-v8];
  v10 = type metadata accessor for Yield(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = (v14 - v13);
  v16 = OUTLINED_FUNCTION_66_0();
  type metadata accessor for Prompt.State(v16, v17, v18, v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v43[-v22];
  sub_1DCE59F78(&v43[-v22]);
  switch(__swift_getEnumTagSinglePayload(v23, 3, v3))
  {
    case 1u:
      v40 = type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26(v40);
      v41 = OUTLINED_FUNCTION_21_33();
      sub_1DCD8FC04(v41, v42);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5C890, v1);
    case 2u:
      v32 = OUTLINED_FUNCTION_66_0();
      type metadata accessor for Prompt(v32, v33, v34, v35);
      OUTLINED_FUNCTION_13_55();
      swift_getWitnessTable();
      sub_1DCBD0A3C(v15);
      sub_1DCB28638(v15, type metadata accessor for Yield);
      a1[3] = v10;
      a1[4] = &protocol witness table for Yield;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      *boxed_opaque_existential_1Tm = sub_1DCE5C7EC;
      boxed_opaque_existential_1Tm[1] = v1;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 3u:
      v37 = type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26(v37);
      v38 = OUTLINED_FUNCTION_21_33();
      sub_1DCD8FC04(v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
      swift_allocObject();
      sub_1DD0DCF8C();
    default:
      (*(v5 + 32))(v9, v23, v3);
      a1[3] = type metadata accessor for Conclude(0, v3, v24, v25);
      a1[4] = &protocol witness table for Conclude<A>;
      v26 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v27 = OUTLINED_FUNCTION_66_0();
      type metadata accessor for Prompt(v27, v28, v29, v30);
      OUTLINED_FUNCTION_13_55();
      swift_getWitnessTable();
      ActingFlow.conclude(with:)(v9, v26);
      return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1DCE5B2D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5B2F0, 0, 0);
}

uint64_t sub_1DCE5B2F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_7_54();
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_80(v1);

  return v4(v3);
}

uint64_t sub_1DCE5B3E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5B408, 0, 0);
}

uint64_t sub_1DCE5B408()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_7_54();
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_80(v1);

  return v4(v3);
}

void sub_1DCE5B500()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "Prompt segue.", v2, 2u);
    MEMORY[0x1E12A8390](v2, -1, -1);
  }
}

void sub_1DCE5B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Prompt.Event(0, *(*a1 + 80), a3, a4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19();
  swift_storeEnumTagMultiPayload();
  sub_1DCE5BB14(v4);
}

void sub_1DCE5B6B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Prompt.Event(0, *(*a2 + 80), a3, a4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_1();
  *v4 = a1;
  OUTLINED_FUNCTION_19();
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  sub_1DCE5BB14(v4);
}

uint64_t sub_1DCE5B7E4(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  (*(v2 + 16))(v6 - v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DF22C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 3, v8);
  result = 0x6B61657073;
  switch(EnumTagSinglePayload)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E656B6F7073;
      break;
    case 3:
      result = 0x46676E6974696177;
      break;
    default:
      v11 = OUTLINED_FUNCTION_194();
      v12(v11);
      result = 1701736292;
      break;
  }

  return result;
}

uint64_t sub_1DCE5B95C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = (v5 - v4);
  (*(v1 + 16))(v5 - v4);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574706D6F7270;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v11 = *v6;
      MEMORY[0x1E12A6780](0x286572756C696166, 0xE800000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      sub_1DD0DEDBC();
      MEMORY[0x1E12A6780](41, 0xE100000000000000);

      result = 0;
      break;
    case 2:
      return result;
    case 3:
      result = 0x49726F4674696177;
      break;
    default:
      v9 = OUTLINED_FUNCTION_194();
      v10(v9);
      result = 0x6572707265746E69;
      break;
  }

  return result;
}

void sub_1DCE5BB14(_BYTE *a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_1();
  v35[6] = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v35[4] = v35 - v7;
  v10 = type metadata accessor for Prompt.State(255, v3, v8, v9);
  v35[14] = v3;
  v13 = type metadata accessor for Prompt.Event(255, v3, v11, v12);
  v35[13] = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v35[7] = v14;
  OUTLINED_FUNCTION_10();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v35[15] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_44_0();
  v35[11] = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_0_1();
  v36 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_44_0();
  v35[5] = v25;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v35[10] = v35 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v35 - v31;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v33 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v33, qword_1EDE57E00);
  v34 = *(v36 + 16);
  v35[12] = a1;
  v34(v32, a1, v13);
  sub_1DD0DCF8C();
}

char *Prompt.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 104);
  type metadata accessor for Prompt.State(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t Prompt.__deallocating_deinit()
{
  Prompt.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE5C454()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptProviding.segue()();
}

uint64_t sub_1DCE5C4EC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptProviding.repromptOnEmptyParse()();
}

uint64_t sub_1DCE5C584()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCE1B7E8;

  return PromptProviding.repromptOnLowConfidence()();
}

uint64_t sub_1DCE5C610()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5AAFC(v3, v4);
}

uint64_t sub_1DCE5C694()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5A9E4(v3, v4);
}

uint64_t sub_1DCE5C768()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5B3E8(v3, v4);
}

uint64_t sub_1DCE5C80C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5B2D0(v3, v4);
}

uint64_t sub_1DCE5C8AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCE5CA24(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t dispatch thunk of PromptProviding.prompt()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of PromptProviding.segue()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of PromptProviding.repromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of PromptProviding.repromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_0_84(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCE5D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Prompt.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCE5D124(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  result = sub_1DD0DF22C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

id *sub_1DCE5D1C4(id *__dst, id *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v8 = *(a2 + v5);
  if (v8 > 1)
  {

    return memcpy(__dst, a2, v5 + 1);
  }

  else
  {
    if (v8 == 1)
    {
      v9 = *a2;
      v10 = *a2;
      *__dst = v9;
      *(__dst + v5) = 1;
    }

    else
    {
      (*(v4 + 16))(__dst);
      *(__dst + v5) = 0;
    }

    return __dst;
  }
}

void sub_1DCE5D2F0(id *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = *(a1 + v2);
  if (v3 <= 1)
  {
    if (v3 == 1)
    {
    }

    else
    {
      (*(*(*(a2 + 16) - 8) + 8))();
    }
  }
}

void *sub_1DCE5D370(void *__dst, id *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  if (v5 > 1)
  {

    return memcpy(__dst, a2, v4 + 1);
  }

  else
  {
    if (v5 == 1)
    {
      v6 = *a2;
      v7 = *a2;
      *__dst = v6;
      *(__dst + v4) = 1;
    }

    else
    {
      (*(*(*(a3 + 16) - 8) + 16))(__dst);
      *(__dst + v4) = 0;
    }

    return __dst;
  }
}

id *sub_1DCE5D45C(id *__dst, id *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(__dst + v7);
  v9 = *(__src + v7);
  if (v8 > 1)
  {
    if (v9 <= 1)
    {
      if (v9 != 1)
      {
LABEL_31:
        (*(v6 + 16))(__dst, __src, v5);
        *(__dst + v7) = 0;
        return __dst;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      if (v8 == 1)
      {
      }

      else
      {
        (*(v6 + 8))(__dst, v5);
      }

      v13 = *(__src + v7);
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            v16 = *__src;
            goto LABEL_28;
          case 2:
            v16 = *__src;
            goto LABEL_28;
          case 3:
            v16 = *__src | (*(__src + 2) << 16);
            goto LABEL_28;
          case 4:
            v16 = *__src;
LABEL_28:
            v17 = (v16 | (v14 << (8 * v7))) + 2;
            v13 = v16 + 2;
            if (v7 < 4)
            {
              v13 = v17;
            }

            break;
          default:
            break;
        }
      }

      if (v13 != 1)
      {
        goto LABEL_31;
      }

LABEL_11:
      v10 = *__src;
      v11 = v10;
      *__dst = v10;
      *(__dst + v7) = 1;
      return __dst;
    }

    if (v8 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(__dst, v5);
    }
  }

  return memcpy(__dst, __src, v7 + 1);
}

void *sub_1DCE5D65C(void *__dst, void *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  if (v5 > 1)
  {

    return memcpy(__dst, a2, v4 + 1);
  }

  else
  {
    if (v5 == 1)
    {
      *__dst = *a2;
      *(__dst + v4) = 1;
    }

    else
    {
      (*(*(*(a3 + 16) - 8) + 32))(__dst);
      *(__dst + v4) = 0;
    }

    return __dst;
  }
}

id *sub_1DCE5D734(id *__dst, id *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(__dst + v7);
  v9 = *(__src + v7);
  if (v8 > 1)
  {
    if (v9 <= 1)
    {
      if (v9 != 1)
      {
LABEL_31:
        (*(v6 + 32))(__dst, __src, v5);
        *(__dst + v7) = 0;
        return __dst;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      if (v8 == 1)
      {
      }

      else
      {
        (*(v6 + 8))(__dst, v5);
      }

      v11 = *(__src + v7);
      v12 = v11 - 2;
      if (v11 >= 2)
      {
        if (v7 <= 3)
        {
          v13 = v7;
        }

        else
        {
          v13 = 4;
        }

        switch(v13)
        {
          case 1:
            v14 = *__src;
            goto LABEL_28;
          case 2:
            v14 = *__src;
            goto LABEL_28;
          case 3:
            v14 = *__src | (*(__src + 2) << 16);
            goto LABEL_28;
          case 4:
            v14 = *__src;
LABEL_28:
            v15 = (v14 | (v12 << (8 * v7))) + 2;
            v11 = v14 + 2;
            if (v7 < 4)
            {
              v11 = v15;
            }

            break;
          default:
            break;
        }
      }

      if (v11 != 1)
      {
        goto LABEL_31;
      }

LABEL_11:
      *__dst = *__src;
      *(__dst + v7) = 1;
      return __dst;
    }

    if (v8 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(__dst, v5);
    }
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCE5D92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 251) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 4)
    {
      return v12 - 3;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 252;
}

void sub_1DCE5DA5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFC)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 251) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFB)
  {
    v9 = a2 - 252;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -3 - a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCE5DC24(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = *(a1 + v2);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCE5DC5C(_WORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (a2 > 0xFE)
  {
    v5 = (v4 + 1);
    if (v5 <= 3)
    {
      v6 = ~(-1 << (8 * v5));
    }

    else
    {
      v6 = -1;
    }

    if (v5)
    {
      v7 = v6 & (a2 - 255);
      if (v5 <= 3)
      {
        v8 = v5;
      }

      else
      {
        v8 = 4;
      }

      bzero(a1, v5);
      switch(v8)
      {
        case 2:
          *a1 = v7;
          break;
        case 3:
          *a1 = v7;
          *(a1 + 2) = BYTE2(v7);
          break;
        case 4:
          *a1 = v7;
          break;
        default:
          *a1 = v7;
          break;
      }
    }
  }

  else if (a2)
  {
    *(a1 + v4) = -a2;
  }
}

uint64_t sub_1DCE5DD44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCE5DDD8(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        if (v5 >= 4)
        {
          v7 = v10 + 2;
        }

        else
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    v12 = *a2;
    v13 = *a2;
    *__dst = v12;
    __dst[v5] = 1;
    return __dst;
  }

  if (!v7)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void sub_1DCE5DF78(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        if (v2 >= 4)
        {
          v3 = v6 + 2;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}