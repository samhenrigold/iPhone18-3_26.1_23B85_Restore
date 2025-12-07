void WFRegisterTypeForItemClass(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v6 objectForKey:v5];
  v8 = NSClassFromString(&cfstr_Wflinkentityco.isa);
  v9 = NSClassFromString(&cfstr_Wflinkenumerat.isa);
  v10 = [v5 isEqualToClass:objc_opt_class()];
  v11 = [v5 isEqualToClass:NSClassFromString(&cfstr_Wflinkenumerat_0.isa)];
  v12 = v10 & [a2 isSubclassOfClass:v8];
  v13 = v11 & [a2 isSubclassOfClass:v9];
  if (v7 && (v12 & 1) == 0 && (v13 & 1) == 0)
  {
    v14 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315906;
      v18 = "WFRegisterTypeForItemClass";
      v19 = 2114;
      v20 = a2;
      v21 = 2114;
      v22 = v5;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_FAULT, "%s WFContent warning: %{public}@ is trying to register itself for %{public}@, but %{public}@ is already registered.", &v17, 0x2Au);
    }
  }

  if (v12)
  {
    v15 = v8;
  }

  else
  {
    v15 = a2;
  }

  if (v13)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  [v6 setObject:v16 forKey:v5];
}

uint64_t sub_21E1C119C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E1C1214@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21E1C44C4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21E1C12C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E1C130C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E1C1448(char a1)
{
  if (a1)
  {
    return 0x526C616E69467369;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_21E1C1488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21E1D25F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21E1C14C0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21E1D3430(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21E1C15A4()
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8, &qword_21E355570);
  sub_21E343A80();
  OUTLINED_FUNCTION_1_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21E1C164C()
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8, &qword_21E355570);
  sub_21E343A80();
  OUTLINED_FUNCTION_1_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21E1C181C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21E1C18B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E1C1A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1E0EEC();
  *a1 = result;
  return result;
}

uint64_t sub_21E1C1C68()
{

  OUTLINED_FUNCTION_387();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21E1C1CDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21E21B13C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E1C1D44()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1D8C()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1DEC()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C60, &qword_21E354660);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1E34()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C60, &qword_21E354660);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1EB8()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8CD0, &qword_21E354708);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1F00()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8CD0, &qword_21E354708);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1F90()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D50, &qword_21E3547D8);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1FD8()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D50, &qword_21E3547D8);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C2024()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D90, &qword_21E354830);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C206C()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D90, &qword_21E354830);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C20FC()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8E10, &qword_21E3548F0);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C2144()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8E10, &qword_21E3548F0);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21E343F80() & 1;
  }
}

uint64_t sub_21E1C2310()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E1C2358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E1C23EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388, &qword_21E356578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E1C2B8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21E1C2BFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_21E3434D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343100();

  v10 = sub_21E3434C0();
  v11 = sub_21E343B40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 7104878;
    }

    v22 = v6;
    v16 = v3;
    v17 = a1;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_21E1C80B4(v15, v18, &v24);
    a1 = v17;
    v3 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21E1BD000, v10, v11, "selectedLLMIdentifier is now '%s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223D57360](v14, -1, -1);
    MEMORY[0x223D57360](v13, -1, -1);

    (*(v23 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return (*(v3 + 16))(a1, a2);
}

uint64_t sub_21E1C2E2C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id WFMontaraEnablementHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFMontaraEnablementHelper.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled] = sub_21E1C303C();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for WFMontaraEnablementHelper.GPSObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21E1C31F4;
  *(v5 + 24) = v4;
  sub_21E343220();
  v6 = v3;
  sub_21E343210();
  sub_21E1C4340(&qword_27CEB8000, type metadata accessor for WFMontaraEnablementHelper.GPSObserver, &unk_21E352154);

  sub_21E343200();

  return v6;
}

BOOL sub_21E1C303C()
{
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  v0 = v3 != 0;
  sub_21E1C377C(v2, &qword_27CEB8008, &unk_21E351F40);
  return v0;
}

uint64_t sub_21E1C30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled;
  swift_beginAccess();
  v5 = *(a3 + v4);
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  v6 = v15 != 0;
  sub_21E1C377C(v14, &qword_27CEB8008, &unk_21E351F40);
  *(a3 + v4) = v6;
  v7 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers;
  result = swift_beginAccess();
  v9 = *(a3 + v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_21E1C4248(v11, v14);
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v13 + 8))(v5, *(a3 + v4), v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t WFMontaraEnablementHelper.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21E1C335C(void (*a1)(void *__return_ptr))
{
  sub_21E343220();
  sub_21E343210();
  a1(v4);

  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1();
    v2 = sub_21E343240();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_21E1C377C(v4, &qword_27CEB8008, &unk_21E351F40);
  }

  return v2;
}

uint64_t sub_21E1C3428(void (*a1)(void *__return_ptr))
{
  sub_21E343220();
  sub_21E343210();
  a1(v4);

  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1();
    v2 = sub_21E343230();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_21E1C377C(v4, &qword_27CEB8008, &unk_21E351F40);
  }

  return v2;
}

uint64_t WFMontaraEnablementHelper.selectedModelPunchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3431B0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010, &qword_21E353A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-1] - v9;
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_21E343250();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v11 = sub_21E342BB0();
    OUTLINED_FUNCTION_2(v10);
    if (!v12)
    {
      return (*(*(v11 - 8) + 32))(a1, v10, v11);
    }
  }

  else
  {
    sub_21E1C377C(v16, &qword_27CEB8008, &unk_21E351F40);
    v14 = sub_21E342BB0();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  }

  (*(v4 + 104))(v7, *MEMORY[0x277D0E760], v2);
  sub_21E3431C0();
  (*(v4 + 8))(v7, v2);
  sub_21E342BB0();
  result = OUTLINED_FUNCTION_2(v10);
  if (!v12)
  {
    return sub_21E1C377C(v10, &qword_27CEB8010, &qword_21E353A10);
  }

  return result;
}

uint64_t sub_21E1C377C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t WFMontaraEnablementHelper.accountUpgradeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010, &qword_21E353A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-1] - v3;
  sub_21E343220();
  v5 = sub_21E343210();
  sub_21E3431F0();

  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_21E343260();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    sub_21E342BB0();
    v7 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(v7);
    if (!v8)
    {
      return (*(*(v6 - 1) + 32))(a1, v4, v6);
    }
  }

  else
  {
    sub_21E1C377C(v12, &qword_27CEB8008, &unk_21E351F40);
    sub_21E342BB0();
    v10 = OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v5);
  }

  WFMontaraEnablementHelper.selectedModelPunchoutURL.getter(a1);
  sub_21E342BB0();
  result = OUTLINED_FUNCTION_2(v4);
  if (!v8)
  {
    return sub_21E1C377C(v4, &qword_27CEB8010, &qword_21E353A10);
  }

  return result;
}

uint64_t WFMontaraEnablementHelper.registerObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers;
  swift_beginAccess();
  sub_21E1C41EC(sub_21E1CDB74);
  v5 = *(*(v1 + v4) + 16);
  sub_21E1C4430(v5, sub_21E1CDB74);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  sub_21E1C4248(a1, v6 + 40 * v5 + 32);
  *(v2 + v4) = v6;
  return swift_endAccess();
}

id WFMontaraEnablementHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E1C3A70(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E3437E0();
  v4 = v3;
  v5 = sub_21E3437E0();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_21E1C3AE8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000012;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54504774616843;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x800000021E359450;
    }
  }

  else
  {
    v5 = 0x800000021E359430;
    v4 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x54504774616843;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000021E359450;
    }
  }

  else
  {
    v6 = 0x800000021E359430;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21E1C3BCC(char a1, uint64_t a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_4();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_4();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0(v8, a2, v2);
  }

  return v18 & 1;
}

