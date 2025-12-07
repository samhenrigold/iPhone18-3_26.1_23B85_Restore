uint64_t sub_23DC672C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DC672E4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23DC6733C()
{
  v1 = (type metadata accessor for AccountSuggestion(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_23DC82A40();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DC6747C()
{
  v1 = (type metadata accessor for AccountSuggestion(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = v1[10];
  v6 = sub_23DC82A40();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_23DC675C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DC67610(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23DC82A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DC676BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DC82A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t (*sub_23DC677B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DC82B10();
  return sub_23DC67854;
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

uint64_t (*sub_23DC678D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  swift_endAccess();
  return sub_23DC67A40;
}

uint64_t sub_23DC67A58@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  *a4 = v6;
  return result;
}

uint64_t sub_23DC67AE8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

uint64_t sub_23DC67B74(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  return v3;
}

uint64_t sub_23DC67BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

uint64_t (*sub_23DC67C60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DC82B10();
  return sub_23DC7C380;
}

void sub_23DC67D04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23DC67D78(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  return swift_endAccess();
}

uint64_t sub_23DC67DF8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82B00();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_23DC67F90(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  return swift_endAccess();
}

uint64_t sub_23DC6800C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82B00();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_23DC68144(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  swift_endAccess();
  return sub_23DC7C384;
}

void sub_23DC682B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23DC82B00();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23DC82B00();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_23DC684B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_23DC6851C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_23DC685DC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_23DC68690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23DC686E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_23DC6873C()
{
  v1 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23DC68780(char a1)
{
  v3 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23DC68834()
{
  v0 = sub_23DC82AB0();
  __swift_allocate_value_buffer(v0, qword_281303DE8);
  __swift_project_value_buffer(v0, qword_281303DE8);
  return sub_23DC82AA0();
}

uint64_t static AccountSuggestionManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static AccountSuggestionManager.logger.setter(uint64_t a1)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AccountSuggestionManager.logger.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_23DC82AB0();
  __swift_project_value_buffer(v1, qword_281303DE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DC68B30@<X0>(uint64_t a1@<X8>)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23DC68BF0(uint64_t a1)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_23DC68CB8()
{
  v1 = v0;
  v2 = sub_23DC82A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v7 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (v7 && (v8 = v7, v9 = sub_23DC82C40(), v10 = [v8 stringForKey_], v8, v9, v10))
  {
    v11 = sub_23DC82C50();

    return v11;
  }

  else
  {
    sub_23DC82A60();
    v13 = sub_23DC82A50();
    (*(v3 + 8))(v5, v2);
    v14 = *(v1 + v6);
    if (v14)
    {
      v15 = v14;
      v16 = sub_23DC82C40();
      v17 = sub_23DC82C40();
      [v15 setObject:v16 forKey:v17];
    }

    return v13;
  }
}

uint64_t sub_23DC68E90@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DC7C0F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DC672C0(v4, v5);
}

uint64_t sub_23DC68F30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DC7C0EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DC672C0(v3, v4);
  return sub_23DC69148(v8, v9);
}

uint64_t sub_23DC68FF8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_23DC7A5E8;
  v8[1] = v6;
  a3(v8);
}

uint64_t sub_23DC6908C()
{
  v1 = (v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_23DC672C0(*v1, v1[1]);
  return v2;
}

uint64_t sub_23DC690E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DC69148(v6, v7);
}

uint64_t sub_23DC69148(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DC691C0()
{
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](0);
  return sub_23DC82F60();
}

uint64_t sub_23DC6922C(uint64_t a1)
{
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](0);
  return sub_23DC82F60();
}

uint64_t sub_23DC69294()
{
  v2[3] = &type metadata for AccountSuggestionManager.Flags;
  v2[4] = sub_23DC692E4();
  v0 = sub_23DC82A80();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_23DC692E4()
{
  result = qword_281303E00;
  if (!qword_281303E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281303E00);
  }

  return result;
}

uint64_t AccountSuggestionManager.__allocating_init(uiMode:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  AccountSuggestionManager.init(uiMode:)(v1);
  return v2;
}

uint64_t AccountSuggestionManager.init(uiMode:)(int a1)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_23DC82D70();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DC82D50();
  MEMORY[0x28223BE20](v5);
  v59[1] = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DC82B80();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v59 - v10;
  v12 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v13 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDB0, &qword_23DC83670);
  sub_23DC82AE0();
  v14 = *(v9 + 32);
  v14(v1 + v12, v11, v8);
  v15 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions;
  aBlock[0] = v13;
  sub_23DC82AE0();
  v14(v1 + v15, v11, v8);
  v16 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  *(v1 + v16) = sub_23DC7A1E0(v13);
  v17 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  *(v1 + v17) = sub_23DC7A3B4(v13);
  v59[0] = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue;
  sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
  sub_23DC82B70();
  aBlock[0] = v13;
  sub_23DC7A754(&qword_281303A10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDB8, &qword_23DC83678);
  sub_23DC7A79C(&qword_281303A18, &qword_27E30CDB8, &qword_23DC83678);
  sub_23DC82DF0();
  (*(v61 + 104))(v60, *MEMORY[0x277D85268], v62);
  *(v1 + v59[0]) = sub_23DC82DA0();
  v18 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v19 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v20 = sub_23DC82C40();
  v21 = [v19 initWithStoreIdentifier:v20 type:1];

  *(v2 + v18) = v21;
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber) = 0;
  v22 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_23DC82C40();
  v25 = [v23 initWithSuiteName_];

  *(v2 + v22) = v25;
  v26 = (v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem) = 0;
  v27 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_accountTypesThatNeedProperties;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23DC83540;
  *(v28 + 32) = sub_23DC82C50();
  *(v28 + 40) = v29;
  *(v28 + 48) = sub_23DC82C50();
  *(v28 + 56) = v30;
  *(v28 + 64) = sub_23DC82C50();
  *(v28 + 72) = v31;
  *(v28 + 80) = sub_23DC82C50();
  *(v28 + 88) = v32;
  *(v28 + 96) = sub_23DC82C50();
  *(v28 + 104) = v33;
  *(v28 + 112) = sub_23DC82C50();
  *(v28 + 120) = v34;
  *(v2 + v27) = v28;
  v35 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23DC83550;
  *(v36 + 32) = sub_23DC82C50();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_23DC82C50();
  *(v36 + 56) = v38;
  *(v36 + 64) = sub_23DC82C50();
  *(v36 + 72) = v39;
  *(v36 + 80) = sub_23DC82C50();
  *(v36 + 88) = v40;
  *(v36 + 96) = sub_23DC82C50();
  *(v36 + 104) = v41;
  *(v36 + 112) = sub_23DC82C50();
  *(v36 + 120) = v42;
  *(v36 + 128) = sub_23DC82C50();
  *(v36 + 136) = v43;
  *(v36 + 144) = sub_23DC82C50();
  *(v36 + 152) = v44;
  *(v36 + 160) = sub_23DC82C50();
  *(v36 + 168) = v45;
  *(v36 + 176) = sub_23DC82C50();
  *(v36 + 184) = v46;
  *(v36 + 192) = sub_23DC82C50();
  *(v36 + 200) = v47;
  *(v36 + 208) = sub_23DC82C50();
  *(v36 + 216) = v48;
  *(v36 + 224) = sub_23DC82C50();
  *(v36 + 232) = v49;
  *(v36 + 240) = sub_23DC82C50();
  *(v36 + 248) = v50;
  *(v36 + 256) = sub_23DC82C50();
  *(v36 + 264) = v51;
  *(v2 + v35) = v36;
  v52 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_locallySupportedAccountTypes;
  *(v2 + v52) = sub_23DC700B4();
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode) = v63;
  v53 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_23DC7C330;
  *(v54 + 24) = v2;
  aBlock[4] = sub_23DC7A5E8;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC69B98;
  aBlock[3] = &block_descriptor;
  v55 = _Block_copy(aBlock);
  v56 = v53;

  dispatch_sync(v56, v55);

  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    v58 = [objc_opt_self() defaultCenter];
    [v58 addObserver:v2 selector:sel_reloadDelay_ name:*MEMORY[0x277CCA7C0] object:0];

    [*(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs) synchronize];

    return v2;
  }

  return result;
}

id sub_23DC69BC0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_reloadDelay_ name:*MEMORY[0x277CCA7C0] object:0];

  v2 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);

  return [v2 synchronize];
}

uint64_t sub_23DC69C50()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x277CCA7C0] object:0];

  v3 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber;
  if (*(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber))
  {

    sub_23DC82AC0();
  }

  *(v1 + v3) = 0;
}

uint64_t sub_23DC69D04(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - v3;
  v34 = type metadata accessor for AccountSuggestion(0);
  v5 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34);
  v33 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  v10 = *(v35 + 16);
  if (v10)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27[1] = v35;
    v28 = v11;
    v12 = v35 + v11;
    v13 = *(v5 + 72);
    v31 = (v5 + 48);
    v32 = (v5 + 56);
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_23DC7A628(v12, v9);
      v16 = *(v9 + 4);
      v15 = *(v9 + 5);
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17 && (v19 = v29, v18 = v30, (sub_23DC82CC0() & 1) != 0) && (v16 == v19 ? (v20 = v15 == v18) : (v20 = 0), !v20 && (sub_23DC82EF0() & 1) == 0))
      {
        sub_23DC7A628(v9, v4);
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = v34;
      (*v32)(v4, v21, 1, v34);
      sub_23DC7A68C(v9);
      if ((*v31)(v4, 1, v22) == 1)
      {
        sub_23DC7C16C(v4, &qword_27E30CDC8, &qword_23DC83688);
      }

      else
      {
        sub_23DC7A6E8(v4, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_23DC75C2C(0, v14[2] + 1, 1, v14);
        }

        v24 = v14[2];
        v23 = v14[3];
        if (v24 >= v23 >> 1)
        {
          v14 = sub_23DC75C2C((v23 > 1), v24 + 1, 1, v14);
        }

        v14[2] = v24 + 1;
        sub_23DC7A6E8(v33, v14 + v28 + v24 * v13);
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v25 = v14[2];

  return v25;
}

uint64_t sub_23DC6A058(uint64_t a1)
{
  v2 = sub_23DC82BA0();
  v17 = *(v2 - 8);
  v18 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v16 = &v16 - v6;
  v7 = sub_23DC82B50();
  MEMORY[0x28223BE20](v7);
  v8 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem;
  if (*(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem))
  {

    sub_23DC82BC0();
  }

  aBlock[4] = sub_23DC7C0E4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_108;
  _Block_copy(aBlock);
  v19 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  sub_23DC82BD0();
  swift_allocObject();
  v9 = sub_23DC82BB0();

  *(a1 + v8) = v9;

  v10 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC82B90();
  v11 = arc4random();
  fmod(v11, 5.0);
  v12 = v16;
  sub_23DC82BE0();
  v13 = v18;
  v14 = *(v17 + 8);
  v14(v5, v18);
  sub_23DC82D60();

  return (v14)(v12, v13);
}

uint64_t sub_23DC6A378(uint64_t a1)
{
  v2 = sub_23DC82AB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DC82A90();
  v8 = sub_23DC82D40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DC66000, v7, v8, "reloading after delay", v9, 2u);
    MEMORY[0x23EEFC160](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_23DC6C1EC();
  *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem) = 0;
}

uint64_t sub_23DC6A544(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23DC6A5F4(uint64_t a1)
{
  v2 = sub_23DC82B50();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23DC82B80();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v6 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);
  if (v6)
  {
    v7 = [v6 dictionaryRepresentation];
    v8 = sub_23DC82C10();
  }

  else
  {
    v8 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  }

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v16 = v9;
LABEL_19:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(v8 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_23DC7BD48(*(v8 + 56) + 32 * v20, v36);
    *&v37 = v23;
    *(&v37 + 1) = v22;
    sub_23DC7BDA4(v36, &v38);

LABEL_20:
    aBlock = v37;
    v41 = v38;
    v42 = v39;
    if (!*(&v37 + 1))
    {

      [*(a1 + v5) synchronize];
      sub_23DC6E6E8();
      sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
      v25 = sub_23DC82D80();
      *&v42 = sub_23DC7C220;
      *(&v42 + 1) = a1;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v41 = sub_23DC7C32C;
      *(&v41 + 1) = &block_descriptor_126;
      v26 = _Block_copy(&aBlock);

      v27 = v30;
      sub_23DC82B60();
      *&aBlock = MEMORY[0x277D84F90];
      sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
      sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
      v28 = v32;
      v29 = v35;
      sub_23DC82DF0();
      MEMORY[0x23EEFBA90](0, v27, v28, v26);
      _Block_release(v26);

      (*(v34 + 8))(v28, v29);
      (*(v31 + 8))(v27, v33);
      return;
    }

    v24 = *(a1 + v5);
    if (v24)
    {
      v14 = v24;
      v15 = sub_23DC82C40();

      [v14 removeObjectForKey_];
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  }

  if (v13 <= v9 + 1)
  {
    v17 = v9 + 1;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v12 = 0;
      v38 = 0u;
      v39 = 0u;
      v9 = v18;
      v37 = 0u;
      goto LABEL_20;
    }

    v12 = *(v8 + 64 + 8 * v16);
    ++v9;
    if (v12)
    {
      v9 = v16;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_23DC6AAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = sub_23DC82B50();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DC82B80();
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = v23;
  v18[7] = a6;
  v18[8] = v6;
  aBlock[4] = sub_23DC7A7F0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_17;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  sub_23DC82B60();
  v28 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  v21 = v24;
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v16, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v21);
  (*(v25 + 8))(v16, v26);
}

uint64_t sub_23DC6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a4;
  v71 = a7;
  v74 = a5;
  v75 = a6;
  v68 = a2;
  v69 = a3;
  v67 = a1;
  v7 = sub_23DC82B50();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23DC82B80();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v55 - v13;
  v66 = type metadata accessor for AccountSuggestion(0);
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_23DC82A40();
  v15 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23DC82A70();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC82A60();
  v22 = sub_23DC82A50();
  v24 = v23;
  v25 = *(v19 + 8);
  v25(v21, v18);
  sub_23DC82A60();
  v64 = sub_23DC82A50();
  v27 = v26;
  v25(v21, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE50, &qword_23DC83888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DC83560;
  *(inited + 32) = 0x4449657571696E75;
  v29 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v22;
  v55 = v22;
  v30 = v24;
  *(inited + 56) = v24;
  *(inited + 72) = v29;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x800000023DC840B0;
  v31 = v68;
  *(inited + 96) = v67;
  *(inited + 104) = v31;
  *(inited + 120) = v29;
  *(inited + 128) = 0x656D616E72657375;
  *(inited + 136) = 0xE800000000000000;
  v32 = v70;
  *(inited + 144) = v69;
  *(inited + 152) = v32;
  *(inited + 168) = v29;
  *(inited + 176) = 0x4E79616C70736964;
  *(inited + 184) = 0xEB00000000656D61;
  *(inited + 192) = 1953719668;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 216) = v29;
  strcpy((inited + 224), "creationDate");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;

  sub_23DC82A30();
  sub_23DC82A20();
  v34 = v33;
  (*(v15 + 8))(v17, v65);
  v35 = v71;
  v36 = MEMORY[0x277D839F8];
  *(inited + 240) = v34;
  *(inited + 264) = v36;
  *(inited + 272) = 0x656372756F73;
  v37 = MEMORY[0x277D83B88];
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = 0;
  *(inited + 312) = v37;
  *(inited + 320) = 0xD000000000000014;
  v38 = v66;
  *(inited + 328) = 0x800000023DC840D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23DC83570;
  v40 = v64;
  *(v39 + 32) = v64;
  *(v39 + 40) = v27;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE58, &qword_23DC83890);
  *(inited + 336) = v39;
  *(inited + 360) = v41;
  *(inited + 368) = 0x69747265706F7270;
  *(inited + 376) = 0xEA00000000007365;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950);
  v43 = v75;
  *(inited + 384) = v74;
  *(inited + 408) = v42;
  *(inited + 416) = 0x676E696F6774756FLL;
  *(inited + 456) = v42;
  *(inited + 424) = 0xEF746E756F636341;
  *(inited + 432) = v43;

  v44 = sub_23DC7B28C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE48, &qword_23DC83880);
  swift_arrayDestroy();
  sub_23DC72B78(v40, v27);
  v46 = v72;
  v45 = v73;

  AccountSuggestion.init(with:)(v44, *&v45);
  if ((*(v46 + 48))(v45, 1, v38) == 1)
  {

    return sub_23DC7C16C(v45, &qword_27E30CDC8, &qword_23DC83688);
  }

  else
  {
    v48 = v57;
    sub_23DC7A6E8(v45, v57);
    v49 = v56;
    sub_23DC7A628(v48, v56);
    (*(v46 + 56))(v49, 0, 1, v38);
    sub_23DC70460(v49, v55, v30, 1, 0);

    sub_23DC7C16C(v49, &qword_27E30CDC8, &qword_23DC83688);
    sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
    v50 = sub_23DC82D80();
    v76[4] = sub_23DC7C334;
    v76[5] = v35;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 1107296256;
    v76[2] = sub_23DC7C32C;
    v76[3] = &block_descriptor_123;
    v51 = _Block_copy(v76);

    v52 = v58;
    sub_23DC82B60();
    v76[0] = MEMORY[0x277D84F90];
    sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
    sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
    v53 = v60;
    v54 = v63;
    sub_23DC82DF0();
    MEMORY[0x23EEFBA90](0, v52, v53, v51);
    _Block_release(v51);

    (*(v62 + 8))(v53, v54);
    (*(v59 + 8))(v52, v61);
    return sub_23DC7A68C(v48);
  }
}