uint64_t sub_21E1C3C88(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x694C797469746E65;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000007473;
  }

  if (a2)
  {
    v5 = 0x694C797469746E65;
  }

  else
  {
    v5 = 1954047348;
  }

  if (a2)
  {
    v6 = 0xEA00000000007473;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t default argument 1 of WFLanguageRecognizer.init(supportedLanguages:currentLocaleId:)()
{
  v0 = sub_21E342CA0();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E342C90();
  v6 = sub_21E342C80();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_21E1C3DF4(uint64_t a1, id *a2)
{
  result = sub_21E3437C0();
  *a2 = 0;
  return result;
}

uint64_t sub_21E1C3E6C(uint64_t a1, id *a2)
{
  v3 = sub_21E3437D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21E1C3EEC(uint64_t a1)
{
  v2 = sub_21E3437E0();
  MEMORY[0x223D552A0](v2);
  OUTLINED_FUNCTION_1();

  return v1;
}

uint64_t sub_21E1C3F20(uint64_t a1, uint64_t a2)
{
  sub_21E3437E0();
  sub_21E3438A0();
}

uint64_t sub_21E1C3F74(uint64_t a1, uint64_t a2)
{
  sub_21E3437E0();
  sub_21E344020();
  sub_21E3438A0();
  v2 = sub_21E344040();

  return v2;
}

uint64_t sub_21E1C3FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1DD6F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E1C4014(uint64_t a1)
{
  v2 = sub_21E1C4340(&qword_27CEB8038, type metadata accessor for NLLanguage, &unk_21E3520C4);
  v3 = sub_21E1C4340(&qword_27CEB8040, type metadata accessor for NLLanguage, &unk_21E352064);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E1C40D0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21E3437A0();

  *a2 = v3;
  return result;
}

uint64_t sub_21E1C4118(uint64_t a1)
{
  v2 = sub_21E1C4340(&qword_27CEB8068, type metadata accessor for TCFormatFeature, &unk_21E3522A4);
  v3 = sub_21E1C4340(&unk_27CEB8070, type metadata accessor for TCFormatFeature, &unk_21E352204);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E1C41EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21E1C4248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E1C4340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E1C4430(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_21E1C44C4(uint64_t a1)
{
  sub_21E3437E0();
  sub_21E3437A0();
  OUTLINED_FUNCTION_1();

  return v1;
}

void sub_21E1C450C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21E343F80();
}

uint64_t sub_21E1C46C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178, &unk_21E3524C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = sub_21E3437E0();
  *(inited + 40) = v5;
  v6 = MEMORY[0x277D837D0];
  if (!a2)
  {
    sub_21E343870("Shortcuts could not convert the file to PDF because it is not a supported file type.", 84);
    if (qword_27CEB7FA0 == -1)
    {
LABEL_6:
      v7 = OUTLINED_FUNCTION_33();
      v8 = OUTLINED_FUNCTION_33();

      v10 = OUTLINED_FUNCTION_29(v9, sel_localizedStringForKey_value_table_);

      v11 = sub_21E3437E0();
      v13 = v12;

      goto LABEL_10;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    sub_21E343870("Shortcuts encountered an internal error while converting the file to PDF. Please try again later.", 97);
    if (qword_27CEB7FA0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_21E343870("Shortcuts could not convert the file to PDF because %@ is not installed.", 72);
  if (qword_27CEB7FA0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
  }

  v14 = qword_27CEB8248;
  v15 = sub_21E3437A0();
  v16 = sub_21E3437A0();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  sub_21E3437E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180, &unk_21E353BC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21E3522F0;
  *(v18 + 56) = v6;
  *(v18 + 64) = sub_21E1C8A10();
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  v11 = sub_21E3437B0();
  v13 = v19;

LABEL_10:
  *(inited + 72) = v6;
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  return sub_21E343760();
}

uint64_t sub_21E1C49BC(uint64_t a1)
{
  v2 = sub_21E1C89BC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21E1C49F8(uint64_t a1)
{
  v2 = sub_21E1C89BC();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21E1C4A3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E343E40();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

BOOL static WFiWorkPDFConverter.canHandleFile(_:)(void *a1)
{
  v1 = [a1 wfType];
  v2 = [v1 string];

  sub_21E3437E0();
  v3 = OUTLINED_FUNCTION_7();
  return sub_21E1C4A3C(v3, v4) != 3;
}

uint64_t WFiWorkPDFConverter.convertToPDF(_:)()
{
  OUTLINED_FUNCTION_10();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_21E3434D0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_21E342BB0();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E1C4C70()
{
  v1 = [*(v0 + 40) wfType];
  v2 = [v1 string];

  v3 = sub_21E3437E0();
  v5 = v4;

  v6 = sub_21E1C4A3C(v3, v5);
  if (v6 == 3)
  {
    sub_21E343100();
    v7 = sub_21E3434C0();
    v8 = sub_21E343B60();
    if (OUTLINED_FUNCTION_32(v8))
    {
      v9 = OUTLINED_FUNCTION_31();
      *v9 = 0;
      _os_log_impl(&dword_21E1BD000, v7, v8, "convertToPDF was called with an unsupported file type", v9, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    v10 = OUTLINED_FUNCTION_7();
    v11(v10);
    v12 = sub_21E1C8060();
    OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v12);
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
    goto LABEL_65;
  }

  v14 = v6;
  v15 = [objc_allocWithZone(MEMORY[0x277D23C30]) initWithOptions_];
  *(v0 + 112) = v15;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92B0, &qword_21E356210);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21E352300;
  v17 = "oundExportIntent";
  if (v14)
  {
    v18 = 0xD000000000000017;
    if (v14 == 1)
    {
      v19 = "TNExportIntentFormat";
    }

    else
    {
      v19 = "oundExportIntent";
    }

    if (v14 == 1)
    {
      v20 = "com.apple.iWork.Numbers";
    }

    else
    {
      v20 = "onSelectedLLMIdentifierChange";
    }
  }

  else
  {
    v18 = 0xD000000000000015;
    v19 = "com.apple.iWork.Keynote";
    v20 = "oundExportIntent";
  }

  v21 = objc_allocWithZone(MEMORY[0x277D23850]);
  *(v16 + 32) = sub_21E1C76F0(0xD000000000000020, v20 | 0x8000000000000000, v18, v19 | 0x8000000000000000);
  sub_21E1C868C(0, &qword_27CEB8090, 0x277D23850);
  v22 = sub_21E3439C0();

  *(v0 + 16) = 0;
  v23 = [v15 actionsWithFullyQualifiedIdentifiers:v22 error:v0 + 16];

  v24 = *(v0 + 16);
  if (!v23)
  {
    v53 = v24;
    sub_21E342B50();

LABEL_63:
    swift_willThrow();
LABEL_64:

LABEL_65:

    OUTLINED_FUNCTION_8();

    return v88();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8098, &qword_21E352350);
  v25 = sub_21E343740();
  v26 = v24;

  sub_21E1C5F3C(v25);
  v28 = v27;
  v30 = v29;

  if (!v28 || (, v31 = sub_21E1C5FC8(v30), *(v0 + 120) = v31, , !v31))
  {
    sub_21E343100();
    v42 = sub_21E3434C0();
    v43 = sub_21E343B60();
    if (OUTLINED_FUNCTION_32(v43))
    {
      v44 = OUTLINED_FUNCTION_34();
      v45 = swift_slowAlloc();
      v52 = v45;
      *v44 = 136315138;
      v184 = v14;
      if (v14)
      {
        if (v14 == 1)
        {
          v17 = "com.apple.iWork.Numbers";
        }

        else
        {
          v17 = "onSelectedLLMIdentifierChange";
        }
      }

      v81 = *(v0 + 80);
      v14 = *(v0 + 56);
      v82 = *(v0 + 64);
      v83 = OUTLINED_FUNCTION_17(v45, v17 | 0x8000000000000000, v46, v47, v48, v49, v50, v51, v169, v171, v173, v176, v179, v184, v187, v191);

      *(v44 + 4) = v83;
      _os_log_impl(&dword_21E1BD000, v42, v43, "Could not fetch LNActionMetadata for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v82 + 8))(v81, v14);
      LOBYTE(v14) = v185;
    }

    else
    {
      v54 = *(v0 + 80);
      v56 = *(v0 + 56);
      v55 = *(v0 + 64);

      (*(v55 + 8))(v54, v56);
    }

    v84 = *&aPages_0[8 * v14];
    v85 = qword_21E352558[v14];
    v86 = sub_21E1C8060();
    OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v86);
    *v87 = v84;
    v87[1] = v85;
    goto LABEL_63;
  }

  v180 = v31;
  v183 = v14;
  v177 = v15;
  v32 = [v31 parameters];
  v174 = sub_21E1C868C(0, &qword_27CEB80A0, 0x277D23740);
  v33 = sub_21E3439D0();

  v34 = sub_21E1C803C(v33);
  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {

      sub_21E343100();
      v57 = sub_21E3434C0();
      v58 = sub_21E343B60();
      if (OUTLINED_FUNCTION_32(v58))
      {
        v59 = swift_slowAlloc();
        swift_slowAlloc();
        *v59 = 136315394;
        v60 = OUTLINED_FUNCTION_12();
        v63 = sub_21E1C80B4(v60, v61, v62);
        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        v15 = v177;
        if (v183)
        {
          if (v183 == 1)
          {
            v70 = "com.apple.iWork.Numbers";
          }

          else
          {
            v70 = "onSelectedLLMIdentifierChange";
          }
        }

        else
        {
          v70 = "oundExportIntent";
        }

        v140 = *(v0 + 56);
        v139 = *(v0 + 64);
        v141 = OUTLINED_FUNCTION_17(v63, v70 | 0x8000000000000000, v64, v65, v66, v67, v68, v69, v169, "oundExportIntent", v174, v177, v180, v183, *(v0 + 88), v191);

        *(v59 + 14) = v141;
        _os_log_impl(&dword_21E1BD000, v57, v58, "Could not find '%s' parameter in %s", v59, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_5_0();

        (*(v139 + 8))(v189, v140);
      }

      else
      {
LABEL_73:

        v103 = OUTLINED_FUNCTION_7();
        v104(v103);
        v15 = v177;
      }

LABEL_84:
      v142 = sub_21E1C8060();
      OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v142);
      *v143 = xmmword_21E352320;
      swift_willThrow();

      goto LABEL_64;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x223D556A0](i, v33);
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    v37 = v36;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    v38 = sub_21E1C8620(v36);
    if (!v39)
    {

      continue;
    }

    if (v38 == 0x746E656D75636F64 && v39 == 0xE800000000000000)
    {
      break;
    }

    v41 = sub_21E343F80();

    if (v41)
    {
      goto LABEL_44;
    }
  }

LABEL_44:

  v71 = [v180 parameters];
  v72 = sub_21E3439D0();

  v73 = sub_21E1C803C(v72);
  v74 = 0;
  while (2)
  {
    if (v73 == v74)
    {

      sub_21E343100();
      v57 = sub_21E3434C0();
      v90 = sub_21E343B60();
      if (!OUTLINED_FUNCTION_32(v90))
      {
        goto LABEL_73;
      }

      v91 = swift_slowAlloc();
      swift_slowAlloc();
      *v91 = 136315394;
      v92 = OUTLINED_FUNCTION_19();
      v95 = sub_21E1C80B4(v92, v93, v94);
      *(v91 + 4) = v95;
      *(v91 + 12) = 2080;
      v15 = v177;
      if (v183)
      {
        if (v183 == 1)
        {
          v102 = "com.apple.iWork.Numbers";
        }

        else
        {
          v102 = "onSelectedLLMIdentifierChange";
        }
      }

      else
      {
        v102 = "oundExportIntent";
      }

      v167 = *(v0 + 56);
      v166 = *(v0 + 64);
      v168 = OUTLINED_FUNCTION_17(v95, v102 | 0x8000000000000000, v96, v97, v98, v99, v100, v101, v169, "oundExportIntent", v174, v177, v180, v183, *(v0 + 96), v191);

      *(v91 + 14) = v168;
      _os_log_impl(&dword_21E1BD000, v57, v90, "Could not find '%s' intent parameter in %s", v91, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v166 + 8))(v190, v167);
      goto LABEL_84;
    }

    if ((v72 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x223D556A0](v74, v72);
    }

    else
    {
      if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_94;
      }

      v75 = *(v72 + 8 * v74 + 32);
    }

    v76 = v75;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_93;
    }

    v77 = sub_21E1C8620(v75);
    if (!v78)
    {

LABEL_58:
      ++v74;
      continue;
    }

    break;
  }

  if (v77 != 0x74616D726F66 || v78 != 0xE600000000000000)
  {
    v80 = sub_21E343F80();

    if (v80)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

LABEL_75:

  v105 = [objc_allocWithZone(MEMORY[0x277D23BC0]) init];
  *(v0 + 128) = v105;
  v106 = [objc_opt_self() policyWithActionMetadata:v180 signals:v105];
  *(v0 + 136) = v106;
  *(v0 + 24) = 0;
  v107 = [v106 connectionWithError_];
  *(v0 + 144) = v107;
  v108 = *(v0 + 24);
  if (!v107)
  {
    v138 = v108;
    sub_21E342B50();

    swift_willThrow();
    goto LABEL_65;
  }

  v181 = v107;
  v109 = v106;
  v110 = *(v0 + 104);
  v111 = *(v0 + 40);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_21E352310;
  sub_21E1C868C(0, &qword_27CEB80A8, 0x277CD3C08);
  v113 = v108;
  v114 = [v111 fileURL];
  sub_21E342B90();

  v115 = [v111 filename];
  v116 = sub_21E3437E0();
  v118 = v117;

  v119 = [v111 wfType];
  v120 = [v119 string];

  v121 = sub_21E3437E0();
  v123 = v122;

  sub_21E1C60F8(v110, v116, v118, v121, v123);
  v124 = [objc_opt_self() fileValueType];
  v125 = objc_allocWithZone(MEMORY[0x277D23950]);
  v133 = OUTLINED_FUNCTION_26(v125, v126, v127, v128, v129, v130, v131, v132, v169, "oundExportIntent", v174, v177, v181, v183, v187, v191);
  v134 = objc_allocWithZone(MEMORY[0x277D238D0]);
  v135 = OUTLINED_FUNCTION_12();
  *(v112 + 32) = sub_21E1C77F0(v135, v136, v133);
  if (v186)
  {
    if (v186 == 1)
    {
      v137 = "oundExportIntent";
    }

    else
    {
      v137 = "TPExportIntentFormat";
    }
  }

  else
  {
    v137 = "convertToPDF(_:)";
  }

  v144 = v109;
  v145 = v182;
  v146 = *(v0 + 48);
  sub_21E1C868C(0, &qword_27CEB80B0, 0x277D23878);
  sub_21E1C6208(0xD000000000000014, v137 | 0x8000000000000000);
  v147 = objc_allocWithZone(MEMORY[0x277D23950]);
  v155 = OUTLINED_FUNCTION_26(v147, v148, v149, v150, v151, v152, v153, v154, v170, v172, v175, v178, v182, v186, v188, v192);
  v156 = objc_allocWithZone(MEMORY[0x277D238D0]);
  v157 = OUTLINED_FUNCTION_19();
  *(v112 + 40) = sub_21E1C77F0(v157, v158, v155);
  sub_21E1C868C(0, &qword_27CEB80B8, 0x277D238D0);
  v159 = sub_21E3439C0();

  v160 = [v144 actionWithParameters_];
  *(v0 + 152) = v160;

  v161 = [objc_allocWithZone(MEMORY[0x277D23B00]) init];
  *(v0 + 160) = v161;
  v162 = [v145 executorForAction:v160 options:v161 delegate:v146];
  *(v0 + 168) = v162;
  v163 = swift_task_alloc();
  *(v0 + 176) = v163;
  *(v163 + 16) = v146;
  *(v163 + 24) = v162;
  v164 = swift_task_alloc();
  *(v0 + 184) = v164;
  sub_21E1C868C(0, &qword_27CEB80C0, off_278343718);
  *v164 = v0;
  v164[1] = sub_21E1C5BD0;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0](v165);
}

uint64_t sub_21E1C5BD0()
{
  OUTLINED_FUNCTION_20();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v2 = v5;
  *(v5 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E1C5D10()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);

  v8 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_21E1C5E2C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 112);

  OUTLINED_FUNCTION_8();

  return v8();
}

void *sub_21E1C5F3C(uint64_t a1)
{
  result = sub_21E1C8F88(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_21E1C8FC8(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_21E1C5FC8(uint64_t a1)
{
  result = sub_21E1C8F88(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21E1C8ED8(result, v3, 0, a1);
  }
}

uint64_t sub_21E1C602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21E343500();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

double sub_21E1C60D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_21E1C4248(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_21E1C60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21E342B60();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_21E3437A0();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21E3437A0();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  v12 = sub_21E342BB0();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_21E1C6208(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21E3437A0();

  v4 = [v2 initWithEnumerationIdentifier_];

  return v4;
}

id sub_21E1C627C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8198, &qword_21E352520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0, &qword_21E352358);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
  swift_beginAccess();
  sub_21E1C8E68(v8, a2 + v10);
  swift_endAccess();
  return [a3 perform];
}

uint64_t sub_21E1C6430(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21E1C64F4;

  return WFiWorkPDFConverter.convertToPDF(_:)();
}

uint64_t sub_21E1C64F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_21E342B40();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_21E1C66A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190, &qword_21E3524E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_21E343AB0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_21E3524F0;
  v9[5] = v8;
  sub_21E1C7B04(0, 0, v6, &unk_21E352500, v9);
}

id WFiWorkPDFConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFiWorkPDFConverter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0, &qword_21E352358);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WFiWorkPDFConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WFiWorkPDFConverter.executor(_:didPerformActionWith:error:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_21E342BB0();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24();
  v131 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  v14 = &v128 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0, &qword_21E352358);
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v137 = &v128 - v19;
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v139 = v20;
  v140 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24();
  v138 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v133 = &v128 - v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  v132 = &v128 - v26;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  v134 = &v128 - v28;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  v31 = &v128 - v30;
  if (a3)
  {
    v32 = v17;
    v33 = v9;
    v136 = a2;
    v34 = a3;
    sub_21E343100();
    v35 = a3;
    v36 = a3;
    v37 = sub_21E3434C0();
    v38 = sub_21E343B60();

    LODWORD(v130) = v38;
    v39 = os_log_type_enabled(v37, v38);
    v135 = v36;
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_34();
      v128 = v40;
      v129 = swift_slowAlloc();
      v143[0] = v129;
      *v40 = 136315138;
      v141 = v36;
      v41 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8, &qword_21E355570);
      v42 = sub_21E343830();
      v44 = v4;
      v45 = sub_21E1C80B4(v42, v43, v143);
      v9 = v33;

      v46 = v128;
      *(v128 + 1) = v45;
      v4 = v44;
      _os_log_impl(&dword_21E1BD000, v37, v130, "LNActionExecutor failed with error: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v140 + 8))(v31, v139);
    }

    else
    {

      (*(v140 + 8))(v31, v139);
      v9 = v33;
    }

    swift_beginAccess();
    if (!OUTLINED_FUNCTION_16())
    {
      v17 = v32;
      v70 = OUTLINED_FUNCTION_3();
      v71(v70);
      v143[0] = v135;
      sub_21E343A60();
      v72 = OUTLINED_FUNCTION_21();
      v73(v72);
      a2 = v136;
      if (!v136)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    a2 = v136;
    v17 = v32;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v47 = [a2 output];
  v48 = [v47 value];

  if (v48)
  {
    v49 = [v48 value];

    sub_21E343CE0();
    swift_unknownObjectRelease();
    sub_21E1C868C(0, &qword_27CEB80A8, 0x277CD3C08);
    if (swift_dynamicCast())
    {
      v136 = v7;
      v50 = v142;
      v51 = [v142 fileURL];
      v52 = v140;
      if (v51)
      {
        v53 = v51;
        v129 = v17;
        v135 = v9;
        v133 = v4;
        v138 = v14;
        sub_21E342B90();

        v54 = v134;
        sub_21E343100();
        v55 = v50;
        v56 = sub_21E3434C0();
        v57 = sub_21E343B50();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_34();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          *(v58 + 4) = v55;
          *v59 = v55;
          v60 = v55;
          _os_log_impl(&dword_21E1BD000, v56, v57, "LNActionExecutor completed with output: %@", v58, 0xCu);
          sub_21E1C377C(v59, &qword_27CEB80E0, qword_21E352360);
          OUTLINED_FUNCTION_5_0();
          v52 = v140;
          OUTLINED_FUNCTION_5_0();
        }

        v130 = v55;

        v61 = *(v52 + 8);
        v61(v54, v139);
        v62 = objc_opt_self();
        v63 = v138;
        v64 = v52 + 8;
        v65 = sub_21E342B60();
        v66 = [v62 fileWithURL:v65 options:8];

        if (v66)
        {
          v67 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
          OUTLINED_FUNCTION_15();
          if (__swift_getEnumTagSinglePayload(v64 + v67, 1, v15))
          {
            v68 = OUTLINED_FUNCTION_18();
            v69(v68);
            swift_endAccess();
          }

          else
          {
            v105 = OUTLINED_FUNCTION_11();
            v106(v105);
            swift_endAccess();
            v143[0] = v66;
            sub_21E343A70();

            v107 = OUTLINED_FUNCTION_21();
            v108(v107);
            v109 = OUTLINED_FUNCTION_18();
            v110(v109);
          }
        }

        else
        {
          v140 = v64;
          v91 = v132;
          sub_21E343100();
          v92 = v135;
          v93 = v136;
          v94 = v131;
          (*(v135 + 2))(v131, v63, v136);
          v95 = sub_21E3434C0();
          v96 = sub_21E343B60();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = OUTLINED_FUNCTION_34();
            v98 = swift_slowAlloc();
            v143[0] = v98;
            *v97 = 136315138;
            sub_21E1C86CC();
            v99 = sub_21E343F60();
            v101 = v100;
            v102 = v92[1];
            v102(v94, v136);
            v103 = sub_21E1C80B4(v99, v101, v143);

            *(v97 + 4) = v103;
            _os_log_impl(&dword_21E1BD000, v95, v96, "Failed to create WFFileRepresentation for %s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v98);
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_5_0();

            v104 = v132;
          }

          else
          {

            v102 = v92[1];
            v102(v94, v93);
            v104 = v91;
          }

          v61(v104, v139);
          v116 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
          OUTLINED_FUNCTION_15();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94 + v116, 1, v15);
          v118 = v130;
          if (EnumTagSinglePayload)
          {
            v119 = OUTLINED_FUNCTION_25();
            (v102)(v119);
            swift_endAccess();
          }

          else
          {
            v120 = OUTLINED_FUNCTION_11();
            v121(v120);
            swift_endAccess();
            v122 = sub_21E1C8060();
            v123 = OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v122);
            *v124 = xmmword_21E352320;
            v143[0] = v123;
            sub_21E343A60();

            v125 = OUTLINED_FUNCTION_21();
            v126(v125);
            v127 = OUTLINED_FUNCTION_25();
            (v102)(v127);
          }
        }

        return;
      }

      v86 = v133;
      sub_21E343100();
      v87 = sub_21E3434C0();
      v88 = sub_21E343B60();
      if (os_log_type_enabled(v87, v88))
      {
        *OUTLINED_FUNCTION_31() = 0;
        OUTLINED_FUNCTION_30(&dword_21E1BD000, v89, v90, "INFile.fileURL was nil");
        v52 = v140;
        OUTLINED_FUNCTION_5_0();
      }

      (*(v52 + 8))(v86, v139);
      OUTLINED_FUNCTION_27();
      if (OUTLINED_FUNCTION_16())
      {

        return;
      }

      v111 = OUTLINED_FUNCTION_3();
      v112(v111);
      v113 = sub_21E1C8060();
      v114 = OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v113);
      OUTLINED_FUNCTION_28(v114, v115, xmmword_21E352320);

LABEL_21:
      v84 = OUTLINED_FUNCTION_21();
      v85(v84);
      return;
    }
  }

LABEL_17:
  v74 = v138;
  sub_21E343100();
  v75 = sub_21E3434C0();
  v76 = sub_21E343B60();
  if (os_log_type_enabled(v75, v76))
  {
    *OUTLINED_FUNCTION_31() = 0;
    OUTLINED_FUNCTION_30(&dword_21E1BD000, v77, v78, "LNActionExecutor did not provide an output LNValue with a value of type INFile");
    OUTLINED_FUNCTION_5_0();
  }

  (*(v140 + 8))(v74, v139);
  OUTLINED_FUNCTION_27();
  if (!OUTLINED_FUNCTION_16())
  {
    v79 = OUTLINED_FUNCTION_3();
    v80(v79);
    v81 = sub_21E1C8060();
    v82 = OUTLINED_FUNCTION_14(&type metadata for WFiWorkPDFConverter.ConverterError, v81);
    OUTLINED_FUNCTION_28(v82, v83, xmmword_21E352320);
    goto LABEL_21;
  }
}

uint64_t sub_21E1C7558(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343100();
  v10 = sub_21E3434C0();
  v11 = sub_21E343B70();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_31();
    *v12 = 0;
    _os_log_impl(&dword_21E1BD000, v10, v11, a3, v12, 2u);
    OUTLINED_FUNCTION_5_0();
  }

  return (*(v6 + 8))(v9, v4);
}

id sub_21E1C76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21E3437A0();

  v6 = sub_21E3437A0();

  v7 = [v4 initWithActionIdentifier:v5 bundleIdentifier:v6];

  return v7;
}

id sub_21E1C7778(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_21E343F70() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id sub_21E1C77F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21E3437A0();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

uint64_t sub_21E1C7854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21E1C9060;

  return v6();
}

uint64_t sub_21E1C793C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21E1C7A24;

  return v7();
}

uint64_t sub_21E1C7A24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_21E1C7B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190, &qword_21E3524E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_21E1C8CD0(a3, v22 - v10);
  v12 = sub_21E343AB0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_21E1C377C(v11, &qword_27CEB8190, &qword_21E3524E0);
  }

  else
  {
    sub_21E343AA0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_21E343A50();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_21E343850() + 32;
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

      sub_21E1C377C(a3, &qword_27CEB8190, &qword_21E3524E0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E1C377C(a3, &qword_27CEB8190, &qword_21E3524E0);
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

uint64_t sub_21E1C7DD0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E1C7EC8;

  return v6(a1);
}

uint64_t sub_21E1C7EC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_21E1C7FAC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0, &qword_21E352528);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    return sub_21E343DF0();
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v3 = a1;
    }

    return *(v3 + 16);
  }
}

uint64_t sub_21E1C803C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21E343DF0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_21E1C8060()
{
  result = qword_27CEB8080;
  if (!qword_27CEB8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8080);
  }

  return result;
}

uint64_t sub_21E1C80B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_23();
  v9 = sub_21E1C8174(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_21E1C8F28(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

unint64_t sub_21E1C8174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E1C8274(a5, a6);
    *a1 = v9;
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
    result = sub_21E343D80();
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

uint64_t sub_21E1C8274(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E1C82C0(a1, a2);
  sub_21E1C83D8(&unk_282F4DE00);
  return v3;
}

uint64_t sub_21E1C82C0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21E343920())
  {
    result = sub_21E1C84BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21E343D10();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21E343D80();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21E1C83D8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21E1C852C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21E1C84BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A8, &unk_21E352530);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21E1C852C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A8, &unk_21E352530);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_21E1C8620(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E3437E0();

  return v3;
}

uint64_t sub_21E1C868C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_21E1C86CC()
{
  result = qword_27CEB80D8;
  if (!qword_27CEB80D8)
  {
    sub_21E342BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB80D8);
  }

  return result;
}

uint64_t type metadata accessor for WFiWorkPDFConverter(uint64_t a1)
{
  result = qword_27CEB80F8;
  if (!qword_27CEB80F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E1C8778(uint64_t a1)
{
  sub_21E1C8808(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E1C8808(uint64_t a1)
{
  if (!qword_27CEB8108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB80D0, &qword_21E352358);
    v1 = sub_21E343C70();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEB8108);
    }
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

uint64_t get_enum_tag_for_layout_string_10ContentKit19WFiWorkPDFConverterC14ConverterErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21E1C88D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E1C892C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21E1C898C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_21E1C89BC()
{
  result = qword_27CEB8170;
  if (!qword_27CEB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8170);
  }

  return result;
}

unint64_t sub_21E1C8A10()
{
  result = qword_27CEB8188;
  if (!qword_27CEB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8188);
  }

  return result;
}

uint64_t sub_21E1C8A64()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C7A24;
  v2 = OUTLINED_FUNCTION_7();

  return v3(v2);
}

uint64_t sub_21E1C8B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;
  v2 = OUTLINED_FUNCTION_7();

  return v3(v2);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E1C8C0C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9(v6);
  *v7 = v8;
  v7[1] = sub_21E1C9060;

  return sub_21E1C793C(a1, v3, v4, v5);
}

uint64_t sub_21E1C8CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190, &qword_21E3524E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1C8D40()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E1C8DD4()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E1C8E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8198, &qword_21E352520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1C8ED8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21E1C8F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_21E1C8FC8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x223D57360);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return __swift_getEnumTagSinglePayload(v1 + v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_21E1C80B4(0xD000000000000020, a2, va);
}

id OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_21E1C7778(va, v16);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;
  *(v3 - 128) = a1;

  return sub_21E343A60();
}

id OUTLINED_FUNCTION_29(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_32(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_21E3437A0();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_slowAlloc();
}

id WFContentItemRegistry.register(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v1 registerContentItemClass_];
}

id WFContentItemRegistry.contentItemClass(for:)(uint64_t a1)
{
  result = [v1 contentItemClassForType_];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_21E1C93E0();
    return swift_dynamicCastMetatypeUnconditional();
  }

  return result;
}

unint64_t sub_21E1C93E0()
{
  result = qword_280CD7A40;
  if (!qword_280CD7A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD7A40);
  }

  return result;
}

uint64_t WFContentItemRegistry.contentItemClasses(supporting:)(uint64_t a1)
{
  v2 = [v1 contentItemClassesSupportingType_];
  v3 = sub_21E343B30();

  v4 = sub_21E1C94A8(v3);

  return v4;
}

uint64_t sub_21E1C94A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_21E1D5954(0, v1, 0);
  v2 = v29;
  result = sub_21E1C97B0(a1);
  v5 = result;
  v6 = a1;
  v8 = v7;
  v9 = 0;
  v10 = a1 + 56;
  v23 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v5 < 1 << *(v6 + 32))
    {
      v11 = v5 >> 6;
      if ((*(v10 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v4)
      {
        goto LABEL_25;
      }

      v25 = v4;
      sub_21E1C97F0(*(v6 + 48) + 40 * v5, v27);
      sub_21E1C97F0(v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8210, &qword_21E352578);
      swift_dynamicCast();
      result = sub_21E1C984C(v27);
      v12 = v28;
      v29 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_21E1D5954((v13 > 1), v14 + 1, 1);
        v2 = v29;
      }

      *(v2 + 16) = v14 + 1;
      *(v2 + 8 * v14 + 32) = v12;
      if (v8)
      {
        goto LABEL_29;
      }

      v10 = a1 + 56;
      v6 = a1;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(a1 + 56 + 8 * v11);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v25)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 64 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_21E1C98A0(v5, v25, 0);
            v6 = a1;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_21E1C98A0(v5, v25, 0);
        v6 = a1;
      }

LABEL_19:
      if (++v9 == v23)
      {
        return v2;
      }

      v8 = 0;
      v4 = *(v6 + 36);
      v5 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t WFContentItemRegistry.contentItemClasses.getter()
{
  v1 = [v0 contentItemClasses];
  v2 = sub_21E343B30();

  v3 = sub_21E1C94A8(v2);

  return v3;
}

uint64_t sub_21E1C98A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t LNCodableValue.dateInterval()@<X0>(uint64_t a1@<X8>)
{
  sub_21E3429C0();
  swift_allocObject();
  sub_21E3429B0();
  v3 = sub_21E342A80();
  v4 = [v1 data];
  v5 = sub_21E342BF0();
  v7 = v6;

  sub_21E1C9CA8(&qword_27CEB8218, MEMORY[0x277CC88D0]);
  sub_21E3429A0();
  sub_21E1C99C4(v5, v7);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_21E1C99C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_21E1C9A1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8230, &qword_21E352580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = a1;
  LNCodableValue.dateInterval()(v4);

  v6 = sub_21E342A80();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) != 1)
  {
    v7 = sub_21E342A60();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v7;
}

id LNCodableValue.init(_:)(uint64_t a1)
{
  v3 = sub_21E3429E0();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  sub_21E3429D0();
  sub_21E3429F0();
  v4 = sub_21E342A80();
  sub_21E1C9CA8(&qword_27CEB8220, MEMORY[0x277CC88B0]);
  v5 = sub_21E342A00();
  v7 = v6;
  v8 = sub_21E342BC0();
  v9 = [v1 initWithData_];
  sub_21E1C99C4(v5, v7);

  (*(*(v4 - 8) + 8))(a1, v4);
  return v9;
}

{
  v3 = sub_21E3429E0();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  sub_21E3429D0();
  sub_21E3429F0();
  v4 = sub_21E342B30();
  sub_21E229980(&qword_27CEB9250, MEMORY[0x277CC8E58]);
  v5 = sub_21E342A00();
  v7 = v6;
  v8 = sub_21E342BC0();
  v9 = [v1 initWithData_];
  sub_21E1C99C4(v5, v7);

  (*(*(v4 - 8) + 8))(a1, v4);
  return v9;
}

uint64_t sub_21E1C9CA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21E342A80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _sSo14LNCodableValueC10ContentKitEyAB10Foundation12DateIntervalVcfC_0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21E342A60();
  v4 = [v2 initWithDateInterval_];

  v5 = sub_21E342A80();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id LNValue.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E342A80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E343BA0();
  (*(v5 + 16))(v8, a1, v4);
  v9 = LNCodableValue.init(_:)();
  sub_21E1C9ED8();
  v10 = sub_21E343BC0();
  v11 = [v2 initWithValue:v9 valueType:v10];

  (*(v5 + 8))(a1, v4);
  return v11;
}

{
  v2 = v1;
  v4 = sub_21E342B30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E343BA0();
  (*(v5 + 16))(v8, a1, v4);
  v9 = LNCodableValue.init(_:)();
  sub_21E1C9ED8();
  v10 = sub_21E343BD0();
  v11 = [v2 initWithValue:v9 valueType:v10];

  (*(v5 + 8))(a1, v4);
  return v11;
}

unint64_t sub_21E1C9ED8()
{
  result = qword_27CEB8228;
  if (!qword_27CEB8228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8228);
  }

  return result;
}

uint64_t sub_21E1C9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_21E342A80();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E342A70();
  return a4(v8);
}

WFModelContentLocation __swiftcall WFModelContentLocation.init(model:)(ContentKit::WFGenerativeModelName model)
{
  v1 = *model;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = v1;
  sub_21E1CA0D4(&v9);
  v3 = sub_21E3437A0();

  v4 = [v2 initWithIdentifier:v3 promptingBehaviour:2];

  v8 = v4;
  result.super._promptingBehaviour = v7;
  result.super._identifier = v6;
  result.super._localizedTitle = v5;
  result.super.super.isa = v8;
  return result;
}

unint64_t sub_21E1CA0D4(_BYTE *a1)
{
  sub_21E342A50();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A30();
  sub_21E1CB3C4();
  sub_21E343CA0();
  v2 = OUTLINED_FUNCTION_3_0();
  v3(v2);

  v4 = sub_21E343840();
  v6 = v5;

  MEMORY[0x223D55250](v4, v6);

  return 0xD00000000000001BLL;
}

uint64_t WFModelContentLocation.localizedTitle.getter()
{
  v1 = v0;
  v2 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = [v1 identifier];
  v10 = sub_21E3437E0();
  v12 = v11;

  sub_21E1CA7E8(v10, v12, &v43);

  switch(v43)
  {
    case 1:
      v28 = [objc_allocWithZone(type metadata accessor for WFMontaraEnablementHelper()) init];
      v29 = WFMontaraEnablementHelper.selectedModelLocalizedName.getter();
      if (v30 || (v29 = WFMontaraEnablementHelper.defaultModelLocalizedName.getter(), v31))
      {
        v17 = v29;
      }

      else
      {
        v33 = [v1 &selRef_initWithPersonNameComponents_];
        v34 = sub_21E3437E0();
        v36 = v35;

        sub_21E1CA7E8(v34, v36, &v41);

        switch(v41)
        {
          case 1:
            sub_21E343870("Extension", 9);
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          case 2:
            sub_21E343870("On-Device", 9);
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          case 3:

            goto LABEL_10;
          default:
            sub_21E343870("Private Cloud Compute", 21);
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_22;
            }

LABEL_23:
            OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
LABEL_22:
            OUTLINED_FUNCTION_3_0();
            v37 = sub_21E3437A0();
            OUTLINED_FUNCTION_3_0();
            v38 = sub_21E3437A0();

            v40 = OUTLINED_FUNCTION_4_1(v39, sel_localizedStringForKey_value_table_);

            v17 = sub_21E3437E0();
            break;
        }
      }

      break;
    case 2:
      sub_21E343870("On-Device", 9);
      goto LABEL_4;
    case 3:
      sub_21E343100();
      v18 = v1;
      v19 = sub_21E3434C0();
      v20 = sub_21E343B60();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_34();
        v22 = OUTLINED_FUNCTION_7_0();
        v42 = v22;
        *v21 = 136315138;
        v23 = [v18 &selRef_initWithPersonNameComponents_];
        v24 = sub_21E3437E0();
        v26 = v25;

        v27 = sub_21E1C80B4(v24, v26, &v42);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_21E1BD000, v19, v20, "Failed to get localized title for model with identifier %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_5_0();
      }

      (*(v4 + 8))(v8, v2);
LABEL_10:
      v17 = 0;
      break;
    default:
      sub_21E343870("Private Cloud Compute", 21);
LABEL_4:
      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
      }

      v13 = qword_27CEB8248;
      v14 = sub_21E3437A0();
      v15 = sub_21E3437A0();

      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      v17 = sub_21E3437E0();
      break;
  }

  return v17;
}