uint64_t sub_23DC6B690(uint64_t a1)
{
  v3 = sub_23DC82B50();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23DC82B80();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSuggestion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC7A628(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_23DC7A6E8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_23DC7A804;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_23DC82B60();
  v21 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_23DC6B9F8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v30 = sub_23DC82B50();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DC82B80();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AccountSuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23DC82A70();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC82A60();
  v17 = sub_23DC82A50();
  v19 = v18;
  (*(v14 + 8))(v16, v13);

  sub_23DC72B78(v17, v19);

  sub_23DC7A628(v27, v12);
  sub_23DC75E04(aBlock, v17, v19);

  sub_23DC7A628(v12, v8);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_23DC70460(v8, *v12, v12[1], 1, 0);
  sub_23DC7C16C(v8, &qword_27E30CDC8, &qword_23DC83688);
  sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
  v20 = sub_23DC82D80();
  aBlock[4] = sub_23DC7C334;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_120;
  v21 = _Block_copy(aBlock);

  v22 = v28;
  sub_23DC82B60();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  v24 = v29;
  v23 = v30;
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v22, v24, v21);
  _Block_release(v21);

  (*(v33 + 8))(v24, v23);
  (*(v31 + 8))(v22, v32);
  return sub_23DC7A68C(v12);
}