uint64_t sub_21E1CA7E8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v44 - v13;
  v53 = sub_21E342A50();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  if (sub_21E343930())
  {
    v47 = v8;
    v48 = v6;
    v49 = a3;
    v45 = a1;
    v46 = a2;
    v58 = a1;
    v59 = a2;
    v56 = 0xD00000000000001BLL;
    v57 = 0x800000021E3598C0;
    v54 = 0;
    v55 = 0xE000000000000000;
    v52 = sub_21E1CB3C4();
    sub_21E343CB0();
    OUTLINED_FUNCTION_6();
    v20 = 0;
    v51 = 0x800000021E359450;
    v21 = (v15 + 8);
    do
    {
      v22 = byte_282F4DE90[v20++ + 32];
      v23 = 0xD000000000000012;
      v24 = 0x54504774616843;
      if (v22 != 1)
      {
        v24 = 0xD00000000000001CLL;
      }

      v25 = v51;
      if (v22 == 1)
      {
        v25 = 0xE700000000000000;
      }

      if (v22)
      {
        v23 = v24;
        v26 = v25;
      }

      else
      {
        v26 = 0x800000021E359430;
      }

      v58 = v23;
      v59 = v26;
      sub_21E342A30();
      sub_21E343CA0();
      (*v21)(v19, v53);

      v27 = sub_21E343840();
      v29 = v28;

      if (v27 == a1 && v29 == 0x800000021E3598C0)
      {

LABEL_23:

        goto LABEL_24;
      }

      v31 = sub_21E343F80();

      if (v31)
      {
        goto LABEL_23;
      }
    }

    while (v20 != 3);

    v32 = v50;
    sub_21E343100();
    v33 = v46;

    v34 = sub_21E3434C0();
    v35 = sub_21E343B60();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_34();
      v37 = OUTLINED_FUNCTION_7_0();
      v58 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_21E1C80B4(v45, v33, &v58);
      _os_log_impl(&dword_21E1BD000, v34, v35, "Failed to find a WFGenerativeModelName candidate enum case for identifier: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    result = (*(v47 + 8))(v32, v48);
    LOBYTE(v22) = 3;
LABEL_24:
    a3 = v49;
  }

  else
  {
    v39 = a1;
    sub_21E343100();

    v40 = sub_21E3434C0();
    v41 = sub_21E343B70();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_34();
      v43 = OUTLINED_FUNCTION_7_0();
      v58 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_21E1C80B4(v39, a2, &v58);
      _os_log_impl(&dword_21E1BD000, v40, v41, "WFModelContentLocation was created with an invalid identifier: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    result = (*(v8 + 8))(v12, v6);
    LOBYTE(v22) = 3;
  }

  *a3 = v22;
  return result;
}

uint64_t static WFModelContentLocation.object(withWFSerializedRepresentation:)(uint64_t a1)
{
  v2 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E1CAF20(a1, v21, 0x696669746E656469);
  if (!v22)
  {
    sub_21E1CB318(v21);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || (sub_21E1CA7E8(v19, v20, v21), , v9 = v21[0], LOBYTE(v21[0]) == 3))
  {
LABEL_7:
    sub_21E343100();

    v12 = sub_21E3434C0();
    v13 = sub_21E343B60();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_34();
      v15 = OUTLINED_FUNCTION_7_0();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = sub_21E343750();
      v18 = sub_21E1C80B4(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_21E1BD000, v12, v13, "Failed to create WFModelContentLocation from serialized representation: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    (*(v4 + 8))(v8, v2);
    return 0;
  }

  type metadata accessor for WFModelContentLocation();
  LOBYTE(v21[0]) = v9;
  v10 = WFModelContentLocation.init(model:)(v21);
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    return result;
  }

  return 0;
}

double sub_21E1CAF20@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_21E1E76DC(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_21E1C8F28(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21E1CAF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E1E76DC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void *sub_21E1CAFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E1E76DC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_21E1CB024@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_21E1E7780(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 40 * v5;

    sub_21E1C4248(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id WFModelContentLocation.init(identifier:promptingBehaviour:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21E3437A0();

  v6 = [v4 initWithIdentifier:v5 promptingBehaviour:a3];

  return v6;
}

{
  v5 = sub_21E3437A0();

  v8.receiver = v3;
  v8.super_class = WFModelContentLocation;
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_promptingBehaviour_, v5, a3);

  return v6;
}

id WFModelContentLocation.init(coder:)(void *a1)
{
  v4.super_class = WFModelContentLocation;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_21E1CB318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9230, &qword_21E353BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for WFModelContentLocation()
{
  result = qword_27CEB8238;
  if (!qword_27CEB8238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8238);
  }

  return result;
}

unint64_t sub_21E1CB3C4()
{
  result = qword_27CEB8240;
  if (!qword_27CEB8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8240);
  }

  return result;
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_slowAlloc();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_21E343870(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_21E343870(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27CEB7FA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEB8248;

  return v1;
}

id sub_21E1CB5BC()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEB8248 = result;
  return result;
}

uint64_t ChatMessagesPrompt.renderAsUserContentPromptVariableBinding(modelBundleQuery:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v314 = a2;
  v325 = a1;
  v5 = sub_21E342E20();
  v6 = OUTLINED_FUNCTION_0_2(v5, v357);
  v326 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v8);
  v9 = sub_21E3434D0();
  v10 = OUTLINED_FUNCTION_0_2(v9, &v352);
  v323 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v12);
  v13 = sub_21E343610();
  v14 = OUTLINED_FUNCTION_0_2(v13, &v364);
  v328 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490, &qword_21E3525A0);
  OUTLINED_FUNCTION_28_0(v17);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40();
  v352 = v19;
  v351 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v327 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v22);
  v355 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v363 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_32_0();
  v353 = v26;
  v27 = sub_21E343500();
  OUTLINED_FUNCTION_5();
  v344[0] = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v30);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8250, &qword_21E3525A8);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_14_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8258, &unk_21E3525B0);
  v34 = OUTLINED_FUNCTION_28_0(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24();
  v354 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  OUTLINED_FUNCTION_28_0(v38);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7_1(v40);
  v41 = sub_21E342CA0();
  v42 = OUTLINED_FUNCTION_0_2(v41, v345);
  v315 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8268, &qword_21E3525C0);
  v46 = OUTLINED_FUNCTION_28_0(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8270, &qword_21E3525C8);
  v52 = OUTLINED_FUNCTION_28_0(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8278, &qword_21E3525D0);
  OUTLINED_FUNCTION_0_2(v60, &v346);
  v319 = v61;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7_1(v63);
  v64 = sub_21E342ED0();
  v65 = OUTLINED_FUNCTION_0_2(v64, v344);
  v316 = v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v67);
  v68 = sub_21E343630();
  v69 = OUTLINED_FUNCTION_0_2(v68, &v365);
  v343 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8280, &qword_21E3525D8);
  OUTLINED_FUNCTION_38(v73);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v75);
  v77 = &v300[-v76];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8288, &qword_21E3525E0);
  v79 = OUTLINED_FUNCTION_28_0(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  v82 = &v300[-v81];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8290, &qword_21E3525E8);
  v84 = OUTLINED_FUNCTION_28_0(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  v88 = MEMORY[0x28223BE20](v87);
  v90 = &v300[-v89];
  v91 = MEMORY[0x28223BE20](v88);
  v93 = &v300[-v92];
  MEMORY[0x28223BE20](v91);
  v95 = &v300[-v94];
  v96 = *(sub_21E343510() + 16);

  if (!v96)
  {
    return sub_21E343580();
  }

  v97 = sub_21E343510();
  sub_21E1C602C(v97, v82);

  OUTLINED_FUNCTION_15_0(v82, 1, v27);
  v344[1] = v3;
  v344[2] = v27;
  v302 = a3;
  if (v104)
  {
    sub_21E1CE204(v82, &qword_27CEB8288, &qword_21E3525E0);
    v99 = 1;
  }

  else
  {
    sub_21E3434E0();
    (*(v344[0] + 8))(v82, v27);
    v99 = 0;
  }

  v100 = v349;
  __swift_storeEnumTagSinglePayload(v95, v99, 1, v349);
  v101 = *(v343 + 104);
  v339 = *MEMORY[0x277D42E40];
  v303 = v101;
  v101(v93);
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v100);
  v102 = v342[12];
  sub_21E1CE25C(v95, v77, &qword_27CEB8290, &qword_21E3525E8);
  sub_21E1CE25C(v93, v77 + v102, &qword_27CEB8290, &qword_21E3525E8);
  OUTLINED_FUNCTION_10_0(v77);
  if (v104)
  {
    sub_21E1CE204(v93, &qword_27CEB8290, &qword_21E3525E8);
    sub_21E1CE204(v95, &qword_27CEB8290, &qword_21E3525E8);
    OUTLINED_FUNCTION_10_0(v77 + v102);
    if (!v104)
    {
      goto LABEL_25;
    }

    sub_21E1CE204(v77, &qword_27CEB8290, &qword_21E3525E8);
    OUTLINED_FUNCTION_36();
    v103 = v354;
  }

  else
  {
    sub_21E1CE25C(v77, v90, &qword_27CEB8290, &qword_21E3525E8);
    OUTLINED_FUNCTION_10_0(v77 + v102);
    if (v104)
    {
      goto LABEL_24;
    }

    v105 = v333;
    (*(v343 + 32))(v333, v77 + v102, v100);
    sub_21E1CE2AC();
    v301 = sub_21E343790();
    v102 = v343 + 8;
    v106 = *(v343 + 8);
    v106(v105, v100);
    sub_21E1CE204(v93, &qword_27CEB8290, &qword_21E3525E8);
    sub_21E1CE204(v95, &qword_27CEB8290, &qword_21E3525E8);
    v106(v90, v349);
    v100 = v349;
    sub_21E1CE204(v77, &qword_27CEB8290, &qword_21E3525E8);
    OUTLINED_FUNCTION_36();
    v103 = v354;
    if ((v301 & 1) == 0)
    {
LABEL_26:
      sub_21E1CD928();
      swift_allocError();
      *v120 = 0;
      return swift_willThrow();
    }
  }

  sub_21E343510();
  OUTLINED_FUNCTION_41();
  sub_21E1CD97C(v107, v108);

  v109 = OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_15_0(v109, v110, v102);
  if (v104)
  {
    sub_21E1CE204(&qword_21E3525E8, &qword_27CEB8288, &qword_21E3525E0);
    v112 = 1;
    v111 = v341;
  }

  else
  {
    v111 = v341;
    sub_21E3434E0();
    (*(v344[0] + 8))(&qword_21E3525E8, v102);
    v112 = 0;
  }

  v113 = v337;
  v114 = v303;
  __swift_storeEnumTagSinglePayload(v111, v112, 1, v100);
  v114(v113, v339, v100);
  __swift_storeEnumTagSinglePayload(v113, 0, 1, v100);
  v115 = v342[12];
  v116 = v338;
  sub_21E1CE25C(v111, v338, &qword_27CEB8290, &qword_21E3525E8);
  sub_21E1CE25C(v113, v116 + v115, &qword_27CEB8290, &qword_21E3525E8);
  OUTLINED_FUNCTION_10_0(v116);
  if (v104)
  {
    OUTLINED_FUNCTION_35(v113);
    OUTLINED_FUNCTION_35(v111);
    OUTLINED_FUNCTION_10_0(v116 + v115);
    if (v104)
    {
      sub_21E1CE204(v116, &qword_27CEB8290, &qword_21E3525E8);
      goto LABEL_28;
    }

    v77 = v116;
    goto LABEL_25;
  }

  v117 = v332;
  sub_21E1CE25C(v116, v332, &qword_27CEB8290, &qword_21E3525E8);
  OUTLINED_FUNCTION_10_0(v116 + v115);
  if (v118)
  {
    v93 = v113;
    v95 = v111;
    v90 = v117;
    v77 = v116;
LABEL_24:
    OUTLINED_FUNCTION_35(v93);
    OUTLINED_FUNCTION_35(v95);
    OUTLINED_FUNCTION_17_0();
    v119(v90, v100);
LABEL_25:
    sub_21E1CE204(v77, &qword_27CEB8280, &qword_21E3525D8);
    goto LABEL_26;
  }

  v121 = v343;
  v122 = v116 + v115;
  v123 = v333;
  (*(v343 + 32))(v333, v122, v100);
  sub_21E1CE2AC();
  LODWORD(v342) = sub_21E343790();
  v124 = *(v121 + 8);
  v124(v123, v100);
  sub_21E1CE204(v113, &qword_27CEB8290, &qword_21E3525E8);
  sub_21E1CE204(v341, &qword_27CEB8290, &qword_21E3525E8);
  v124(v332, v100);
  sub_21E1CE204(v116, &qword_27CEB8290, &qword_21E3525E8);
  if ((v342 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v338 = 0x800000021E3599E0;
  sub_21E342D70();
  swift_allocObject();
  v125 = sub_21E342D60();
  v126 = v325;
  sub_21E342E10();
  v127 = v334;
  sub_21E342D50();
  v341 = 0x800000021E359A00;
  if (v127)
  {
    v342 = v127;

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_39();
    v128 = v329;
    v129 = v326;
LABEL_30:
    v130 = v330;
LABEL_39:
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_29_0();
    sub_21E343100();
    (*(v129 + 16))(v130, v126, v128);
    v135 = v130;
    v136 = sub_21E3434C0();
    v137 = v125;
    v138 = sub_21E343B60();
    v139 = os_log_type_enabled(v136, v138);
    v332 = 0xD000000000000012;
    if (v139)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v362[0] = v141;
      *v140 = 136315138;
      v142 = sub_21E342E10();
      v102 = v143;
      (*(v129 + 8))(v135, v128);
      v144 = sub_21E1C80B4(v142, v102, v362);
      OUTLINED_FUNCTION_36();

      *(v140 + 4) = v144;
      _os_log_impl(&dword_21E1BD000, v136, v138, "Cannot fetch special tokens from asset for model: %s, falling back to default values", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      v145 = v141;
      v103 = v354;
      MEMORY[0x223D57360](v145, -1, -1);
      MEMORY[0x223D57360](v140, -1, -1);

      OUTLINED_FUNCTION_17_0();
      v146(v331, v324);
    }

    else
    {

      (*(v129 + 8))(v135, v128);
      OUTLINED_FUNCTION_17_0();
      v147(v137, v324);
    }

    OUTLINED_FUNCTION_9_0(0xD000000000000017);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_44();
    v126 = v328;
    goto LABEL_43;
  }

  v128 = v329;
  v129 = v326;
  if (!v358)
  {
    sub_21E1CE204(&v356, &qword_27CEB82A0, &qword_21E3525F0);
    v359 = 0u;
    v360 = 0u;
    v361 = 0;
    OUTLINED_FUNCTION_39();
    v130 = v330;
    goto LABEL_38;
  }

  v342 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82B0, &qword_21E352600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82B8, &qword_21E352608);
  swift_dynamicCast();
  OUTLINED_FUNCTION_39();
  v130 = v330;
  if ((v131 & 1) == 0)
  {
    v361 = 0;
    v359 = 0u;
    v360 = 0u;
    goto LABEL_38;
  }

  if (!*(&v360 + 1))
  {
LABEL_38:
    sub_21E1CE204(&v359, &qword_27CEB82A8, &qword_21E3525F8);
    sub_21E1CD928();
    v133 = swift_allocError();
    *v134 = 1;
    OUTLINED_FUNCTION_38(v133);
    swift_willThrow();
    OUTLINED_FUNCTION_42();
    goto LABEL_39;
  }

  sub_21E1C2B8C(&v359, v362);
  __swift_project_boxed_opaque_existential_1(v362, v362[3]);
  v132 = v342;
  sub_21E342DF0();
  if (v132)
  {
    v342 = v132;
    __swift_destroy_boxed_opaque_existential_1Tm(v362);
    OUTLINED_FUNCTION_42();
    goto LABEL_30;
  }

  v150 = v320;
  sub_21E342D40();
  v151 = 0;
LABEL_82:
  OUTLINED_FUNCTION_17_0();
  v200(v322, v150);
  v201 = v321;
  sub_21E342E40();
  OUTLINED_FUNCTION_41();
  MEMORY[0x223D54780]();
  v148 = v313;
  sub_21E1CE25C(v314, v313, &qword_27CEB8260, &unk_21E3535C0);
  v153 = v318;
  OUTLINED_FUNCTION_15_0(v148, 1, v318);
  v334 = v151;
  if (v104)
  {
    v152 = 0xD000000000000012;
    sub_21E1CE204(v148, &qword_27CEB8260, &unk_21E3535C0);
    v202 = v201;
    v150 = v307;
    sub_21E1CE25C(v202, v307, &qword_27CEB8270, &qword_21E3525C8);
    v126 = sub_21E342EC0();
    OUTLINED_FUNCTION_11_0(v150);
    if (v104)
    {
      sub_21E1CE204(v150, &qword_27CEB8270, &qword_21E3525C8);
      v203 = 0xD000000000000012;
      v204 = v338;
    }

    else
    {
LABEL_94:
      v203 = sub_21E342E90();
      v209 = v208;
      OUTLINED_FUNCTION_8_0();
      (*(v210 + 8))(v150, v126);
      if (!v209)
      {
        v203 = v152;
      }

      v204 = v338;
      if (v209)
      {
        v204 = v209;
      }
    }

    v333 = v204;
    v211 = v306;
    v212 = v321;
    sub_21E1CE25C(v321, v306, &qword_27CEB8270, &qword_21E3525C8);
    OUTLINED_FUNCTION_11_0(v211);
    v128 = v348;
    v332 = v203;
    if (v104)
    {
      sub_21E1CE204(v211, &qword_27CEB8270, &qword_21E3525C8);
      OUTLINED_FUNCTION_9_0(v152 + 5);
    }

    else
    {
      v223 = sub_21E342EA0();
      v225 = v224;
      OUTLINED_FUNCTION_8_0();
      (*(v226 + 8))(v211, v126);
      v227 = v152 + 5;
      if (v225)
      {
        v227 = v223;
      }

      v324 = v227;
      v228 = v341;
      if (v225)
      {
        v228 = v225;
      }

      v325 = v228;
      v212 = v321;
    }

    v229 = 0x6E655F6E7275743CLL;
    v230 = v309;
    sub_21E1CE25C(v212, v309, &qword_27CEB8270, &qword_21E3525C8);
    OUTLINED_FUNCTION_11_0(v230);
    if (v104)
    {
      v326 = 0x6E655F6E7275743CLL;
      OUTLINED_FUNCTION_23_0();
      v231 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v231, v232, v233);
      sub_21E1CE204(v212, &qword_27CEB8270, &qword_21E3525C8);
      v234 = OUTLINED_FUNCTION_5_1();
      v235(v234);
      sub_21E1CE204(v230, &qword_27CEB8270, &qword_21E3525C8);
    }

    else
    {
      v236 = sub_21E342EB0();
      OUTLINED_FUNCTION_38(v236);
      v341 = v237;
      v238 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v238, v239, v240);
      sub_21E1CE204(v212, &qword_27CEB8270, &qword_21E3525C8);
      v241 = OUTLINED_FUNCTION_5_1();
      v242(v241);
      OUTLINED_FUNCTION_8_0();
      (*(v243 + 8))(v230, v126);
      if (v341)
      {
        v229 = v342;
      }

      v326 = v229;
      v244 = 0xEA00000000003E64;
      if (v341)
      {
        v244 = v341;
      }

      v329 = v244;
    }

    goto LABEL_144;
  }

LABEL_90:
  (*(v315 + 32))(v317, v148, v153);
  v205 = v308;
  sub_21E1CE25C(v126, v308, &qword_27CEB8268, &qword_21E3525C0);
  v206 = sub_21E342E80();
  v207 = OUTLINED_FUNCTION_15_0(v205, 1, v206);
  if (v104)
  {
    sub_21E1CE204(v205, &qword_27CEB8268, &qword_21E3525C0);
  }

  else
  {
    MEMORY[0x223D547A0](v207);
    OUTLINED_FUNCTION_16_0();
    (*(v213 + 8))(v205, v206);
    if (v126)
    {
      v214 = sub_21E342C80();
      v216 = sub_21E1CAF84(v214, v215, v126);
      v218 = v217;

      v333 = v218;
      if (v218)
      {
        goto LABEL_106;
      }
    }
  }

  v219 = v304;
  sub_21E1CE25C(v321, v304, &qword_27CEB8270, &qword_21E3525C8);
  v220 = sub_21E342EC0();
  OUTLINED_FUNCTION_11_0(v219);
  if (v104)
  {
    sub_21E1CE204(v219, &qword_27CEB8270, &qword_21E3525C8);

    v216 = 0xD000000000000012;
    OUTLINED_FUNCTION_19_0();
LABEL_106:
    OUTLINED_FUNCTION_44();
    v221 = OUTLINED_FUNCTION_27_0();
    v222 = v311;
    goto LABEL_123;
  }

  v216 = sub_21E342E90();
  v246 = v245;
  OUTLINED_FUNCTION_8_0();
  (*(v247 + 8))(v219, v220);

  v333 = v246;
  v222 = v311;
  if (!v246)
  {
    v216 = 0xD000000000000012;
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_44();
  v221 = OUTLINED_FUNCTION_27_0();
LABEL_123:
  v248 = v310;
  sub_21E1CE25C(v221, v310, &qword_27CEB8268, &qword_21E3525C0);
  v249 = OUTLINED_FUNCTION_30_0();
  v251 = OUTLINED_FUNCTION_15_0(v249, v250, v206);
  if (v104)
  {
    sub_21E1CE204(v248, &qword_27CEB8268, &qword_21E3525C0);
  }

  else
  {
    MEMORY[0x223D547B0](v251);
    OUTLINED_FUNCTION_16_0();
    (*(v252 + 8))(v248, v206);
    if (v248)
    {
      v253 = sub_21E342C80();
      v324 = sub_21E1CAF84(v253, v254, v248);
      v256 = v255;

      v325 = v256;
      if (v256)
      {
        goto LABEL_133;
      }
    }
  }

  sub_21E1CE25C(v321, v222, &qword_27CEB8270, &qword_21E3525C8);
  v257 = sub_21E342EC0();
  OUTLINED_FUNCTION_11_0(v222);
  if (v104)
  {
    sub_21E1CE204(v222, &qword_27CEB8270, &qword_21E3525C8);

LABEL_132:
    OUTLINED_FUNCTION_9_0(0xD000000000000017);
    goto LABEL_133;
  }

  v324 = sub_21E342EA0();
  v259 = v258;
  OUTLINED_FUNCTION_8_0();
  (*(v260 + 8))(v222, v257);

  v325 = v259;
  if (!v259)
  {
    goto LABEL_132;
  }

LABEL_133:
  v261 = OUTLINED_FUNCTION_27_0();
  v262 = v312;
  sub_21E1CE25C(v261, v312, &qword_27CEB8268, &qword_21E3525C0);
  v263 = OUTLINED_FUNCTION_30_0();
  v265 = OUTLINED_FUNCTION_15_0(v263, v264, v206);
  v332 = v216;
  if (v104)
  {
    sub_21E1CE204(v262, &qword_27CEB8268, &qword_21E3525C0);
    goto LABEL_139;
  }

  MEMORY[0x223D547C0](v265);
  OUTLINED_FUNCTION_16_0();
  (*(v266 + 8))(v262, v206);
  if (!v262 || (v267 = sub_21E342C80(), v326 = sub_21E1CAF84(v267, v268, v262), v270 = v269, , , (v329 = v270) == 0))
  {
LABEL_139:
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_29_0();
    v278 = v321;
    v279 = v305;
    sub_21E1CE25C(v321, v305, &qword_27CEB8270, &qword_21E3525C8);
    v280 = sub_21E342EC0();
    OUTLINED_FUNCTION_11_0(v279);
    if (v104)
    {
      v281 = OUTLINED_FUNCTION_6_0();
      v282(v281);
      v283 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v283, v284, v285);
      OUTLINED_FUNCTION_35(v278);
      v286 = OUTLINED_FUNCTION_5_1();
      v287(v286);
      OUTLINED_FUNCTION_35(v279);
    }

    else
    {
      v288 = v279;
      v289 = sub_21E342EB0();
      OUTLINED_FUNCTION_38(v289);
      v291 = v290;
      v292 = OUTLINED_FUNCTION_6_0();
      v293(v292);
      v294 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v294, v295, v296);
      sub_21E1CE204(v278, &qword_27CEB8270, &qword_21E3525C8);
      v297 = OUTLINED_FUNCTION_5_1();
      v298(v297);
      OUTLINED_FUNCTION_8_0();
      (*(v299 + 8))(v288, v280);

      if (v291)
      {
        v326 = v342;
        v329 = v291;
      }
    }

    goto LABEL_144;
  }

  v271 = OUTLINED_FUNCTION_6_0();
  v272(v271);
  v273 = OUTLINED_FUNCTION_27_0();
  sub_21E1CE204(v273, v274, v275);
  sub_21E1CE204(v321, &qword_27CEB8270, &qword_21E3525C8);
  v276 = OUTLINED_FUNCTION_5_1();
  v277(v276);
LABEL_144:
  v126 = v328;
  __swift_destroy_boxed_opaque_existential_1Tm(v362);
LABEL_43:
  v148 = 0;
  v330 = sub_21E343510();
  v149 = *(v330 + 16);
  v328 = v344[0] + 16;
  v338 = (v344[0] + 32);
  v331 = (v343 + 88);
  LODWORD(v323) = *MEMORY[0x277D42E50];
  v150 = v327 + 104;
  v342 = (v363 + 32);
  v151 = (v126 + 8);
  v337 = v344[0] + 8;
  v152 = MEMORY[0x277D84F90];
  LODWORD(v341) = *MEMORY[0x277D42DD0];
  for (i = v149; ; v149 = i)
  {
    v153 = v347;
    if (v148 == v149)
    {
      v154 = 1;
      v148 = v149;
    }

    else
    {
      if ((v148 & 0x8000000000000000) != 0)
      {
        goto LABEL_88;
      }

      if (v148 >= *(v330 + 16))
      {
        goto LABEL_89;
      }

      v155 = v344[0];
      v156 = v330 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v148;
      v157 = *(v347 + 48);
      v158 = v335;
      *v335 = v148;
      (*(v155 + 16))(v158 + v157, v156, v102);
      v159 = v158;
      v103 = v354;
      sub_21E1CDA44(v159, v354, &qword_27CEB8250, &qword_21E3525A8);
      v154 = 0;
      ++v148;
    }

    __swift_storeEnumTagSinglePayload(v103, v154, 1, v153);
    v160 = v346;
    sub_21E1CDA44(v103, v346, &qword_27CEB8258, &unk_21E3525B0);
    v161 = OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_15_0(v161, v162, v153);
    if (v104)
    {

      sub_21E343580();
    }

    v103 = *v160;
    (*v338)(v128, v160 + *(v153 + 48), v102);
    if (v103 >= 1)
    {
      break;
    }

LABEL_58:
    OUTLINED_FUNCTION_41();
    sub_21E3434F0();
    v153 = sub_21E343590();
    (*v151)(v160, v345[1]);
    v126 = *(v153 + 16);
    v102 = v152[2];
    v128 = v102 + v126;
    if (__OFADD__(v102, v126))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v128 > v152[3] >> 1)
    {
      if (v102 <= v128)
      {
        v177 = v102 + v126;
      }

      else
      {
        v177 = v102;
      }

      v152 = sub_21E1CDC4C(isUniquelyReferenced_nonNull_native, v177, 1, v152);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_44();
    if (*(v153 + 16))
    {
      if ((v152[3] >> 1) - v152[2] < v126)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      swift_arrayInitWithCopy();

      if (v126)
      {
        v178 = v152[2];
        v179 = __OFADD__(v178, v126);
        v180 = v178 + v126;
        if (v179)
        {
          __break(1u);
          goto LABEL_94;
        }

        v152[2] = v180;
      }
    }

    else
    {

      if (v126)
      {
        goto LABEL_81;
      }
    }

    v126 = *(sub_21E343510() + 16);

    if (v103 >= v126 - 1)
    {
      v194 = OUTLINED_FUNCTION_12_0();
      v195(v194);
      v103 = v354;
    }

    else
    {
      v181 = v350;
      v182 = v329;
      *v350 = v326;
      v181[1] = v182;
      v183 = OUTLINED_FUNCTION_31_0();
      v184(v183);
      sub_21E3435F0();
      v185 = OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v185, v186, 1, v187);

      OUTLINED_FUNCTION_48();
      v189 = v152[2];
      v188 = v152[3];
      v126 = v189 + 1;
      v103 = v354;
      if (v189 >= v188 >> 1)
      {
        v152 = OUTLINED_FUNCTION_34_0(v188);
      }

      v190 = OUTLINED_FUNCTION_12_0();
      v191(v190);
      v192 = OUTLINED_FUNCTION_21_0();
      v193(v192, v344[3], v355);
    }
  }

  OUTLINED_FUNCTION_41();
  sub_21E3434E0();
  v163 = (*v331)(v160, v349);
  v164 = v332;
  if (v163 == v339 || (v164 = v324, v163 == v323))
  {

    v166 = v350;
    *v350 = v164;
    v166[1] = v165;
    v167 = OUTLINED_FUNCTION_31_0();
    v168(v167);
    sub_21E3435F0();
    v169 = OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v169, v170, 1, v171);
    OUTLINED_FUNCTION_48();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_21E1CDC4C(0, v152[2] + 1, 1, v152);
    }

    v173 = v152[2];
    v172 = v152[3];
    v160 = (v173 + 1);
    if (v173 >= v172 >> 1)
    {
      v152 = OUTLINED_FUNCTION_34_0(v172);
    }

    v174 = OUTLINED_FUNCTION_21_0();
    v175(v174, v353, v355);
    goto LABEL_58;
  }

  sub_21E1CD928();
  swift_allocError();
  *v196 = 3;
  swift_willThrow();

  v197 = OUTLINED_FUNCTION_12_0();
  v198(v197);
  OUTLINED_FUNCTION_17_0();
  return v199(v340, v349);
}

unint64_t sub_21E1CD928()
{
  result = qword_27CEB8298;
  if (!qword_27CEB8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8298);
  }

  return result;
}

uint64_t sub_21E1CD97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_21E343500();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_21E343500();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_21E1CDA44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_47(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t ChatMessagesPrompt.RenderAsUserContentPromptVariableBindingError.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

uint64_t sub_21E1CDB28(uint64_t a1)
{
  v2 = *v1;
  sub_21E344020();
  MEMORY[0x223D55980](v2);
  return sub_21E344040();
}

void sub_21E1CDB74()
{
  OUTLINED_FUNCTION_46();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82F0, &qword_21E352730);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_43(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_20_0();
        sub_21E1D57F8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82F8, &qword_21E352738);
    OUTLINED_FUNCTION_33_0(v11, v12, v13, v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_21E1CDC4C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_21E1CE108(v9, a2, &qword_27CEB8660, &qword_21E3533E0, MEMORY[0x277D42E08]);
  v11 = *(sub_21E343600() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_21E1D5820(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_49();
  }

  return v10;
}

void sub_21E1CDD4C()
{
  OUTLINED_FUNCTION_46();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8, &unk_21E352720);
      v10 = swift_allocObject();
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_22_0();
      v10[2] = v2;
      v10[3] = v11;
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5838(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_0(v7, v8, v9, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v5)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E1CDE0C()
{
  OUTLINED_FUNCTION_46();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E0, &qword_21E3535F0);
      v7 = swift_allocObject();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_22_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5838(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v5)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_21E1CDED0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_21E1CE108(v9, a2, &qword_27CEB82D0, &qword_21E352708, MEMORY[0x277D42D30]);
  v11 = *(sub_21E3431A0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_21E1D587C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_49();
  }

  return v10;
}

void sub_21E1CDFD0()
{
  OUTLINED_FUNCTION_46();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0, &qword_21E352700);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v6 = OUTLINED_FUNCTION_43(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5858(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_0(v6, v7, v8, &type metadata for WFAskLLMPrompt);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_21E1CE098(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82D8, &unk_21E352710);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_22_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_21E1CE108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E1CE204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E1CE25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_47(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_21E1CE2AC()
{
  result = qword_27CEB82C0;
  if (!qword_27CEB82C0)
  {
    sub_21E343630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB82C0);
  }

  return result;
}

unint64_t sub_21E1CE308()
{
  result = qword_27CEB82C8;
  if (!qword_27CEB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB82C8);
  }

  return result;
}

uint64_t _s45RenderAsUserContentPromptVariableBindingErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s45RenderAsUserContentPromptVariableBindingErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_34_0@<X0>(unint64_t a1@<X8>)
{

  return sub_21E1CDC4C((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return sub_21E1CE204(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_21E3435E0();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_arrayInitWithCopy();
}

uint64_t static WFAskLLMUserPrompt.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  return byte_27CEB8300;
}

uint64_t static WFAskLLMUserPrompt.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_67(a1);
  byte_27CEB8300 = v1;
  return result;
}

uint64_t sub_21E1CE984@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CEB8300;
  return result;
}

uint64_t sub_21E1CE9D0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CEB8300 = v1;
  return result;
}

uint64_t WFAskLLMUserPrompt.TextPromptComponent.componentValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v7 = v6 - v5;
  sub_21E1CEB48(v2, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
  }

  sub_21E3435D0();
  OUTLINED_FUNCTION_13_0();
  return (*(v8 + 32))(a1, v7);
}

uint64_t type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(uint64_t a1)
{
  result = qword_27CEB8570;
  if (!qword_27CEB8570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E1CEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WFAskLLMUserPrompt.TextPromptComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v46 = (v10 - v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  v47 = &v44 - v13;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8310, &qword_21E352758);
  OUTLINED_FUNCTION_28_0(v24);
  OUTLINED_FUNCTION_37();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v29 = (&v44 + *(v26 + 56) - v27);
  sub_21E1CEB48(v5, &v44 - v27);
  sub_21E1CEB48(v3, v29);
  OUTLINED_FUNCTION_62();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21E1CEB48(v28, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v8 + 32))(v16, v29, v6);
      sub_21E3435C0();
      v40 = *(v8 + 8);
      v41 = OUTLINED_FUNCTION_60();
      v40(v41);
      (v40)(v23, v6);
LABEL_16:
      sub_21E1CEF88(v28);
      goto LABEL_17;
    }

    (*(v8 + 8))(v23, v6);
LABEL_12:
    sub_21E1CE204(v28, &qword_27CEB8310, &qword_21E352758);
    goto LABEL_17;
  }

  sub_21E1CEB48(v28, v20);
  v31 = *v20;
  v30 = *(v20 + 1);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v8 + 8))(&v20[v32], v6);

    goto LABEL_12;
  }

  v33 = v29[1];
  v44 = *v29;
  v45 = v31;
  v34 = *(v8 + 32);
  v34(v47, &v20[v32], v6);
  v35 = v29 + v32;
  v36 = v46;
  v34(v46, v35, v6);
  if (v45 == v44 && v30 == v33)
  {

    goto LABEL_15;
  }

  v38 = sub_21E343F80();

  if (v38)
  {
LABEL_15:
    v42 = v47;
    sub_21E3435C0();
    v43 = *(v8 + 8);
    v43(v36, v6);
    v43(v42, v6);
    goto LABEL_16;
  }

  v39 = *(v8 + 8);
  v39(v36, v6);
  v39(v47, v6);
  sub_21E1CEF88(v28);