uint64_t sub_23DC6BF0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_23DC82B50();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23DC82B80();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);
  v13 = v11;

  sub_23DC82B60();
  v18 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v10, v7, v12);
  _Block_release(v12);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_23DC6C1EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE10, &qword_23DC83848);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v251 = &v245 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = (&v245 - v4);
  v267 = sub_23DC82A70();
  v246 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v260 = &v245 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE18, &qword_23DC83850);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v282 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v280 = &v245 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v245 - v13;
  MEMORY[0x28223BE20](v12);
  v283 = &v245 - v15;
  v16 = sub_23DC82A40();
  v264 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v269 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v259 = &v245 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v257 = &v245 - v22;
  MEMORY[0x28223BE20](v21);
  v279 = &v245 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v274 = &v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v271 = &v245 - v27;
  v286 = type metadata accessor for AccountSuggestion(0);
  v278 = *(v286 - 8);
  v28 = MEMORY[0x28223BE20](v286);
  v287 = (&v245 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v28);
  v285 = (&v245 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v277 = &v245 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v256 = &v245 - v35;
  MEMORY[0x28223BE20](v34);
  v273 = (&v245 - v36);
  v37 = sub_23DC82AB0();
  v38 = *(v37 - 1);
  v39 = MEMORY[0x28223BE20](v37);
  v245 = &v245 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v261 = &v245 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v245 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = (&v245 - v46);
  v247 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v275 = v0;
  [*(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs) synchronize];
  if (qword_281303DE0 != -1)
  {
LABEL_166:
    swift_once();
  }

  v48 = __swift_project_value_buffer(v37, qword_281303DE8);
  swift_beginAccess();
  v49 = *(v38 + 16);
  v254 = v48;
  v253 = v38 + 16;
  v252 = v49;
  v49(v47, v48, v37);
  v50 = sub_23DC82A90();
  v51 = sub_23DC82D40();
  v52 = os_log_type_enabled(v50, v51);
  v276 = v14;
  if (v52)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_23DC66000, v50, v51, "reloading account suggestions", v53, 2u);
    v54 = v53;
    v14 = v276;
    MEMORY[0x23EEFC160](v54, -1, -1);
  }

  v56 = *(v38 + 8);
  v55 = v38 + 8;
  v255 = v56;
  v56(v47, v37);
  v57 = *(v275 + v247);
  if (v57)
  {
    v58 = [v57 dictionaryRepresentation];
    v59 = sub_23DC82C10();
  }

  else
  {
    v59 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  }

  v252(v45, v254, v37);

  v60 = sub_23DC82A90();
  v61 = sub_23DC82D40();

  v62 = os_log_type_enabled(v60, v61);
  v262 = v5;
  v272 = v16;
  v250 = v37;
  v249 = v55;
  if (v62)
  {
    v63 = v45;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v289 = v65;
    *v64 = 136315138;
    v66 = sub_23DC82C20();
    v68 = sub_23DC7EAC4(v66, v67, &v289);

    *(v64 + 4) = v68;
    v14 = v276;
    _os_log_impl(&dword_23DC66000, v60, v61, "loaded suggestion dict: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x23EEFC160](v65, -1, -1);
    MEMORY[0x23EEFC160](v64, -1, -1);

    v69 = v63;
  }

  else
  {

    v69 = v45;
  }

  v255(v69, v37);
  v70 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  v16 = 1;
  v71 = v275;
  swift_beginAccess();
  v72 = MEMORY[0x277D84F98];
  v265 = v70;
  *(v71 + v70) = MEMORY[0x277D84F98];

  v73 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  swift_beginAccess();
  v258 = v73;
  *(v71 + v73) = v72;

  v45 = v59 + 64;
  v74 = 1 << *(v59 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v38 = v75 & *(v59 + 64);
  v37 = ((v74 + 63) >> 6);
  v263 = (v264 + 16);
  v270 = (v264 + 32);
  v248 = v264 + 40;
  v266 = (v264 + 8);
  v268 = (v278 + 48);
  v281 = v59;
  v47 = "DeviceIdleInterval";

  v5 = 0;
  for (i = "DeviceIdleInterval"; ; v47 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v38)
        {
          if (v37 <= (v5 + 1))
          {
            v77 = (v5 + 1);
          }

          else
          {
            v77 = v37;
          }

          v78 = (v77 - 1);
          while (1)
          {
            v76 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            if (v76 >= v37)
            {
              v38 = 0;
              v293 = 0u;
              v294 = 0u;
              v5 = v78;
              v292 = 0u;
              goto LABEL_25;
            }

            v38 = *(v45 + 8 * v76);
            v5 = (v5 + 1);
            if (v38)
            {
              v5 = v76;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_160;
        }

        v76 = v5;
LABEL_24:
        v79 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v80 = v79 | (v76 << 6);
        v81 = (*(v281 + 48) + 16 * v80);
        v83 = *v81;
        v82 = v81[1];
        sub_23DC7BD48(*(v281 + 56) + 32 * v80, &v291);
        *&v292 = v83;
        *(&v292 + 1) = v82;
        sub_23DC7BDA4(&v291, &v293);

        v47 = i;
LABEL_25:
        v289 = v292;
        v290[0] = v293;
        v290[1] = v294;
        v16 = *(&v292 + 1);
        if (!*(&v292 + 1))
        {

          v133 = *(v265 + v275);
          v134 = v133 + 64;
          v135 = 1 << v133[32];
          if (v135 < 64)
          {
            v136 = ~(-1 << v135);
          }

          else
          {
            v136 = -1;
          }

          v45 = v136 & *(v133 + 8);
          v271 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
          v268 = ((v135 + 63) >> 6);
          v257 = (v246 + 8);
          v273 = (v278 + 56);
          v279 = v133;

          v47 = &qword_27E30CE20;
          v37 = &qword_23DC83858;
          v38 = v283;
          v281 = v134;
          while (v45)
          {
            v142 = v16;
LABEL_76:
            v144 = __clz(__rbit64(v45));
            v45 &= v45 - 1;
            v145 = v144 | (v142 << 6);
            v146 = (*(v279 + 6) + 16 * v145);
            v147 = *v146;
            v148 = v146[1];
            v149 = v277;
            sub_23DC7A628(*(v279 + 7) + *(v278 + 72) * v145, v277);
            v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
            v151 = *(v150 + 48);
            *v14 = v147;
            *(v14 + 8) = v148;
            sub_23DC7A6E8(v149, v14 + v151);
            (*(*(v150 - 8) + 56))(v14, 0, 1, v150);

            v38 = v283;
LABEL_77:
            sub_23DC7C074(v14, v38, &qword_27E30CE18, &qword_23DC83850);
            v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
            v153 = *(v152 - 8);
            i = *(v153 + 48);
            v154 = (i)(v38, 1, v152);
            v141 = v285;
            if (v154 == 1)
            {
              v281 = v152;

              v38 = v275;
              v176 = *(v258 + v275);
              v178 = *(v176 + 64);
              v16 = v176 + 64;
              v177 = v178;
              v179 = 1 << *(*(v258 + v275) + 32);
              if (v179 < 64)
              {
                v180 = ~(-1 << v179);
              }

              else
              {
                v180 = -1;
              }

              v45 = v180 & v177;
              v181 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
              v260 = *(v258 + v275);

              v256 = v181;
              swift_beginAccess();
              v182 = 0;
              v248 = (v179 + 63) >> 6;
              v279 = (v153 + 56);
              v14 = &qword_27E30CE28;
              v183 = v251;
              v285 = (v153 + 48);
              v47 = v16;
              v257 = v16;
              while (1)
              {
                v37 = v183;
                if (!v45)
                {
                  break;
                }

                v267 = v182;
                v184 = v182;
LABEL_112:
                v268 = ((v45 - 1) & v45);
                v186 = __clz(__rbit64(v45)) | (v184 << 6);
                v187 = (*(v260 + 6) + 16 * v186);
                v188 = *v187;
                v189 = v187[1];
                v190 = v264;
                v191 = v259;
                v192 = v272;
                (*(v264 + 16))(v259, *(v260 + 7) + *(v264 + 72) * v186, v272);
                v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                v193 = *(v16 + 48);
                *v37 = v188;
                v37[1] = v189;
                v183 = v37;
                (*(v190 + 32))(v37 + v193, v191, v192);
                (*(*(v16 - 8) + 56))(v37, 0, 1, v16);

                v38 = v275;
LABEL_113:
                v194 = v262;
                sub_23DC7C074(v183, v262, &qword_27E30CE10, &qword_23DC83848);
                v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                if ((*(*(v195 - 8) + 48))(v194, 1, v195) == 1)
                {
                  goto LABEL_155;
                }

                v196 = *v194;
                v197 = v194[1];
                (*v270)(v269, v194 + *(v195 + 48), v272);
                sub_23DC82A00();
                v199 = fabs(v198);
                v200 = *&v271[v38];
                if (v200 && (v201 = v200, v16 = sub_23DC82C40(), [v201 doubleForKey_], v203 = v202, v201, v16, v203 > 0.0))
                {
                  if (v203 < v199)
                  {
                    goto LABEL_119;
                  }
                }

                else if (v199 > 7776000.0)
                {
LABEL_119:
                  v204 = v250;
                  v252(v261, v254, v250);
                  v205 = sub_23DC82A90();
                  v16 = sub_23DC82D40();
                  if (os_log_type_enabled(v205, v16))
                  {
                    v206 = swift_slowAlloc();
                    *v206 = 0;
                    _os_log_impl(&dword_23DC66000, v205, v16, "device too old, removing it from all suggestions and the device list", v206, 2u);
                    MEMORY[0x23EEFC160](v206, -1, -1);
                  }

                  v255(v261, v204);
                  v207 = *(v265 + v38);
                  v208 = *(v207 + 64);
                  v283 = (v207 + 64);
                  v209 = 1 << *(v207 + 32);
                  if (v209 < 64)
                  {
                    v210 = ~(-1 << v209);
                  }

                  else
                  {
                    v210 = -1;
                  }

                  v211 = v210 & v208;
                  v212 = (v209 + 63) >> 6;
                  v276 = v207;

                  v38 = 0;
                  while (1)
                  {
                    v215 = v282;
                    if (!v211)
                    {
                      break;
                    }

                    v216 = v38;
                    v217 = v281;
LABEL_137:
                    v220 = __clz(__rbit64(v211));
                    v211 &= v211 - 1;
                    v221 = v220 | (v216 << 6);
                    v222 = (*(v276 + 48) + 16 * v221);
                    v224 = *v222;
                    v223 = v222[1];
                    v16 = v277;
                    sub_23DC7A628(*(v276 + 56) + *(v278 + 72) * v221, v277);
                    v225 = *(v217 + 48);
                    *v215 = v224;
                    *(v215 + 1) = v223;
                    sub_23DC7A6E8(v16, &v215[v225]);
                    (*v279)(v215, 0, 1, v217);

LABEL_138:
                    v226 = v280;
                    sub_23DC7C074(v215, v280, &qword_27E30CE18, &qword_23DC83850);
                    if ((i)(v226, 1, v217) == 1)
                    {

                      v38 = v275;
                      v183 = v251;
                      v47 = v257;
                      if ((*(v275 + v256) & 1) == 0)
                      {
                        v234 = *(v275 + v247);
                        if (v234)
                        {
                          v235 = v251;
                          v236 = v234;
                          v237 = sub_23DC68CB8();
                          *&v289 = 0x5F454349564544;
                          *(&v289 + 1) = 0xE700000000000000;
                          MEMORY[0x23EEFB9A0](v237);

                          v16 = sub_23DC82C40();

                          [v236 removeObjectForKey_];

                          v183 = v235;
                        }
                      }

                      goto LABEL_101;
                    }

                    v227 = v287;
                    sub_23DC7A6E8(v226 + *(v217 + 48), v287);
                    v228 = *(v227 + *(v286 + 40));
                    if (*(v228 + 16))
                    {
                      sub_23DC82F40();
                      sub_23DC82C70();
                      v229 = sub_23DC82F60();
                      v230 = -1 << *(v228 + 32);
                      v231 = v229 & ~v230;
                      if ((*(v228 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231))
                      {
                        v16 = ~v230;
                        while (1)
                        {
                          v232 = (*(v228 + 48) + 16 * v231);
                          v233 = *v232 == v196 && v232[1] == v197;
                          if (v233 || (sub_23DC82EF0() & 1) != 0)
                          {
                            break;
                          }

                          v231 = (v231 + 1) & v16;
                          if (((*(v228 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
                          {
                            goto LABEL_126;
                          }
                        }

                        v213 = v287;
                        sub_23DC766C8(v196, v197);

                        v214 = v274;
                        sub_23DC7A628(v213, v274);
                        (*v273)(v214, 0, 1, v286);
                        sub_23DC70460(v214, *v213, v213[1], 0, 0);
                        sub_23DC7C16C(v214, &qword_27E30CDC8, &qword_23DC83688);
                      }
                    }

LABEL_126:
                    sub_23DC7A68C(v287);
                  }

                  if (v212 <= (v38 + 1))
                  {
                    v218 = v38 + 1;
                  }

                  else
                  {
                    v218 = v212;
                  }

                  v219 = v218 - 1;
                  v217 = v281;
                  while (1)
                  {
                    v216 = v38 + 1;
                    if (__OFADD__(v38, 1))
                    {
                      break;
                    }

                    if (v216 >= v212)
                    {
                      (*v279)(v282, 1, 1, v281);
                      v211 = 0;
                      v38 = v219;
                      goto LABEL_138;
                    }

                    v211 = *&v283[8 * v216];
                    ++v38;
                    if (v211)
                    {
                      v38 = v216;
                      goto LABEL_137;
                    }
                  }

                  __break(1u);
LABEL_155:

                  sub_23DC6E6E8();
                  v239 = v245;
                  v240 = v250;
                  v252(v245, v254, v250);

                  v241 = sub_23DC82A90();
                  v242 = sub_23DC82D40();
                  if (os_log_type_enabled(v241, v242))
                  {
                    v243 = swift_slowAlloc();
                    *v243 = 134218240;
                    *(v243 + 4) = *(*(v265 + v38) + 16);
                    *(v243 + 12) = 2048;
                    *(v243 + 14) = *(*(v258 + v38) + 16);

                    _os_log_impl(&dword_23DC66000, v241, v242, "reloading account suggestions finished, loaded %ld suggestions, loaded %ld devices", v243, 0x16u);
                    MEMORY[0x23EEFC160](v243, -1, -1);
                  }

                  else
                  {
                  }

                  return (v255)(v239, v240);
                }

LABEL_101:
                (*v266)(v269, v272);
                v14 = &qword_27E30CE28;
                v45 = v268;
                v182 = v267;
              }

              if (v248 <= v182 + 1)
              {
                v185 = v182 + 1;
              }

              else
              {
                v185 = v248;
              }

              v5 = (v185 - 1);
              while (1)
              {
                v184 = v182 + 1;
                if (__OFADD__(v182, 1))
                {
                  goto LABEL_161;
                }

                if (v184 >= v248)
                {
                  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                  (*(*(v238 - 8) + 56))(v37, 1, 1, v238);
                  v268 = 0;
                  v267 = v5;
                  v183 = v37;
                  goto LABEL_113;
                }

                v45 = v47[v184];
                ++v182;
                if (v45)
                {
                  v267 = v184;
                  goto LABEL_112;
                }
              }
            }

            sub_23DC7A6E8(v38 + *(v152 + 48), v141);
            if (*(v141 + *(v286 + 56)) == 1)
            {
              i = *(v286 + 40);
              v155 = *&i[v141];
              v156 = *&v271[v275];
              if (v156 && (v157 = v156, v158 = sub_23DC82C40(), v159 = [v157 stringForKey_], v157, v158, v159))
              {
                v160 = sub_23DC82C50();
                v162 = v161;
              }

              else
              {
                v163 = v260;
                sub_23DC82A60();
                v160 = sub_23DC82A50();
                v162 = v164;
                (*v257)(v163, v267);
                v165 = *&v271[v275];
                if (v165)
                {
                  v166 = v165;
                  v167 = sub_23DC82C40();
                  v168 = sub_23DC82C40();
                  [v166 setObject:v167 forKey:v168];
                }
              }

              if (*(v155 + 16) && (sub_23DC82F40(), sub_23DC82C70(), v169 = sub_23DC82F60(), v170 = -1 << *(v155 + 32), v171 = v169 & ~v170, ((*(v155 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) != 0))
              {
                v172 = ~v170;
                while (1)
                {
                  v173 = (*(v155 + 48) + 16 * v171);
                  v174 = *v173 == v160 && v173[1] == v162;
                  if (v174 || (sub_23DC82EF0() & 1) != 0)
                  {
                    break;
                  }

                  v171 = (v171 + 1) & v172;
                  if (((*(v155 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                v14 = v276;
                v38 = v283;
                v141 = v285;
              }

              else
              {
LABEL_64:

                v137 = sub_23DC68CB8();
                v138 = v285;
                sub_23DC75E04(&v289, v137, v139);

                v140 = v274;
                sub_23DC7A628(v138, v274);
                (*v273)(v140, 0, 1, v286);
                v141 = v138;
                sub_23DC70460(v140, *v138, v138[1], 0, 0);
                sub_23DC7C16C(v140, &qword_27E30CDC8, &qword_23DC83688);
                v14 = v276;
                v38 = v283;
              }
            }

            sub_23DC7A68C(v141);
            v134 = v281;
          }

          if (v268 <= v16 + 1)
          {
            v143 = (v16 + 1);
          }

          else
          {
            v143 = v268;
          }

          v5 = (v143 - 1);
          while (1)
          {
            v142 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v142 >= v268)
            {
              v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
              (*(*(v175 - 8) + 56))(v14, 1, 1, v175);
              v45 = 0;
              v16 = v5;
              goto LABEL_77;
            }

            v45 = *&v134[8 * v142];
            ++v16;
            if (v45)
            {
              v16 = v142;
              goto LABEL_76;
            }
          }

LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v84 = v289;
        sub_23DC7BDA4(v290, &v292);
        if (sub_23DC82CC0())
        {
          break;
        }

        if (sub_23DC82CC0())
        {
          sub_23DC7BD48(&v292, &v291);
          if (swift_dynamicCast())
          {
            sub_23DC82A10();
            if (sub_23DC82CC0())
            {
              v86 = sub_23DC82C80();
              v87 = sub_23DC7A130(v86, v84, v16);
              v89 = v88;
              v91 = v90;
              v93 = v92;

              v84 = MEMORY[0x23EEFB960](v87, v89, v91, v93);
              v16 = v94;
            }

            v47 = v258;
            v14 = v275;
            swift_beginAccess();
            (*v263)(v257, v279, v272);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v288 = *(v47 + v14);
            v96 = v288;
            *(v47 + v14) = 0x8000000000000000;
            v97 = sub_23DC7F118(v84, v16);
            v99 = *(v96 + 16);
            v100 = (v98 & 1) == 0;
            v101 = __OFADD__(v99, v100);
            v102 = v99 + v100;
            if (v101)
            {
              goto LABEL_162;
            }

            v14 = v98;
            if (*(v96 + 24) >= v102)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_46;
              }

              v47 = v97;
              sub_23DC8125C();
              v97 = v47;
              if ((v14 & 1) == 0)
              {
                goto LABEL_52;
              }

LABEL_47:
              v121 = v97;

              v122 = v288;
              v123 = v288[7] + *(v264 + 72) * v121;
              v124 = v272;
              (*(v264 + 40))(v123, v257, v272);
            }

            else
            {
              sub_23DC7FCDC(v102, isUniquelyReferenced_nonNull_native);
              v97 = sub_23DC7F118(v84, v16);
              if ((v14 & 1) != (v103 & 1))
              {
                goto LABEL_167;
              }

LABEL_46:
              if (v14)
              {
                goto LABEL_47;
              }

LABEL_52:
              v122 = v288;
              v288[(v97 >> 6) + 8] |= 1 << v97;
              v127 = (v122[6] + 16 * v97);
              *v127 = v84;
              v127[1] = v16;
              (*(v264 + 32))(v122[7] + *(v264 + 72) * v97, v257, v272);
              v128 = v122[2];
              v101 = __OFADD__(v128, 1);
              v129 = v128 + 1;
              if (v101)
              {
                goto LABEL_165;
              }

              v122[2] = v129;
              v124 = v272;
            }

            *(v258 + v275) = v122;

            swift_endAccess();
            (*v266)(v279, v124);
            goto LABEL_59;
          }
        }

LABEL_13:
        __swift_destroy_boxed_opaque_existential_1Tm(&v292);
      }

      sub_23DC7BD48(&v292, &v291);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      v85 = v271;
      AccountSuggestion.init(with:)(v288, *&v271);
      if ((*v268)(v85, 1, v286) != 1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v292);

      sub_23DC7C16C(v85, &qword_27E30CDC8, &qword_23DC83688);
    }

    sub_23DC7A6E8(v85, v273);
    if (sub_23DC82CC0())
    {
      v104 = sub_23DC82C80();
      v105 = sub_23DC7A130(v104, v84, v16);
      v107 = v106;
      v109 = v108;
      v111 = v110;

      v84 = MEMORY[0x23EEFB960](v105, v107, v109, v111);
      v16 = v112;
    }

    v47 = v265;
    v14 = v275;
    swift_beginAccess();
    sub_23DC7A628(v273, v256);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v288 = *(v47 + v14);
    v114 = v288;
    *(v47 + v14) = 0x8000000000000000;
    v115 = sub_23DC7F118(v84, v16);
    v117 = *(v114 + 16);
    v118 = (v116 & 1) == 0;
    v101 = __OFADD__(v117, v118);
    v119 = v117 + v118;
    if (v101)
    {
      goto LABEL_163;
    }

    v14 = v116;
    if (*(v114 + 24) < v119)
    {
      break;
    }

    if (v113)
    {
      goto LABEL_49;
    }

    v47 = v115;
    sub_23DC8102C();
    v115 = v47;
    if ((v14 & 1) == 0)
    {
LABEL_56:
      v126 = v288;
      v288[(v115 >> 6) + 8] |= 1 << v115;
      v130 = (v126[6] + 16 * v115);
      *v130 = v84;
      v130[1] = v16;
      sub_23DC7A6E8(v256, v126[7] + *(v278 + 72) * v115);
      v131 = v126[2];
      v101 = __OFADD__(v131, 1);
      v132 = v131 + 1;
      if (v101)
      {
        goto LABEL_164;
      }

      v126[2] = v132;
      goto LABEL_58;
    }

LABEL_50:
    v125 = v115;

    v126 = v288;
    sub_23DC7BE44(v256, v288[7] + *(v278 + 72) * v125);
LABEL_58:
    *(v265 + v275) = v126;

    swift_endAccess();
    sub_23DC7A68C(v273);
LABEL_59:
    __swift_destroy_boxed_opaque_existential_1Tm(&v292);
    v14 = v276;
  }

  sub_23DC7F9A0(v119, v113);
  v115 = sub_23DC7F118(v84, v16);
  if ((v14 & 1) == (v120 & 1))
  {
LABEL_49:
    if ((v14 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_167:
  result = sub_23DC82F30();
  __break(1u);
  return result;
}

uint64_t sub_23DC6E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AccountSuggestion(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_23DC7C16C(a1, &qword_27E30CDC8, &qword_23DC83688);
    sub_23DC7F3F8(a2, a3, v9);

    return sub_23DC7C16C(v9, &qword_27E30CDC8, &qword_23DC83688);
  }

  else
  {
    sub_23DC7A6E8(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23DC809A8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_23DC6E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF8, &qword_23DC83830);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_23DC82A40();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_23DC7C16C(a1, &qword_27E30CDF8, &qword_23DC83830);
    sub_23DC7F564(a2, a3, v9);

    return sub_23DC7C16C(v9, &qword_27E30CDF8, &qword_23DC83830);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23DC80B0C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_23DC6E6E8()
{
  v1 = v0;
  v2 = sub_23DC82B50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DC82B80();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = v8[2];
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v23 = v5;
  v24 = v3;
  v25 = v2;
  v11 = sub_23DC7E944(v9, 0);
  v12 = *(type metadata accessor for AccountSuggestion(0) - 8);
  v13 = sub_23DC82084(aBlock, v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v9, v8);
  v14 = aBlock[0];

  result = sub_23DC7C00C(v14);
  if (v13 == v9)
  {
    v3 = v24;
    v2 = v25;
    v5 = v23;
    v10 = MEMORY[0x277D84F90];
LABEL_5:
    v16 = sub_23DC6ED28();
    sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
    v17 = sub_23DC82D80();
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v11;
    v18[4] = v16;
    aBlock[4] = sub_23DC7C014;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DC7C32C;
    aBlock[3] = &block_descriptor_99;
    v19 = _Block_copy(aBlock);

    v20 = v26;
    sub_23DC82B60();
    aBlock[0] = v10;
    sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
    sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
    v21 = v28;
    sub_23DC82DF0();
    MEMORY[0x23EEFBA90](0, v20, v21, v19);
    _Block_release(v19);

    (*(v3 + 8))(v21, v2);
    return (*(v27 + 8))(v20, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DC6EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock;
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    sub_23DC672C0(v8, v9);
    v8(sub_23DC7C068, v6);
    sub_23DC69148(v8, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    sub_23DC82B30();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DC82B30();
  }
}

uint64_t sub_23DC6EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DC82B30();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

uint64_t sub_23DC6ED28()
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AccountSuggestion(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v58 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v61 = v0;
  v11 = *(v0 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v60 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_locallySupportedAccountTypes;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = 0;
  v59 = MEMORY[0x277D84F90];
  v62 = v1;
  v63 = v2;
  v64 = v11;
  v65 = v7;
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_12:
  while (2)
  {
    while (2)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(v11 + 56);
      v67 = *(v2 + 72);
      sub_23DC7A628(v21 + v67 * (v20 | (v17 << 6)), v7);
      sub_23DC7A6E8(v7, v9);
      if (v9[*(v1 + 56)])
      {
LABEL_7:
        sub_23DC7A68C(v9);
        if (!v15)
        {
          goto LABEL_8;
        }

        continue;
      }

      break;
    }

    v68 = v18;
    v22 = *&v9[*(v1 + 40)];
    v23 = *(v22 + 32);
    v24 = v23 & 0x3F;
    v66 = ((1 << v23) + 63) >> 6;
    v25 = 8 * v66;

    if (v24 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v54 = swift_slowAlloc();

        v18 = v68;
        v55 = sub_23DC794D8(v54, v66, v22, sub_23DC6F7D8);
        if (!v18)
        {
          v56 = v55;
          swift_bridgeObjectRelease_n();
          MEMORY[0x23EEFC160](v54, -1, -1);
          v43 = v56;
          goto LABEL_33;
        }

        swift_bridgeObjectRelease_n();
        MEMORY[0x23EEFC160](v54, -1, -1);
        __break(1u);
        goto LABEL_51;
      }
    }

    MEMORY[0x28223BE20](v26);
    bzero(&v58 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v25);
    v27 = 0;
    v28 = 0;
    v29 = 1 << *(v22 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v22 + 56);
    v32 = (v29 + 63) >> 6;
LABEL_18:
    if (v31)
    {
      v33 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v34 = v33 | (v28 << 6);
      goto LABEL_25;
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v28 >= v32)
      {
        break;
      }

      v36 = *(v22 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v31 = (v36 - 1) & v36;
        v34 = __clz(__rbit64(v36)) | (v28 << 6);
LABEL_25:
        v37 = (*(v22 + 48) + 16 * v34);
        v39 = *v37;
        v38 = v37[1];
        v40 = v39 & 0xFFFFFFFFFFFFLL;
        if ((v38 & 0x2000000000000000) != 0)
        {
          v41 = HIBYTE(v38) & 0xF;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          *(&v58 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v34;
          if (__OFADD__(v27++, 1))
          {
            goto LABEL_49;
          }
        }

        goto LABEL_18;
      }
    }

    v43 = sub_23DC795F8((&v58 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0)), v66, v27, v22);
    v1 = v62;
    v18 = v68;
LABEL_33:
    v44 = *(v43 + 16);

    v2 = v63;
    v7 = v65;
    if (!v44 || (v46 = *(v9 + 3), v69[0] = *(v9 + 2), v69[1] = v46, MEMORY[0x28223BE20](v45), *(&v58 - 2) = v69, (sub_23DC792B8(sub_23DC7C388, (&v58 - 4), v47) & 1) == 0))
    {
      v11 = v64;
      goto LABEL_7;
    }

    sub_23DC7A6E8(v9, v58);
    v48 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v48;
    v68 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23DC78FB4(0, *(v48 + 16) + 1, 1);
      v48 = v70;
    }

    v11 = v64;
    v51 = *(v48 + 16);
    v50 = *(v48 + 24);
    v52 = v48;
    if (v51 >= v50 >> 1)
    {
      sub_23DC78FB4((v50 > 1), v51 + 1, 1);
      v11 = v64;
      v52 = v70;
    }

    *(v52 + 16) = v51 + 1;
    v53 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v59 = v52;
    sub_23DC7A6E8(v58, v52 + v53 + v51 * v67);
    v7 = v65;
    v18 = v68;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_8:
  while (2)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    if (v19 < v16)
    {
      v15 = *(v12 + 8 * v19);
      ++v17;
      if (!v15)
      {
        continue;
      }

      v17 = v19;
      goto LABEL_12;
    }

    break;
  }

  v69[0] = v59;

  sub_23DC769C8(v69, sub_23DC7708C, sub_23DC76BC4);
  if (!v18)
  {

    return v69[0];
  }

LABEL_51:

  __break(1u);
  return result;
}

uint64_t sub_23DC6F30C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_23DC7BF10();
  result = sub_23DC82DD0();
  if (result == -1)
  {
    return 0;
  }

  if (result != 1)
  {
    if (result)
    {
      type metadata accessor for ComparisonResult();
      result = sub_23DC82F00();
      __break(1u);
    }

    else
    {
      return sub_23DC82DD0() == 1;
    }
  }

  return result;
}

void sub_23DC6F404(void *a1)
{
  v2 = [a1 accountType];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 identifier];

  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = sub_23DC82C50();
  v7 = v6;

  v8 = [a1 username];
  if (v8)
  {
    v9 = v8;
    v10 = sub_23DC82C50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_23DC6F4F4(v5, v7, v10, v12);
}

uint64_t sub_23DC6F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a2;
  v7 = type metadata accessor for AccountSuggestion(0);
  v36 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = (&v32 - v13);
  v37 = a4;
  if (a4)
  {
    v35 = v12;
    v15 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
    swift_beginAccess();
    v16 = *(v4 + v15);
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;

    v22 = 0;
    for (i = MEMORY[0x277D84F90]; v19; result = sub_23DC7A6E8(v35, i + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v30 * v26))
    {
LABEL_12:
      while (1)
      {
        v25 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v26 = *(v36 + 72);
        sub_23DC7A628(*(v16 + 56) + v26 * (v25 | (v22 << 6)), v11);
        sub_23DC7A6E8(v11, v14);
        v27 = v14[2] == a1 && v14[3] == v39;
        if (v27 || (sub_23DC82EF0()) && (v14[4] == v38 && v14[5] == v37 || (sub_23DC82EF0()))
        {
          break;
        }

        result = sub_23DC7A68C(v14);
        if (!v19)
        {
          goto LABEL_8;
        }
      }

      sub_23DC7A6E8(v14, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23DC78FB4(0, *(i + 16) + 1, 1);
        i = v40;
      }

      v30 = *(i + 16);
      v29 = *(i + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v33 = *(i + 16);
        v34 = v30 + 1;
        sub_23DC78FB4((v29 > 1), v30 + 1, 1);
        v30 = v33;
        v31 = v34;
        i = v40;
      }

      *(i + 16) = v31;
    }

LABEL_8:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {

        return i;
      }

      v19 = *(v16 + 64 + 8 * v24);
      ++v22;
      if (v19)
      {
        v22 = v24;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

BOOL sub_23DC6F7D8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

void sub_23DC6F7F8()
{
  v1 = sub_23DC82AB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v29 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (!v9 || (v10 = v9, v11 = sub_23DC82C40(), v12 = [v10 BOOLForKey_], v10, v11, (v12 & 1) == 0))
  {
    if (qword_281303DE0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281303DE8);
    swift_beginAccess();
    v30 = v2;
    v14 = *(v2 + 16);
    v14(v7, v13, v1);
    v15 = sub_23DC82A90();
    v16 = sub_23DC82D40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v14;
      v18 = v5;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23DC66000, v15, v16, "Not locally migrated! Running now", v19, 2u);
      v20 = v19;
      v5 = v18;
      v14 = v17;
      MEMORY[0x23EEFC160](v20, -1, -1);
    }

    v21 = *(v30 + 8);
    v30 += 8;
    v21(v7, v1);
    v22 = *(v29 + v8);
    if (v22)
    {
      v23 = v22;
      v24 = sub_23DC82C40();
      [v23 setBool:1 forKey:v24];
    }

    sub_23DC702A0();
    v14(v5, v13, v1);
    v25 = sub_23DC82A90();
    v26 = sub_23DC82D40();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23DC66000, v25, v26, "Local migration is now complete, you are free to get up and move about the cabin", v27, 2u);
      MEMORY[0x23EEFC160](v27, -1, -1);
    }

    v21(v5, v1);
  }
}

void sub_23DC6FB40(void *a1)
{
  v3 = sub_23DC829D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes);
  v8 = [a1 accountType];
  if (!v8)
  {
    __break(1u);
    goto LABEL_30;
  }

  v9 = v8;
  v10 = [v8 identifier];

  if (!v10)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = sub_23DC82C50();
  v13 = v12;

  *&v37 = v11;
  *(&v37 + 1) = v13;
  MEMORY[0x28223BE20](v14);
  *(&v37 - 2) = &v37;
  v15 = sub_23DC792B8(sub_23DC7C388, (&v37 - 2), v7);

  if ((v15 & 1) == 0)
  {
    return;
  }

  v16 = [a1 username];
  if (!v16)
  {
    return;
  }

  v17 = [a1 username];
  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = v17;
  v19 = sub_23DC82C50();
  v21 = v20;

  *&v37 = v19;
  *(&v37 + 1) = v21;
  sub_23DC829C0();
  sub_23DC7BF10();
  v22 = sub_23DC82DC0();
  v24 = v23;
  (*(v4 + 8))(v6, v3);

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    return;
  }

  v26 = [a1 parentAccount];
  if (v26)
  {
  }

  v27 = [a1 personaIdentifier];
  if (v27)
  {
  }

  else
  {
    [a1 isDataSeparatedAccount];
  }

  if ([a1 accountPropertyForKey_])
  {
    sub_23DC82DE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  sub_23DC7C16C(&v37, &qword_27E30CDE0, &qword_23DC83960);
  v28 = [a1 accountType];
  if (!v28)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 identifier];

  if (!v30)
  {
    sub_23DC82C50();
    goto LABEL_25;
  }

  v31 = sub_23DC82C50();
  v33 = v32;

  v34 = sub_23DC82C50();
  if (!v33)
  {
LABEL_25:

    return;
  }

  if (v31 == v34 && v33 == v35)
  {

LABEL_28:
    [a1 aa:*MEMORY[0x277CEC688] isAccountClass:{v37, v38}];
    return;
  }

  v36 = sub_23DC82EF0();

  if (v36)
  {
    goto LABEL_28;
  }
}

id sub_23DC6FF90(void *a1)
{
  sub_23DC6FB40(a1);
  if ((v3 & 1) == 0)
  {
    v12 = 0;
    return (v12 & 1);
  }

  v4 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_accountTypesThatNeedProperties);
  result = [a1 accountType];
  if (result)
  {
    v6 = result;
    v7 = [result identifier];

    if (v7)
    {
      v9 = sub_23DC82C50();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v14[0] = v9;
    v14[1] = v11;
    MEMORY[0x28223BE20](v8);
    v13[2] = v14;
    v12 = sub_23DC792B8(sub_23DC7BEF4, v13, v4);

    return (v12 & 1);
  }

  __break(1u);
  return result;
}

char *sub_23DC700B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DC83580;
  *(inited + 32) = sub_23DC82C50();
  *(inited + 40) = v1;
  *(inited + 48) = sub_23DC82C50();
  *(inited + 56) = v2;
  *(inited + 64) = sub_23DC82C50();
  *(inited + 72) = v3;
  *(inited + 80) = sub_23DC82C50();
  *(inited + 88) = v4;
  *(inited + 96) = sub_23DC82C50();
  *(inited + 104) = v5;
  *(inited + 112) = sub_23DC82C50();
  *(inited + 120) = v6;
  *(inited + 128) = sub_23DC82C50();
  *(inited + 136) = v7;
  *(inited + 144) = sub_23DC82C50();
  *(inited + 152) = v8;
  *(inited + 160) = sub_23DC82C50();
  *(inited + 168) = v9;
  *(inited + 176) = sub_23DC82C50();
  *(inited + 184) = v10;
  *(inited + 192) = sub_23DC82C50();
  *(inited + 200) = v11;
  *(inited + 208) = sub_23DC82C50();
  *(inited + 216) = v12;
  *(inited + 224) = sub_23DC82C50();
  *(inited + 232) = v13;
  *(inited + 240) = sub_23DC82C50();
  *(inited + 248) = v14;
  v15 = sub_23DC82C50();
  v17 = v16;
  result = sub_23DC75A1C(1, 15, 1, inited);
  *(result + 2) = 15;
  *(result + 32) = v15;
  *(result + 33) = v17;
  return result;
}

void sub_23DC702A0()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    goto LABEL_16;
  }

  v1 = v0;
  v2 = sub_23DC82CE0();
  v13[0] = 0;
  v3 = [v1 accountsWithAccountTypeIdentifiers:v2 error:v13];

  v4 = v13[0];
  if (!v3)
  {
    v11 = v13[0];
    v12 = sub_23DC829E0();

    swift_willThrow();
    return;
  }

  sub_23DC7BEAC(0, &qword_2813039F0, 0x277CB8F30);
  v5 = sub_23DC82CF0();
  v6 = v4;

  if (v5 >> 62)
  {
    v7 = sub_23DC82E90();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EEFBB70](i, v5);
          }

          else
          {
            v9 = *(v5 + 8 * i + 32);
          }

          v10 = v9;
          sub_23DC734E8(v9);
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

LABEL_13:
}

void sub_23DC70460(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v68 = a4;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v15 = type metadata accessor for AccountSuggestion(0);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  MEMORY[0x28223BE20](v15);
  v67 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_23DC82AB0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_281303DE8);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);
  v23 = sub_23DC82A90();
  v24 = sub_23DC82D40();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v64 = v14;
    v26 = a5;
    v27 = v6;
    v28 = a2;
    v29 = a3;
    v30 = v25;
    *v25 = 0;
    _os_log_impl(&dword_23DC66000, v23, v24, "updating KVS with latest local!", v25, 2u);
    v31 = v30;
    a3 = v29;
    a2 = v28;
    v6 = v27;
    a5 = v26;
    v14 = v64;
    MEMORY[0x23EEFC160](v31, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v32 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  if (*(v6 + v32) != 1 || (a5 & 1) != 0)
  {
    v71 = 0xD000000000000013;
    v72 = 0x800000023DC84070;
    MEMORY[0x23EEFB9A0](a2, a3);
    v33 = v72;
    v34 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
    v35 = *(v6 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);
    v64 = v71;
    if (v35)
    {
      v36 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
      v37 = a3;
      v38 = v35;
      v39 = sub_23DC82C40();
      v40 = [v38 dictionaryForKey_];

      v41 = v67;
      if (v40)
      {
        v42 = sub_23DC82C10();
      }

      else
      {
        v42 = 0;
      }

      a3 = v37;
      v34 = v36;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = v67;
    }

    sub_23DC7C224(v66, v14, &qword_27E30CDC8, &qword_23DC83688);
    v44 = v69;
    if ((*(v70 + 48))(v14, 1, v69) == 1)
    {
      sub_23DC7C16C(v14, &qword_27E30CDC8, &qword_23DC83688);
      if (v42)
      {

        v45 = v65;
        (*(v70 + 56))(v65, 1, 1, v44);
        swift_beginAccess();

        sub_23DC6E350(v45, a2, a3);
        swift_endAccess();
        v46 = *(v6 + v34);
        if (v46)
        {
          v47 = v46;
          v48 = sub_23DC82C40();

          [v47 removeObjectForKey_];

          if ((v68 & 1) == 0)
          {
            return;
          }

          goto LABEL_22;
        }
      }

LABEL_21:

      if ((v68 & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }

    sub_23DC7A6E8(v14, v43);
    if (v42)
    {
      v67 = v33;
      v49 = AccountSuggestion.dictionaryRepresentation()();
      sub_23DC70C7C(v42);

      v50 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v51 = sub_23DC82BF0();

      v52 = [v50 initWithDictionary_];

      sub_23DC70C7C(v49);

      v53 = sub_23DC82BF0();

      LOBYTE(v50) = [v52 isEqualToDictionary_];

      if (v50)
      {
        sub_23DC7A68C(v43);
        goto LABEL_21;
      }

      v58 = *v43;
      v59 = v43[1];
      v60 = v65;
      sub_23DC7A628(v43, v65);
      (*(v70 + 56))(v60, 0, 1, v69);
      swift_beginAccess();

      sub_23DC6E350(v60, v58, v59);
      swift_endAccess();
      v57 = *(v6 + v34);
      if (v57)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v54 = *v43;
      v55 = v43[1];
      v56 = v65;
      sub_23DC7A628(v43, v65);
      (*(v70 + 56))(v56, 0, 1, v44);
      swift_beginAccess();

      sub_23DC6E350(v56, v54, v55);
      swift_endAccess();
      v57 = *(v6 + v34);
      if (v57)
      {
LABEL_27:
        v61 = v57;
        AccountSuggestion.dictionaryRepresentation()();
        v62 = sub_23DC82BF0();

        v63 = sub_23DC82C40();

        [v61 setDictionary:v62 forKey:v63];

        goto LABEL_29;
      }
    }

LABEL_29:
    sub_23DC7A68C(v43);
    if ((v68 & 1) == 0)
    {
      return;
    }
  }

LABEL_22:
  sub_23DC6E6E8();
}

uint64_t sub_23DC70C7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDE8, &qword_23DC83820);
    v2 = sub_23DC82EC0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23DC7BD48(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23DC7BDA4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23DC7BDA4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23DC7BDA4(v31, v32);
    result = sub_23DC82E10();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23DC7BDA4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23DC70F44(uint64_t a1, int a2)
{
  v20 = a2;
  v4 = sub_23DC82B50();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_23DC82B80();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AccountSuggestion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC7A628(a1, &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  sub_23DC7A6E8(&v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  *(v15 + v14 + v12) = v20;
  aBlock[4] = sub_23DC7A86C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_32;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  sub_23DC82B60();
  v23 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v9, v6, v16);
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);
}

uint64_t sub_23DC712BC(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for AccountSuggestion(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23DC70460(v7, *a2, a2[1], 1, a3);
  return sub_23DC7C16C(v7, &qword_27E30CDC8, &qword_23DC83688);
}

uint64_t sub_23DC713B4()
{
  v1 = v0;
  v2 = sub_23DC82AB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DC82A90();
  v8 = sub_23DC82D40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DC66000, v7, v8, "Deduplicating all", v9, 2u);
    MEMORY[0x23EEFC160](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23DC7A8F0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_23DC7C33C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC69B98;
  aBlock[3] = &block_descriptor_39;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  dispatch_sync(v13, v12);

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DC71678(uint64_t a1)
{
  v111 = sub_23DC82AB0();
  v113 = *(v111 - 8);
  v3 = MEMORY[0x28223BE20](v111);
  v112 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v110 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v109 - v7;
  v127 = sub_23DC829D0();
  v8 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v128 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for AccountSuggestion(0);
  v10 = *(v123 - 8);
  v11 = MEMORY[0x28223BE20](v123);
  v115 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v109 = &v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v118 = (&v109 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v109 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v109 - v20;
  MEMORY[0x28223BE20](v19);
  v126 = &v109 - v22;
  v134 = MEMORY[0x277D84F98];
  v23 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v122 = a1;
  v24 = *(a1 + v23);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v125 = (v8 + 8);
  v119 = (v10 + 56);
  v129 = v24;

  v30 = 0;
  v117 = xmmword_23DC83570;
  v121 = v10;
  v124 = v29;
  v116 = v21;
  while (v28)
  {
LABEL_11:
    v33 = *(v129 + 56);
    v34 = v10;
    v130 = *(v10 + 72);
    v35 = v126;
    sub_23DC7A628(v33 + v130 * (__clz(__rbit64(v28)) | (v30 << 6)), v126);
    sub_23DC7A6E8(v35, v21);
    v36 = *(v21 + 32);
    v1 = *(v21 + 40);
    v132 = v36;
    v133 = v1;

    v37 = v21;
    v38 = v128;
    sub_23DC829C0();
    sub_23DC7BF10();
    v39 = sub_23DC82DC0();
    v41 = v40;
    (*v125)(v38, v127);

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42)
    {
      v31 = v120;
      (*v119)(v120, 1, 1, v123);
      sub_23DC70460(v31, *v37, v37[1], 1, 0);
      sub_23DC7C16C(v31, &qword_27E30CDC8, &qword_23DC83688);
      v21 = v37;
      v29 = v124;
      v10 = v34;
      goto LABEL_5;
    }

    v43 = v37[3];
    v132 = v37[2];
    v133 = v43;

    MEMORY[0x23EEFB9A0](46, 0xE100000000000000);
    MEMORY[0x23EEFB9A0](v36, v1);
    v44 = v132;
    v1 = v133;
    v45 = v134;
    v21 = v37;
    if (!v134[2] || (sub_23DC7F118(v132, v133), (v46 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
      v54 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v117;
      sub_23DC7A628(v37, v55 + v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v45;
      v21 = sub_23DC7F118(v44, v1);
      v58 = v45[2];
      v59 = (v57 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_66:
        v103 = v111;
        v104 = __swift_project_value_buffer(v111, qword_281303DE8);
        swift_beginAccess();
        (*v1)(v112, v104, v103);
        v105 = sub_23DC82A90();
        v106 = sub_23DC82D40();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_23DC66000, v105, v106, "Duplicates found and removed", v107, 2u);
          MEMORY[0x23EEFC160](v107, -1, -1);
        }

        (*v21)(v112, v103);
LABEL_69:
        sub_23DC6E6E8();
      }

      v61 = v57;
      if (v45[3] >= v60)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v64 = v132;
          if ((v57 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_23DC814DC();
          v64 = v132;
          if ((v61 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_23DC8005C(v60, isUniquelyReferenced_nonNull_native);
        v62 = sub_23DC7F118(v44, v1);
        if ((v61 & 1) != (v63 & 1))
        {
          sub_23DC82F30();
          __break(1u);
          goto LABEL_76;
        }

        v21 = v62;
        v64 = v132;
        if ((v61 & 1) == 0)
        {
LABEL_32:
          v64[(v21 >> 6) + 8] |= 1 << v21;
          v65 = (v64[6] + 16 * v21);
          *v65 = v44;
          v65[1] = v1;
          *(v64[7] + 8 * v21) = v55;
          v66 = v64[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_73;
          }

          v64[2] = v68;
LABEL_34:
          v134 = v64;
          v10 = v121;
          v21 = v116;
LABEL_35:
          v29 = v124;
          goto LABEL_5;
        }
      }

      *(v64[7] + 8 * v21) = v55;

      goto LABEL_34;
    }

    v48 = sub_23DC7241C(&v132, v44, v1);
    if (!*v47)
    {
      v10 = v34;
      (v48)(&v132, 0);

      goto LABEL_35;
    }

    v49 = v47;
    sub_23DC7A628(v37, v114);
    v50 = *v49;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *v49 = v50;
    v1 = v37;
    if ((v51 & 1) == 0)
    {
      v50 = sub_23DC75C2C(0, v50[2] + 1, 1, v50);
      *v49 = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    if (v53 >= v52 >> 1)
    {
      v50 = sub_23DC75C2C((v52 > 1), v53 + 1, 1, v50);
      *v49 = v50;
    }

    v29 = v124;
    v50[2] = v53 + 1;
    v10 = v121;
    sub_23DC7A6E8(v114, v50 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v53 * v130);
    (v48)(&v132, 0);

    v21 = v1;
LABEL_5:
    v28 &= v28 - 1;
    sub_23DC7A68C(v21);
  }

  while (2)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v32 < v29)
    {
      v28 = *(v25 + 8 * v32);
      ++v30;
      if (v28)
      {
        v30 = v32;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v69 = v134;
  v70 = v134 + 8;
  v71 = 1 << *(v134 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & v134[8];
  v74 = (v71 + 63) >> 6;
  v1 = (v113 + 16);
  v21 = v113 + 8;

  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0x281303000uLL;
  if (!v73)
  {
LABEL_41:
    while (1)
    {
      v81 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_71;
      }

      if (v81 >= v74)
      {

        if ((v75 & 1) == 0)
        {
          goto LABEL_69;
        }

        if (*(v78 + 3552) != -1)
        {
          goto LABEL_74;
        }

        goto LABEL_66;
      }

      v73 = v70[v81];
      ++v76;
      if (v73)
      {
        v76 = v81;
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    while (1)
    {
      v79 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      v80 = *(*(v69 + 56) + ((v76 << 9) | (8 * v79)));
      if (*(v80 + 16) > 1uLL)
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_41;
      }
    }

    v126 = v77;
    v82 = *(v78 + 3552);

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = v111;
    v84 = __swift_project_value_buffer(v111, qword_281303DE8);
    swift_beginAccess();
    v85 = *v1;
    v125 = v1;
    v85(v110, v84, v83);
    v86 = sub_23DC82A90();
    v87 = sub_23DC82D40();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_23DC66000, v86, v87, "We have duplicates, lets merge everything together", v88, 2u);
      MEMORY[0x23EEFC160](v88, -1, -1);
    }

    (*v21)(v110, v111);
    v131[0] = v80;

    v28 = v126;
    sub_23DC769C8(v131, sub_23DC77B58, sub_23DC76E8C);
    if (v28)
    {
      break;
    }

    v126 = 0;
    v1 = v125;
    if (*(v131[0] + 16))
    {
      *&v117 = v21;
      v124 = v69;
      v89 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v90 = v109;
      sub_23DC7A628(v131[0] + v89, v109);

      sub_23DC7A6E8(v90, v118);
      v91 = *(v80 + 16);
      v92 = v115;
      if (v91)
      {
        v128 = *(v123 + 40);
        v93 = *v118;
        v129 = v118[1];
        v130 = v93;
        v94 = v80 + v89;
        v127 = *(v121 + 72);
        do
        {
          sub_23DC7A628(v94, v92);

          v96 = v92;
          sub_23DC72A74(v95);
          v97 = *v92;
          v98 = v96[1];
          v99 = *v96 == v130 && v98 == v129;
          if (!v99 && (sub_23DC82EF0() & 1) == 0)
          {
            v100 = v120;
            (*v119)(v120, 1, 1, v123);
            sub_23DC70460(v100, v97, v98, 0, 1);
            sub_23DC7C16C(v100, &qword_27E30CDC8, &qword_23DC83688);
          }

          v92 = v115;
          sub_23DC7A68C(v115);
          v94 += v127;
          --v91;
        }

        while (v91);
      }

      v101 = v118;
      v102 = v120;
      sub_23DC7A628(v118, v120);
      v75 = 1;
      (*v119)(v102, 0, 1, v123);
      sub_23DC70460(v102, *v101, v101[1], 0, 0);

      sub_23DC7C16C(v102, &qword_27E30CDC8, &qword_23DC83688);
      sub_23DC7A68C(v101);
      v69 = v124;
      v1 = v125;
      v21 = v117;
    }

    else
    {

      v75 = 1;
    }

    v78 = 0x281303000;
    v77 = v126;
    if (!v73)
    {
      goto LABEL_41;
    }
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t (*sub_23DC7241C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_23DC7981C(v6, a2, a3);
  return sub_23DC724A4;
}

void sub_23DC724A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23DC724F0(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v58 = a5;
  v55 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v52[-v10];
  v62 = type metadata accessor for AccountSuggestion(0);
  v56 = *(v62 - 8);
  v11 = MEMORY[0x28223BE20](v62);
  v13 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v57 = &v52[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v52[-v16];
  v18 = sub_23DC82AB0();
  v19 = *(v18 - 8);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(a1 + 16);
  if (v23 >= 2)
  {
    v53 = a3;
    v54 = a2;
    v61 = v5;
    v24 = a1;
    v59 = v17;
    if (qword_281303DE0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_281303DE8);
    swift_beginAccess();
    (*(v19 + 16))(v22, v25, v18);
    v26 = sub_23DC82A90();
    v27 = sub_23DC82D40();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23DC66000, v26, v27, "We have duplicates, lets merge everything together", v28, 2u);
      MEMORY[0x23EEFC160](v28, -1, -1);
    }

    (*(v19 + 8))(v22, v18);
    v29 = v24;
    v63 = v24;

    sub_23DC769C8(&v63, sub_23DC77B58, sub_23DC76E8C);
    v30 = v56;
    v31 = v54;
    if (*(v63 + 16))
    {
      v32 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v33 = v57;
      sub_23DC7A628(v63 + v32, v57);

      v34 = v59;
      sub_23DC7A6E8(v33, v59);
      if (v31)
      {
        v35 = sub_23DC68CB8();
        sub_23DC75E04(&v63, v35, v36);
      }

      v37 = v29 + v32;
      v57 = (v30 + 56);
      v38 = *v34;
      v39 = v34[1];
      v40 = *(v30 + 72);
      do
      {
        sub_23DC7A628(v37, v13);

        sub_23DC72A74(v41);
        v42 = *v13;
        v43 = v13[1];
        v44 = *v13 == v38 && v43 == v39;
        if (!v44 && (sub_23DC82EF0() & 1) == 0)
        {
          v45 = v60;
          (*v57)(v60, 1, 1, v62);
          sub_23DC70460(v45, v42, v43, 0, v58 & 1);
          v46 = v45;
          v34 = v59;
          sub_23DC7C16C(v46, &qword_27E30CDC8, &qword_23DC83688);
        }

        sub_23DC7A68C(v13);
        v37 += v40;
        --v23;
      }

      while (v23);
      if (v53)
      {
        v47 = sub_23DC68CB8();
        sub_23DC766C8(v47, v48);
      }

      v49 = v34;
      v50 = v34;
      v51 = v60;
      sub_23DC7A628(v49, v60);
      (*v57)(v51, 0, 1, v62);
      sub_23DC70460(v51, *v50, v50[1], 0, 0);
      sub_23DC7C16C(v51, &qword_27E30CDC8, &qword_23DC83688);
      if (v55)
      {
        sub_23DC6E6E8();
      }

      return sub_23DC7A68C(v59);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DC72A74(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_23DC75E04(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23DC72B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23DC82AB0();
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_23DC82A40();
  v8 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF8, &qword_23DC83830);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v80 = &v74 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v79 = v19;
  v82 = v6;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    a1 = sub_23DC68CB8();
    v20 = v21;
  }

  v22 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v24 = *(v23 + 16);

  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = sub_23DC7F118(a1, v20);
  if ((v26 & 1) == 0)
  {

LABEL_11:
    v38 = v85;
    v83 = *(v8 + 56);
    v83(v18, 1, 1, v85);
    sub_23DC7C16C(v18, &qword_27E30CDF8, &qword_23DC83830);
    v34 = v20;
    v39 = v82;
    v37 = v81;
    goto LABEL_12;
  }

  v77 = a1;
  v27 = *(v23 + 56);
  v74 = *(v8 + 72);
  v28 = v27 + v74 * v25;
  v29 = *(v8 + 16);
  v30 = v8;
  v31 = v85;
  v75 = v29;
  v29(v18, v28, v85);

  v76 = v30;
  v32 = 1;
  v83 = *(v30 + 56);
  v83(v18, 0, 1, v31);
  sub_23DC7C16C(v18, &qword_27E30CDF8, &qword_23DC83830);
  v33 = *(v3 + v22);
  if (*(v33 + 16))
  {

    v34 = v20;
    v35 = sub_23DC7F118(v77, v20);
    if (v36)
    {
      v75(v16, *(v33 + 56) + v35 * v74, v85);
      v32 = 0;
    }

    v8 = v76;
    v37 = v81;
  }

  else
  {
    v34 = v20;
    v8 = v76;
    v37 = v81;
  }

  v56 = v32;
  v57 = v85;
  v83(v16, v56, 1, v85);
  if ((*(v8 + 48))(v16, 1, v57))
  {
    sub_23DC7C16C(v16, &qword_27E30CDF8, &qword_23DC83830);
    v58 = 0.0;
  }

  else
  {
    v59 = v78;
    v75(v78, v16, v57);
    sub_23DC7C16C(v16, &qword_27E30CDF8, &qword_23DC83830);
    sub_23DC82A00();
    v58 = v60;
    (*(v8 + 8))(v59, v57);
  }

  a1 = v77;
  v38 = v57;
  v39 = v82;
  v61 = *(v3 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (v61 && (v62 = v61, v63 = sub_23DC82C40(), [v62 doubleForKey_], v65 = v64, v62, v63, v65 > 0.0))
  {
    if (v65 >= -v58)
    {
      goto LABEL_31;
    }
  }

  else if (v58 >= -604800.0)
  {
LABEL_31:

    return 0;
  }

LABEL_12:
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v39, qword_281303DE8);
  swift_beginAccess();
  (*(v37 + 16))(v84, v40, v39);
  v41 = sub_23DC82A90();
  v42 = sub_23DC82D40();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_23DC66000, v41, v42, "Updating device with date now", v43, 2u);
    v44 = v43;
    v38 = v85;
    MEMORY[0x23EEFC160](v44, -1, -1);
  }

  (*(v37 + 8))(v84, v39);

  v45 = v80;
  sub_23DC82A30();
  v83(v45, 0, 1, v38);
  swift_beginAccess();
  sub_23DC6E510(v45, a1, v34);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  if ((*(v3 + v46) & 1) != 0 || (v47 = a1, (v48 = *(v3 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs)) == 0))
  {
  }

  else
  {
    v49 = *(v3 + v22);
    if (*(v49 + 16))
    {
      v50 = v48;

      v51 = sub_23DC7F118(v47, v34);
      v52 = v79;
      if (v53)
      {
        (*(v8 + 16))(v79, *(v49 + 56) + *(v8 + 72) * v51, v38);

        v54 = v52;
        v55 = 0;
      }

      else
      {

        v54 = v52;
        v55 = 1;
      }

      v83(v54, v55, 1, v38);
    }

    else
    {
      v52 = v79;
      v83(v79, 1, 1, v38);
      v67 = v48;
    }

    if ((*(v8 + 48))(v52, 1, v38))
    {
      sub_23DC7C16C(v52, &qword_27E30CDF8, &qword_23DC83830);
      v68 = MEMORY[0x277D83B88];
      v89 = MEMORY[0x277D83B88];
      *&v88 = 0;
    }

    else
    {
      v69 = v78;
      (*(v8 + 16))(v78, v52, v38);
      sub_23DC7C16C(v52, &qword_27E30CDF8, &qword_23DC83830);
      sub_23DC82A20();
      v71 = v70;
      (*(v8 + 8))(v69, v38);
      v87 = MEMORY[0x277D839F8];
      *&v86 = v71;
      sub_23DC7BDA4(&v86, &v88);
      v68 = v89;
    }

    __swift_project_boxed_opaque_existential_0(&v88, v68);
    v72 = sub_23DC82EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    *&v88 = 0x5F454349564544;
    *(&v88 + 1) = 0xE700000000000000;
    MEMORY[0x23EEFB9A0](v47, v34);

    v73 = sub_23DC82C40();

    [v48 setObject:v72 forKey:v73];

    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_23DC734E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = sub_23DC82AB0();
  v52 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = type metadata accessor for AccountSuggestion(0);
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v50 - v23);
  sub_23DC6FB40(a1);
  if (v25)
  {
    v51 = v8;
    sub_23DC6F404(a1);
    v27 = *(v26 + 16);
    if (v27 < 2)
    {
      v50 = v1;
      if (v27)
      {
        v28 = v54;
        sub_23DC7A628(v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v22);

        sub_23DC7A6E8(v22, v24);
        if (qword_281303DE0 != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v9, qword_281303DE8);
        swift_beginAccess();
        v30 = v52;
        (*(v52 + 16))(v14, v29, v9);
        v31 = sub_23DC82A90();
        v32 = sub_23DC82D40();
        v33 = os_log_type_enabled(v31, v32);
        v34 = v53;
        if (v33)
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_23DC66000, v31, v32, "Existing suggestion found, adding the computer", v35, 2u);
          MEMORY[0x23EEFC160](v35, -1, -1);
        }

        (*(v30 + 8))(v14, v9);
        v36 = sub_23DC68CB8();
        sub_23DC75E04(v55, v36, v37);

        v38 = v51;
        sub_23DC7A628(v24, v51);
        (*(v28 + 56))(v38, 0, 1, v34);
        sub_23DC70460(v38, *v24, v24[1], 1, 0);
        sub_23DC7C16C(v38, &qword_27E30CDC8, &qword_23DC83688);
        v39 = v24;
      }

      else
      {

        v40 = a1;
        v41 = sub_23DC68CB8();
        v56[0] = 0;
        AccountSuggestion.init(with:computerID:source:)(v40, v41, v42, v56, v6);
        v43 = v53;
        if ((*(v54 + 48))(v6, 1, v53) == 1)
        {
          sub_23DC7C16C(v6, &qword_27E30CDC8, &qword_23DC83688);
          return;
        }

        sub_23DC7A6E8(v6, v19);
        if (qword_281303DE0 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v9, qword_281303DE8);
        swift_beginAccess();
        v45 = v52;
        (*(v52 + 16))(v12, v44, v9);
        v46 = sub_23DC82A90();
        v47 = sub_23DC82D40();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_23DC66000, v46, v47, "Existing suggestion not found, creating a new one", v48, 2u);
          MEMORY[0x23EEFC160](v48, -1, -1);
        }

        (*(v45 + 8))(v12, v9);
        v49 = v51;
        sub_23DC7A628(v19, v51);
        (*(v54 + 56))(v49, 0, 1, v43);
        sub_23DC70460(v49, *v19, v19[1], 1, 0);
        sub_23DC7C16C(v49, &qword_27E30CDC8, &qword_23DC83688);
        v39 = v19;
      }

      sub_23DC7A68C(v39);
    }

    else
    {
      sub_23DC724F0(v26, 1, 0, 1, 0);
    }
  }
}

uint64_t sub_23DC73B30(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v4 - 8);
  v114 = &v104 - v5;
  v6 = sub_23DC82AB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AccountSuggestion(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v104 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = (&v104 - v16);
  v18 = 0x278BF9000;
  if ((sub_23DC6FF90(a1) & 1) != 0 && sub_23DC7B948(a1))
  {
    sub_23DC6F404(a1);
    if (*(v19 + 16) != 1)
    {

      goto LABEL_46;
    }

    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v112 = v19;
    sub_23DC7A628(v19 + v20, v17);
    v113 = v10;
    v109 = *(v10 + 44);
    v108 = *(v17 + v109);
    sub_23DC70C7C(v108);
    v21 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v22 = sub_23DC82BF0();

    v23 = [v21 initWithDictionary_];

    v115 = a1;
    v24 = [a1 accountProperties];
    LODWORD(v22) = [v23 isEqual_];

    LODWORD(v111) = v22;
    if ((v22 & 1) == 0)
    {
      if (qword_281303DE0 != -1)
      {
LABEL_108:
        swift_once();
      }

      v25 = __swift_project_value_buffer(v6, qword_281303DE8);
      swift_beginAccess();
      (*(v7 + 16))(v9, v25, v6);
      v26 = sub_23DC82A90();
      v27 = sub_23DC82D40();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23DC66000, v26, v27, "Existing suggestion found, account properties dictionary differs, saving off local account properties", v28, 2u);
        MEMORY[0x23EEFC160](v28, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      v29 = [v115 accountProperties];
      if (!v29 || (*&v122[0] = 0, v30 = v29, sub_23DC82C00(), v30, (v31 = *&v122[0]) == 0))
      {
        v31 = sub_23DC7B28C(MEMORY[0x277D84F90]);
      }

      *(v17 + v109) = v31;
    }

    a1 = v115;
    result = [v115 accountType];
    if (!result)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v33 = result;
    v34 = [result identifier];

    v10 = v113;
    if (v34)
    {
      v35 = sub_23DC82C50();
      v37 = v36;

      v38 = sub_23DC82C50();
      if (v37)
      {
        if (v35 == v38 && v37 == v39)
        {
LABEL_28:

          goto LABEL_29;
        }

        v40 = sub_23DC82EF0();

        if (v40)
        {
LABEL_29:
          *&v118 = sub_23DC82C50();
          *(&v118 + 1) = v48;
          v49 = [a1 objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v49)
          {
            sub_23DC82DE0();
            swift_unknownObjectRelease();
          }

          else
          {
            v118 = 0u;
            v119 = 0u;
          }

          v122[0] = v118;
          v122[1] = v119;
          if (!*(&v119 + 1))
          {

            sub_23DC7C16C(v122, &qword_27E30CDE0, &qword_23DC83960);
            goto LABEL_43;
          }

          if (swift_dynamicCast())
          {
            result = [objc_opt_self() defaultStore];
            if (!result)
            {
LABEL_113:
              __break(1u);
              return result;
            }

            v50 = result;

            v51 = sub_23DC82C40();

            v52 = [v50 accountWithIdentifier_];

            if (v52)
            {
              v112 = *(v10 + 48);
              sub_23DC70C7C(*(v17 + v112));
              v53 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
              v54 = sub_23DC82BF0();

              v55 = [v53 initWithDictionary_];

              v56 = [v52 accountProperties];
              LOBYTE(v54) = [v55 isEqual_];

              if ((v54 & 1) == 0)
              {
                v101 = [v52 accountProperties];
                if (!v101 || (*&v122[0] = 0, v102 = v101, sub_23DC82C00(), v102, (v103 = *&v122[0]) == 0))
                {
                  v103 = sub_23DC7B28C(MEMORY[0x277D84F90]);
                }

                v10 = v113;
                *(v17 + v112) = v103;
                goto LABEL_44;
              }

              v10 = v113;
            }

LABEL_43:
            if (v111)
            {
LABEL_45:
              sub_23DC7A68C(v17);
              v18 = 0x278BF9000uLL;
              goto LABEL_46;
            }

LABEL_44:
            v58 = v114;
            sub_23DC7A628(v17, v114);
            (*(v11 + 56))(v58, 0, 1, v10);
            sub_23DC70460(v58, *v17, v17[1], 1, 0);
            sub_23DC7C16C(v58, &qword_27E30CDC8, &qword_23DC83688);
            goto LABEL_45;
          }

LABEL_42:

          goto LABEL_43;
        }

LABEL_23:
        result = [a1 accountType];
        if (!result)
        {
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v41 = result;
        v42 = [result identifier];

        if (v42)
        {
          v43 = sub_23DC82C50();
          v45 = v44;

          v46 = sub_23DC82C50();
          if (v45)
          {
            if (v43 != v46 || v45 != v47)
            {
              v57 = sub_23DC82EF0();

              if ((v57 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_23DC82C50();
        }

        goto LABEL_42;
      }
    }

    else
    {
      sub_23DC82C50();
    }

    goto LABEL_23;
  }

LABEL_46:
  result = [a1 *(v18 + 3144)];
  if (!result)
  {
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v59 = result;
  v60 = [result identifier];

  if (!v60)
  {
    sub_23DC82C50();
  }

  v61 = sub_23DC82C50();
  v6 = v62;

  v63 = sub_23DC82C50();
  if (!v6)
  {
  }

  if (v61 == v63 && v6 == v64)
  {
  }

  else
  {
    v65 = sub_23DC82EF0();

    if ((v65 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_23DC7B948(a1);
  if (result)
  {
    v115 = a1;
    v66 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
    swift_beginAccess();
    v109 = v2;
    v67 = *(v2 + v66);
    v17 = (v67 + 64);
    v68 = 1 << *(v67 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v67 + 64);
    v2 = (v68 + 63) >> 6;
    v112 = *MEMORY[0x277CB8C60];
    v106 = *MEMORY[0x277CB8CD8];
    v111 = *MEMORY[0x277CB8B58];
    v105 = (v11 + 56);
    v113 = v67;

    LODWORD(v108) = 0;
    v7 = 0;
    v9 = v117;
    v110 = v11;
    while (1)
    {
      if (!v70)
      {
        while (1)
        {
          v73 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
            goto LABEL_108;
          }

          if (v73 >= v2)
          {
            break;
          }

          v70 = v17[v73];
          ++v7;
          if (v70)
          {
            v7 = v73;
            goto LABEL_68;
          }
        }

        if (v108)
        {
          return sub_23DC6E6E8();
        }

        return result;
      }

LABEL_68:
      v74 = v116;
      sub_23DC7A628(*(v113 + 56) + *(v11 + 72) * (__clz(__rbit64(v70)) | (v7 << 6)), v116);
      sub_23DC7A6E8(v74, v9);
      v6 = v9[2];
      v75 = v9[3];
      if (v6 == sub_23DC82C50() && v75 == v76)
      {
        goto LABEL_75;
      }

      v78 = sub_23DC82EF0();

      if (v78)
      {
        goto LABEL_76;
      }

      if (v6 == sub_23DC82C50() && v75 == v79)
      {
LABEL_75:
      }

      else
      {
        v100 = sub_23DC82EF0();

        if ((v100 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

LABEL_76:
      v80 = sub_23DC82C50();
      v82 = v10;
      v83 = *(v117 + *(v10 + 44));
      if (!*(v83 + 16))
      {

LABEL_85:
        v6 = 0;
        v88 = 0;
        goto LABEL_86;
      }

      v84 = sub_23DC7F118(v80, v81);
      v86 = v85;

      if ((v86 & 1) == 0)
      {
        goto LABEL_85;
      }

      sub_23DC7BD48(*(v83 + 56) + 32 * v84, v122);
      v87 = swift_dynamicCast();
      if (v87)
      {
        v6 = v120;
      }

      else
      {
        v6 = 0;
      }

      if (v87)
      {
        v88 = v121;
      }

      else
      {
        v88 = 0;
      }

LABEL_86:
      result = [v115 identifier];
      if (!result)
      {
        goto LABEL_110;
      }

      v89 = result;
      v90 = sub_23DC82C50();
      v92 = v91;

      if (!v88)
      {

        v10 = v82;
LABEL_97:
        v11 = v110;
LABEL_98:
        v9 = v117;
        goto LABEL_62;
      }

      v10 = v82;
      if (v6 == v90 && v88 == v92)
      {
      }

      else
      {
        v93 = sub_23DC82EF0();

        if ((v93 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      v9 = v117;
      v107 = *(v82 + 48);
      sub_23DC70C7C(*(v117 + v107));
      v94 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v95 = sub_23DC82BF0();

      v96 = [v94 initWithDictionary_];

      v97 = [v115 accountProperties];
      v6 = [v96 isEqual_];

      v10 = v82;
      v11 = v110;
      if ((v6 & 1) == 0)
      {
        v98 = [v115 accountProperties];
        if (!v98 || (*&v122[0] = 0, v99 = v98, sub_23DC82C00(), v99, (v6 = *&v122[0]) == 0))
        {
          v6 = sub_23DC7B28C(MEMORY[0x277D84F90]);
        }

        v9 = v117;
        *(v117 + v107) = v6;
        v71 = v114;
        sub_23DC7A628(v9, v114);
        v72 = *v105;
        LODWORD(v108) = 1;
        v72(v71, 0, 1, v10);
        sub_23DC70460(v71, *v9, v9[1], 0, 0);
        sub_23DC7C16C(v71, &qword_27E30CDC8, &qword_23DC83688);
      }

LABEL_62:
      v70 &= v70 - 1;
      sub_23DC7A68C(v9);
    }
  }

  return result;
}

uint64_t sub_23DC74A8C(uint64_t a1, void *a2)
{
  v3 = sub_23DC82AB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC6F7F8();
  sub_23DC72B78(0, 0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_281303DE8);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = a2;
  v9 = sub_23DC82A90();
  v10 = sub_23DC82D40();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_23DC66000, v9, v10, "added: %@", v11, 0xCu);
    sub_23DC7C16C(v12, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v12, -1, -1);
    MEMORY[0x23EEFC160](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_23DC734E8(v8);
  return sub_23DC6C1EC();
}

uint64_t sub_23DC74CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_23DC82B50();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23DC82B80();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = a1;
  sub_23DC82B60();
  v24 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v14, v11, v17);
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

uint64_t sub_23DC74FB8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v43 - v4;
  v47 = type metadata accessor for AccountSuggestion(0);
  v51 = *(v47 - 8);
  v5 = MEMORY[0x28223BE20](v47);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v43 - v7);
  v9 = sub_23DC82AB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  sub_23DC6F7F8();
  sub_23DC72B78(0, 0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_281303DE8);
  swift_beginAccess();
  v48 = *(v10 + 16);
  v49 = v17;
  v48(v16, v17, v9);
  v18 = a2;
  v19 = sub_23DC82A90();
  v20 = sub_23DC82D40();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v8;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&dword_23DC66000, v19, v20, "removed: %@", v22, 0xCu);
    sub_23DC7C16C(v23, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v23, -1, -1);
    v8 = v43;
    MEMORY[0x23EEFC160](v22, -1, -1);
  }

  v25 = *(v10 + 8);
  v25(v16, v9);
  sub_23DC6F404(v18);
  v27 = *(v26 + 16);
  if (v27 < 2)
  {
    if (v27)
    {
      v43 = (v10 + 8);
      v28 = v45;
      sub_23DC7A628(v26 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v45);

      sub_23DC7A6E8(v28, v8);
      v29 = v46;
      v48(v46, v49, v9);
      v30 = sub_23DC82A90();
      v31 = sub_23DC82D40();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_23DC66000, v30, v31, "Existing suggestion found, removing this computer", v32, 2u);
        MEMORY[0x23EEFC160](v32, -1, -1);
      }

      v25(v29, v9);
      v33 = sub_23DC68CB8();
      v34 = v47;
      v35 = *(v47 + 40);
      sub_23DC766C8(v33, v36);

      if (*(*(v8 + v35) + 16))
      {
        sub_23DC7A628(v8, v50);
        v37 = 0;
      }

      else
      {
        v48(v44, v49, v9);
        v38 = sub_23DC82A90();
        v39 = sub_23DC82D40();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_23DC66000, v38, v39, "Existing suggestion has no remaining devices, removing it", v40, 2u);
          MEMORY[0x23EEFC160](v40, -1, -1);
        }

        v25(v44, v9);
        v37 = 1;
      }

      v41 = v50;
      (*(v51 + 56))(v50, v37, 1, v34);
      sub_23DC70460(v41, *v8, v8[1], 1, 0);
      sub_23DC7C16C(v41, &qword_27E30CDC8, &qword_23DC83688);
      sub_23DC7A68C(v8);
    }

    else
    {
    }
  }

  else
  {
    sub_23DC724F0(v26, 0, 1, 1, 0);
  }

  return sub_23DC6C1EC();
}

uint64_t sub_23DC755E0(uint64_t a1, void *a2)
{
  v3 = sub_23DC82AB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC6F7F8();
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_281303DE8);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = a2;
  v9 = sub_23DC82A90();
  v10 = sub_23DC82D40();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_23DC66000, v9, v10, "updated: %@ checking if we need to update this computer", v11, 0xCu);
    sub_23DC7C16C(v12, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v12, -1, -1);
    MEMORY[0x23EEFC160](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_23DC72B78(0, 0);
  return sub_23DC73B30(v8);
}

uint64_t AccountSuggestionManager.deinit()
{
  v1 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions, v2);

  sub_23DC69148(*(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock), *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock + 8));

  return v0;
}

uint64_t AccountSuggestionManager.__deallocating_deinit()
{
  AccountSuggestionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DC759C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountSuggestionManager(0);
  result = sub_23DC82AD0();
  *a2 = result;
  return result;
}

void *sub_23DC75A00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_23DC75A1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23DC75B28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE00, &qword_23DC83838);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_23DC75C2C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
  v10 = *(type metadata accessor for AccountSuggestion(0) - 8);
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
  v15 = *(type metadata accessor for AccountSuggestion(0) - 8);
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

uint64_t sub_23DC75E04(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23DC82F40();
  sub_23DC82C70();
  v8 = sub_23DC82F60();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23DC82EF0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23DC761B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23DC75F54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E40();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23DC761B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23DC75F54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23DC76334();
      goto LABEL_16;
    }

    sub_23DC76490(v8 + 1);
  }

  v10 = *v4;
  sub_23DC82F40();
  sub_23DC82C70();
  result = sub_23DC82F60();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23DC82EF0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23DC82F20();
  __break(1u);
  return result;
}

void *sub_23DC76334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  v2 = *v0;
  v3 = sub_23DC82E30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23DC76490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E40();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23DC82F40();

      sub_23DC82C70();
      result = sub_23DC82F60();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23DC766C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_23DC82F40();
  sub_23DC82C70();
  v6 = sub_23DC82F60();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_23DC82EF0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23DC76334();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_23DC76804(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_23DC76804(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23DC82E00();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_23DC82F40();

        sub_23DC82C70();
        v10 = sub_23DC82F60();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23DC769C8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AccountSuggestion(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_23DC7A108(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_23DC76A88(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_23DC76A88(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_23DC82ED0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AccountSuggestion(0);
        v10 = sub_23DC82D00();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for AccountSuggestion(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_23DC76BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for AccountSuggestion(0);
  v8 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v31 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v31 - v15);
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    type metadata accessor for ComparisonResult();
    v31 = v18;
    v19 = *(v8 + 72);
    v20 = v17 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v38 = v17;
    v32 = v19;
    v23 = v17 + v19 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v23;
    v35 = v22;
    while (1)
    {
      sub_23DC7A628(v23, v16);
      sub_23DC7A628(v20, v13);
      v24 = v16[3];
      v42 = v16[2];
      v43 = v24;
      v25 = v13[3];
      v40 = v13[2];
      v41 = v25;
      sub_23DC7BF10();
      result = sub_23DC82DD0();
      if (result)
      {
        if (result != 1)
        {
          if (result != -1)
          {
            goto LABEL_17;
          }

          sub_23DC7A68C(v13);
          result = sub_23DC7A68C(v16);
LABEL_4:
          a3 = v37 + 1;
          v20 = v36 + v32;
          v22 = v35 - 1;
          v23 = v34 + v32;
          if (v37 + 1 == v33)
          {
            return result;
          }

          goto LABEL_5;
        }

        sub_23DC7A68C(v13);
        result = sub_23DC7A68C(v16);
      }

      else
      {
        v26 = v16[5];
        v42 = v16[4];
        v43 = v26;
        v27 = v13[5];
        v40 = v13[4];
        v41 = v27;
        v28 = sub_23DC82DD0();
        sub_23DC7A68C(v13);
        result = sub_23DC7A68C(v16);
        if (v28 != 1)
        {
          goto LABEL_4;
        }
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_23DC7A6E8(v23, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23DC7A6E8(v29, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_17:
    v42 = result;
    result = sub_23DC82F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DC76E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AccountSuggestion(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_23DC7A628(v24, v18);
      sub_23DC7A628(v21, v14);
      v25 = sub_23DC829F0();
      sub_23DC7A68C(v14);
      result = sub_23DC7A68C(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_23DC7A6E8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23DC7A6E8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DC7708C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v125 = a1;
  v139 = type metadata accessor for AccountSuggestion(0);
  v133 = *(v139 - 8);
  v8 = MEMORY[0x28223BE20](v139);
  v127 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v138 = v118 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v118 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v118 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (v118 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v136 = v118 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v134 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_108:
    a3 = *v125;
    if (!*v125)
    {
      goto LABEL_150;
    }

    a4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_144:
      v112 = sub_23DC78EBC(a4);
    }

    v144 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      while (*v134)
      {
        v113 = *&v112[16 * a4];
        v114 = v112;
        v115 = *&v112[16 * a4 + 24];
        sub_23DC783B8(*v134 + *(v133 + 72) * v113, *v134 + *(v133 + 72) * *&v112[16 * a4 + 16], *v134 + *(v133 + 72) * v115, a3);
        if (v5)
        {
        }

        if (v115 < v113)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_23DC78EBC(v114);
        }

        if ((a4 - 2) >= *(v114 + 2))
        {
          goto LABEL_138;
        }

        v116 = &v114[16 * a4];
        *v116 = v113;
        *(v116 + 1) = v115;
        v144 = v114;
        sub_23DC78E30(a4 - 1);
        v112 = v144;
        a4 = *(v144 + 2);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v121 = (v118 - v24);
  v122 = v25;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v124 = a4;
  while (1)
  {
    v128 = v28;
    if (v27 + 1 < v26)
    {
      v135 = v26;
      v29 = *v134;
      v30 = *(v133 + 72);
      a3 = *v134 + v30 * (v27 + 1);
      v31 = v121;
      sub_23DC7A628(a3, v121);
      v137 = v29;
      v32 = v29 + v30 * v27;
      v33 = v27;
      v34 = v122;
      sub_23DC7A628(v32, v122);
      LODWORD(v132) = sub_23DC6F30C(v31, v34, v35, v36);
      if (!v5)
      {
        sub_23DC7A68C(v34);
        sub_23DC7A68C(v31);
        v123 = v33;
        v37 = v33 + 2;
        v38 = v137 + v30 * (v33 + 2);
        v39 = v30;
        v137 = v30;
        do
        {
          if (v135 == v37)
          {
            v45 = v135;
            goto LABEL_17;
          }

          v40 = v136;
          sub_23DC7A628(v38, v136);
          sub_23DC7A628(a3, v20);
          v41 = *(v40 + 24);
          v142 = *(v40 + 16);
          v143 = v41;
          v42 = v20[3];
          v140 = v20[2];
          v141 = v42;
          sub_23DC7BF10();
          a4 = sub_23DC82DD0();
          type metadata accessor for ComparisonResult();
          if (a4 == -1)
          {
            LODWORD(a4) = 0;
          }

          else if (a4 != 1)
          {
            if (a4)
            {
              goto LABEL_151;
            }

            v43 = *(v136 + 40);
            v142 = *(v136 + 32);
            v143 = v43;
            v44 = v20[5];
            v140 = v20[4];
            v141 = v44;
            LODWORD(a4) = sub_23DC82DD0() == 1;
          }

          sub_23DC7A68C(v20);
          sub_23DC7A68C(v136);
          ++v37;
          v39 = v137;
          v38 += v137;
          a3 += v137;
        }

        while ((v132 & 1) == a4);
        v45 = v37 - 1;
LABEL_17:
        v27 = v123;
        a4 = v124;
        if (v132)
        {
          if (v45 < v123)
          {
            goto LABEL_143;
          }

          if (v123 < v45)
          {
            v119 = v20;
            v120 = 0;
            a4 = v39 * (v45 - 1);
            v46 = v45 * v39;
            v135 = v45;
            v47 = v123;
            v48 = v123 * v39;
            do
            {
              if (v47 != --v45)
              {
                v49 = *v134;
                if (!*v134)
                {
                  goto LABEL_147;
                }

                a3 = v49 + v48;
                sub_23DC7A6E8(v49 + v48, v127);
                if (v48 < a4 || a3 >= v49 + v46)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v48 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_23DC7A6E8(v127, v49 + a4);
                v39 = v137;
              }

              ++v47;
              a4 -= v39;
              v46 -= v39;
              v48 += v39;
            }

            while (v47 < v45);
            v5 = v120;
            v27 = v123;
            a4 = v124;
            v20 = v119;
            v45 = v135;
          }
        }

        goto LABEL_31;
      }

      sub_23DC7A68C(v34);
      sub_23DC7A68C(v31);
    }

    v45 = v27 + 1;
LABEL_31:
    v50 = v134[1];
    if (v45 >= v50)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v45, v27))
    {
      goto LABEL_140;
    }

    if (v45 - v27 >= a4)
    {
LABEL_40:
      a3 = v45;
      if (v45 < v27)
      {
        goto LABEL_139;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v27, a4))
    {
      goto LABEL_141;
    }

    if (v27 + a4 >= v50)
    {
      a3 = v134[1];
    }

    else
    {
      a3 = v27 + a4;
    }

    if (a3 < v27)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v45 == a3)
    {
      goto LABEL_40;
    }

    v119 = v20;
    v120 = v5;
    v97 = *v134;
    type metadata accessor for ComparisonResult();
    v118[1] = v98;
    v99 = *(v133 + 72);
    v100 = v97 + v99 * (v45 - 1);
    v101 = -v99;
    v123 = v27;
    v102 = v27 - v45;
    v137 = v97;
    v126 = v99;
    v103 = v97 + v45 * v99;
    v129 = a3;
LABEL_92:
    v135 = v45;
    v130 = v103;
    v131 = v102;
    v104 = v102;
    v132 = v100;
    v105 = v100;
LABEL_93:
    sub_23DC7A628(v103, v17);
    sub_23DC7A628(v105, v14);
    v106 = v17[3];
    v142 = v17[2];
    v143 = v106;
    v107 = v14[3];
    v140 = v14[2];
    v141 = v107;
    sub_23DC7BF10();
    a4 = &v142;
    v108 = sub_23DC82DD0();
    if (!v108)
    {
      break;
    }

    if (v108 == 1)
    {
      sub_23DC7A68C(v14);
      sub_23DC7A68C(v17);
      goto LABEL_97;
    }

    if (v108 != -1)
    {
      v142 = v108;
      goto LABEL_153;
    }

    sub_23DC7A68C(v14);
    sub_23DC7A68C(v17);
LABEL_91:
    v45 = v135 + 1;
    v100 = v132 + v126;
    v102 = v131 - 1;
    a3 = v129;
    v103 = v130 + v126;
    if (v135 + 1 != v129)
    {
      goto LABEL_92;
    }

    v5 = v120;
    v20 = v119;
    v27 = v123;
    if (v129 < v123)
    {
      goto LABEL_139;
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v28 = v128;
    }

    else
    {
      v28 = sub_23DC75B28(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v28 + 2);
    v52 = *(v28 + 3);
    a4 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v28 = sub_23DC75B28((v52 > 1), a3 + 1, 1, v28);
    }

    *(v28 + 2) = a4;
    v53 = &v28[16 * a3];
    v54 = v129;
    *(v53 + 4) = v27;
    *(v53 + 5) = v54;
    v137 = *v125;
    if (!v137)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (2)
      {
        a3 = a4 - 1;
        if (a4 >= 4)
        {
          v59 = &v28[16 * a4 + 32];
          v60 = *(v59 - 64);
          v61 = *(v59 - 56);
          v65 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          if (v65)
          {
            goto LABEL_126;
          }

          v64 = *(v59 - 48);
          v63 = *(v59 - 40);
          v65 = __OFSUB__(v63, v64);
          v57 = v63 - v64;
          v58 = v65;
          if (v65)
          {
            goto LABEL_127;
          }

          v66 = &v28[16 * a4];
          v68 = *v66;
          v67 = *(v66 + 1);
          v65 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v65)
          {
            goto LABEL_129;
          }

          v65 = __OFADD__(v57, v69);
          v70 = v57 + v69;
          if (v65)
          {
            goto LABEL_132;
          }

          if (v70 >= v62)
          {
            v88 = &v28[16 * a3 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v65 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v65)
            {
              goto LABEL_136;
            }

            if (v57 < v91)
            {
              a3 = a4 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v58)
            {
              goto LABEL_128;
            }

            v71 = &v28[16 * a4];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_131;
            }

            v77 = &v28[16 * a3 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_135;
            }

            if (v75 + v80 < v57)
            {
              goto LABEL_74;
            }

            if (v57 < v80)
            {
              a3 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v55 = *(v28 + 4);
            v56 = *(v28 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
            goto LABEL_60;
          }

          v81 = &v28[16 * a4];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_74:
          if (v76)
          {
            goto LABEL_130;
          }

          v84 = &v28[16 * a3];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_133;
          }

          if (v87 < v75)
          {
            break;
          }
        }

        v92 = a3 - 1;
        if (a3 - 1 >= a4)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v134)
        {
          goto LABEL_146;
        }

        v93 = v20;
        v94 = v28;
        a4 = *&v28[16 * v92 + 32];
        v95 = *&v28[16 * a3 + 40];
        sub_23DC783B8(*v134 + *(v133 + 72) * a4, *v134 + *(v133 + 72) * *&v28[16 * a3 + 32], *v134 + *(v133 + 72) * v95, v137);
        if (v5)
        {
        }

        if (v95 < a4)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_23DC78EBC(v94);
        }

        if (v92 >= *(v94 + 2))
        {
          goto LABEL_125;
        }

        v96 = &v94[16 * v92];
        *(v96 + 4) = a4;
        *(v96 + 5) = v95;
        v144 = v94;
        sub_23DC78E30(a3);
        v28 = v144;
        a4 = *(v144 + 2);
        v20 = v93;
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = v134[1];
    v27 = v129;
    a4 = v124;
    if (v129 >= v26)
    {
      goto LABEL_108;
    }
  }

  v109 = v17[5];
  v142 = v17[4];
  v143 = v109;
  v110 = v14[5];
  v140 = v14[4];
  v141 = v110;
  a4 = sub_23DC82DD0();
  sub_23DC7A68C(v14);
  sub_23DC7A68C(v17);
  if (a4 != 1)
  {
    goto LABEL_91;
  }

LABEL_97:
  if (v137)
  {
    a4 = v138;
    sub_23DC7A6E8(v103, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_23DC7A6E8(a4, v105);
    v105 += v101;
    v103 += v101;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  v142 = a4;
LABEL_153:
  result = sub_23DC82F00();
  __break(1u);
  return result;
}

uint64_t sub_23DC77B58(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for AccountSuggestion(0);
  v110 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v99 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v99 - v18;
  v112 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_23DC78EBC(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *(result + 16 * a4);
        v96 = result;
        v97 = *(result + 16 * (a4 - 1) + 40);
        sub_23DC789A8(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_23DC78EBC(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_23DC78E30(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v105 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v112;
      v26 = v23;
      v27 = *(v110 + 72);
      v5 = *v112 + v27 * v24;
      sub_23DC7A628(v5, v19);
      sub_23DC7A628(v25 + v27 * v26, v16);
      LODWORD(v109) = sub_23DC829F0();
      sub_23DC7A68C(v16);
      result = sub_23DC7A68C(v19);
      v100 = v26;
      v28 = v26 + 2;
      v111 = v27;
      v29 = v25 + v27 * v28;
      v30 = v109;
      while (v20 != v28)
      {
        sub_23DC7A628(v29, v19);
        sub_23DC7A628(v5, v16);
        v31 = sub_23DC829F0() & 1;
        sub_23DC7A68C(v16);
        result = sub_23DC7A68C(v19);
        ++v28;
        v29 += v111;
        v5 += v111;
        if ((v30 & 1) != v31)
        {
          v32 = v30;
          v20 = v28 - 1;
          goto LABEL_11;
        }
      }

      v32 = v30;
LABEL_11:
      v23 = v100;
      a4 = v101;
      if (v32)
      {
        if (v20 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v20)
        {
          v99 = v6;
          v33 = v111 * (v20 - 1);
          v34 = v20 * v111;
          v109 = v20;
          v35 = v20;
          v36 = v100;
          v37 = v100 * v111;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_23DC7A6E8(v38 + v37, v104);
              if (v37 < v33 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23DC7A6E8(v104, v38 + v33);
            }

            ++v36;
            v33 -= v111;
            v34 -= v111;
            v37 += v111;
          }

          while (v36 < v35);
          v6 = v99;
          v23 = v100;
          a4 = v101;
          v20 = v109;
        }
      }
    }

    v39 = v112[1];
    if (v20 < v39)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v39)
        {
          v40 = v112[1];
        }

        else
        {
          v40 = v23 + a4;
        }

        if (v40 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v40)
        {
          break;
        }
      }
    }

    v41 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v105;
    }

    else
    {
      result = sub_23DC75B28(0, *(v105 + 2) + 1, 1, v105);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_23DC75B28((v42 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v22 + 4);
          v47 = *(v22 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_54:
          if (v49)
          {
            goto LABEL_113;
          }

          v62 = &v22[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_116;
          }

          v68 = &v22[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_120;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v72 = &v22[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_68:
        if (v67)
        {
          goto LABEL_115;
        }

        v75 = &v22[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        sub_23DC789A8(*v112 + *(v110 + 72) * v84, *v112 + *(v110 + 72) * *&v22[16 * v45 + 32], *v112 + *(v110 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_23DC78EBC(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_23DC78E30(v45);
        v22 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v22[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_111;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_112;
      }

      v57 = &v22[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_114;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_117;
      }

      if (v61 >= v53)
      {
        v79 = &v22[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v112[1];
    v21 = v106;
    a4 = v101;
    if (v106 >= v20)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v23;
  a4 = *v112;
  v86 = *(v110 + 72);
  v87 = *v112 + v86 * (v20 - 1);
  v88 = v20;
  v89 = -v86;
  v90 = v23 - v88;
  v109 = v88;
  v103 = v86;
  v5 = a4 + v88 * v86;
  v106 = v40;
LABEL_86:
  v107 = v5;
  v108 = v90;
  v111 = v87;
  v91 = v87;
  while (1)
  {
    sub_23DC7A628(v5, v19);
    sub_23DC7A628(v91, v16);
    v92 = sub_23DC829F0();
    sub_23DC7A68C(v16);
    result = sub_23DC7A68C(v19);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v87 = v111 + v103;
      v90 = v108 - 1;
      v41 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v23 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v93 = v113;
    sub_23DC7A6E8(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_23DC7A6E8(v93, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_23DC783B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for AccountSuggestion(0);
  v8 = MEMORY[0x28223BE20](v51);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v46 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v46 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v46 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v50 = a2;
  v20 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v21 = a3 - v50;
  if (a3 - v50 == 0x8000000000000000 && v19 == -1)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v55 = a2;
    result = sub_23DC82F00();
    __break(1u);
    return result;
  }

  v59 = a1;
  v58 = a4;
  if (v20 / v19 >= v21 / v19)
  {
    v24 = v21 / v19 * v19;
    if (a4 < v50 || v50 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v50)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v19;
      v34 = v32;
      while (2)
      {
        while (1)
        {
          v47 = v32;
          v35 = v50;
          v49 = v50;
          v50 += v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v59 = v35;
              v57 = v47;
              goto LABEL_68;
            }

            v37 = a3;
            v48 = v32;
            v38 = v33;
            v39 = v34 + v33;
            sub_23DC7A628(v39, v12);
            v40 = v52;
            sub_23DC7A628(v50, v52);
            v41 = v12[3];
            v55 = v12[2];
            v56 = v41;
            v42 = *(v40 + 24);
            v53 = *(v40 + 16);
            v54 = v42;
            sub_23DC7BF10();
            a2 = sub_23DC82DD0();
            type metadata accessor for ComparisonResult();
            if (a2 == -1)
            {
              LOBYTE(a2) = 0;
            }

            else if (a2 != 1)
            {
              if (a2)
              {
                goto LABEL_72;
              }

              v43 = v12[5];
              v55 = v12[4];
              v56 = v43;
              v44 = *(v52 + 40);
              v53 = *(v52 + 32);
              v54 = v44;
              a2 = sub_23DC82DD0() == 1;
            }

            a3 += v38;
            sub_23DC7A68C(v52);
            sub_23DC7A68C(v12);
            if (a2)
            {
              break;
            }

            v32 = v39;
            if (v37 < v34 || a3 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v34 = v39;
            v36 = v39 > a4;
            v33 = v38;
            v35 = v49;
            if (!v36)
            {
              v50 = v49;
              goto LABEL_67;
            }
          }

          if (v37 < v49 || a3 >= v49)
          {
            break;
          }

          v32 = v48;
          v33 = v38;
          if (v37 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= a4)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v32 = v48;
        v33 = v38;
        if (v34 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:
    v59 = v50;
    v57 = v32;
  }

  else
  {
    v22 = v20 / v19 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v50;
    }

    else
    {
      v23 = v50;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v22;
    v57 = a4 + v22;
    if (v22 >= 1 && v23 < a3)
    {
      while (1)
      {
        v26 = v23;
        sub_23DC7A628(v23, v17);
        sub_23DC7A628(a4, v15);
        v27 = v17[3];
        v55 = v17[2];
        v56 = v27;
        v28 = v15[3];
        v53 = v15[2];
        v54 = v28;
        sub_23DC7BF10();
        a2 = sub_23DC82DD0();
        type metadata accessor for ComparisonResult();
        if (a2 == -1)
        {
          break;
        }

        if (a2 == 1)
        {
          sub_23DC7A68C(v15);
          sub_23DC7A68C(v17);
        }

        else
        {
          if (a2)
          {
            goto LABEL_72;
          }

          v29 = v17[5];
          v55 = v17[4];
          v56 = v29;
          v30 = v15[5];
          v53 = v15[4];
          v54 = v30;
          v31 = sub_23DC82DD0();
          sub_23DC7A68C(v15);
          sub_23DC7A68C(v17);
          if (v31 != 1)
          {
            goto LABEL_30;
          }
        }

        v23 += v19;
        if (a1 < v26 || a1 >= v23)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v26)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_37:
        a1 += v19;
        v59 = a1;
        if (a4 >= v52 || v23 >= a3)
        {
          goto LABEL_68;
        }
      }

      sub_23DC7A68C(v15);
      sub_23DC7A68C(v17);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v58 = a4 + v19;
      a4 += v19;
      goto LABEL_37;
    }
  }

LABEL_68:
  sub_23DC78ED0(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_23DC789A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = type metadata accessor for AccountSuggestion(0);
  v8 = MEMORY[0x28223BE20](v43);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_23DC7A628(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v42;
          sub_23DC7A628(v33, v42);
          v36 = sub_23DC829F0();
          v37 = v35;
          v12 = v34;
          sub_23DC7A68C(v37);
          sub_23DC7A68C(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_23DC7A628(a2, v12);
        v21 = v42;
        sub_23DC7A628(a4, v42);
        v22 = sub_23DC829F0();
        sub_23DC7A68C(v21);
        sub_23DC7A68C(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_23DC78ED0(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_23DC78E30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DC78EBC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23DC78ED0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccountSuggestion(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_23DC78FB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DC78FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DC78FD4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
  v10 = *(type metadata accessor for AccountSuggestion(0) - 8);
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
  v15 = *(type metadata accessor for AccountSuggestion(0) - 8);
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

char *sub_23DC791AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23DC792B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t *sub_23DC79364(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_23DC795F8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23DC794D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23DC79364(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_23DC79568(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_23DC79D2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23DC795F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_23DC82F40();

    sub_23DC82C70();
    result = sub_23DC82F60();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_23DC7981C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_23DC79B34(v7);
  v7[9] = sub_23DC79928(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_23DC798C8;
}

void sub_23DC798C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23DC79928(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_23DC7F118(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_23DC814DC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_23DC8005C(v18, a4 & 1);
    v13 = sub_23DC7F118(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_23DC82F30();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_23DC79A80;
}

void sub_23DC79A80(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_23DC80E40(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_23DC7C1CC(*(v7 + 48) + 16 * v6);
    sub_23DC806A8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_23DC79B34(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23DC79B5C;
}

unint64_t *sub_23DC79B68(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_23DC79D2C((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_23DC79568(v11, v6, a2, a1);

    MEMORY[0x23EEFC160](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_23DC79D2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_23DC82F40();

      sub_23DC82C70();
      v26 = sub_23DC82F60();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_23DC82EF0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_23DC795F8(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_23DC82F40();

      sub_23DC82C70();
      v39 = sub_23DC82F60();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_23DC82EF0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DC7A130(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_23DC82C90();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_23DC7A1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE70, &qword_23DC838A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE78, &qword_23DC838B0);
    v7 = sub_23DC82EC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23DC7C224(v9, v5, &qword_27E30CE70, &qword_23DC838A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23DC7F118(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AccountSuggestion(0);
      result = sub_23DC7A6E8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23DC7A3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE60, &qword_23DC83898);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE68, &qword_23DC838A0);
    v7 = sub_23DC82EC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23DC7C224(v9, v5, &qword_27E30CE60, &qword_23DC83898);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23DC7F118(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_23DC82A40();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DC7A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DC7A68C(uint64_t a1)
{
  v2 = type metadata accessor for AccountSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DC7A6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DC7A754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DC7A79C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23DC7A804()
{
  v1 = *(type metadata accessor for AccountSuggestion(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23DC6B9F8(v2, v3);
}