LABEL_17:
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1CEF88(uint64_t a1)
{
  v2 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E1CEFE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1CF0BC(char a1)
{
  if (a1)
  {
    return 0x797469746E65;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_21E1CF0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CEFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1CF138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E1CF0A8();
  *a1 = result;
  return result;
}

uint64_t sub_21E1CF160(uint64_t a1)
{
  v2 = sub_21E1CF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF19C(uint64_t a1)
{
  v2 = sub_21E1CF998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1CF1D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1CF2A0(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21E1CF2D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E1CF35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CF1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1CF384(uint64_t a1)
{
  v2 = sub_21E1CF9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF3C0(uint64_t a1)
{
  v2 = sub_21E1CF9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1CF404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CF2D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E1CF44C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E1CF478(uint64_t a1)
{
  v2 = sub_21E1CFA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF4B4(uint64_t a1)
{
  v2 = sub_21E1CFA40();

  return MEMORY[0x2821FE720](a1, v2);
}

void WFAskLLMUserPrompt.TextPromptComponent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30_1();
  v71 = v25;
  v69 = v24;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8318, &qword_21E352760);
  OUTLINED_FUNCTION_5();
  v67 = v31;
  v68 = v30;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_40();
  v75 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8320, &qword_21E352768);
  OUTLINED_FUNCTION_5();
  v65 = v35;
  v66 = v34;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_1();
  v73 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v70 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_3();
  v74 = v39 - v40;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v41);
  v42 = OUTLINED_FUNCTION_54();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(v42);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_1();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8328, &qword_21E352770);
  OUTLINED_FUNCTION_5();
  v72 = v48;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v49);
  v51 = &v64 - v50;
  OUTLINED_FUNCTION_58(v29, v29[3]);
  sub_21E1CF998();
  sub_21E344060();
  sub_21E1CEB48(v69, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750);
    v53 = v70;
    v54 = v73;
    (*(v70 + 32))(v74, v46 + *(v52 + 48), v73);
    sub_21E1CF9EC();
    OUTLINED_FUNCTION_49_0();
    sub_21E343EE0();
    v55 = v68;
    v56 = v71;
    sub_21E343F00();

    if (!v56)
    {
      OUTLINED_FUNCTION_2_0();
      sub_21E1D6F0C(v62, 255, v63, MEMORY[0x277D42DF8]);
      sub_21E343F40();
    }

    (*(v67 + 8))(v75, v55);
    (*(v53 + 8))(v74, v54);
  }

  else
  {
    (*(v70 + 32))(v26, v46, v73);
    sub_21E1CFA40();
    OUTLINED_FUNCTION_49_0();
    sub_21E343EE0();
    OUTLINED_FUNCTION_2_0();
    sub_21E1D6F0C(v57, 255, v58, MEMORY[0x277D42DF8]);
    v59 = v66;
    sub_21E343F40();
    (*(v65 + 8))(v27, v59);
    v60 = OUTLINED_FUNCTION_29_1();
    v61(v60);
  }

  (*(v72 + 8))(v51, v47);
  OUTLINED_FUNCTION_31_1();
}

unint64_t sub_21E1CF998()
{
  result = qword_27CEB8330;
  if (!qword_27CEB8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8330);
  }

  return result;
}

unint64_t sub_21E1CF9EC()
{
  result = qword_27CEB8338;
  if (!qword_27CEB8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8338);
  }

  return result;
}

unint64_t sub_21E1CFA40()
{
  result = qword_27CEB8348;
  if (!qword_27CEB8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8348);
  }

  return result;
}

void WFAskLLMUserPrompt.TextPromptComponent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_30_1();
  v100 = v25;
  v27 = v26;
  v91 = v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8350, &qword_21E352778);
  OUTLINED_FUNCTION_5();
  v96 = v29;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_40();
  v95 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8358, &qword_21E352780);
  OUTLINED_FUNCTION_5();
  v93 = v33;
  v94 = v32;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40();
  v98 = v35;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8360, &qword_21E352788);
  OUTLINED_FUNCTION_5();
  v97 = v36;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v37);
  v38 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_3();
  v42 = (v40 - v41);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v87 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v87 - v47;
  OUTLINED_FUNCTION_58(v27, v27[3]);
  sub_21E1CF998();
  v49 = v100;
  sub_21E344050();
  if (v49)
  {
    goto LABEL_8;
  }

  v87 = v42;
  v88 = v46;
  v89 = v48;
  v90 = v38;
  v100 = v27;
  v50 = v99;
  OUTLINED_FUNCTION_64();
  v51 = sub_21E343ED0();
  v55 = sub_21E1D66FC(v51, 0);
  if (v53 == v54 >> 1)
  {
LABEL_7:
    v60 = v90;
    v61 = sub_21E343D70();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8368, &qword_21E352790);
    *v63 = v60;
    OUTLINED_FUNCTION_64();
    v64 = sub_21E343E60();
    OUTLINED_FUNCTION_38_0(v64, "Invalid number of keys found, expected one.");
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_6_1();
    v66(v65);
    v27 = v100;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
LABEL_9:
    OUTLINED_FUNCTION_31_1();
    return;
  }

  if (v53 < (v54 >> 1))
  {
    v101 = *(v52 + v53);
    sub_21E1D6E14(v53 + 1, v54 >> 1, v55, v52, v53, v54);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      if (v101)
      {
        sub_21E1CF9EC();
        OUTLINED_FUNCTION_49_0();
        sub_21E343E50();
        v71 = sub_21E343E80();
        v73 = v72;
        v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
        v74 = v87;
        *v87 = v71;
        v74[1] = v73;
        v94 = v73;
        sub_21E3435D0();
        OUTLINED_FUNCTION_2_0();
        sub_21E1D6F0C(v75, 255, v76, MEMORY[0x277D42E00]);
        sub_21E343EC0();
        swift_unknownObjectRelease();
        v81 = OUTLINED_FUNCTION_32_1();
        v82(v81);
        v83 = OUTLINED_FUNCTION_6_1();
        v84(v83);
        swift_storeEnumTagMultiPayload();
        v85 = v74;
        v86 = v89;
      }

      else
      {
        sub_21E1CFA40();
        OUTLINED_FUNCTION_49_0();
        sub_21E343E50();
        v86 = v89;
        v67 = v50;
        sub_21E3435D0();
        OUTLINED_FUNCTION_2_0();
        sub_21E1D6F0C(v68, 255, v69, MEMORY[0x277D42E00]);
        v85 = v88;
        v70 = v94;
        sub_21E343EC0();
        swift_unknownObjectRelease();
        v77 = OUTLINED_FUNCTION_22_1();
        v78(v77, v70);
        v79 = OUTLINED_FUNCTION_16_1();
        v80(v79, v67);
        swift_storeEnumTagMultiPayload();
      }

      sub_21E1D6744(v85, v86);
      sub_21E1D6744(v86, v91);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t WFAskLLMUserPrompt.EntityDisplayOption.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

id WFAskLLMUserPrompt.init(textComponents:documents:images:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = a1;
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = a2;
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for WFAskLLMUserPrompt();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21E1D02D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490, &qword_21E3525A0);
  OUTLINED_FUNCTION_28_0(v5);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40();
  v45 = v7;
  OUTLINED_FUNCTION_15_1();
  v44 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v43 = v12 - v11;
  v13 = OUTLINED_FUNCTION_15_1();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(v13);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_3();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_55();
  v42 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  v26 = v25 - v24;
  v27 = *(v3 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v28 = *(v27 + 16);
  if (v28)
  {
    v46 = MEMORY[0x277D84F90];
    sub_21E1D5974(0, v28, 0);
    OUTLINED_FUNCTION_24_1();
    v29 = v15;
    v31 = v27 + v30;
    v41 = *(v29 + 72);
    do
    {
      sub_21E1CEB48(v31, v4);
      v32 = OUTLINED_FUNCTION_57();
      sub_21E1CEB48(v32, v33);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v35 = v19;
      if (EnumCaseMultiPayload == 1)
      {

        v35 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
      }

      (*(v9 + 32))(v43, v35, v44);
      v36 = sub_21E3435F0();
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v36);
      sub_21E3435E0();
      sub_21E1CEF88(v4);
      v38 = *(v46 + 16);
      v37 = *(v46 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = OUTLINED_FUNCTION_42_0(v37);
        sub_21E1D5974(v40, v38 + 1, 1);
      }

      *(v46 + 16) = v38 + 1;
      OUTLINED_FUNCTION_24_1();
      (*(v22 + 32))(v46 + v39 + *(v22 + 72) * v38, v26, v42);
      v31 += v41;
      --v28;
    }

    while (v28);
  }

  sub_21E343580();
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D0618(void *a1)
{
  v2 = sub_21E342A20();
  OUTLINED_FUNCTION_68(v2);
  sub_21E342A10();
  type metadata accessor for WFAskLLMUserPrompt();
  OUTLINED_FUNCTION_3_2();
  sub_21E1D6F0C(v3, v4, v5, &protocol conformance descriptor for WFAskLLMUserPrompt);
  v6 = sub_21E342A00();
  v8 = v7;
  v9 = sub_21E342BC0();
  v10 = sub_21E3437A0();
  [a1 encodeObject:v9 forKey:v10];

  sub_21E1C99C4(v6, v8);
}

id WFAskLLMUserPrompt.init(coder:)()
{
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  v2 = sub_21E3429C0();
  OUTLINED_FUNCTION_68(v2);
  sub_21E3429B0();
  sub_21E1D67CC();
  OUTLINED_FUNCTION_66();
  v3 = sub_21E343C20();
  if (v3)
  {
    v4 = v3;
    sub_21E342BF0();
    OUTLINED_FUNCTION_3_2();
    sub_21E1D6F0C(v5, v6, v7, &protocol conformance descriptor for WFAskLLMUserPrompt);
    sub_21E3429A0();

    v8 = OUTLINED_FUNCTION_57();
    sub_21E1C99C4(v8, v9);
    v10 = v15;
    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = *&v15[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents];
    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents];
    v11 = *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images];

    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = v11;
    v14.receiver = v0;
    v14.super_class = type metadata accessor for WFAskLLMUserPrompt();
    v12 = objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {

    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_56();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

void sub_21E1D09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v4 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_0();
  v43 = v12;
  v13 = OUTLINED_FUNCTION_15_1();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(v13);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_0();
  v42 = v20;
  v21 = *(v3 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v41 = v21 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = (v6 + 32);
    v40 = *MEMORY[0x277D42DD0];
    v39 = v22 - 1;
    while (v23 < *(v21 + 16))
    {
      v25 = v19;
      sub_21E1CEB48(v41 + *(v19 + 72) * v23, v42);
      sub_21E1D6744(v42, v17);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = v17;
      if (EnumCaseMultiPayload == 1)
      {

        v27 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
      }

      v28 = *v24;
      (*v24)(v43, v27, v4);
      v28(v10, v43, v4);
      v29 = OUTLINED_FUNCTION_63();
      if (v30(v29) != v40)
      {
        v37 = OUTLINED_FUNCTION_63();
        v38(v37);
        goto LABEL_15;
      }

      v31 = OUTLINED_FUNCTION_63();
      v32(v31);
      v34 = *v10;
      v33 = v10[1];

      v35 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v35 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
        v36 = v39 == v23++;
        v19 = v25;
        if (!v36)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_28_1();
  }
}

void sub_21E1D0C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83A8, &qword_21E352798);
  OUTLINED_FUNCTION_28_0(v6);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v58 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_3();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v69 = &v57 - v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_55();
  v20 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(v19);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v73 = 0;
  v74 = 0xE000000000000000;
  v59 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v29 = *(v23 + 72);
    v66 = (v58 + 32);
    v67 = v29;
    v64 = v58 + 88;
    v65 = v58 + 16;
    v63 = *MEMORY[0x277D42DD0];
    v60 = v58 + 96;
    v61 = v15;
    v68 = v9;
    v70 = (v58 + 8);
    do
    {
      sub_21E1CEB48(v28, v25);
      sub_21E1CEB48(v25, v4);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = v4;
      if (EnumCaseMultiPayload == 1)
      {

        v31 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750) + 48);
      }

      v32 = v69;
      (*v66)(v69, v31, v10);
      sub_21E3435B0();
      v33 = *v70;
      (*v70)(v32, v10);
      OUTLINED_FUNCTION_39_0();
      v34(v15, v5, v10);
      v35 = OUTLINED_FUNCTION_20_1();
      v37 = v36(v35);
      if (v37 == v63)
      {
        v38 = OUTLINED_FUNCTION_20_1();
        v39(v38);
        v40 = sub_21E1D1184(*v15, v15[1]);
        v62 = v27;
        v41 = v10;
        v42 = v25;
        v43 = v4;
        v44 = v20;
        v45 = v5;
        v46 = v40;
        v48 = v47;

        v71 = v46;
        v72 = v48;
        v5 = v45;
        v20 = v44;
        v4 = v43;
        v25 = v42;
        v10 = v41;
        v27 = v62;

        MEMORY[0x223D55250](10, 0xE100000000000000);

        MEMORY[0x223D55250](v71, v72);
        v15 = v61;

        v33(v5, v10);
        sub_21E1CEF88(v25);
      }

      else
      {
        v33(v5, v10);
        sub_21E1CEF88(v25);
        v49 = OUTLINED_FUNCTION_20_1();
        (v33)(v49);
      }

      v9 = v68;
      v28 += v67;
      --v27;
    }

    while (v27);
  }

  v50 = *(v59 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = *(v58 + 16);
    v53 = v50 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v54 = *(v58 + 72);
    do
    {
      v55 = OUTLINED_FUNCTION_63();
      v52(v55);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
      MEMORY[0x223D55250](0x203E6567616D693CLL, 0xE800000000000000);
      sub_21E1CE204(v9, &qword_27CEB83A8, &qword_21E352798);
      v53 += v54;
      --v51;
    }

    while (v51);
  }

  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  if (*(*(v59 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents) + 16))
  {
    v71 = *(*(v59 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents) + 16);
    v71 = sub_21E343F60();
    v72 = v56;

    MEMORY[0x223D55250](0x6E656D75636F6420, 0xEB00000000207374);

    MEMORY[0x223D55250](v71, v72);
  }

  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D1184(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = sub_21E343820();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343810();
  v7 = sub_21E3437F0();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v10 = objc_opt_self();
  v11 = sub_21E342BC0();
  v29 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:&v29];

  v13 = v29;
  if (!v12)
  {
    v23 = v13;
    v24 = sub_21E342B50();

    swift_willThrow();
    sub_21E1D8430(v7, v9);

    goto LABEL_8;
  }

  sub_21E343CE0();
  swift_unknownObjectRelease();
  sub_21E1D8444(v30, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v14 = sub_21E343F70();
  *&v30[0] = 0;
  v15 = [v10 dataWithJSONObject:v14 options:3 error:v30];
  swift_unknownObjectRelease();
  v16 = *&v30[0];
  if (!v15)
  {
    v25 = v16;
    v26 = sub_21E342B50();

    swift_willThrow();
    sub_21E1D8430(v7, v9);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    goto LABEL_8;
  }

  v17 = sub_21E342BF0();
  v19 = v18;

  sub_21E343810();
  v20 = sub_21E343800();
  v22 = v21;
  sub_21E1D8430(v7, v9);
  sub_21E1C99C4(v17, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v22)
  {
LABEL_8:

    return a1;
  }

  return v20;
}

void sub_21E1D1464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v7 = v6;
  v8 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v66 = v57 - v16;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_54();
  v65 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(v18);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v20);
  v23 = v57 - v22;
  v24 = *(v3 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v25 = *(v24 + 16);
  if (v25)
  {
    v58 = *v7;
    v26 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v64 = *(v21 + 72);
    v67 = (v10 + 32);
    v62 = v10 + 88;
    v61 = *MEMORY[0x277D42DD0];
    v60 = v10 + 8;
    v57[0] = 0x800000021E359A50;
    v57[1] = v10 + 96;
    v27 = MEMORY[0x277D84F90];
    v59 = v14;
    v63 = v4;
    while (1)
    {
      sub_21E1CEB48(v26, v23);
      v28 = OUTLINED_FUNCTION_57();
      sub_21E1CEB48(v28, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_21E1CEF88(v23);
      (*v67)(v4, v5, v8);
      v37 = OUTLINED_FUNCTION_29_1();
      v39 = v38(v37);
      if (v39 == v61)
      {
        v40 = OUTLINED_FUNCTION_29_1();
        v41(v40);
        v34 = *v4;
        v35 = v4[1];
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_39_0();
      v42 = OUTLINED_FUNCTION_29_1();
      v43(v42);
LABEL_19:
      v26 += v64;
      if (!--v25)
      {
        goto LABEL_23;
      }
    }

    v31 = *v5;
    v30 = v5[1];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308, &qword_21E352750);
    v33 = *v67;
    (*v67)(v66, v5 + *(v32 + 48), v8);
    if (v58)
    {
      if (v58 == 1)
      {
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_21E343D20();

        v68 = 0xD000000000000012;
        v69 = v57[0];
        MEMORY[0x223D55250](v31, v30);

        MEMORY[0x223D55250](62, 0xE100000000000000);
        v34 = v68;
        v35 = v69;
        OUTLINED_FUNCTION_39_0();
        v36(v66, v8);
        sub_21E1CEF88(v23);
        goto LABEL_13;
      }

      sub_21E1CEF88(v23);

      v33(v14, v66, v8);
      v45 = OUTLINED_FUNCTION_37_0();
      v47 = v46(v45);
      if (v47 == v61)
      {
        v48 = OUTLINED_FUNCTION_37_0();
        v49(v48);
        v34 = *v14;
        v35 = v14[1];
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E1CDD4C();
          v27 = v55;
        }

        v51 = *(v27 + 16);
        v50 = *(v27 + 24);
        if (v51 >= v50 >> 1)
        {
          OUTLINED_FUNCTION_42_0(v50);
          sub_21E1CDD4C();
          v27 = v56;
        }

        *(v27 + 16) = v51 + 1;
        v52 = v27 + 16 * v51;
        *(v52 + 32) = v34;
        *(v52 + 40) = v35;
        v14 = v59;
      }

      else
      {
        v53 = OUTLINED_FUNCTION_37_0();
        v54(v53);
      }
    }

    else
    {

      OUTLINED_FUNCTION_39_0();
      v44(v66, v8);
      sub_21E1CEF88(v23);
    }

    v4 = v63;
    goto LABEL_19;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_23:
  v68 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0, &qword_21E3527A0);
  sub_21E1D6810();
  sub_21E343780();

  OUTLINED_FUNCTION_28_1();
}

id WFAskLLMUserPrompt.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21E1D19A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6F4374786574 && a2 == 0xEE0073746E656E6FLL;
  if (v4 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073;
    if (v6 || (sub_21E343F80() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E343F80();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21E1D1ACC(unsigned __int8 a1)
{
  sub_21E344020();
  MEMORY[0x223D55980](a1);
  return sub_21E344040();
}

uint64_t sub_21E1D1B14(char a1)
{
  if (!a1)
  {
    return 0x706D6F4374786574;
  }

  if (a1 == 1)
  {
    return 0x746E656D75636F64;
  }

  return 0x736567616D69;
}

uint64_t sub_21E1D1B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D19A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1D1BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E1D1AC4();
  *a1 = result;
  return result;
}

uint64_t sub_21E1D1BD8(uint64_t a1)
{
  v2 = sub_21E1D6874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D1C14(uint64_t a1)
{
  v2 = sub_21E1D6874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D1CC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83C0, &qword_21E3527A8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_34_1();
  v3 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_58(v3, v4);
  sub_21E1D6874();
  sub_21E344060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83D0, &qword_21E3527B0);
  sub_21E1D68C8();
  OUTLINED_FUNCTION_12_1();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83E8, &qword_21E3527B8);
    sub_21E1D6980();
    OUTLINED_FUNCTION_12_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8400, &qword_21E3527C0);
    sub_21E1D6A38();
    OUTLINED_FUNCTION_12_1();
  }

  v5 = OUTLINED_FUNCTION_29_1();
  return v6(v5);
}

void WFAskLLMUserPrompt.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8410, &qword_21E3527C8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_58(v13, v13[3]);
  sub_21E1D6874();
  sub_21E344050();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_56();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83D0, &qword_21E3527B0);
    sub_21E1D6AF0();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83E8, &qword_21E3527B8);
    sub_21E1D6BA8();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8400, &qword_21E3527C0);
    v18 = 2;
    sub_21E1D6C60();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = a10;
    v17.receiver = v10;
    v17.super_class = type metadata accessor for WFAskLLMUserPrompt();
    objc_msgSendSuper2(&v17, sel_init);
    v15 = OUTLINED_FUNCTION_17_1();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D2124(uint64_t *a1@<X8>)
{
  WFAskLLMUserPrompt.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_21E1D2174@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_21E343610();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  sub_21E1D02D4(v6, v9, v10);
  v11 = MEMORY[0x277D42E18];
  sub_21E343570();
  v12 = *(v2 + 8);
  v12(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A8, &qword_21E353428);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21E3522F0;
  (*(v2 + 16))(v14 + v13, v8, v1);
  MEMORY[0x223D54EA0](v14, v1, v11);

  return (v12)(v8, v1);
}

uint64_t sub_21E1D233C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E343610();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = MEMORY[0x277D42EC0];
  v13[0] = a1;
  v13[1] = a2;

  v8 = MEMORY[0x277D42E18];
  sub_21E343560();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A8, &qword_21E353428);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21E3522F0;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x223D54EA0](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E1D24F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1D25C4(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_21E1D25F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526C616E69467369 && a2 == 0xEE00747365757165)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1D26C0(char a1)
{
  sub_21E344020();
  MEMORY[0x223D55980](a1 & 1);
  return sub_21E344040();
}

uint64_t sub_21E1D2708(uint64_t a1)
{
  v2 = sub_21E1D6D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D2744(uint64_t a1)
{
  v2 = sub_21E1D6D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D2788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D24F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1D27B0(uint64_t a1)
{
  v2 = sub_21E1D6D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D27EC(uint64_t a1)
{
  v2 = sub_21E1D6D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D2828(uint64_t a1)
{
  v2 = sub_21E1D6DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D2864(uint64_t a1)
{
  v2 = sub_21E1D6DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void WFAskLLMPrompt.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_30_1();
  v59 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8440, &qword_21E3527D0);
  OUTLINED_FUNCTION_5();
  v54 = v32;
  v55 = v31;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v33);
  v35 = &v53 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8448, &qword_21E3527D8);
  OUTLINED_FUNCTION_5();
  v56 = v37;
  v57 = v36;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8450, &qword_21E3527E0);
  OUTLINED_FUNCTION_5();
  v60 = v40;
  v61 = v39;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34_1();
  v58 = *v26;
  v42 = *(v26 + 16);
  OUTLINED_FUNCTION_58(v30, v30[3]);
  sub_21E1D6D18();
  sub_21E344060();
  if (v42 < 0)
  {
    v50 = v54;
    sub_21E1D6D6C();
    v43 = v61;
    OUTLINED_FUNCTION_66();
    sub_21E343EE0();
    v51 = v59;
    v52 = v55;
    sub_21E343F00();
    if (!v51)
    {
      sub_21E343F10();
    }

    (*(v50 + 8))(v35, v52);
  }

  else
  {
    sub_21E1D6DC0();
    v43 = v61;
    OUTLINED_FUNCTION_66();
    sub_21E343EE0();
    v62 = v58;
    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_3_2();
    sub_21E1D6F0C(v44, v45, v46, &protocol conformance descriptor for WFAskLLMUserPrompt);
    v47 = v59;
    sub_21E343F40();
    if (!v47)
    {
      sub_21E343F10();
    }

    v48 = OUTLINED_FUNCTION_50();
    v49(v48);
  }

  (*(v60 + 8))(v28, v43);
  OUTLINED_FUNCTION_31_1();
}

void WFAskLLMPrompt.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_30_1();
  v96 = v26;
  v28 = v27;
  v94 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8470, &qword_21E3527E8);
  OUTLINED_FUNCTION_5();
  v92 = v31;
  v93 = v30;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_34_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8478, &qword_21E3527F0);
  OUTLINED_FUNCTION_5();
  v91 = v34;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v35);
  v37 = &v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8480, &qword_21E3527F8);
  OUTLINED_FUNCTION_5();
  v40 = v39;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v41);
  v43 = &v84 - v42;
  v44 = v28[3];
  v95 = v28;
  OUTLINED_FUNCTION_58(v28, v44);
  sub_21E1D6D18();
  v45 = v96;
  sub_21E344050();
  if (v45)
  {
    goto LABEL_9;
  }

  v90 = v37;
  v88 = v33;
  v46 = v94;
  v96 = v40;
  OUTLINED_FUNCTION_64();
  v47 = sub_21E343ED0();
  v51 = sub_21E1D66FC(v47, 0);
  if (v49 == v50 >> 1)
  {
LABEL_8:
    v57 = sub_21E343D70();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8368, &qword_21E352790);
    *v59 = &type metadata for WFAskLLMPrompt;
    OUTLINED_FUNCTION_64();
    v60 = sub_21E343E60();
    OUTLINED_FUNCTION_38_0(v60, "Invalid number of keys found, expected one.");
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v96 + 8))(v43, v38);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
LABEL_10:
    OUTLINED_FUNCTION_31_1();
    return;
  }

  v89 = v38;
  if (v49 < (v50 >> 1))
  {
    LODWORD(v87) = *(v48 + v49);
    v52 = sub_21E1D6E14(v49 + 1, v50 >> 1, v51, v48, v49, v50);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 == v56 >> 1)
    {
      v86 = v52;
      if (v87)
      {
        sub_21E1D6D6C();
        sub_21E343E50();
        v61 = sub_21E343E80();
        v66 = v65;
        v85 = v61;
        v67 = sub_21E343E90();
        v87 = 0;
        v68 = v89;
        v72 = v67;
        swift_unknownObjectRelease();
        v73 = OUTLINED_FUNCTION_19_1();
        v74(v73);
        v75 = OUTLINED_FUNCTION_16_1();
        v76(v75, v68);
        v77 = v72 & 1 | 0x80;
        v78 = v46;
      }

      else
      {
        sub_21E1D6DC0();
        sub_21E343E50();
        v78 = v46;
        type metadata accessor for WFAskLLMUserPrompt();
        OUTLINED_FUNCTION_3_2();
        sub_21E1D6F0C(v62, v63, v64, &protocol conformance descriptor for WFAskLLMUserPrompt);
        sub_21E343EC0();
        v69 = v97;
        v70 = sub_21E343E90();
        v87 = 0;
        v71 = v89;
        v79 = v70;
        v85 = v69;
        swift_unknownObjectRelease();
        v80 = OUTLINED_FUNCTION_50();
        v81(v80);
        v82 = OUTLINED_FUNCTION_16_1();
        v83(v82, v71);
        v77 = 0;
        v66 = v79 & 1;
      }

      *v78 = v85;
      *(v78 + 8) = v66;
      *(v78 + 16) = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      goto LABEL_10;
    }

    v38 = v89;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static WFAskLLMConversation.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  return byte_27CEB8301;
}

uint64_t static WFAskLLMConversation.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_67(a1);
  byte_27CEB8301 = v1;
  return result;
}

uint64_t sub_21E1D3370@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CEB8301;
  return result;
}

uint64_t sub_21E1D33BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CEB8301 = v1;
  return result;
}

uint64_t sub_21E1D3468(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WFAskLLMConversation.init()()
{
  *&v0[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAskLLMConversation();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_21E1D3580(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1(a1);
  v3 = *(v1 + v2);
  if (!*(v3 + 16) || *(v3 + 48) < 0)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
  }
}

void *sub_21E1D35E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1(a1);
  v3 = *(v1 + v2);
  if (!*(v3 + 16) || *(v3 + 48) < 0)
  {
    return 0;
  }

  v4 = *(v3 + 32);
  v5 = v4;
  return v4;
}

void sub_21E1D363C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1(a1);
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 0;
    v6 = (v3 + 48);
    while (v5 < *(v3 + 16))
    {
      v7 = *v6;
      if (v7 < 0 || (v8 = *(v6 - 2), sub_21E1D09A0(v8, v9, v10), v12 = v11, v13 = OUTLINED_FUNCTION_60(), sub_21E1D6EB4(v13, v14, v7), (v12 & 1) != 0))
      {
        ++v5;
        v6 += 3;
        if (v4 != v5)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_21E1D370C()
{
  v3 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (v42 + 48);
  OUTLINED_FUNCTION_59();
  do
  {
    v6 = *(v5 - 2);
    if (*v5 < 0)
    {

      v27 = OUTLINED_FUNCTION_20_1();
      v29 = sub_21E1D1184(v27, v28);
      MEMORY[0x223D55250](v29);

      OUTLINED_FUNCTION_44_0(v30, v31, v32, v33, v34, v35, v36, v37, v42, 0x6E61747369737341, 0xEB000000000A3A74);
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();
      v38 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v38, v39, v40);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EC4(v7, v8, v9);
      v10 = v6;
      sub_21E1D0C70(v10, v11, v12);
      MEMORY[0x223D55250]();

      OUTLINED_FUNCTION_44_0(v13, v14, v15, v16, v17, v18, v19, v20, v42, v1, v2);
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();
      v21 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v21, v22, v23);

      v24 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v24, v25, v26);
    }

    v5 += 24;
    --v4;
  }

  while (v4);

  return 0;
}

uint64_t sub_21E1D3880()
{
  v27 = 0;
  v28 = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_59();
  v6 = v5;
  do
  {
    v8 = *v6;
    v6 += 24;
    v7 = v8;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *(v5 - 2);
      LOBYTE(v25) = 1;
      v10 = v9;
      sub_21E1D1464(&v25, v11, v12);
      v25 = v1;
      v26 = v2;
      MEMORY[0x223D55250]();

      OUTLINED_FUNCTION_44_0(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25, v26);
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();

      v21 = OUTLINED_FUNCTION_60();
      sub_21E1D6EB4(v21, v22, v7);
    }

    v5 = v6;
    --v4;
  }

  while (v4);

  return v27;
}

uint64_t sub_21E1D398C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1(a1);
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (v3 + 48);
  v6 = (v3 + 48);
  while (1)
  {
    v7 = *v6;
    v6 += 24;
    if ((v7 & 0x80000000) == 0)
    {
      if (*(*(*(v5 - 2) + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images) + 16))
      {
        break;
      }
    }

    v5 = v6;
    if (!--v4)
    {
      return MEMORY[0x277D84F90];
    }
  }
}

id sub_21E1D3A1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1(a1);
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  v5 = v3 + 24 * v4 + 32;
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = (v5 - 24);
    v8 = *(v5 - 8);
    v5 -= 24;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *v7;
      v10 = *v7;
      return v9;
    }
  }

  return 0;
}

void sub_21E1D3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  v182 = v21;
  v22 = v20;
  v151 = v23;
  v25 = v24;
  v159 = v26;
  v153 = sub_21E342E20();
  OUTLINED_FUNCTION_5();
  v152 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_1();
  v156 = v30 - v29;
  OUTLINED_FUNCTION_15_1();
  v158 = sub_21E343530();
  OUTLINED_FUNCTION_5();
  v157 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_1();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490, &qword_21E3525A0);
  OUTLINED_FUNCTION_28_0(v36);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_40();
  v172 = v38;
  OUTLINED_FUNCTION_15_1();
  v171 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v154 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_1();
  v170 = v42 - v41;
  OUTLINED_FUNCTION_15_1();
  v169 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v173 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_1();
  v47 = v46 - v45;
  v168 = sub_21E343710();
  OUTLINED_FUNCTION_5();
  v166 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_0_1();
  v167 = v51 - v50;
  OUTLINED_FUNCTION_15_1();
  v176 = sub_21E3436E0();
  OUTLINED_FUNCTION_5();
  v163 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_1();
  v175 = (v55 - v54);
  OUTLINED_FUNCTION_15_1();
  sub_21E343500();
  OUTLINED_FUNCTION_5();
  v178 = v56;
  v179 = v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4_3();
  v174 = v58 - v59;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_32_0();
  v181 = v61;
  OUTLINED_FUNCTION_15_1();
  v162 = sub_21E343610();
  OUTLINED_FUNCTION_5();
  v161 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_4_3();
  v150 = v64 - v65;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_32_0();
  v160 = v67;
  OUTLINED_FUNCTION_15_1();
  v68 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_0_1();
  v74 = v73 - v72;
  v75 = v25[3];
  v76 = v25[4];
  v164 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v75);
  v77 = (*(v76 + 32))(v75, v76);
  v155 = v47;
  v165 = v35;
  if (v77)
  {
    v78 = sub_21E1D3A1C(v77);
    if (v78)
    {
      v79 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0, &qword_21E352700);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_21E3522F0;
      *(v80 + 32) = v79;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
    }

    else
    {
      sub_21E343100();
      v85 = sub_21E3434C0();
      v86 = sub_21E343B50();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_21E1BD000, v85, v86, "WFAskLLMModelSession unable to get user prompt", v87, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      (*(v70 + 8))(v74, v68);
      v80 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v81 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v80 = *(v22 + v81);
    v82 = *(v80 + 16);
    if (v82)
    {
      v83 = *(v80 + 24 * v82 + 24);

      if (v83 < 0)
      {
        sub_21E1D4794(1, v80);
        v80 = v84;
      }
    }

    else
    {
    }
  }

  v88 = *(v80 + 16);

  v89 = 0;
  v90 = v80 + 48;
  v177 = MEMORY[0x277D84F90];
  v180 = v80;
LABEL_12:
  v91 = (v90 + 24 * v89);
  while (v88 != v89)
  {
    v92 = *(v80 + 16);
    if (v89 >= v92)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v93 = *(v91 - 2);
    v94 = *(v91 - 1);
    v95 = *v91;
    v96 = v92 - 1;
    if (v95 >= 0)
    {
      v97 = *(v91 - 1);
    }

    else
    {
      v97 = *v91;
    }

    sub_21E1D6EC4(*(v91 - 2), *(v91 - 1), *v91);
    if (v89 == v96 || (v97 & 1) == 0)
    {
      v98 = v177;
      v183 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E1D5A24(0, *(v177 + 16) + 1, 1);
        v98 = v183;
      }

      v100 = *(v98 + 16);
      v99 = *(v98 + 24);
      if (v100 >= v99 >> 1)
      {
        v102 = OUTLINED_FUNCTION_42_0(v99);
        sub_21E1D5A24(v102, v100 + 1, 1);
        v98 = v183;
      }

      *(v98 + 16) = v100 + 1;
      v177 = v98;
      v101 = v98 + 32 * v100;
      *(v101 + 32) = v89;
      *(v101 + 40) = v93;
      *(v101 + 48) = v94;
      *(v101 + 56) = v95;
      ++v89;
      v80 = v180;
      goto LABEL_12;
    }

    sub_21E1D6EB4(v93, v94, v95);
    v91 += 24;
    ++v89;
    v80 = v180;
  }

  v103 = *(v177 + 16);
  if (v103)
  {
    v183 = MEMORY[0x277D84F90];
    sub_21E1D59CC(0, v103, 0);
    v105 = v177;
    v106 = 0;
    v107 = v183;
    ++v166;
    v108 = (v163 + 8);
    v109 = (v177 + 56);
    while (v106 < *(v105 + 16))
    {
      if (*v109 < 0)
      {
        MEMORY[0x28223BE20](v104);
        *(&v150 - 2) = v112;
        *(&v150 - 1) = v113;
        v114 = v167;
        sub_21E343720();
        OUTLINED_FUNCTION_51();
        sub_21E343700();
        (*v166)(v114, v168);
      }

      else
      {
        MEMORY[0x28223BE20](v104);
        *(&v150 - 2) = v110;
        v111 = v175;
        sub_21E3436F0();
        OUTLINED_FUNCTION_51();
        sub_21E3436D0();
        (*v108)(v111, v176);
      }

      v183 = v107;
      v116 = *(v107 + 16);
      v115 = *(v107 + 24);
      v105 = v177;
      if (v116 >= v115 >> 1)
      {
        v119 = OUTLINED_FUNCTION_42_0(v115);
        sub_21E1D59CC(v119, v116 + 1, 1);
        v105 = v177;
        v107 = v183;
      }

      ++v106;
      *(v107 + 16) = v116 + 1;
      OUTLINED_FUNCTION_24_1();
      v104 = (*(v118 + 32))(v107 + v117 + *(v118 + 72) * v116, v181);
      v109 += 32;
      if (v103 == v106)
      {

        goto LABEL_37;
      }
    }

    goto LABEL_52;
  }

  v107 = MEMORY[0x277D84F90];
LABEL_37:
  sub_21E1C4248(v164, &v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFChatGPTModel();
  if (swift_dynamicCast())
  {

    v120 = *(v107 + 16);
    if (v120)
    {
      v181 = *(v179 + 16);
      OUTLINED_FUNCTION_24_1();
      v122 = v107 + v121;
      v177 = *(v123 + 56);
      LODWORD(v176) = *MEMORY[0x277D42DC8];
      v175 = (v154 + 104);
      v179 = v123;
      v168 = (v123 - 8);
      v167 = v173 + 32;
      v124 = MEMORY[0x277D84F90];
      v125 = v155;
      v126 = v178;
      v127 = v174;
      do
      {
        v181(v127, v122, v126);
        v128 = v170;
        sub_21E3434F0();
        (*v175)(v128, v176, v171);
        v129 = sub_21E3435F0();
        __swift_storeEnumTagSinglePayload(v172, 1, 1, v129);
        v130 = v125;
        sub_21E3435E0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_21E1CDC4C(0, *(v124 + 2) + 1, 1, v124);
        }

        v132 = *(v124 + 2);
        v131 = *(v124 + 3);
        v133 = v178;
        v127 = v174;
        if (v132 >= v131 >> 1)
        {
          v136 = OUTLINED_FUNCTION_42_0(v131);
          v124 = sub_21E1CDC4C(v136, v132 + 1, 1, v124);
          v127 = v174;
        }

        (*v168)(v127, v133);
        *(v124 + 2) = v132 + 1;
        OUTLINED_FUNCTION_24_1();
        v126 = v133;
        v125 = v130;
        (*(v135 + 32))(&v124[v134 + *(v135 + 72) * v132], v130, v169);
        v122 += v177;
        --v120;
      }

      while (v120);
    }

    v142 = v160;
    sub_21E343580();
    (*(v161 + 32))(v159, v142, v162);
  }

  else
  {
    sub_21E343540();
    type metadata accessor for WFAFMDevice3BModel();
    swift_initStackObject();
    v137 = v156;
    v138 = v182;
    sub_21E1E0C74();
    if (v138)
    {
      v140 = OUTLINED_FUNCTION_23_1();
      v141(v140);
    }

    else
    {
      v139 = v150;
      ChatMessagesPrompt.renderAsUserContentPromptVariableBinding(modelBundleQuery:locale:)(v137, v151, v150);
      v143 = OUTLINED_FUNCTION_22_1();
      v144(v143, v153);
      v145 = OUTLINED_FUNCTION_23_1();
      v146(v145);
      v147 = *(v161 + 32);
      v148 = v160;
      v149 = v162;
      v147(v160, v139, v162);
      v147(v159, v148, v149);
    }
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D4794(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v2 = a2;
  if (result)
  {
    v32 = 0;
    v4 = 0;
    v35 = *(a2 + 16);
    v5 = a2 + 48;
    v6 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
    for (i = a2 + 48; ; v5 = i)
    {
      for (j = (v5 + 24 * v4); ; j += 24)
      {
        if (v35 == v4)
        {

          return;
        }

        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 2);
        v8 = *(j - 1);
        v10 = *j;
        v11 = *(v6 + 16);
        if (v11 >= result)
        {
          break;
        }

        sub_21E1D6EC4(*(j - 2), *(j - 1), *j);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E1D5A44(0, v11 + 1, 1);
          v2 = a2;
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21E1D5A44(v12 > 1, v13 + 1, 1);
          v2 = a2;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 24 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        *(v14 + 48) = v10;
        ++v4;
      }

      if (v32 >= v11)
      {
        goto LABEL_29;
      }

      v15 = v6 + 24 * v32;
      v17 = *(v15 + 32);
      v16 = *(v15 + 40);
      v18 = *(v15 + 48);
      sub_21E1D6EC4(v9, v8, v10);
      v30 = v18;
      sub_21E1D6EC4(v17, v16, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21E1D5A44(0, *(v33 + 16) + 1, 1);
        v2 = a2;
        v20 = v33;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21E1D5A44(v21 > 1, v22 + 1, 1);
        v2 = a2;
        v20 = v33;
      }

      *(v20 + 16) = v22 + 1;
      v33 = v20;
      v23 = v20 + 24 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v16;
      *(v23 + 48) = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E1DD7B8(v6);
        v6 = v24;
      }

      if (v32 >= *(v6 + 16))
      {
        break;
      }

      ++v4;
      v25 = v6 + 24 * v32;
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      *(v25 + 32) = v9;
      *(v25 + 40) = v8;
      v28 = *(v25 + 48);
      *(v25 + 48) = v10;
      sub_21E1D6EB4(v26, v27, v28);
      if ((v32 + 1) < result)
      {
        v29 = v32 + 1;
      }

      else
      {
        v29 = 0;
      }

      v32 = v29;
    }

    goto LABEL_30;
  }
}

void sub_21E1D4A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v6 = sub_21E342A20();
  OUTLINED_FUNCTION_68(v6);
  sub_21E342A10();
  type metadata accessor for WFAskLLMConversation();
  OUTLINED_FUNCTION_14_1();
  sub_21E1D6F0C(v7, v8, v9, &protocol conformance descriptor for WFAskLLMConversation);
  sub_21E342A00();
  v10 = sub_21E342BC0();
  v11 = sub_21E3437A0();
  [v4 encodeObject:v10 forKey:v11];

  v12 = OUTLINED_FUNCTION_62();
  sub_21E1C99C4(v12, v13);
  OUTLINED_FUNCTION_28_1();
}

void WFAskLLMConversation.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  v29 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_21E3429C0();
  OUTLINED_FUNCTION_68(v11);
  sub_21E3429B0();
  sub_21E1D67CC();
  OUTLINED_FUNCTION_66();
  v12 = sub_21E343C20();
  if (v12)
  {
    v13 = v12;
    v28 = v3;
    v14 = sub_21E342BF0();
    v16 = v15;
    OUTLINED_FUNCTION_14_1();
    sub_21E1D6F0C(v17, v18, v19, &protocol conformance descriptor for WFAskLLMConversation);
    sub_21E3429A0();

    sub_21E1C99C4(v14, v16);
    v23 = v31;
    v24 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v25 = *&v23[v24];

    v26 = v28;
    *&v28[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = v25;
    v27 = type metadata accessor for WFAskLLMConversation();
    v30.receiver = v26;
    v30.super_class = v27;
    objc_msgSendSuper2(&v30, sel_init);
  }

  else
  {
    sub_21E343100();
    v20 = sub_21E3434C0();
    v21 = sub_21E343B60();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21E1BD000, v20, v21, "Could not decode WFAskLLMConversation from data blob: no result", v22, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    (*(v6 + 8))(v10, v29);
    type metadata accessor for WFAskLLMConversation();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D5160(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E1D51DC()
{
  sub_21E344020();
  MEMORY[0x223D55980](0);
  return sub_21E344040();
}

uint64_t sub_21E1D5240(uint64_t a1)
{
  sub_21E344020();
  MEMORY[0x223D55980](0);
  return sub_21E344040();
}

uint64_t sub_21E1D5284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D5160(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E1D52B0(uint64_t a1)
{
  v2 = sub_21E1D6F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D52EC(uint64_t a1)
{
  v2 = sub_21E1D6F54();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_21E1D5340(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21E1D5388(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84C0, &qword_21E352800);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_58(v2, v3);
  sub_21E1D6F54();
  sub_21E344060();
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84D0, &qword_21E352808);
  sub_21E1D6FA8(&qword_27CEB84D8, sub_21E1D7020, MEMORY[0x277D83948]);
  sub_21E343F40();
  v4 = OUTLINED_FUNCTION_60();
  return v5(v4);
}

void WFAskLLMConversation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84E8, &qword_21E352810);
  OUTLINED_FUNCTION_5();
  v17 = v16;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_58(v14, v14[3]);
  sub_21E1D6F54();
  sub_21E344050();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    type metadata accessor for WFAskLLMConversation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84D0, &qword_21E352808);
    sub_21E1D6FA8(&qword_27CEB84F0, sub_21E1D7074, MEMORY[0x277D83978]);
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = a10;
    v19.receiver = v10;
    v19.super_class = type metadata accessor for WFAskLLMConversation();
    objc_msgSendSuper2(&v19, sel_init);
    (*(v17 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D5740(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WFAskLLMConversation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_21E1D5790()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8210, &qword_21E352578);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_27CEB92B0;
    v2 = &qword_21E356210;
  }

  else
  {
    v1 = &unk_27CEB86D0;
    v2 = &unk_21E353450;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

char *sub_21E1D57F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

char *sub_21E1D5838(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

char *sub_21E1D5858(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

void sub_21E1D5894(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_13_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_65();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_65();

    MEMORY[0x2821FE820](v9);
  }
}

char *sub_21E1D5954(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D5B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D5DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5A64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D6150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5ADC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D6284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5AFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D63BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5B1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D64C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5B3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E1D65CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21E1D5790();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_21E1D5C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v14)
  {
    OUTLINED_FUNCTION_26_0();
    if (v16 != v17)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v15 = v3;
  }

  v18 = *(v11 + 16);
  if (v15 <= v18)
  {
    v19 = *(v11 + 16);
  }

  else
  {
    v19 = v15;
  }

  if (!v19)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v20 = *(v9(0) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v18;
  v23[3] = 2 * ((v24 - v22) / v21);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_24_1();
  if (v13)
  {
    sub_21E1D5894(v11 + v26, v18, v23 + v26, v7);
    *(v11 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_28_1();
}

void *sub_21E1D5DFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86B8, &qword_21E353438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB86C0, &unk_21E353440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21E1D5F2C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_26_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0, &qword_21E352700);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[24 * v9] <= v13)
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21E1D6030(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_26_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82D8, &unk_21E352710);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A0, &qword_21E353420);
    swift_arrayInitWithCopy();
  }
}

void *sub_21E1D6150(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8688, &qword_21E353408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8690, &unk_21E353410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E1D6284(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8668, &qword_21E3533E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8670, &unk_21E3533F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E1D63BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8, &unk_21E352720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E1D64C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8658, &qword_21E3533D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E1D65CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8648, &qword_21E3533C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8650, &qword_21E3533D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21E1D66FC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_21E1D6744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E1D67CC()
{
  result = qword_27CEB8398;
  if (!qword_27CEB8398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8398);
  }

  return result;
}

unint64_t sub_21E1D6810()
{
  result = qword_27CEB83B8;
  if (!qword_27CEB83B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83B0, &qword_21E3527A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83B8);
  }

  return result;
}

unint64_t sub_21E1D6874()
{
  result = qword_27CEB83C8;
  if (!qword_27CEB83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83C8);
  }

  return result;
}

unint64_t sub_21E1D68C8()
{
  result = qword_27CEB83D8;
  if (!qword_27CEB83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83D0, &qword_21E3527B0);
    sub_21E1D6F0C(&qword_27CEB83E0, 255, type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent, &protocol conformance descriptor for WFAskLLMUserPrompt.TextPromptComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83D8);
  }

  return result;
}

unint64_t sub_21E1D6980()
{
  result = qword_27CEB83F0;
  if (!qword_27CEB83F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83E8, &qword_21E3527B8);
    sub_21E1D6F0C(&qword_27CEB83F8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83F0);
  }

  return result;
}

unint64_t sub_21E1D6A38()
{
  result = qword_27CEB8408;
  if (!qword_27CEB8408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8400, &qword_21E3527C0);
    sub_21E1D6F0C(&qword_27CEB8340, 255, MEMORY[0x277D42DF0], MEMORY[0x277D42DF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8408);
  }

  return result;
}

unint64_t sub_21E1D6AF0()
{
  result = qword_27CEB8418;
  if (!qword_27CEB8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83D0, &qword_21E3527B0);
    sub_21E1D6F0C(&qword_27CEB8420, 255, type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent, &protocol conformance descriptor for WFAskLLMUserPrompt.TextPromptComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8418);
  }

  return result;
}

unint64_t sub_21E1D6BA8()
{
  result = qword_27CEB8428;
  if (!qword_27CEB8428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83E8, &qword_21E3527B8);
    sub_21E1D6F0C(&qword_27CEB8430, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8428);
  }

  return result;
}

unint64_t sub_21E1D6C60()
{
  result = qword_27CEB8438;
  if (!qword_27CEB8438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8400, &qword_21E3527C0);
    sub_21E1D6F0C(&qword_27CEB8370, 255, MEMORY[0x277D42DF0], MEMORY[0x277D42E00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8438);
  }

  return result;
}

unint64_t sub_21E1D6D18()
{
  result = qword_27CEB8458;
  if (!qword_27CEB8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8458);
  }

  return result;
}

unint64_t sub_21E1D6D6C()
{
  result = qword_27CEB8460;
  if (!qword_27CEB8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8460);
  }

  return result;
}